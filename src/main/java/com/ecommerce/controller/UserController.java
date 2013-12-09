package com.ecommerce.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.User;
import com.ecommerce.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	protected static Logger logger = Logger.getLogger(UserController.class);
	
	@Inject
	private UserService userService;
	
	@RequestMapping(value = "/settings", method = RequestMethod.GET)
	public ModelAndView userSettings(HttpSession session){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user-settings");
		return mav;
	}
}
