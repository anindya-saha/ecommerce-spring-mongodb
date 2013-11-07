<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--  ==========  -->
<!--  = Sidebar =  -->
<!--  ==========  -->
<aside class="span3 left-sidebar">
    <div class="sidebar-item sidebar-filters" id="sidebarFilters">
        
        <!--  ==========  -->
        <!--  = Sidebar Title =  -->
        <!--  ==========  -->
        <div class="underlined">
        	<h3><span class="light">Shop</span> by filters</h3>
        </div>
        
        <!--  ==========  -->
        <!--  = Categories =  -->
        <!--  ==========  -->
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle" data-toggle="collapse" href="#filterOne">Categories <b class="caret"></b></a>
                            </div>
                            <h2>${parentCategory.name}</h2>
                            <div id="filterOne" class="accordion-body collapse in">
                                <div class="accordion-inner">
                                	<c:forEach var="childCategory" items="${childCategories}">
                                    	<a href="category/${childCategory.id}" data-target=".${childCategory.id}" class="selectable"><i class="box"></i>${childCategory.name}</a>
                                    </c:forEach>
                                </div>
                            </div>
                        </div> <!-- /categories -->
        
        <!--  ==========  -->
        <!--  = Prices slider =  -->
        <!--  ==========  -->
        <div class="priceRangeMin hide">0</div>
        <div class="priceRangeMax hide">5000</div>
        <div class="accordion-group">
            <div class="accordion-heading">
                <a class="accordion-toggle" data-toggle="collapse" href="#filterPrices">Price <b class="caret"></b></a>
            </div>
            <div id="filterPrices" class="accordion-body in collapse">
                <div class="accordion-inner with-slider">
                    <div class="jqueryui-slider-container">
                        <div id="pricesRange"></div>
                    </div>
                    <input type="text" data-initial="432" class="max-val span1 pull-right" disabled="" />
                    <input type="text" data-initial="99" class="min-val span1" disabled="" />
                </div>
            </div>
        </div> <!-- /prices slider -->
        
        <!--  ==========  -->
        <!--  = Size filter =  -->
        <!--  ==========  -->
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#filterTwo">Size <b class="caret"></b></a>
                            </div>
                            <div id="filterTwo" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <a href="#" data-target="xs" data-type="size" class="selectable detailed"><i class="box"></i> XS</a>
<a href="#" data-target="s" data-type="size" class="selectable detailed"><i class="box"></i> S</a>
<a href="#" data-target="m" data-type="size" class="selectable detailed"><i class="box"></i> M</a>
<a href="#" data-target="l" data-type="size" class="selectable detailed"><i class="box"></i> L</a>
<a href="#" data-target="xl" data-type="size" class="selectable detailed"><i class="box"></i> XL</a>
<a href="#" data-target="xxl" data-type="size" class="selectable detailed"><i class="box"></i> XXL</a>
 
                                </div>
                            </div>
                        </div> <!-- /size filter -->
        
        <!--  ==========  -->
        <!--  = Color filter =  -->
        <!--  ==========  -->
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#filterThree">Color <b class="caret"></b></a>
                            </div>
                            <div id="filterThree" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <a href="#" data-target="red" data-type="color" class="selectable detailed"><i class="box"></i> Red</a>
<a href="#" data-target="green" data-type="color" class="selectable detailed"><i class="box"></i> Green</a>
<a href="#" data-target="blue" data-type="color" class="selectable detailed"><i class="box"></i> Blue</a>
<a href="#" data-target="pink" data-type="color" class="selectable detailed"><i class="box"></i> Pink</a>
<a href="#" data-target="purple" data-type="color" class="selectable detailed"><i class="box"></i> Purple</a>
<a href="#" data-target="orange" data-type="color" class="selectable detailed"><i class="box"></i> Orange</a>
 
                                </div>
                            </div>
                        </div> <!-- /color filter -->
        
        <!--  ==========  -->
        <!--  = Brand filter =  -->
        <!--  ==========  -->
                        <div class="accordion-group">
                            <div class="accordion-heading">
                                <a class="accordion-toggle collapsed" data-toggle="collapse" href="#filterFour">Brand <b class="caret"></b></a>
                            </div>
                            <div id="filterFour" class="accordion-body collapse">
                                <div class="accordion-inner">
                                    <a href="#" data-target="s-oliver" data-type="brand" class="selectable detailed"><i class="box"></i> S. Oliver</a>
<a href="#" data-target="nike" data-type="brand" class="selectable detailed"><i class="box"></i> Nike</a>
<a href="#" data-target="naish" data-type="brand" class="selectable detailed"><i class="box"></i> Naish</a>
<a href="#" data-target="adidas" data-type="brand" class="selectable detailed"><i class="box"></i> Adidas</a>
<a href="#" data-target="puma" data-type="brand" class="selectable detailed"><i class="box"></i> Puma</a>
<a href="#" data-target="shred" data-type="brand" class="selectable detailed"><i class="box"></i> Shred</a>
 
                                </div>
                            </div>
                        </div> <!-- /brand filter -->
        
        <a href="#" class="remove-filter" id="removeFilters"><span class="icon-ban-circle"></span> Remove All Filters</a>
        
    </div>
</aside> <!-- /sidebar -->