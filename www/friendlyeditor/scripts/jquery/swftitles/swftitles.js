// SWF Titles

;(function($) {
var ver = '1.0';
$.fn.swftitle = function(options) {
	
	// if flash
	if (!options.version) {options.version = '9';}
	if (swfobject.hasFlashPlayerVersion(options.version)) {
	
		// options
		if (!options.font) {options.font = 'h1';}
		if (!options.color) {options.color = '000000';}
		if (!options.hover) {options.hover = '666666';}
		if (!options.path) {options.path = '/scripts/jquery/swftitles/';}
		if (!options.rel) {options.rel = $(this).children('a').attr('rel');}
		if (!options.rel) {options.rel = '_self';}
		var href = escape($(this).children('a').attr('href'));
		var text = escape($(this).text());
		var id = Math.floor(Math.random()*1000000);
		var paddingleft = $(this).css('padding-left');
		var paddingtop = $(this).css('padding-top');
		var paddingright = $(this).css('padding-right');
		var paddingbottom = $(this).css('padding-bottom');
		if (options.left) {
			var marginleft = options.left;
			} else {
			var marginleft = $(this).css('margin-left');
			}
		if (options.top) {
			var margintop = options.top;
			} else {
			var margintop = $(this).css('margin-top');
			}
		var marginright = $(this).css('margin-right');
		var marginbottom = $(this).css('margin-bottom');
		var zindex = $(this).css('z-index');
		
	
		// replace
		var replace_code = '<div id="outer'+id+'" class="swftitle_'+options.font+'" style="position:relative;z-index:'+zindex+';overflow:hidden;padding-left:'+paddingleft+';padding-top:'+paddingtop+';padding-right:'+paddingright+';padding-bottom:'+paddingbottom+';margin-left:'+marginleft+';margin-top:'+margintop+';margin-right:'+marginright+';margin-bottom:'+marginbottom+';" onmouseover="inner'+id+'.doOver();" onmouseout="inner'+id+'.doOut();" onclick="inner'+id+'.doClick();"><div style="position:absolute;" id="inner'+id+'"></div></div>';
		$(this).replaceWith(replace_code);
		
		var expressinstall = '/publisher/scripts/swfobject/expressInstall.swf';
		var flashvars = {
		  new_title: text,
		  new_titlecolor: '0x'+options.color,
		  new_link: href,
		  new_linkcolor: '0x'+options.hover,
		  new_rel: options.rel,
		  new_width: options.width,
		  new_height: options.height,
		  new_container: 'outer'+id
		};
		var params = {
		  wmode: "transparent",
		  allowscriptaccess: "always",
		  allowfullscreen: "false"
		};
		var attributes = false;
		swfobject.embedSWF(options.path+options.font+'.swf', 'inner'+id, 800, 80, '9.0.0', expressinstall, flashvars, params, attributes); //alert(swftitle[id]);
		
	}
	
}
})(jQuery);

function resize(id, width, height) {
	if (width) {
	document.getElementById(id).style.width=width+4;
	}
	if (height) {
	document.getElementById(id).style.height=height+4;
	}
}