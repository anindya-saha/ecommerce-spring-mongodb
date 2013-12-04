<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="col-md-6">
	<div class="block">
		<div class="header">
			<h2>Add New Product</h2>
		</div>
		<div class="content controls">
			<form class="mws-form" action="addcategory" method="POST">
				<div class="form-row">
					<div class="col-md-3">Category Name</div>
					<div class="col-md-9">
						<input type="text" name="name" value="" class="form-control">
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