package com.ecommerce.constant;

public enum ShipmentType {
	
	FREE_SHIPMENT(0) , BUYER_PAYS(1);
	
	private final int type;
	
	private ShipmentType(int type){
		this.type = type;
	}
	
	public int getShipmentType(){
		return this.type;
	} 

}
