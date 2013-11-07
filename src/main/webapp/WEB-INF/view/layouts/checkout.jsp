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

   
  <body class="checkout-page">
   
    
     
    
    
    <div class="container">
        <div class="row">
            
            <!--  ==========  -->
            <!--  = Main content =  -->
            <!--  ==========  -->
            <section class="span12">
                
                <div class="checkout-container">
                    <div class="row">
                    	<div class="span10 offset1">
                    	    <tiles:insertAttribute name="content"/>
                    	</div>
                    </div>
                </div>
                
                
            </section> <!-- /main content -->
        
        </div>
    </div> <!-- /container -->
    
     
    
     
    


    <!--  ==========  -->
    <!--  = JavaScript =  -->
    <!--  ==========  -->
    
    <!--  = FB =  -->
    
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=126780447403102";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    
    
    <!--  = jQuery - CDN with local fallback =  -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript">
    if (typeof jQuery == 'undefined') {
        document.write('<script src="js/jquery.min.js"><\/script>');
    }
    </script>
    
    <!--  = _ =  -->
    <script src="js/underscore/underscore-min.js" type="text/javascript"></script>
    
    <!--  = Bootstrap =  -->
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    
    <!--  = Slider Revolution =  -->
    <script src="js/rs-plugin/pluginsources/jquery.themepunch.plugins.min.js" type="text/javascript"></script>
    <script src="js/rs-plugin/js/jquery.themepunch.revolution.min.js" type="text/javascript"></script>
    
    <!--  = CarouFredSel =  -->
    <script src="js/jquery.carouFredSel-6.2.1-packed.js" type="text/javascript"></script>
    
    <!--  = jQuery UI =  -->
    <script src="js/jquery-ui-1.10.3/js/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.10.3/touch-fix.min.js" type="text/javascript"></script>
    
    <!--  = Isotope =  -->
    <script src="js/isotope/jquery.isotope.min.js" type="text/javascript"></script>
    
    <!--  = Tour =  -->
    <script src="js/bootstrap-tour/build/js/bootstrap-tour.min.js" type="text/javascript"></script>
    
    <!--  = PrettyPhoto =  -->
    <script src="js/prettyphoto/js/jquery.prettyPhoto.js" type="text/javascript"></script>
    
    <!--  = Google Maps API =  -->
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyDvMjN1g49P1MA2Onsj-GulDkmDuuH6aoU&amp;sensor=false"></script>
    <script type="text/javascript" src="js/goMap/js/jquery.gomap-1.3.2.min.js"></script>
    
    <!--  = Custom JS =  -->
    <script src="js/custom.js" type="text/javascript"></script>

  </body>
</html>

    
    