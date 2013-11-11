<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Statistics Button Container -->
<div class="mws-stat-container clearfix">

	<!-- Statistic Item -->
	<a class="mws-stat" href="#"> <!-- Statistic Icon (edit to change icon) -->
		<span class="mws-stat-icon icol32-building"></span> <!-- Statistic Content -->
		<span class="mws-stat-content"> <span class="mws-stat-title">Floors
				Climbed</span> <span class="mws-stat-value">324</span>
	</span>
	</a> <a class="mws-stat" href="#"> <!-- Statistic Icon (edit to change icon) -->
		<span class="mws-stat-icon icol32-sport"></span> <!-- Statistic Content -->
		<span class="mws-stat-content"> <span class="mws-stat-title">Calories
				Burned</span> <span class="mws-stat-value down">74%</span>
	</span>
	</a> <a class="mws-stat" href="#"> <!-- Statistic Icon (edit to change icon) -->
		<span class="mws-stat-icon icol32-walk"></span> <!-- Statistic Content -->
		<span class="mws-stat-content"> <span class="mws-stat-title">Kilometers
				Walked</span> <span class="mws-stat-value">14</span>
	</span>
	</a> <a class="mws-stat" href="#"> <!-- Statistic Icon (edit to change icon) -->
		<span class="mws-stat-icon icol32-bug"></span> <!-- Statistic Content -->
		<span class="mws-stat-content"> <span class="mws-stat-title">Bugs
				Fixed</span> <span class="mws-stat-value up">22%</span>
	</span>
	</a> <a class="mws-stat" href="#"> <!-- Statistic Icon (edit to change icon) -->
		<span class="mws-stat-icon icol32-car"></span> <!-- Statistic Content -->
		<span class="mws-stat-content"> <span class="mws-stat-title">Cars
				Repaired</span> <span class="mws-stat-value">77</span>
	</span>
	</a>
</div>
<div class="mws-panel grid_5">
	<div class="mws-panel-header">
		<span><i class="icon-graph"></i> Charts</span>
	</div>
	<div class="mws-panel-body">
		<div id="mws-dashboard-chart" style="height: 222px;"></div>
	</div>
</div>
<div class="mws-panel grid_3">
	<div class="mws-panel-header">
		<span><i class="icon-book"></i> Website Summary</span>
	</div>
	<div class="mws-panel-body no-padding">
		<ul class="mws-summary clearfix">
			<li><span class="key"><i class="icon-support"></i>
					Support Tickets</span> <span class="val"> <span class="text-nowrap">332</span>
			</span></li>
			<li><span class="key"><i class="icon-certificate"></i>
					Commision</span> <span class="val"> <span class="text-nowrap">71%
						<i class="up icon-arrow-up"></i>
				</span>
			</span></li>
			<li><span class="key"><i class="icon-shopping-cart"></i>
					This Week Sales</span> <span class="val"> <span class="text-nowrap">144
						<i class="down icon-arrow-down"></i>
				</span>
			</span></li>
			<li><span class="key"><i class="icon-install"></i> Cash
					Deposit</span> <span class="val"> <span class="text-nowrap">$6,421</span>
			</span></li>
			<li><span class="key"><i class="icon-key"></i> Last Sign
					In</span> <span class="val"> <span class="text-nowrap">September
						21, 2012</span>
			</span></li>
			<li><span class="key"><i class="icon-windows"></i>
					Operating System</span> <span class="val"> <span
					class="text-nowrap">Debian Linux</span>
			</span></li>
		</ul>
	</div>
</div>
<div class="mws-panel grid_8">
	<div class="mws-panel-header">
		<span><i class="icon-table"></i>Products</span>
	</div>
	<div class="mws-panel-body no-padding">
		<table class="mws-table">
			<thead>
				<tr>
					<th>id</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Product InvalidPrice</th>
					<th>Product Category</th>
					<th>Product Brand</th>
					<th>Product Stock</th>
					<th>Product Rating</th>
					<th>Product Added Date</th>
					<th>Product Comments</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${productList}">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.invalidPrice}</td>
					<td>${product.category.parent}/${product.category.name}</td>
					<td>${product.brand.name}</td>
					<td>${product.stock}</td>
					<td>${product.rating}</td>
					<td>${product.addedDate}</td>
					<td>
					<c:forEach var="comment" items="${product.comment}">
						${comment.comment}
					</c:forEach>
					</td>
					<td><a type="button" class="btn" href="${pageContext.request.contextPath}/admin/product-update?productId=${product.id}">Update</a></td>
					<td><a type="button" class="btn" onclick="window.location='admin/productupdate?productId=${product.id}'">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>