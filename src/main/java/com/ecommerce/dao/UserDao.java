package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.User;

public abstract interface UserDao {

	public abstract List<User> getAllUser();
	
	public abstract User getUserById(String id);
	
	public abstract User getUserByName(String name);
	
//	public abstract User getUserByNameAndPassword(String name, String password);
	
	public abstract void saveUser(User user);
	
}
