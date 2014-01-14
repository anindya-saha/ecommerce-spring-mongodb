package com.ecommerce.user;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.security.PasswordEncryption;

@Controller
@RequestMapping(value="/user")
public class LoginController {
	
	protected static Logger logger = Logger.getLogger(LoginController.class);
	
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
			@RequestParam(value="email", required = false) String email,
			@RequestParam(value="password", required = false) String password,
			@RequestParam(value="remember", required = false) boolean remember,
			HttpServletResponse response,
			HttpSession session) throws Exception{
		
		String encPass = PasswordEncryption.encrypt(password);
		
		boolean login = userService.loginUser(email,encPass);
		
		if(login){
			User user = userService.getUserByEmail(email);
			//model.addAttribute(user);
			session.setAttribute("user", user);
			if(remember){
				Cookie userIdCookie = new Cookie("userId",user.getId());
				userIdCookie.setMaxAge(60*60);
				userIdCookie.setPath("/");
				userIdCookie.setHttpOnly(true);
				response.addCookie(userIdCookie);
			}
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/logout")
	public String logout(SessionStatus status,HttpServletResponse response,HttpSession session){
		
		Cookie userIdCookie = new Cookie("userId",null);
		userIdCookie.setMaxAge(0);
		userIdCookie.setPath("/");
		userIdCookie.setHttpOnly(true);
		response.addCookie(userIdCookie);
		
		if (session.getAttribute("user") != null) {  
		    session.invalidate();
		    status.setComplete();
		}
		
		return "redirect:/";
	}
	
}
