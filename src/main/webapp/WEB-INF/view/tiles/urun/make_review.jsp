<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${empty user}">
	You have to login to add product comment.
</c:if>
<c:if test="${not empty user}">
	<form method="POST" action="product/add-comment" class="form-horizontal">
		<div class="control-group">
		    <input type="hidden" name="productid" value="${product.id}"/>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputReview">Your Review <span class="text-error">*</span></label>
		    <div class="controls">
		      <textarea id="inputReview" name="productComment" placeholder="Put your review here..."></textarea>
		    </div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputReview">Your Review <span class="text-error">*</span></label>
		    <div class="controls">
		       <div class="btn-group" data-toggle="buttons-radio">
<!-- 				  <button type="button" class="btn" rel="tooltip" data-title="1/5"><i class="icon-star"></i></button> -->
<!-- 				  <button type="button" class="btn" rel="tooltip" data-title="2/5"><i class="icon-star"></i></button> -->
<!-- 				  <button type="button" class="btn" rel="tooltip" data-title="3/5"><i class="icon-star"></i></button> -->
<!-- 				  <button type="button" class="btn" rel="tooltip" data-title="4/5"><i class="icon-star"></i></button> -->
<!-- 				  <button type="button" class="btn" rel="tooltip" data-title="5/5"><i class="icon-star"></i></button> -->
					<input type="radio" name="productCommentRating" value="1"/>
					<input type="radio" name="productCommentRating" value="2"/>
					<input type="radio" name="productCommentRating" value="3"/>
					<input type="radio" name="productCommentRating" value="4"/>
					<input type="radio" name="productCommentRating" value="5"/>
			   </div>
		    </div>
		</div>
		<div class="control-group">
		    <div class="controls">
		      <button type="submit" class="btn btn-primary" name="submit">Add Review</button>
		    </div>
		</div>
	</form><!--end form-->
</c:if>