<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product CRUD</title>
</head>
<body>
		<h2>Add Product</h2>

		<form action="admin/productsave" method="post">

			<label for="name">Product productName</label>
			<input type="text" id="productName" name="productName"/><br></br>
			
			<label for="name">Product productPrice</label>
			<input type="text" id="productPrice" name="productPrice"/><br></br>
			
			<label for="name">Product productInvalidPrice</label>
			<input type="text" id="productInvalidPrice" name="productInvalidPrice"/><br></br>
			
			<label for="name">Product productCategory</label>
			<input type="text" id="productCategory" name="productCategory"/><br></br>
			
			<label for="name">Product productShipmentType</label>
			<input type="text" id="productShipmentType" name="productShipmentType"/><br></br>
			
			<label for="name">Product productStock</label>
			<input type="text" id="productStock" name="productStock"/><br></br>
			
			<label for="name">Product productRating</label>
			<input type="text" id="productRating" name="productRating"/><br></br>
			
			<label for="name">Product productDescription</label>
			<textarea id="productDescription" name="productDescription" style="width:400px;"></textarea><br></br>
			
			<input type="submit" value="Submit"/>
		</form>

	<table border="1">
		<tr>
		<td>productName</td>
		<td>productPrice</td>
		<td>productInvalidPrice</td>
		<td>productCategory</td>
		<td>productBrand</td>
		<td>productStock</td>
		<td>productRating</td>
		<td>productAddedDate</td>
		<td>productDescription</td>
		<td>productComment</td>
		</tr>
		<c:forEach var="product" items="${productList}">
			<tr>
				<td>${product.name}</td>
				<td>${product.price}</td>
				<td>${product.invalidPrice}</td>
				<td>${product.category.parent}/${product.category.name}</td>
				<td>${product.brand.brand}</td>
				<td>${product.stock}</td>
				<td>${product.rating}</td>
				<td>${product.addedDate}</td>
				<td>${product.description}</td>
				<td>
				<c:forEach var="comment" items="${product.comment}">
					${comment.comment}
				</c:forEach>
				</td>
				<td><input type="button" value="delete" onclick="window.location='admin/productremove?productId=${product.id}'"/></td>
				<td><input type="button" value="update" onclick="window.location='admin/productupdate?productId=${product.id}'"/></td>
			</tr>
		</c:forEach>
	</table>
	
	<br></br>
	
	<h2>Add Product Comment</h2>

		<form action="admin/addproductcomment" method="post">

			<label for="name">Select Product</label>
			<select name="productId">
				<c:forEach var="product" items="${productList}">
				<option value="${product.id}">${product.name}</option>
				</c:forEach>
			</select>
						
			<label>Comment userId</label>
			<input type="text" id="userId" name="userId"/><br></br>
			
			<label for="name">Comment userName</label>
			<input type="text" id="userName" name="userName"/><br></br>
			
			<label for="name">productComment</label>
			<input type="text" id="productComment" name="productComment"/><br></br>
			
			<label for="name">productCommentRating</label>
			<input type="text" id="productCommentRating" name="productCommentRating"/><br></br>
			
			<label for="name">productCommentStatus</label>
			<input type="text" id="productCommentStatus" name="productCommentStatus"/><br></br>
			
			<input type="submit" value="Submit"/>
		</form>
		
		<br></br>
	
	<h2>Add Category</h2>

		<form action="admin/addcategory" method="post">
						
			<label>Category Name</label>
			<input type="text" id="name" name="name"/><br></br>
			
			<label for="name">Category Ancestor(s)</label>
			<c:forEach var="category" items="${categoryList}" varStatus="count">
				<input type="checkbox" name="ancestors" value="${category.name}"/>${category.name}
				<c:if test="${not empty category.ancestors}">
					<c:forEach var="ancestors" items="${category.ancestors}"> 
						-->${ancestors}
					</c:forEach>
				</c:if><br>
			</c:forEach><br>
			
			<label for="name">Select Parent Category</label>
			<c:forEach var="category" items="${categoryList}">
				<input type="checkbox" name="parent" value="${category.name}"/>${category.name}
				<c:if test="${not empty category.parent}">-->${category.parent}</c:if><br>
			</c:forEach><br>
			
			<input type="submit" id="addCategory" value="Submit"/>
		</form>
		
	<h2>Add Brand</h2>

		<form action="admin/addbrand" method="post">
						
			<label>Brand Name</label>
			<input type="text" id="name" name="name"/><br></br>
			
			
			<input type="submit" id="addBrand" value="Submit"/>
		</form>
</body>
</html>