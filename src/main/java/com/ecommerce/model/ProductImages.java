package com.ecommerce.model;

public class ProductImages {
	
	private String id;
	
	private String[] images;
	
	public String getId(){
		return this.id;
	}
	
	public void setId(String id){
		this.id = id;
	}
	
	public String[] getImages(){
		return this.images;
	}
	
	public void setImages(String[] images){
		this.images = images;
	}
	
}
