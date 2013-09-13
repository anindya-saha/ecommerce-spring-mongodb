package com.ecommerce.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.BrandDao;
import com.ecommerce.model.Brand;

@Service
public class BrandServiceImpl implements BrandService{
	
	@Autowired
	private BrandDao brandDao;
	
	protected static Logger logger = Logger.getLogger("service");
	
	//Get all brands
	@Override
	public List<Brand> getBrands(){
		return brandDao.getAllBrand();
	}
	
	@Override
	public Brand getBrand(String id){
		return brandDao.getSingleBrand(id);
	}
	
	@Override
	public void saveNewBrand(Brand name){
		logger.debug("Adding new Category");
		try {
			brandDao.saveBrand(name);
		} catch (Exception e) {
			logger.error("An error has occured while trying to add new brand");
		}
	}

}
