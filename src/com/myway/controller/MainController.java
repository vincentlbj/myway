package com.myway.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/index")
	public String index() {
		return "/index";
	}

	@RequestMapping("/loginPage")
	public String loginPage() {
		return "/login";
	}

	@RequestMapping("/registerPage")
	public String registerPage() {
		return "/register";
	}

}
