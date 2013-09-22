<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<li><a href="/homepage">Home</a> <span class="divider">/</span></li>
	<c:forEach var="category" items="${categoryList}" varStatus="count">
		<li><a href="${category.key}">${category.value}</a> <span class="divider">/</span></li>
	</c:forEach>
<li class="active">${prodCategory}</li>