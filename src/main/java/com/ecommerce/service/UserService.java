package com.ecommerce.service;

import java.util.List;

import com.ecommerce.model.User;

public abstract interface UserService{
  
	public abstract List<User> listUsers();
	
	public abstract User getUserById(String id);
	
	public abstract User getUserByEmail(String email);
	
	public abstract boolean loginUser(String email, String Password) throws Exception;
	
	public abstract void saveNewUser(User user);
	
}