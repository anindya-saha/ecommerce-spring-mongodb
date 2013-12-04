<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  ==========  -->
<!--  = Header =  -->
<!--  ==========  -->
<header>
	<div class="row">
		<div class="span2">
			<a href="index.html"><img src="images/logo-bw.png"
				alt="Webmarket Logo" width="48" height="48" /></a>
		</div>
		<div class="span6">
			<div class="center-align">
				<h1>
					<span class="light">Choose</span> Payment Method
				</h1>
			</div>
		</div>
		<div class="span2">
			<div class="right-align">
				<img src="images/buttons/security.jpg" alt="Security Sign"
					width="92" height="65" />
			</div>
		</div>
	</div>
</header>

<!--  ==========  -->
<!--  = Steps =  -->
<!--  ==========  -->
<div class="checkout-steps">
	<div class="clearfix">
		<div class="step done">
			<div class="step-badge">
				<i class="icon-ok"></i>
			</div>
			<a href="checkout-step-1.html">Shopping Cart</a>
		</div>
		<div class="step done">
			<div class="step-badge">
				<i class="icon-ok"></i>
			</div>
			<a href="checkout-step-2.html">Shipping Address</a>
		</div>
		<div class="step active">
			<div class="step-badge">2</div>
			Payment Method
		</div>
		<div class="step">
			<div class="step-badge">4</div>
			Confirm &amp; Pay
		</div>
	</div>
</div>
<!-- /steps -->

<!--  ==========  -->
<!--  = Payment =  -->
<!--  ==========  -->
<span class="btn btn-danger circle pull-left"><i
	class="icon-chevron-down"></i></span>
<div class="shifted-left-45 clearfix">
	<h3 class="no-margin">
		<span class="light">Credit</span> Card
	</h3>
	<p class="push-down-30">We accept MasterCard, Visa and American
		Express</p>

	<form action="#" method="post" class="form-horizontal form-checkout" />
	<div class="control-group">
		<label class="control-label" for="firstName">First Name<span
			class="red-clr bold">*</span></label>
		<div class="controls">
			<input type="text" id="firstName" class="span4" required="" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="lastName">Last Name<span
			class="red-clr bold">*</span></label>
		<div class="controls">
			<input type="text" id="lastName" class="span4" required="" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="cardNum">Card Number<span
			class="red-clr bold">*</span></label>
		<div class="controls">
			<input type="text" id="cardNum"
				class="span1 card-num-input center-align" maxlength="4" /> <input
				type="text" class="span1 card-num-input center-align" maxlength="4" />
			<input type="text" class="span1 card-num-input center-align"
				maxlength="4" /> <input type="text"
				class="span1 card-num-input center-align add-tooltip" maxlength="4"
				data-title="The 16 digits on the front of the card" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="cvc">CVC or CVS<span
			class="red-clr bold">*</span></label>
		<div class="controls">
			<input id="cvc" type="text" class="span1 center-align add-tooltip"
				maxlength="3" data-title="Last 3 digits on back of card" required="" />
		</div>
	</div>
	<div class="control-group">
		<label class="control-label" for="exp">Expiration Date<span
			class="red-clr bold">*</span></label>
		<div class="controls">
			<select id="exp" class="input-small month-push-right">
				<option value="-1" />Month
				<option value="1" />01
				<option value="2" />02
				<option value="3" />03
				<option value="4" />04
				<option value="5" />05
				<option value="6" />06
				<option value="7" />07
				<option value="8" />08
				<option value="9" />09
				<option value="10" />10
				<option value="11" />11
				<option value="12" />12

			</select> <select id="exp" class="input-small">
				<option value="-1" />Year
				<option value="2013" />2013
				<option value="2014" />2014
				<option value="2015" />2015
				<option value="2016" />2016
				<option value="2017" />2017
				<option value="2018" />2018
				<option value="2019" />2019

			</select>
		</div>
	</div>
	</form>
</div>

<hr />

<span class="btn btn-danger circle pull-left"><i
	class="icon-chevron-right"></i></span>
<div class="shifted-left-45 clearfix">
	<h3 class="no-margin">
		<span class="light">PayPal</span> &nbsp; &nbsp; &nbsp; <a href="#"><img
			src="images/buttons/paypal.gif" alt="PayPal" width="145" height="42" /></a>
	</h3>
</div>

<hr />

<p class="right-align">
	In the next step you will be able to review and confirm the order
	&nbsp; &nbsp; <a href="${pageContext.request.contextPath}/checkout/step-four"
		class="btn btn-primary higher bold">CONTINUE</a>
</p>


</div>