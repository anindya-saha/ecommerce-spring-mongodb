package com.ecommerce.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.HandlerInterceptor;

import com.ecommerce.constant.StaticServer;

public class CommonInterceptor implements HandlerInterceptor{


	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler,ModelAndView mav) throws Exception{
		System.out.println("posthandle");
		
		//StaticServer (nginx server)
		request.setAttribute("staticServer", StaticServer.PROTOCOL.getConfiguration()+StaticServer.DOMAIN.getConfiguration());
		
	}

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("aftercomplete");
	}

	@Override
	public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2) throws Exception {
		System.out.println("prehandle");
		return true;
	}
}