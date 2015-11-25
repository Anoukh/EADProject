<%--
  Created by IntelliJ IDEA.
  User: Janitha
  Date: 11/12/15
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Free Bootstrap Admin Template : Dream</title>
  <!-- Bootstrap Styles-->
  <link href="assets/css/bootstrap.css" rel="stylesheet" />
  <!-- FontAwesome Styles-->
  <link href="assets/css/font-awesome.css" rel="stylesheet" />
  <!-- Morris Chart Styles-->
  <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
  <!-- Custom Styles-->
  <link href="assets/css/custom-styles.css" rel="stylesheet" />
  <!-- Google Fonts-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
<div id="wrapper">
  <nav class="navbar navbar-default top-navbar" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="index1.jsp">AZD</a>
    </div>

    <ul class="nav navbar-top-links navbar-right">


      <!-- /.dropdown -->
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
          <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-alerts">
          <li>
            <a href="#">
              <div>
                <i class="fa fa-comment fa-fw"></i> New Attendance Record
                <span class="pull-right text-muted small">Short leave-Employee id-46</span>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.dropdown-alerts -->
      </li>
      <!-- /.dropdown -->
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
          <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
        </a>
        <ul class="dropdown-menu dropdown-user">
          <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
          </li>
          <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
          </li>
          <li class="divider"></li>
          <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
          </li>
        </ul>
        <!-- /.dropdown-user -->
      </li>
      <!-- /.dropdown -->
    </ul>
  </nav>
  <!--/. NAV TOP  -->

  <nav class="navbar-default navbar-side" role="navigation">

    <div class="sidebar-collapse">
      <ul class="nav" id="main-menu">

        <li>

          <a href="Finance.jsp"><i class="fa fa-qrcode"></i> Employee</a>

        </li>
        <li>
          <a href="Wokallocation.jsp"><i class="fa fa-bar-chart-o"></i> Work Allocation</a>
        </li>
        <li>
          <a class="active-menu" href="Attendence.jsp"><i class="fa fa-dashboard"></i> Attendence</a>

        </li>

        <li>
          <a href="Jobs.jsp"><i class="fa fa-edit"></i> Training and Jobs </a>
        </li>




      </ul>
      <</div>
  </nav>
  <!-- /. NAV SIDE  -->
  <div id="page-wrapper">
    <div id="page-inner">


      <div class="row">
        <div class="col-md-12">
          <h1 class="page-header">
            Attendance <small>Records</small>
          </h1>
        </div>
      </div>
      <!-- /. ROW  -->

      <div class="row">
        <div class="col-md-3 col-sm-12 col-xs-12">
          <div class="panel panel-primary text-center no-boder bg-color-green">
            <div class="panel-body">
              <i class="fa fa-bar-chart-o fa-5x"></i>
              <h3>110</h3>
            </div>
            <div class="panel-footer back-footer-green">
              Current Working Employees

            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-12 col-xs-12">
          <div class="panel panel-primary text-center no-boder bg-color-blue">
            <div class="panel-body">
              <i class="fa fa-shopping-cart fa-5x"></i>
              <h3>20 </h3>
            </div>
            <div class="panel-footer back-footer-blue">
             Leaves

            </div>
          </div>
        </div>
      </div>
      <form name="AddNewEngine" id="addNewEngineForm" action="#" method="POST">
        <div class="form-group col-lg-4">
          <label for="fuelType">Search By</label>
          <select class="form-control" name="FuelType" id="fuelType">
            <option disabled selected>--Select One-- </option>
            <option>Name</option>
            <option>Email</option>
            <option>Employee ID</option>
            <option>Designation</option>
          </select>

        <div class="form-group col-lg-4">
          <label for="Search"></label>
          <input class="form-control" type="text" name="NumberOfCylinders" id="Search">
        </div>

        <div id="submitNewEngineButton" class="form-group col-lg-4">
          <div class="form-group col-lg-4">
            <button type="submit" class="btn btn-primary">Search</button>
          </div>
        </div>
        </div>
      </form>

      <div class="row">


        <div class="col-md-9 col-sm-12 col-xs-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              Attendance Chart
            </div>
            <div class="panel-body">
              <div id="morris-bar-chart"></div>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-12 col-xs-12">
          <div class="panel panel-default">
            <div class="panel-heading">
              History
            </div>
            <div class="panel-body">
              <div id="morris-donut-chart"></div>
            </div>
          </div>
        </div>

      </div>
      <!-- /. ROW  -->
      <!-- /. ROW  -->
      <footer><p>All right reserved.<a>AZD Private Ltd</a></p></footer>
    </div>
    <!-- /. PAGE INNER  -->
  </div>
  <!-- /. PAGE WRAPPER  -->
</div>
<!-- /. WRAPPER  -->
<!-- JS Scripts-->
<!-- jQuery Js -->
<script src="assets/js/jquery-1.10.2.js"></script>
<!-- Bootstrap Js -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- Metis Menu Js -->
<script src="assets/js/jquery.metisMenu.js"></script>
<!-- Morris Chart Js -->
<script src="assets/js/morris/raphael-2.1.0.min.js"></script>
<script src="assets/js/morris/morris.js"></script>
<!-- Custom Js -->
<script src="assets/js/custom-scripts.js"></script>


</body>

</html>

</body>
</html>
