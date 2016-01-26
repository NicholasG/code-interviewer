var adminPanelApp = angular.module("adminPanelApp", ['ngRoute', 'ngResource','googlechart','ui.ace','ui.router']);

$(document).ready(function() {
	var fadeToggle = false;
	$("div#mainMobile").click(function() {
			$("div.sidebar").toggle();
			if (!fadeToggle) {$("div.content").css("margin-left", 0); fadeToggle = true; }
			else {$("div.content").css("margin-left", 180); fadeToggle = false; }
	});

	// $("#dashboard").click(function() {
	// 		$("ul#subDashboard").slideToggle('fast');
	// });

	$("div#secondMobile").click(function() {
			$("div.sidebar").fadeToggle();
	});
	$("div#userMenu").hide();
	$("div#selectFilterDashboard").hide();

	$("span#role").click(function() {
			$("div#userMenu").fadeToggle('fast'); 
	});

	// $("span#role").hover(function() {
	// 		if (!fadeToggle) {$("div#userMenu").fadeIn('fast'); fadeToggle = true;}
	// 		else {$("div#userMenu").fadeOut('fast'); fadeToggle = false;}
	// });

	window.onresize = function(event) {
		if ($(window).width() > 768) {
			$("div.content").css("margin-left", 180);
			$(".sidebar").show();
			$("div.logo").show();
		};
		if ($(window).width() < 768) {
			$("div.content").css("margin-left", 0);
		};
	};

	$('button.btnInfo').click(function(event){
    	$('p.info-p').slideToggle('fast');
	});
});
$(document).keyup(function(e){
   	 	if(e.keyCode == 27){
        	$("div.send-test").fadeOut("fast");
        	$("div#selectFilterDashboard").fadeOut('fast');
        	$("div#userMenu").fadeOut('fast');
    	}
	});
$(document).on("click","button.send", function(){
	$("div.send-test").fadeIn("fast");
	// $("span.select").css("color","#e2e2e2");
});
$(document).on("click","button#close", function(){
	$("div.send-test").fadeOut("fast");
});
$(document).on("click","div#close-box", function(){
	$("div.send-test").fadeOut("fast");
});
$(document).on("click","span#selectDash", function(){
	$("div#selectFilterDashboard").fadeToggle('fast');
	$("span#selectDash").css("color","#333")
});
$(document).on("click","div.content",function() {
			$("div#userMenu").fadeOut('fast');
	});
$(document).on("click","div.selectMenu",function() {
			$("div.selectMenu").fadeOut('fast');
	});

$(document).on("click","span#selectSpeciality", function(){
	$("div#menuSpeciality").fadeToggle('fast');
	$("span#selectSpeciality").css("color","#333");
});

$(document).on("click","span#selectEngLvl", function(){
	$("div#menuEngLvl").fadeToggle('fast');
	$("span#selectEngLvl").css("color","#333");
});
$(document).on("click","span#selectLang", function(){
		$("div#menuLang").fadeToggle('fast');
		$("span#selectLang").css("color","#333");
});
$(document).on("click","#logout", function(){
		window.location.assign('login?logout');
});
$(document).on("click","tr.hover-tr", function(e){
	$(this).data('timeout', setTimeout( function () {
	    $('div.box-item-info').css({ 'top':e.pageY - 150,'left':e.pageX });
	    $('div.box-item-info').fadeIn("fast");
    }, 500));
 });
$(document).on("click","div.box-item-info", function(e){
	    $('div.box-item-info').fadeOut("fast");
 });
// $(document).on("mouseover","button.send", function(){
// 	$(this).data('timeout', setTimeout( function () {
// 		$("div.altContainer").html("<div class='alt'>Add new participant</div>");
// 	}, 500));
// 	// $("div.alt").fadeOut(500);
// });
// $(document).on("mouseout","button.send", function(){
// 	$("div.alt").fadeOut("fast");
// });