package com.ecommerce.service;

import java.util.HashMap;
import java.util.List;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.CategoryDao;
import com.ecommerce.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
	
	@Autowired
	private CategoryDao categoryDao;
	
	protected static Logger logger = Logger.getLogger("service");

	//Get all categories
	@Override
	public List<Category> getCategories() {
		return categoryDao.getAllCategory();
	}
	
	//Get single category with its id
	@Override
	public Category getCategory(String id) {
		return categoryDao.getSingleCategory(id);
	}
	
	//Get single category by name
	@Override
	public Category getCategoryByName(String name){
		return categoryDao.getSingleCategoryByName(name);
	}
	
	@Override
	public HashMap<String,String> getCategoryTree(String name){
		HashMap<String,String> map = new HashMap<>();
		Category cat = categoryDao.getSingleCategoryByName(name);
		
		map.put(cat.getId(), name);
		for(String anc : cat.getAncestors()){
			Category catParent = categoryDao.getSingleCategoryByName(anc);
			map.put(catParent.getId(), catParent.getName());
		}
		
		
		return map;
	}

	//Save category
	@Override
	public void saveNewCategory(Category category) {
		
		logger.debug("Adding new Category");
		try {
			categoryDao.saveCategory(category);
		} catch (Exception e) {
			logger.error("An error has occured while trying to add new category");
		}
		
	}
	
}
