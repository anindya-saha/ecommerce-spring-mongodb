package com.ecommerce.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.UserDao;
import com.ecommerce.model.User;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	protected static Logger logger = Logger.getLogger("service");

	@Override
	public List<User> listUsers() {
		return userDao.getAllUser();
	}

	@Override
	public User getUserById(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public User getUserByName(String name) {
		return userDao.getUserByName(name);
	}
	
	@Override
	public boolean loginUser(String name, String password) throws Exception{
		boolean a;
		User user = new User();
		
		user = getUserByName(name);
		if(user == null){
			throw new Exception("Invalid username");
		}
		else{
			if(user.getPassword().equals(password)){
				a = true;
			}
			else{
				throw new Exception("Password Incorrect");
			}
		}
		return a;
	}

	@Override
	public void saveNewUser(User user) {
		logger.debug("Adding new User");
		try {
			userDao.saveUser(user);
		} catch (Exception e) {
			logger.error("An error has occured while trying to add new product");
		}
	}

}
