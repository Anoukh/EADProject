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

          $.ajax({
                type: "GET",
                url: 'financeoutflow',
                data:  {},
                dataType: 'json',
                success: function()
                {
                    window.alert("Done and Dusted");
                    //window.alert(dt.HotelLLList);

                   /* var hotelLL =dt.HotelLLList;
                    hlLL =hotelLL.split("_");

                    //window.alert(hLL[1]);
                    var restLL  =dt.RestLLList;
                    rtLL =restLL.split("_");
                    var leisureLL =dt.LeisureLLList;
                    leLL =leisureLL.split("_");

                    document.getElementById("relatedhotelsuggestions").innerHTML= dt.HotelList;
                    document.getElementById("relatedrestaurantesuggestions").innerHTML= dt.RestList;
                    document.getElementById("relatedleisuresuggestions").innerHTML= dt.LeisureList;
                    placemarkers(hlLL);
                    placemarkers(rtLL);
                    placemarkers(leLL);
                    */
                    //	document.getElementById("places").value = "'"+dt+"'";
                }
        });




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

    function show(div) {
        $("#AcceptDeclineModal").modal('show');
    }
    function acceptrequest(div) {
        var reqnumber= document.getElementById("reqnumber").value;
        var reqdepartment = document.getElementById("reqdepartment").value;
        //window.alert("Checking");
        $.ajax({
            type: "GET",
            url: 'acceptfincane',
            data:  { reqnumber :  "hello" , reqdepartment : "hi" },
            dataType: 'json',
            success: function(dt)
            {
                window.alert("Done and Dusted");

            }
        });
        $("#AcceptDeclineModal").modal('hide');
    }


    function rejectrequest(div) {
        var reqnumber= document.getElementById("reqnumber").value;
        var reqdepartment = document.getElementById("reqdepartment").value;

        $.ajax({
            type: "GET",
            url: 'rejectfincane',
            data:  { reqnumber :  "hello" , reqdepartment : reqdepartment },
            dataType: 'json',
            success: function(dt)
            {
                window.alert("Done and Dusted");

            }
        });

    $("#AcceptDeclineModal").modal('hide');
    }
    //To detect escape button
    document.onkeydown = function(evt) {
        evt = evt || window.event;
        if (evt.keyCode == 27) {
            hide('popDiv');
        }
    };

