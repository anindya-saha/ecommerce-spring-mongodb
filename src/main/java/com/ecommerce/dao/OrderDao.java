package com.ecommerce.dao;

public abstract interface OrderDao {

	public int getOrderCountByStatus(String status);
	
	public abstract void createNewOrder(String userId, String productId, String status);
	
	public abstract void updateOrderStatus(String status);
	
}
