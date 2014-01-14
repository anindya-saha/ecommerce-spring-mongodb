package com.ecommerce.admin;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.blog.Blog;
import com.ecommerce.blog.BlogService;
/**
 * 
 * @author İlker Korkut
 *
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminBlogController {

	@Inject
	private BlogService blogService;
	
	//Add Blog Post Page
	@RequestMapping(value = "/add-blog-post", method = RequestMethod.GET)
	public ModelAndView addBlogPost(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin-add-blog-post");
		return mav;
	}
	@ResponseBody
	@RequestMapping(value = "/saveblogpost", method = RequestMethod.POST)
	public String saveBlogPost(
			@RequestParam(value = "title") String title,
			@RequestParam(value = "post") String post,
			@RequestParam(value = "visual") String visual){
		
		Blog blog = new Blog();
		blog.setTitle(title);
		blog.setPost(post);
		blog.setVisual(visual);
		
		blogService.newBlogPost(blog);
		
		return "new Blog post Added";
	}
	
}
