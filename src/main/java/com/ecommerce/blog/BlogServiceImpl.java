package com.ecommerce.blog;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogDao blogDao;
	
	protected static Logger logger = Logger.getLogger(BlogService.class);

	@Override
	public List<Blog> listAllBlogs(){
		try {
			return blogDao.getAllBlogs();	
		} catch (Exception e) {
			return null;
		}
	}
	
	@Override
	public void newBlogPost(Blog blog) {
		logger.debug("Saving new blog post");
		try {
			blogDao.saveNewBlogPost(blog);
		} catch (Exception e) {
			logger.error("An error has occured while trying to save new blog post");
		}
	}

}
