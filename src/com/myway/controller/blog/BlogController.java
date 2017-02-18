package com.myway.controller.blog;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.myway.dto.CommonDto;
import com.myway.dto.MyPage;
import com.myway.pojo.Diary;
import com.myway.pojo.DiaryRemark;
import com.myway.pojo.User;
import com.myway.service.blog.BlogRemarkService;
import com.myway.service.blog.BlogService;
import com.myway.service.user.UserService;

@Controller
@RequestMapping("/blog")
public class BlogController {
	@Autowired
	private BlogService blogService;

	@Autowired
	private BlogRemarkService blogRemarkService;

	@Autowired
	private UserService userService;

	@RequestMapping("/result")
	public String result(Diary queryDiary, Integer pageNum, Integer pageSize, Model model) {
		if (pageNum == null || pageNum < 0) {
			pageNum = 1;
		}
		if (pageSize == null || pageSize < 0) {
			pageSize = 5;
		}
		List<Diary> list = blogService.getDiaryByCriteria(queryDiary, pageNum, pageSize);
		List<CommonDto> hotCityList = blogService.hotCity();
		List<Diary> newBlogList = blogService.newBlog();
		MyPage myPage = new MyPage();
		myPage.setResultList(list);
		myPage.setAllCount(((Page) list).getTotal());
		myPage.setCurrPage(pageNum.longValue());
		model.addAttribute("myPage", myPage);
		model.addAttribute("hotCityList", hotCityList);
		model.addAttribute("newBlogList", newBlogList);
		return "/blog-result";
	}

	@RequestMapping("/detail/{id}")
	public String blogDetail(@PathVariable int id, Model model) throws Exception {
		Diary diary = blogService.getDiary(id);
		if (diary == null) {
			throw new Exception("日记编号不存在");
		}
		List<CommonDto> hotCityList = blogService.hotCity();
		List<Diary> newBlogList = blogService.newBlog();
		Integer remarkCount = blogService.getRemarkCount(id);
		User user = userService.getUser(diary.getUsername());
		model.addAttribute("user", user);
		model.addAttribute("hotCityList", hotCityList);
		model.addAttribute("newBlogList", newBlogList);
		model.addAttribute("remarkCount", remarkCount);
		model.addAttribute("diary", diary);
		return "/blog-detail";
	}

	@RequestMapping("/getBlogRemarkById")
	@ResponseBody
	public MyPage getBlogRemarkById(Integer dId, Integer pageNum, Integer pageSize) {
		if (pageNum == null || pageNum < 0) {
			pageNum = 1;
		}
		if (pageSize == null || pageSize < 0) {
			pageSize = 5;
		}
		List<DiaryRemark> list = blogRemarkService.getBlogRemark(dId, pageNum, pageSize);
		MyPage myPage = new MyPage();
		myPage.setResultList(list);
		myPage.setAllCount(((Page) list).getTotal());
		myPage.setCurrPage(pageNum.longValue());
		return myPage;
	}

	@RequestMapping("/blogRemarkSubmit")
	public String blogRemarkSubmit(DiaryRemark diaryRemark, @RequestHeader("Referer") String referer,
			HttpSession session) {
		User user = (User) session.getAttribute("userInfo");
		diaryRemark.setuId(user.getuId());
		diaryRemark.setPicture(user.getPicture());
		diaryRemark.setUsername(user.getUserName());
		diaryRemark.setCreateDate(new Date());
		blogRemarkService.saveBlogRemark(diaryRemark);
		return "redirect:" + referer;
	}

	@RequestMapping("/writeBlog")
	public String writeBlog() {
		return "/blog-writeBlog";
	}

	@RequestMapping("/writeBlogSubmit")
	public String writeBlogSubmit(Diary diary, HttpSession session) {
		User user = (User) session.getAttribute("userInfo");
		diary.setuId(user.getuId());
		diary.setUsername(user.getUserName());
		Date now = new Date();
		diary.setCreateDate(now);
		diary.setUpdateDate(now);
		blogService.saveBlog(diary);
		return "redirect:/index";
	}

}
