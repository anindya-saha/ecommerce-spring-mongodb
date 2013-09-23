package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.model.ProductSpecification;

public abstract interface ProductService{

  public abstract List<Product> listProducts();
  
  public abstract List<Product> listOrderedProducts(String orderBy,String orderType,int limit);
  
  public abstract Product singleProduct(String id);
  
  public abstract void addProduct(Product product);
  
  public abstract void removeProduct(Product product);
  
  public abstract void updateProduct(Product product);
  
  public abstract void addProductComment(Product product,ProductComment comment);
  
  public abstract void addProductSpecification(Product product,ProductSpecification productSpecification);
}