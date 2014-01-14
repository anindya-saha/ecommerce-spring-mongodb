package com.ecommerce.order;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.constant.OrderStatus;
import com.ecommerce.product.Product;
import com.ecommerce.user.User;

@Service
public class OrderServiceImpl implements OrderService{

	protected static Logger logger = Logger.getLogger("service");
	
	@Autowired
	private OrderDao orderDao;
	
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

	@Override
	public int orderCountByType(String status){
		logger.debug("Getting order counts by "+status+" type");
		try {
			return 	orderDao.getOrderCountByStatus(status);
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting order counts");
			return -1;
		}
	}
	
	@Override
	public void saveNewOrder(String userId, Product product, String status) {
		logger.debug("Saving new Order");
		try {
			orderDao.createNewOrder(userId, product, status);
		} catch (Exception e) {
			logger.error("An error has occured while trying to save new order");
		}
	}
	
}
