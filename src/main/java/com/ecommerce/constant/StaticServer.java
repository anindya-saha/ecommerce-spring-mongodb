package com.ecommerce.constant;

public enum StaticServer {
	
	PROTOCOL("http://"), DOMAIN("localhost");
	
	private final String a;
	
	private StaticServer(String a){
		this.a = a;
	}
	
	public String getConfiguration(){
		return this.a;
	}

}
