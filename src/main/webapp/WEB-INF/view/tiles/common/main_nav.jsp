<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<li class="active"><a
	href="${pageContext.request.contextPath}/homepage"><i
		class="icon-home"></i></a></li>
<%-- 
	// TODO , this will be a custom taglib for endless tree category(now its limited)
 --%>
<c:forEach var="category" items="${catList}">
	<li><c:if test="${empty category.ancestors}">
			<a href="${pageContext.request.contextPath}/category/${category.id}">${category.name} <i
				class="icon-caret-down"></i>
			</a>
			<div>
				<ul>
					<c:forEach var="childCategory" items="${catList}" varStatus="count">
						<c:if test="${childCategory.parent eq category.name}">

							<li>
								<a href="${pageContext.request.contextPath}/category/${childCategory.id}">${childCategory.name}</a>
								<div>
									<ul>
										<c:forEach var="deepCategory" items="${catList}"
											varStatus="count">
											<c:if test="${deepCategory.parent eq childCategory.name}">
												<li><a href="${pageContext.request.contextPath}/category/${deepCategory.id}">-${deepCategory.name}</a></li>
												<c:set value="true" var="ico"/>
											</c:if>
										</c:forEach>
									</ul>
								</div>
							</li>

						</c:if>
					</c:forEach>
				</ul>
			</div>
		</c:if></li>
</c:forEach>