<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!--  ==========  -->
<!--  = Main container =  -->
<!--  ==========  -->
<div class="container">
    <div class="push-up top-equal blocks-spacer">
        
        <!--  ==========  -->
        <!--  = Product =  -->
        <!--  ==========  -->
        <div class="row blocks-spacer">
            
            <!--  ==========  -->
            <!--  = Preview Images =  -->
            <!--  ==========  -->
            <div class="span5">
                <div class="product-preview">
                    <div class="picture">
                        <img src="static/images/dummy/products/shirt-1.jpg" alt="" width="940" height="940" id="mainPreviewImg" />
                    </div>
                    <div class="thumbs clearfix">
                        <div class="thumb active">
                            <a href="#mainPreviewImg"><img src="static/images/dummy/products/shirt-1.jpg" alt="" width="940" height="940" /></a>
                        </div>
                        <div class="thumb">
                            <a href="#mainPreviewImg"><img src="static/images/dummy/products/shirt-2.jpg" alt="" width="940" height="940" /></a>
                        </div>
                        <div class="thumb">
                            <a href="#mainPreviewImg"><img src="static/images/dummy/products/shirt-3.jpg" alt="" width="940" height="940" /></a>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--  ==========  -->
            <!--  = Title and short desc =  -->
            <!--  ==========  -->
            <div class="span7">
                <div class="product-title">
                    <h1 class="name">${product.name}</h1>
                    <div class="meta">
                        <c:choose>
                        		<c:when test="${product.invalidPrice ne 0}">
                        			<span class="tag striked">${product.invalidPrice} TL</span> <span class="tag red-clr">${product.price} TL</span>
                        		</c:when>
                        		<c:otherwise>
                        			<span class="tag">${product.price} TL</span>
                        		</c:otherwise>
                        	</c:choose>
                        <span class="stock">
                        	<c:choose>
                        		<c:when test="${product.stock ne 0}">
                        			<span class="btn btn-success">In Stock</span>
                        		</c:when>
                        		<c:otherwise>
                        			<span class="btn btn-danger">Out of Stock</span>
                            		<span class="btn btn-warning">Ask for availability</span>
                        		</c:otherwise>
                        	</c:choose>
                        </span>
                    </div>
                </div>
                <div class="product-description">
                    <p>${product.description}</p>
                    <hr />
                    
                    <!--  ==========  -->
                    <!--  = Add to cart form =  -->
                    <!--  ==========  -->
                    <div class="form form-inline clearfix" />
                        <div class="numbered">
                        	<input type="text" name="num" value="1" class="tiny-size" />
                        	<span class="clickable add-one icon-plus-sign-alt"></span>
                        	<span class="clickable remove-one icon-minus-sign-alt"></span>
                        </div>
                        &nbsp;
                        <select name="color" class="span2">
                            <option value="-1" />Select Color
                            <option value="blue" />Blue
                            <option value="orange" />Orange
                            <option value="black" />Black
                        </select>
                        &nbsp;
                        <select name="size" class="span2">
                            <option value="-1" />Select Size
                            <option value="XS" />Extra Small
                            <option value="S" />Small
                            <option value="M" />Medium
                            <option value="L" />Large
                            <option value="XL" />Extra Large
                            <option value="XXL" />Huge
                        </select>
                        <button class="btn btn-danger pull-right add-to-cart" data-productid="${product.id}"><i class="icon-shopping-cart"></i> &nbsp; Add To Cart</button>
                    </div>
                    
                    <hr />
                    
                    <!--  ==========  -->
                    <!--  = Share buttons =  -->
                    <!--  ==========  -->
                    <div class="share-item">
                        <div class="pull-right social-networks">
                            <!-- AddThis Button BEGIN -->
                            <div class="addthis_toolbox addthis_default_style ">
                            <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                            <a class="addthis_button_tweet"></a>
                            <a class="addthis_button_pinterest_pinit"></a>
                            <a class="addthis_counter addthis_pill_style"></a>
                            </div>
                            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=xa-517459541beb3977"></script>
                            <!-- AddThis Button END -->
                        </div>
                        Share this item with friends:
                    </div>
                    
                </div>
            </div>
        </div>
        
        <!--  ==========  -->
        <!--  = Tabs with more info =  -->
        <!--  ==========  -->
        <div class="row">
            <div class="span12">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#tab-1" data-toggle="tab">Details</a>
                    </li>
                    <li>
                        <a href="#tab-2" data-toggle="tab">Specifications</a>
                    </li>
                    <li>
                        <a href="#tab-3" data-toggle="tab">COMMENTS</a>
                    </li>
                    <li>
                        <a href="#tab-4" data-toggle="tab">SHIPPING DETAILS</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="fade in tab-pane active" id="tab-1">
                        ${product.description}
                    </div>
                    <div class="fade tab-pane" id="tab-2">
                        <table class="table table-theme table-striped">
                        	<thead>
                        		<tr>
							        <th>Spec Title</th>
							        <th>Detail</th>
						       </tr>
                        	</thead>
	                        <tbody>
					        <c:forEach var="specification" items="${product.specification}">
					          <tr>
					            <td>${specification.title}</td>
					            <td>${specification.detail}</td>
					          </tr>
					        </c:forEach>
					        </tbody>
				      </table>
                    </div>
                    <div class="fade tab-pane" id="tab-3">
                        <c:forEach var="comment" items="${product.comment}">
					        <div class="single-review clearfix">
					          <div class="review-header">
					            <h4>${comment.userName}</h4>
					            <small>
					               <fmt:formatDate value="${comment.date}" pattern="dd/MM/yyyy"/>
					            </small>
					          </div>
					          <!-- end review-header -->
					          <div class="review-body">
					            <p>${comment.comment}</p>
					          </div>
					          <!-- end review-body -->
					        </div>
					      </c:forEach>
					      <c:if test="${empty user}">
							You have to login to add product comment.
						</c:if>
						<c:if test="${not empty user}">
						<div class="accordion" id="accordion2">
                            <div class="accordion-group accordion-style-2">
                                <div class="accordion-heading">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> 
                                        <span class="bg-for-icon"><i class="icon-minus"></i><i class="icon-plus"></i></span>
                                       Write a Comment
                                    </a>
                                </div>
                                <div id="collapseTwo" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <form method="POST" action="product/add-comment" class="form-horizontal">
                                        	<input type="hidden" name="productid" value="${product.id}"/>
                                        	<textarea id="inputReview" name="productComment" placeholder="Put your review here..."></textarea>
                                        	<input type="radio" name="productCommentRating" value="1"/>1
	                                        <input type="radio" name="productCommentRating" value="2"/>2
	                                        <input type="radio" name="productCommentRating" value="3"/>3
	                                        <input type="radio" name="productCommentRating" value="4"/>4
	                                        <input type="radio" name="productCommentRating" value="5"/>5
                                        	<button class="btn btn-warning btn-large bold">Send Comment</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:if>
                    </div>
                    <div class="fade tab-pane" id="tab-4">
                        <p>
                            Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr. Another text here ...
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- /container -->

