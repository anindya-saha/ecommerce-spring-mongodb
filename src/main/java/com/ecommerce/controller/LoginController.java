package com.ecommerce.controller;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.User;
import com.ecommerce.service.UserService;

@Controller
@RequestMapping(value="/user")
@SessionAttributes({"user"})
public class LoginController {
	
	protected static Logger logger = Logger.getLogger("controller");
	
	@Inject
	private UserService userService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView loginPage(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping(value = "/login-process", method = RequestMethod.POST)
	public String loginProcess(
			@RequestParam(value="name", required = false) String name,
			@RequestParam(value="password", required = false) String password,
			Model model) throws Exception{
		
		boolean login = userService.loginUser(name,password);
		if(login){
			User user = userService.getUserByName(name);
			model.addAttribute(user);
		}
		
		return "redirect:/homepage";
	}
	
	@RequestMapping(value="/logout")
	public String logout(SessionStatus status){
		
		status.setComplete();
		return "redirect:/homepage";
	}
	
}
