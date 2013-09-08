package com.ecommerce.model;

import java.util.Date;

public class ProductComment {

	private String id;

	private String userId;

	private String userName;

	private String comment;

	private int commentRating;

	private Date commentDate;

	private int commentStatus;
	
	public String getCommentId(){
		return this.id;
	}
	public void setCommentId(String id){
		this.id = id;
	}

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getCommentUsername() {
		return this.userName;
	}

	public void setCommentUsername(String userName) {
		this.userName = userName;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getProductCommentRating() {
		return this.commentRating;
	}

	public void setCommentRating(int commentRating) {
		this.commentRating = commentRating;
	}

	public Date getCommentDate() {
		return this.commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	public int getCommentStatus() {
		return this.commentStatus;
	}

	public void setCommentStatus(int commentStatus) {
		this.commentStatus = commentStatus;
	}
}
