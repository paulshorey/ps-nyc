<?php /* Smarty version 2.6.22, created on 2010-07-14 15:49:17
         compiled from publisher/core/editor/includes/tinymce-simplified.html */ ?>
<!-- tiny_mce -->
	<script language="javascript" type="text/javascript" src="/publisher/scripts/tiny_mce/tiny_mce.js?id=<?php echo time(); ?>
"></script>
    <script type="text/javascript" src="/publisher/scripts/tiny_mce/plugins/tinybrowser/tb_tinymce.js.php"></script>
    <script>
    tinyMCE.init({
	
	// General options
	mode : "textareas",
	theme : "advanced",
	plugins : "safari,save,media,searchreplace,advimage,paste,xhtmlxtras,advimage,tinyBrowser",
	editor_deselector : "noeditor",
	
	// Theme options
	theme_advanced_buttons1 : "undo,redo,|,bold,italic,underline,strikethrough,|,styleselect,formatselect,|,image,media,|,justifyleft,justifycenter,justifyright,justifyfull,|,link,unlink,|,bullist,numlist,|,outdent,indent,|,cleanup,removeformat,code,|,sub,sup,charmap",
	theme_advanced_buttons2 : "",
	theme_advanced_buttons3 : "",
	theme_advanced_toolbar_align : "left",
	theme_advanced_statusbar_location : "",
	theme_advanced_resizing : true,
	theme_advanced_toolbar_location : "top",
	file_browser_callback : "tinyBrowser",
	
	// Example content CSS (should be your site CSS)
	content_css : "/css/style.css"
	
	});
	</script>