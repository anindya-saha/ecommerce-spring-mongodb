package com.ecommerce.constant;

public enum OrderStatus {

	WAITING_STOCK(0), PREPARING(1), SHIPPING(2), SHIPPED(3), COMPLETED(4);
	
	private final int status;
	
	private OrderStatus(int status){
		this.status = status;
	}
	
	public int getOrderStatus(){
		return this.status;
	} 
	
}