package com.myway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myway.pojo.User;
import com.myway.service.user.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public String login(User user, BindingResult br) {
		if (user.getUserName() != null) {
			if (user.getPassword() != null) {
				boolean result = userService.testPassword(user.getUserName(), user.getPassword());
				if (!result) {
					return "400";
				}
			}
		}
		return "200";
	}
}
