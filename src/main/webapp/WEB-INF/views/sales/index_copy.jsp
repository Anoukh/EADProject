<%--
  Created by IntelliJ IDEA.
  User: anoukh
  Date: 11/20/15
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
  <h3>Click Here for <a href="/inventory">Inventory</a> </h3>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>AZD	Company</title>
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
      <a href="index.html"><img src="/resources/core/images/sales_images/logo.png" alt=""/></a>
    </div>
    <div class="cssmenu">
      <ul>

        <li><a href="login.html">My Account</a></li>
        <li><a href="checkout.html">CheckOut</a></li>
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
<div class="index-banner">
  <div class="wmuSlider example1" style="height: 560px;">
    <div class="wmuSliderWrapper">
      <article style="position: relative; width: 100%; opacity: 1;">
        <div class="banner-wrap">
          <div class="slider-left">
            <img src="/resources/core/images/sales_images/banner1.jpg" alt=""/>
          </div>
          <div class="slider-right">
            <h1>AZD</h1>
            <h2>Company</h2>
            <p>New Generation Sport Engines</p>
            <div class="btn"><a href="shop.html">Shop Now</a></div>
          </div>
          <div class="clear"></div>
        </div>
      </article>
      <article style="position: absolute; width: 100%; opacity: 0;">
        <div class="banner-wrap">
          <div class="slider-left">
            <img src="/resources/core/images/sales_images/banner2.jpg" alt=""/>
          </div>
          <div class="slider-right">
            <h1>AZD</h1>
            <h2>Company</h2>
            <p>New Generation Sport Engines</p>
            <div class="btn"><a href="shop.html">Shop Now</a></div>
          </div>
          <div class="clear"></div>
        </div>
      </article>
      <article style="position: absolute; width: 100%; opacity: 0;">
        <div class="banner-wrap">
          <div class="slider-left">
            <img src="/resources/core/images/sales_images/banner1.jpg" alt=""/>
          </div>
          <div class="slider-right">
            <h1>AZD</h1>
            <h2>Company</h2>
            <p>New Generation Sport Engines</p>
            <div class="btn"><a href="shop.html">Shop Now</a></div>
          </div>
          <div class="clear"></div>
        </div>
      </article>
      <article style="position: absolute; width: 100%; opacity: 0;">
        <div class="banner-wrap">
          <div class="slider-left">
            <img src="/resources/core/images/sales_images/banner2.jpg" alt=""/>
          </div>
          <div class="slider-right">
            <h1>AZD</h1>
            <h2>Company</h2>
            <p>New Generation Sport Engines</p>
            <div class="btn"><a href="shop.html">Shop Now</a></div>
          </div>
          <div class="clear"></div>
        </div>
      </article>
      <article style="position: absolute; width: 100%; opacity: 0;">
        <div class="banner-wrap">
          <div class="slider-left">
            <img src="/resources/core/images/sales_images/banner1.jpg" alt=""/>
          </div>
          <div class="slider-right">
            <h1>AZD</h1>
            <h2>Company</h2>
            <p>New Generation Sport Engines</p>
            <div class="btn"><a href="shop.html">Shop Now</a></div>
          </div>
          <div class="clear"></div>
        </div>
      </article>
    </div>
    <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
    <ul class="wmuSliderPagination">
      <li><a href="#" class="">0</a></li>
      <li><a href="#" class="">1</a></li>
      <li><a href="#" class="wmuActive">2</a></li>
      <li><a href="#">3</a></li>
      <li><a href="#">4</a></li>
    </ul>
    <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a><ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="">2</a></li><li><a href="#" class="">3</a></li><li><a href="#" class="">4</a></li></ul></div>
  <script src="/resources/core/js/sales/jquery.wmuSlider.js"></script>
  <script type="text/javascript" src="/resources/core/js/sales/modernizr.custom.min.js"></script>
  <script>
    $('.example1').wmuSlider();
  </script>
