package com.ecommerce.model;

public class ProductSpecification {
	
	private String specificationTitle;
	
	private String specificationDetail;
	
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
