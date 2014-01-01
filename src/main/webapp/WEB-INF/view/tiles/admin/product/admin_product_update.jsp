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
				<input type="hidden" name="productid" value="${product.id}"/>
				<input type="hidden" name="productUpdate" value="true"/>
				<div class="form-row">
					<div class="col-md-3">Product Name</div>
					<div class="col-md-9">
						<input type="text" name="productName" value="${product.name}"
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Price</div>
					<div class="col-md-9">
						<input type="text" name="productPrice" value="${product.price}"
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Invalid Price</div>
					<div class="col-md-9">
						<input type="text" name="productInvalidPrice" value="${product.invalidPrice}"
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Brand</div>
					<div class="col-md-9">
						<c:forEach var="brand" items="${brandList}" varStatus="count">
							<div class="radiobox-inline">
								<label><input name="brandId" value="${brand.id}" id="${brand.id}" type="radio" ${product.brand.id eq brand.id ? 'checked="checked"' : ''}/> ${brand.name}</label>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Main Category:</div>
					<div class="col-md-9">
						<c:forEach var="mainCategory" items="${mainCategoryList}"
							varStatus="count">
							<div class="checkbox-inline">
								<label>
									<input type="checkbox" name="productCategory" value="${mainCategory.id}" ${product.category.id eq mainCategory.id ? 'checked="true"':''}/>
									${mainCategory.name}
								</label>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Child Category:</div>
					<div class="col-md-9">
						<c:forEach var="childCategory" items="${childCategoryList}"
							varStatus="count">
							<div class="checkbox-inline">
								<label>
									<input type="checkbox" name="productCategory" value="${childCategory.id}" ${product.category.id eq childCategory.id ? 'checked="true"':''}/>
									${childCategory.name}
								</label>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Shipment type:</div>
					<div class="col-md-9">
						<div class="radiobox-inline">
							<label><input name="productShipmentType" value="FREE_SHIPMENT" id="FREE_SHIPMENT" type="radio" ${product.shipmentType eq 'FREE_SHIPMENT' ? 'checked="checked"' : ''}/>
								FREE_SHIPMENT</label> <label><input name="productShipmentType"
								value="BUYER_PAYS" id="BUYER_PAYS" type="radio" ${product.shipmentType eq 'BUYER_PAYS' ? 'checked="checked"' : ''}/> BUYER_PAYS</label>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Stock</div>
					<div class="col-md-9">
						<input type="text" name="productStock" value="${product.stock}"
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Rating</div>
					<div class="col-md-9">
						<input type="text" name="productRating" value="${product.rating}"
							class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Short Description</div>
					<div class="col-md-9">
						<textarea class="form-control" name="productShortDescription">${product.shortDescription}</textarea>
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Product Description</div>
					<div class="col-md-9">
						<textarea class="form-control" name="productDescription">${product.description}</textarea>
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