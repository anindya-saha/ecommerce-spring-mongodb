package com.ecommerce.category;

public class Category {
	
	private String id;

	private String name;

	private String[] ancestors;

	private String parent;

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public String getName(){
		return this.name;
	}
	public void setName(String name){
		this.name = name;
	}
	
	public String[] getAncestors(){
		return this.ancestors;
	}
	public void setAncestors(String[] ancestors){
		this.ancestors = ancestors;
	}

	public String getParent() {
		return this.parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}
}
