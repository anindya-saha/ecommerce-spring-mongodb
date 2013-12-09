package com.ecommerce.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.model.User;
import com.ecommerce.security.PasswordEncryption;
import com.ecommerce.service.UserService;

@Controller
@RequestMapping(value="/register")
public class RegisterController {
	
	@Inject
	public UserService userService;

	@ResponseBody
	@RequestMapping(method = RequestMethod.POST, produces = "application/json")
	public Map<String,Object> registerUser(
			@RequestParam(value = "userName", required = true) String userName,
			@RequestParam(value = "userSurname", required = true) String userSurname,
			@RequestParam(value = "userEmail", required = true) String userEmail,
			@RequestParam(value = "userPassword", required = true) String userPassword) throws Exception{
		
		User user = new User();
		user.setName(userName);
		user.setSurname(userSurname);
		user.setEmail(userEmail);
		String encryptedPass = PasswordEncryption.encrypt(userPassword);
		user.setPassword(encryptedPass);
		
		userService.saveNewUser(user);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("userEmail", userEmail);
		return map;
	}
	
	
}
