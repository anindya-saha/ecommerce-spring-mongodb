<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<!--begain header-->
		<header>
			<div class="upperHeader">
				<div class="container">
					<ul class="pull-right inline">
						<li><a class="invarseColor" href="#">My Account</a></li>
						<li class="divider-vertical"></li>
						<li><a class="invarseColor" href="#">My Wish List (5)</a></li>
						<li class="divider-vertical"></li>
						<li><a class="invarseColor" href="#">Shoping Cart</a></li>
						<li class="divider-vertical"></li>
						<li><a class="invarseColor" href="#">Checkout</a></li>
					</ul>
					<p>
					Welcome to ShopFine, <a href="${pageContext.request.contextPath}/login">Login</a> or <a href="${pageContext.request.contextPath}/register">Create new account</a>
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
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
							    $ <span class="caret"></span>
							</a>
							<ul class="dropdown-menu currency" role="menu">
								<li><a href="#">$</a></li>
								<li class="divider"></li>
								<li><a href="#">¥</a></li>
								<li class="divider"></li>
								<li><a href="#">£</a></li>
								<li class="divider"></li>
								<li><a href="#">€</a></li>
							</ul>
						</div>
						<div class="btn-group">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
							    EN <span class="caret"></span>
							</a>
							<ul class="dropdown-menu language" role="menu">
								<li><a href="#">FR</a></li>
								<li class="divider"></li>
								<li><a href="#">CH</a></li>
								<li class="divider"></li>
								<li><a href="#">AR</a></li>
							</ul>
						</div>

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
				      		<li class="active"><a href="${pageContext.request.contextPath}/homepage"><i class="icon-home"></i></a></li>
				      		<li>
				      			<a href="#">Sayfalar &nbsp;<i class="icon-caret-down"></i></a>
				      			<div>
					      			<ul>
					      				<li><a href=""> <span>-</span>Tek Urun</a></li>
					      				<li><a href="index2.html"> <span>-</span> index2</a></li>
					      				<li><a href="account.html"> <span>-</span> account</a></li>
					      				<li><a href="login.html"> <span>-</span> login</a></li>
					      				<li><a href="register.html"> <span>-</span> register</a></li>
					      				<li><a href="cart.html"> <span>-</span> Cart</a></li>
					      				<li><a href="wishlist.html"> <span>-</span> wishlist</a></li>
					      				<li><a href="checkout.html"> <span>-</span> Checkout</a></li>
					      				<li><a href="compare.html"> <span>-</span> Compare</a></li>
					      				<li><a href="contact.html"> <span>-</span> Contact</a></li>
					      				<li><a href="search.html"> <span>-</span> Search</a></li>
					      				<li><a href="blog.html"> <span>-</span> blog</a></li>
					      				<li><a href="post.html"> <span>-</span> post</a></li>
					      				<li><a href="category_grid.html"> <span>-</span> category grid</a></li>
					      				<li><a href="category_grid.html"> <span>-</span> category list</a></li>
					      				<li><a href="product_details1.html"> <span>-</span> product details1</a></li>
					      				<li><a href="product_details2.html"> <span>-</span> product details2</a></li>
					      			</ul>
					      		</div>
				      		</li>
				      		<li>
				      			<a href="#">Women &nbsp;<i class="icon-caret-down"></i></a>
				      			<div>
					      			<ul>
					      				<li><a href="#"> <span>-</span> Dresses (2)</a></li>
					      				<li><a href="#"> <span>-</span> Jackets &amp; Coats (4)</a></li>
					      				<li><a href="#"> <span>-</span> Skirts (0)</a></li>
					      				<li><a href="#"> <span>-</span> Suits &amp; Tailoring (82)</a></li>
					      				<li><a href="#"> <span>-</span> Tops (58)</a></li>
					      				<li><a href="#"> <span>-</span> Shoes (15)</a></li>
					      				<li><a href="#"> <span>-</span> Shorts (54) </a></li>
					      			</ul>
					      		</div>
				      		</li>
				      		<li>
				      			<a href="#">Men &nbsp;<i class="icon-caret-down"></i></a>
				      			<div>
					      			<ul>
					      				<li><a href="#"> <span>-</span> Dresses (2)</a></li>
					      				<li><a href="#"> <span>-</span> Jackets &amp; Coats (4)</a></li>
					      				<li><a href="#"> <span>-</span> Skirts (0)</a></li>
					      				<li><a href="#"> <span>-</span> Suits &amp; Tailoring (82)</a></li>
					      				<li><a href="#"> <span>-</span> Tops (58)</a></li>
					      				<li><a href="#"> <span>-</span> Shoes (15)</a></li>
					      				<li><a href="#"> <span>-</span> Shorts (54) </a></li>
					      			</ul>
					      		</div>
				      		</li>
				      		<li><a href="#">Children</a></li>
				      		<li><a href="#">FootWear</a></li>
				      		<li>
				      			<a href="#">Accessories &nbsp;<i class="icon-caret-down"></i></a>
				      			<div>
					      			<ul>
					      				<li><a href="#"> <span>-</span> Dresses (2)</a></li>
					      				<li><a href="#"> <span>-</span> Jackets &amp; Coats (4)</a></li>
					      				<li><a href="#"> <span>-</span> Skirts (0)</a></li>
					      				<li><a href="#"> <span>-</span> Suits &amp; Tailoring (82)</a></li>
					      				<li><a href="#"> <span>-</span> Tops (58)</a></li>
					      				<li><a href="#"> <span>-</span> Shoes (15)</a></li>
					      				<li><a href="#"> <span>-</span> Shorts (54) </a></li>
					      			</ul>
					      		</div>
				      		</li>
				      		<li><a href="#">OutLet</a></li>
				      		<li><a href="#">Designers</a></li>
				      	</ul><!--end nav-->

					</div>
				</div><!--end container-->
			</div><!--end mainNav-->
			
		</header>
		<!-- end header -->