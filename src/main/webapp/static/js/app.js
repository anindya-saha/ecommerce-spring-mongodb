// bootstrap tooltip invocking
function showtooltip() {
	$('a[rel=tooltip], button[rel=tooltip], input[rel=tooltip]')
	.tooltip({
		animation:false
	});
}

function cartContent() {
	$('.cart-content').find('table').click(function(e){
		e.stopPropagation();
	});
}

// flexslider on home page
function flexSlideShow() {
	$('.flexslider').flexslider({
		 animation: "slide",
		 slideshowSpeed: 4000,
		 directionNav: false,
		 pauseOnHover: true,
		 directionNav: false
	});
}

// bootstrap carousel in caregories grid and list
function productSlider() {
	$('.carousel').carousel();
}


// link fancybox plugin on product detail
function productFancyBox() {
	$(".fancybox").fancybox({
		openEffect	: 'none',
		closeEffect	: 'none'
	});
}

// dropdown mainnav
function dropdownMainNav() {

	$('div.navbar > ul.nav > li').hover(
		function () {
			// hide the css default behavir
			$(this).children('div').css('display', 'none');
			//show its submenu
			$(this).children('div').slideDown(150);
		}, 
		function () {
			//hide its submenu
			$(this).children('div').slideUp(350);		
		}
	);

}

// display your twiter feed here
function latestTweets() {
	
    $(".tweet").tweet({
        username: "seaofclouds",
        join_text: "auto",
        avatar_size: 0,
        count: 3,
        auto_join_text_default: "we said,", 
        auto_join_text_ed: "we",
        auto_join_text_ing: "we were",
        auto_join_text_reply: "we replied to",
        auto_join_text_url: "we were checking out",
        loading_text: "loading tweets..."
    });
}

// range price product
function rangePriceSlider() {
	$("#slider-range").slider({
      range: true,
      min: 0,
      max: 500,
      values: [ 75, 300 ],
      slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
    });
    $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
      " - $" + $( "#slider-range" ).slider( "values", 1 ) );
}


// jquery placeholder plugin to work just in IE Only
function placeholderForIEOnly() {
	//$('input, textarea').placeholder();
}

function addToCart(productId){
	$.ajax({
	  url: "/ecommerce/product/add-to-cart",
	  type: "POST",
	  data: {
		  productId:productId
	  }
	}).done(function(data) {
		alert(productId + " " + data);
	}).fail(function(){
		alert("Error while adding product to cart");
	});
}

function removeFromCart(productId){
	$.ajax({
	  url: "/ecommerce/product/remove-from-cart",
	  type: "POST",
	  data: {
		  productId:productId
	  }
	}).done(function(data) {
		alert(productId + " " + data);
	}).fail(function(){
		alert("Error while removing product from cart");
	});
}

$(function(){
	showtooltip();
	cartContent();
	flexSlideShow();
	productSlider();
	productFancyBox();
	dropdownMainNav();
	latestTweets();
	rangePriceSlider();
	placeholderForIEOnly();
	
	$(".addTocart").on("click",function(){
		var productId = $(this).data("productid");
		addToCart(productId);
	});
	$(".removeFromCart").on("click",function(){
		var productId = $(this).data("productid");
		removeFromCart(productId);
	});
	
	
});
var app = angular.module('ecommerce', ['ui.bootstrap']);

app.controller('productButtons', function($scope,$http) {
  $scope.counter = 0;
  $scope.addToCart = function(productId) { 
	  $http({
		  method: "POST",
		  headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		  url: "/ecommerce/product/add-to-cart",
		  data: $.param({productId:productId})
		}).success(function(data, status, headers, config) {
		  // data contains the response
		  // status is the HTTP status
		  // headers is the header getter function
		  // config is the object that was used to create the HTTP request
			alert(productId + " " + data);
		}).error(function(data, status, headers, config) {
			alert("error");
		});
  };
 // $scope.subtract = function(amount) { $scope.counter -= amount; };
});