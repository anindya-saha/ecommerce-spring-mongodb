package com.ecommerce.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author İlker Korkut
 *
 */

@Controller
@RequestMapping(value= "/admin")
public class AdminOrderController {

	@RequestMapping(value = "/orders", method = RequestMethod.GET)
	public ModelAndView seeOrders(){
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}
	
}
