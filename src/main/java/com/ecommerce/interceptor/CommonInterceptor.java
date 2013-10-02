package com.ecommerce.interceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ecommerce.model.Category;
import com.ecommerce.model.User;
import com.ecommerce.service.CategoryService;

public class CommonInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private CategoryService categoryService;

	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler,ModelAndView mav) {
		
		// TODO for mainMenuCategories
		List<Category> categoryList = categoryService.getCategories();
		mav.addObject("catList",categoryList);
		
//		Cookie[] cookies = request.getCookies();
//		if(cookies != null){
//			for(Cookie cookie : cookies){
//				if(cookie.getValue().equals("userId")){
//					User user = userService.getUserById(cookie.getValue());
//					model.addAttribute(user);
//				}
//				else{
//					login = userService.loginUser(name,password);
//				}
//			}
//		}
		
	}
}