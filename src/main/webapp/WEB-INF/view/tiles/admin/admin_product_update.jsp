<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2>Update Product</h2>

		<form action="productsave" method="post">
			<input type="hidden" name="productUpdate" value="true"/>
			
			<input type="hidden" name="productid" value="${product.id}"/>
			
			<label for="name">Product productName</label>
			<input type="text" id="productName" name="productName" value="${product.name}"/><br></br>
			
			<label for="name">Product productPrice</label>
			<input type="text" id="productPrice" name="productPrice" value="${product.price}"/><br></br>
			
			<label for="name">Product productInvalidPrice</label>
			<input type="text" id="productInvalidPrice" name="productInvalidPrice" value="${product.invalidPrice}"/><br></br>
			
			<label for="name">Product productCategory</label>
			<c:forEach var="category" items="${categoryList}" varStatus="count">
				<input type="checkbox" name="productCategory" value="${category.id}"/>${category.id}
				<c:if test="${not empty category.ancestors}">
					<c:forEach var="ancestors" items="${category.ancestors}"> 
						-->${ancestors}
					</c:forEach>
				</c:if><br>
			</c:forEach>
			
			<label for="name">Product productShipmentType</label>
			<input type="text" id="productShipmentType" name="productShipmentType" value="${product.shipmentType}"/><br></br>
			
			<label for="name">Product productStock</label>
			<input type="text" id="productStock" name="productStock" value="${product.stock}"/><br></br>
			
			<label for="name">Product productRating</label>
			<input type="text" id="productRating" name="productRating" value="${product.rating}"/><br></br>
			
			<label for="name">Product productDescription</label>
			<textarea id="productDescription" name="productDescription" style="width:400px;">${product.description}</textarea><br></br>
			
			<input type="submit" value="Submit"/>
		</form>