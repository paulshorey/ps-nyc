<? if (1==2) { ?><script type="text/javascript"><? } ?>
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

// GLOBAL
var actlength = 5000;
var ready = 0;
var curtainup = 0;

var actclicked = 0;

var documentready = 0;
var windowload = 0;

var timer = 0;
var ua = navigator.userAgent.toLowerCase();
var windowscrollto01 = false;
var screensize = 0;
var screenwidth = 0;
var screenheight = 0;
var screensize_old = 0;
var screenwidth_old = 0;
var screenheight_old = 0;
var bodyclass = '';
var bodyaddclass = '';
var bodyaddclasses = '';
var browserdevice = '';
var res_instant = 0;

// MOBILE
var browsermake = '';
var useragent = navigator.userAgent.toLowerCase();
if (useragent.indexOf("android")>=0) { var browsertype = 'mobile'; var browserdevice = 'android'; var browsermake = 'google'; }
if (useragent.indexOf("iphone")>=0) { var browsertype = 'mobile'; var browserdevice = 'iphone'; var browsermake = 'apple'; var res_instant = 1; }
if (useragent.indexOf("ipod")>=0) { var browsertype = 'mobile'; var browserdevice = 'ipod'; var browsermake = 'apple'; var res_instant = 1; }
if (useragent.indexOf("ipad")>=0) { var browsertype = 'mobile'; var browserdevice = 'ipad'; var browsermake = 'apple'; }
if (useragent.indexOf("phone")>=0 || 
useragent.indexOf("blackberry")>=0 || 
useragent.indexOf("palm")>=0 || 
useragent.indexOf("mobile")>=0
) {
	var browsertype = 'mobile';
} else if (useragent.indexOf("mac")>=0) {
	var browsertype = 'pc';
	var browserdevice = 'mac';
} else {
	var browsertype = 'pc';
}

// ORIGINAL BODY CLASS
bodyclass = $('body').attr('class');

// RESIZE QUICK
resize();

