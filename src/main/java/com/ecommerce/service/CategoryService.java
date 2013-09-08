package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Category;

public abstract interface CategoryService {

	public abstract List<Category> getCategories();
	
	public abstract Category getCategory(String id);
	
	public abstract void saveNewCategory(Category category);
	
}