</div>
<div class="main">
  <div class="wrap">

    <div class="content-bottom">
      <div class="box1">


        <div class="col_1_of_3 span_1_of_3"><a href="/sales">
          <div class="view view-fifth">
            <div class="top_box">
              <h3 class="m_1">Murcielago Roadster 2005 6.2L Motor J070</h3>
              <p class="m_2">Complete Engine</p>
              <div class="grid_img">
                <div class="css3"><img src="/resources/core/images/sales_images/pic.jpg" alt=""/></div>
                <div class="mask">
                  <div class="info">Quick View</div>
                </div>
              </div>
              <div class="price">$40,000.34</div>
            </div>
          </div>

          <ul class="list">
            <li>
              <img src="/resources/core/images/sales_images/plus.png" alt=""/>
              <ul class="icon1 sub-icon1 profile_img">
                <li><a class="active-icon c1" href="#">Add To Car</a>
                  <ul class="sub-icon1 list">
                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <div class="clear"></div>
        </a></div>


        <div class="col_1_of_3 span_1_of_3"><a href="/sales/single_product.jsp">
          <div class="view view-fifth">
            <div class="top_box">
              <h3 class="m_1">Corvette C6 Z06 LS7 Motor, V8 Engine</h3>
              <p class="m_2">Complete Engine</p>
              <div class="grid_img">
                <div class="css3"><img src="/resources/core/images/sales_images/pic1.jpg" alt=""/></div>
                <div class="mask">
                  <div class="info">Quick View</div>
                </div>
              </div>
              <div class="price">$6,334.18</div>
            </div>
          </div>

          <ul class="list">
            <li>
              <img src="/resources/core/images/sales_images/plus.png" alt=""/>
              <ul class="icon1 sub-icon1 profile_img">
                <li><a class="active-icon c1" href="#">Add To Car</a>
                  <ul class="sub-icon1 list">
                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <div class="clear"></div>
        </a></div>
        <div class="col_1_of_3 span_1_of_3"><a href="/sales/single_product.jsp">
          <div class="view view-fifth">
            <div class="top_box">
              <h3 class="m_1">VENTURE TESTED 3.4L ENGINE 164K</h3>
              <p class="m_2">Complete Engine</p>
              <div class="grid_img">
                <div class="css3"><img src="/resources/core/images/sales_images/pic2.jpg" alt=""/></div>
                <div class="mask">
                  <div class="info">Quick View</div>
                </div>
              </div>
              <div class="price">$15,400.18</div>
            </div>
          </div>

          <ul class="list">
            <li>
              <img src="/resources/core/images/sales_images/plus.png" alt=""/>
              <ul class="icon1 sub-icon1 profile_img">
                <li><a class="active-icon c1" href="#">Add To Car</a>
                  <ul class="sub-icon1 list">
                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <div class="clear"></div>
        </a></div>
        <div class="clear"></div>

      </div>
      <div class="box1">
        <div class="col_1_of_3 span_1_of_3"><a href="/sales/single_product.jsp">
          <div class="view view-fifth">
            <div class="top_box">
              <h3 class="m_1">OEM 2009-2015 NISSAN ROGUE 2.5L 4 CYLINDER ENGINE </h3>
              <p class="m_2">Complete Engine</p>
              <div class="grid_img">
                <div class="css3"><img src="/resources/core/images/sales_images/pic3.jpg" alt=""/></div>
                <div class="mask">
                  <div class="info">Quick View</div>
                </div>
              </div>
              <div class="price">$8,433.18</div>
            </div>
          </div>

          <ul class="list">
            <li>
              <img src="/resources/core/images/sales_images/plus.png" alt=""/>
              <ul class="icon1 sub-icon1 profile_img">
                <li><a class="active-icon c1" href="#">Add To Car</a>
                  <ul class="sub-icon1 list">
                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <div class="clear"></div>
        </a></div>
        <div class="col_1_of_3 span_1_of_3"><a href="/sales/single_product.jsp">
          <div class="view view-fifth">
            <div class="top_box">
              <h3 class="m_1">S2000 AP1 F20C Complete Engine Loom ECU 6 Speed Manual </h3>
              <p class="m_2">Complete Engine</p>
              <div class="grid_img">
                <div class="css3"><img src="/resources/core/images/sales_images/pic4.jpg" alt=""/></div>
                <div class="mask">
                  <div class="info">Quick View</div>
                </div>
              </div>
              <div class="price">$38,424.00</div>
            </div>
          </div>

          <ul class="list">
            <li>
              <img src="/resources/core/images/sales_images/plus.png" alt=""/>
              <ul class="icon1 sub-icon1 profile_img">
                <li><a class="active-icon c1" href="#">Add To Car</a>
                  <ul class="sub-icon1 list">
                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <div class="clear"></div>
        </a></div>
        <div class="col_1_of_3 span_1_of_3"><a href="single_product.jsp">
          <div class="view view-fifth">
            <div class="top_box">
              <h3 class="m_1">CHEVY IMAPALA TESTED 3800 ENGINE 120K</h3>
              <p class="m_2">Complete Engine</p>
              <div class="grid_img">
                <div class="css3"><img src="/resources/core/images/sales_images/pic5.jpg" alt=""/></div>
                <div class="mask">
                  <div class="info">Quick View</div>
                </div>
              </div>
              <div class="price">$28,424.18</div>
            </div>
          </div>

          <ul class="list">
            <li>
              <img src="/resources/core/images/sales_images/plus.png" alt=""/>
              <ul class="icon1 sub-icon1 profile_img">
                <li><a class="active-icon c1" href="#">Add To Car</a>
                  <ul class="sub-icon1 list">
                    <li><h3>sed diam nonummy</h3><a href=""></a></li>
                    <li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
          <div class="clear"></div>
        </a></div>
        <div class="clear"></div>
      </div>
    </div>
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
