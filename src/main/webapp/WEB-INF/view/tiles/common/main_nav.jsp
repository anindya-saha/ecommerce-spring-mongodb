<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<li class="active"><a href="${pageContext.request.contextPath}/homepage"><i class="icon-home"></i></a></li>
<%-- 
	// TODO , this will be a custom taglib for endless tree category(now its limited)
 --%>
<c:forEach var="category" items="${catList}">
	<li>
		<c:if test="${empty category.ancestors}">
			<a href="${category.id}">${category.name}
				<c:forEach var="childCategory" items="${catList}" varStatus="count">
					<c:if test="${childCategory.parent eq category.name}">
						<c:if test="${count.count gt 0}">
							<i class="icon-caret-down"></i>
						</c:if>
					</c:if>
				</c:forEach>
			</a>
			<c:forEach var="childCategory" items="${catList}">
				<c:if test="${childCategory.parent eq category.name}">
		 			<div>
			  			<ul>
			  				<li>
			  					<a href="${childCategory.id}">${childCategory.name}</a>
			  					<c:forEach var="deepCategory" items="${catList}" varStatus="count">
								<c:if test="${deepCategory.parent eq childCategory.name}">
							 		<li><a href="${deepCategory.id}">-${deepCategory.name}</a></li>
								</c:if>
						</c:forEach>
			  				</li>
			   			</ul>
		   			</div>
		  		</c:if>
	 		</c:forEach>
	 	</c:if>
	</li>
</c:forEach>