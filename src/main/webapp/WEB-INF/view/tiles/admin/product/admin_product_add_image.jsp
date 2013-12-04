<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 	<div class="col-md-12"> -->
<!-- <div class="mws-panel grid_8"> -->
<!-- 	<div class="mws-panel-header"> -->
<%-- 		<span><i class="icon-table"></i>Add Image for ${product.name} - --%>
<%-- 			(${product.id}) </span> --%>
<!-- 	</div> -->
<!-- 	<div class="mws-panel-body no-padding"> -->
<!-- 		<form action="upload-product-image" method="post" -->
<!-- 			enctype="multipart/form-data"> -->
<%-- 			<input type="hidden" name="productId" value="${product.id}" /> <input --%>
<!-- 				type="file" name="uploadedFile" /> <input type="submit" /> -->
<!-- 		</form> -->
<!-- 	</div> -->
<!-- </div> -->
<!-- </div> -->
<div class="col-md-12">
	<div class="block block-transparent">
		<div class="header">
			<h2>Add Image for ${product.name} - (${product.id})</h2>
		</div>
		<div class="content np">
		<form action="" method="POST">
			<input type="hidden" name="productId" value="${product.id}"/>
			<div id="html5_uploader" style="width: 100%; height: 250px">
				Your browser doesn't support native upload.</div>
		</form>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			var productId = $("input[name='productId']").val();
			$("#html5_uploader").pluploadQueue({
				runtimes : "html5",
				url : "${pageContext.request.contextPath}/admin/upload-product-image",
				chunk_size : "1mb",
				unique_names : false,
				filters : {
					max_file_size : "10mb",
					mime_types : [ {
						title : "Image files",
						extensions : "jpg,gif,png"
					}, {
						title : "Zip files",
						extensions : "zip"
					} ]
				},
				multipart_params: {
					"productId" : productId
				},
				preinit: {
                    Init: function (up, info) {
                        //log('[Init]', 'Info:', info, 'Features:', up.features);
                    },

                    UploadFile: function (up, file) {
                        //log('[UploadFile]', file);
                    },

                    
                    
                    UploadComplete: function (up, file) {
                        $(".plupload_buttons").css("display", "inline");
                        $(".plupload_upload_status").css("display", "inline");
                        up.splice();
                    },
                    

                    //FilesAdded(uploader:Uploader, files:Array)
                    FilesAdded: function (up, files) {

                        /*
                        files.each(function(file, i) {
                        $('#myfiles').append("<div>i=" + i +"</div>");
                        
                        });
                        */

                    },

                    UploadProgress: function (up, file) {
                    },

                    PostInit: function (up) {

                    },

                    QueueChanged: function (up) {
                    }
                },

                init: {

                PostInit: function (up) {
                        //alert();
                        $('#deleteAllFiles').click(function (e) {
                            up.splice();
                            /*
                            $.each(uploader.files, function (i, file) {
                            uploader.removeFile(file);
                            });
                            */
                        });
                    }

                }
			});
			$(".plupload_buttons").append('<a href="#" id="deleteAllFiles" class="plupload_button">Remove All Files</a>');
			$('form').submit(function(e) {
		        var uploader = $('#html5_uploader').pluploadQueue();
		        // Files in queue upload them first
		        if (uploader.files.length > 0) {
		            // When all files are uploaded submit form
		            uploader.bind('StateChanged', function() {
		                if (uploader.files.length === (uploader.total.uploaded + uploader.total.failed)) {
		                    $('form')[0].submit();
		                }
		            });
		                
		            uploader.start();
		        } else {
		            alert('You must queue at least one file.');
		        }

		        return false;
		    });
		});
	</script>
</div>