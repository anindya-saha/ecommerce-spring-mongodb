<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-12">
	<nav class="navbar brb" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/admin"><img src="${pageContext.request.contextPath}/admin_static/img/logo.png"></a>
		</div>
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="${pageContext.request.contextPath}/admin">dashboard</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Management</a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/admin/products">Product Management</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/categories">Category Management</a>
						<li><a href="${pageContext.request.contextPath}/admin/add-blog-post">Blog Management</a></li>
						</li>
					</ul></li>
				<li class="active"><a href="${pageContext.request.contextPath}/admin/orders">Orders</a></li>
				<li><a href="widgets.html">widgets</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">pages</a>
					<ul class="dropdown-menu">
						<li><a href="sample_login.html">Login</a></li>
						<li><a href="sample_registration.html">Registration</a></li>
						<li><a href="sample_profile.html">User profile</a></li>
						<li><a href="sample_profile_social.html">Social profile</a></li>
						<li><a href="sample_edit_profile.html">Edit profile</a></li>
						<li><a href="sample_mail.html">Mail</a></li>
						<li><a href="sample_search.html">Search</a></li>
						<li><a href="sample_invoice.html">Invoice</a></li>
						<li><a href="sample_contacts.html">Contacts</a></li>
						<li><a href="sample_tasks.html">Tasks</a></li>
						<li><a href="sample_timeline.html">Timeline</a></li>
						<li><a href="#">Email templates</a>
							<ul class="dropdown-submenu">
								<li><a href="email_sample_1.html">Sample 1</a></li>
								<li><a href="email_sample_2.html">Sample 2</a></li>
								<li><a href="email_sample_3.html">Sample 3</a></li>
								<li><a href="email_sample_4.html">Sample 4</a></li>
							</ul></li>
						<li><a href="#">Error pages</a>
							<ul class="dropdown-submenu">
								<li><a href="sample_error_403.html">403 Forbidden</a></li>
								<li><a href="sample_error_404.html">404 Not Found</a></li>
								<li><a href="sample_error_500.html">500 Internal Server
										Error</a></li>
								<li><a href="sample_error_503.html">503 Service
										Unavailable</a></li>
								<li><a href="sample_error_504.html">504 Gateway Timeout</a>
								</li>
							</ul></li>
					</ul></li>
			</ul>
		</div>
	</nav>
</div>