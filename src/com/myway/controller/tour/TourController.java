package com.myway.controller.tour;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.Page;
import com.myway.dto.CommonDto;
import com.myway.dto.MyPage;
import com.myway.pojo.Tour;
import com.myway.pojo.TourOrder;
import com.myway.pojo.TourPrice;
import com.myway.pojo.TourWithBLOBs;
import com.myway.pojo.User;
import com.myway.service.showpage.ShowService;
import com.myway.service.tour.TourService;
import com.myway.util.StringUtil;

@Controller
@RequestMapping("/tour")
public class TourController {
	@Autowired
	private TourService tourService;

	@Autowired
	private ShowService showService;

	@RequestMapping("/result/grid")
	public String result(Tour queryTour, Integer pageNum, Integer pageSize, Model model) {
		if (pageNum == null || pageNum < 0) {
			pageNum = 1;
		}
		if (pageSize == null || pageSize < 0) {
			pageSize = 9;
		}
		List<Tour> list = tourService.getTourByCriteria(queryTour, pageNum, pageSize);
		MyPage myPage = new MyPage();
		myPage.setResultList(list);
		myPage.setAllCount(((Page) list).getTotal());
		myPage.setCurrPage(pageNum.longValue());
		model.addAttribute("myPage", myPage);
		model.addAttribute("queryName", queryTour.getName());
		return "/tour-result-grid";
	}

	@RequestMapping("/result/search")
	public String search(String names, Integer pageNum, Integer pageSize, Model model) {
		if (pageNum == null || pageNum < 0) {
			pageNum = 1;
		}
		if (pageSize == null || pageSize < 0) {
			pageSize = 9;
		}
		String[] nameArray = names.split("#");
		List<Tour> list = tourService.searchTourByNames(nameArray, pageNum, pageSize);

		MyPage myPage = new MyPage();
		myPage.setResultList(list);
		myPage.setAllCount(((Page) list).getTotal());
		myPage.setCurrPage(pageNum.longValue());
		model.addAttribute("myPage", myPage);
		model.addAttribute("queryName", names);
		return "/tour-result-grid";
	}

	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable int id, Model model) throws Exception {
		TourWithBLOBs tour = (TourWithBLOBs) tourService.getTourById(id);
		if (tour == null) {
			throw new Exception("线路编号不存在");
		}
		ObjectMapper mapper = new ObjectMapper();
		List<CommonDto> routeIncludeList = mapper.readValue(tour.getRouteInclude(),
				new TypeReference<List<CommonDto>>() {
				});
		List<CommonDto> routeContentList = mapper.readValue(tour.getRouteContent(),
				new TypeReference<List<CommonDto>>() {
				});
		List<CommonDto> noticeList = mapper.readValue(tour.getNotice(), new TypeReference<List<CommonDto>>() {
		});
		List<TourPrice> priceList = tourService.getTourPriceByTourId(id);
		String pictureListString = tour.getPicture();
		String[] pictureList = pictureListString.split(";");
		model.addAttribute("name", tour.getName());
		model.addAttribute("productId", tour.getProductId());
		model.addAttribute("price", tour.getPrice());
		model.addAttribute("taocan", tour.getTaocan());
		model.addAttribute("remark", tour.getRemark());
		model.addAttribute("comment", tour.getComment());
		model.addAttribute("deal", tour.getDeal());
		model.addAttribute("satisfactory", tour.getSatisfactory());
		model.addAttribute("day", tour.getDuring().split(",")[0]);
		model.addAttribute("night", tour.getDuring().split(",")[1]);
		model.addAttribute("introduction", StringUtil.convertBr(tour.getIntroduction()));
		model.addAttribute("routeIncludeList", routeIncludeList);
		model.addAttribute("routeContentList", routeContentList);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("priceList", priceList);
		model.addAttribute("pictureList", pictureList);
		// 推荐
		List<Tour> showTourList = showService.getShowTour();
		model.addAttribute("showTourList", showTourList);
		return "/tour-detail";
	}

	@RequestMapping("/pay/{priceId}")
	public String payPage(@PathVariable int priceId, Model model) {
		TourPrice tourPrice = tourService.getTourPriceByPriceId(priceId);
		Tour tour = tourService.getTourById(tourPrice.gettId());
		model.addAttribute("tour", tour);
		model.addAttribute("tourPrice", tourPrice);
		model.addAttribute("token", UUID.randomUUID());
		return "/tour-payment";
	}

	@RequestMapping("/pay/confirm")
	public String payConfirm(TourOrder tourOrder, HttpSession session, Model model) {
		User user = (User) session.getAttribute("userInfo");
		tourOrder.setuId(user.getuId());
		tourOrder.setoDate(new Date());
		tourOrder.setoType("unsuccess");
		int o_id = tourService.confirmTourOrder(tourOrder.getToken(), tourOrder);
		if (o_id == -1) {
			return "redirect:/index";
		}
		TourPrice tourPrice = tourService.getTourPriceByPriceId(tourOrder.getpId());
		Tour tour = tourService.getTourById(tourPrice.gettId());
		model.addAttribute("tourOrder", tourOrder);
		model.addAttribute("tourPrice", tourPrice);
		model.addAttribute("tour", tour);
		return "/tour-confirm";
	}

	@RequestMapping("/rest/{priceId}/{number}")
	@ResponseBody
	public String isRemain(@PathVariable int priceId, @PathVariable int number) {
		TourPrice tourPrice = tourService.getTourPriceByPriceId(priceId);
		if (tourPrice.getRemain() < number) {
			return "no";
		} else {
			return "yes";
		}
	}
}
