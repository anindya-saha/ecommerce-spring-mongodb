package com.ecommerce.product;

import java.util.List;


public abstract interface ProductService{

  public abstract List<Product> listProducts();
  
  public abstract List<Product> shipmentTypedProduct(String type);
  
  public abstract List<Product> listRelatedProducts(Product product, int limit);
  
  public abstract List<Product> listSameBrandProducts(Product product, int limit);
  
  public abstract List<Product> listOrderedProducts(String orderBy,String orderType,int limit);
  
  public abstract Product singleProduct(String id);
  
  public abstract List<Product> listCategorizedProducts(String categoryName);
  
  public abstract void addProduct(Product product);
  
  public abstract void removeProduct(Product product);
  
  public abstract void updateProduct(Product product);
  
  public abstract void addProductComment(Product product,ProductComment comment);
  
  public abstract void addProductSpecification(Product product,ProductSpecification productSpecification);
  
  public abstract void addProductImage(String productId,ProductImage image);
  
}