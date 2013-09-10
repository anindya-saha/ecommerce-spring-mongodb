<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row">
	<div class="span8">
		<div class="flexslider">
			<ul class="slides">
				<li><img src="static/img/614x300.jpg" slt="slide1"></li>
				<li><img src="static/img/614x300.jpg" slt="slide2"></li>
				<li><img src="static/img/614x300.jpg" slt="slide3"></li>
			</ul>
		</div>
		<!--end flexslider-->
	</div>
	<!--end span8-->


	<div class="span4">

		<div id="homeSpecial">
			<div class="titleHeader clearfix">
				<h3>Special</h3>
				<div class="pagers">
					<div class="btn-toolbar">
						<div class="btn-group">
							<button class="btn btn-mini vNext">
								<i class="icon-caret-down"></i>
							</button>
							<button class="btn btn-mini vPrev">
								<i class="icon-caret-up"></i>
							</button>
						</div>
						<button class="btn btn-mini">View All</button>
					</div>
				</div>
			</div>
			<!--end titleHeader-->


			<ul class="vProductItems cycle-slideshow vertical clearfix"
				data-cycle-fx="carousel" data-cycle-timeout=0
				data-cycle-slides="> li" data-cycle-next=".vPrev"
				data-cycle-prev=".vNext" data-cycle-carousel-visible="2"
				data-cycle-carousel-vertical="true">
				<li class="span4 clearfix">
					<div class="thumbImage">
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor"> Foliomania the title here </a>
						</div>
						<div class="thumbPrice">
							<span>$150.00</span>
						</div>
						<ul class="rating">
							<li><i class="star-off"></i></li>
							<li><i class="star-off"></i></li>
							<li><i class="star-off"></i></li>
							<li><i class="star-off"></i></li>
							<li><i class="star-off"></i></li>
						</ul>
					</div>
				</li>
				<li class="span4 clearfix">
					<div class="thumbImage">
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor"> Foliomania the designer
								portfolio </a>
						</div>
						<div class="thumbPrice">
							<span>$150.00</span>
						</div>
						<ul class="rating">
							<li><i class="star-on"></i></li>
							<li><i class="star-on"></i></li>
							<li><i class="star-on"></i></li>
							<li><i class="star-off"></i></li>
							<li><i class="star-off"></i></li>
						</ul>
					</div>
				</li>
				<li class="span4 clearfix">
					<div class="thumbImage">
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor"> Foliomania the designer
								portfolio </a>
						</div>
						<div class="thumbPrice">
							<span>$150.00</span>
						</div>
						<ul class="rating">
							<li><i class="star-on"></i></li>
							<li><i class="star-on"></i></li>
							<li><i class="star-on"></i></li>
							<li><i class="star-off"></i></li>
							<li><i class="star-off"></i></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<!--end special-->
	</div>
	<!--end span4-->
</div>
<div class="row">
	<div class="span12">

		<div id="featuredItems">

			<div class="titleHeader clearfix">
				<h3>JUST NEW ADDED ITEMS</h3>
				<div class="pagers">
					<div class="btn-toolbar">
						<button class="btn btn-mini">View All</button>
					</div>
				</div>
			</div>
			<!--end titleHeader-->

			<div class="row">
				<ul class="hProductItems clearfix">
					<c:forEach var="product" items="${products}">
						<li class="span3 clearfix">
							<div class="thumbnail">
								<a
									href="${pageContext.request.contextPath}/product?productid=${product.id}"><img
									src="static/img/212x192.jpg" alt=""></a>
							</div>
							<div class="thumbSetting">
								<div class="thumbTitle">
									<a href="#" class="invarseColor">
										${product.name} </a>
								</div>
								<div class="thumbPrice">
									<span><span class="strike-through">${product.invalidPrice}
											TL</span> ${product.price} TL</span>
								</div>

								<div class="thumbButtons">
									<button class="btn btn-primary btn-small"
										data-title="+Sepete Ekle" data-placement="top" rel="tooltip">
										<i class="icon-shopping-cart"></i>
									</button>
									<button class="btn btn-small" data-title="+İsteklere Ekle"
										data-placement="top" rel="tooltip">
										<i class="icon-heart"></i>
									</button>

									<button class="btn btn-small" data-title="+Karşılaştır"
										data-placement="top" rel="tooltip">
										<i class="icon-refresh"></i>
									</button>
								</div>
								<%@include file="/WEB-INF/view/tiles/urun/product_rating.jsp" %>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!--end row-->
		</div>
		<!--end featuredItems-->
	</div>
	<!--end span12-->
