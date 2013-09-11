package com.ecommerce.model;

public class User {

	private int id;

	private String userName;

	private String password;

	private String email;

	private String role;
	
	private UserAddress address;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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
}