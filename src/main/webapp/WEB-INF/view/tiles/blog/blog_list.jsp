<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="push-up top-equal blocks-spacer">
		<div class="row">
			<!--  ==========  -->
			<!--  = Main content =  -->
			<!--  ==========  -->
			<section class="span8 blog">

				<!--  ==========  -->
				<!--  = Sticky Post =  -->
				<!--  ==========  -->
				<article class="post format-standard sticky">
					<div class="post-inner">
						<div class="post-title">
							<h2>
								<a href="#"><span class="light">Sticky</span> Post</a>
							</h2>
							<div class="metadata">
								May 11, 2013 / <a
									href="http://localhost/themeforest/wp-theme/2008/09/layout-test/#comments">No
									comments</a> / Posted in: <a rel="category tag"
									title="View all posts in aciform" href="#">Webmarket</a>
							</div>
						</div>

						<p class="push-down-25">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Ut feugiat mauris eget magna egestas
							porta. Curabitur sagittis sagittis neque rutrum congue. dit...</p>

						<a href="blog-single.html" class="btn btn-primary bold higher">CONTINUE
							READING</a>
					</div>
				</article>

				<!--  ==========  -->
				<!--  = Post with Video =  -->
				<!--  ==========  -->
				<c:forEach var="blog" items="${blogs}">
				<article class="post format-video">
					<div class="post-inner">
						<iframe
							src="http://player.vimeo.com/video/8161506?title=0&amp;byline=0&amp;color=00becc"
							width="620" height="349" frameborder="0" webkitallowfullscreen=""
							mozallowfullscreen="" allowfullscreen=""></iframe>
						<div class="post-title">
							<h2>
								<a href="#">${blog.title}</a>
							</h2>
							<div class="metadata">
								${blog.postDate} / <a
									href="http://localhost/themeforest/wp-theme/2008/09/layout-test/#comments">No
									comments</a> / Posted in: <a rel="category tag"
									title="View all posts in aciform" href="#">Webmarket</a>
							</div>
						</div>

						<p class="push-down-25">${blog.post}</p>

						<a href="blog-single.html" class="btn btn-primary bold higher">CONTINUE
							READING</a>
					</div>
				</article>
				</c:forEach>
				<hr />

				<!--  ==========  -->
				<!--  = Pagination =  -->
				<!--  ==========  -->
				<div class="pagination">
					<ul>
						<li><a href="#" class="btn btn-primary"><span
								class="icon-chevron-left"></span></a></li>
						<li><a href="#">1</a></li>
						<li class="active"><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#" class="btn btn-primary"><span
								class="icon-chevron-right"></span></a></li>
					</ul>
				</div>
				<!-- /pagination -->

			</section>
			<!-- /main content -->