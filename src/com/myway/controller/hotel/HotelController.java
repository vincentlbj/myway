package com.myway.controller.hotel;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.Page;
import com.myway.dto.CommonDto;
import com.myway.dto.MyPage;
import com.myway.pojo.Hotel;
import com.myway.pojo.HotelOrder;
import com.myway.pojo.HotelWithBLOBs;
import com.myway.pojo.User;
import com.myway.service.hotel.HotelOrderService;
import com.myway.service.hotel.HotelService;

@Controller
@RequestMapping("/hotel")
public class HotelController {
	@Autowired
	private HotelService hotelService;

	@Autowired
	private HotelOrderService hotelOrderService;

	@RequestMapping("/result/grid")
	public String result(Hotel queryHotel, Integer pageNum, Integer pageSize, Model model) throws Exception {
		if (pageNum == null || pageNum < 0) {
			pageNum = 1;
		}
		if (pageSize == null || pageSize < 0) {
			pageSize = 9;
		}
		List<Hotel> list = hotelService.getHotelByCriteria(queryHotel, pageNum, pageSize);
		MyPage myPage = new MyPage();
		myPage.setResultList(list);
		myPage.setAllCount(((Page) list).getTotal());
		myPage.setCurrPage(pageNum.longValue());
		model.addAttribute("myPage", myPage);
		if (queryHotel.getName() != null) {
			model.addAttribute("queryName", queryHotel.getName());
		} else {
			model.addAttribute("queryName", "");
		}
		return "/hotel-result-grid";
	}

	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable int id, Model model) throws Exception {
		HotelWithBLOBs hotel = (HotelWithBLOBs) hotelService.getHotelById(id);
		ObjectMapper mapper = new ObjectMapper();
		List<CommonDto> installation = mapper.readValue(hotel.getInstallation(), new TypeReference<List<CommonDto>>() {
		});
		List<CommonDto> policy = mapper.readValue(hotel.getPolicy(), new TypeReference<List<CommonDto>>() {
		});
		model.addAttribute("hotel", hotel);
		model.addAttribute("installation", installation);
		model.addAttribute("policy", policy);
		return "hotel-detail";
	}

	@RequestMapping("/pay/{id}")
	public String payPage(@PathVariable int id, Model model) throws Exception {
		Hotel hotel = hotelService.getHotelById(id);
		model.addAttribute("hotel", hotel);
		model.addAttribute("token", UUID.randomUUID());
		return "/hotel-payment";
	}

	@RequestMapping("/pay/confirm")
	public String payConfirm(HotelOrder hotelOrder, HttpSession session, Model model) throws Exception {
		User user = (User) session.getAttribute("userInfo");
		hotelOrder.setUserId(user.getuId());
		int o_id = hotelService.confirmHotelOrder(hotelOrder);
		if (o_id == -1) {
			return "redirect:/index";
		}
		HotelOrder checkHotelOrder = hotelOrderService.getHotelOrderById(o_id);
		model.addAttribute("hotelOrder", checkHotelOrder);
		return "/hotel-confirm";
	}
}
