<?php /* Smarty version 2.6.22, created on 2010-07-14 15:49:17
         compiled from publisher/core/editor/includes/head.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'redirect', 'publisher/core/editor/includes/head.html', 6, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!-- security -->
    <?php if ($this->_tpl_vars['user']['role'] != 'editor' && $this->_tpl_vars['user']['role'] != 'admin' && $this->_tpl_vars['user']['role'] != 'demo' && $this->_tpl_vars['get']['display'] != "publisher/core/users/login"): ?>
    <?php echo smarty_function_redirect(array('url' => "/login"), $this);?>

    <?php endif; ?>
<!-- meta -->
    <meta http-equiv="Content-Type" editorcontent="text/html; charset=utf-8" />
    <title>Your friendly site editor - <?php echo $this->_tpl_vars['page']['name']; ?>
</title>
<!-- stylesheets -->
    <link rel="stylesheet" href="/publisher/core/editor/css/pages.css" type="text/css">
	<!--[if lt IE 7]>
    <style type="text/css">
    img {behavior: url("/publisher/scripts/iepngfix/iepngfix.htc");}
    </style>
    <![endif]-->
<!-- jquery -->
	<link type="text/css" href="/publisher/scripts/jquery/css/jquery-css.css" rel="stylesheet" />
	<script type="text/javascript" src="/publisher/scripts/jquery/jquery-min.js"></script>
    <script type="text/javascript" src="/publisher/scripts/jquery/jquery-ui-min.js"></script>
    <!-- uploadbuton -->
	<link type="text/css" href="/publisher/scripts/jquery/uploadbutton/uploadify.css" rel="stylesheet" />
    <script type="text/javascript" src="/publisher/scripts/jquery/uploadbutton/jquery.uploadify.js"></script>
    <!-- on dom ready -->
    <script type="text/javascript">
	$(document).ready(function() {
		// check/uncheck
		$("#check_showall").toggle(
		  function () {$(".check_show").attr("checked","checked");},
		  function () {$(".check_show").removeAttr("checked");}
		);
		$("#check_deleteall").toggle(
		  function () {$(".check_delete").attr("checked","checked");},
		  function () {$(".check_delete").removeAttr("checked");}
		);
		// sortable
		$("#orderlist").sortable({
		  handle : '.handle',
		  update : function () {
			var order = $('#orderlist').sortable('serialize');
			document.getElementById('order').value=order;
		  }
		});
		// datepicker
		$(function() {
			$("#datepicker").datepicker();
		});
		// vAlign
		if ($.browser.msie) {
			(function ($) {
			$.fn.vAlign = function() {
				return this.each(function(i){
				var ah = $(this).height();
				var ph = $(this).parent().height();
				var mh = (ph - ah) / 2;
				$(this).css('margin-top', mh);
				});
			};
			});
		}
		// help boxes
		$(".help").mouseover(function () {
		  $(this).siblings(".helpbox").show();
		});
		$(".help").mouseout(function () {
		  $(this).siblings(".helpbox").hide();
		});
		// checkboxes
		$(function() {
			$("input[type='checkbox']").css({'border' : 'none', 'padding' : '0', 'background' : 'none', 'margin' : '0'});
			$("span").css({'display' : 'inline'});

		});
		// Messages
		setTimeout('$(\'#message\').fadeOut("slow");$(\'#error\').fadeOut("slow");',9000);
		// Uploadbutton
		$('#image1').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadimage.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.jpg .png or .gif',
		'fileExt'	: '*.jpg;*.jpeg;*.png;*.gif',
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
',
		'scriptData': {'v':1},
		'onSelect'	: startimage,
		'onComplete': previewimage
		});
		$('#image2').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadimage.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.jpg .png or .gif',
		'fileExt'	: '*.jpg;*.jpeg;*.png;*.gif',
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
',
		'scriptData': {'v':2},
		'onSelect'	: startimage,
		'onComplete': previewimage
		});
		$('#image3').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadimage.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.jpg .png or .gif',
		'fileExt'	: '*.jpg;*.jpeg;*.png;*.gif',
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
',
		'scriptData': {'v':3},
		'onSelect'	: startimage,
		'onComplete': previewimage
		});
		$('#image4').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadimage.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.jpg .png or .gif',
		'fileExt'	: '*.jpg;*.jpeg;*.png;*.gif',
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
',
		'scriptData': {'v':4},
		'onSelect'	: startimage,
		'onComplete': previewimage
		});
		$('#image5').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadimage.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.jpg .png or .gif',
		'fileExt'	: '*.jpg;*.jpeg;*.png;*.gif',
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
',
		'scriptData': {'v':5},
		'onSelect'	: startimage,
		'onComplete': previewimage
		});
			function startimage(ievent, queueID, fileObj, v) {
			$('#submit').hide();
			$('#uploading').show();
			}
			function previewimage(ievent, queueID, fileObj, v) {
			/* alert(fileext); //debug */
			var fileext = fileObj.name.slice(-4);
			$('#delete_image'+v+'').attr("value","");
			$('#uploading').hide();
			$('#submit').show();
			$('#uploaded_image'+v+'').attr("value","image-"+v+fileext);
			$('#image'+v+'_preview').attr("src","/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/thumbs/image-"+v+fileext+'?'+queueID);
			$('#image'+v+'_preview').show("slow");
			$('#image'+v+'_text').text('Image-'+v+fileext); //text 
			}
		$('#video1').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadvideo.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.mov, .flv',
		'fileExt'	: '*.mov;*.flv',
		'scriptData': {'v':1},
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['videos']['dir']; ?>
',
		'onSelect'	: startvideo,
		'onComplete': previewvideo
		});
		$('#video2').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadvideo.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.mov, .flv',
		'fileExt'	: '*.mov;*.flv',
		'scriptData': {'v':2},
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['videos']['dir']; ?>
',
		'onSelect'	: startvideo,
		'onComplete': previewvideo
		});
		$('#video3').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadvideo.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.mov, .flv',
		'fileExt'	: '*.mov;*.flv',
		'scriptData': {'v':3},
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['videos']['dir']; ?>
',
		'onSelect'	: startvideo,
		'onComplete': previewvideo
		});
		$('#video4').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadvideo.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.mov, .flv',
		'fileExt'	: '*.mov;*.flv',
		'scriptData': {'v':4},
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['videos']['dir']; ?>
',
		'onSelect'	: startvideo,
		'onComplete': previewvideo
		});
		$('#video5').fileUpload ({
		'uploader'  : '/publisher/scripts/jquery/uploadbutton/uploader.swf',
		'script'    : '/publisher/core/items/editor_uploadvideo.php',
		'cancelImg' : '/publisher/scripts/jquery/uploadbutton/cancel.png',
		'fileDesc'	: '.mov, .flv',
		'fileExt'	: '*.mov;*.flv',
		'scriptData': {'v':5},
		'auto'      : true,
		'folder'    : '/<?php echo $this->_tpl_vars['site']['uploads']['videos']['dir']; ?>
',
		'onSelect'	: startvideo,
		'onComplete': previewvideo
		});
			function startvideo(ievent, queueID, fileObj, v) {
			$('#submit').hide();
			$('#uploading').show();
			}
			function previewvideo(ievent, queueID, fileObj, v) {
			// alert(v); //debug */
			var fileext = fileObj.name.slice(-4);
			$('#delete_video'+v+'').attr("value","");
			$('#uploading').hide();
			$('#submit').show();
			$('#uploaded_video'+v+'').attr("value","video-"+v+fileext);
			$('#video'+v+'_text').text('Video-'+v+fileext); //text 
			}
	});
	// FREEZEPAGE
	function showscreen() {
		$('#screen').css({'z-index' : '10000000'});
		$('body').css({'overflow' : 'hidden'});
	}
	// ONLOAD
	$(window).load(function() {
		// vAlign
		if($.browser.msie) {
		$('#valignthis').vAlign();
		}
		if($.browser.mozilla) {
		$('textarea').html($(this).html());
		}
	});
    </script>
</head>