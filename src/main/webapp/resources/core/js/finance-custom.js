/**
 * Created by Janitha on 11/21/2015.
 */
    function toggle(){
        $("#wrapper").toggleClass("toggled");
    }

    function financehomeonload(){
        $("#cashinflowdiv").hide();
        $("#cashoutflowdiv").hide();
        $("#outboxdiv").hide();
        $("#inboxdiv").hide();

    }

    function inbox(){
        $("#cashinflowdiv").hide(1000);
        $("#cashoutflowdiv").hide(1000);
        $("#outboxdiv").hide(1000);
        $("#inboxdiv").show(1000);

    }

    function outbox(){
        $("#cashinflowdiv").hide(1000);
        $("#cashoutflowdiv").hide(1000);
        $("#inboxdiv").hide(1000);
        $("#outboxdiv").show(1000);


    }

    function cashinflow(){
        $("#cashinflowdiv").show(1000);
        $("#cashoutflowdiv").hide(1000);
        $("#inboxdiv").hide(1000);
        $("#outboxdiv").hide(1000);


    }
    function cashoutflow(){
        $("#cashoutflowdiv").show(1000);
        $("#cashinflowdiv").hide(1000);
        $("#inboxdiv").hide(1000);
        $("#outboxdiv").hide(1000);


    }

   // function pop(div) {
    //    document.getElementById(div).style.display = 'block';
   // }
   // function hide(div) {
   //     document.getElementById(div).style.display = 'none';
    //}

    //To detect escape button
    document.onkeydown = function(evt) {
        evt = evt || window.event;
        if (evt.keyCode == 27) {
            hide('popDiv');
        }
    };

