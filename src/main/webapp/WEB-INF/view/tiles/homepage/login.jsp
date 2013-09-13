<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<div class="row">

	<div class="span9">
		<div class="login">
			<table>
				<tr>
					<td width="50%">
						<h3>New Customer</h3>
						<p>By creating an account you will be able to shop faster, be
							up to date on an order's status, and keep track of the orders you
							have previously made.</p> <a href="#" class="btn">Register</a>
					</td>

					<td width="50%">
						<h3>Returning Customer</h3>
						<form method="post" action="login/login-process">
							<div class="controls">
								<label>Your Username: <span class="text-error">*</span></label> <input
									name="name" type="text" placeholder="example@example.com">
							</div>
							<div class="controls">
								<label>Your Password: <span class="text-error">*</span></label>
								<input type="password" name="password" placeholder="**************">
							</div>
							<div class="controls">
								<label class="checkbox"> <input type="checkbox">
									Check me out
								</label>
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
						</form>
						<!--end form-->
					</td>
				</tr>
			</table>
		</div>
		<!--end login-->
	</div>
	<!--end span9-->


	<div class="span3">
		<div class="titleHeader clearfix">
			<h3>Categories</h3>
		</div>
		<!--end titleHeader-->
		<ul class="unstyled my-account">
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Login or Register</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Forget my Password</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> My Account</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> My wishlist</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Order History</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Downloads</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Returns</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> TRANSACTIONS</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Newlatters</a></li>
		</ul>
	</div>
	<!--end span3-->

</div>
<!--end row-->
