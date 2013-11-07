<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    	    	<img src="images/buttons/security.jpg" alt="Security Sign" width="92" height="65" />
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
<table class="table table-items">
    <thead>
    	<tr>
    		<th colspan="2">Item</th>
    		<th><div class="align-center">Quantity</div></th>
    		<th><div class="align-right">Price</div></th>
    	</tr>
    </thead>
    <tbody>
         
        <tr>
        	<td class="image"><img src="images/dummy/cart-items/cart-item-1.jpg" alt="" width="124" height="124" /></td>
        	<td class="desc">Adidas Converse Lorem Ipsum Dolor sit &nbsp; <a title="Remove Item" class="icon-remove-sign" href="#"></a></td>
        	<td class="qty">
        	    <input type="text" class="tiny-size" value="1" />
          	    </td>
        	<td class="price">
        	    $59
        	</td>
        </tr>
         
        <tr>
        	<td class="image"><img src="images/dummy/cart-items/cart-item-2.jpg" alt="" width="124" height="124" /></td>
        	<td class="desc">Adidas Converse Lorem Ipsum Dolor sit &nbsp; <a title="Remove Item" class="icon-remove-sign" href="#"></a></td>
        	<td class="qty">
        	    <input type="text" class="tiny-size" value="4" />
          	    </td>
        	<td class="price">
        	    $59
        	</td>
        </tr>
         
        <tr>
        	<td class="image"><img src="images/dummy/cart-items/cart-item-3.jpg" alt="" width="124" height="124" /></td>
        	<td class="desc">Adidas Converse Lorem Ipsum Dolor sit &nbsp; <a title="Remove Item" class="icon-remove-sign" href="#"></a></td>
        	<td class="qty">
        	    <input type="text" class="tiny-size" value="1" />
          	    </td>
        	<td class="price">
        	    $59
        	</td>
        </tr>
         
        <tr>
        	<td class="image"><img src="images/dummy/cart-items/cart-item-4.jpg" alt="" width="124" height="124" /></td>
        	<td class="desc">Adidas Converse Lorem Ipsum Dolor sit &nbsp; <a title="Remove Item" class="icon-remove-sign" href="#"></a></td>
        	<td class="qty">
        	    <input type="text" class="tiny-size" value="1" />
          	    </td>
        	<td class="price">
        	    $59
        	</td>
        </tr>
         
        <tr>
        	<td class="image"><img src="images/dummy/cart-items/cart-item-5.jpg" alt="" width="124" height="124" /></td>
        	<td class="desc">Adidas Converse Lorem Ipsum Dolor sit &nbsp; <a title="Remove Item" class="icon-remove-sign" href="#"></a></td>
        	<td class="qty">
        	    <input type="text" class="tiny-size" value="3" />
          	    </td>
        	<td class="price">
        	    $59
        	</td>
        </tr>
        							        <tr>
        	<td colspan="2" rowspan="2">
        	    <div class="alert alert-info">
                                         <button data-dismiss="alert" class="close" type="button">×</button>
                                         Shipping costs are calculated based on location. <a href="#">More information</a>
                                     </div>
        	</td>
        	<td class="stronger">Shipping:</td>
        	<td class="stronger"><div class="align-right">$4.99</div></td>
        </tr>
        <tr>
        	<td class="stronger">Subtotal:</td>
        	<td class="stronger"><div class="size-16 align-right">$357.81</div></td>
        </tr>
    </tbody>
</table>

<hr />

<p class="right-align">
    In the next step you will choose your shipping address &nbsp; &nbsp;
    <a href="checkout-step-2.html" class="btn btn-primary higher bold">CONTINUE</a>
</p>