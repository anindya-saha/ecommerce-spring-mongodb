package com.ecommerce.order;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.constant.OrderStatus;
import com.ecommerce.product.Product;
import com.ecommerce.user.User;

@Controller
@RequestMapping(value = "/checkout")
public class CheckoutController {

	protected static Logger logger = Logger.getLogger("controller");
	
	@Inject
	private OrderService orderService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView checkoutStepOne(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("checkout-step-one");
		return mav;
	}
	
	@RequestMapping(value="/step-two", method = RequestMethod.POST)
	public ModelAndView checkoutStepTwo(
			HttpSession session,
			@RequestParam(value="productId[]") String[] productId
			){
		ModelAndView mav = new ModelAndView();
		Product product = new Product();
		
		User user = (User) session.getAttribute("user");
		
		for(String pId : productId){
			orderService.saveNewOrder(user.getId(), product, OrderStatus.PENDING.getOrderStatus());
		}
		
		mav.setViewName("checkout-step-two");
		return mav;
	}
	
	@RequestMapping(value="/step-three", method = RequestMethod.GET)
	public ModelAndView checkoutStepThree(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("checkout-step-three");
		return mav;
	}
	
	@RequestMapping(value="/step-four", method = RequestMethod.GET)
	public ModelAndView checkoutStepFour(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("checkout-step-four");
		return mav;
	}
	
	@RequestMapping(value="/step-final", method = RequestMethod.GET)
	public ModelAndView checkoutStepFinal(){
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("checkout-step-final");
		return mav;
	}
	
}
