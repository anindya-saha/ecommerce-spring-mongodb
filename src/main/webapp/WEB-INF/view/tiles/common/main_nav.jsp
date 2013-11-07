<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="categoryTag" %>
<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
</button>

<!--  ==========  -->
<!--  = Menu =  -->
<!--  ==========  -->
<div class="nav-collapse collapse">
  <ul class="nav" id="mainNavigation">
    <li class="dropdown active">
        <a href="index.html" class="dropdown-toggle"> Home <b class="caret"></b> </a>
        <ul class="dropdown-menu">
            <li class="active"><a href="index.html">Default Theme</a></li>
            <li><a href="index-grass-green.html">Grass Green Theme</a></li>
            <li><a href="index-oil-green.html">Oil Green Theme</a></li>
            <li><a href="index-gray.html">Gray Theme</a></li>
        </ul>
    </li>
    
    <li class="dropdown">
        <a href="shop.html" class="dropdown-toggle"> Shop <b class="caret"></b> </a>
        <ul class="dropdown-menu">
            <li><a href="shop.html">Default Layout</a></li>
            <li><a href="shop-no-sidebar.html">Full Width</a></li>
            <li><a href="product.html">Single Product</a></li>
            <li><a href="shop-search.html">Search Results</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="blog.html" class="dropdown-toggle">Blog <b class="caret"></b> </a>
        <ul class="dropdown-menu">
            <li><a href="blog.html">Default Layout</a></li>
            <li><a href="blog-single.html">Single Post</a></li>
            <li><a href="blog-search.html">Search Results</a></li>
            <li><a href="404.html">404 Page</a></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="features.html" class="dropdown-toggle">Features <b class="caret"></b> </a>
        <ul class="dropdown-menu">
            <li class="dropdown">
            <a href="icons.html" class="dropdown-toggle"><i class="icon-caret-right pull-right visible-desktop"></i> Icons</a>
            <ul class="dropdown-menu">
                    <li><a href="features.html#headings">Headings</a></li>
                    <li><a href="features.html#alertBoxes">Alert Boxes</a></li>
                    <li><a href="features.html#tabs">Tabs</a></li>
                    <li><a href="features.html#buttons">Buttons</a></li>
                    <li><a href="features.html#toggles">Toggles</a></li>
                    <li><a href="features.html#quotes">Quotes</a></li>
                    <li><a href="features.html#gallery">Gallery Grids</a></li>
                    <li><a href="features.html#code">Code</a></li>
                    <li><a href="features.html#columns">Columns</a></li>
                    <li><a href="features.html#maps">Maps</a></li>
                    <li><a href="features.html#progress">Progress Bars</a></li>
                    <li><a href="features.html#tables">Tables</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="features.html" class="dropdown-toggle"><i class="icon-caret-right pull-right visible-desktop"></i> All Features</a>
                <ul class="dropdown-menu">
                    <li><a href="features.html#headings">Headings</a></li>
                    <li><a href="features.html#alertBoxes">Alert Boxes</a></li>
                    <li><a href="features.html#tabs">Tabs</a></li>
                    <li><a href="features.html#buttons">Buttons</a></li>
                    <li><a href="features.html#toggles">Toggles</a></li>
                    <li><a href="features.html#quotes">Quotes</a></li>
                    <li><a href="features.html#gallery">Gallery Grids</a></li>
                    <li><a href="features.html#code">Code</a></li>
                    <li><a href="features.html#columns">Columns</a></li>
                    <li><a href="features.html#maps">Maps</a></li>
                    <li><a href="features.html#progress">Progress Bars</a></li>
                    <li><a href="features.html#tables">Tables</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li class="dropdown">
    	<a href="about-us.html" class="dropdown-toggle">Categories <b class="caret"></b></a>
    	<ul class="dropdown-menu">
			<c:forEach var="mainCategory" items="${mainCategory}">
				<li class="dropdown">
				     <a href="category/${mainCategory.id}" class="dropdown-toggle"><i class="icon-caret-right pull-right visible-desktop"></i>${mainCategory.name}</a>
					<%@include file="/WEB-INF/view/tiles/common/child_category.jsp" %>
<%-- 						<c:forEach var="childCat" items="${childCategories}"> --%>
<%-- 							<categoryTag:category childList="${childCategories}" parentName="${mainCategory.name}"/> --%>
<%-- 						</c:forEach> --%>
				</li>
			</c:forEach>
	         
       	</ul>
    </li>
    <li><a href="contact.html">Contact</a></li>
  </ul>
  
  <!--  ==========  -->
  <!--  = Search form =  -->
  <!--  ==========  -->
  <form class="navbar-form pull-right" action="#" method="get" />
      <button type="submit"><span class="icon-search"></span></button>
      <input type="text" class="span1" name="search" id="navSearchInput" />
  </form>
</div><!-- /.nav-collapse -->