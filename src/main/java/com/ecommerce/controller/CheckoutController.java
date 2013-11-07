package com.ecommerce.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/checkout")
public class CheckoutController {

	protected static Logger logger = Logger.getLogger("controller");
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView checkoutStepOne(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("checkout-step-one");
		return mav;
	}
	
}
