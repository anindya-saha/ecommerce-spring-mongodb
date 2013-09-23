package com.ecommerce.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.ProductDao;
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
	
	public List<Product> listOrderedProducts(String orderBy,String orderType,int limit){
		logger.debug("Getting ordered product with limit");
		try {
			return productDao.getOrderedProducts(orderBy, orderType,limit);
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting ordered products");
			return null;
		}
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
		try {
			productDao.saveProductComment(product,comment);
		} catch (Exception e) {
			logger.error("An error has occured while trying to adding new comment on an existing product");
		}
		
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