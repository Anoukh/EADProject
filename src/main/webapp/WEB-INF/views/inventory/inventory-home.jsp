<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Inventory Management System</title>
    <link href="/resources/core/css/vendor/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="/resources/core/css/vendor/simple-sidebar.css" rel="stylesheet">
    <link href="/resources/core/css/inventory-custom.css" rel="stylesheet">
    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet">
    <script src="/resources/core/js/vendor/jquery-2.1.4.min.js" type="text/javascript"> </script>
    <script src="/resources/core/js/inventory-custom.js" type="text/javascript"> </script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js" type="text/javascript"> </script>


</head>
<body>
<!-- Sidebar -->
<div id="wrapper">
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand"> Inventory System </li>
            <li id="wip">
                <a href="#"> Add Work In Progress </a>
            </li>
            <li id="finished">
                <a href="#"> Add Finished Stock </a>
            </li>
            <li id="addNew">
                <a href="#"> Add New Engine Type </a>
            </li>
        </ul>
    </div>

<!-- /#sidebar-wrapper -->
    <div id="page-content-wrapper">

        <!--Work In Progress-->
        <div id="wipdiv" style="display: none;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12" >
                        <h1>Work In Progress</h1>

                        <form name="AddWorkInProgress" id="addWorkInProgress" action="#" method="POST">
                            <div class="form-group col-lg-4">
                                <label for="listOfEngines">Select Engine</label>
                                <select class="form-control" name="ListOfEngines" id="listOfEngines">
                                    <option disabled selected>--Select One-- </option>
                                    <c:forEach items="${engines}" var="engine">
                                        <option>${engine.engine_name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group col-lg-4">
                                <label for="noOfUnits">Number of Units</label>
                                <input class="form-control" type="text" name="NoOfUnits" id="noOfUnits" placeholder="Number of Units">
                            </div>
                            <div id="submitWIPButton" class="form-group">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary">Add Work In Progress</button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    <!--End Work In Progress-->


        <!--Finished Goods-->
            <div id="finisheddiv" style="display: none;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12" >
                            <h1>Finished Goods</h1>

                            <form name="AddFinishedGoods" id="addFinishedGoods" action="#" method="POST">
                                <div class="form-group col-lg-4">
                                    <label for="listOfWIP">Select Engine</label>
                                    <select class="form-control" name="ListOfWIP" id="listOfWIP">
                                        <option disabled selected>--Select One-- </option>
                                        <option>WIP 1</option>
                                        <option>WIP 2</option>
                                    </select>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="noOfUnits">Cost Per Unit</label>
                                    <input class="form-control" type="text" name="CostPerUnit" id="costPerUnit" placeholder="Cost Per Unit">
                                </div>
                                <div id="submitFGButton" class="form-group">
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-primary">Confirm Completion</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
            <!--End Finished Goods-->

        <!--Add New Engine-->
        <div id="addnewdiv" style="display: block;">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12" >
                        <h1>Add New Engine</h1>
<c:choose>
    <c:when test="${msg.equals('success')}"><script>toastr.success("New Engine Successfully Added")</script></c:when>
    <c:when test="${msg.equals('error')}"><script>toastr.error("Failed to Add Engine")</script></c:when>
</c:choose>
                        <form name="AddNewEngine" id="addNewEngineForm" action="/postEngine" method="POST">
                            <div class="form-group col-lg-4">
                                <label for="engineName">Engine Name</label>
                                <input class="form-control" type="text" name="engine_name" id="engineName" placeholder="Engine Name">
                                <span id="username.errors" class="error">username is required!</span>
                            </div>
                            <div class="form-group col-lg-4">
                                <label for="numberOfCylinders">Number of Cylinders</label>
                                <input class="form-control" type="text" name="no_of_cylinders" id="numberOfCylinders" placeholder="Number of Cylinders">
                            </div>
                            <div class="form-group col-lg-4">
                                <label for="cubicCapacity">Cubic Capacity</label>
                                <input class="form-control" type="text" name="cc" id="cubicCapacity" placeholder="Cubic Capacity">
                            </div>
                            <div class="form-group col-lg-4">
                                <label for="fuelType">Fuel Type</label>
                                <select class="form-control" name="fuel_type" id="fuelType">
                                    <option disabled selected>--Select One-- </option>
                                    <option value="PET">Petrol</option>
                                    <option value="DIS">Diesel</option>
                                </select>
                            </div>
                            <div class="form-group col-lg-4">
                                <label for="mountType">Mounting Type</label>
                                <select class="form-control" name="mounting_type" id="mountType">
                                    <option disabled selected>--Select One-- </option>
                                    <option>Traverse</option>
                                    <option>Longitudinal</option>
                                </select>
                            </div>
                            <div class="form-group col-lg-4">
                                <label for="numberOfCylinders">Price</label>
                                <input class="form-control" type="text" name="price" id="price" placeholder="Price">
                            </div>
                            <div id="submitNewEngineButton" class="form-group">
                                <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary">Confirm Engine Details</button>
                            </div>
                                </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <!--End Add New Engine-->


    </div>
</div>
</body>
</html>