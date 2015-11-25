/**
 * Created by Anoukh on 11/12/2015.
 */

$(document).ready(function(){

    $("#wip").click(function(){
        $("#wipdiv").show(500);
        $("#finisheddiv").hide(500);
        $("#addnewdiv").hide(500);
    });

    $("#finished").click(function(){
        $("#wipdiv").hide(500);
        $("#finisheddiv").show(500);
        $("#addnewdiv").hide(500);
    });

    $("#addNew").click(function(){
        $("#wipdiv").hide(500);
        $("#finisheddiv").hide(500);
        $("#addnewdiv").show(500);
    });

});
