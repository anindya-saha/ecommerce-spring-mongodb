<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:forEach var="childCategory" items="${childCategories}" varStatus="loop">

	<c:if test="${loop.first}">
		<ul class="dropdown-menu">
	</c:if>
	<c:if test="${mainCategory.name eq childCategory.parent}">
		<li><a href="category/${childCategory.id}">${childCategory.name}</a></li>
	</c:if>
	
	<c:if test="${loop.last}">
		</ul>
	</c:if>
</c:forEach>