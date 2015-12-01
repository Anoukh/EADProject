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
		</style>

	<script src="/resources/core/js/vendor/jquery-2.1.4.min.js"></script>
	<script src="/resources/core/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/core/js/finance-custom.js"></script>
</head>
<body onload="">


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
				<a href="financeInBox"> Inbox  </a>
			</li>
			<li onclick="outbox();">
				<a href="financeOutBox"> Outbox  </a>
			</li>
			<li class="dropdown"> <a class="dropdown-toggle" data-toggle="dropdown" href="#">
				Cash Flow</a>
				<ul class="dropdown-menu" role="menu">
					<li onclick="cashinflow();"><a href="fincanceInFlow" style="color:#0000ff">Cash Inflow</a></li>
					<li onclick="cashoutflow();"><a href="fincanceInFlow" style="color:#0000ff">Cash Outflow</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!-- /#sidebar-wrapper -->

	<!-- Page Content -->
	<div id="page-content-wrapper">
		<div id="inboxdiv">
			<font size="+1">
				<form action="" method="post">
<div class="container">
			<div class="row-fluid">
							<section class="span12">
								<aside class ="span3"><input type="text" id="reqnumber"  name="reqnumber" placeholder ="Request No." readonly/></aside>
								<article class="span6"> </article>
								<article class ="span3"><input type="text" id="reqdate" name="reqdate" style="width:100%" placeholder ="Date" readonly/></article>
								

							</section>
						</div>
</div>
			<div class="container">
		<div class="row-fluid">
			<section class="span12">
				<aside class ="span2">From</aside>
				<article class="span1">   </article>
				<article class ="span6"><input type="text" id="reqdepartment" name="reqdepartment"  placeholder ="Department Name" readonly="yes"/></article>
				<article class ="span3"><input type="hidden"  id="callfrom" name="callfrom" readonly="yes"/></article>

			</section>
		</div>
				</div>
				<div class="container">
				<div class="row-fluid">
					<section class="span12">
						<aside class ="span3">Description</aside>

						<article class ="span9"><textarea class="roundcorner" type="text" id="reqdes" name="reqdes" placeholder ="Description" style="width:100%" readonly="yes"> </textarea></article>
						<!-- <article class ="span3"></article> -->

					</section>
				</div>
				</div>
		<div class="container">
<div class="row-fluid">
							<section class="span12">
								<aside class ="span1"></aside>
								<article class="span7"></article>
								<aside class ="span2"><button class="span12 btn btn-success " type="submit"  onclick="form.action='acceptfincane';">Accept </button></aside>
								<article class="span2"><button class="span12 btn btn-danger " type="submit"  onclick="form.action='rejectfincane';">Decline </button></article>
								<!--  <article class ="span3"></article> -->

							</section>
						</div>
</div>
				</form>
</font>


			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						
						


					</div>
				</div>
			</div>
		</div>
		</div>

		<div id="outboxdiv">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						



					</div>
				</div>
			</div>
		</div>


		<div id="cashinflowdiv">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						
						<p onclick="toggle();"><a class="btn btn-default" >Toggle Menu</a></p>

						


					</div>
				</div>
			</div>
		</div>

		<div id="cashoutflowdiv">

			

			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12" >
						
						


					</div>
				</div>
			</div>
		</div>


	</div>
	<!-- /#page-content-wrapper -->

</div>
<div id="popDiv"  role="dialog">

	
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

						

						<div style="height:10px"></div>
					</font>
					<font size="+1">
						<div class="row-fluid">
							<section class="span12">
								<aside class ="span1"></aside>
								<article class="span2"> From  </article>
								<article class ="span6"><input type="text" id="l" name="reqdepartment"  placeholder ="Department Name" readonly/></article>
								<article class ="span3"></article>

							</section>
						</div>

						<div style="height:10px"></div>

						<div class="row-fluid">
							<section class="span12">
								<aside class ="span3">Description</aside>

								<article class ="span9"><textarea class="roundcorner" type="text" id="rehqdes" name="reqdes" placeholder ="Description" style="width:100%" readonly> </textarea></article>
								<!-- <article class ="span3"></article> -->

							</section>
						</div>


						<div style="height:10px"></div>
					</font>
					<font size="+2">


						

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
