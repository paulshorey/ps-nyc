<?php /* Smarty version 2.6.22, created on 2010-07-14 15:50:56
         compiled from publisher/core/editor/includes/tinymce.html */ ?>
<!-- tiny_mce -->
	<script language="javascript" type="text/javascript" src="/publisher/scripts/tiny_mce/tiny_mce.js?id=<?php echo time(); ?>
"></script>
    <script type="text/javascript" src="/publisher/scripts/tiny_mce/plugins/tinybrowser/tb_tinymce.js.php"></script>
    <script>
    tinyMCE.init({
	
	// General options
	mode : "textareas",
	theme : "advanced",
	plugins : "safari,save,media,searchreplace,fullscreen,layer,paste,xhtmlxtras,table,advimage,tinyBrowser",
	editor_deselector : "noeditor",
	
	// Theme options
	theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect,|,forecolor,backcolor,|,bullist,numlist,|,outdent,indent",
	theme_advanced_buttons2 : "save,|,undo,redo,|,link,unlink,|,pastetext,image,|,tablecontrols,|,insertlayer,moveforward,movebackward,absolute,|,code,attribs,fullscreen,removeformat",
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