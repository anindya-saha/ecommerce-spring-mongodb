package com.ecommerce.blog;

import java.util.List;


public abstract interface BlogService {
	
	public List<Blog> listAllBlogs();

	public void newBlogPost(Blog blog);
	
}
