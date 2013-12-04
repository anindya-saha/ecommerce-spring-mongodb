<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--  ==========  -->
<!--  = Main container =  -->
<!--  ==========  -->
<div class="container">
    <div class="row">
        <div class="span12">
            <div class="push-up over-slider blocks-spacer">
                
                <!--  ==========  -->
                <!--  = Three Banners =  -->
                <!--  ==========  -->
                <div class="row">
                    <div class="span4">
                        <a href="#" class="btn btn-block banner">
                            <span class="title"><span class="light">SUMMER</span> SALE</span>
                            <em>up to 60% off on all shoes</em>
                        </a>
                    </div>
                    <div class="span4">
                        <a href="${pageContext.request.contextPath}/product/free-shipping" class="btn btn-block colored banner">
                            <span class="title"><span class="light">FREE</span> SHIPPING</span>
                            <em>Show all free shipping products</em>
                        </a>
                    </div>
                    <div class="span4">
                        <a href="#" class="btn btn-block banner">
                            <span class="title"><span class="light">NEW</span> PRODUCTS</span>
                            <em>for running on lorem ipsum dolor</em>
                        </a>
                    </div>
                </div> <!-- /three banners -->
            </div>
        </div>
    </div>
    
    <!--  ==========  -->
    <!--  = Featured Items =  -->
    <!--  ==========  -->
    <div class="row featured-items blocks-spacer">
        <div class="span12">
            
            <!--  ==========  -->
            <!--  = Title =  -->
            <!--  ==========  -->
        	<div class="main-titles lined">
        	    <h2 class="title"><span class="light">Featured</span> Products</h2>
        	    <div class="arrows">
                    <a href="#" class="icon-chevron-left" id="featuredItemsLeft"></a>
                    <a href="#" class="icon-chevron-right" id="featuredItemsRight"></a>
                </div>
        	</div>
        </div>
        
        <div class="span12">
            <!--  ==========  -->
            <!--  = Carousel =  -->
            <!--  ==========  -->
            <div class="carouFredSel" data-autoplay="false" data-nav="featuredItems">
               	
                    

	            	<!--  ==========  -->
					<!--  = Product =  -->
					<!--  ==========  -->
					<c:forEach var="product" items="${products}" varStatus="count">
						<c:if test="${count.count%3 eq 1}">
							<div class="slide">
							<div class="row">
						</c:if>
		            	<div class="span4">
		            	    <div class="product">
		            	        <div class="product-img featured">
		            	            <div class="picture">
		            	        	    <img src="<c:if test="${not empty product.image}">${staticServer}/${product.image[0].imagePath}</c:if>" alt="" width="518" height="358" />
		            	        		<div class="img-overlay">
		            	        		    <a href="${pageContext.request.contextPath}/product?productid=${product.id}" class="btn more btn-primary">More</a>
		            	        		    <a href="javascript:void(0);" class="btn add-to-cart" data-productid="${product.id}">Add to Cart</a>
		            	        		    <a href="#" class="btn buy btn-danger">Buy</a>
		            	        		</div>
		            	            </div>
		            	        </div>
		            	        <div class="main-titles">
		            	            <h4 class="title">
			            	            <c:choose>
			                        		<c:when test="${product.invalidPrice ne 0}">
			                        			<span class="tag striked">${product.invalidPrice} TL</span> <span class="tag red-clr">${product.price} TL</span>
			                        		</c:when>
			                        		<c:otherwise>
			                        			<span class="tag">${product.price} TL</span>
			                        		</c:otherwise>
			                        	</c:choose>
                        			</h4>
		            	            <h5 class="no-margin">${product.name}</h5>
		            	        </div>
		            	        <p class="desc">${product.description}</p>
		            	        <p class="center-align stars">
	                	            <span class="icon-star stars-clr"></span>
	                	            <span class="icon-star"></span>
	                	            <span class="icon-star"></span>
	                	            <span class="icon-star"></span>
	                	            <span class="icon-star"></span>
	                	        </p>
		            	    </div>
	            	      </div> <!-- /product -->
	            	      <c:if test="${count.count%3 eq 0}">
	            	      	</div><!--  /slide -->
	            	      	</div>
	            	      </c:if>
	            	 </c:forEach>
					</div>
            </div> <!-- /carousel -->
        </div>
        
    </div>
</div> <!-- /container -->