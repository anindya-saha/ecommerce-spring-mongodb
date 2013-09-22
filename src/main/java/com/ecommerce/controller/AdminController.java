package com.ecommerce.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.Brand;
import com.ecommerce.model.Category;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.model.User;
import com.ecommerce.service.BrandService;
import com.ecommerce.service.CategoryService;
import com.ecommerce.service.ProductService;
import com.ecommerce.service.UserService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	protected static Logger logger = Logger.getLogger("controller");

	@Inject
	private ProductService productService;
	
	@Inject
	private CategoryService categoryService;
	
	@Inject
	private BrandService brandService;
	
	@Inject
	private UserService userService;
	
	//List all items
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getItems(){

		ModelAndView mav = new ModelAndView();
		List<Product> product = productService.listProducts();
		List<Category> category = categoryService.getCategories();
		List<User> user = userService.listUsers();
		
		mav.addObject("categoryList",category);
		mav.addObject("productList", product);
		mav.addObject("userList", user);
		
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
			@RequestParam(value = "productUpdate", required = false) boolean productUpdate,
			@RequestParam(value = "brand", required = false) String brand) {

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
				Brand existingBrand = brandService.getBrand(brand);
				
				existingProduct.setName(productName);
				existingProduct.setPrice(productPrice);
				existingProduct.setInvalidPrice(productInvalidPrice);
				existingProduct.setCategory(existingCategory);
				existingProduct.setShipmentType(productShipmentType);
				existingProduct.setStock(productStock);
				existingProduct.setRating(productRating);
				existingProduct.setDescription(productDescription);
				existingProduct.setBrand(existingBrand);
				
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
		newProductComment.setUserName(userName);
		newProductComment.setRating(commentRating);
		newProductComment.setStatus(commentStatus);
		
		Date now = new Date();
		newProductComment.setDate(now);
		
		List<ProductComment> prodComment = new ArrayList<ProductComment>();
		if(productService.singleProduct(productId).getComment() == null){
			prodComment.add(newProductComment);
		}else{
		//	prodComment.addAll(productService.singleProduct(productId).getComment());
			prodComment.add(newProductComment);
		}
		
		//productService.addProductComment(existingProduct, prodComment);

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
		
		List<Brand> brands = brandService.getBrands();
		mav.addObject("brandList",brands);
		
		model.addAttribute("product", singleProduct);
		
		mav.setViewName("admin-product-update");
		return mav;
	}
	
	// Add new Category
	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public String addNewCategory(
			@RequestParam(value="name", required = false) String name,
			@RequestParam(value="ancestors", required = false) String[] ancestors,
			@RequestParam(value="parent", required = false) String parent){
		
		Category newCategory = new Category();
		
		newCategory.setName(name);
		newCategory.setAncestors(ancestors);
		newCategory.setParent(parent);
		
		categoryService.saveNewCategory(newCategory);
		
		return "redirect:/admin";
	}
	
	// Add new brand
	@RequestMapping(value = "/addbrand", method = RequestMethod.POST)
	public String addNewBrand(
			@RequestParam(value="name",required = false) String name){
		Brand newBrand = new Brand();
		
		newBrand.setBrand(name);
		
		brandService.saveNewBrand(newBrand);
		
		return "redirect:/admin";
	}
	
	// Add new user
	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public String addNewUser(
			@RequestParam(value="name",required = false) String name,
			@RequestParam(value="password",required = false) String password,
			@RequestParam(value="email",required = false) String email){
		User newUser = new User();
		
		newUser.setName(name);
		newUser.setPassword(password);
		newUser.setEmail(email);
		
		userService.saveNewUser(newUser);
		
		return "redirect:/admin";
	}
	
}
