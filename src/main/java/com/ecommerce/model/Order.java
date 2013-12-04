package com.ecommerce.model;

import java.util.Date;

public class Order {
	
	private String id;
	
	private Date orderDate;
	
	private String userId;
	
	private String productId;
	
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
	
	public String getUserId(){
		return this.userId;
	}
	public void setUserId(String userId){
		this.userId = userId;
	}
	
	public String getProductId(){
		return this.productId;
	}
	public void setProductId(String productId){
		this.productId = productId;
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
