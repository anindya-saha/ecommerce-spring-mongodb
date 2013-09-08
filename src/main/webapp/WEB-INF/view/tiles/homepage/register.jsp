<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="row">

	<div class="span9">
		<div class="register">

			<div class="titleHeader clearfix">
				<h3>Create New Account</h3>
			</div>
			<!--end titleHeader-->

			<form method="#" action="#" class="form-horizontal">

				<legend>&nbsp;&nbsp;&nbsp;&nbsp;1. Personal Informations</legend>

				<div class="control-group success">
					<label class="control-label" for="inputFirstName">First
						Name: <span class="text-error">*</span>
					</label>
					<div class="controls">
						<input type="text" id="inputFirstName" placeholder="John">
						<span class="help-inline"><i class="icon-ok"></i> Avaliable
							input!</span>
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group error">
					<label class="control-label" for="inputLastName">Last Name:
						<span class="text-error">*</span>
					</label>
					<div class="controls">
						<input type="text" id="inputLastName" placeholder="Doe"> <span
							class="help-inline"><i class="icon-remove"></i> Invalid
							input!</span>
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputEMAdd">E-Mail
						Address: <span class="text-error">*</span>
					</label>
					<div class="controls">
						<input type="text" id="inputEMAdd"
							placeholder="example@example.com">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputTele">Telephone: <span
						class="text-error">*</span></label>
					<div class="controls">
						<input type="text" id="inputTele" placeholder="(02)-1598-548">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputFAX">FAX:</label>
					<div class="controls">
						<input type="text" id="inputFAX" placeholder="478-986-14">
					</div>
				</div>
				<!--end control-group-->

				<legend>&nbsp;&nbsp;&nbsp;&nbsp;2. Delivery Informations</legend>

				<div class="control-group">
					<label class="control-label" for="inputCompany">Company:</label>
					<div class="controls">
						<input type="text" id="inputCompany" placeholder="ShopFine, INC">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputCompanyID">Company
						Id:</label>
					<div class="controls">
						<input type="text" id="inputCompanyID" placeholder="ShopFineID">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputFirstAdd">First
						Address: <span class="text-error">*</span>
					</label>
					<div class="controls">
						<input type="text" id="inputFirstAdd" placeholder="3st el-hikem">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputSecondAdd">Second
						Address:</label>
					<div class="controls">
						<input type="text" id="inputSecondAdd" placeholder="6st el-hikem">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputCity">City: <span
						class="text-error">*</span></label>
					<div class="controls">
						<input type="text" id="inputCity" placeholder="Email">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputPostCode">Post Code:
						<span class="text-error">*</span>
					</label>
					<div class="controls">
						<input type="text" id="inputPostCode" placeholder="Email">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<div class="control-label">
						Contury: <span class="text-error">*</span>
					</div>
					<div class="controls">
						<select name="">
							<option value="#">-- Select Contury --</option>
							<option value="#">Contury2</option>
							<option value="#">Contury3</option>
							<option value="#">Contury4</option>
							<option value="#">Contury5</option>
						</select>
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<div class="control-label">
						Region/Stats: <span class="text-error">*</span>
					</div>
					<div class="controls">
						<select name="">
							<option value="#">-- Select Region --</option>
							<option value="#">Region/Stats1</option>
							<option value="#">Region/Stats2</option>
							<option value="#">Region/Stats3</option>
							<option value="#">Region/Stats4</option>
							<option value="#">Region/Stats5</option>
						</select>
					</div>
				</div>
				<!--end control-group-->

				<legend>&nbsp;&nbsp;&nbsp;&nbsp;3. Set Your Password</legend>

				<div class="control-group">
					<label class="control-label" for="inputPass">Password: <span
						class="text-error">*</span></label>
					<div class="controls">
						<input type="password" id="inputPass" placeholder="**********">
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<label class="control-label" for="inputConPass">Re-Type
						Password: <span class="text-error">*</span>
					</label>
					<div class="controls">
						<input type="password" id="inputConPass" placeholder="**********">
					</div>
				</div>
				<!--end control-group-->

				<hr>

				<div class="control-group">
					<label class="control-label" for="inputConPass">Newslatter:
						<span class="text-error">*</span>
					</label>
					<div class="controls">
						<label class="radio inline"> <input type="radio" value="1"
							name="sub"> Subscribe
						</label> <label class="radio inline"> <input type="radio"
							value="2" name="sub"> Unsubscribe
						</label>
					</div>
				</div>
				<!--end control-group-->

				<div class="control-group">
					<div class="controls">
						<label class="checkbox"> <input type="checkbox">
							I'v read and agreed on <a href="#">Terms &amp; Condations</a>
						</label> <br>
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
				</div>
				<!--end control-group-->

			</form>
			<!--end form-->

		</div>
		<!--end register-->
	</div>
	<!--end span9-->


	<div class="span3">
		<div class="titleHeader clearfix">
			<h3>Categories</h3>
		</div>
		<!--end titleHeader-->
		<ul class="unstyled my-account">
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Login or Register</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Forget my Password</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> My Account</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> My wishlist</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Order History</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Downloads</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Returns</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> TRANSACTIONS</a></li>
			<li><a class="invarseColor" href="#"><i
					class="icon-caret-right"></i> Newlatters</a></li>
		</ul>
	</div>
	<!--end span3-->

</div>
<!--end row-->
