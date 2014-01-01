package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.User;
import com.ecommerce.model.UserAddress;

public abstract interface UserDao {

	public abstract List<User> getAllUser();
	
	public abstract User getUserById(String id);
	
	public abstract User getUserByEmail(String email);
	
	public abstract void saveUser(User user);
	
	public abstract void addNewAddress(String userId,UserAddress userAddress);
	
}
