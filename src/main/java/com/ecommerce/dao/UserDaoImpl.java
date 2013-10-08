package com.ecommerce.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.ecommerce.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "user";

	@Override
	public List<User> getAllUser() {
		return mongoTemplate.findAll(User.class, COLLECTION_NAME);
	}

	@Override
	public User getUserById(String id) {
		return mongoTemplate.findById(id, User.class, COLLECTION_NAME);
	}
	
	@Override
	public User getUserByEmail(String email) {
		Query query = new Query();
		query.addCriteria(Criteria.where("email").is(email));
		return mongoTemplate.findOne(query, User.class);
	}

	@Override
	public void saveUser(User user) {
		if (!mongoTemplate.collectionExists(COLLECTION_NAME)) {
			mongoTemplate.createCollection(COLLECTION_NAME);
		}
		
		mongoTemplate.insert(user, COLLECTION_NAME);
	}
	
}
