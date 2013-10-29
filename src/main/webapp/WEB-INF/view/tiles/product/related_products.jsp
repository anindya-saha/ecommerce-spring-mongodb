<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--  ==========  -->
<!--  = Related Products =  -->
<!--  ==========  -->
<div class="boxed-area no-bottom">
    <div class="container">
        
        <!--  ==========  -->
        <!--  = Title =  -->
        <!--  ==========  -->
        <div class="row">
            <div class="span12">
                <div class="main-titles lined">
                	<h2 class="title"><span class="light">Related</span> Products</h2>
                </div>
            </div>
        </div>
        
        <!--  ==========  -->
        <!--  = Related products =  -->
        <!--  ==========  -->
        <div class="row popup-products">
             
            <!--  ==========  -->
            <!--  = Products =  -->
            <!--  ==========  -->
            <c:forEach var="relProd" items="${relatedProduct}">
        	<div class="span3">
        	    <div class="product">
        	        <div class="product-img">
                        <div class="picture">
                            <img src="static/images/dummy/products/product-1.jpg" alt="" width="540" height="374" />
                            <div class="img-overlay">
                                <a href="${pageContext.request.contextPath}/product?productid=${relProd.id}" class="btn more btn-primary">More</a>
                                <a href="javascript:void(0);" class="btn add-to-cart" data-productid="${relProd.id}">Add to Cart</a>
		            	        <a href="#" class="btn buy btn-danger">Buy</a>
                            </div>
                        </div>
                    </div>
                    <div class="main-titles no-margin">
                        <h4 class="title">
                        	<c:choose>
                        		<c:when test="${relProd.invalidPrice ne 0}">
                        			<span class="striked">${relProd.invalidPrice} TL</span> <span class="red-clr">${relProd.price} TL</span>
                        		</c:when>
                        		<c:otherwise>
                        			${relprod.price} TL
                        		</c:otherwise>
                        	</c:choose>
                        </h4>
                        <h5 class="no-margin">${relProd.name}</h5>
                    </div>
                    <p class="desc">${relProd.description}</p>
                    <p class="center-align stars">
                        <span class="icon-star stars-clr"></span>
                        <span class="icon-star stars-clr"></span>
                        <span class="icon-star stars-clr"></span>
                        <span class="icon-star stars-clr"></span>
                        <span class="icon-star"></span>
                    </p>
        	    </div>
        	</div> <!-- /product -->
        	</c:forEach>
        	
        </div>
    </div>
</div>

