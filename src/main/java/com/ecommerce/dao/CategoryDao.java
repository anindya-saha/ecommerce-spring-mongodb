package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.Category;

public abstract interface CategoryDao {
	
	public abstract List<Category> getAllCategory();
	
	public abstract Category getSingleCategory(String id);
	
	public abstract Category getSingleCategoryByName(String name);
	
	public abstract void saveCategory(Category category);

}
