package com.ecommerce.order;

import java.util.Date;

import com.ecommerce.product.Product;

public class Order {
	
	private String id;
	
	private Date orderDate;
	
	private String userId;
	
	private Product product;
	
	private String status;
	
	private Date updateDate;
	
	private String orderAddress;
	
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
	
	public String getUserId(){
		return this.userId;
	}
	public void setUserId(String userId){
		this.userId = userId;
	}
	
	public Product getProduct(){
		return this.product;
	}
	public void setProduct(Product product){
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
	
	public String getOrderAddress(){
		return this.orderAddress;
	}
	public void setOrderAddress(String orderAddress){
		this.orderAddress = orderAddress;
	}
	
}
