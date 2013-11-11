import static org.junit.Assert.*;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.controller.ProductController;


public class ProductTest {

//	@Test
//	public void test() {
//		fail("Not yet implemented");
//	}

	@Test
	public void testProductController() {
		ProductController c= new ProductController();
		ModelAndView mav= c.showProduct("5247869889b196f1b7128def");
		Assert.assertEquals("product-details", mav.getViewName());
	}
}
