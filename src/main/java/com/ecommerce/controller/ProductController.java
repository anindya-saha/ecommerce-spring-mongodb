package com.ecommerce.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.constant.ConfirmationStatus;
import com.ecommerce.model.Category;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.service.CategoryService;
import com.ecommerce.service.ProductService;

@Controller
public class ProductController {
	protected static Logger logger = Logger.getLogger("controller");

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView showProduct(
			@RequestParam(value = "productid", required = false) String productId,
			ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("productDetails");

		logger.debug("Product Controller logger");
		
		Product singleProduct = productService.singleProduct(productId);
		
		Category category = categoryService.getCategoryByName(singleProduct.getCategory().getParent());
		
		HashMap<String,String> catMap = categoryService.getCategoryTree(singleProduct.getCategory().getParent());

		mav.addObject("prodCategory",singleProduct.getCategory().getName());
		mav.addObject("categoryList",catMap);
		
		model.addAttribute("product", singleProduct);

		return mav;
	}




}