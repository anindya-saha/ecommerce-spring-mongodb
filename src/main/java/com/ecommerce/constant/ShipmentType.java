package com.ecommerce.constant;

public enum ShipmentType {
	
	FREE_SHIPMENT("FREE_SHIPMENT") , BUYER_PAYS("BUYER_PAYS");
	
	private final String type;
	
	private ShipmentType(String type){
		this.type = type;
	}
	
	public String getShipmentType(){
		return this.type;
	} 

}
