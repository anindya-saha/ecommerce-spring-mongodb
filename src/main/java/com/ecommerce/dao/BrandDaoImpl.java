package com.ecommerce.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;

import com.ecommerce.model.Brand;

@Repository
public class BrandDaoImpl implements BrandDao{

	@Autowired
	private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "brand";
	
	//Get All Brands
	@Override
	public List<Brand> getAllBrand(){
		return mongoTemplate.findAll(Brand.class, COLLECTION_NAME);
	}
	
	//Get Single Brand
	@Override
	public Brand getSingleBrand(String id){
		return mongoTemplate.findById(id, Brand.class, COLLECTION_NAME);
	}
	
	@Override
	public void saveBrand(Brand name){
		if (!mongoTemplate.collectionExists(COLLECTION_NAME)) {
			mongoTemplate.createCollection(COLLECTION_NAME);
		}
		
		mongoTemplate.insert(name, COLLECTION_NAME);
	}
	
}
