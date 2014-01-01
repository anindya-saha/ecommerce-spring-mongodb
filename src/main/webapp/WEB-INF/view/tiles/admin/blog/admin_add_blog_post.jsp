<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${staticServer}/admin_static/js/plugins/cleditor/jquery.cleditor.min.js"></script>
<form class="mws-form" action="saveblogpost" method="POST">
<div class="col-md-6">
	<div class="block">
		<div class="header">
			<h2>Add New Product</h2>
		</div>
		<div class="content controls">
				<div class="form-row">
					<div class="col-md-3">Post Visual</div>
					<div class="col-md-9">
						<input type="text" name="visual" value="" class="form-control">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-3">Post Title</div>
					<div class="col-md-9">
						<input type="text" name="title" value="" class="form-control">
					</div>
				</div>
		</div>
	</div>
</div>
<div class="col-md-6">
	<div class="block block-white">
		<div class="header">
			<h2>Post content</h2>
		</div>
		<div class="content np">
			<textarea name="post" class="cle"></textarea>
			<h2>Lorem ipsum dolor sit amet</h2>
			<p>
				<strong>Consectetur adipiscing</strong> elit. Sed dictum dolor sem,
				quis pharetra dui ultricies vel. Cras non pulvinar tellus, vel
				bibendum magna. Morbi tellus nulla, cursus non nisi sed, porttitor
				dignissim erat. Lorem ipsum dolor sit amet, consectetur adipiscing
				elit. Nunc facilisis commodo lectus. Vivamus vel tincidunt enim, non
				vulputate ipsum. Ut pellentesque consectetur arcu sit amet
				scelerisque. Fusce commodo leo eros, ut eleifend massa congue at.
			</p>
			<p>
				Nam a nisi et nisi tristique lacinia non sit amet orci. <strong>Duis
					blandit leo</strong> odio, eu varius nulla fringilla adipiscing. Praesent
				posuere blandit diam, sit amet suscipit justo consequat sed. Duis
				cursus volutpat ante at convallis. Integer posuere a enim eget
				imperdiet. Nulla consequat dui quis purus molestie fermentum. Donec
				faucibus sapien eu nisl placerat auctor. Pellentesque quis justo
				lobortis, tempor sapien vitae, dictum orci.
			</p>
		</div>
		<div class="footer">
			<div class="pull-right">
				<button class="btn btn-default btn-clean">Submit</button>
				<button class="btn btn-default btn-clean">Cancel</button>
			</div>
		</div>
	</div>
</div>
</form>
