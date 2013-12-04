<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<form class="mws-form" action="addcategory" method="POST">
	<div class="col-md-6">
		<div class="block">
			<div class="header">
				<h2>Add New Product</h2>
			</div>
			<div class="content controls">
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
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="block">
			<div class="header">
				<h2>All Categories</h2>
				<div class="btn-toolbar">
					<div class="btn-group">
						<a
							href="${pageContext.request.contextPath}/admin/add-new-category"
							class="btn"> <i class="icol-add"></i> Add New Category
						</a>
					</div>
				</div>
			</div>
			<div class="content">
				<c:forEach var="parentCategory" items="${mainCategories}">
					<div class="radiobox-inline">
						<label class="parentCategory" data-name="${parentCategory.name}"><input name="categoryId" type="radio" />${parentCategory.name}</label>
					</div>
					<c:forEach var="childCategory" items="${childCategories}">
							<c:set var="contains" value="false" />
							<c:forEach var="item" items="${childCategory.ancestors}">
								<c:if test="${item eq parentCategory.name}">
									<c:set var="contains" value="true" />
								</c:if>
							</c:forEach>
								<c:if test="${contains}">
									<div class="radiobox-inline">
										<label class="childCategory" data-parent="${childCategory.parent}" data-childname="${childCategory.name}"><input name="categoryId" type="radio"/>${childCategory.name}</label>
									</div>
								</c:if>
							
					</c:forEach>
					<br>
					<br>
					<br>
					<br>
				</c:forEach>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript">
	$(function(){
		$(".childCategory").each(function(){
			var $this = $(this),
				tempElement;
			if( $this.data("parent") == $(".parentCategory").data("name") ){
				tempElement = $this;
				$(".parentCategory[data-name="+$this.data('parent')+"]").append(tempElement);
				
			}
			
			
			
		});
			$(".childCategory").each(function(){
				var $this = $(this),
					control,
					tempElement;
				
				console.log("top: "+$this.data("parent"));
				$(".childCategory").each(function(){
					control = $(this);
					console.log("bottom : "+control.text());
					if( $this.data("parent") == control.text() ){
						tempElement = $this;
						$(".childCategory[data-childname='"+$this.data('parent')+"']").append("<br>").append(tempElement);
						//$this.remove();
					}
				});
				console.log("\n----------------");
			});
		
	});
</script>