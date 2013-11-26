<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="col-md-6">
	<div class="block">
		<div class="header">
			<h2>Add New Product</h2>
		</div>
		<div class="content controls">
			<form class="mws-form" action="productsave" method="POST">
				<input type="hidden" name="productid" value="" /> <input
					type="hidden" name="productUpdate" value="false" />
				<div class="form-row">
					<div class="col-md-3">Product Name</div>
					<div class="col-md-9">
						<input type="text" name="productName" value=""
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Price</div>
					<div class="col-md-9">
						<input type="text" name="productPrice" value=""
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Invalid Price</div>
					<div class="col-md-9">
						<input type="text" name="productInvalidPrice" value=""
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Brand</div>
					<div class="col-md-9">
						<c:forEach var="brand" items="${brandList}" varStatus="count">
							<div class="radiobox-inline">
								<label><input name="brandId" value="${brand.id}"
									id="${brand.id}" type="radio" /> ${brand.name}</label>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Category:</div>
					<div class="col-md-9">
						<c:forEach var="category" items="${categoryList}"
							varStatus="count">
							<div class="checkbox-inline">
								<label><input type="checkbox" name="productCategory"
									${product.category.id eq category.id ? 'checked="true"':''}
									value="${category.id}" />${category.name}<c:if
										test="${not empty category.ancestors}">
										<c:forEach var="ancestors" items="${category.ancestors}"> 
									-->${ancestors}
								</c:forEach>
									</c:if></label>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Shipment type:</div>
					<div class="col-md-9">
						<div class="radiobox-inline">
							<label><input name="productShipmentType"
								value="FREE_SHIPMENT" id="FREE_SHIPMENT" type="radio" />
								FREE_SHIPMENT</label> <label><input name="productShipmentType"
								value="BUYER_PAYS" id="BUYER_PAYS" type="radio" /> BUYER_PAYS</label>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Stock</div>
					<div class="col-md-9">
						<input type="text" name="productStock" value=""
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Rating</div>
					<div class="col-md-9">
						<input type="text" name="productRating" value=""
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Short Description</div>
					<div class="col-md-9">
						<textarea class="form-control" name="productShortDescription"></textarea>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Description</div>
					<div class="col-md-9">
						<textarea class="form-control" name="productDescription"></textarea>
					</div>
				</div>
				<div class="footer">
					<div class="col-md-3">Confirmation</div>
					<div class="col-md-9">
						<button class="btn">Confirm</button>
						<button class="btn">Back</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>