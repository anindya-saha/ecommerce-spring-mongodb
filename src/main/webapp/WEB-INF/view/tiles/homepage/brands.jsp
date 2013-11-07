<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!--  ==========  -->
<!--  = Brands Carousel =  -->
<!--  ==========  -->
<div class="container blocks-spacer-last">

	<!--  ==========  -->
	<!--  = Title =  -->
	<!--  ==========  -->
	<div class="row">
		<div class="span12">
			<div class="main-titles lined">
				<h2 class="title">
					<span class="light">Our</span> Brands
				</h2>
				<div class="arrows">
					<a href="#" class="icon-chevron-left" id="brandsLeft"></a> <a
						href="#" class="icon-chevron-right" id="brandsRight"></a>
				</div>
			</div>
		</div>
	</div>
	<!-- /title -->

	<!--  ==========  -->
	<!--  = Logos =  -->
	<!--  ==========  -->
	<div class="row">
		<div class="span12">
			<div class="brands carouFredSel" data-nav="brands"
				data-autoplay="true">
				<c:forEach var="brand" items="${brands}">
					<img src="static/images/dummy/brands/brands_01.jpg" alt="${brand.name}" title="${brand.name}" width="203" height="104" />
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- /logos -->
</div>
<!-- /brands carousel -->