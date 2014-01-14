package com.ecommerce.blog;

import java.util.Date;

public class BlogComment {

	private String id;
	
	private String userId;
	
	private String userName;
	
	private String comment;
	
	private String status;
	
	private String parentCommentId;
	
	private Date date;
	
	public String getId(){
		return this.id;
	}
	public void setId(String id){
		this.id = id;
	}
	
	public String getUserId(){
		return userId;
	}
	public void setUserId(String userId){
		this.userId = userId;
	}
	
	public String getUserName(){
		return userName;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	
	public String getComment(){
		return this.comment;
	}
	public void setComment(String comment){
		this.comment = comment;
	}
	
	public String getStatus(){
		return this.status;
	}
	public void setStatus(String status){
		this.status = status;
	}
	
	public String getParentCommentId(){
		return this.parentCommentId;
	}
	public void setParentComentId(String parentCommentId){
		this.parentCommentId = parentCommentId;
	}
	
	public Date getDate(){
		return this.date;
	}
	public void setDate(Date date){
		this.date = date;
	}
	
}
