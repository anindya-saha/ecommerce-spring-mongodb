package com.ecommerce.model;

import java.util.Date;

public class Product {

	private String id;

	private String name;

	private double price;

	private double invalidPrice;

	private Category category;
	
	private Brand brand;
	
	private String shipmentType;

	private int stock;

	private int rating;

	private Date addedDate;

	private String description;
	
	private String shortDescription;
	
	private ProductSpecification[] specification;

	private ProductComment[] comment;
	
	private int orderCount;

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

	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getInvalidPrice() {
		return this.invalidPrice;
	}

	public void setInvalidPrice(double invalidPrice) {
		this.invalidPrice = invalidPrice;
	}

	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Brand getBrand(){
		return this.brand;
	}
	public void setBrand(Brand brand){
		this.brand = brand;
	}

	public String getShipmentType() {
		return this.shipmentType;
	}

	public void setShipmentType(String shipmentType) {
		this.shipmentType = shipmentType;
	}

	public int getStock() {
		return this.stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getRating() {
		return this.rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public Date getAddedDate() {
		return this.addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
	public String getShortDescription() {
		return this.shortDescription;
	}
	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getDescription() {
		return this.description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public ProductSpecification[] getSpecification(){
		return this.specification;
	}
	public void setSpecification(ProductSpecification[] specification){
		this.specification = specification;
	}

	public ProductComment[] getComment() {
		return this.comment;
	}

	public void setComment(ProductComment[] comment) {
		this.comment = comment;
	}
	
	public int getOrderCount(){
		return this.orderCount;
	}
	public void setOrderCount(int orderCount){
		this.orderCount = orderCount;
	}

}