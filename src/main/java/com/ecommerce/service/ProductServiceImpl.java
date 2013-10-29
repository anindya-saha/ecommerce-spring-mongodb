package com.ecommerce.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.ProductDao;
import com.ecommerce.model.Category;
import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.model.ProductSpecification;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	protected static Logger logger = Logger.getLogger("service");

	public List<Product> listProducts() {
		logger.debug("Getting all products");
		try {
			return productDao.getAllProducts();
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting all products");
			return null;
		}
	}
	
	public List<Product> listRelatedProducts(Product product, int limit) {
		logger.debug("Getting related products");
		try {
			return productDao.getRelatedProducts(product, limit);
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting related products");
			return null;
		}
	}
	
	public List<Product> listSameBrandProducts(Product product, int limit) {
		logger.debug("Getting same brand products");
		try {
			return productDao.getSameBrandProducts(product, limit);
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting same brand products");
			return null;
		}
	}
	
	public List<Product> listOrderedProducts(String orderBy,String orderType,int limit){
		logger.debug("Getting ordered product with limit");
		try {
			return productDao.getOrderedProducts(orderBy, orderType,limit);
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting ordered products");
			return null;
		}
	}
	
	public List<Product> listCategorizedProducts(String categoryName){
		logger.debug("Getting categorized products");
		
		Category cat = new Category();
		List<Product> allProduct = productDao.getAllProducts();
		List<Product> categorizedProducts = new ArrayList<>();
		
		for(Product ap : allProduct){
			cat = ap.getCategory();
			
			if(cat.getName().equals(categoryName) || cat.getParent().equals(categoryName) || Arrays.asList(cat.getAncestors()).contains(categoryName)){
				categorizedProducts.add(ap);
			}
		}
		
		return categorizedProducts;
	}

	public Product singleProduct(String id) {

		logger.debug("Getting single product");
		
		try {
			return productDao.getSingleProduct(id);
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting a single product");
			return null;
		}
	}

	public void addProduct(Product product) {

		logger.debug("Adding new Product");
		try {
			productDao.saveNewProduct(product);
		} catch (Exception e) {
			logger.error("An error has occured while trying to add new product");
		}
	}

	public void removeProduct(Product product) {
		logger.debug("Deleting an existing product");
		try {
			productDao.deleteExistingProduct(product);
		} catch (Exception e) {
			logger.error("An error has occured while trying to delete existing product");
		}
	}

	public void updateProduct(Product product) {
		productDao.updateExistingProduct(product);
	}

	public void addProductComment(Product product,ProductComment comment) {
		logger.debug("Adding comment to existing product");
		//try {
			productDao.saveProductComment(product,comment);
		//} catch (Exception e) {
			//logger.error("An error has occured while trying to adding new comment on an existing product");
		//}
		
	}

	public void addProductSpecification(Product product,ProductSpecification productSpecification) {
		logger.debug("Adding new specification to existing product");
		try {
			productDao.saveProductSpecification(product,productSpecification);
		} catch (Exception e) {
			logger.error("An error has occured while trying to adding new specification on an existing product");
		}
		
	}
}