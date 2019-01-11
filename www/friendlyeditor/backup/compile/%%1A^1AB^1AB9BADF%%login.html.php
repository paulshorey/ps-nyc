<?php /* Smarty version 2.6.22, created on 2010-07-14 14:27:06
         compiled from login.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'edittext1', 'login.html', 6, false),array('function', 'edittext2', 'login.html', 22, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<tr><td align="left" valign="top">

    <div style="margin:22px 0;">
    
    <?php echo smarty_function_edittext1(array(), $this);?>

	<h1><?php echo $this->_tpl_vars['page']['title1']; ?>
</h1>
    <?php if ($this->_tpl_vars['page']['text1']): ?>
    <p><?php echo $this->_tpl_vars['page']['text1']; ?>
</p>
    <?php endif; ?>
    
    <form name="loginmain" action="<?php echo $this->_tpl_vars['login_form']; ?>
" method="post">
    <?php if ($this->_tpl_vars['page']['message'] || $this->_tpl_vars['page']['error']): ?>
    <p id="message" class="margintop"><?php echo $this->_tpl_vars['page']['error']; ?>
 <?php echo $this->_tpl_vars['page']['message']; ?>
</p>
    <?php endif; ?>
    <p class="margintop"><input type="text" id="" name="user" value="visitor" /></p>
    <p><input type="password" id="" name="pass" value="pass" /></p>
    <p><input type="submit" value="Login" class="button" /></p>
    </form>
    <p>&nbsp;</p>
    
    <?php echo smarty_function_edittext2(array(), $this);?>

    <?php if ($this->_tpl_vars['page']['text2']): ?>
    <p><?php echo $this->_tpl_vars['page']['text2']; ?>
</p>
    <p>&nbsp;</p>
    <?php endif; ?>
    
    </div>
    
</td></tr>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/foot.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>