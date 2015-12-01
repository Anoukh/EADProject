<%--
  Created by IntelliJ IDEA.
  User: Anushka Getamanna
  Date: 11/27/2015
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Checkout</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link href="/resources/core/css/sales_css/style.css" rel="stylesheet" type="text/css" media="all" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="/resources/core/js/sales/jquery.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      $(".dropdown img.flag").addClass("flagvisibility");

      $(".dropdown dt a").click(function() {
        $(".dropdown dd ul").toggle();
      });

      $(".dropdown dd ul li a").click(function() {
        var text = $(this).html();
        $(".dropdown dt a span").html(text);
        $(".dropdown dd ul").hide();
        $("#result").html("Selected value is: " + getSelectedValue("sample"));
      });

      function getSelectedValue(id) {
        return $("#" + id).find("dt a span.value").html();
      }

      $(document).bind('click', function(e) {
        var $clicked = $(e.target);
        if (! $clicked.parents().hasClass("dropdown"))
          $(".dropdown dd ul").hide();
      });


      $("#flagSwitcher").click(function() {
        $(".dropdown img.flag").toggleClass("flagvisibility");
      });
    });
  </script>
  <!-- start menu -->
  <link href="/resources/core/css/sales_css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
  <script type="text/javascript" src="/resources/core/js/sales/megamenu.js"></script>
  <script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
  <!-- end menu -->
  <!-- top scrolling -->
  <script type="text/javascript" src="/resources/core/js/sales/move-top.js"></script>
  <script type="text/javascript" src="/resources/core/js/sales/easing.js"></script>
  <script type="text/javascript">
    jQuery(document).ready(function($) {
      $(".scroll").click(function(event){
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
      });
    });
  </script>
</head>
<body>
<div class="header-top">
  <div class="wrap">
    <div class="logo">
      <a href="/"><img src="/resources/core/images/sales_images/logo.png" alt=""/></a>
    </div>
    <div class="cssmenu">
      <ul>

        <li><a href="/login">My Account</a></li>
        <li><a href="/checkout">CheckOut</a></li>
      </ul>
    </div>

    <div class="clear"></div>
  </div>
</div>
<div class="header-bottom">
  <div class="wrap">
    <!-- start header menu -->
    <ul class="megamenu skyblue">
      <li><a class="color1" href="#">Home</a></li>

      <li class="active grid"><a class="color4" href="#">Engine categories</a>
        <div class="megapanel">
          <div class="row">
            <div class="col1">
              <div class="h_nav">
                <h4>Cubic Capacity</h4>
                <ul>
                  <li><a href="shop.html">800cc</a></li>
                  <li><a href="shop.html">1000cc</a></li>
                  <li><a href="shop.html">1500cc</a></li>
                  <li><a href="shop.html">2000cc</a></li>

                </ul>
              </div>
            </div>
            <div class="col1">
              <div class="h_nav">
                <h4>Fuel Type</h4>
                <ul>
                  <li><a href="shop.html">Gasoline</a></li>
                  <li><a href="shop.html">Diesel</a></li>
                  <li><a href="shop.html">Ethanol</a></li>
                  <li><a href="shop.html">Biodiesel</a></li>
                  <li><a href="shop.html">Propane</a></li>

                </ul>
              </div>
            </div>
            <div class="col1">
              <div class="h_nav">
                <h4>No. of Cylinder</h4>
                <ul>
                  <li><a href="shop.html">4 Cylinder</a></li>
                  <li><a href="shop.html">6 Cylinder</a></li>
                  <li><a href="shop.html">8 Cylinder</a></li>
                  <li><a href="shop.html">12 Cylinder</a></li>

                </ul>
              </div>
            </div>
            <div class="col1">
              <div class="h_nav">
                <h4>Mounting</h4>
                <ul>
                  <li><a href="shop.html">Regular Mounting</a></li>
                  <li><a href="shop.html">Pro Type Mounting</a></li>

                </ul>
              </div>
            </div>

            <div class="col1">
              <div class="h_nav">
                <img src="images/nav_img1.jpg" alt=""/>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col2"></div>
            <div class="col1"></div>
            <div class="col1"></div>
            <div class="col1"></div>
            <div class="col1"></div>
          </div>
        </div>
      </li>






    </ul>
    <div class="clear"></div>
  </div>
</div>
<div class="login">
  <div class="wrap">
    <h4 class="title">Shopping cart is empty</h4>
    <p class="cart">You have no items in your shopping cart.<br>Click<a href="index.html"> here</a> to continue shopping</p>
  </div>
</div>
<div class="footer">



  <div class="copy">
    <div class="wrap">
      <p>© All rights reserved | 2015 &nbsp;<a href="#"> AZD Company</a></p>
    </div>
  </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {

    var defaults = {
      containerID: 'toTop', // fading element id
      containerHoverID: 'toTopHover', // fading element hover id
      scrollSpeed: 1200,
      easingType: 'linear'
    };


    $().UItoTop({ easingType: 'easeOutQuart' });

  });
</script>
<a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>
