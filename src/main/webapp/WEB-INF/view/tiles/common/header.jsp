<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<!--begain header-->
		<header>
			<div class="upperHeader">
				<div class="container">
					<c:if test="${not empty user}">
						<ul class="pull-right inline">
							<li><a class="invarseColor" href="#">My Account</a></li>
							<li class="divider-vertical"></li>
							<li><a class="invarseColor" href="#">My Wish List (5)</a></li>
							<li class="divider-vertical"></li>
							<li><a class="invarseColor" href="#">Shoping Cart</a></li>
							<li class="divider-vertical"></li>
							<li><a class="invarseColor" href="#">Checkout</a></li>
						</ul>
					</c:if>
					<p>
					<c:choose>
						<c:when test="${not empty user}">
							Welcome ${user.name} - Your mail address: ${user.email} - <a href="${pageContext.request.contextPath}/user/logout">Logout</a>
						</c:when>
						<c:otherwise>
							Welcome to ShopFine, <a href="${pageContext.request.contextPath}/user">Login</a> or <a href="${pageContext.request.contextPath}/register">Create new account</a>
						</c:otherwise>
					</c:choose>
					<c:if test="${not empty cart}">
						${cart.name}
						${cart.price}
					</c:if>
					</p>
				</div><!--end container-->
			</div><!--end upperHeader-->

			<div class="middleHeader">
				<div class="container">

					<div class="middleContainer clearfix">

					<div class="siteLogo pull-left">
						<h1><a href="${pageContext.request.contextPath}/homepage">ShopFine</a></h1>
					</div>

					<div class="pull-right">
						<form method="#" action="#" class="siteSearch">
							<div class="input-append">
								<input type="text" class="span2" id="appendedInputButton" placeholder="Search...">
								<button class="btn btn-primary" type="submit" name=""><i class="icon-search"></i></button>
							</div>
						</form>
					</div>

					<div class="pull-right">
						<a class="btn"  href="#">Wishlist - (4 items)</a>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
							    <i class="icon-shopping-cart"></i> 3 Items
							    <span class="caret"></span>
							</a>
							<div class="dropdown-menu cart-content pull-right">
								<table class="table-cart">
									<tbody>
									<tr>
										<td class="cart-product-info">
											<a href="#"><img src="static/img/72x72.jpg" alt="product image"></a>
											<div class="cart-product-desc">
												<p><a class="invarseColor" href="#">Foliomania the designer portfolio brochure</a></p>
												<ul class="unstyled">
													<li>Available: Yes</li>
													<li>Color: Black</li>
												</ul>
											</div>
										</td>
										<td class="cart-product-setting">
											<p><strong>1x-$500.00</strong></p>
											<a href="#" class="remove-pro" rel="tooltip" data-title="Delete"><i class="icon-trash"></i></a>
										</td>
									</tr>
									<tr>
										<td class="cart-product-info">
											<a href="#"><img src="static/img/72x72.jpg" alt="product image"></a>
											<div class="cart-product-desc">
												<p><a class="invarseColor" href="#">Foliomania the designer portfolio brochure</a></p>
												<ul class="unstyled">
													<li>Available: Yes</li>
													<li>Color: Black</li>
												</ul>
											</div>
										</td>
										<td class="cart-product-setting">
											<p><strong>2x-$450.00</strong></p>
											<a href="#" class="remove-pro" rel="tooltip" data-title="Delete"><i class="icon-trash"></i></a>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td class="cart-product-info">
											<a href="#" class="btn btn-small">Vew cart</a>
											<a href="#" class="btn btn-small btn-primary">Checkout</a>
										</td>
										<td>
											<h3>TOTAL<br>$1,598.30</h3>
										</td>
									</tr>
								</tfoot>
								</table>
							</div>
						</div>
					</div><!--end pull-right-->

					</div><!--end middleCoontainer-->

				</div><!--end container-->
			</div><!--end middleHeader-->

			<div class="mainNav">
				<div class="container">
					<div class="navbar">
				      	<ul class="nav">
				      		<%@include file="/WEB-INF/view/tiles/common/main_nav.jsp" %>
				      	</ul><!--end nav-->
					</div>
				</div><!--end container-->
			</div><!--end mainNav-->
			
		</header>
		<!-- end header -->