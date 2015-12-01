<%--
  Created by IntelliJ IDEA.
  User: Anushka Getamanna
  Date: 11/26/2015
  Time: 11:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Product</title>
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
  <script type="text/javascript" src="/resources/core/js/sales/jquery.jscrollpane.min.js"></script>
  <script type="text/javascript" id="sourcecode">
    $(function()
    {
      $('.scroll-pane').jScrollPane();
    });
  </script>
  <!----details-product-slider--->
  <!-- Include the Etalage files -->
  <link rel="stylesheet" href="/resources/core/css/sales_css/etalage.css">
  <script src="/resources/core/js/sales/jquery.etalage.min.js"></script>
  <!-- Include the Etalage files -->
  <script>
    jQuery(document).ready(function($){

      $('#etalage').etalage({
        thumb_image_width: 300,
        thumb_image_height: 250,

        show_hint: true,
        click_callback: function(image_anchor, instance_id){
          alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
        }
      });
      // This is for the dropdown list example:
      $('.dropdownlist').change(function(){
        etalage_show( $(this).find('option:selected').attr('class') );
      });

    });
  </script>
  <!----//details-product-slider--->
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
<div class="single">
  <div class="wrap">
    <div class="rsidebar span_1_of_left">
      <section  class="sky-form">

      </section>
      <section  class="sky-form">

        <div class="row row1 scroll-pane">

        </div>
      </section>
      <section  class="sky-form">

        <div class="row row1 scroll-pane">

        </div>
      </section>
      <section  class="sky-form">

        <div class="row row1 scroll-pane">

        </div>
      </section>
      <section  class="sky-form">

        <div class="row row1 scroll-pane">

        </div>
      </section>
    </div>
    <div class="cont span_2_of_3">
      <div class="labout span_1_of_a1">
        <!-- start product_slider -->
        <ul id="etalage">
          <li>
            <a href="optionallink.html">
              <img class="etalage_thumb_image" src="${oneEngin.image}" />
              <img class="etalage_source_image" src="${oneEngin.image}" />
            </a>
          </li>

        </ul>


        <!-- end product_slider -->
      </div>
      <div class="cont1 span_2_of_a1">
        <h3 class="m_3">${oneEngin.engine_name}</h3>

        <div class="price_single">
          <span class="actual"> $ ${oneEngin.price}0</span>

        </div>

        <div class="btn_form">
          <form>
            <input type="submit" value="buy now" title="">
          </form>
        </div>
        <ul class="add-to-links">
          <li><img src="/resources/core/images/sales_images/wish.png" alt=""/><a href="#">Add to wishlist</a></li>
        </ul>
        <p class="m_2">Capacity: <span style="color: black;">${oneEngin.cc}CC</span> </p>
        <p class="m_2">Fuel Type: <span style="color: black;">${oneEngin.fuel_type}</span>  </p>
        <p class="m_2">Mounting Type: <span style="color: black;">${oneEngin.mounting_type}</span>  </p>
        <p class="m_2">No of Items: <span style="color: black;">${oneEngin.no_of_units}</span>  </p>
      </div>
      <div class="clear"></div>



      <script type="text/javascript">
        $(window).load(function() {
          $("#flexiselDemo1").flexisel();
          $("#flexiselDemo2").flexisel({
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
              portrait: {
                changePoint:480,
                visibleItems: 1
              },
              landscape: {
                changePoint:640,
                visibleItems: 2
              },
              tablet: {
                changePoint:768,
                visibleItems: 3
              }
            }
          });

          $("#flexiselDemo3").flexisel({
            visibleItems: 5,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
              portrait: {
                changePoint:480,
                visibleItems: 1
              },
              landscape: {
                changePoint:640,
                visibleItems: 2
              },
              tablet: {
                changePoint:768,
                visibleItems: 3
              }
            }
          });

        });
      </script>
      <script type="text/javascript" src="/resources/core/js/sales/jquery.flexisel.js"></script>
      <div class="toogle">
        <h3 class="m_3">TERMS & CONDITIONS</h3>
        <p class="m_text">Item is sold as being in good, working condition. Some items may not be legal for on road use,
          please check the legalities of performance modifications with your local transport authority.

          If there is a problem with your item or it does not match the description please email first to resolve before
          leaving feedback. If the part is faulty we will attempt to replace with an equivalent part.

          Refund Policy: We do not refund simply because you change your mind about an item or have bought the incorrect item.
          All items are inspected before being sent. If the item is not as stated in the description we will refund the purchase price.
          All shipping costs are to be paid by the buyer. We are unable to refund any items that have
          been fitted or modified in any way and are not in original condition as sent. We do not cover labour costs associated with
          fitting this part under any circumstances.</div>

    </div>
    <div class="clear"></div>
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
