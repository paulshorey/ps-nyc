<?php /* Smarty version 2.6.22, created on 2010-07-14 20:43:28
         compiled from support.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'edittext1', 'support.html', 6, false),array('function', 'edittext2', 'support.html', 13, false),array('function', 'edittext3', 'support.html', 37, false),array('modifier', 'date', 'support.html', 20, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<tr><td align="left" valign="top">

    <div style="margin:22px 0;" class="full">
    
    <?php echo smarty_function_edittext1(array(), $this);?>

	<h1><?php echo $this->_tpl_vars['page']['title1']; ?>
</h1>
    <?php if ($this->_tpl_vars['page']['text1']): ?>
    <p><?php echo $this->_tpl_vars['page']['text1']; ?>
</p>
    <?php endif; ?>
    <p>&nbsp;</p>
    
    <?php echo smarty_function_edittext2(array(), $this);?>

    <h2><?php echo $this->_tpl_vars['page']['title2']; ?>
</h2>
    <p><?php echo $this->_tpl_vars['page']['text2']; ?>
</p>
    <p>&nbsp;</p>
    
    <form name="contact" action="<?php echo $this->_tpl_vars['mail_form']; ?>
" method="post" enctype="multipart/form-data">
    <input type="hidden" name="artspaces.net message" value="..." />
    <input type="hidden" name="date" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['Smarty']['now'])) ? $this->_run_mod_handler('date', true, $_tmp) : smarty_modifier_date($_tmp)); ?>
" />
    <input type="hidden" name="subject" value="artspaces.net message" />
    <p>Your name<br />
    <input class="martop" type="text" name="name" value="<?php echo $this->_tpl_vars['post']['name']; ?>
" style="width:220px;" /></p>
    <p class="margintop">Your email<br />
    <input class="martop" type="text" name="email" value="<?php echo $this->_tpl_vars['post']['email']; ?>
" style="width:220px;" /></p>
    <p class="margintop">Your browser (firefox, safari, internet explorer, etc)<br />
    <input class="martop" type="text" name="email" value="<?php echo $this->_tpl_vars['post']['email']; ?>
" style="width:220px;" onclick="if (this.value=='') {this.value=navigator.appName+' '+navigator.appVersion;}" /></p>
    <p class="margintop">Report problem or improvement<br />
    <textarea class="martop" name="site_structure" style="width:98%;height:80px"><?php echo $this->_tpl_vars['post']['site_structure']; ?>
</textarea></p>
    <p class="margintop">Please type "yes" into this box to prove that you're a real person.<br />
    <input class="martop" type="text" name="areyouhuman" style="width:80px;" /></p>
    <p class="margintop"><input type="submit" value="Send" class="button" /></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </form>
    
    <?php echo smarty_function_edittext3(array(), $this);?>

    <h2><?php echo $this->_tpl_vars['page']['title3']; ?>
</h2>
    <p><?php echo $this->_tpl_vars['page']['text3']; ?>
</p>
    <p>&nbsp;</p>
    
    </div>
    
</td></tr>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/foot.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>