<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!--  ==========  -->
<!--  = Header =  -->
<!--  ==========  -->
<header id="header">
    <div class="container">
        <div class="row">
            
            <!--  ==========  -->
            <!--  = Logo =  -->
            <!--  ==========  -->
            <div class="span7">
                <a class="brand" href="/">
                    <img src="${staticServer}/static/images/logo.png" alt="Webmarket Logo" width="48" height="48" /> 
                    <span class="pacifico">Webmarket</span> 
                    <span class="tagline">Ecommerce</span> 
                </a>
            </div>
            
            <!--  ==========  -->
            <!--  = Social Icons =  -->
            <!--  ==========  -->
            <div class="span5">
                <div class="top-right">
                    <div class="icons">
                        <a href="http://www.facebook.com/ProteusNet"><span class="zocial-facebook"></span></a>
                        <a href="skype:primozcigler?call"><span class="zocial-skype"></span></a>
                        <a href="https://twitter.com/proteusnetcom"><span class="zocial-twitter"></span></a>
                        <a href="http://eepurl.com/xFPYD"><span class="zocial-rss"></span></a>
                        <a href="#"><span class="zocial-wordpress"></span></a>
                        <a href="#"><span class="zocial-android"></span></a>
                        <a href="#"><span class="zocial-html5"></span></a>
                        <a href="#"><span class="zocial-windows"></span></a>
                        <a href="#"><span class="zocial-apple"></span></a>
                    </div>
                    <div class="register">
                    	<c:choose>
	                        <c:when test="${not empty user}">
                                Welcome ${user.name} - ${user.email} - <a href="/user/account">My Account</a> - <a href="/user/logout">Logout</a>
	                        </c:when>
	                        <c:otherwise>
                                <a href="#loginModal" role="button" data-toggle="modal">Login</a> or 
                       			<a href="#registerModal" role="button" data-toggle="modal">Register</a>
	                        </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div> <!-- /social icons -->
        </div>
    </div>
</header>

<!--  ==========  -->
<!--  = Main Menu / navbar =  -->
<!--  ==========  -->
<div class="navbar navbar-static-top" id="stickyNavbar">
  <div class="navbar-inner">
    <div class="container">
      <div class="row">
        <div class="span9">
            <%@include file="/WEB-INF/view/tiles/common/main_nav.jsp" %>
        </div>
        
        <!--  ==========  -->
        <!--  = Cart =  -->
        <!--  ==========  -->
        <div class="span3" id="shopping-cart">
			<%@include file="/WEB-INF/view/tiles/common/header_cart.jsp" %>
        </div> <!-- /cart -->
        <div class="span3" id="cart-ajax-loader">
        </div>
      </div>
    </div>
  </div>
</div> <!-- /main menu -->