<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  ==========  -->
<!--  = Header =  -->
<!--  ==========  -->
<header>
    <div class="row">
    	<div class="span2">
    		<a href="index.html"><img src="images/logo-bw.png" alt="Webmarket Logo" width="48" height="48" /></a>
    	</div>
    	<div class="span6">
    	    <div class="center-align">
    	        <h1><span class="light">Review</span> Shopping Cart</h1>
    	    </div>
    	</div>
    	<div class="span2">
    	    <div class="right-align">
    	    	<img src="${staticServer}/static/images/buttons/security.jpg" alt="Security Sign" width="92" height="65" />
    	    </div>
    	</div>
    </div>
</header>

<!--  ==========  -->
<!--  = Steps =  -->
<!--  ==========  -->
<div class="checkout-steps">
    <div class="clearfix">
    	<div class="step active">
    	    <div class="step-badge">1</div>
    	    Shopping Cart
    	</div>
    	<div class="step">
    	    <div class="step-badge">3</div>
    	    Shipping Address
    	</div>
    	<div class="step">
                  <div class="step-badge">2</div>
                  Payment Method
              </div>
    	<div class="step">
    	    <div class="step-badge">4</div>
    	    Confirm &amp; Pay
    	</div>
    </div>
</div> <!-- /steps -->

<!--  ==========  -->
<!--  = Selected Items =  -->
<!--  ==========  -->
<form action="/checkout/step-two" method="POST">
<table class="table table-items">
    <thead>
    	<tr>
    		<th colspan="2">Item</th>
    		<th><div class="align-center">Quantity</div></th>
    		<th><div class="align-right">Price</div></th>
    	</tr>
    </thead>
    <tbody>
        <c:forEach var="cartItem" items="${cart}">
	        <tr>
	        	<td class="image"><a href="/product?productid=${cartItem.product.id}"><img src="<c:if test="${not empty cartItem.product.image}">${staticServer}/${cartItem.product.image[3].imagePath}</c:if>" alt="" width="124" height="124" /></a></td>
	        	<td class="desc"><a href="/product?productid=${cartItem.product.id}">${cartItem.product.name}</a><a title="Remove Item" class="icon-remove-sign" href="#"></a></td>
	        	<td class="qty">
	        		<input type="hidden" name="productId[]" value="${cartItem.product.id}"/>
	        	    <input type="text" class="tiny-size" value="${cartItem.count}" />
	          	    </td>
	        	<td class="price">
	        	    ${cartItem.product.price} TL
	        	</td>
	        </tr>
        </c:forEach>
        <tr>
        	<td colspan="2" rowspan="2">
        	    <div class="alert alert-info">
                                         <button data-dismiss="alert" class="close" type="button">×</button>
                                         Shipping costs are calculated based on product. <a href="#">More information</a>
                                     </div>
        	</td>
        </tr>
        <tr>
        	<td class="stronger">Total:</td>
        	<td class="stronger"><div class="size-16 align-right">${cartTotal} TL</div></td>
        </tr>
    </tbody>
</table>

<hr />

<p class="right-align">
    In the next step you will choose your shipping address &nbsp; &nbsp;
    <button class="btn btn-primary higher bold">CONTINUE</button>
</p>
</form>