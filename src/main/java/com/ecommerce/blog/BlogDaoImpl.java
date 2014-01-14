package com.ecommerce.blog;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class BlogDaoImpl implements BlogDao{
	
	@Autowired
	private MongoTemplate mongoTemplate;
	
	public static final String BLOG_COLLECTION = "blog";

	@Override
	public List<Blog> getAllBlogs(){
		return mongoTemplate.findAll(Blog.class, BLOG_COLLECTION);
	}
	
	@Override
	public void saveNewBlogPost(Blog blog) {
		if(!mongoTemplate.collectionExists(BLOG_COLLECTION)){
			mongoTemplate.createCollection(BLOG_COLLECTION);
		}
		Date date = new Date();
		blog.setPostDate(date);
		
		mongoTemplate.insert(blog,BLOG_COLLECTION);
	}

	
	
}
