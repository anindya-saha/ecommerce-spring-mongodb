package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.Brand;

public abstract interface BrandService {
	
	public abstract List<Brand> getBrands();
	
	public abstract Brand getBrand(String id);
	
	public abstract void saveNewBrand(Brand name);

}
