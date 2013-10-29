<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--  ==========  -->
<!--  = Breadcrumbs =  -->
<!--  ==========  -->
<div class="darker-stripe">
    <div class="container">
    	<div class="row">
    		<div class="span12">
    		    <ul class="breadcrumb">
                 <li>
                     <a href="${pageContext.request.contextPath}">Homepage</a>
                 </li>
                 <li><span class="icon-chevron-right"></span></li>
                 <c:forEach var="category" items="${categoryList}" varStatus="count">
	                 <li>
	                     <a href="category/${category.key}">${category.value}</a>
	                 </li>
	                 <c:if test="${fn:length(categoryList) ne count.count }">
	                 	<li><span class="icon-chevron-right"></span></li>
	                 </c:if>
                 </c:forEach>
             </ul>
    		</div>
    	</div>
    </div>
</div>