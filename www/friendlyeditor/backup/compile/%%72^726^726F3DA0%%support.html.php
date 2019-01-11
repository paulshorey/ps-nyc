<?php /* Smarty version 2.6.22, created on 2010-07-15 10:39:36
         compiled from publisher/core/editor/support.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'capitalize', 'publisher/core/editor/support.html', 44, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/mail.png" border="0" />
    <h3>UserFriendlyCMS - v1.3</h3>
        <!-- buttons -->
        <div class="buttons">
        	<!-- submit -->
            <input type="button" value="Send" class="button" onClick="document.form_1.submit();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
            <!-- reset -->
            <input type="button" value="Reset" class="button" onClick="window.location.reload();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
            <!-- cancel -->
            <input type="button" value="Exit" class="button" onClick="self.parent.tb_remove();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
        </div>
</div>

<!-- MESSAGE -->
<?php if ($this->_tpl_vars['page']['message']): ?>
<div id="message">
	<?php echo $this->_tpl_vars['page']['message']; ?>

</div>
<?php endif; ?>

<!-- ERROR -->
<?php if ($this->_tpl_vars['page']['error']): ?>
<div id="error">
	<?php echo $this->_tpl_vars['page']['error']; ?>

</div>
<?php endif; ?>

<!-- MIDDLE -->
<div id="middle">

	<!-- FORM -->
    <form action="publisher/core/editor/support.php" name="form_1" method="post" enctype="multipart/form-data">
    <p style="font-size:80%;color:#999999;">This is a simple editor program that manages the most basic aspects of site publishing. If there's something youre looking for, flip through the different options in the editor toolbar. If its not there, please visit <a href="http://www.userfriendlycms.com" target="_blank">www.userfriendlycms.com</a> to submit a feature request and check for upgrades. If you are experiencing problems using the interface, please visit <a href="http://www.friendlyeditor.com" target="_blank">www.friendlyeditor.com</a> for step-by-step instructions and useful tips. If you are a developer looking to display the backend media and data in your site, visit <a href="http://www.friendlypublisher.com" target="_blank">www.friendlypublisher.com</a> for documentation. If you are trying out this product, I hope you like it. Get a site like this for yourself at <a href="http://www.artspaces.net" target="_blank">www.artspaces.net</a> or check out what else I am working on, at <a href="<?php echo $this->_tpl_vars['site']['designer_link']; ?>
" target="_blank"><?php echo $this->_tpl_vars['site']['designer_link']; ?>
</a>. Or, send me a message below. </p>
    <p style="font-size:80%;color:#666666;">If you are requesting help with a problem, please specify the exact URL where it happened, and any error messages or issues you encountered.</p>
    <p style="font-size:80%;color:#999999;">Sincerely, <?php echo $this->_tpl_vars['site']['designer_name']; ?>
 ~ your web designer</p>
        
    <div class="section">
    <p class="margintop">From Name:
    <input type="text" name="name" id="name" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['site']['owner'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" /></p>
    <p>From Email:
    <input type="text" name="email" id="email" value="<?php echo $this->_tpl_vars['site']['contact']; ?>
" /></p>
    <p>Subject:
    <input type="text" name="subject" id="subject" value="" /></p>
    <p class="margintop">Body:
    <textarea name="text" style="width:100%;height:200px;"><?php if ($this->_tpl_vars['post']['text']): ?><?php echo $this->_tpl_vars['post']['text']; ?>
<?php endif; ?></textarea></p>
    <p class="margintop" style="font-size:80%;color:#333333;">Your browser info:</p>
    <p id="browser_info" style="font-size:80%;color:#666666;padding-left:10px;"></p>
    <p class="margintop" style="font-size:80%;color:#333333;">If this is not the computer that you are having problems with, please make sure to specify your browser name, version, and operating system of the computer that were using when you experienced the problem.</p>
	<input type="hidden" name="browser" id="browser" value="" />
	<script type="text/javascript">
	var browser = 'browser:' + navigator.appName + ' <br />code:' + navigator.appCodeName + ' <br />version:'+ navigator.appVersion + ' <br />cookies:'+ navigator.cookieEnabled + ' <br />platform:'+ navigator.platform + ' <br />agent:' + navigator.userAgent;
	$('#browser').val(browser);
	$('#browser_info').html(browser);
	</script>
    </div>
    
  	</form>
    
</div>
</body>
</html>