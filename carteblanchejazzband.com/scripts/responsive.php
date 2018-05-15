<? if (1==2) { ?><script type="text/javascript"><? } ?>
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

// GLOBAL
var actlength = 5000;
var ready = 0;
var curtainup = 0;

var arebio = 0;
var isbio = 0;

var musictab = 0;
var videotab = 0;

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

	// ACTORS
	$('.act').click(function(){if(ready==1){
		
		// bios page
		if (arebio==1) {
			
			$('.page.under .acts .act').removeClass('selected');
			$('.page.under .acts .act').eq($(this).index()).addClass('selected');
			$('.page.over .acts .act').removeClass('selected');
			$('.page.over .acts .act').eq($(this).index()).addClass('selected');
			
			$('.board').css('display','none');
			$('#board'+$(this).index()+'').css('display','block');
			
			if ($(this).index()!=0) {
				isbio = 1;
			}
		
		// NOT bios page
		} else {
			
			switch($(this).index()) {
				case 1:
					page_open(1);
				break;
				case 2:
					page_open(2);
					$('#page_2 #content').load('/video.php');
					window.videotab = 1;
				break;
				case 3:
					arebio = 1;
					$('.page.under .act').animate({'height':'37%','margin-top':'39%'}, 1500, 'easeInQuad');
					$('.page.under .act img').animate({'margin-left':'-25%'}, 1500, 'easeInQuad');
					setTimeout('back_show();',2000);
					setTimeout('titles_hide();',1000);
					setTimeout('board0_show();',2000);
					setTimeout('toggle_bw();',1500);
					
					$('.act_one').attr('class','act_one act');
				break;
				case 4:
					page_open(4);
					$('#page_4 #content').load('/music.php');
					window.musictab = 1;
				break;
				case 5:
					page_open(5);
				break;
				case 6:
					page_open(6);
				break;
				default:
			}
		}
		
		// bios page, BACK
		if ($(this).index()==0) {
			// bio already changed above, "back" button got class ".selected"
			// now change variable, can't do it above because it might mess with the order
			if (isbio==1) {
				isbio = 0;
			// EXIT BIOS
			} else {
				act_start();
			}
		}
		
		console.log($(this).index());
		console.log(isbio);
		
	}});
	$('.act').mouseover(function(){if(ready==1){
		$('.page.under .acts .act').eq($(this).index()).addClass('hover');
		$('.page.over .acts .act').eq($(this).index()).addClass('hover');
		
		$(this).mouseleave(function(){
			$('.page.under .acts .act').eq($(this).index()).removeClass('hover');
			$('.page.over .acts .act').eq($(this).index()).removeClass('hover');
		});
	}});
	
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
	$('.act_spacer').click();
}
function curtain_up(){
	$('#stage_curtain').stop();
	$('#stage_curtain').animate({'height':0}, actlength, 'easeInQuad');
	setTimeout('act_start()',2000);
	curtainup = 1;
}
function curtain_down(){
	console.log(window.h_image_size);
	$('#stage_curtain').stop();
	$('#stage_curtain').animate({'height':window.h_image_size}, actlength, 'easeOutQuad');
	curtainup = 0;
}
function frame_open(){
	$(".page_frame").animate({'opacity':1}, 500, 'easeInQuad');
	$(".page_frame").animate({'top':0}, 2000, 'easeInQuad');
	setTimeout("$('#overlay').animate({'opacity':1}, 1000, 'easeInQuad');",1000);
}
function frame_close(){
	$('.page_frame').stop();
	$("#overlay").animate({'opacity':0}, 1000, 'easeInQuad');
	$(".page_frame").animate({'top':'-100%'}, 2000, 'easeInQuad');
	setTimeout("$('.page_frame').animate({'opacity':0}, 500, 'easeInQuad');",1500);
}
function banner_open(){
	$('.page_banner').stop();
	$(".page_banner").animate({'opacity':1}, 500, 'easeInQuad');
	$(".page_banner").animate({'top':"-0.5%"}, 2000, 'easeInQuad');
	setTimeout("$('#overlay').animate({'opacity':1}, 1000, 'easeInQuad');",1000);
}
function banner_close(){
	$("#overlay").animate({'opacity':0}, 1000, 'easeInQuad');
	$(".page_banner").animate({'top':'-100%'}, 2000, 'easeInQuad');
	setTimeout("$('.page_banner').animate({'opacity':0}, 500, 'easeInQuad');",1500);
	if (window.musictab == 1) {
		setTimeout("$('#page_4 #content').html('');",2000);
	}
	if (window.videotab == 1) {
		setTimeout("$('#page_2 #content').html('');",2000);
	}
}
function page_open(num){
	$('#page_'+num).stop();
	$('#page_'+num).animate({'opacity':1}, 500, 'easeInQuad');
	$('#page_'+num).animate({'top':"-0.5%"}, 2000, 'easeInQuad');
	setTimeout("$('#overlay').animate({'opacity':1}, 1000, 'easeInQuad');",1000);
	if (num==1) {
		$('.slideshow .content').cycle('stop');
		$('.slideshow .content').cycle('goto',0);
		setTimeout(function(){
			$('.slideshow .content').cycle('resume');
		},1000);
	}
}
function titles_show(){
	$(".page.under .act .title").animate({'opacity':1},2000);
	$(".page.over .act .title").animate({'opacity':0},1000);
	//setTimeout('if_act_not_started()',10000);
}
function titles_hide(){
	$(".page.under .act .title").animate({'opacity':0},1000);
	$(".page.over .act .title").animate({'opacity':0.66},2000);
	//setTimeout('if_act_not_started()',10000);
}
function back_show(){
	$("#back").css('display','block');
}
function back_hide(){
	$("#back").css('display','none');
}
function board0_show(){
	$("#board0").css('display','block');
}
function board_hide(){
	$(".board").css('display','none');
	$("#board0").css('display','none');
}
function act_start(){
	// reset bio
	if (isbio==1) {
		console.log('isbio==1 => RESTARTING');
		$('.act_spacer').click();
		setTimeout('act_start();',300);
		return;
	}
	// reset all
	board_hide();
	back_hide();
	$('.page.under .act_four').animate({'height':'36%','margin-top':'39.25%'}, 1000, 'easeInQuad');
	$('.page.under .act_one').animate({'height':'61.3%','margin-top':'28%'}, 2000, 'easeInQuad');
	$('.page.under .act_one img').animate({'margin-left':'-53%'}, 2000, 'easeInQuad');
	$('.page.under .act_two').animate({'height':'52.5%','margin-top':'32%'}, 1500, 'easeInQuad');
	$('.page.under .act_two img').animate({'margin-left':'-47%'}, 1500, 'easeInQuad');
	$('.page.under .act_three').animate({'height':'53.5%','margin-top':'32.1%'}, 1500, 'easeInQuad');
	$('.page.under .act_three img').animate({'margin-left':'-27%'}, 1000, 'easeInQuad');
	$('.page.under .act_six').animate({'height':'40%','margin-top':'37.9%','margin-left':'1.2%'}, 1000, 'easeInQuad');
	$('.page.under .act_six img').animate({'margin-left':'-23%'}, 1000, 'easeInQuad');
	$('.page.under .act_five').animate({'height':'36%','margin-top':'38.8%'}, 1000, 'easeInQuad');
	setTimeout('titles_show();',1500);
	if (arebio == 1) {
		setTimeout('toggle_bw();',2000);
	}
	arebio = 0;
}
function toggle_bw(){
	$('.page.under .act').each(function(){
		var under = $(this).find('.under').attr('src');
		var over = $(this).find('.over').attr('src');
		$(this).find('.under').attr('src',over);
		$(this).find('.over').attr('src',under);
		//$(this).find('.title').toggle('slow');
	});
}

// METRONOME - quick and dirty!
//window.setInterval(function(){
//	console.log(window.document.getElementById('page_1').offsetTop);
//	if (window.document.getElementById('page_1').offsetTop > -10) {
//		if (!window.offset__page_1) {
//			$('.slideshow .content').cycle('goto',0);
//			window.offset__page_1 = true;
//		} 
//	} else {
//		window.offset__page_1 = false;
//	}
//},250);
<? if (1==2) { ?></script><? } ?>