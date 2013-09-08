package com.ecommerce.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.constant.ConfirmationStatus;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.service.ProductService;

@Controller
public class ProductController {
	protected static Logger logger = Logger.getLogger("controller");

	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView showProduct(
			@RequestParam(value = "productid", required = false) String productId,
			ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("productDetails");

		logger.debug("Product Controller logger");
		Product singleProduct = productService.singleProduct(productId);
		// List<ProductComments> productComments =
		// this.productService.productComments(productId,
		// ConfirmationStatus.CONFIRMED.getConfirmation());
		// modelAndView.addObject("urunler", products);
		model.addAttribute("product", singleProduct);
		// modelAndView.addObject("comments", productComments);
		// model.addAttribute("urunler",products);
		// model.addAttribute("singleProduct",singleProduct);

		return modelAndView;
	}




}