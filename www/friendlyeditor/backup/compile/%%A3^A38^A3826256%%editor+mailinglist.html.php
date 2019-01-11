<?php /* Smarty version 2.6.22, created on 2010-07-17 00:59:54
         compiled from publisher/plugins/mail/editor+mailinglist.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'capitalize', 'publisher/plugins/mail/editor mailinglist.html', 42, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/mail.png" border="0" />
    <h3>Send Mailinglist</h3>
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
    <form action="publisher/plugins/mail/editor mailinglist.php" name="form_1" method="post" enctype="multipart/form-data">
    <p style="font-size:80%;color:#666666;">Send an html message to everyone in your mailinglist. To add or remove a person from the list, go to "Users", "Manage Users" in your editor toolbar. Personalize your message. Add variables that will be replaced with each user's individual information: $username, $firstname, $middlename, $lastname, $email, $phone, $password. Also use site variables that will be replaced with your site's info: $site_name, $domain, $site_owner, $site_contact. Add images and styles.</p>
        
    <div class="section">
    <p class="margintop">From Name:
    <input type="text" name="from" id="from" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['site']['owner'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
" /></p>
    <p>From Email:
    <input type="text" name="email" id="email" value="<?php echo $this->_tpl_vars['site']['contact']; ?>
" /></p>
    <p>Subject:
    <input type="text" name="subject" id="subject" value="" /></p>
    <p class="margintop">Body:
    <textarea name="text" style="width:100%;height:400px;"><?php if ($this->_tpl_vars['post']['text']): ?><?php echo $this->_tpl_vars['post']['text']; ?>
<?php endif; ?></textarea></p>
    <p class="margintop">Plain-text version (optional):
    <p style="font-size:80%;color:#666666;">For people with old email clients that do not support html, add the specific text you want only them to see, without any html or styles. If left blank, a cleaned-up version of the message body (above) will be used.</p>
    <textarea class="noeditor" name="alttext" style="width:100%;height:300px;"><?php if ($this->_tpl_vars['post']['alttext']): ?><?php echo $this->_tpl_vars['post']['alttext']; ?>
<?php endif; ?></textarea></p>
    </div>
    
  	</form>
    
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/tinymce-nostyle.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</body>
</html>