package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;

public abstract interface ProductDao{
	
  public abstract List<Product> getAllProducts();
  
  public abstract List<Product> getOrderedProducts(String orderBy,String orderType,int limit);
  
  public abstract Product getSingleProduct(String id);
  
  public abstract void saveNewProduct(Product product);
  
  public abstract void updateExistingProduct(Product product);
  
  public abstract void deleteExistingProduct(Product product);
  
  public abstract void saveProductComment(Product product,List<ProductComment> comment);
  
}
