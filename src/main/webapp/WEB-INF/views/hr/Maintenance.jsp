<%--
  Created by IntelliJ IDEA.
  User: Janitha
  Date: 11/9/15
  Time: 6:31 PM
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
                <i class="fa fa-comment fa-fw"></i> New System Alert
                <span class="pull-right text-muted small">Change the bank account number if employee id=53</span>
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
          <a class="active-menu" href="Finance.jsp"><i class="fa fa-dashboard"></i> Employee</a>

        </li>

        <li>
          <a href="Wokallocation.jsp"><i class="fa fa-bar-chart-o"></i> Work Allocation</a>
        </li>
        <li>
          <a href="Attendence.jsp"><i class="fa fa-qrcode"></i> Attendence</a>
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
            Employee <small>Details</small>
          </h1>
        </div>
      </div>
      <!-- /. ROW  -->
      <form name="AddNewEngine" id="addNewEngineForm" action="#" method="POST">
        <div class="form-group col-lg-4">
          <label for="engineName">Full Name</label>
          <input class="form-control" type="text" name="EngineName" id="engineName" placeholder="Full Name">
        </div>
        <div class="form-group col-lg-4">
          <label for="numberOfCylinders">Address</label>
          <input class="form-control" type="text" name="NumberOfCylinders" id="numberOfCylinders" placeholder="Number of Cylinders">
        </div>
        <div class="form-group col-lg-4">
          <label for="cubicCapacity">Email</label>
          <input class="form-control" type="text" name="CubicCapacity" id="cubicCapacity" placeholder="Email">
        </div>
        <div class="form-group col-lg-4">
          <label for="fuelType">Designation</label>
          <select class="form-control" name="FuelType" id="fuelType">
            <option disabled selected>--Select One-- </option>
            <option>Manager</option>
            <option>Deputy Manager</option>
            <option>Asst. Manager</option>
            <option>Management Asst</option>
            <option>Stock Officer</option>
            <option>Store Asst</option>
            <option>Security Officer-1</option>
            <option>Security Officer-2</option>
            <option>Labour</option>
            <option>Labour Supervisor</option>

          </select>
        </div>
        <div class="form-group col-lg-4">
          <label for="mountType">Gender</label>
          <select class="form-control" name="MountType" id="mountType">
            <option disabled selected>--Select One-- </option>
            <option>Male</option>
            <option>Female</option>
          </select>
        </div>

        <div class="form-group col-lg-4">
          <label for="numberOfCylinders">Mobile number</label>
          <input class="form-control" type="text" name="NumberOfCylinders" id="" placeholder="Mobile number">
        </div>
        <div class="form-group col-lg-4">
          <label for="cubicCapacity1">NIC</label>
          <input class="form-control" type="text" name="CubicCapacity" id="cubicCapacity1" placeholder="NIC">
        </div>


        <div class="form-group col-lg-4">
          <label for="cubicCapacity2">Date of Birth</label>
          <input class="form-control" type="text" name="CubicCapacity" id="cubicCapacity2" placeholder="Date of Birth">
        </div>
        <div class="form-group col-lg-4">
          <label for="cubicCapacity3">Bank Account Number</label>
          <input class="form-control" type="text" name="CubicCapacity" id="cubicCapacity3" placeholder="Bank Account Number">
        </div>




        <div id="submitNewEngineButton" class="form-group">
          <div class="col-sm-10">
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </div>
      </form>
      <div class="row">
        <div class="col-md-12">
          <h1 class="page-header">
            Search <small>Details</small>
          </h1>
        </div>
      </div>

      <div class="form-group col-lg-4">
        <label for="search">Search by</label>
        <select class="form-control" name="Search" id="search">
          <option disabled selected>--Select One-- </option>
          <option>Name</option>
          <option>Designation</option>
          <option>Email</option>
        </select>

        <input class="form-control" type="text" name="CubicCapacity" id="cubicCapacity4">
        <div class="col-sm-10">
          <button type="Search" class="btn btn-primary">Search</button>
        </div>
      </div>
      <div class="col-sm-10">
        <button type="Delete" class="btn btn-primary">Delete Employee</button>
      </div>

      <div class="col-md-8 col-sm-12 col-xs-12">

        <div class="panel panel-default">
          <div class="panel-heading">
            Data Table
          </div>
          <div class="panel-body">
            <div class="table-responsive">
              <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                  <th>S No.</th>
                  <th>First Name</th>
                  <th>Address</th>
                  <th>Email</th>
                  <th>Designation</th>
                  <th>Gender</th>
                  <th>Mobile Number</th>
                  <th>NIC</th>


                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>1</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>

                </tr>
                <tr>
                  <td>2</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>

                </tr>
                <tr>
                  <td>3</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>

                </tr>
                <tr>
                  <td>4</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>

                </tr>
                <tr>
                  <td>5</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>

                </tr>
                <tr>
                  <td>6</td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>
                  <td></td>

                </tr>

                </tbody>
              </table>
            </div>
          </div>
        </div>

      </div>

    </div>
    <footer><p>All right reserved.<a>AZD Private Ltd</a></p></footer>
    <!-- /. ROW  -->

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
