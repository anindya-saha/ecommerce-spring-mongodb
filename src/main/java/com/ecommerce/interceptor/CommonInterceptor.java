package com.ecommerce.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ecommerce.model.Category;
import com.ecommerce.service.CategoryService;

public class CommonInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private CategoryService categoryService;

	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler,ModelAndView mav) throws Exception {
		
		// TODO for mainMenuCategories
		List<Category> categoryList = categoryService.getCategories();
		mav.addObject("catList",categoryList);
		
	}
}