<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<!--[if lt IE 8]>      <html class="no-js lt-ie10 lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9]>         <html class="no-js lt-ie10"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
  <head>
	<tiles:insertAttribute name="metas"/>
	<title>Ecommerce</title>
	<tiles:insertAttribute name="cssPaths"/>
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="container-row1"/>
	<tiles:insertAttribute name="container-row2"/>
	<tiles:insertAttribute name="container-row3"/>
	<tiles:insertAttribute name="container-row4"/>
	<tiles:insertAttribute name="container-row5"/>
	<tiles:insertAttribute name="footer"/>
	<tiles:insertAttribute name="modal-windows"/>
	<tiles:insertAttribute name="scripts"/>
</body>
</html>