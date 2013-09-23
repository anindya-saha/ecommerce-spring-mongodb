package com.ecommerce.dao;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.model.ProductSpecification;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	public static final String COLLECTION_NAME = "product";

	public List<Product> getAllProducts() {
		return mongoTemplate.findAll(Product.class, COLLECTION_NAME);
	}
	
	public List<Product> getOrderedProducts(String orderBy,String orderType,int limit){
		Query query = new Query();
		if(orderType.equals("DESC")){
			query.with(new Sort(Sort.Direction.DESC, orderBy)).limit(limit);
		}else if(orderType.equals("ASC")){
			query.with(new Sort(Sort.Direction.ASC, orderBy)).limit(limit);
		}

		return mongoTemplate.find(query, Product.class, COLLECTION_NAME);
	}

	public Product getSingleProduct(String id) {
		return mongoTemplate.findById(id, Product.class, COLLECTION_NAME);
	}

	public void saveNewProduct(Product product){
		if (!mongoTemplate.collectionExists(COLLECTION_NAME)) {
			mongoTemplate.createCollection(COLLECTION_NAME);
		}
		Date now = new Date();
		product.setAddedDate(now);

		mongoTemplate.insert(product, COLLECTION_NAME);
	}
	
	public void updateExistingProduct(Product product){
		if(product != null){
			mongoTemplate.save(product);
		}
	}
	
	public void deleteExistingProduct(Product product){
		mongoTemplate.remove(product, COLLECTION_NAME);
	}
	
	public void saveProductComment(Product product,ProductComment comment){

		Update update = new Update();
		update.push("comment",comment);
		
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").is(product.getId()));
		
		mongoTemplate.updateFirst(query,update,COLLECTION_NAME);
		//mongoTemplate.findAndModify(query, update, Product.class, COLLECTION_NAME);  Alternative findAndModify Method
		
	}
	
	public void saveProductSpecification(Product product, ProductSpecification productSpecification){
		
		Update update = new Update();
		update.push("specification",productSpecification);
		
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").is(product.getId()));
		
		mongoTemplate.updateFirst(query,update,COLLECTION_NAME);
		
	}
	
}
