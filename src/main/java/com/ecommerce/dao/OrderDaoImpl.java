package com.ecommerce.dao;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.ecommerce.model.Order;

@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private MongoTemplate mongoTemplate;
	
	protected static Logger logger = Logger.getLogger("dao");
	
	public static final String ORDER_COLLECTION = "order";
	
	@Override
	public void createNewOrder(String userId, String productId, String status) {
		if (!mongoTemplate.collectionExists(ORDER_COLLECTION)){
			mongoTemplate.createCollection(ORDER_COLLECTION);
		}
		
		Date now = new Date();
		
		Order order = new Order();
		order.setUserId(userId);
		order.setProductId(productId);
		order.setStatus(status);
		order.setOrderDate(now);
		
		mongoTemplate.insert(order,ORDER_COLLECTION);
	}

	@Override
	public void updateOrderStatus(String status) {
		// TODO Auto-generated method stub
		
	}

}