</div>
<div class="row">
	<div class="span12">

		<div id="featuredItems">

			<div class="titleHeader clearfix">
				<h3>MOST ORDERED ITEMS</h3>
				<div class="pagers">
					<div class="btn-toolbar">
						<button class="btn btn-mini">View All</button>
					</div>
				</div>
			</div>
			<!--end titleHeader-->

			<div class="row">
				<ul class="hProductItems clearfix">
					<li class="span3 clearfix">
						<div class="thumbnail">
							<a href="#"><img src="static/img/212x192.jpg" alt=""></a>
						</div>
						<div class="thumbSetting">
							<div class="thumbTitle">
								<a href="#" class="invarseColor"> Foliomania the designer
									portfolio brochure </a>
							</div>
							<div class="thumbPrice">
								<span><span class="strike-through">$200.00</span> $150.00</span>
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

							<ul class="rating">
								<li><i class="star-on"></i></li>
								<li><i class="star-on"></i></li>
								<li><i class="star-on"></i></li>
								<li><i class="star-on"></i></li>
								<li><i class="star-off"></i></li>
							</ul>
						</div>
					</li>
					<li class="span3 clearfix">
						<div class="thumbnail">
							<a href="#"><img src="static/img/212x192.jpg" alt=""></a>
						</div>
						<div class="thumbSetting">
							<div class="thumbTitle">
								<a href="#" class="invarseColor"> Foliomania the designer
									portfolio brochure </a>
							</div>
							<div class="thumbPrice">
								<span>$150.00</span>
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

							<ul class="rating">
								<li><i class="star-on"></i></li>
								<li><i class="star-on"></i></li>
								<li><i class="star-on"></i></li>
								<li><i class="star-off"></i></li>
								<li><i class="star-off"></i></li>
							</ul>
						</div>
					</li>
					<li class="span3 clearfix">
						<div class="thumbnail">
							<a href="#"><img src="static/img/212x192.jpg" alt=""></a>
						</div>
						<div class="thumbSetting">
							<div class="thumbTitle">
								<a href="#" class="invarseColor"> Foliomania the designer
									portfolio brochure </a>
							</div>
							<div class="thumbPrice">
								<span>$150.00</span>
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
						</div>
					</li>
					<li class="span3 clearfix">
						<div class="thumbnail">
							<a href="#"><img src="static/img/212x192.jpg" alt=""></a>
						</div>
						<div class="thumbSetting">
							<div class="thumbTitle">
								<a href="#" class="invarseColor"> Foliomania the designer
									portfolio brochure </a>
							</div>
							<div class="thumbPrice">
								<span>$150.00</span>
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

							<ul class="rating">
								<li><i class="star-on"></i></li>
								<li><i class="star-on"></i></li>
								<li><i class="star-off"></i></li>
								<li><i class="star-off"></i></li>
								<li><i class="star-off"></i></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<!--end row-->
		</div>
		<!--end featuredItems-->
	</div>
	<!--end span12-->
</div>
<div class="row">
	<div class="span12">
		<div id="brands">
			<div class="titleHeader clearfix">
				<h3>Brands</h3>
				<div class="pagers">
					<div class="btn-toolbar">
						<button class="btn btn-mini">View All</button>
					</div>
				</div>
			</div>
			<!--end titleHeader-->
			<ul class="brandList clearfix">
				<li><a href="#"><img src="static/img/Layer-4.png"
						alt="logo"></a></li>
				<li><a href="#"><img src="static/img/Layer-1.png"
						alt="logo"></a></li>
				<li><a href="#"><img src="static/img/Layer-3.png"
						alt="logo"></a></li>
				<li><a href="#"><img src="static/img/Layer-2.png"
						alt="logo"></a></li>
			</ul>
		</div>
		<!--end brands-->
	</div>
	<!--end span12-->
</div>
<!--end row-->