// WINDOWLOAD
$(window).load(function() { windowload=1;

	// BACKGROUND
	$('body,html').css('background-color','#17303b');
	$('#splash').fadeOut(1500);
	setTimeout('curtain_up();',1000);
	
	// TICKER
	//$('#ticker').animate({'left':$('#ticker .text').width()*-1},50000);

	// ACTORS
	//$('.act .under').fadeOut(0);
	$('.act').click(function(){if(ready==1){
		$('.page.under .acts .act').removeClass('selected');
		$('.page.under .acts .act').eq($(this).index()).addClass('selected');
		$('.page.over .acts .act').removeClass('selected');
		$('.page.over .acts .act').eq($(this).index()).addClass('selected');
		$('.board').css('display','none');
		$('#board'+$(this).index()+'').css('display','block');
		actclicked = 1;
	}});
	$('.act').mouseover(function(){if(ready==1){
		$('.page.under .acts .act').eq($(this).index()).addClass('hover');
		$('.page.over .acts .act').eq($(this).index()).addClass('hover');
		$(this).mouseleave(function(){
			$('.page.under .acts .act').eq($(this).index()).removeClass('hover');
			$('.page.over .acts .act').eq($(this).index()).removeClass('hover');
		});
	}});
	/*
	$('#act_one').click(function(){if(ready==1){
		curtain_up();
		ready=0;
		$('.board, .act').stop();
		
		$('#act_one .over').fadeIn(actlength*.33);
		$('#act_two .under').fadeIn(actlength*.33);
		$('#act_three .under').fadeIn(actlength*.33);
		
		$('#act_one .under').fadeOut(actlength*.33);
		$('#act_two .over').fadeOut(actlength*.33);
		$('#act_three .over').fadeOut(actlength*.33);
		
		$('#act_two').animate({'left':'-1%'},actlength, 'easeInOutSine');
		$('#act_one').animate({'left':'70%'},actlength, 'easeInOutSine');
		$('#act_three').animate({'left':'84%'},actlength, 'easeInOutSine');
		
		$('.board').css('display','none');
		$('#board_one').css('display','block');
		$('#board_one').animate({'height':'50%'},actlength, 'easeInOutSine');
		$('#board_two').animate({'height':0},actlength*.33, 'easeInOutSine');
		$('#board_three').animate({'height':0},actlength*.33, 'easeInOutSine');
		
		console.log('notready');
		setTimeout("console.log('ready');ready=1;",actlength*.8);
	}});
	$('#act_two').click(function(){if(ready==1){
		curtain_up();
		ready=0;
		$('.board, .act').stop();
		
		$('#act_two .over').fadeIn(actlength*.33);
		$('#act_one .under').fadeIn(actlength*.33);
		$('#act_three .under').fadeIn(actlength*.33);
		
		$('#act_two .under').fadeOut(actlength*.33);
		$('#act_one .over').fadeOut(actlength*.33);
		$('#act_three .over').fadeOut(actlength*.33);
		
		$('#act_one').animate({'left':'3%'},actlength, 'easeInOutSine');
		$('#act_two').animate({'left':'68%'},actlength, 'easeInOutSine');
		$('#act_three').animate({'left':'84%'},actlength, 'easeInOutSine');
		
		$('.board').css('display','none');
		$('#board_two').css('display','block');
		$('#board_two').animate({'height':'50%'},actlength, 'easeInOutSine');
		$('#board_one').animate({'height':0},actlength*.33, 'easeInOutSine');
		$('#board_three').animate({'height':0},actlength*.33, 'easeInOutSine');
		
		console.log('notready');
		setTimeout("console.log('ready');ready=1;",actlength*.8);
	}});
	$('#act_three').click(function(){if(ready==1){
		curtain_up();
		ready=0;
		$('.board, .act').stop();
		
		$('#act_three .over').fadeIn(actlength*.33);
		$('#act_one .under').fadeIn(actlength*.33);
		$('#act_two .under').fadeIn(actlength*.33);
		
		$('#act_three .under').fadeOut(actlength*.33);
		$('#act_one .over').fadeOut(actlength*.33);
		$('#act_two .over').fadeOut(actlength*.33);
		
		$('#act_one').animate({'left':'3%'},actlength, 'easeInQuad');
		$('#act_three').animate({'left':'68.1%'},actlength, 'easeInQuad');
		$('#act_two').animate({'left':'82%'},actlength, 'easeInQuad');
		
		$('.board').css('display','none');
		$('#board_three').css('display','block');
		$('#board_three').animate({'height':'50%'},actlength, 'easeInOutSine');
		$('#board_one').animate({'height':0},actlength*.33, 'easeInOutSine');
		$('#board_two').animate({'height':0},actlength*.33, 'easeInOutSine');
		
		console.log('notready');
		setTimeout("console.log('ready');ready=1;",actlength*.8);
	}});
	*/
	
	// BACKGROUND STUFF
	$('#overlay').click(function(){
		frame_close();
		banner_close();
	});
	setTimeout('ready=1;',1500);
	// RESIZE
	resize();
	
});

// RESIZE
$(window).resize(function() {
	
	// RESIZE
	resize();
	
});

