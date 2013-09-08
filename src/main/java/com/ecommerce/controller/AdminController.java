package com.ecommerce.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.Category;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.service.CategoryService;
import com.ecommerce.service.ProductService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	protected static Logger logger = Logger.getLogger("controller");

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	//List all products
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getProducts() {

		ModelAndView mav = new ModelAndView();
		List<Product> product = productService.listProducts();
		List<Category> category = categoryService.getCategories();
		mav.addObject("categoryList",category);
		mav.addObject("productList", product);
		
		mav.setViewName("admin");
		return mav;
	}

	// Create new product & update product
	@RequestMapping(value = "/productsave", method = RequestMethod.POST)
	public String createProduct(
			@RequestParam(value = "productid", required = false) String id,
			@RequestParam(value = "productName", required = false) String productName,
			@RequestParam(value = "productPrice", required = false) double productPrice,
			@RequestParam(value = "productInvalidPrice", required = false) double productInvalidPrice,
			@RequestParam(value = "productCategory", required = false) String productCategory,
			@RequestParam(value = "productShipmentType", required = false) int productShipmentType,
			@RequestParam(value = "productStock", required = false) int productStock,
			@RequestParam(value = "productRating", required = false) int productRating,
			@RequestParam(value = "productDescription", required = false) String productDescription,
			@RequestParam(value = "productUpdate", required = false) boolean productUpdate) {

		Product newProduct = new Product();

		newProduct.setName(productName);
		newProduct.setPrice(productPrice);
		newProduct.setInvalidPrice(productInvalidPrice);
		//newProduct.setCategory(productCategory);
		newProduct.setShipmentType(productShipmentType);
		newProduct.setStock(productStock);
		newProduct.setRating(productRating);
		newProduct.setDescription(productDescription);
		
		if(!productUpdate){
			//Adding New Product
			productService.addProduct(newProduct);
		}else{
			//Updating Existing Product
			if(!id.isEmpty() && id != null){
				Product existingProduct = productService.singleProduct(id);
				Category existingCategory = categoryService.getCategory(productCategory);
				
				existingProduct.setName(productName);
				existingProduct.setPrice(productPrice);
				existingProduct.setInvalidPrice(productInvalidPrice);
				existingProduct.setCategory(existingCategory);
				existingProduct.setShipmentType(productShipmentType);
				existingProduct.setStock(productStock);
				existingProduct.setRating(productRating);
				existingProduct.setDescription(productDescription);
				
				productService.updateProduct(existingProduct);
			}
		}
		return "redirect:/admin";
	}
	
	//Add ProductComment to product
	@RequestMapping(value = "/addproductcomment", method = RequestMethod.POST)
	public ModelAndView addProductComment(
			@RequestParam(value = "productId", required = false) String productId,
			@RequestParam(value = "userId", required = false) String userId,
			@RequestParam(value = "userName", required = false) String userName,
			@RequestParam(value = "productComment", required = false) String comment,
			@RequestParam(value = "productCommentRating", required = false) int commentRating,
			@RequestParam(value = "productCommentStatus", required = false) int commentStatus) {
		ModelAndView mav = new ModelAndView("admin");

		Product existingProduct = productService.singleProduct(productId);

		ProductComment newProductComment = new ProductComment();
		newProductComment.setUserId(userId);
		newProductComment.setComment(comment);
		newProductComment.setCommentUsername(userName);
		newProductComment.setCommentRating(commentRating);
		newProductComment.setCommentStatus(commentStatus);

		productService.addProductComment(existingProduct, newProductComment);

		return mav;
	}

	// Remove existing product
	@RequestMapping(value = "/productremove", method = RequestMethod.GET)
	public ModelAndView removeProduct(@ModelAttribute Product product,
			ModelMap model) {

		ModelAndView modelAndView = new ModelAndView("admin");

		productService.removeProduct(product);

		return modelAndView;
	}

	//Product Update Form Page
	@RequestMapping(value = "/productupdate", method = RequestMethod.GET)
	public ModelAndView updateProduct(
			@RequestParam(value = "productId", required = false) String productId,
			@ModelAttribute Product product,
			ModelMap model) {

		ModelAndView mav = new ModelAndView();
		
		logger.debug("Product Controller logger");
		Product singleProduct = productService.singleProduct(productId);
		
		List<Category> category = categoryService.getCategories();
		mav.addObject("categoryList",category);
		
		model.addAttribute("product", singleProduct);
		
		mav.setViewName("admin-product-update");
		return mav;
	}
	
	// Add new Category
	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public String addNewCategory(
			@RequestParam(value="id", required = false) String id,
			@RequestParam(value="ancestors", required = false) String[] ancestors,
			@RequestParam(value="parent", required = false) String parent){
		
		Category newCategory = new Category();
		
		newCategory.setId(id);
		newCategory.setAncestors(ancestors);
		newCategory.setParent(parent);
		
		categoryService.saveNewCategory(newCategory);
		
		return "redirect:/admin";
	}
}
