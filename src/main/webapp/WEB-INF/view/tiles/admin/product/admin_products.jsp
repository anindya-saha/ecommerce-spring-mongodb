<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-md-12">
					<div class="block">
						<div class="header">
							<h2>
								All Products
							</h2>
							<div class="btn-toolbar">
			<div class="btn-group">
				<a href="${pageContext.request.contextPath}/admin/add-new-product" class="btn"><i class="icol-add"></i> Add New Product</a>
			</div>
		</div>
						</div>
						<div class="content">
							<table class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
					<th>id</th>
					<th>Product Name</th>
					<th>Product Price</th>
					<th>Product InvalidPrice</th>
					<th>Product Category</th>
					<th>Product Brand</th>
					<th>Product Stock</th>
					<th>Product Shipment Type</th>
					<th>Product Rating</th>
					<th>Product Added Date</th>
					<th>Product Comments</th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
								</thead>
								<tbody>
									<c:forEach var="product" items="${productList}">
				<tr>
					<td>${product.id}</td>
					<td><a href="product?productid=${product.id}">${product.name}</a></td>
					<td>${product.price}</td>
					<td>${product.invalidPrice}</td>
					<td>${product.category.parent}/${product.category.name}</td>
					<td>${product.brand.name}</td>
					<td>${product.stock}</td>
					<td>${product.shipmentType}</td>
					<td>${product.rating}</td>
					<td>${product.addedDate}</td>
					<td>
					<c:forEach var="comment" items="${product.comment}">
						${comment.comment}
					</c:forEach>
					</td>
					<td><a type="button" class="btn" href="${pageContext.request.contextPath}/admin/product-add-image?productId=${product.id}">Add Image(s)</a></td>
					<td><a type="button" class="btn" href="${pageContext.request.contextPath}/admin/product-update?productId=${product.id}">Update</a></td>
					<td><a type="button" class="btn" onclick="window.location='admin/productupdate?productId=${product.id}'">Delete</a></td>
				</tr>
				</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>