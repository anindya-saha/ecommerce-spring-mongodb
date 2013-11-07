<%@ attribute name="childList" type="com.ecommerce.model.Category" required="true" %>
<%@ attribute name="parentName" required="true" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="categoryTag" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ import java.util.*; %>
<c:forEach var="childCategory" items="${childList}" varStatus="loop">
	<c:if test="${loop.first}">
		<ul class="dropdown-menu">
	</c:if>

	<c:if test="${parentName eq childCategory.name}">
		<li>
			<a href="features.html#headings">${childCategory.name}</a>
<%--  			<categoryTag:category childList="${childList}" parentName="${parentName}"/> --%>
 		</li>
	</c:if>

	<c:if test="${loop.last}">
 		</ul> 
	</c:if>
</c:forEach>