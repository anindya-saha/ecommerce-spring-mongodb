<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">

	<aside class="span3">

		<div class="categories">
			<div class="titleHeader clearfix">
				<h3>Categories</h3>
			</div><!--end titleHeader-->
			<ul class="unstyled">
				<li><a class="invarseColor active" href="#">Women (16)</a>
					<ul class="submenu">
						<li><a class="invarseColor" href="#">Beauty (3)</a></li>
						<li><a class="invarseColor active" href="#">Dresses (4)</a></li>
						<li><a class="invarseColor" href="#">Shorts (6)</a></li>
						<li><a class="invarseColor" href="#">Shoes (2)</a></li>
						<li><a class="invarseColor" href="#">Tops (1)</a></li>
						<li><a class="invarseColor" href="#">Jakets &amp; Coats (7)</a></li>
					</ul>
				</li>
				<li><a class="invarseColor" href="#">Men (6)</a></li>
				<li><a class="invarseColor" href="#">Children (8)</a></li>
				<li><a class="invarseColor" href="#">FootWear (3)</a></li>
				<li><a class="invarseColor" href="#">Accesspries (56)</a></li>
				<li><a class="invarseColor" href="#">Outlet (12)</a></li>
				<li><a class="invarseColor" href="#">Community (0)</a></li>
			</ul>
		</div><!--end categories-->

		<div class="pro-range-slider">
			<div class="titleHeader clearfix">
				<h3>Shop By Price</h3>
			</div><!--end titleHeader-->
			<div class="price-range">
				<p class="clearfix">
				  <label>Price:</label>
				  <input type="text" id="amount">
				</p>
				<div id="slider-range"></div>
			</div>
		</div><!--end pro-range-slider-->


		<div class="special">
			<div class="titleHeader clearfix">
				<h3>Special</h3>
			</div><!--end titleHeader-->

			<ul class="vProductItemsTiny">
				<li class="span4 clearfix">
					<div class="thumbImage">
						<a href="#"><img src="${pageContext.request.contextPath}/static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor">
								Foliomania the title here
							</a>
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
						<a href="#"><img src="${pageContext.request.contextPath}/static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor">
								Foliomania the designer portfolio
							</a>
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
						<a href="#"><img src="${pageContext.request.contextPath}/static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor">
								Foliomania the designer portfolio
							</a>
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
						<a href="#"><img src="${pageContext.request.contextPath}/static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor">
								Foliomania the designer portfolio
							</a>
						</div>
						<div class="thumbPrice">
							<span>$150.00</span>
						</div>
					</div>
				</li>
			</ul>
		</div><!--end special-->

	</aside><!--end aside-->


	<div class="span9">

		<%@include file="/WEB-INF/view/tiles/category/category_product_slider.jsp" %>


		<div class="productFilter clearfix">

			<div class="sortBy inline pull-left">
				Sort By
				<select name="sortItem">
					<option value="Default">Default</option>
					<option value="">Name (A-A)</option>
					<option value="">Name (Z-A)</option>
					<option value="">Price (Low-Hight)</option>
					<option value="">Price (Height-Low)</option>
					<option value="">Highest Rating</option>
					<option value="">Lowest Rating</option>
					<option value="">Model (A-Z)</option>
					<option value="">Model (Z-A)</option>
				</select>
			</div>

			<div class="showItem inline pull-left">
				Show
				<select name="showItem">
					<option value="15">15</option>
					<option value="25">25</option>
					<option value="50">50</option>
					<option value="75">75</option>
					<option value="100">100</option>
				</select>
			</div><!--end sortBy-->

			<div class="compareItem inline pull-left">
				<button class="btn">Product Compare (4)</button>
			</div><!--end compareItem-->

			<div class="displaytBy inline pull-right">
				Display
				<div class="btn-group">
					<button class="btn btn-primary active"><i class="icon-th"></i></button>
					<button class="btn"><i class="icon-list"></i></button>
				</div>
			</div><!--end displaytBy-->

		</div><!--end productFilter-->


		<div class="row">
			<ul class="hProductItems clearfix">
				<%@include file="/WEB-INF/view/tiles/category/category_single_product.jsp" %>
			</ul>
		</div><!--end row-->

		<div class="pagination pagination-right">
			<span class="pull-left">Showing 9 of 20 pages:</span>
			<ul>
				<li><a class="invarseColor" href="#">Prev</a></li>
				<li class="active"><a class="invarseColor" href="#">1</a></li>
				<li><a class="invarseColor" href="#">2</a></li>
				<li><a class="invarseColor" href="#">2</a></li>
				<li><a class="invarseColor" href="#">3</a></li>
				<li><a class="invarseColor" href="#">Next</a></li>
			</ul>
		</div><!--end pagination-->

	</div><!--end span9-->

</div><!--end row-->