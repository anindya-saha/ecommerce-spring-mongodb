package com.ecommerce.model;

public class ProductImage {
	
	private String id;
	
	private String imagePath;
	
	private String type;
	
	public String getId(){
		return this.id;
	}
	public void setId(String id){
		this.id = id;
	}
	
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