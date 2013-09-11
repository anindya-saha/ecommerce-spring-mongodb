package com.ecommerce.model;

public class ProductSpecification {
	
	private String id;
	
	private String specificationTitle;
	
	private String specificationDetail;
	
	public String getId(){
		return this.id;
	}
	public void setId(String id){
		this.id = id;
	}
	
	public String getSpecificationTitle(){
		return this.specificationTitle;
	}
	public void setProductSpecificationTitle(String specificationTitle){
		this.specificationTitle = specificationTitle;
	}
	
	public String getSpecificationDetail(){
		return this.specificationDetail;
	}
	public void setProductSpecificationDetail(String specificationDetail){
		this.specificationDetail = specificationDetail;
	}
	
}
