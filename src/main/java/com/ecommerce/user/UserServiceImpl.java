package com.ecommerce.user;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
		logger.debug("Getting user by id");
		try {
			return userDao.getUserById(id);
		} catch (Exception e) {
			logger.error("An error has occured while trying to getting user by id");
			return null;
		}
	}
	
	@Override
	public User getUserByEmail(String email) {
		return userDao.getUserByEmail(email);
	}
	
	@Override
	public boolean loginUser(String email, String password) throws Exception{
		boolean a;
		User user = new User();
		
		user = getUserByEmail(email);
		if(user == null){
			throw new Exception("Invalid email");
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

	@Override
	public void saveNewAddress(String userId, UserAddress userAddress) {
		logger.debug("adding new address");
		userDao.addNewAddress(userId, userAddress);
	}

}
