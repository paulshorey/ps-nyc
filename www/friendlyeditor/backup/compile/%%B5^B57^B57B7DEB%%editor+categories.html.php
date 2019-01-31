<?php /* Smarty version 2.6.22, created on 2010-07-15 17:28:08
         compiled from publisher/core/pages/editor+categories.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getitems', 'publisher/core/pages/editor categories.html', 50, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/folder.png" border="0" />
    <h3>Manage Categories</h3>
        <!-- buttons -->
        <div class="buttons">
        	<!-- submit -->
            <input type="button" value="Submit" class="button" onClick="document.form_1.submit();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
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
    <form action="publisher/core/pages/editor categories.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="form_id" value="<?php echo $this->_tpl_vars['page']['id']; ?>
" />
    <h5>Rename a category:</h5>
    
    <!-- category -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Category </a><a href="javascript:return;" class="helpbox">
	  Choose a category, then rename it below. All items will then be transferred to the new category.
      </a>
      </p>
    <p>
    <select name="form_oldcategory">
    <?php echo smarty_function_getitems(array('orderby' => 'category desc','unique' => 'category','name' => 'categories'), $this);?>

    <?php $_from = $this->_tpl_vars['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['val']):
?>
        <option value="<?php echo $this->_tpl_vars['val']['category']; ?>
"><?php echo $this->_tpl_vars['val']['category']; ?>
</option>
    <?php endforeach; endif; unset($_from); ?>
    </select>
    </p>
    </div>
    
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Rename </a><a href="javascript:return;" class="helpbox">
	  Leaving this empty will delete the category. It will not affect the items and files except to clear their category name.
      </a>
      </p>
    <p><input type="text" name="form_newcategory" /></p>
    </div>
    
  	</form>
</div>

</body>
</html>