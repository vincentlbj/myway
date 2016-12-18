package com.myway.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/index")
	public String index() {
		return "/index";
	}

	@RequestMapping("/loginPage")
	public String loginPage(HttpServletRequest request, Model model) {
		String referer = request.getHeader("Referer");
		if (referer != null)
			model.addAttribute("referer", referer);
		return "/login";
	}

	@RequestMapping("/registerPage")
	public String registerPage() {
		return "/register";
	}

}
