<ul class="rating">
	<c:if test="${product.rating eq 0}">
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
	</c:if>
	<c:if test="${product.rating eq 1}">
		<li><i class="star-on"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
	</c:if>
	<c:if test="${product.rating eq 2}">
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
	</c:if>
	<c:if test="${product.rating eq 3}">
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-off"></i></li>
		<li><i class="star-off"></i></li>
	</c:if>
	<c:if test="${product.rating eq 4}">
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-off"></i></li>
	</c:if>
	<c:if test="${product.rating eq 5}">
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
		<li><i class="star-on"></i></li>
	</c:if>
</ul>