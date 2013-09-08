package com.ecommerce.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.Product;
import com.ecommerce.service.ProductService;

@Controller
public class HomepageController {
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/homepage", method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("homepage");

		List<Product> products = productService.listOrderedProducts("productAddedDate","DESC",4);

		modelAndView.addObject("products", products);

		return modelAndView;
	}

	@RequestMapping(value = { "/register" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView register(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("register");
		return modelAndView;
	}
}