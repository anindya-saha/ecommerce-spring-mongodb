<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%-- <c:forEach var="singleProduct" items="${singleProduct}"> --%>
<div class="row">
	<ul class="breadcrumb">
	  <li><a href="#">Home</a> <span class="divider">/</span></li>
	  <li><a href="#">Library</a> <span class="divider">/</span></li>
	  <li class="active">${product.category}</li>
	</ul>
</div>
<div class="row">
	<aside class="span3">
	<div class="aside-inner">
		<div class="special">
			<div class="titleHeader clearfix">
				<h3>Special</h3>
			</div><!--end titleHeader-->

			<ul class="vProductItemsTiny">
				<li class="span4 clearfix">
					<div class="thumbImage">
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
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
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor">
								getfolio
							</a>
						</div>
						<div class="thumbPrice">
							<span>$231</span>
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
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
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



		<div class="special">
			<div class="titleHeader clearfix">
				<h3>Featured</h3>
			</div><!--end titleHeader-->

			<ul class="vProductItemsTiny">
				<li class="span4 clearfix">
					<div class="thumbImage">
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
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
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
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
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
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
						<a href="#"><img src="static/img/92x92.jpg" alt=""></a>
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

	</div><!--end aside-inner-->
	</aside><!--end span3-->


	<div class="span9">
		<div class="row">

			<div class="product-details clearfix">
				<div class="span5">
					<div class="product-title">
						<h4>${product.name}</h4>
					</div>
					<div class="product-img">
						<a class="fancybox" href="static/img/650x700.jpg"><img src="static/img/372x370.jpg" alt=""></a>
					</div><!--end product-img-->
					<div class="product-img-thumb">
						<a class="fancybox" href="static/img/650x700.jpg"><img src="static/img/68x60.jpg" alt=""></a>
						<a class="fancybox" href="static/img/650x700.jpg"><img src="static/img/68x60.jpg" alt=""></a>
						<a class="fancybox" href="static/img/650x700.jpg"><img src="static/img/68x60.jpg" alt=""></a>
						<a class="fancybox" href="static/img/650x700.jpg"><img src="static/img/68x60.jpg" alt=""></a>
					</div><!--end flexslider-thumb-->
				</div><!--end span5-->

				<div class="span4">
					<div class="product-set">
						<div class="product-price">
							<span>
							<c:if test="${product.invalidPrice ne 0}">
								<span class="strike-through">${product.invalidPrice} TL</span>
							</c:if> 
							${product.price} TL
							</span>
						</div><!--end product-price-->
						<div class="product-rate clearfix">
							<%@include file="/WEB-INF/view/tiles/urun/product_rating.jsp" %>
							<span>18 Review(s) <a href="#">Make a Review</a></span>
						</div><!--end product-inputs-->
						<div class="product-info">
							<dl class="dl-horizontal">
							  <dt>Ürün Stoğu:</dt>
							  <dd>${product.stock}</dd>

							  <dt>Kargo Tipi:</dt>
							  <dd>${product.shipmentType eq 1 ?  "Ücretsiz Kargo": "Alıcı Öder"}</dd>

							  <dt>Manfactuer:</dt>
							  <dd>Nicka Corparation</dd>

							   <dt>Review Points:</dt>
							  <dd>25 Points</dd>
							</dl>
						</div><!--end product-info-->
						<div class="product-inputs">
							<form method="#" action="#">
								<div class="controls-row">
								<select class="span2" name="#">
									<option>-- Select Color --</option>
									<option value="">Red</option>
									<option value="">Blue</option>
									<option value="">Brown</option>
								</select>
								<select class="span2" name="#">
									<option>-- Select Size --</option>
									<option value="">Size 36</option>
									<option value="">Size 12</option>
									<option value="">Size 18</option>
								</select>
								</div><!--end controls-row-->

								<div class="controls-row">
								<input type="text" class="span2" name="" value="" placeholder="input...">
								<input type="text" class="span2" name="" value="" placeholder="input...">
								</div><!--end controls-row-->

								<div class="controls-row">
								<input type="text" class="span3" name="" value="" placeholder="input...">
								<input type="text" class="span1" name="" value="" placeholder="input...">
								</div><!--end controls-row-->

								<textarea name="" class="span4" placeholder="textarea..."></textarea>

								<div class="input-append">
								<input class="span1" type="text" name="" value="" placeholder="QTY">
								<button class="btn btn-primary"><i class="icon-shopping-cart"></i> Add To Cart</button>

								<button class="btn" rel="tooltip" data-title="+To Wishlist"><i class="icon-heart"></i></button>

								<button class="btn" rel="tooltip" data-title="+To Compare"><i class="icon-refresh"></i></button>
								</div>
								
							</form><!--end form-->

						</div><!--end product-inputs-->
					</div><!--end product-set-->
				</div><!--end span4-->

			</div><!--end product-details-->

		</div><!--end row-->


		<div class="product-tab">
			<ul class="nav nav-tabs">
			  <li class="active">
			  	<a href="#descraption" data-toggle="tab">Descraption</a>
			  </li>
			  <li>
			  	<a href="#specfications" data-toggle="tab">Specfications</a>
			  </li>
			  <li>
			  	<a href="#return-info" data-toggle="tab">Return Info</a>
			  </li>
			  <li class="dropdown">
			  	<a href="#" class="dropdown-toggle" data-toggle="dropdown">Reviews <i class="icon-caret-down"></i></a>
			  	<ul class="dropdown-menu">
			  		<li><a href="#read-review" data-toggle="tab">Read Reviews</a></li>
			  		<li><a href="#make-review" data-toggle="tab">Make Review</a></li>
			  	</ul>
			  </li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="descraption">
					${product.description}
				</div>
				<div class="tab-pane" id="specfications">
					<table class="table table-compare">
						<tr>
							<td class="aligned-color"><h5>Momery</h5></td>
							<td>Test One</td>
							<td>16GB</td>
						</tr>
						<tr>
							<td class="aligned-color"><h5>Processor</h5></td>
							<td>No. of Cores</td>
							<td>No.4</td>
						</tr>
						<tr>
							<td class="aligned-color"><h5>Momery</h5></td>
							<td>Test One</td>
							<td>16GB</td>
						</tr>
						<tr>
							<td class="aligned-color"><h5>Processor</h5></td>
							<td>No. of Cores</td>
							<td>No.4</td>
						</tr>
					</table>
				</div>
				<div class="tab-pane" id="return-info">
					<h4>Read our Returning info</h4><br>
					<p>
						Suspendisse potenti. In non nisl sem, eu rutrum augue. Donec eu dolor vel massa ornare cursus id eget erat. Mauris in ante magna. Curabitur eget risus mi, non interdum lacus. Duis magna leo, rhoncus eget malesuada quis, semper a quam. Morbi imperdiet imperdiet lectus ac pellentesque. Integer diam sem, vulputate in feugiat ut, porttitor eu libero. Integer non dolor ipsum. Cras condimentum mattis turpis quis vestibulum. Nulla a augue ipsum. Donec aliquam velit vel metus fermentum dictum sodales metus condimentum. Nullam id massa quis nulla molestie ultrices eget sed nulla. Cras feugiat odio at tellus euismod lacinia.
						
					</p>
				</div>

				<div class="tab-pane" id="read-review">
