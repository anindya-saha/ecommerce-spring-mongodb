package com.ecommerce.service;

import com.ecommerce.model.User;

public abstract interface OrderService {

	public boolean hasRightOrder(User user);
	
	public void saveNewOrder(String userId, String productId, String status);
	
}
