package com.ecommerce.order;

import com.ecommerce.product.Product;

public abstract interface OrderDao {

	public int getOrderCountByStatus(String status);
	
	public abstract void createNewOrder(String userId, Product product, String status);
	
	public abstract void updateOrderStatus(String status);
	
}
