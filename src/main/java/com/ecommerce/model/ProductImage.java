package com.ecommerce.model;

public class ProductImage {
	
	private String imagePath;
	
	private String type;
	
	public String getImagePath(){
		return this.imagePath;
	}
	public void setImagePath(String imagePath){
		this.imagePath = imagePath;
	}
	
	public String getType(){
		return this.type;
	}
	public void setType(String type){
		this.type = type;
	}
	
}