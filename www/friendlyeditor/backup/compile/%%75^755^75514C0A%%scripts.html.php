<?php /* Smarty version 2.6.22, created on 2010-07-14 14:27:06
         compiled from includes/scripts.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date', 'includes/scripts.html', 3, false),array('modifier', 'capitalize', 'includes/scripts.html', 4, false),array('block', 'preview_list', 'includes/scripts.html', 8, false),array('block', 'preview_text', 'includes/scripts.html', 9, false),)), $this); ?>
<!-- meta -->
<meta http-equiv="charset" content="iso-8859-1">
<meta http-equiv="expires" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['Smarty']['now'])) ? $this->_run_mod_handler('date', true, $_tmp) : smarty_modifier_date($_tmp)); ?>
">
<title><?php echo ((is_array($_tmp=$this->_tpl_vars['page']['name'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
<?php if ($this->_tpl_vars['page']['title2']): ?> - <?php echo $this->_tpl_vars['page']['title2']; ?>
<?php endif; ?><?php if ($this->_tpl_vars['page']['category']): ?> - <?php echo ((is_array($_tmp=$this->_tpl_vars['page']['category'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
<?php endif; ?></title>
<link rel="shortcut icon" href="/images/layout/favicon.ico" type="image/x-icon" />
<link rel="icon" href="/images/layout/favicon.ico" type="image/x-icon" /> 
<meta name="author" content="<?php echo $this->_tpl_vars['site']['owner']; ?>
 <?php echo $this->_tpl_vars['site']['contact']; ?>
">
<meta name="keywords" content="<?php $this->_tag_stack[] = array('preview_list', array('length' => '500')); $_block_repeat=true;smarty_block_preview_list($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?><?php echo $this->_tpl_vars['page']['title1']; ?>
 <?php echo $this->_tpl_vars['page']['text1']; ?>
 <?php echo $this->_tpl_vars['page']['title2']; ?>
 <?php echo $this->_tpl_vars['page']['text2']; ?>
 <?php echo $this->_tpl_vars['page']['title3']; ?>
 <?php echo $this->_tpl_vars['page']['text3']; ?>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_preview_list($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>">
<meta name="description" content="<?php $this->_tag_stack[] = array('preview_text', array('length' => '500')); $_block_repeat=true;smarty_block_preview_text($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?><?php echo $this->_tpl_vars['page']['title1']; ?>
 <?php echo $this->_tpl_vars['page']['text1']; ?>
 <?php echo $this->_tpl_vars['page']['title2']; ?>
 <?php echo $this->_tpl_vars['page']['text2']; ?>
 <?php echo $this->_tpl_vars['page']['title3']; ?>
 <?php echo $this->_tpl_vars['page']['text3']; ?>
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_preview_text($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>">
<meta name="copyright" content="<?php echo ((is_array($_tmp=$this->_tpl_vars['Smarty']['now'])) ? $this->_run_mod_handler('date', true, $_tmp) : smarty_modifier_date($_tmp)); ?>
">
<meta name="verify-v1" content="nq5WuPwBFgj55ZXqiYtJgWpGvc08ZUzAvJXSu2zOfbQ=" >

<!-- css -->
<link rel="stylesheet" href="/css/layout.css" type="text/css" id="css_layout" />
<link rel="stylesheet" href="/css/style.css" type="text/css" id="css_style" />
<!--[if IE]>
<link rel="stylesheet" href="/css/layout-ie.css" type="text/css" />
<![endif]-->
<!--[if lt IE 7]>
<style type="text/css">
.trans {behavior: url('/publisher/scripts/iepngfix/iepngfix.htc');}
</style>
<![endif]-->
<style type="text/css">
<?php echo $this->_tpl_vars['page']['style']; ?>

</style>
    
<!-- swfobject -->
<script type="text/javascript" src="/publisher/scripts/swfobject/swfobject.js"></script>
<!-- quicktimeobject -->
<script type="text/javascript" src="/publisher/scripts/qtobject/qtobject.js"></script>
<!-- jquery -->
<link rel="stylesheet" href="/publisher/scripts/jquery/css/jquery-css.css" type="text/css" media="screen" />
<script type="text/javascript" src="/publisher/scripts/jquery/jquery-min.js"></script>
<script type="text/javascript" src="/publisher/scripts/jquery/jquery-ui-min.js"></script>
    <!-- mousewheel -->
	<script type="text/javascript" src="/publisher/scripts/jquery/mousewheel/mousewheel.js"></script>
    <!-- jscroll -->
	<link rel="stylesheet" href="/publisher/scripts/jquery/jscroll/jscroll.css" type="text/css" media="screen" />
	<script type="text/javascript" src="/publisher/scripts/jquery/jscroll/jscroll.js"></script>
	<!-- thickbox -->
	<link rel="stylesheet" href="/publisher/scripts/jquery/thickbox/thickbox.css" type="text/css" media="screen" />
	<script src="/publisher/scripts/jquery/thickbox/thickbox.js" type="text/javascript"></script>
	<!-- swftitles -->
	<script src="/scripts/jquery/swftitles/swftitles.js" type="text/javascript"></script>
    <!-- slideshow -->
	<script type="text/javascript" src="/publisher/scripts/jquery/cycle/core.js"></script>
    <!-- init -->
	<script type="text/javascript">
	// ONREADY
	$(document).ready(function() {
		// IF MSIE
		if ($.browser.msie) {
			// vAlign
			(function ($) {
			$.fn.vAlign = function() {
				return this.each(function(i){
				var ah = $(this).height();
				var ph = $(this).parent().height();
				var mh = (ph - ah) / 2;
				$(this).css('margin-top', mh);
				});
			};
			})(jQuery);
			// Buttons toggle
			if (jQuery.browser.version > 6) {
				// Buttons replace
				$(".buttonup > img").mouseover(function () {
				  var str = $(this).attr("src");
				  if (str.search(/-hover/) < 0) {
					  str = str.replace(/.png/, "-hover.png");
					  str = str.replace(/.gif/, "-hover.gif");
					  str = str.replace(/.jpg/, "-hover.jpg");
					  $(this).attr({src: str});
				  }
				});
				$(".buttonup > img").mouseout(function () {
				  var str = $(this).attr("src");
				  if (str.search(/-hover/) > 0) {
					  str = str.replace(/-hover/, "");
					  $(this).attr({src: str});
				  }
				});
			} else {
			// Buttons fade
			$(".buttonup").mouseenter(function () {
			  $(this).children(".buttondown").fadeIn("slow");
			});
			$(".buttonup").mouseleave(function () {
			  $(this).children(".buttondown").fadeOut("slow");
			});
			}
		// IF NORMAL
		} else {
			// Buttons fade
			$(".buttonup").mouseenter(function () {
			  $(this).children(".buttondown").fadeIn("slow");
			});
			$(".buttonup").mouseleave(function () {
			  $(this).children(".buttondown").fadeOut("slow");
			});
			// Safari fix
			if ($.browser.safari) {
				// Fix style
        		$('head').append('<link rel="stylesheet" href="/css/layout-safari.css" type="text/css" id="css_safari" />');
			}
		}
		// Preload images
		jQuery.preloadImages = function() {
		  for(var i = 0; i<arguments.length; i++) {
			jQuery("<img>").attr("src", arguments[i]);
		  }
		}
		// Swftitles
		$("h1").each(function (i) {
			$(this).swftitle({
			path:	'/scripts/jquery/swftitles/',
			font:	'h1',
			color:	'fee67d',
			hover:	'ffffff',
			width:	$(this).parent().width(),
			height:	34,
			left:	-4,
			top:	0,
			zindex:	11
			})
		});
		$("h2").each(function (i) {
			$(this).swftitle({
			path:	'/scripts/jquery/swftitles/',
			font:	'h2',
			color:	'ffffff',
			hover:	'fee67d',
			width:	$(this).parent().width(),
			height:	32,
			left:	-4,
			top:	0,
			zindex:	11
			})
		});
		$("h3").each(function (i) {
			$(this).swftitle({
			path:	'/scripts/jquery/swftitles/',
			font:	'h2',
			color:	'fee67d',
			hover:	'ffffff',
			width:	$(this).parent().width(),
			height:	32,
			left:	-4,
			top:	0,
			zindex:	11
			})
		});
		$("h4").each(function (i) {
			$(this).swftitle({
			path:	'/scripts/jquery/swftitles/',
			font:	'h2',
			color:	'ffffff',
			hover:	'fee67d',
			width:	$(this).parent().width(),
			height:	30,
			left:	-4,
			top:	-3,
			zindex:	11
			})
		});
		if ($.browser.msie) {
		// Slideshow
		$('.slideshow').each(function (i) {
			$(this).cycle({
			fx:     'fade', 
			speed:   1,
			timeout: 4500,
			prev:	'.slideshow_prev',
			next:	'.slideshow_next'
			})
		});
		} else {
		// Slideshow
		$('.slideshow').each(function (i) {
			$(this).cycle({
			fx:     'fade',
			speed:   1000,
			timeout: 4500,
			prev:	'.slideshow_prev',
			next:	'.slideshow_next'
			})
		});
		}
		// Messages
		setTimeout('$(\'#message\').fadeOut("slow");$(\'#error\').fadeOut("slow");',9000);
		// jScroll
		$(function()
			{
				$('#scrollarea').jScrollPane({scrollbarWidth:20,dragMinHeight:28,dragMaxHeight:28,scrollbarMargin:0,showArrows:true,scrollbarOnLeft:true,animateTo:true});
			});
		// Triggers
		$(".a_trigger").mouseleave(function () {$('.a_box').fadeOut('slow');$('.a_box').hide('slow');});
	});
	// ONLOAD
	$(window).load(function() {
		// vAlign
		if($.browser.msie) {
		$('#valignthis').vAlign();
		}
		// Preload images
		$.preloadImages('/images/layout/logo-hover.png','/images/layout/top_1-hover.png','/images/layout/top_2-hover.png','/images/layout/top_3-hover.png','/images/layout/slideshow_prev-hover.png','/images/layout/slideshow_prev-hover.png');
	});
	// PRINTERFRIENDLY
	function printerfriendly() {
        $('head').append('<link rel="stylesheet" href="/css/printerfriendly.css" type="text/css" id="css_printerfriendly" />');
	}
	function unprinterfriendly() {
		$("#css_printerfriendly").attr({href : "/css/x.css"});
	}
	</script>