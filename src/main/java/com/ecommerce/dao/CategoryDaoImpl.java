package com.ecommerce.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import com.ecommerce.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "category";
	
	//Get All Categories
	@Override
	public List<Category> getAllCategory() {
		
		return mongoTemplate.findAll(Category.class, COLLECTION_NAME);
		
	}
	
	//Get Single Category with its id
	@Override
	public Category getSingleCategory(String id) {
		
		return mongoTemplate.findById(id, Category.class, COLLECTION_NAME);
	}
	
	//Get Single Category with its name
	@Override
	public Category getSingleCategoryByName(String name){
		Query query = new Query();
		query.addCriteria(Criteria.where("name").is(name));
		return mongoTemplate.findOne(query, Category.class);
	}
	
	//Find Single category's parent tree
	public List<String> getAllParents(String parentName){
		
		Query query = new Query();
		query.addCriteria(Criteria.where("name").is(parentName));
		ArrayList<String> catParents = new ArrayList<String>();
		
		Category category = mongoTemplate.findOne(query, Category.class);
		// TODO: category parent tree for breadcrumb
		for(String par : category.getAncestors()){
			if(category.getParent().equals(par)){
				catParents.add(category.getParent());
				category.setName(par);
			}
		}
		
		return catParents;
		
	}
	
	//Save Category
	@Override
	public void saveCategory(Category category) {
		
		if (!mongoTemplate.collectionExists(COLLECTION_NAME)) {
			mongoTemplate.createCollection(COLLECTION_NAME);
		}

		mongoTemplate.insert(category, COLLECTION_NAME);
		
	}
	
}
