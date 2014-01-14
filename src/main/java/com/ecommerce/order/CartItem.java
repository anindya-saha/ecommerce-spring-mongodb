package com.ecommerce.order;

import com.ecommerce.product.Product;


public class CartItem {
	
	private Product product;
	
	private int count;
	
	public Product getProduct(){
		return this.product;
	}
	public void setProduct(Product product){
		this.product = product;
	}
	
	public int getCount(){
		return this.count;
	}
	public void setCount(int count){
		this.count = count;
	}
}
