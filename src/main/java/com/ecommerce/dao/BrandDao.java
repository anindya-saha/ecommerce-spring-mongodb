package com.ecommerce.dao;

import java.util.List;
import com.ecommerce.model.Brand;

public abstract interface BrandDao {

	public abstract List<Brand> getAllBrand();
	
	public abstract Brand getSingleBrand(String id);
	
	public abstract void saveBrand(Brand name);
	
}
