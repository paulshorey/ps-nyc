<?php /* Smarty version 2.6.22, created on 2010-11-22 08:10:11
         compiled from text.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'edittext1', 'text.html', 6, false),array('function', 'edittext2', 'text.html', 13, false),array('function', 'edittext3', 'text.html', 20, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<tr><td align="left" valign="top">

    <div style="margin:22px 0;" class="full">
    
    <?php echo smarty_function_edittext1(array(), $this);?>

    <?php if ($this->_tpl_vars['page']['text1']): ?>
	<h1><?php echo $this->_tpl_vars['page']['title1']; ?>
</h1>
    <p><?php echo $this->_tpl_vars['page']['text1']; ?>
</p>
    <p>&nbsp;</p>
    <?php endif; ?>
    
    <?php echo smarty_function_edittext2(array(), $this);?>

    <?php if ($this->_tpl_vars['page']['text2']): ?>
    <h2><?php echo $this->_tpl_vars['page']['title2']; ?>
</h2>
    <p><?php echo $this->_tpl_vars['page']['text2']; ?>
</p>
    <p>&nbsp;</p>
    <?php endif; ?>
    
    <?php echo smarty_function_edittext3(array(), $this);?>

    <?php if ($this->_tpl_vars['page']['text3']): ?>
    <h2><?php echo $this->_tpl_vars['page']['title3']; ?>
</h2>
    <p><?php echo $this->_tpl_vars['page']['text3']; ?>
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