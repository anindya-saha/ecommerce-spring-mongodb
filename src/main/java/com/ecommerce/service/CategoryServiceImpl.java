package com.ecommerce.service;

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

	@Override
	public List<Category> getCategories() {
		return categoryDao.getAllCategory();
	}
	
	@Override
	public Category getCategory(String id) {
		return categoryDao.getSingleCategory(id);
	}

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
