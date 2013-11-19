<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="mws-panel grid_8">
	<div class="mws-panel-header">
		<span><i class="icon-table"></i>Add Image for ${product.name} - (${product.id}) </span>
	</div>
	<div class="mws-panel-body no-padding">
	<form action="upload-product-image" method="post" enctype="multipart/form-data">
		<input type="hidden" name="productId" value=""/>
		<input type="file" name="uploadedFile"/>
		<input type="submit"/>
	</form>
</div>
</div>