package com.ecommerce.service;

import org.apache.log4j.Logger;

import com.ecommerce.constant.OrderStatus;
import com.ecommerce.model.Order;
import com.ecommerce.model.User;

public class OrderServiceImpl implements OrderService{

	protected static Logger logger = Logger.getLogger("service");
	
	public boolean hasRightOrder(User user){
		int orderCount = 0;
		Order[] orders = user.getOrders();
		
		for(Order o : orders){
			if(o.getStatus() == OrderStatus.WAITING_STOCK.getOrderStatus() ||
			   o.getStatus() == OrderStatus.PREPARING.getOrderStatus() ||
			   o.getStatus() == OrderStatus.SHIPPING.getOrderStatus() ||
			   o.getStatus() == OrderStatus.SHIPPED.getOrderStatus() ||
			   o.getStatus() == OrderStatus.COMPLETED.getOrderStatus()){
				orderCount++;
			}
		}
		if(orderCount>=1){
			return true;
		}
		else{
			return false;
		}
	}
	
}
