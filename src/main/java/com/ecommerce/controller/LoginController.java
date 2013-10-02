package com.ecommerce.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			@RequestParam(value="remember", required = false) boolean remember,
			Model model,
			HttpServletResponse response,
			HttpServletRequest request) throws Exception{
		
		boolean login = userService.loginUser(name,password);
		
		if(login){
			User user = userService.getUserByName(name);
			model.addAttribute(user);
			if(remember){
				Cookie userIdCookie = new Cookie("userId",user.getId());
				userIdCookie.setMaxAge(60*60);
				userIdCookie.setPath("/");
				userIdCookie.setHttpOnly(true);
				response.addCookie(userIdCookie);
			}
		}
		
		return "redirect:/homepage";
	}
	
	@RequestMapping(value="/logout")
	public String logout(SessionStatus status,HttpServletResponse response){
		
		Cookie userIdCookie = new Cookie("userId",null);
		userIdCookie.setMaxAge(0);
		userIdCookie.setPath("/");
		userIdCookie.setHttpOnly(true);
		response.addCookie(userIdCookie);
		
		status.setComplete();
		return "redirect:/homepage";
	}
	
}
