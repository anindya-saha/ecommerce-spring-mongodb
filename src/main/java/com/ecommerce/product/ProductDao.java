package com.ecommerce.product;

import java.util.List;


public abstract interface ProductDao {
	
  public abstract List<Product> getAllProducts();
  
  public abstract List<Product> getShipmentTypedProducts(String type);
  
  public abstract List<Product> getRelatedProducts(Product product,int limit);
  
  public abstract List<Product> getSameBrandProducts(Product product, int limit);
  
  public abstract List<Product> getOrderedProducts(String orderBy,String orderType,int limit);
  
  public abstract ProductComment getSingleComment(String id);
  
  public abstract Product getSingleProduct(String id);
  
  public abstract void saveNewProduct(Product product);
  
  public abstract void updateExistingProduct(Product product);
  
  public abstract void deleteExistingProduct(Product product);
  
  public abstract void saveProductComment(Product product,ProductComment comment);
  
  public abstract void saveProductSpecification(Product product, ProductSpecification productSpecification);
  
  public abstract void saveProductImage(String id, ProductImage productImage);
  
}
