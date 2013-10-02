package com.ecommerce.model;

import java.util.Date;

public class UserOrder {
	
	private String id;
	
	private Date orderDate;
	
	private Product product;
	
	private int status;
	
	public String getId(){
		return this.id;
	}
	public void setId(String id){
		this.id = id;
	}
	
	public Date getOrderDate(){
		return this.orderDate;
	}
	public void setOrderDate(Date orderDate){
		this.orderDate = orderDate;
	}
	
	public Product getOrderedProduct(){
		return this.product;
	}
	public void setOrderedProduct(Product product){
		this.product = product;
	}
	
	public int getStatus(){
		return this.status;
	}
	public void setStatus(int status){
		this.status = status;
	}
	
}
