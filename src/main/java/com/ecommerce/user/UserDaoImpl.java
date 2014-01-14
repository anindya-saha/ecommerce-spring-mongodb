package com.ecommerce.user;

import java.util.List;

import org.apache.log4j.Logger;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;


@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	protected static Logger logger = Logger.getLogger("dao");
	
	public static final String USER_COLLECTION = "user";

	@Override
	public List<User> getAllUser() {
		return mongoTemplate.findAll(User.class, USER_COLLECTION);
	}

	@Override
	public User getUserById(String id) {
		return mongoTemplate.findById(id, User.class, USER_COLLECTION);
	}
	
	@Override
	public User getUserByEmail(String email) {
		Query query = new Query();
		query.addCriteria(Criteria.where("email").is(email));
		return mongoTemplate.findOne(query, User.class);
	}

	@Override
	public void saveUser(User user) {
		if (!mongoTemplate.collectionExists(USER_COLLECTION)) {
			mongoTemplate.createCollection(USER_COLLECTION);
		}
		
		mongoTemplate.insert(user, USER_COLLECTION);
	}

	@Override
	public void addNewAddress(String userId, UserAddress address) {
		address.setId(new ObjectId().toString());
		Update update = new Update();
		update.push("address", address);
		
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").is(userId));
		try {
			mongoTemplate.updateFirst(query, update, USER_COLLECTION);
			logger.debug("user address add success - DAO");
		} catch (Exception e) {
			logger.error("user address add error - DAO");
		}
	}
	
}
