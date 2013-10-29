package com.ecommerce.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.Category;
import com.ecommerce.model.Product;
import com.ecommerce.service.CategoryService;
import com.ecommerce.service.ProductService;
import com.ecommerce.service.UserService;

@Controller
@RequestMapping(value = "/")
//@SessionAttributes({"user"})
public class HomepageController {
	
	@Inject
	private ProductService productService;
	
	@Inject
	private CategoryService categoryService;
	
	@Inject
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request,
			HttpServletResponse response,Model model) {
		ModelAndView mav = new ModelAndView();

		List<Product> products = productService.listOrderedProducts("_id","DESC",9);
		mav.addObject("products", products);
		
		List<Category> mainCategory = categoryService.getMainCategories();
		mav.addObject("mainCategory",mainCategory);
		
		mav.setViewName("homepage");
		
		
		return mav;
	}

	@RequestMapping(value = { "/register" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView register(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("register");
		return modelAndView;
	}
}