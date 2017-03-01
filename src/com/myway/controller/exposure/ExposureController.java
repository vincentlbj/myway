package com.myway.controller.exposure;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.Page;
import com.myway.dto.MyPage;
import com.myway.pojo.Exposure;
import com.myway.service.exposure.ExposureService;

@Controller
@RequestMapping("/exposure")
public class ExposureController {
	@Autowired
	ExposureService exposureService;

	@RequestMapping("/list")
	public String list(Integer pageNum, Integer pageSize, Model model) {
		if (pageNum == null || pageNum < 0) {
			pageNum = 1;
		}
		if (pageSize == null || pageSize < 0) {
			pageSize = 5;
		}
		List<Exposure> exposureList = exposureService.getExposure(pageNum, pageSize);
		MyPage myPage = new MyPage();
		myPage.setResultList(exposureList);
		myPage.setAllCount(((Page) exposureList).getTotal());
		myPage.setCurrPage(pageNum.longValue());
		model.addAttribute("myPage", myPage);
		return "/exposure-list";
	}

	@RequestMapping("/detail/{id}")
	public String exposureDetail(@PathVariable int id, Model model) throws Exception {
		Exposure exposure = exposureService.getExposureById(id);
		if (exposure == null) {
			throw new Exception("文章编号不存在");
		}
		model.addAttribute("exposure", exposure);
		return "/exposure-detail";
	}

}
