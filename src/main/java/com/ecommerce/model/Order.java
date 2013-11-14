package com.ecommerce.model;

import java.util.Date;

public class Order {
	
	private String id;
	
	private Date orderDate;
	
	private Product product;
	
	private String status;
	
	private Date updateDate;
	
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
	
	public String getStatus(){
		return this.status;
	}
	public void setStatus(String status){
		this.status = status;
	}
	
	public Date getUpdateDate(){
		return this.updateDate;
	}
	public void setUpdateDate(Date updateDate){
		this.updateDate = updateDate;
	}
	
}
