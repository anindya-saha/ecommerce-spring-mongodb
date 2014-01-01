<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!--  ==========  -->
    <!--  = Breadcrumbs =  -->
    <!--  ==========  -->
    <div class="darker-stripe">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <ul class="breadcrumb">
                        <li>
                            <a href="/">Homepage</a>
                        </li>
                        <li><span class="icon-chevron-right"></span></li>
                        <li>
                            <a href="/user/settings">User Settings</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="push-up top-equal blocks-spacer-last">
            <div class="row">
                
                <!--  ==========  -->
                <!--  = Main Title =  -->
                <!--  ==========  -->
                
                <div class="span12">
                    <div class="title-area">
                        <h1 class="inline"><span class="light">My</span> Account</h1>
                    </div>
                </div>
                
                <!--  ==========  -->
                <!--  = Main content =  -->
                <!--  ==========  -->
                <section class="span12 single single-page">
                    
                    <!--  ==========  -->
                    <!--  = Post =  -->
                    <!--  ==========  -->
                    <article class="post">
                        <div class="post-inner">
                            <p>
                                User account area...
                            </p>
                        </div>
                    </article>
                    
                    <hr />
                    
                    <!--  ==========  -->
                    <!--  = Contact Form =  -->
                    <!--  ==========  -->
                    <section class="contact-form-container">
                        <div class="accordion" id="accordion2">
                            <div class="accordion-group accordion-style-2">
                                <div class="accordion-heading">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse1">
                                        <span class="bg-for-icon"><i class="icon-minus"></i><i class="icon-plus"></i></span>
                                        General Settings
                                    </a>
                                </div>
                                <div id="collapse1" class="accordion-body collapse">
                                    <div class="accordion-inner">
                                        <form id="user-settings" method="post" action="#" class="form form-inline form-contact" />
				                            <p class="push-down-20">
				                                <input type="text" aria-required="true" tabindex="1" size="30" value="${user.name}" id="name" name="name" required="" />
				                                <label for="author">Name<span class="red-clr bold">*</span></label>
				                            </p>
				                            <p class="push-down-20">
				                                <input type="text" aria-required="true" tabindex="1" size="30" value="${user.surname}" id="surname" name="surname" required="" />
				                                <label for="author">Surname<span class="red-clr bold">*</span></label>
				                            </p>
				                            <p class="push-down-20">
				                                <input type="email" aria-required="true" tabindex="2" size="30" value="${user.email}" id="email" name="email" required="" />
				                                <label for="email">Mail<span class="red-clr bold">*</span></label>
				                            </p>
				                            <p class="push-down-20">
				                                <input type="text" tabindex="3" size="30" value="" id="password" name="password" />
				                                <label for="url">Password<span class="red-clr bold">*</span></label>
				                            </p>
				    						<p class="push-down-20">
				                                <input type="text" tabindex="3" size="30" value="" id="password2" name="password2" />
				                                <label for="url">Password Again<span class="red-clr bold">*</span></label>
				                            </p>
				                            <p>
				                                <button class="btn btn-primary bold" type="submit" tabindex="5" id="submit">SUBMIT CHANGES</button>
				                            </p>
				                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group accordion-style-2">
                                <div class="accordion-heading">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse2"> 
                                        <span class="bg-for-icon"><i class="icon-minus"></i><i class="icon-plus"></i></span>
                                        Adress Settings
                                    </a>
                                </div>
                                <div id="collapse2" class="accordion-body collapse">
                                    <div class="accordion-inner">
				                        <ul id="adressTabs" class="nav nav-tabs nav-tabs-style-2">
				                	        <li class="active">
				                	            <a href="#tab1" data-toggle="tab">My Adresses</a>
				                	        </li>
				                	        <li>
				                	            <a href="#tab2" data-toggle="tab">Add New Adress</a>
				                	        </li>
				                	        <li>
				                	            <a href="#tab3" data-toggle="tab">Tab Number 3</a>
				                	        </li>
				                	    </ul>
				                	    <div class="tab-content">
				                	        <div class="fade tab-pane active in" id="tab1">
				                	        	<div class="row-fluid">
						                	           <c:forEach var="address" items="${user.address}" varStatus="status">
						                	           	<c:if test="${status.first}">
						                	           		<div class="span4">
					                	           				<ul>
						                	           	</c:if>
						                	           		<li><b>Address Title : </b>${address.title}</li>
						                	           		<li><b>Country : </b>${address.country}</li>
						                	           		<li><b>Province : </b>${address.province}</li>
						                	           		<li><b>District : </b>${address.district}</li>
						                	           		<li><b>Quarter : </b>${address.quarter}</li>
						                	           		<li><b>Avenue : </b>${address.avenue}</li>
						                	           		<li><b>House Number : </b>${address.houseNumber}</li>
						                	           		<li><b>Zip Code : </b>${address.zipCode}</li>
						                	           		<li><b>Address Details : </b>${address.otherDetails}</li>
						                	           		<c:if test="${status.last}">
						                	           			</ul>
				                	         			  	</div>
						                	           		</c:if>
						                	           </c:forEach>
				                	           	</div>
				                	        </div>
				                	        <div class="fade tab-pane" id="tab2">
				                	            <p>
				                	                <form id="user-address" method="post" action="/user/add-new-address" class="form form-inline form-contact" />
							                            <p class="push-down-20">
							                                <input type="text" aria-required="true" tabindex="1" value="" id="addressTitle" name="addressTitle" required="" />
							                                <label for="author">Adress Title<span class="red-clr bold">*</span></label>
							                            </p>
							                            <p class="push-down-20">
							                                <input type="text" aria-required="true" tabindex="1" value="" id="country" name="country" required="" />
							                                <label for="author">Country<span class="red-clr bold">*</span></label>
							                            </p>
							                            <p class="push-down-20">
							                                <input type="text" aria-required="true" tabindex="2" value="" id="province" name="province" required="" />
							                                <label for="email">Province<span class="red-clr bold">*</span></label>
							                            </p>
							                            <p class="push-down-20">
							                                <input type="text" tabindex="3" value="" id="district" name="district" />
							                                <label for="url">District<span class="red-clr bold">*</span></label>
							                            </p>
							                            <p class="push-down-20">
							                                <input type="text" tabindex="3" value="" id="quarter" name="quarter" />
							                                <label for="url">Quarter<span class="red-clr bold">*</span></label>
							                            </p>
							                            <p class="push-down-20">
							                                <input type="text" tabindex="3" value="" id="avenue" name="avenue" />
							                                <label for="url">Avenue<span class="red-clr bold">*</span></label>
							                            </p>
							                            <p class="push-down-20">
							                                <input type="text" tabindex="3" value="" id="houseNumber" name="houseNumber" />
							                                <label for="url">House Number<span class="red-clr bold">*</span></label>
							                            </p>
							                            <p class="push-down-20">
							                                <input type="text" tabindex="3" value="" id="zipCode" name="zipCode" />
							                                <label for="url">Zip Code<span class="red-clr bold">*</span></label>
							                            </p>
							    						<p class="push-down-20">
							                                <textarea class="input-block-level" tabindex="4" rows="7" cols="70" id="otherDetails" name="otherDetails" placeholder="Other Address Details ..." required=""></textarea>
							                            </p>
							                            <p>
							                                <button class="btn btn-primary bold" type="submit" tabindex="5" id="submit">SAVE ADDRESS</button>
							                            </p>
							                        </form>
				                	            </p>
				                	        </div>
				                	        <div class="fade tab-pane" id="tab3">
				                	            <p>
				                	                Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.
				                	            </p>
				                	        </div>
				                	    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    
                </section> <!-- /main content -->

            </div>
        </div>
    </div> <!-- /container -->