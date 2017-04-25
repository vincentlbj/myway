package com.myway.controller.pay;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myway.pojo.HotelOrder;
import com.myway.pojo.MockPay;
import com.myway.pojo.TicketOrder;
import com.myway.pojo.TourOrder;
import com.myway.pojo.User;
import com.myway.service.hotel.HotelOrderService;
import com.myway.service.mockpay.MockPayService;
import com.myway.service.ticket.TicketOrderService;
import com.myway.service.tour.TourOrderService;
import com.myway.service.user.UserService;

@Controller
@RequestMapping("/mockPay")
public class MockPayController {

	@Autowired
	private TourOrderService tourOrderService;

	@Autowired
	private HotelOrderService hotelOrderService;

	@Autowired
	private TicketOrderService ticketOrderService;

	@Autowired
	private UserService userService;

	@Autowired
	private MockPayService mockPayService;

	@RequestMapping("/show/{type}/{oId}")
	public String showPay(@PathVariable String type, @PathVariable int oId, Model model) {
		// 判断是否展出支付界面
		boolean flag = true;
		if (type.equals("tour")) {
			model.addAttribute("type", type);
			model.addAttribute("typeName", "旅游");
			TourOrder tourOrder = tourOrderService.getTourOrder(oId);
			if (tourOrder == null) {
				flag = false;
				model.addAttribute("reason", "订单编号为" + oId + "的旅游订单不存在");
			}
			if (tourOrder.getoType().equals("success")) {
				flag = false;
				model.addAttribute("reason", "订单编号为" + oId + "的旅游订单已经支付，请勿重复支付");
			}
			User user = userService.getUserById(tourOrder.getuId());
			model.addAttribute("user", user);
			model.addAttribute("price", tourOrder.getPrice());
		} else if (type.equals("hotel")) {
			model.addAttribute("type", type);
			model.addAttribute("typeName", "酒店");
			HotelOrder hotelOrder = hotelOrderService.getHotelOrderById(oId);
			if (hotelOrder == null) {
				flag = false;
				model.addAttribute("reason", "订单编号为" + oId + "的酒店订单不存在");
			}
			if (hotelOrder.getoType().equals("success")) {
				flag = false;
				model.addAttribute("reason", "订单编号为" + oId + "的酒店订单已经支付，请勿重复支付");
			}
			User user = userService.getUserById(hotelOrder.getUserId());
			model.addAttribute("user", user);
			model.addAttribute("price", hotelOrder.getPrice());
		} else if (type.equals("ticket")) {
			model.addAttribute("type", type);
			model.addAttribute("typeName", "门票");
			TicketOrder ticketOrder = ticketOrderService.getTicketOrderById(oId);
			if (ticketOrder == null) {
				flag = false;
				model.addAttribute("reason", "订单编号为" + oId + "的门票订单不存在");
			}
			if (ticketOrder.getoType().equals("success")) {
				flag = false;
				model.addAttribute("reason", "订单编号为" + oId + "的门票订单已经支付，请勿重复支付");
			}
			model.addAttribute("price", ticketOrder.getPrice());
			User user = userService.getUserById(ticketOrder.getUserId());
			model.addAttribute("user", user);
		} else {
			flag = false;
			model.addAttribute("reason", "订单类型错误");
		}
		model.addAttribute("flag", flag);
		model.addAttribute("id", oId);
		return "showPay";
	}

	@RequestMapping("/confirm/{type}/{oId}")
	public String confirmPay(@PathVariable String type, @PathVariable int oId, MockPay mockPay, Model model) {
		BigDecimal price = null;
		if (type.equals("tour")) {
			model.addAttribute("type", type);
			TourOrder tourOrder = tourOrderService.getTourOrder(oId);
			if (tourOrder == null) {
				model.addAttribute("result", "订单编号为" + oId + "的旅游订单不存在");
				return "payResult";
			}
			if (tourOrder.getoType().equals("success")) {
				model.addAttribute("result", "订单编号为" + oId + "的旅游订单已经支付，请勿重复支付");
				return "payResult";
			}
			price = tourOrder.getPrice();
		} else if (type.equals("hotel")) {
			model.addAttribute("type", type);
			HotelOrder hotelOrder = hotelOrderService.getHotelOrderById(oId);
			if (hotelOrder == null) {
				model.addAttribute("result", "订单编号为" + oId + "的酒店订单不存在");
				return "payResult";
			}
			if (hotelOrder.getoType().equals("success")) {
				model.addAttribute("result", "订单编号为" + oId + "的酒店订单已经支付，请勿重复支付");
				return "payResult";
			}
			price = hotelOrder.getPrice();
		} else if (type.equals("ticket")) {
			TicketOrder ticketOrder = ticketOrderService.getTicketOrderById(oId);
			if (ticketOrder == null) {
				model.addAttribute("result", "订单编号为" + oId + "的门票订单不存在");
				return "payResult";
			}
			if (ticketOrder.getoType().equals("success")) {
				model.addAttribute("result", "订单编号为" + oId + "的门票订单已经支付，请勿重复支付");
				return "payResult";
			}
			price = ticketOrder.getPrice();
		} else {
			model.addAttribute("result", "订单类型错误");
			model.addAttribute("oId", oId);
			return "payResult";
		}
		MockPay getMockPay = mockPayService.getMockPay(mockPay.getAccount(), mockPay.getPassword());
		if (getMockPay == null) {
			model.addAttribute("result", "账户或者密码出错");
			return "payResult";
		}
		boolean minusResult = mockPayService.minusBalance(getMockPay, price);
		if (minusResult == false) {
			model.addAttribute("result", "账户余额不足，扣款失败");
			return "payResult";
		}

		if (type.equals("tour")) {
			// 修改订单状态
			mockPayService.changeOrderStatus("tour", oId);
			model.addAttribute("result", "订单编号为" + oId + "的旅游订单支付成功");
		} else if (type.equals("hotel")) {
			mockPayService.changeOrderStatus("hotel", oId);
			model.addAttribute("result", "订单编号为" + oId + "的酒店订单支付成功");
		} else if (type.equals("ticket")) {
			mockPayService.changeOrderStatus("ticket", oId);
			model.addAttribute("result", "订单编号为" + oId + "的门票订单支付成功");
		}
		model.addAttribute("flag", true);
		return "payResult";
	}

}