<%-- 				<c:forEach var="comments" items="${comments}"> --%>
<!-- 					<div class="single-review clearfix"> -->
<!-- 						<div class="review-header"> -->
<!-- 							<ul class="rating"> -->
<!-- 								<li><i class="star-on"></i></li> -->
<!-- 								<li><i class="star-on"></i></li> -->
<!-- 								<li><i class="star-off"></i></li> -->
<!-- 								<li><i class="star-off"></i></li> -->
<!-- 								<li><i class="star-off"></i></li> -->
<!-- 							</ul> -->
<%-- 							<h4>${comments.getProductCommentUsername()}</h4> --%>
<%-- 							<small><fmt:formatDate value="${comments.getProductCommentDate()}" pattern="dd/MM/yyyy"/></small> --%>
<!-- 						</div>end review-header -->

<!-- 						<div class="review-body"> -->
<%-- 							<p>${comments.getProductComment()}</p> --%>
<!-- 						</div>end review-body -->
<!-- 					</div>end single-review -->
<%-- 				</c:forEach> --%>
				</div>

				<div class="tab-pane" id="make-review">
					<form method="#" action="#" class="form-horizontal">
						<div class="control-group">
						    <label class="control-label" for="inputName">Your Name <span class="text-error">*</span></label>
						    <div class="controls">
						      <input type="text" name="#" id="inputName" placeholder="John Doe...">
						    </div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputReview">Your Review <span class="text-error">*</span></label>
						    <div class="controls">
						      <textarea name="#" id="inputReview" placeholder="Put your review here..."></textarea>
						    </div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputReview">Your Review <span class="text-error">*</span></label>
						    <div class="controls">
						       <div class="btn-group" data-toggle="buttons-radio">
								  <button type="button" class="btn" rel="tooltip" data-title="1/5"><i class="icon-star"></i></button>
								  <button type="button" class="btn" rel="tooltip" data-title="2/5"><i class="icon-star"></i></button>
								  <button type="button" class="btn" rel="tooltip" data-title="3/5"><i class="icon-star"></i></button>
								  <button type="button" class="btn" rel="tooltip" data-title="4/5"><i class="icon-star"></i></button>
								  <button type="button" class="btn" rel="tooltip" data-title="5/5"><i class="icon-star"></i></button>
							   </div>
						    </div>
						</div>
						<div class="control-group">
						    <div class="controls">
						      <button type="submit" class="btn btn-primary" name="submit">Add Review</button>
						    </div>
						</div>
					</form><!--end form-->
				</div>
			</div><!--end tab-content-->
		</div><!--end product-tab-->


		<div class="related-product">
			<div class="titleHeader clearfix">
				<h3>Related Product</h3>
			</div><!--end titleHeader-->

			<div class="row">
			<ul class="hProductItems clearfix">
				<li class="span3 clearfix">
					<div class="thumbnail">
						<a href="#"><img src="static/img/212x192.jpg" alt=""></a>
					</div>
					<div class="thumbSetting">
						<div class="thumbTitle">
							<a href="#" class="invarseColor">
								Foliomania the designer portfolio brochure
							</a>
						</div>
						<div class="thumbPrice">
							<span>$150.00</span>
						</div>

						<div class="thumbButtons">
							<button class="btn btn-primary btn-small" data-title="+To Cart" data-placement="top" rel="tooltip">
								<i class="icon-shopping-cart"></i>
							</button>
							<button class="btn btn-small" data-title="+To WishList" data-placement="top" rel="tooltip">
								<i class="icon-heart"></i>
							</button>
						
							<button class="btn btn-small" data-title="+To Compare" data-placement="top" rel="tooltip">
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
							<a href="#" class="invarseColor">
								Foliomania the designer portfolio brochure
							</a>
						</div>
						<div class="thumbPrice">
							<span>$150.00</span>
						</div>

						<div class="thumbButtons">
							<button class="btn btn-primary btn-small" data-title="+To Cart" data-placement="top" rel="tooltip">
								<i class="icon-shopping-cart"></i>
							</button>
							<button class="btn btn-small" data-title="+To WishList" data-placement="top" rel="tooltip">
								<i class="icon-heart"></i>
							</button>
						
							<button class="btn btn-small" data-title="+To Compare" data-placement="top" rel="tooltip">
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
							<a href="#" class="invarseColor">
								Foliomania the designer portfolio brochure
							</a>
						</div>
						<div class="thumbPrice">
							<span>$150.00</span>
						</div>

						<div class="thumbButtons">
							<button class="btn btn-primary btn-small" data-title="+To Cart" data-placement="top" rel="tooltip">
								<i class="icon-shopping-cart"></i>
							</button>
							<button class="btn btn-small" data-title="+To WishList" data-placement="top" rel="tooltip">
								<i class="icon-heart"></i>
							</button>
						
							<button class="btn btn-small" data-title="+To Compare" data-placement="top" rel="tooltip">
								<i class="icon-refresh"></i>
							</button>
						</div>
					</div>
				</li>
			</ul>
			</div><!--end row-->
		</div><!--end related-product-->

	</div><!--end span9-->

</div><!--end row-->
<%-- </c:forEach> --%>