package com.myway.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myway.pojo.User;
import com.myway.service.user.UserService;
import com.myway.util.PageError;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;

	private static final Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@Validated User user, BindingResult br, Model model, HttpSession session) {
		if (br.hasErrors()) {
			List<ObjectError> formatErrors = br.getAllErrors();
			for (ObjectError error : formatErrors) {
				logger.warn("用户登录参数错误:" + error.getDefaultMessage());
			}
			model.addAttribute("formatErrors", formatErrors);
			return "/login";
		}
		boolean result = userService.testPassword(user.getUserName(), user.getPassword());
		if (!result) {
			logger.warn("用户登录错误:账户或密码错误");
			model.addAttribute("loginError", new PageError("账户或密码错误"));
			return "/login";
		}
		User userInfo = userService.getUser(user.getUserName());
		session.setAttribute("userInfo", userInfo);
		return "redirect:/index";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@Validated User user, BindingResult br, Model model) {
		if (br.hasErrors()) {
			List<ObjectError> formatErrors = br.getAllErrors();
			for (ObjectError error : formatErrors) {
				logger.warn("用户注册参数错误:" + error.getDefaultMessage());
			}
			model.addAttribute("formatErrors", formatErrors);
			return "/register";
		}
		boolean result = userService.testPassword(user.getUserName(), user.getPassword());
		if (result) {
			logger.warn("用户注册错误:用户名已经存在");
			model.addAttribute("existError", new PageError("用户名已经存在"));
			return "/register";
		}
		userService.addUser(user);

		return "redirect:/index";
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userInfo");
		return "redirect:/index";
	}
}
