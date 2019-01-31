<?php /* Smarty version 2.6.22, created on 2010-07-14 14:27:06
         compiled from includes/head.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'editortoolbar', 'includes/head.html', 10, false),)), $this); ?>
<html><head>

<!-- javascript -->
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/scripts.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

</head>
<body>
<div class="body_bg"><img src="/images/layout/bg.jpg" width="100%" /></div>
<div class="body_fg" style="overflow-x:hidden;">
<?php echo smarty_function_editortoolbar(array(), $this);?>


<!-- align -->
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td height="100%" align="center" valign="middle" style="padding:40px 0;">
<center>
<table width="1" height="1" border="0" cellspacing="0" cellpadding="0" id="valignthis" class="container">
<tr><td align="left" valign="top" height="85">

    <?php if ($this->_tpl_vars['page']['name'] == 'home'): ?>
    <div class="body_img"><img src="/images/layout/bg_fg.png" width="345" height="606" class="trans" class="body_img" /></div>
    <?php else: ?>
    <div class="body_img"><img src="/images/layout/bg_fg2.png" width="345" height="606" class="trans" class="body_img" /></div>
    <?php endif; ?>

    <div style="position:absolute;margin:57px 0 0 515px;width:500px;z-index:20;">
    <a href="/demo" class="buttonup"><img src="/images/layout/top_1-hover.png" width="91" height="34" class="buttondown" /><img src="/images/layout/top_1.png" width="91" height="34" /></a><a href="/tutorials" class="buttonup"><img src="/images/layout/top_2-hover.png" width="156" height="34" class="buttondown" /><img src="/images/layout/top_2.png" width="156" height="34" /></a><a href="/support" class="buttonup"><img src="/images/layout/top_3-hover.png" width="124" height="34" class="buttondown" /><img src="/images/layout/top_3.png" width="124" height="34" /></a>
    </div>
    
    <div style="position:absolute;margin:61px 0 0 0;z-index:30;width:460px;">
    <h4><a href="/home">An easy manager for your website</a></h4>
    </div>
    
    <div style="position:absolute;margin:0 0 0 -8px;">
    <a href="/"class="buttonup"><img src="/images/layout/logo-hover.png" width="895" height="61" class="buttondown" /><img src="/images/layout/logo.png" width="895" height="61" /></a>
    </div>
        
</td></tr>