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
					data-toggle="dropdown">forms</a>
					<ul class="dropdown-menu">
						<li><a href="${pageContext.request.contextPath}/admin/products">Product Management</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/add-blog-post">Blog Management</a></li>
						<li><a href="form_validation.html">Validation and wizard</a>
						</li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">components</a>
					<ul class="dropdown-menu">
						<li><a href="component_blocks.html">Blocks and panels</a></li>
						<li><a href="component_buttons.html">Buttons</a></li>
						<li><a href="component_modals.html">Modals and popups</a></li>
						<li><a href="component_tabs.html">Tabs, accordion</a></li>
						<li><a href="component_progress.html">Progressbars</a></li>
						<li><a href="component_lists.html">List groups</a></li>
						<li><a href="component_messages.html">Messages</a></li>
						<li><a href="#">Tables</a>
							<ul class="dropdown-submenu">
								<li><a href="component_table_default.html">Default
										tables</a></li>
								<li><a href="component_table_sortable.html">Sortable
										tables</a></li>
							</ul></li>
						<li><a href="#">Layouts</a>
							<ul class="dropdown-submenu">
								<li><a href="component_layout_blank.html">Default
										layout(blank)</a></li>
								<li><a href="component_layout_custom.html">Custom
										navigation</a></li>
								<li><a href="component_layout_scroll.html">Content
										scroll</a></li>
								<li><a href="component_layout_fixed.html">Fixed content</a>
								</li>
							</ul></li>
						<li><a href="component_charts.html">Charts</a></li>
						<li><a href="component_maps.html">Maps</a></li>
						<li><a href="component_typography.html">Typography</a></li>
						<li><a href="component_gallery.html">Gallery</a></li>
						<li><a href="component_calendar.html">Calendar</a></li>
						<li><a href="component_icons.html">Icons</a></li>
					</ul></li>
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