<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Ecommerce Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/ico" href="favicon.html">

<tiles:insertAttribute name="csspaths" />
<tiles:insertAttribute name="scripts" />
</head>
<body>
	<tiles:insertAttribute name="header" />
	<div class="container">
		<div class="row"></div>
		<div class="row">
			<tiles:insertAttribute name="container" />
		</div>

		<div class="row">
			<div class="page-footer">
				<div class="page-footer-wrap">
					<div class="side pull-left">Copyirght &amp;COPY; YourCompany
						2013. All rights reserved.</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>