package com.myway.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.myway.dto.CommonDto;
import com.myway.pojo.Tour;
import com.myway.pojo.TourMember;
import com.myway.pojo.TourOrder;
import com.myway.pojo.TourPrice;
import com.myway.pojo.TourWithBLOBs;
import com.myway.pojo.User;
import com.myway.service.tour.TourService;
import com.myway.util.StringUtil;

@Controller
@RequestMapping("/tour")
public class TourController {
	@Autowired
	private TourService tourService;

	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable int id, Model model)
			throws JsonParseException, JsonMappingException, IOException {
		TourWithBLOBs tour = (TourWithBLOBs) tourService.getTourById(id);
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
	public String payConfirm(String token, Integer number, Integer pId, TourMember tourMember, HttpSession session,
			Model model) {
		User user = (User) session.getAttribute("userInfo");
		TourOrder tourOrder = new TourOrder();
		tourOrder.setPeople(number);
		tourOrder.setpId(pId);
		tourOrder.setuId(user.getuId());
		tourOrder.setoDate(new Date());
		tourOrder.setToken(token);
		int o_id = tourService.confirmTourOrder(token, tourOrder, tourMember);
		if (o_id == -1) {
			return "redirect:/index";
		}
		TourPrice tourPrice = tourService.getTourPriceByPriceId(pId);
		Tour tour = tourService.getTourById(tourPrice.gettId());
		model.addAttribute("tourOrder", tourOrder);
		model.addAttribute("tourPrice", tourPrice);
		model.addAttribute("tour", tour);
		model.addAttribute("tourMember", tourMember);
		return "/tour-confirm";
	}
}
