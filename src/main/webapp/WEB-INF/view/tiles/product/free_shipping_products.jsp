<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="push-up blocks-spacer">
		<div class="row">
			<section class="span12">

				<!--  ==========  -->
				<!--  = Title =  -->
				<!--  ==========  -->
				<div class="underlined push-down-20">
					<div class="row">
						<div class="span6">
							<h3>
								<span class="light">Free Shipping</span> Products
							</h3>
						</div>
						<div class="span6">
							<div class="form-inline sorting-by">
								<label for="isotopeSorting" class="black-clr">Sort:</label> <select
									id="isotopeSorting" class="span3">
									<option value='{"sortBy":"price", "sortAscending":"true"}' />By
									Price (Low to High) &uarr;
									<option value='{"sortBy":"price", "sortAscending":"false"}' />By
									Price (High to Low) &darr;
									<option value='{"sortBy":"name", "sortAscending":"true"}' />By
									Name (Low to High) &uarr;
									<option value='{"sortBy":"name", "sortAscending":"false"}' />By
									Name (High to Low) &darr;
									<option value='{"sortBy":"popularity", "sortAscending":"true"}' />By
									Popularity (Low to High) &uarr;
									<option
										value='{"sortBy":"popularity", "sortAscending":"false"}' />By
									Popularity (High to Low) &darr;
								</select> <label for="numberShown" class="black-clr">Show:</label> <select
									id="numberShown" class="span1">
									<option value="9" />9
									<option value="15" />15
									<option value="30" />30
								</select>
							</div>
						</div>
						<!-- /sorting and number shown -->
					</div>
				</div>
				<!-- /title -->

				<!--  ==========  -->
				<!--  = Products =  -->
				<!--  ==========  -->
				<div class="row popup-products">
					<div id="isotopeContainer" class="isotope-container">

						<!--  ==========  -->
						<!--  = Single Product =  -->
						<!--  ==========  -->
						<c:forEach var="product" items="${products}">
							<div class="span3 ${product.category.id}"
								data-price="${product.price}" data-popularity="4"
								data-size="m|l" data-color="blue|orange"
								data-brand="${product.brand.name}">
								<div class="product">
									<div class="product-img">
										<div class="picture">
											<img width="540" height="374" alt=""
												src="${staticServer}/${product.image[0].imagePath}" />
											<div class="img-overlay">
												<a class="btn more btn-primary" href="/product?productid=${product.id}">More</a> <a
													href="javascript:void(0);" class="btn add-to-cart"
													data-productid="${product.id}">Add to Cart</a> <a href="#"
													class="btn buy btn-danger">Buy</a>
											</div>
										</div>
									</div>
									<div class="main-titles no-margin">
										<h4 class="title">
											<c:choose>
												<c:when test="${product.invalidPrice ne 0}">
													<span class="tag striked">${product.invalidPrice} TL</span>
													<span class="tag red-clr">${product.price} TL</span>
												</c:when>
												<c:otherwise>
													<span class="tag">${product.price} TL</span>
												</c:otherwise>
											</c:choose>
										</h4>
										<h5 class="no-margin isotope--title">${product.name}</h5>
									</div>
									<p class="center-align stars">
										<span class="icon-star stars-clr"></span> <span
											class="icon-star stars-clr"></span> <span
											class="icon-star stars-clr"></span> <span
											class="icon-star stars-clr"></span> <span class="icon-star"></span>

									</p>
								</div>
							</div>
							<!-- /single product -->
						</c:forEach>
					</div>
					<!-- /isotope-container -->
				</div>
				<!-- /popup-products -->
				<hr />

				<!--  ==========  -->
				<!--  = Pagination =  -->
				<!--  ==========  -->
				<div class="pagination pagination-centered">
					<ul>
						<li><a href="#" class="btn btn-primary"><span
								class="icon-chevron-left"></span></a></li>
						<li class="active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" class="btn btn-primary"><span
								class="icon-chevron-right"></span></a></li>
					</ul>
				</div>
				<!-- /pagination -->
			</section>
			<!-- /span12 -->
		</div>
	</div>
</div>
<!-- /container -->