<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:choose>
	<c:when test="${empty cart}">
		No cart item
	</c:when>
	<c:otherwise>
		<div class="btn-group">
			<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
			    <i class="icon-shopping-cart"></i> ${fn:length(cart)} Items
			    <span class="caret"></span>
			</a>
			<div class="dropdown-menu cart-content pull-right">
				<table class="table-cart">
					<tbody>
						<c:forEach var="cartProduct" items="${cart}">
							<tr>
								<td class="cart-product-info">
									<a href="${pageContext.request.contextPath}/product?productid=${cartProduct.id}"><img src="static/img/72x72.jpg" alt="product image"></a>
									<div class="cart-product-desc">
										<p><a class="invarseColor" href="${pageContext.request.contextPath}/product?productid=${cartProduct.id}">${cartProduct.name}</a></p>
										<ul class="unstyled">
											<li>Brand: <c:if test="${not empty cartProduct.brand.name}">${cartProduct.brand.name}</c:if></li>
											<li>Stock: ${cartProduct.stock}</li>
										</ul>
									</div>
								</td>
								<td class="cart-product-setting">
									<p><strong>${cartProduct.price} x1</strong></p>
									<a href="#" class="remove-pro" rel="tooltip" data-title="Delete"><i class="icon-trash"></i></a>
								</td>
							</tr>
						</c:forEach>
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
	</c:otherwise>
</c:choose>
