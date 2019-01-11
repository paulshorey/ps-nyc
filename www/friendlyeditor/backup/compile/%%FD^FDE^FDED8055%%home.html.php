<?php /* Smarty version 2.6.22, created on 2010-07-14 15:48:22
         compiled from home.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getitems', 'home.html', 5, false),array('function', 'edititem', 'home.html', 7, false),array('function', 'additem', 'home.html', 9, false),array('function', 'edittext1', 'home.html', 13, false),array('function', 'edittext2', 'home.html', 18, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<tr><td align="left" valign="top" width="880">

    <ul class="slideshow" style="height:290px;margin:22px 0;overflow:hidden;">
    <?php echo smarty_function_getitems(array('page' => $this->_tpl_vars['page']['name'],'name' => 'items'), $this);?>

    <?php $_from = $this->_tpl_vars['items']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
    <li><?php echo smarty_function_edititem(array('id' => $this->_tpl_vars['item']['id']), $this);?>
<img src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['item']['image1']; ?>
" height="290px;" /></li>
    <?php endforeach; else: ?>
    <?php echo smarty_function_additem(array(), $this);?>

    <?php endif; unset($_from); ?>
    </ul>

    <?php echo smarty_function_edittext1(array(), $this);?>

	<h2><a href="/gallery"><?php echo $this->_tpl_vars['page']['title1']; ?>
</a></h2>
    <p><?php echo $this->_tpl_vars['page']['text1']; ?>
</p>
    <p>&nbsp;</p>
    
    <?php echo smarty_function_edittext2(array(), $this);?>

    <h1><a href="http://www.artspaces.net"><?php echo $this->_tpl_vars['page']['title2']; ?>
</a></h1>
    <?php if ($this->_tpl_vars['page']['text2']): ?>
    <p><?php echo $this->_tpl_vars['page']['text2']; ?>
</p>
    <?php endif; ?>
    
    
</td></tr>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/foot.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>