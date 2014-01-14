package com.ecommerce.order;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.ecommerce.product.Product;

@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private MongoTemplate mongoTemplate;
	
	protected static Logger logger = Logger.getLogger("dao");
	
	public static final String ORDER_COLLECTION = "order";
	
	@Override
	public int getOrderCountByStatus(String status){
		Query query = new Query();
		query.addCriteria(Criteria.where("status").is(status));
		
		return (int) mongoTemplate.count(query, ORDER_COLLECTION);
	}
	
	@Override
	public void createNewOrder(String userId, Product product, String status) {
		if (!mongoTemplate.collectionExists(ORDER_COLLECTION)){
			mongoTemplate.createCollection(ORDER_COLLECTION);
		}
		
		Date now = new Date();
		
		Order order = new Order();
		order.setUserId(userId);
		order.setProduct(product);
		order.setStatus(status);
		order.setOrderDate(now);
		
		mongoTemplate.insert(order,ORDER_COLLECTION);
	}

	@Override
	public void updateOrderStatus(String status) {
		// TODO Auto-generated method stub
		
	}

}
