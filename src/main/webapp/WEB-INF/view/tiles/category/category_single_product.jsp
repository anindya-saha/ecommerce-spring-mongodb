<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach var="product" items="${products}">
<li class="span3 clearfix">
	<div class="thumbnail">
		<a href="${pageContext.request.contextPath}/product?productid=${product.id}"><img
			src="${pageContext.request.contextPath}/static/img/212x192.jpg"
			alt=""></a>
	</div>
	<div class="thumbSetting">
		<div class="thumbTitle">
			<a href="${pageContext.request.contextPath}/product?productid=${product.id}" class="invarseColor">${product.name}</a>
		</div>
		<div class="thumbPrice">
			<span>${product.price} TL</span>
		</div>

		<div class="thumbButtons">
			<button class="btn btn-primary btn-small" data-title="+To Cart"
				data-placement="top" rel="tooltip">
				<i class="icon-shopping-cart"></i>
			</button>
			<button class="btn btn-small" data-title="+To WishList"
				data-placement="top" rel="tooltip">
				<i class="icon-heart"></i>
			</button>

			<button class="btn btn-small" data-title="+To Compare"
				data-placement="top" rel="tooltip">
				<i class="icon-refresh"></i>
			</button>
		</div>
		<rating value="${product.rating}" max="5" readonly="true"></rating>
	</div>
</li>
</c:forEach>