// RESIZE
function resize() {
	
	// SIZE		
	console.log(window.innerWidth);
	console.log(document.documentElement.clientWidth);
	console.log(window.screen.width);
	if (window.innerWidth != undefined && window.innerWidth > 0) {
		screenwidth = window.innerWidth;
		screenheight = window.innerHeight;
	} else if (document.documentElement.clientWidth != undefined && document.documentElement.clientWidth > 0) {
		screenwidth = document.documentElement.clientWidth;
		screenheight = document.documentElement.clientHeight;
	} else {
		screenwidth = window.screen.width;
		screenheight = window.screen.height;
	}
	
	// ADDRESS BAR
	if (screenwidth>screenheight) {
		if (useragent.indexOf("4.0 mobile safari")>=0) {
			screenheight = screenheight+72;
		}
	}
	
	// BODY
	$("#body").attr('style','height:'+screenheight+'px;width:'+screenwidth+'px;');
	
	// MOBILE
	if (browserdevice == 'android') {
		window.scrollTo(0, 1);
	} else {
		window.scrollTo(0, 0);
	}
	
	// CLASS
	if (screenwidth >= 1015) {
		screensize = 'gt1000';
		bodyaddclass = 'x_large';
	} else {
	if (screenwidth < 1015) {
		screensize = 'lt1000';
		bodyaddclass = 'x_medium';
	}
	if (screenwidth < 900) {
		screensize = 'lt900 lt1000';
		bodyaddclass = 'x_medium';
	}
	if (screenwidth < 800) {
		screensize = 'lt800 lt900 lt1000';
		bodyaddclass = 'x_medium';
	}
	if (screenwidth < 700) {
		screensize = 'lt700 lt800 lt900 lt1000';
		bodyaddclass = 'x_small';
	}
	if (screenwidth < 600) {
		screensize = 'lt600 lt700 lt800 lt900 lt1000';
		bodyaddclass = 'x_small';
	}
	if (screenwidth < 500) {
		screensize = 'lt500 lt600 lt700 lt800 lt900 lt1000';
		bodyaddclass = 'x_small';
	}
	if (screenwidth < 400) {
		screensize = 'lt400 lt500 lt600 lt700 lt800 lt900 lt1000';
		bodyaddclass = 'x_small x_tiny';
	}
	if (screenwidth < 300) {
		screensize = 'lt300 lt400 lt500 lt600 lt700 lt800 lt900 lt1000';
		bodyaddclass = 'x_small x_tiny';
	}
	}
	$('body').attr('class',bodyclass+' '+bodyaddclass+' '+screensize+' '+browsertype+' '+browserdevice);
	
	// AFTER
	afterresize();
	screensize_old = screensize;
	screenwidth_old = screenwidth;
	screenheight_old = screenheight;
	
}

// AFTERRESIZE
function afterresize() {
}

// INTERVAL
function interval($args) {
}

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

