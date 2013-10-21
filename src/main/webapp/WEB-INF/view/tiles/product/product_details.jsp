<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div class="row">
	<ul class="breadcrumb">
		<%@include file="/WEB-INF/view/tiles/common/breadcrumb.jsp" %>
	</ul>
</div>
<div class="row">
	<aside class="span3">
	<div class="aside-inner">
		<div class="special">
			<div class="titleHeader clearfix">
				<h3>SAME BRAND</h3>
			</div><!--end titleHeader-->

			<ul class="vProductItemsTiny">
				<c:forEach var="sameBrandProduct" items="${sameBrandProducts}">
					<li class="span4 clearfix">
						<div class="thumbImage">
							<a href="${pageContext.request.contextPath}/product?productid=${sameBrandProduct.id}"><img src="static/img/92x92.jpg" alt=""></a>
						</div>
						<div class="thumbSetting">
							<div class="thumbTitle">
								<a href="${pageContext.request.contextPath}/product?productid=${sameBrandProduct.id}" class="invarseColor">
									${sameBrandProduct.name}
								</a>
							</div>
							<div class="thumbPrice">
								<span>${sameBrandProduct.price}</span>
							</div>
							<rating value="${sameBrandProduct.rating}" max="5" readonly="true"></rating>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div><!--end special-->



		<div class="special">
			<div class="titleHeader clearfix">
				<h3>WHO BOUGHT THIS AND THESE</h3>
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
							<rating value="${product.rating}" max="5" readonly="true"></rating>
							<span>${fn:length(product.comment)} Yorum <a href="#">Make a Review</a></span>
						</div><!--end product-inputs-->
						<div class="product-info">
							<dl class="dl-horizontal">
							  <dt>Ürün Stoğu:</dt>
							  <dd>${product.stock}</dd>

							  <dt>Kargo Tipi:</dt>
							  <dd>${product.shipmentType eq 1 ?  "Ücretsiz Kargo": "Alıcı Öder"}</dd>

							  <dt>Marka:</dt>
							  <dd>${product.brand.name}</dd>

							   <dt>Review Points:</dt>
							  <dd>25 Points</dd>
							</dl>
						</div><!--end product-info-->
						<div class="product-inputs">
							<form method="#" action="#">

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
		  <tabset>
		    <tab heading="Description">${product.description}</tab>
		    <tab heading="Specification">
		      <table class="table table-compare">
		        <c:forEach var="specification" items="${product.specification}">
		          <tr>
		            <td class="aligned-color"><h5>${specification.title}</h5></td>
		            <td>${specification.detail}</td>
		          </tr>
		        </c:forEach>
		      </table>
		    </tab>
		    <tab heading="Return Info">
		      <h4>Read our Returning info</h4><br>
		      <p>
		        Suspendisse potenti. In non nisl sem, eu rutrum augue. Donec eu dolor vel massa ornare cursus id eget erat. Mauris in ante magna. Curabitur eget risus mi, non interdum lacus. Duis magna leo, rhoncus eget malesuada quis, semper a quam. Morbi imperdiet imperdiet lectus ac pellentesque. Integer diam sem, vulputate in feugiat ut, porttitor eu libero. Integer non dolor ipsum. Cras condimentum mattis turpis quis vestibulum. Nulla a augue ipsum. Donec aliquam velit vel metus fermentum dictum sodales metus condimentum. Nullam id massa quis nulla molestie ultrices eget sed nulla. Cras feugiat odio at tellus euismod lacinia.
		        
		      </p>
		    </tab>
		    <tab heading="Read Review">
		      <c:forEach var="comment" items="${product.comment}">
		        <div class="single-review clearfix">
		          <div class="review-header">
		            <ul class="rating">
		              <li><i class="star-on"></i></li>
		              <li><i class="star-on"></i></li>
		              <li><i class="star-off"></i></li>
		              <li><i class="star-off"></i></li>
		              <li><i class="star-off"></i></li>
		            </ul>
		            <h4>${comment.userName}</h4>
		            <small>
		  <%--              <fmt:formatDate value="${comments.getProductCommentDate()}" pattern="dd/MM/yyyy"/> --%>
		              ${comment.date}
		            </small>
		          </div>
		          <!-- end review-header -->
		
		          <div class="review-body">
		            <p>${comment.comment}</p>
		          </div>
		          <!-- end review-body -->
		        </div>
		      </c:forEach>
		    <!-- end single-review -->
		    </tab>
		    <tab heading="Make Review">
		      <%@include file="/WEB-INF/view/tiles/product/make_review.jsp" %>
		    </tab>
		  </tabset>
		</div>


		<div class="related-product">
			<%@include file="/WEB-INF/view/tiles/product/related_products.jsp" %>
		</div><!--end related-product-->

	</div><!--end span9-->

</div><!--end row-->
<%-- </c:forEach> --%>