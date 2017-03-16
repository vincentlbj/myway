package com.myway.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myway.pojo.Contact;
import com.myway.pojo.Hotel;
import com.myway.pojo.Ticket;
import com.myway.pojo.Tour;
import com.myway.service.contact.ContactService;
import com.myway.service.showpage.ShowService;

@Controller
public class MainController {

	@Autowired
	private ShowService showService;

	@Autowired
	private ContactService contactService;

	@RequestMapping("/index")
	public String index(Model model) {
		List<Tour> showTourList = showService.getShowTour();
		List<Hotel> showHotelList = showService.getShowHotel();
		List<Ticket> showTicketList = showService.getShowTicket();
		model.addAttribute("showTourList", showTourList);
		model.addAttribute("showHotelList", showHotelList);
		model.addAttribute("showTicketList", showTicketList);
		return "index";
	}

	@RequestMapping("/loginPage")
	public String loginPage(HttpServletRequest request, Model model) {
		String referer = request.getHeader("Referer");
		if (referer != null)
			model.addAttribute("referer", referer);
		return "login";
	}

	@RequestMapping("/registerPage")
	public String registerPage() {
		return "register";
	}

	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}

	@RequestMapping("/contactSubmit")
	public String contactSubmit(Contact contact, RedirectAttributes model) {
		contactService.insertContact(contact);
		model.addFlashAttribute("message", "您的建议已提交，多谢！");
		return "redirect:/contact";
	}

}
