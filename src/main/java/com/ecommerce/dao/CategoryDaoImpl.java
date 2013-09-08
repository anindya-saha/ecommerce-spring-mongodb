package com.ecommerce.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.ecommerce.model.Category;
import com.ecommerce.model.Product;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "category";
	
	@Override
	public List<Category> getAllCategory() {
		
		return mongoTemplate.findAll(Category.class, COLLECTION_NAME);
		
	}
	
	@Override
	public Category getSingleCategory(String id) {
		
		return mongoTemplate.findById(id, Category.class, COLLECTION_NAME);
	}
	
	@Override
	public void saveCategory(Category category) {
		
		if (!mongoTemplate.collectionExists(COLLECTION_NAME)) {
			mongoTemplate.createCollection(COLLECTION_NAME);
		}

		mongoTemplate.insert(category, COLLECTION_NAME);
		
	}
	
}
