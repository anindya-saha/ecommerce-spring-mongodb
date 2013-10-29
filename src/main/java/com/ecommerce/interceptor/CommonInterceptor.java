package com.ecommerce.interceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.HandlerInterceptor;

import com.ecommerce.model.Category;
import com.ecommerce.model.User;
import com.ecommerce.service.CategoryService;
import com.ecommerce.service.UserService;

public class CommonInterceptor implements HandlerInterceptor{
	
	@Inject
	private CategoryService categoryService;
	@Inject
	private UserService userService;

	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler,ModelAndView mav) throws Exception{
//		System.out.println("posthandle");
//		HttpSession session = request.getSession();
		// TODO for mainMenuCategories
		List<Category> categoryList = categoryService.getCategories();
		mav.addObject("catList",categoryList);
		
//		Cookie[] cookies = request.getCookies();
//		if(cookies != null){
//			for(Cookie cookie : cookies){
//				if(cookie.getValue().equals("userId")){
//					User user = userService.getUserById(cookie.getValue());
//					//model.addAttribute(user);
//					session.setAttribute("user", user);
//				}
//				else{
//					//login = userService.loginUser(name,password);
//				}
//			}
//		}
		
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("aftercomplete");
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("prehandle");
		return true;
	}
}