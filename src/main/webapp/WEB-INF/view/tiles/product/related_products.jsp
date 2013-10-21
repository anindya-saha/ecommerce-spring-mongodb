<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="titleHeader clearfix">
	<h3>Related Products</h3>
</div><!--end titleHeader-->

<div class="row">
<ul class="hProductItems clearfix">
	<c:forEach var="relProd" items="${relatedProduct}">
		<li class="span3 clearfix">
			<div class="thumbnail">
				<a href="${pageContext.request.contextPath}/product?productid=${relProd.id}"><img src="static/img/212x192.jpg" alt=""></a>
			</div>
			<div class="thumbSetting">
				<div class="thumbTitle">
					<a href="${pageContext.request.contextPath}/product?productid=${relProd.id}" class="invarseColor">
						${relProd.name}
					</a>
				</div>
				<div class="thumbPrice">
					<span>${relProd.price}</span>
				</div>
	
				<div class="thumbButtons" ng-controller="productButtons">
					<button class="btn btn-primary btn-small" data-title="+To Cart" data-placement="top" rel="tooltip" ng-click="addToCart('${relProd.id}')">
						<i class="icon-shopping-cart"></i>
					</button>
					<button class="btn btn-small" data-title="+To WishList" data-placement="top" rel="tooltip">
						<i class="icon-heart"></i>
					</button>
				
					<button class="btn btn-small" data-title="+To Compare" data-placement="top" rel="tooltip">
						<i class="icon-refresh"></i>
					</button>
				</div>
				<rating value="${relProd.rating}" max="5" readonly="true"></rating>
			</div>
		</li>
	</c:forEach>
</ul>
</div><!--end row-->