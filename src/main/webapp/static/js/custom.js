function topNavToSelect() {
	// building select menu
	$('<select class="upper-nav" />').appendTo('.upperHeader .container');

	// building an option for select menu
	$('<option />', {
		'selected': 'selected',
		'value' : '',
		'text': 'Choise Page...'
	}).appendTo('.upperHeader .container select');

	$('.upperHeader ul.inline li a').each(function(){
		var target = $(this);

		$('<option />', {
			'value' : target.attr('href'),
			'text': target.text()
		}).appendTo('.upperHeader .container select');
	});
	// on clicking on link
	$('.upperHeader .container select').on('change',function(){
		window.location = $(this).find('option:selected').val();
	});
}

// building select .navbar for mobile width only
function NavToSelect() {

	// building select menu
	$('<select />').appendTo('.navbar');

	// building an option for select menu
	$('<option />', {
		'selected': 'selected',
		'value' : '',
		'text': 'Choise Page...'
	}).appendTo('.navbar select');

	$('.navbar ul li a').each(function(){
		var target = $(this);

		$('<option />', {
			'value' : target.attr('href'),
			'text': target.text()
		}).appendTo('.navbar select');
	});
	// on clicking on link
	$('.navbar select').on('change',function(){
		window.location = $(this).find('option:selected').val();
	});

}


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
	topNavToSelect();
	NavToSelect();
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