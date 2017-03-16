package com.myway.controller.ticket;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.Page;
import com.myway.dto.MyPage;
import com.myway.pojo.Ticket;
import com.myway.pojo.TicketOrder;
import com.myway.pojo.TicketWithBLOBs;
import com.myway.pojo.User;
import com.myway.service.showpage.ShowService;
import com.myway.service.ticket.TicketOrderService;
import com.myway.service.ticket.TicketService;
import com.myway.util.StringUtil;

@Controller
@RequestMapping("/ticket")
public class TicketController {
	@Autowired
	private TicketService ticketService;

	@Autowired
	private TicketOrderService tickerOrderService;

	@Autowired
	private ShowService showService;

	@RequestMapping("/result/grid")
	public String result(Ticket queryTicket, Integer pageNum, Integer pageSize, Model model) throws Exception {
		if (pageNum == null || pageNum < 0) {
			pageNum = 1;
		}
		if (pageSize == null || pageSize < 0) {
			pageSize = 9;
		}
		List<Ticket> list = ticketService.getTicketByCriteria(queryTicket, pageNum, pageSize);
		MyPage myPage = new MyPage();
		myPage.setResultList(list);
		myPage.setAllCount(((Page) list).getTotal());
		myPage.setCurrPage(pageNum.longValue());
		model.addAttribute("myPage", myPage);
		if (queryTicket.getName() != null) {
			model.addAttribute("queryName", queryTicket.getName());
		} else {
			model.addAttribute("queryName", "");
		}
		return "/ticket-result-grid";
	}

	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable int id, Model model) throws Exception {
		TicketWithBLOBs ticket = ticketService.getTicketById(id);
		ticket.setBookNotice(StringUtil.convertBr(ticket.getBookNotice()));
		ticket.setSpotSummary(StringUtil.convertBr(ticket.getSpotSummary()));
		ticket.setTrafficMessage(StringUtil.convertBr(ticket.getTrafficMessage()));
		model.addAttribute("ticket", ticket);
		List<Ticket> showTicketList = showService.getShowTicket();
		model.addAttribute("showTicketList", showTicketList);
		return "/ticket-detail";
	}

	@RequestMapping("/pay/{id}")
	public String payPage(@PathVariable int id, Model model) throws Exception {
		Ticket ticket = ticketService.getTicketById(id);
		model.addAttribute("ticket", ticket);
		model.addAttribute("token", UUID.randomUUID());
		return "/ticket-payment";
	}

	@RequestMapping("/pay/confirm")
	public String payConfirm(String token, Integer number, String price, String phone, Integer ticketId,
			HttpSession session, Model model) throws Exception {
		User user = (User) session.getAttribute("userInfo");
		TicketOrder ticketOrder = new TicketOrder();
		ticketOrder.setPeople(number);
		BigDecimal priceDecimal = new BigDecimal(price);
		ticketOrder.setPrice(priceDecimal);
		ticketOrder.setDate(new Date());
		ticketOrder.setToken(token);
		ticketOrder.setUserId(user.getuId());
		ticketOrder.setMemberPhone(phone);
		ticketOrder.setTicketId(ticketId);
		int o_id = ticketService.confirmTicketOrder(ticketOrder);
		if (o_id == -1) {
			return "redirect:/index";
		}
		TicketWithBLOBs ticketById = ticketService.getTicketById(ticketId);
		model.addAttribute("ticket", ticketById);
		TicketOrder ticketOrderById = tickerOrderService.getTicketOrderById(o_id);
		model.addAttribute("ticketOrder", ticketOrderById);
		return "/ticket-confirm";
	}
}
