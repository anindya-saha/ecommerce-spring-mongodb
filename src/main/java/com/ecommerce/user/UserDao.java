package com.ecommerce.user;

import java.util.List;


public abstract interface UserDao {

	public abstract List<User> getAllUser();
	
	public abstract User getUserById(String id);
	
	public abstract User getUserByEmail(String email);
	
	public abstract void saveUser(User user);
	
	public abstract void addNewAddress(String userId,UserAddress userAddress);
	
}
