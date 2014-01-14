package com.ecommerce.brand;

import java.util.List;


public abstract interface BrandDao {

	public abstract List<Brand> getAllBrand();
	
	public abstract Brand getSingleBrand(String id);
	
	public abstract void saveBrand(Brand name);
	
}
