$(document).ready(function() {
    $("#content > div").hide();
    $("#content > div:eq(0)").show();
    $("#tabs > a:eq(0)").css("background", "url(tab-selected.jpg) top left no-repeat");
});

function opentab(num) {
    $("#content > div").hide();
    $("#content > div:eq(" + (num-1) + ")").fadeIn();
    $("#tabs > a").css("background", "url(tab.jpg) top left no-repeat");
    $("#tabs > a:eq(" + (num-1) + ")").css("background", "url(tab-selected.jpg) top left no-repeat");
}
