<?php /* Smarty version 2.6.22, created on 2010-07-15 10:21:39
         compiled from publisher/core/pages/editor+deletepage.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getitem', 'publisher/core/pages/editor deletepage.html', 44, false),array('modifier', 'preview_text', 'publisher/core/pages/editor deletepage.html', 50, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons24/deletefile.png" border="0" />
    <h3>Delete Page</h3>
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
    <form action="publisher/core/pages/editor deletepage.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="form_id" value="<?php echo $this->_tpl_vars['page']['id']; ?>
" />
    <input type="hidden" name="form_name" value="<?php echo $this->_tpl_vars['page']['name']; ?>
" />
    <h5>Are you sure you want to delete this page?</h5>
    
    <h3>&quot;<?php echo $this->_tpl_vars['page']['name']; ?>
&quot;</h3>
    
    <?php echo smarty_function_getitem(array('page' => $this->_tpl_vars['page']['name'],'orderby' => 'date desc','limit' => '1','name' => 'item'), $this);?>

    <?php if ($this->_tpl_vars['item']['image1']): ?>
    <p><img src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['item']['image1']; ?>
" width="200px" /></p>
    <?php endif; ?>
    
    <?php if ($this->_tpl_vars['item']['text1']): ?>
    <p>&quot;<?php echo ((is_array($_tmp=$this->_tpl_vars['item']['text1'])) ? $this->_run_mod_handler('preview_text', true, $_tmp) : smarty_modifier_preview_text($_tmp)); ?>
</p>
    <p><?php echo ((is_array($_tmp=$this->_tpl_vars['page']['text1'])) ? $this->_run_mod_handler('preview_text', true, $_tmp) : smarty_modifier_preview_text($_tmp)); ?>
&quot;</p>
    <?php else: ?>
    <p>&quot;<?php echo ((is_array($_tmp=$this->_tpl_vars['page']['text1'])) ? $this->_run_mod_handler('preview_text', true, $_tmp) : smarty_modifier_preview_text($_tmp)); ?>
&quot;</p>
    <?php endif; ?>
    <p>&nbsp;</p>
    
    <p>The posts and comments for this page will also be deleted.</p>
    <p style="color:#999999;">Be careful! Changes are permanent and although the "backup/restore" utility will get back the page and articles, any image files will be lost.</p>
    
  	</form>
</div>
</body>
</html>