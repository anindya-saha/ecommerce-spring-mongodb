<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="mws-panel grid_8">
	<div class="mws-panel-header">
		<span><i class="icon-pencil"></i> Add New Product</span>
	</div>
	<div class="mws-panel-body no-padding">
		<form class="mws-form" action="productsave" method="POST">
			<input type="hidden" name="productid" value=""/>
			<input type="hidden" name="productUpdate" value="true"/>
			<div class="mws-form-inline">
				<div class="mws-form-row">
					<label class="mws-form-label">Product Name</label>
					<div class="mws-form-item">
						<input type="text" name="productName" value="" class="large">
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Price</label>
					<div class="mws-form-item">
						<input type="text" name="productPrice" value="" class="large">
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Invalid Price</label>
					<div class="mws-form-item">
						<input type="text" name="productInvalidPrice" value="" class="large">
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Brand</label>
					<div class="mws-form-item">
                        <div id="mws-ui-button-radio">
                        	<c:forEach var="brand" items="${brandList}" varStatus="count">
                            	<input name="brand" value="${brand.id}" id="${brand.id}" class="ibutton" type="radio"/> <label for="${brand.id}">${brand.name}</label>
                            </c:forEach>
                        </div>
                    </div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Category</label>
					<div class="mws-form-item">
						<c:forEach var="category" items="${categoryList}" varStatus="count">
							<input type="checkbox" class="ibutton" name="productCategory" ${product.category.id eq category.id ? 'checked="true"':''} value="${category.id}"/>${category.name}
							<c:if test="${not empty category.ancestors}">
								<c:forEach var="ancestors" items="${category.ancestors}"> 
									-->${ancestors}
								</c:forEach>
							</c:if><br>
						</c:forEach>
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Shipment Type</label>
					<div class="mws-form-item">
						<input type="text" name="productShipmentType" value="" class="large">
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Stock</label>
					<div class="mws-form-item">
						<input type="text" name="productStock" value="" class="large">
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Rating</label>
					<div class="mws-form-item">
						<input type="text" name="productRating" value="" class="large">
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Product Description</label>
					<div class="mws-form-item">
						<textarea class="large autosize" name="productDescription"></textarea>
					</div>
				</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Confirmation</label>
					<div class="mws-form-item">
						<button class="btn btn-danger">Confirm</button>
						<button class="btn btn-inverse">Back</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>