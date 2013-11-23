<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="mws-panel grid_8">
	<div class="mws-panel-header">
		<span><i class="icon-table"></i>Add new Blog Post</span>
	</div>
	<div class="mws-panel-body no-padding">
		<form class="mws-form" action="saveblogpost" method="post">
			<div class="mws-form-inline">
					<div class="mws-form-row">
						<label class="mws-form-label">Post Visual</label>
						<div class="mws-form-item">
							<input type="text" name="visual" value="" class="large">
						</div>
					</div>
					<div class="mws-form-row">
						<label class="mws-form-label">Post Title</label>
						<div class="mws-form-item">
							<input type="text" name="title" value="" class="large">
						</div>
					</div>
					<div class="mws-form-row">
						<label class="mws-form-label">Post Content</label>
						<div class="mws-form-item">
							<textarea name="post" class="large autosize" id="cleditor"></textarea>
						</div>
					</div>
				<div class="mws-form-row">
					<label class="mws-form-label">Confirmation</label>
					<div class="mws-form-item">
						<button class="btn btn-danger">Confirm</button>
						<button class="btn btn-inverse">Back</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
