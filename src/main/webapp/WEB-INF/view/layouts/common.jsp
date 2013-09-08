<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<tiles:insertAttribute name="metas"/>
	<title>ShopFine: eCommerce Website</title>
	<tiles:insertAttribute name="cssPaths"/>
</head>
<body>
	<div id="mainContainer" class="clearfix">
		<tiles:insertAttribute name="header"/>
		<div class="container">
			
			<tiles:insertAttribute name="container-row1"/>
			<tiles:insertAttribute name="container-row2"/>
			<tiles:insertAttribute name="container-row3"/>
			<tiles:insertAttribute name="container-row4"/>
			
		</div>
		<tiles:insertAttribute name="footer"/>
	</div>
	<tiles:insertAttribute name="scripts"/>
</body>
</html>