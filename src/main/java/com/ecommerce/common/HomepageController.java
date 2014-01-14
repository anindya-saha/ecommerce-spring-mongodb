package com.ecommerce.common;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.brand.Brand;
import com.ecommerce.brand.BrandService;
import com.ecommerce.category.Category;
import com.ecommerce.category.CategoryService;
import com.ecommerce.product.Product;
import com.ecommerce.product.ProductService;
import com.ecommerce.user.UserService;

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
	
	@Inject
	private BrandService brandService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView homePage(HttpServletRequest request,
			HttpServletResponse response,Model model) {
		ModelAndView mav = new ModelAndView();

		List<Product> products = productService.listOrderedProducts("_id","DESC",9);
		mav.addObject("products", products);
		//mav.addObject("staticServer",StaticServer.PROTOCOL.getConfiguration()+StaticServer.DOMAIN.getConfiguration());
		
		List<Category> mainCategory = categoryService.getMainCategories();
		mav.addObject("mainCategory",mainCategory);
		
		List<Category> childCategories = categoryService.getChildCategories();
		mav.addObject("childCategories",childCategories);
		
		List<Brand> brands = brandService.getBrands();
		mav.addObject("brands",brands);
		
		mav.setViewName("homepage");
		
		
		return mav;
	}

}