package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.User;

public abstract interface UserDao {

	public abstract List<User> getAllUser();
	
	public abstract User getUserById(String id);
	
	public abstract User getUserByEmail(String email);
	
	public abstract void saveUser(User user);
	
}
