<%--
  Created by IntelliJ IDEA.
  User: Janitha
  Date: 11/8/15
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <!--A Design by W3layouts
  Author: W3layout
  Author URL: http://w3layouts.com
  License: Creative Commons Attribution 3.0 Unported
  License URL: http://creativecommons.org/licenses/by/3.0/
  -->
  <!DOCTYPE HTML>
  <html>
  <head>
    <title>Meditation a Sports Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Meditation Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <link href='//fonts.googleapis.com/css?family=Open+Sans:300,300italic,400italic,400,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!--webfont-->
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
    <!--//requred-js-files-->
    <link rel="stylesheet" type="text/css" href="css/default.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <script src="js/modernizr.custom.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <!--/script-->
    <script type="text/javascript">
      jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
          event.preventDefault();
          $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
        });
      });
    </script>

  </head>
  <body>

  <div class="header">

    <!--start-top-nav-->
    <div class="top-nav">

      <div class="top-header">
        <a href="index1.jsp"><h3>HR</h3></a>
      </div>
      <nav class="nav1">
        <a id="menu-toggle" class="anchor-link" href="#"><img src="images/nav.png" alt="" /></a>
        <ul class="simple-toggle" id="menu">
          <li class="active"><a href="index1.jsp">Home</a></li>

          <!-- logo -->
          <li class="logo"><a href="index1.jsp"><h1>Human Resource Management</h1></a></li>
          <!-- logo -->

        </ul>
      </nav>
      <div class="clearfix"> </div>
      <script type="text/javascript">
        $(document).ready(function() {

          $('#menu-toggle').click(function () {
            $('#menu').toggleClass('open');
            e.preventDefault();
          });

        });
      </script>
    </div>
    <!--End-top-nav-->
    <div class="banner-text">

      <div class="container">

      </div>
      <div class="clearfix"> </div>
    </div>
  </div>
  <div class="container">
    <div class="screen-shots">

      <!--sreen-gallery-cursual-->

      <div class="sreen-gallery-cursual">

        <!-- start content_slider -->
        <div id="owl-demo" class="owl-carousel">
          <div class="item">
            <div class="item-grid">
              <div class="item-pic">
                  <a href="Maintenance.jsp">
                <img src="images/Maintanance.jpg" alt="" style="width:100%; height:40%" /></a>
                <div class="item-text text-center">
                  <p class="s-para">Maintenance</p>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="item-grid">
              <div class="item-pic">
                  <a href="Finance.jsp">
                <img src="images/finance.jpg" alt="" style="width:100%; height:40%" /></a>
                <div class="item-text text-center">
                  <p class="s-para">Finance</p>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="item-grid">
              <div class="item-pic">
                  <a href="Inventory.jsp">
                <img src="images/inventory.jpg" alt="" style="width:100%; height:40%"/></a>
                <div class="item-text text-center">
                  <p class="s-para">Inventory</p>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="item-grid">
              <div class="item-pic">
                  <a href="Humanresource.jsp">
                <img src="images/hr.jpg" alt="" style="width:100%; height:40%"/></a>
                <div class="item-text text-center">
                  <p class="s-para">Human Resources</p>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="item-grid">
              <div class="item-pic">
                  <a href="Sales.jsp">
                <img src="images/sales.jpg" alt=""style="width:100%; height:40%" /></a>
                <div class="item-text text-center">
                  <p class="s-para">Sales and Services</p>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
      <!--//sreen-gallery-cursual-->
    </div>
  </div>
  <!-- requried-jsfiles-for owl -->
  <script src="js/owl.carousel.js"></script>
  <script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        items :4,
        lazyLoad : true,
        autoPlay : true,
        navigation : false,
        navigationText :  false,
        pagination : true,
      });
    });
  </script>

  <!-- //requried-jsfiles-for owl -->

  <!--hover-grid-->

  <div class="footer">
    <div class="container">

      <div class="clearfix"></div>
      <div class="copy-rights">
        <p>AZD </p>
      </div>
    </div>
    <!---->
    <script type="text/javascript">
      $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */
        $().UItoTop({ easingType: 'easeOutQuart' });
      });
    </script>
    <a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    <!---->

  </div>
  </body>
  </html>
  </body>
</html>
