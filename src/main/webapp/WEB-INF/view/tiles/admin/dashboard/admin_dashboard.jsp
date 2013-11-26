<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="col-md-2">
	<div class="block block-drop-shadow">
		<div class="user bg-default bg-light-rtl">
			<div class="info">
				<a href="#" class="informer informer-three"><span>14 /
						255</span> Messages</a> <a href="#" class="informer informer-four"><span>$549.44</span>
					Balance</a> <img src="img/example/user/dmitry_b.jpg"
					class="img-circle img-thumbnail">
			</div>
		</div>
		<div class="content list-group list-group-icons">
			<a href="#" class="list-group-item">Messages</a> <a href="#"
				class="list-group-item">Statistic</a> <a href="#"
				class="list-group-item">Settings</a> <a href="#"
				class="list-group-item">Logout</a>
		</div>
	</div>
	<div class="block block-drop-shadow">
		<div class="head bg-dot20">
			<h2>CPU</h2>
			<div class="side pull-right">
				<ul class="buttons">
					<li><a href="#"></a></li>
				</ul>
			</div>
			<div class="head-subtitle">Intel Core2 Duo T6670 2.20GHz</div>
			<div class="head-panel nm">
				<div class="hp-info hp-simple pull-left hp-inline">
					<span class="hp-main">Core 0 89%</span>
					<div class="hp-sm">
						<div class="progress progress-small">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="89" aria-valuemin="0" aria-valuemax="100"
								style="width: 89%"></div>
						</div>
					</div>
				</div>
				<div class="hp-info hp-simple pull-left hp-inline">
					<span class="hp-main">Core 1 56%</span>
					<div class="hp-sm">
						<div class="progress progress-small">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="56" aria-valuemin="0" aria-valuemax="100"
								style="width: 56%"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="block block-drop-shadow">
		<div class="head bg-dot20">
			<h2>Memory</h2>
			<div class="side pull-right">
				<ul class="buttons">
					<li><a href="#"></a></li>
				</ul>
			</div>
			<div class="head-subtitle">Kingston 2x8Gb DDR3 1866MHz</div>
			<div class="head-panel nm tac">
				<div class="sparkline">
					<span sparktype="pie" sparkwidth="100" sparkheight="100">5079,3768,7537</span>
				</div>
			</div>
			<div class="head-panel nm">
				<div class="hp-info hp-simple pull-left hp-inline">
					<span class="hp-main">Allocated 5079 Mb [ 31% ]</span>
				</div>
				<div class="hp-info hp-simple pull-left hp-inline">
					<span class="hp-main">In Cache 3768 Mb [ 23% ]</span>
				</div>
				<div class="hp-info hp-simple pull-left hp-inline">
					<span class="hp-main">Aviable 7537 Mb [ 46% ]</span>
				</div>
			</div>
		</div>
	</div>
	<div class="block block-drop-shadow">
		<div class="head bg-dot20">
			<h2>Volumes status</h2>
			<div class="side pull-right">
				<ul class="buttons">
					<li><a href="#"></a></li>
				</ul>
			</div>
			<div class="head-subtitle">WD Caviar Blue 1TB</div>
			<div class="head-panel nm tac" style="line-height: 0">
				<div class="knob">
					<input type="text" data-fgcolor="#3F97FE" data-min="0"
						data-max="1024" data-width="100" data-height="100" value="654"
						data-readonly="true">
				</div>
			</div>
			<div class="head-panel nm">
				<div class="hp-info hp-simple pull-left hp-inline">
					<span class="hp-main">Volume 1 [ 0.5 TB ]</span> <span
						class="hp-sm">Used: 450.0 GB [ 90% ]</span> <span class="hp-sm">Free:
						50.0 GB [ 10% ]</span>
				</div>
				<div class="hp-info hp-simple pull-left hp-inline">
					<span class="hp-main">Volume 2 [ 0.5 TB ]</span> <span
						class="hp-sm">Used: 154.0 GB [ 30% ]</span> <span class="hp-sm">Free:
						346.0 GB [ 70% ]</span>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-md-5">
	<div class="block block-drop-shadow">
		<div class="head bg-default bg-light-ltr">
			<h2>Total sales</h2>
			<div class="side pull-right">
				<ul class="buttons">
					<li><a href="#"></a></li>
				</ul>
			</div>
			<div class="head-panel nm">
				<div class="left_abs_100" style="margin-top: 20px">
					<div class="knob">
						<input type="text" data-fgcolor="#FFFFFF" data-min="0"
							data-max="200" data-width="100" data-height="100" value="155"
							data-readonly="true">
					</div>
				</div>
				<div class="chart" id="dash_chart_1" style="height: 150px"></div>
			</div>
			<div class="head-panel nm">
				<div class="hp-info pull-left">
					<div class="hp-icon"></div>
					<span class="hp-main">155</span> <span class="hp-sm">Sales</span>
				</div>
				<div class="hp-info pull-left">
					<div class="hp-icon"></div>
					<span class="hp-main">23</span> <span class="hp-sm">Cancelled</span>
				</div>
				<div class="hp-info pull-right">
					<div class="hp-icon"></div>
					<span class="hp-main">19,215.23</span> <span class="hp-sm">Total
						Income</span>
				</div>
			</div>
		</div>
		<div class="content list">
			<div class="list-title">Previous months</div>
			<div class="list-item">
				<div class="list-text">
					<strong>May 2013</strong>
					<div class="progress progress-small">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"
							style="width: 75%"></div>
					</div>
				</div>
			</div>
			<div class="list-item">
				<div class="list-text">
					<strong>April 2013</strong>
					<div class="progress progress-small">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="64" aria-valuemin="0" aria-valuemax="100"
							style="width: 64%"></div>
					</div>
				</div>
			</div>
			<div class="list-item">
				<div class="list-text">
					<strong>March 2013</strong>
					<div class="progress progress-small">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="58" aria-valuemin="0" aria-valuemax="100"
							style="width: 58%"></div>
					</div>
				</div>
			</div>
			<div class="list-item">
				<div class="list-text">
					<strong>February 2013</strong>
					<div class="progress progress-small">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="72" aria-valuemin="0" aria-valuemax="100"
							style="width: 72%"></div>
					</div>
				</div>
			</div>
			<div class="list-item">
				<div class="list-text">
					<strong>January 2013</strong>
					<div class="progress progress-small">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="83" aria-valuemin="0" aria-valuemax="100"
							style="width: 83%"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer footer-defaut tac">
			<div class="pull-left" style="width: 200px">
				<div class="input-group">
					<div class="input-group-addon"></div>
					<input type="text" class="datepicker form-control"
						value="10/08/2013">
					<div class="input-group-btn"></div>
				</div>
			</div>
			<div class="pull-right">
				<a href="#">More information</a>
			</div>
		</div>
	</div>
	<div class="block block-drop-shadow">
		<div class="head bg-dot30">
			<h2>This week visits</h2>
			<div class="side pull-right">
				<ul class="buttons">
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
			<div class="head-panel nm">
				<div class="chart" id="dash_chart_2" style="height: 150px"></div>
			</div>
		</div>
		<div class="head bg-dot30">
			<div class="head-panel nm">
				<div class="hp-info pull-left">
					<div class="hp-icon"></div>
					<span class="hp-main">12,480</span> <span class="hp-sm">Total
						visits</span>
				</div>
				<div class="hp-info pull-left">
					<div class="hp-icon"></div>
					<span class="hp-main" style="margin-left: 35px">10,140</span> <span
						class="hp-sm" style="margin-left: 35px">Desktop</span>
				</div>
				<div class="hp-info pull-left">
					<div class="hp-icon"></div>
					<span class="hp-main" style="margin-left: 35px">1,204</span> <span
						class="hp-sm" style="margin-left: 35px">Desktop</span>
				</div>
				<div class="hp-info pull-left">
					<div class="hp-icon"></div>
					<span class="hp-main">322</span> <span class="hp-sm">Tablet</span>
				</div>
				<div class="hp-info pull-left">
					<div class="hp-icon"></div>
					<span class="hp-main">814</span> <span class="hp-sm">Mobile</span>
				</div>
			</div>
		</div>
		<div class="head bg-dot30">
			<h2>Visits by browser</h2>
			<div class="head-panel nm">
				<div class="progress">
					<div class="progress-bar progress-bar-success tip" title="Chrome"
						style="width: 35%"></div>
					<div class="progress-bar progress-bar-info tip" title="Firefox"
						style="width: 20%"></div>
					<div class="progress-bar progress-bar-warning tip" title="Opera"
						style="width: 20%"></div>
					<div class="progress-bar progress-bar-danger tip" title="Safari"
						style="width: 10%"></div>
					<div class="progress-bar tip" title="Internet Explorer"
						style="width: 15%"></div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="col-md-5">
	<div class="block block-drop-shadow">
		<div class="head bg-default bg-light-rtl">
			<h2>Support Tickets</h2>
			<div class="side pull-right">
				<ul class="buttons">
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
			<div class="head-panel nm">
				<a href="#" class="hp-info pull-left"></a>
				<div class="hp-icon"></div>
				<span class="hp-main">25</span> <span class="hp-sm">recived</span> <a
					href="#" class="hp-info pull-left"></a>
				<div class="hp-icon"></div>
				<span class="hp-main">10</span> <span class="hp-sm">sent</span> <a
					href="#" class="hp-info hp-one pull-right tip" title="Refresh"></a>
				<div class="hp-icon"></div>
				<span class="hp-main">9:24 am</span>
			</div>
		</div>
		<div class="content list">
			<div class="list-item">
				<div class="list-datetime">
					<div class="time">9:45 am</div>
				</div>
				<div class="list-info">
					<img src="img/example/user/dmitry.jpg"
						class="img-circle img-thumbnail">
				</div>
				<div class="list-text">
					<a href="#" class="list-text-name">John Doe</a>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Pellentesque condimentum nisl velit.</p>
				</div>
				<div class="list-controls">
					<a href="#" class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a>
				</div>
			</div>
			<div class="list-item">
				<div class="list-datetime">
					<div class="time">8:16 am</div>
				</div>
				<div class="list-info">
					<img src="img/example/user/alexey.jpg"
						class="img-circle img-thumbnail">
				</div>
				<div class="list-text">
					<a href="#" class="list-text-name">Brad Pitt</a>
					<p>Duis eu libero pellentesque, dapibus ante eu, vehicula leo.
						Nulla gravida rutrum neque.</p>
				</div>
				<div class="list-controls">
					<a href="#" class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a>
				</div>
			</div>
			<div class="list-item">
				<div class="list-datetime">
					<div class="date">27.08</div>
					<div class="time">9:59 pm</div>
				</div>
				<div class="list-info">
					<img src="img/example/user/olga.jpg"
						class="img-circle img-thumbnail">
				</div>
				<div class="list-text">
					<a href="#" class="list-text-name">Angelina Jolie</a>
					<p>Morbi tincidunt, tellus ut fermentum accumsan, est justo
						pretium enim, eget.</p>
				</div>
				<div class="list-controls">
					<a href="#" class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a>
				</div>
			</div>
			<div class="list-item">
				<div class="list-datetime">
					<div class="date">27.08</div>
					<div class="time">4:34 pm</div>
				</div>
				<div class="list-info">
					<img src="img/example/user/helen.jpg"
						class="img-circle img-thumbnail">
				</div>
				<div class="list-text">
					<a href="#" class="list-text-name">Keira Knightley</a>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Pellentesque condimentum nisl velit.</p>
				</div>
				<div class="list-controls">
					<a href="#" class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a>
				</div>
			</div>
			<div class="list-item">
				<div class="list-datetime">
					<div class="date">26.08</div>
					<div class="time">12:12 am</div>
				</div>
				<div class="list-info">
					<img src="img/example/user/dmitry.jpg"
						class="img-circle img-thumbnail">
				</div>
				<div class="list-text">
					<a href="#" class="list-text-name">John Doe</a>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Pellentesque condimentum nisl velit.</p>
				</div>
				<div class="list-controls">
					<a href="#" class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a> <a href="#"
						class="widget-icon widget-icon-circle"></a>
				</div>
			</div>
		</div>
		<div class="footer tac">
			<a href="#">Load more messages...</a>
		</div>
	</div>
	<div class="block block-drop-shadow">
		<div class="header">
			<h2>Messaging</h2>
			<div class="side pull-right">
				<ul class="buttons">
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
			</div>
		</div>
		<div class="content messages npr npb npt">
			<div class="scroll" style="height: 250px">
				<div class="messages-item">
					<img src="img/example/user/dmitry_s.jpg"
						class="img-circle img-thumbnail">
					<div class="messages-item-text">Duis eu libero pellentesque,
						dapibus ante eu, vehicula leo. Nulla gravida rutrum neque</div>
					<div class="messages-item-date">14:33 30.08.2013</div>
				</div>
				<div class="messages-item inbox">
					<img src="img/example/user/olga_s.jpg"
						class="img-circle img-thumbnail">
					<div class="messages-item-text">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Pellentesque condimentum nisl velit</div>
					<div class="messages-item-date">14:32 30.08.2013</div>
				</div>
				<div class="messages-item">
					<img src="img/example/user/dmitry_s.jpg"
						class="img-circle img-thumbnail">
					<div class="messages-item-text">Duis eu libero pellentesque,
						dapibus ante eu, vehicula leo. Nulla gravida rutrum neque</div>
					<div class="messages-item-date">14:20 30.08.2013</div>
				</div>
				<div class="messages-item inbox">
					<img src="img/example/user/olga_s.jpg"
						class="img-circle img-thumbnail">
					<div class="messages-item-text">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Pellentesque condimentum nisl velit</div>
					<div class="messages-item-date">14:19 30.08.2013</div>
				</div>
				<div class="messages-item">
					<img src="img/example/user/dmitry_s.jpg"
						class="img-circle img-thumbnail">
					<div class="messages-item-text">Duis eu libero pellentesque,
						dapibus ante eu, vehicula leo. Nulla gravida rutrum neque</div>
					<div class="messages-item-date">14:15 30.08.2013</div>
				</div>
				<div class="messages-item inbox">
					<img src="img/example/user/olga_s.jpg"
						class="img-circle img-thumbnail">
					<div class="messages-item-text">Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Pellentesque condimentum nisl velit</div>
					<div class="messages-item-date">14:10 30.08.2013</div>
				</div>
			</div>
		</div>
		<div class="footer">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="message..">
			</div>
		</div>
	</div>
</div>