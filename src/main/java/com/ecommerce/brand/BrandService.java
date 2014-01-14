package com.ecommerce.brand;

import java.util.List;


public abstract interface BrandService {
	
	public abstract List<Brand> getBrands();
	
	public abstract Brand getBrand(String id);
	
	public abstract void saveNewBrand(Brand name);

}
