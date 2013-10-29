<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  ==========  -->
<!--  = Single Product =  -->
<!--  ==========  -->
<c:forEach var="product" items="${products}">
<div class="span3 filter--shirts" data-price="529" data-popularity="4" data-size="m|l" data-color="blue|orange" data-brand="${product.brand.name}">
 <div class="product">
     <div class="product-img">
         <div class="picture">
             <img width="540" height="374" alt="" src="${pageContext.request.contextPath}/static/images/dummy/products/product-6.jpg" />
             <div class="img-overlay">
                 <a class="btn more btn-primary" href="#">More</a>
                 <a href="javascript:void(0);" class="btn add-to-cart" data-productid="${product.id}">Add to Cart</a>
  <a href="#" class="btn buy btn-danger">Buy</a>
             </div>
         </div>
     </div>
     <div class="main-titles no-margin">
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
         <h5 class="no-margin isotope--title">${product.name}</h5>
        </div>
        <p class="center-align stars">
            <span class="icon-star stars-clr"></span>
            <span class="icon-star stars-clr"></span>
            <span class="icon-star stars-clr"></span>
            <span class="icon-star stars-clr"></span>
            <span class="icon-star"></span>
             
        </p>
    </div>
</div> <!-- /single product -->
</c:forEach>