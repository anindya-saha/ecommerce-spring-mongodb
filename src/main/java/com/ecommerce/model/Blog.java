package com.ecommerce.model;

import java.util.Date;

public class Blog {

	private String id;
	
	private String title;
	
	private String post;
	
	private String visual;  // Video or Image
	
	private Date postDate;
	
	private BlogComment comment;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	
	public String getVisual() {
		return visual;
	}
	public void setVisual(String visual) {
		this.visual = visual;
	}
	
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	
	public BlogComment getComment() {
		return comment;
	}
	public void setComment(BlogComment comment) {
		this.comment = comment;
	}
	
	
	
}
