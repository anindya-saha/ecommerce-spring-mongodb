package com.ecommerce.blog;

import java.util.List;


public abstract interface BlogDao {

	public abstract List<Blog> getAllBlogs();
	
	public abstract void saveNewBlogPost(Blog blog);
	
}