// IE FIX
function onload_ie() {
	afterresize();
}
// RESIZE
function afterresize() {
	
	// resize
	var w_image = 1890;
	var w_important = 1000;
	var w_important_ratio = w_important/w_image;
	var w_image_ratio = w_image/w_important;
	
	var h_image = 1250;
	var h_important = 780;
	var h_important_ratio = h_important/h_image;
	var h_image_ratio = h_image/h_important;

	// resize variables
	if ( (screenheight/screenwidth) < (h_important/w_important) ) {
		$('body').addClass('wide');
		$('body').removeClass('tall');
		window.h_image_size = screenheight*h_image_ratio;
		var w_image_size = h_image_size*(w_image/h_image);
		var w_content_size = screenheight*(w_important/h_important);
		window.h_content_size = w_content_size*(h_important/w_important);
	} else {
		$('body').addClass('tall');
		$('body').removeClass('wide');
		var w_image_size = screenwidth*w_image_ratio;
		window.h_image_size = w_image_size*(h_image/w_image);
		window.h_content_size = screenwidth*(h_important/w_important);
		var w_content_size = window.h_content_size*(w_important/h_important);
	}
	var w_content_offset = (screenwidth-w_content_size) /2;
	var h_content_offset = (screenheight-window.h_content_size) /2;

	// resize content
	$(".page").height(window.h_content_size);
	$(".page").width(w_content_size);
	$(".page").css('left',w_content_offset+'px');
	$(".page").css('top',h_content_offset+'px');
	
	// resize image
	var w_image_margin = (w_image_size-screenwidth)/2;
	var h_image_margin = (h_image_size-screenheight)/2;
	var w_image_offset = (h_image_margin*-1);
	var h_image_offset = (w_image_margin*-1);
	
	$(".stage_image").height(h_image_size);
	$(".stage_image").width(w_image_size);
	$(".stage_image").css('top',w_image_offset+'px');
	$(".stage_image").css('left',h_image_offset+'px');
		
	// curtain
	if (curtainup==1) {
		$('#stage_curtain').css('height',0);
	}
		
	// log
	console.log('window.h_image_size: '+window.h_image_size);
	console.log(' ');
	console.log('screenwidth: '+screenwidth);
	console.log('w_content_size: '+w_content_size+' = '+screenheight+'*('+w_important+'/'+h_important+')');
	console.log('w_content_offset: '+w_content_offset);
	console.log(' ');
	console.log('screenheight: '+screenheight);
	console.log('window.h_content_size: '+window.h_content_size+' = '+screenwidth+'*('+h_important+'/'+w_important+')');
	console.log('h_content_offset: '+h_content_offset);
	
}
function act_reset(){
	$('#act_spacer').click();
	/*
	$('.board, .act').stop();
	
	$('#act_three .over').fadeIn(actlength*.33);
	$('#act_one .over').fadeIn(actlength*.33);
	$('#act_two .over').fadeIn(actlength*.33);
	
	$('#act_three .under').fadeOut(actlength*.33);
	$('#act_one .under').fadeOut(actlength*.33);
	$('#act_two .under').fadeOut(actlength*.33);

	$('#act_one').animate({'left':'43.44%'},actlength, 'easeInQuad');
	$('#act_three').animate({'left':'61%'},actlength, 'easeInQuad');
	$('#act_two').animate({'left':'21%'},actlength, 'easeInQuad');
	
	$('#board_three').animate({'height':0},actlength*.33, 'easeInOutSine');
	$('#board_one').animate({'height':0},actlength*.33, 'easeInOutSine');
	$('#board_two').animate({'height':0},actlength*.33, 'easeInOutSine');
	setTimeout("$('.board').css('display','none');",actlength*.33);
	*/
}
function curtain_up(){
	$('#stage_curtain').stop();
	$('#stage_curtain').animate({'height':0}, actlength, 'easeInQuad');
	setTimeout('titles_show();',2000);
	curtainup = 1;
}
function curtain_down(){
	console.log(window.h_image_size);
	$('#stage_curtain').stop();
	$('#stage_curtain').animate({'height':window.h_image_size}, actlength, 'easeOutQuad');
	curtainup = 0;
}
function frame_open(){
	$("#frame").animate({'opacity':1}, 500, 'easeInQuad');
	$("#frame").animate({'top':0}, 2000, 'easeInQuad');
	setTimeout("$('#overlay').animate({'opacity':1}, 1000, 'easeInQuad');",1000);
}
function frame_close(){
	$('#frame').stop();
	$("#overlay").animate({'opacity':0}, 1000, 'easeInQuad');
	$("#frame").animate({'top':'-100%'}, 2000, 'easeInQuad');
	setTimeout("$('#frame').animate({'opacity':0}, 500, 'easeInQuad');",1500);
}
function banner_open(){
	$('#banner').stop();
	$("#banner").animate({'opacity':1}, 500, 'easeInQuad');
	$("#banner").animate({'top':"-0.5%"}, 2000, 'easeInQuad');
	setTimeout("$('#overlay').animate({'opacity':1}, 1000, 'easeInQuad');",1000);
}
function banner_close(){
	$("#overlay").animate({'opacity':0}, 1000, 'easeInQuad');
	$("#banner").animate({'top':'-100%'}, 2000, 'easeInQuad');
	setTimeout("$('#banner').animate({'opacity':0}, 500, 'easeInQuad');",1500);
}
function titles_show(){
	$(".page.under .act .title").animate({'opacity':1},2000);
	setTimeout('if_act_not_started()',10000);
}
function if_act_not_started(){
	if (actclicked == 0) {
		$('#act_one').click();
	}
}
/*function ticker_stop() {
	$('#ticker').stop();
}*/
<? if (1==2) { ?></script><? } ?>