package com.ecommerce.constant;

public enum OrderStatus {

	PENDING("PENDING"), WAITING_STOCK("WAITING_STOCK"), PREPARING("PREPARING"), SHIPPING("SHIPPING"), SHIPPED("SHIPPED"), COMPLETED("COMPLETED"), CANCELLED("CANCELLED"), RETURNED("RETURNED");
	
	private final String status;
	
	private OrderStatus(String status){
		this.status = status;
	}
	
	public String getOrderStatus(){
		return this.status;
	}
	
}