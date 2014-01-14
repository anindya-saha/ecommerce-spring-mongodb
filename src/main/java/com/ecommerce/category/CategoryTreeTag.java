package com.ecommerce.category;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

// TODO CategoryTreeTag
public class CategoryTreeTag extends BodyTagSupport {

	private CategoryDao categoryDao;
	private BodyContent bodyContent;
	private String categoryName;
	
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
		try {
            if (bodyContent != null) {
                bodyContent.writeOut(bodyContent.getEnclosingWriter());
            }
        } catch (IOException pIOEx) {
            throw new JspException("Error: " + pIOEx.getMessage());
        }
		return EVAL_PAGE;
	}
	
	private int findChild(String categoryName){
		Category category = categoryDao.getSingleCategoryByName(categoryName);
		if(category.getParent() != null){ // If it is child-category
			Category childCategory = category;
			if(Arrays.asList(childCategory.getAncestors()).contains(category.getParent())){ 
				
			}
			return EVAL_BODY_BUFFERED;
		}
		else{ // If it is parent-category
			return SKIP_BODY;
		}
	}
	
}
