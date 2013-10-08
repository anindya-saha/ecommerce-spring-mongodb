package com.ecommerce.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.Product;
import com.ecommerce.service.CategoryService;
import com.ecommerce.service.ProductService;

@Controller
@RequestMapping(value = "/category")
public class CategoryController {
	
	@Inject
	private ProductService productService;
	
	@Inject
	private CategoryService categoryService;
	
	@RequestMapping(value="{categoryId}",method = RequestMethod.GET)
	public ModelAndView listAllProducts(@PathVariable String categoryId){
		ModelAndView mav = new ModelAndView();
		
		List<Product> products = productService.listProducts();
		mav.addObject("products", products);
		
		mav.setViewName("categoryGrid");
		return mav;
	}
	
}