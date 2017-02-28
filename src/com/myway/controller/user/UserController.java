package com.myway.controller.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myway.dto.UserTourOrder;
import com.myway.pojo.User;
import com.myway.service.tour.TourOrderService;
import com.myway.service.user.UserService;
import com.myway.util.PageError;
import com.myway.validation.Login;
import com.myway.validation.Register;
import com.myway.validation.ValidationUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService userService;

	@Autowired
	TourOrderService tourOrderService;

	private static final Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@Validated(value = Login.class) User user, BindingResult br, String referer, Model model,
			HttpSession session) {
		if (br.hasErrors()) {
			ValidationUtil.setMessage(model, br);
			model.addAttribute("user", user);
			model.addAttribute("referer", referer);
			return "/login";
		}
		boolean result = userService.testPassword(user.getUserName(), user.getPassword());
		if (!result) {
			logger.warn("用户登录错误:账户或密码错误");
			model.addAttribute("user", user);
			model.addAttribute("loginError", new PageError("账户或密码错误"));
			model.addAttribute("referer", referer);
			return "/login";
		}
		User userInfo = userService.getUser(user.getUserName());
		session.setAttribute("userInfo", userInfo);
		if (referer != null && !referer.equals("")) {
			return "redirect:" + referer;
		} else {
			return "redirect:/index";
		}
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(@Validated(value = Register.class) User user, BindingResult br, Model model) {
		if (br.hasErrors()) {
			ValidationUtil.setMessage(model, br);
			model.addAttribute("user", user);
			return "/register";
		}
		boolean result = userService.testPassword(user.getUserName(), user.getPassword());
		if (result) {
			logger.warn("用户注册错误:用户名已经存在");
			model.addAttribute("user", user);
			model.addAttribute("existError", new PageError("账号已经存在"));
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

	@RequestMapping(value = "/info")
	public String info() {
		return "user-info";
	}

	@RequestMapping(value = "/tour")
	public String tour(HttpSession session, Model model) {
		User user = (User) session.getAttribute("userInfo");
		List<UserTourOrder> userTourOrderList = tourOrderService.getUserTourOrderByUserId(user.getuId());
		model.addAttribute("userTourOrderList", userTourOrderList);
		return "user-tour";
	}

	@RequestMapping(value = "/modifyInfo")
	@ResponseBody
	public Map<String, Object> modifyInfo(@RequestBody User user, HttpSession session) {

		Map<String, Object> result = new HashMap<String, Object>();
		// 用户名和密码暂时不可以修改
		user.setUserName(null);
		user.setPassword(null);
		try {
			userService.updateUser(user);
		} catch (Exception e) {
			result.put("status", "fail");
			return result;
		}
		result.put("status", "success");
		User newUser = userService.getUserById(user.getuId());
		session.setAttribute("userInfo", newUser);
		return result;
	}
}
