package com.ecommerce.constant;

public enum OrderStatus {

	PENDING(0), WAITING_STOCK(1), PREPARING(2), SHIPPING(3), SHIPPED(4), COMPLETED(5), CANCELLED(6), RETURNED(7);
	
	private final int status;
	
	private OrderStatus(int status){
		this.status = status;
	}
	
	public int getOrderStatus(){
		return this.status;
	}
	
}