package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Blog;

public abstract interface BlogDao {

	public abstract List<Blog> getAllBlogs();
	
	public abstract void saveNewBlogPost(Blog blog);
	
}
