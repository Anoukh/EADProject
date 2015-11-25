/*------------------------------------------------------
    Author : www.webthemez.com
    License: Commons Attribution 3.0
    http://creativecommons.org/licenses/by/3.0/
---------------------------------------------------------  */

(function ($) {
    "use strict";
    var mainApp = {

        initFunction: function () {
            /*MENU 
            ------------------------------------*/
            $('#main-menu').metisMenu();
			
            $(window).bind("load resize", function () {
                if ($(this).width() < 768) {
                    $('div.sidebar-collapse').addClass('collapse')
                } else {
                    $('div.sidebar-collapse').removeClass('collapse')
                }
            });

            /* MORRIS BAR CHART
			-----------------------------------------*/
            Morris.Bar({
                element: 'morris-bar-chart',
                data: [{
                    y: 'January',
                    a: 6,
                    b: 6,
                    c: 5,
                    d: 5
                }, {
                    y: 'February',
                    a: 6,
                    b: 4,
                    c: 6,
                    d: 3
                }, {
                    y: 'March',
                    a: 6,
                    b: 6,
                    c: 5,
                    d: 5
                }, {
                    y: 'April',
                    a: 2,
                    b: 4,
                    c: 5,
                    d: 5
                }, {
                    y: 'May',
                    a: 4,
                    b: 5,
                    c: 5,
                    d: 6
                }, {
                    y: 'June',
                    a: 6,
                    b: 4,
                    c: 6,
                    d: 5
                }, {
                    y: 'July',
                    a: 5,
                    b: 5,
                    c: 4,
                    d: 6
                }],
                xkey: 'y',
                ykeys: ['a', 'b', 'c', 'd'],
                labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4'],
                hideHover: 'auto',
                resize: true
            });

            /* MORRIS DONUT CHART
			----------------------------------------*/
            Morris.Donut({
                element: 'morris-donut-chart',
                data: [{
                    label: "Total Leaves",
                    value: 5
                }, {
                    label: "Half-Days",
                    value: 3
                }, {
                    label: "Short-Leaves",
                    value: 2
                }],
                resize: true
            });

            /* MORRIS AREA CHART
			----------------------------------------*/

            Morris.Area({
                element: 'morris-area-chart',
                data: [{
                    period: '2010 Q1',
                    iphone: 2666,
                    ipad: null,
                    itouch: 2647
                }, {
                    period: '2010 Q2',
                    iphone: 2778,
                    ipad: 2294,
                    itouch: 2441
                }, {
                    period: '2010 Q3',
                    iphone: 4912,
                    ipad: 1969,
                    itouch: 2501
                }, {
                    period: '2010 Q4',
                    iphone: 3767,
                    ipad: 3597,
                    itouch: 5689
                }, {
                    period: '2011 Q1',
                    iphone: 6810,
                    ipad: 1914,
                    itouch: 2293
                }, {
                    period: '2011 Q2',
                    iphone: 5670,
                    ipad: 4293,
                    itouch: 1881
                }, {
                    period: '2011 Q3',
                    iphone: 4820,
                    ipad: 3795,
                    itouch: 1588
                }, {
                    period: '2011 Q4',
                    iphone: 15073,
                    ipad: 5967,
                    itouch: 5175
                }, {
                    period: '2012 Q1',
                    iphone: 10687,
                    ipad: 4460,
                    itouch: 2028
                }, {
                    period: '2012 Q2',
                    iphone: 8432,
                    ipad: 5713,
                    itouch: 1791
                }],
                xkey: 'period',
                ykeys: ['iphone', 'ipad', 'itouch'],
                labels: ['iPhone', 'iPad', 'iPod Touch'],
                pointSize: 2,
                hideHover: 'auto',
                resize: true
            });

            /* MORRIS LINE CHART
			----------------------------------------*/
            Morris.Line({
                element: 'morris-line-chart',
                data: [{
                    y: 'January',
                    a: 6,
                    b: 6,
                    c: 5,
                    d: 5
                }, {
                    y: 'February',
                    a: 6,
                    b: 4,
                    c: 6,
                    d: 3
                }, {
                    y: 'March',
                    a: 6,
                    b: 6,
                    c: 5,
                    d: 5
                }, {
                    y: 'April',
                    a: 2,
                    b: 4,
                    c: 5,
                    d: 5
                }, {
                    y: 'May',
                    a: 4,
                    b: 5,
                    c: 5,
                    d: 6
                }, {
                    y: 'June',
                    a: 6,
                    b: 4,
                    c: 6,
                    d: 5
                }, {
                    y: 'July',
                    a: 5,
                    b: 5,
                    c: 4,
                    d: 6
                }],
                xkey: 'y',
                ykeys: ['a', 'b', 'c', 'd'],
                labels: ['Week 1', 'Week 2', 'Week 3', 'Week 4'],
                hideHover: 'auto',
                resize: true
            });
           
     
        },

        initialization: function () {
            mainApp.initFunction();

        }

    }
    // Initializing ///

    $(document).ready(function () {
        mainApp.initFunction();
    });

}(jQuery));
