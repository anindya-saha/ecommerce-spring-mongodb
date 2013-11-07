package com.ecommerce.model;

public class User {

	private String id;

	private String name;
	
	private String surname;

	private String password;

	private String email;

	private String role;
	
	private UserAddress address;
	
	private String ipAddress;
	
	private Order[] order;
	
	private UserTracker[] userTracker;

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

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	public UserAddress address(){
		return this.address;
	}
	public void setAddress(UserAddress address){
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
	
	public UserTracker[] getUserTracker(){
		return this.userTracker;
	}
	public void setUserTracker(UserTracker[] userTracker){
		this.userTracker = userTracker;
	}
	
}