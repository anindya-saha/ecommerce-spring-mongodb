package com.ecommerce.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.bson.types.ObjectId;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.model.User;
import com.ecommerce.model.UserAddress;
import com.ecommerce.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	protected static Logger logger = Logger.getLogger(UserController.class);
	
	@Inject
	private UserService userService;
	
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public ModelAndView userSettings(HttpSession session){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user-account");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/add-new-address", method = RequestMethod.POST)
	public String addNewAddress(
			HttpSession session,
			@RequestParam(value = "addressTitle", required = true) String addressTitle,
			@RequestParam(value = "country", required = true) String country,
			@RequestParam(value = "province", required = true) String province,
			@RequestParam(value = "district", required = true) String district,
			@RequestParam(value = "quarter", required = true) String quarter,
			@RequestParam(value = "avenue", required = true) String avenue,
			@RequestParam(value = "houseNumber", required = true) String houseNumber,
			@RequestParam(value = "zipCode", required = true) String zipCode,
			@RequestParam(value = "otherDetails", required = false) String otherDetails){

		UserAddress address = new UserAddress();
		address.setTitle(addressTitle);
		address.setCountry(country);
		address.setProvince(province);
		address.setDistrict(district);
		address.setQuarter(quarter);
		address.setAvenue(avenue);
		address.setHouseNumber(houseNumber);
		address.setZipCode(zipCode);
		address.setOtherDetails(otherDetails);
		
		User user = (User) session.getAttribute("user");
		
		userService.saveNewAddress(user.getId(), address);
		
		return "New address added";
	}
}
