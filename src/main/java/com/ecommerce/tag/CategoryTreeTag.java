package com.ecommerce.tag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;
// TODO CategoryTreeTag
public class CategoryTreeTag extends BodyTagSupport {

	private BodyContent bodyContent;
	
	public void setBodyContent(BodyContent newBodyContent){
		this.bodyContent = newBodyContent;
	}
	
	public int doStartTag() throws JspException{
		return EVAL_BODY_BUFFERED;
	}
	
	public int doAfterBody() throws JspException{
		return SKIP_BODY;
	}
	
	public int doEndTag() throws JspException{
		
		return EVAL_PAGE;
	}
	
}
