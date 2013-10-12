package com.ecommerce.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.constant.ConfirmationStatus;
import com.ecommerce.model.Category;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.model.ProductSpecification;
import com.ecommerce.model.User;
import com.ecommerce.service.CategoryService;
import com.ecommerce.service.ProductService;

@Controller
@RequestMapping(value = "/product")
//@SessionAttributes({"cart"})
public class ProductController {
	protected static Logger logger = Logger.getLogger("controller");

	@Inject
	private ProductService productService;
	
	@Inject
	private CategoryService categoryService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView showProduct(
			@RequestParam(value = "productid", required = false) String productId) {
		ModelAndView mav = new ModelAndView();
		
		Product singleProduct = productService.singleProduct(productId);
		
		HashMap<String,String> catMap = categoryService.getCategoryTree(singleProduct.getCategory().getParent());

		mav.addObject("prodCategory",singleProduct.getCategory().getName());
		mav.addObject("categoryList",catMap);
		mav.addObject("product",singleProduct);
		
		List<Product> relatedProduct = productService.listRelatedProducts(singleProduct, 3);
		mav.addObject("relatedProduct",relatedProduct);

		mav.setViewName("productDetails");
		return mav;
	}

	@RequestMapping(value = "/add-comment", method = RequestMethod.POST)
	public String addProductComment(
			@ModelAttribute("user") User user,
			@RequestParam(value = "productid", required = false) String productId,
			@RequestParam(value = "productComment", required = false) String comment,
			@RequestParam(value = "productCommentRating", required = false) int commentRating){
		
		Product existingProduct = productService.singleProduct(productId);

		ProductComment newProductComment = new ProductComment();
		newProductComment.setUserId(user.getId());
		newProductComment.setComment(comment);
		newProductComment.setUserName(user.getName());
		newProductComment.setRating(commentRating);
		newProductComment.setStatus(ConfirmationStatus.WAITING.getConfirmation());
		
		Date now = new Date();
		newProductComment.setDate(now);
		
		productService.addProductComment(existingProduct, newProductComment);
		
		return "redirect:/homepage";
	}
	
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value="/add-to-cart", method = RequestMethod.POST)
	public String addProductToCart(
			@RequestParam(value = "productId" ,required = true) String productId,
			HttpSession session){
		//TODO: add count for one product item
		boolean checkContain = false;
		Product product = productService.singleProduct(productId);
		if(session.getAttribute("cart") == null || session.getAttribute("cart") == ""){
			List<Product> productList = new ArrayList<Product>();
			productList.add(product);
			session.setAttribute("cart", productList);
		}
		else{
			List<Product> productList = new ArrayList<Product>();
			productList.addAll((Collection<? extends Product>) session.getAttribute("cart"));
			for(Product p : productList){
				if(p.getId().equals(product.getId())){
					checkContain = true;
				}
			}
			if(checkContain){
				return "Product is already in your cart";
			}
			else{
				productList.add(product);
				session.setAttribute("cart", productList);
			}
		}
		
		return "added product to cart";
	}

}