package com.ecommerce.category;

import java.util.List;


public abstract interface CategoryDao {
	
	public abstract List<Category> getAllCategory();
	
	public abstract Category getSingleCategory(String id);
	
	public abstract Category getSingleCategoryByName(String name);
	
	public abstract List<Category> getMainCategories();
	
	public abstract List<Category> getChildCategories();
	
	public abstract List<Category> getSameChilds(String parent);
	
	public abstract void saveCategory(Category category);

}
