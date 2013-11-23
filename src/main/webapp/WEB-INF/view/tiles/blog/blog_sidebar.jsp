<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  ==========  -->
<!--  = Sidebar =  -->
<!--  ==========  -->
<aside class="span4 right-sidebar">

	<!--  ==========  -->
	<!--  = Search Widget =  -->
	<!--  ==========  -->
	<div class="sidebar-item widget_search">
		<!-- <div class="underlined">
                            <h3><span class="light">Search</span></h3>
                        </div> -->

		<form class="form" action="#" id="searchform" method="get"
			role="search" />
		<input type="text" id="appendedInputButton" class="input-block-level"
			name="s" placeholder="Search for posts ..." />
		<button type="submit">
			<i class="icon-search"></i>
		</button>
		</form>
	</div>

	<!--  ==========  -->
	<!--  = Flickr Widget =  -->
	<!--  ==========  -->
	<div class="sidebar-item widget_flickr">
		<div class="underlined">
			<h3>
				<span class="light">Flickr</span> Widget
			</h3>
		</div>

		<div class="flickr-badge clearfix">
			<!-- Start of Flickr Badge -->
			<div id="flickr_badge_uber_wrapper">
				<div id="flickr_badge_wrapper">
					<script type="text/javascript"
						src="http://www.flickr.com/badge_code_v2.gne?count=9&display=random&size=s&layout=x&source=all_tag&tag=surf&user=29003388%40N04"></script>
				</div>
			</div>
			<!-- End of Flickr Badge -->
		</div>
	</div>

	<!--  ==========  -->
	<!--  = Archive =  -->
	<!--  ==========  -->
	<div class="sidebar-item widget_archive">
		<div class="underlined">
			<h3>
				<span class="light">Blog</span> Posts Archive
			</h3>
		</div>

		<ul>
			<li><a title="February 2013"
				href="http://localhost/themeforest/wp-theme/2013/02/">February
					2013</a>&nbsp;(2)</li>
			<li><a title="September 2008"
				href="http://localhost/themeforest/wp-theme/2008/09/">September
					2008</a>&nbsp;(3)</li>
			<li><a title="June 2008"
				href="http://localhost/themeforest/wp-theme/2008/06/">June 2008</a>&nbsp;(10)</li>
			<li><a title="May 2008"
				href="http://localhost/themeforest/wp-theme/2008/05/">May 2008</a>&nbsp;(5)</li>
			<li><a title="April 2008"
				href="http://localhost/themeforest/wp-theme/2008/04/">April 2008</a>&nbsp;(1)</li>
			<li><a title="March 2008"
				href="http://localhost/themeforest/wp-theme/2008/03/">March 2008</a>&nbsp;(3)</li>
		</ul>
	</div>


	<!--  ==========  -->
	<!--  = Twitter Widget =  -->
	<!--  ==========  -->
	<div class="sidebar-item widget_twitter">
		<div class="underlined">
			<h3>
				<span class="light">Twitter</span> Feed
			</h3>
		</div>

		<a class="twitter-timeline" href="https://twitter.com/ilkerkorkut"
			data-widget-id="361435057526800385">Tweets by @ilkerkorkut</a>
		<script>
			!function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/
						.test(d.location) ? 'http' : 'https';
				if (!d.getElementById(id)) {
					js = d.createElement(s);
					js.id = id;
					js.src = p + "://platform.twitter.com/widgets.js";
					fjs.parentNode.insertBefore(js, fjs);
				}
			}(document, "script", "twitter-wjs");
		</script>

	</div>


</aside>
<!-- /sidebar -->
</div>
</div>
</div>