<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:choose>
        <c:when test="${empty cart}">
            <div class="cart-container">
            	<div class="cart">
			        <p class="items">CART <span class="dark-clr">(0)</span></p>
			        <p class="dark-clr hidden-tablet">no item</p>
			        <a href="checkout-step-1.html" class="btn btn-danger">
			            <i class="icon-shopping-cart"></i>
			        </a>
			    </div>
            </div>
        </c:when>
        <c:otherwise>
        	<div class="cart-container" id="cartContainer">
			    <div class="cart">
			        <p class="items">CART <span class="dark-clr">(${fn:length(cart)})</span></p>
			        <p class="dark-clr hidden-tablet">${cartTotal} TL</p>
			        <a href="checkout-step-1.html" class="btn btn-danger">
			            <i class="icon-shopping-cart"></i>
			        </a>
			    </div>
			    <div class="open-panel">
			        <c:forEach var="cartItem" items="${cart}">
			        <div class="item-in-cart clearfix">
			            <div class="image">
			                <img src="${staticServer}/static/images/dummy/cart-items/cart-item-1.jpg" width="124" height="124" alt="cart item" />
			            </div>
			            <div class="desc">
			                <strong><a href="/product?productid=${cartItem.product.id}">${cartItem.product.name}</a></strong>
			                <c:if test="${not empty cartProduct.product.brand.name}">
			                	Brand: ${cartItem.product.brand.name}
			                </c:if>
			                <span class="light-clr qty">
			                    Qty: ${cartItem.count}
			                    &nbsp;
			                    <a href="javascript:void(0);" class="icon-remove-sign remove-from-cart" data-productid="${cartItem.product.id}" title="Remove Item"></a>
			                </span>
			            </div>
			            <div class="price">
			                <strong>${cartItem.product.price} TL</strong>
			            </div>
			        </div>
			        </c:forEach>
			         
			        <div class="summary">
			            <div class="line">
			                <div class="row-fluid">
			                    <div class="span6">Shipping:</div>
			                    <div class="span6 align-right">$4.99</div>
			                </div>
			            </div>
			            <div class="line">
			                <div class="row-fluid">
			                    <div class="span6">Subtotal:</div>
			                    <div class="span6 align-right size-16">${cartTotal} TL</div>
			                </div>
			            </div>
			        </div>
			        <div class="proceed">
			            <a href="/checkout" class="btn btn-danger pull-right bold higher">CHECKOUT <i class="icon-shopping-cart"></i></a>
			            <small>Shipping costs are calculated based on location. <a href="#">More information</a></small>
			        </div>
			    </div>
			</div>
        </c:otherwise>
</c:choose>

