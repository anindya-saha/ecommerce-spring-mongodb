package com.ecommerce.blog;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/blog")
public class BlogController {
	
	@Inject
	private BlogService blogService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView getBlogList(){
		ModelAndView mav = new ModelAndView();
		
		List<Blog> blogs = blogService.listAllBlogs();
		mav.addObject("blogs",blogs);
		
		mav.setViewName("blog-list");
		return mav;
	}
	
}
