<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Cash In Flow</title>

	<link href="/resources/core/css/vendor/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="/resources/core/css/vendor/simple-sidebar.css" rel="stylesheet">
	<link href="/resources/core/css/vendor/bootstrap-responsive.min.css" rel="stylesheet" type="text/css">
	<link href="/resources/core/css/vendor/bootstrap-theme.css" rel="stylesheet" type="text/css">
	<link href="/resources/core/css/vendor/bootstrap-responsive.css" rel="stylesheet" type="text/css">

	<style>

		.roundcorner{
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			border-radius: 4px;
			size:inherit;

		}
		.ontop {
			z-index: 999;
			width: 100%;
			height: 100%;
			top: 0;
			left: 0;
			display: none;
			position: absolute;
			background-color: #000000;

			opacity: 0.9;
			filter: alpha(opacity = 90);
		}
		#popup {
			width: 60%;
			height: 50%;
			position: absolute;
			color: #000000;
			background-color: #ffffff;
			opacity: 1;

			/* To align popup window at the center of screen*/
			top: 30%;
			left: 30%;
			margin-top: -100px;
			margin-left: -150px;
		}		</style>

	<script src="/resources/core/js/vendor/jquery-2.1.4.min.js"></script>
	<script src="/resources/core/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/core/js/finance-custom.js"></script>
</head>
<body onload="financehomeonload()">


<div style="height:20px  ;background-color:#000000"></div>
<div id="wrapper">

	<!-- Sidebar -->
	<div id="sidebar-wrapper">
		<ul class="sidebar-nav" >
			<li class="sidebar-brand">
				<a href="#">
					Finance Division
				</a>
			</li>
			<li onclick="inbox();">
				<a href="#"> Inbox  </a>
			</li>
			<li onclick="outbox();">
				<a href="#"> Outbox  </a>
			</li>
			<li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				Cash Flow</a>
				<ul class="dropdown-menu" role="menu">
					<li onclick="cashinflow();"><a href="#" style="color:#0000ff">Cash Inflow</a></li>
					<li onclick="cashoutflow();"><a href="#" style="color:#0000ff">Cash Outflow</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- /#sidebar-wrapper -->

	<!-- Page Content -->
	<div id="page-content-wrapper">
		<div id="inboxdiv">

			<button type="button" class="btn btn-info btn-lg" data-toggle="modal" onClick="show('popDiv');">Open Modal</button>

			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						<h1>Finance Inbox</h1>
						<p onclick="toggle();"><a class="btn btn-default" >Toggle Menu</a></p>
						<table width="100%" align="center" border="2pt" class="table">
							<thead>
							<tr>
								<th>Date</th>
								<th>Request No.</th>
								<th>Department</th>
								<th>Description</th>
								<th>Amount</th>
							</tr>
							</thead>
							<tbody class="">

								<c:forEach items="${transactions}" var="transaction">
								<tr>
									<td>${transaction.date}</td>
									<td>${transaction.requestNo}</td>
									<td>${transaction.department}</td>
									<td>${transaction.description}</td>
									<td>${transaction.amount}</td>

								</tr>
								</c:forEach>


							</tbody>
						</table>


					</div>
				</div>
			</div>
		</div>

		<div id="outboxdiv">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						<h1 >Finance Outbox</h1>
						<p onclick="toggle();"><a class="btn btn-default" >Toggle Menu</a></p>
						<table width="100%" align="center" border="2pt" class="table">
							<thead class="">
							<tr>
								<th>Requested Date</th>
								<th>Accepted Date</th>
								<th>Department</th>
								<th>Description</th>
								<th>Amount</th>
							</tr>
							</thead>
							<tbody class="">

							</tbody>
						</table>




					</div>
				</div>
			</div>
		</div>


		<div id="cashinflowdiv">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						<h1 >Cash Inflow</h1>

						<p onclick="toggle();"><a class="btn btn-default" >Toggle Menu</a></p>

						<table width="100%" align="center" border="2pt" class="table">
							<thead>
							<tr>
								<th>Date</th>
								<th>Invoice No.</th>
								<th>Description</th>
								<th>Amount</th>
							</tr>
							</thead>
							<tbody class="">

							</tbody>
						</table>


					</div>
				</div>
			</div>
		</div>

		<div id="cashoutflowdiv">

			<form action="financeoutflow" method="post">

				<button type="submit" value="enter"></button>
				</form>

			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						<h1>Cash Outflow</h1>

						<p onclick="toggle();"><a class="btn btn-default" >Toggle Menu</a></p>

						<table width="100%" align="center" border="2pt" class="table" >
							<thead>
							<tr>
								<th>Date</th>
								<th>Voucher No.</th>
								<th>Description</th>
								<th>Amount</th>
							</tr>
							</thead>
							<tbody class="">

							</tbody>
						</table>


					</div>
				</div>
			</div>
		</div>


	</div>
	<!-- /#page-content-wrapper -->

