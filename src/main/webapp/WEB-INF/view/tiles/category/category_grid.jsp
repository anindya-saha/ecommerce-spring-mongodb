<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
    <div class="push-up">
        <div class="row">
            
            <%@include file="/WEB-INF/view/tiles/category/category_sidebar.jsp" %>
            
            <!--  ==========  -->
            <!--  = Main content =  -->
            <!--  ==========  -->
            <section class="span9 blocks-spacer">
                
                <!--  ==========  -->
                <!--  = Title =  -->
                <!--  ==========  -->
                <div class="underlined push-down-20">
                    <div class="row">
                        <div class="span5">
                            <h3><span class="light">Search:</span>${category.name}</h3>
                        </div>
                        <div class="span4">
                            <div class="form-inline sorting-by">
                                <label for="isotopeSorting" class="black-clr">Sort:</label>
                                <select id="isotopeSorting" class="span3">
                                    <option value='{"sortBy":"price", "sortAscending":"true"}'>By Price (Low to High) &uarr;</option>
                                    <option value='{"sortBy":"price", "sortAscending":"false"}' >By Price (High to Low) &darr;</option>
                                    <option value='{"sortBy":"name", "sortAscending":"true"}' >By Name (Low to High) &uarr;</option>
                                    <option value='{"sortBy":"name", "sortAscending":"false"}' >By Name (High to Low) &darr;</option>
                                    <option value='{"sortBy":"popularity", "sortAscending":"true"}' >By Popularity (Low to High) &uarr;</option>
                                    <option value='{"sortBy":"popularity", "sortAscending":"false"}' >By Popularity (High to Low) &darr;</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div> <!-- /title -->
                
                <!--  ==========  -->
                <!--  = Products =  -->
                <!--  ==========  -->
                <div class="row popup-products">
                    <div id="isotopeContainer" class="isotope-container">
                	    
            	        <%@include file="/WEB-INF/view/tiles/category/category_single_product.jsp" %>
                	    
                	</div>
            	</div>
            	<hr />
            </section> <!-- /main content -->
        </div>
    </div>
</div> <!-- /container -->