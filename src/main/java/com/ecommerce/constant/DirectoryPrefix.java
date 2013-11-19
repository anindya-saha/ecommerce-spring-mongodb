package com.ecommerce.constant;

public enum DirectoryPrefix {

	PRODUCT_DIRECTORY("productDirectory"), BRAND_DIRECTORY("brandDirectory");
  
	private final String prefix;
  
	private DirectoryPrefix(String prefix) {
		this.prefix = prefix;
	}
 
	public String getDirectoryPrefix() {
		return this.prefix;
	}
	
}
