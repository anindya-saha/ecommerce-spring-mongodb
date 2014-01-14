package com.ecommerce.category;

import java.util.HashMap;
import java.util.List;


public abstract interface CategoryService {

	public abstract List<Category> getCategories();
	
	public abstract Category getCategory(String id);
	
	public abstract Category getCategoryByName(String name);
	
	public abstract List<Category> getMainCategories();
	
	public abstract List<Category> getChildCategories();
	
	public abstract List<Category> getSameChildCategories(String parent);
	
	public abstract HashMap<String,String> getCategoryTree(String name);
	
	public abstract void saveNewCategory(Category category);
	
}