</div>
<div id="popDiv"  role="dialog">

	<!--
	<div  class="modal-dialog">
		<font size="+2">

			<div class="row-fluid">
				<section class="span12">
					<aside class ="span3"><input type="text" id=""  name="" placeholder ="Request No." readonly="yes"/></aside>
					<article class="span6"> </article>
					<article class ="span3"><input type="text" id="" name="" style="width:100%" placeholder ="Date" readonly="yes"/></article>

				</section>
			</div>


			<div style="height:10px"></div>
		</font>
		<font size="+1">
			<div class="row-fluid">
				<section class="span12">
					<aside class ="span1"></aside>
					<article class="span2"> From  </article>
					<article class ="span6"><input type="text" id="" name="" class="roundcorner" placeholder ="Department Name" readonly="yes"/></article>
					<article class ="span3"></article>

				</section>
			</div>

			<div style="height:10px"></div>

			<div class="row-fluid">
				<section class="span12">
					<aside class ="span1"></aside>
					<article class="span2"> Description  </article>
					<article class ="span6"><textarea class="roundcorner" type="text" id="" name="" placeholder ="Description" style="width:100%" readonly="yes"> </textarea></article>
					<article class ="span3"></article>

				</section>
			</div>


			<div style="height:10px"></div>
		</font>
		<font size="+2">


			<div class="row-fluid">
				<section class="span12">
					<aside class ="span1"></aside>
					<article class="span4"></article>
					<aside class ="span2"><button class="span12 btn btn-success " onClick="hide('popDiv');">Accept </button></aside>
					<article class="span2"><button class="span12 btn btn-danger "  onClick="hide('popDiv');">Decline </button></article>
					<article class ="span3"></article>

				</section>
			</div>


		</font>
	</div>

	-->

	<div class="modal fade" id="AcceptDeclineModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Verification</h4>
				</div>
				<div class="modal-body">
					<font size="+2">

						<div class="row-fluid">
							<section class="span12">
								<aside class ="span3"><input type="text" id="reqnumber"  name="reqnumber" placeholder ="Request No." readonly="yes"/></aside>
								<article class="span6"> </article>
								<article class ="span3"><input type="text" id="reqdate" name="reqdate" style="width:100%" placeholder ="Date" readonly="yes"/></article>

							</section>
						</div>


						<div style="height:10px"></div>
					</font>
					<font size="+1">
						<div class="row-fluid">
							<section class="span12">
								<aside class ="span1"></aside>
								<article class="span2"> From  </article>
								<article class ="span6"><input type="text" id="reqdepartment" name="reqdepartment"  placeholder ="Department Name" readonly="yes"/></article>
								<article class ="span3"></article>

							</section>
						</div>

						<div style="height:10px"></div>

						<div class="row-fluid">
							<section class="span12">
								<aside class ="span3">Description</aside>

								<article class ="span9"><textarea class="roundcorner" type="text" id="reqdes" name="reqdes" placeholder ="Description" style="width:100%" readonly="yes"> </textarea></article>
								<!-- <article class ="span3"></article> -->

							</section>
						</div>


						<div style="height:10px"></div>
					</font>
					<font size="+2">


						<div class="row-fluid">
							<section class="span12">
								<aside class ="span1"></aside>
								<article class="span7"></article>
								<aside class ="span2"><button class="span12 btn btn-success " onClick="acceptrequest('popDiv');">Accept </button></aside>
								<article class="span2"><button class="span12 btn btn-danger "  onClick="rejectrequest('popDiv');">Decline </button></article>
								<!--  <article class ="span3"></article> -->

							</section>
						</div>


					</font>


				</div>
				<div class="modal-footer">
				<!--	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  -->
				</div>
			</div>

		</div>
	</div>


</div>
<script>


</script>


</body>
</html>
