package com.ecommerce.admin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.brand.Brand;
import com.ecommerce.brand.BrandService;
import com.ecommerce.category.Category;
import com.ecommerce.category.CategoryService;
import com.ecommerce.config.DirectoryConfig;
import com.ecommerce.constant.DirectoryPrefix;
import com.ecommerce.constant.OrderStatus;
import com.ecommerce.order.OrderService;
import com.ecommerce.product.Product;
import com.ecommerce.product.ProductImage;
import com.ecommerce.product.ProductService;
import com.ecommerce.product.ProductSpecification;
import com.ecommerce.user.User;
import com.ecommerce.user.UserService;
/**
 * 
 * @author İlker Korkut
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	
	protected static Logger logger = Logger.getLogger(AdminController.class);

	@Inject
	private ProductService productService;
	
	@Inject
	private CategoryService categoryService;
	
	@Inject
	private BrandService brandService;
	
	@Inject
	private UserService userService;
	
	@Inject
	private OrderService orderService;
	
	@Autowired
	private DirectoryConfig directoryUtil;
	
	//List all items
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView adminDashboard(){
		ModelAndView mav = new ModelAndView();	
		int pending = orderService.orderCountByType(OrderStatus.PENDING.getOrderStatus()),
			waitingStock = orderService.orderCountByType(OrderStatus.WAITING_STOCK.getOrderStatus()),
			preparing = orderService.orderCountByType(OrderStatus.PREPARING.getOrderStatus()),
			shipping = orderService.orderCountByType(OrderStatus.SHIPPING.getOrderStatus()),
			shipped = orderService.orderCountByType(OrderStatus.SHIPPED.getOrderStatus()),
			completed = orderService.orderCountByType(OrderStatus.COMPLETED.getOrderStatus()),
			cancelled = orderService.orderCountByType(OrderStatus.CANCELLED.getOrderStatus()),
			returned = orderService.orderCountByType(OrderStatus.RETURNED.getOrderStatus()),
			total = pending + waitingStock + preparing + shipping + shipped + completed + cancelled + returned;
				
		mav.addObject("pendingOrderCount", pending);
		mav.addObject("waitingStockOrderCount", waitingStock);
		mav.addObject("preparingOrderCount", preparing);
		mav.addObject("shippingOrderCount", shipping);
		mav.addObject("shippedOrderCount", shipped);
		mav.addObject("completedOrderCount", completed);
		mav.addObject("cancelledOrderCount", cancelled);
		mav.addObject("returnedOrderCount", returned);
		mav.addObject("totalOrders",total);
		
		mav.setViewName("admin-dashboard");
		return mav;
	}
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public ModelAndView productManagement(
			@RequestParam(value = "page", required = false)String page,
			HttpSession session){
		
		ModelAndView mav = new ModelAndView();
		
		List<Product> product;
		PagedListHolder productList = new PagedListHolder();
		if(session.getAttribute("productPaged") == null){
			product = productService.listProducts();
			//PagedListHolder<List<Product>> productList = new PagedListHolder(product);
			productList.setSource(product);
			session.setAttribute("productPaged", productList);
		}
		
		productList = (PagedListHolder) session.getAttribute("productPaged");
		productList.setPageSize(50);
		productList.getFirstElementOnPage();

		if(page == null){
			mav.addObject("productList", productList.getPageList());
		}else if(page.equals("next")){
			productList.nextPage();
			mav.addObject("productList", productList.getPageList());
		}else if(page.equals("prev")){
			productList.previousPage();
			mav.addObject("productList", productList.getPageList());
		}else{
			productList.setPage(Integer.parseInt(page)-1);
			mav.addObject("productList", productList.getPageList());
		}
		
		mav.setViewName("admin-products");
		return mav;
	}
	
	@RequestMapping(value = "/add-new-product", method = RequestMethod.GET)
	public ModelAndView addProduct(){

		ModelAndView mav = new ModelAndView();
		List<Category> mainCategory = categoryService.getMainCategories();
		mav.addObject("mainCategoryList",mainCategory);
		
		List<Category> childCategory = categoryService.getChildCategories();
		mav.addObject("childCategoryList",childCategory);
		
		List<Brand> brands = brandService.getBrands();
		mav.addObject("brandList",brands);
		
		mav.setViewName("admin-product-add");
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
			@RequestParam(value = "productShipmentType", required = false) String productShipmentType,
			@RequestParam(value = "productStock", required = false) int productStock,
			@RequestParam(value = "productRating", required = false) int productRating,
			@RequestParam(value = "productShortDescription", required = false) String productShortDescription,
			@RequestParam(value = "productDescription", required = false) String productDescription,
			@RequestParam(value = "productUpdate", required = false) boolean productUpdate,
			@RequestParam(value = "brandId", required = false) String brandId) {

		Product newProduct = new Product();
		Category category = categoryService.getCategory(productCategory);
		Brand brand = brandService.getBrand(brandId);

		newProduct.setName(productName);
		newProduct.setPrice(productPrice);
		newProduct.setInvalidPrice(productInvalidPrice);
		newProduct.setCategory(category);
		newProduct.setBrand(brand);
		newProduct.setShipmentType(productShipmentType);
		newProduct.setStock(productStock);
		newProduct.setRating(productRating);
		newProduct.setShortDescription(productShortDescription);
		newProduct.setDescription(productDescription);
		
		if(!productUpdate){
			//Adding New Product
			productService.addProduct(newProduct);
		}else{
			//Updating Existing Product
			if(!id.isEmpty() && id != null){
				Product existingProduct = productService.singleProduct(id);
				
				existingProduct.setName(productName);
				existingProduct.setPrice(productPrice);
				existingProduct.setInvalidPrice(productInvalidPrice);
				existingProduct.setCategory(category);
				existingProduct.setShipmentType(productShipmentType);
				existingProduct.setStock(productStock);
				existingProduct.setRating(productRating);
				existingProduct.setShortDescription(productShortDescription);
				existingProduct.setDescription(productDescription);
				existingProduct.setBrand(brand);
				
				productService.updateProduct(existingProduct);
			}
		}
		return "redirect:/admin/products";
	}
	
	@RequestMapping(value = "/product-add-image", method = RequestMethod.GET)
	public ModelAndView addProduct(
			@RequestParam(value = "productId", required = false) String id){

		ModelAndView mav = new ModelAndView();
		Product product = productService.singleProduct(id);
		mav.addObject("product",product);
		
		mav.setViewName("admin-product-add-image");
		return mav;
	}
	
	//File Upload
	@RequestMapping(value = "/upload-product-image", method = RequestMethod.POST)
	public String uploadProductImage(
			@RequestParam(value = "file",required = false)MultipartFile uploadedFile,
			@RequestParam(value = "productId",required=false)String productId){
		logger.debug("Image upload controller " + productId);
		InputStream inputStream = null;
		OutputStream outputStream = null;
		
		MultipartFile file = uploadedFile;
		String fileName = file.getOriginalFilename();
		
		try {
			inputStream = file.getInputStream();
			File parentFolder = directoryUtil.prepareUploadDirectory(DirectoryPrefix.PRODUCT_DIRECTORY.getDirectoryPrefix());
			File newFile = new File(parentFolder,fileName);
			if(!newFile.exists()){
				//newFile.createNewFile();
			}
			outputStream = new FileOutputStream(newFile);
			int read = 0;
			byte[] bytes = new byte[1024];
			while((read = inputStream.read(bytes)) != -1){
				outputStream.write(bytes, 0, read);
			}
			outputStream.close();
			
			ProductImage productImage = new ProductImage();
			productImage.setImagePath(parentFolder.getName()+"/"+newFile.getName());
			
			productService.addProductImage(productId, productImage);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "File Uploaded";
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
	@RequestMapping(value = "/product-update", method = RequestMethod.GET)
	public ModelAndView updateProduct(
			@RequestParam(value = "productId", required = false) String productId,
			@ModelAttribute Product product,
			ModelMap model) {

		ModelAndView mav = new ModelAndView();
		
		logger.debug("Product Controller logger");
		Product singleProduct = productService.singleProduct(productId);
		
		List<Category> mainCategory = categoryService.getMainCategories();
		mav.addObject("mainCategoryList",mainCategory);
		
		List<Category> childCategory = categoryService.getChildCategories();
		mav.addObject("childCategoryList",childCategory);
		
		List<Brand> brands = brandService.getBrands();
		mav.addObject("brandList",brands);
		
		model.addAttribute("product", singleProduct);
		
		mav.setViewName("admin-product-update");
		return mav;
	}
	
	@RequestMapping(value = "/categories", method = RequestMethod.GET )
	public ModelAndView allCategories(){
		ModelAndView mav = new ModelAndView();
		List<Category> mainCategories = categoryService.getMainCategories();
		List<Category> childCategories = categoryService.getChildCategories();
		mav.addObject("mainCategories",mainCategories);
		mav.addObject("childCategories",childCategories);
		
		mav.setViewName("admin-category");
		return mav;
	}
	
	@RequestMapping(value = "/add-new-category", method = RequestMethod.GET )
	public ModelAndView newCategory(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("admin-add-category");
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
		
		newBrand.setName(name);
		
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
	
	//Add product Specification
	@RequestMapping(value = "/add-product-specification", method = RequestMethod.POST)
	public String addProductSpecification(
			@RequestParam(value = "productid", required = false) String productId,
			@RequestParam(value = "specificationTitle", required = false) String specificationTitle,
			@RequestParam(value = "specificationDetail", required = false) String specificationDetail){
		
		Product existingProduct = productService.singleProduct(productId);
		
		ProductSpecification newSpec = new ProductSpecification();
		newSpec.setTitle(specificationTitle);
		newSpec.setDetail(specificationDetail);
		
		productService.addProductSpecification(existingProduct, newSpec);
		
		return "redirect:/admin";
	}
	
}
