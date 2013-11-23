package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Blog;

public abstract interface BlogService {
	
	public List<Blog> listAllBlogs();

	public void newBlogPost(Blog blog);
	
}
