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
        data:  { reqnumber :  "1" , reqdepartment : "hi" },
        dataType: 'json',
        success: function(dt)
        {
            window.alert("Done and Dusted");

<<<<<<< 3f0ba25dde801ec5c3dc71dc2f2ef4d7b8c4181d
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
<<<<<<< 29b4b5ff3494308b1aafe14204e7f4061bba4b39
            data:  { reqnumber :  "32" , reqdepartment : "Sales", callfrom :"8"  },
=======
<<<<<<< 24f9a9ecb2285cbd3e70c2a552072cfa673ce5e4
            data:  { reqnumber :  "1" , reqdepartment : "hi", callfrom :"1"  },
=======
            data:  { reqnumber :  "1" , reqdepartment : "hi" },
>>>>>>> upto comefrom
>>>>>>> upto comefrom
            dataType: 'json',
            success: function(dt)
            {
                window.alert("Done and Dusted");

            },
            error : function(e) {
                console.log("ERROR: ", e);
                window.alert("Nothing" +e);
                window.location('finance/financeHome.jsp');
            },
        });
        $("#AcceptDeclineModal").modal('hide');
    }
=======
        }
    });
    $("#AcceptDeclineModal").modal('hide');
}
>>>>>>> new pages for finance inbox and outbox


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

