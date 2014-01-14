package com.ecommerce.user;

import com.ecommerce.order.Order;

public class User {

	private String id;

	private String name;
	
	private String surname;

	private String password;

	private String email;
	
	private UserAddress[] address;
	
	private String ipAddress;
	
	private Order[] order;

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSurname() {
		return this.surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public UserAddress[] getAddress(){
		return this.address;
	}
	public void setAddress(UserAddress[] address){
		this.address = address;
	}
	
	public String getIpAdress(){
		return this.ipAddress;
	}
	public void setIpAddress(String ipAddress){
		this.ipAddress = ipAddress; 
	}
	
	public Order[] getOrders(){
		return this.order;
	}
	public void setOrders(Order[] order){
		this.order = order;
	}
}