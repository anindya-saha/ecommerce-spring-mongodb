package com.ecommerce.order;

import com.ecommerce.product.Product;
import com.ecommerce.user.User;

public abstract interface OrderService {

	public boolean hasRightOrder(User user);
	
	public int orderCountByType(String status);
	
	public void saveNewOrder(String userId, Product product, String status);
	
}