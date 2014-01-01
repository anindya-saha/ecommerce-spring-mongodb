package com.ecommerce.dao;

import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.ecommerce.model.Product;
import com.ecommerce.model.ProductComment;
import com.ecommerce.model.ProductImage;
import com.ecommerce.model.ProductSpecification;

@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private MongoTemplate mongoTemplate;
	
	protected static Logger logger = Logger.getLogger("dao");
	
	public static final String PRODUCT_COLLECTION = "product";

	@Override
	public List<Product> getAllProducts() {
		return mongoTemplate.findAll(Product.class, PRODUCT_COLLECTION);
	}
	
	@Override
	public List<Product> getShipmentTypedProducts(String type){
		Query query = new Query();
		query.addCriteria(Criteria.where("shipmentType").is(type));
		return mongoTemplate.find(query, Product.class, PRODUCT_COLLECTION);
	}
	
	@Override
	public List<Product> getRelatedProducts(Product product, int limit){
		Query query = new Query();
		query.addCriteria(
				Criteria.where("category.name").is(product.getCategory().getName())
				.orOperator(Criteria.where("category.parent").is(product.getCategory().getParent()))
				.andOperator(Criteria.where("_id").ne(product.getId())))
				.limit(limit);
		
		return mongoTemplate.find(query, Product.class, PRODUCT_COLLECTION);
	}
	
	@Override
	public List<Product> getSameBrandProducts(Product product, int limit){
		Query query = new Query();
		query.addCriteria(
				Criteria.where("brand.name").is(product.getBrand().getName())
				.andOperator(Criteria.where("_id").ne(product.getId())))
				.limit(limit);
		return mongoTemplate.find(query, Product.class, PRODUCT_COLLECTION);
	}
	
	@Override
	public List<Product> getOrderedProducts(String orderBy,String orderType,int limit){
		Query query = new Query();
		if(orderType.equals("DESC")){
			if(limit == 0){
				query.with(new Sort(Sort.Direction.DESC, orderBy));	
			}
			else{
				query.with(new Sort(Sort.Direction.DESC, orderBy)).limit(limit);
			}
		}else if(orderType.equals("ASC")){
			if(limit == 0){
				query.with(new Sort(Sort.Direction.ASC, orderBy));	
			}
			else{
				query.with(new Sort(Sort.Direction.ASC, orderBy)).limit(limit);
			}
		}

		return mongoTemplate.find(query, Product.class, PRODUCT_COLLECTION);
	}
	
	@Override
	public Product getSingleProduct(String id) {
		return mongoTemplate.findById(id, Product.class, PRODUCT_COLLECTION);
	}
	
	@Override
	public ProductComment getSingleComment(String id){
		return mongoTemplate.findById(id, ProductComment.class, PRODUCT_COLLECTION);
	}

	@Override
	public void saveNewProduct(Product product){
		if (!mongoTemplate.collectionExists(PRODUCT_COLLECTION)) {
			mongoTemplate.createCollection(PRODUCT_COLLECTION);
		}
		Date now = new Date();
		product.setAddedDate(now);

		mongoTemplate.insert(product, PRODUCT_COLLECTION);
	}
	
	@Override
	public void updateExistingProduct(Product product){
		if(product != null){
			mongoTemplate.save(product);
		}
	}
	
	@Override
	public void deleteExistingProduct(Product product){
		mongoTemplate.remove(product, PRODUCT_COLLECTION);
	}
	
	@Override
	public void saveProductComment(Product product,ProductComment comment){

        Product existingProduct = getSingleProduct(product.getId());
        ProductComment[] exProdComment = existingProduct.getComment();
        
        boolean checkUserId = true;
        if(exProdComment != null){
            for(ProductComment pCom : exProdComment){
                if(pCom.getUserId().equals(comment.getUserId())){
                        checkUserId = false;
                        throw new IllegalStateException("Comment have been storing with same user id");
                }
            }
        }
        
        if(checkUserId){
        	
        	comment.setId(new ObjectId().toString());
        	
            Update update = new Update();
            update.push("comment",comment);
            
            Query query = new Query();
            query.addCriteria(Criteria.where("_id").is(product.getId()));
            
            try {
                    mongoTemplate.updateFirst(query,update,PRODUCT_COLLECTION);
                    logger.debug("PRODUCT DAO OK");
            } catch (Exception e) {
                    logger.error("PRODUCT DAO ERROR");
            }
        }
        
        //mongoTemplate.findAndModify(query, update, Product.class, COLLECTION_NAME);  Alternative findAndModify Method
        
	}
	
	@Override
	public void saveProductSpecification(Product product, ProductSpecification productSpecification){
		
		Update update = new Update();
		update.push("specification",productSpecification);
		
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").is(product.getId()));
		
		mongoTemplate.updateFirst(query,update,PRODUCT_COLLECTION);
		
	}
	
	@Override
	public void saveProductImage(String id, ProductImage productImage){
		
		Update update = new Update();
		update.push("image",productImage);
		
		Query query = new Query();
		query.addCriteria(Criteria.where("_id").is(id));
		
		mongoTemplate.updateFirst(query, update, PRODUCT_COLLECTION);
		
	}
	
}
