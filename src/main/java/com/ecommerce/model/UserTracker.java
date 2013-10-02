package com.ecommerce.model;

public class UserTracker {
	
	private String categoryId;
	
	private String productId;
	
	private int showCount;
	
	public String getCategoryId(){
		return this.categoryId;
	}
	public void setCategoryId(String categoryId){
		this.categoryId = categoryId;
	}
	
	public String getProductId(){
		return this.productId;
	}
	public void setProductId(String productId){
		this.productId = productId;
	}
	
	public int getShowCount(){
		return this.showCount;
	}
	public void setShowCount(){
		this.showCount++;
	}
	
}
