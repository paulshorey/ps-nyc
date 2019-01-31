<?php /* Smarty version 2.6.22, created on 2010-07-14 20:14:18
         compiled from publisher/plugins/alias/editor+alias.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getredirects', 'publisher/plugins/alias/editor alias.html', 72, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/folder.png" border="0" />
    <h3>Page Alias</h3>
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
    <form action="publisher/plugins/alias/editor alias.php" name="form_1" method="post" enctype="multipart/form-data">
    <h5>Redirect a page to any link you choose. When the visitor goes to www.yoursite.com/pagename, they will be redirected to any link you specify below.</h5> <h5>For example, if you already have the page "http://www.artspaces.net/process", but would like visitors to also get there by typing "http://www.artspaces.net/pricequote", set the "page name" as "pricequote", and set "redirect to url" as "http://www.artspaces.net/process".</h5>
    <p>&nbsp;</p>
    
    <!-- category -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Page name </a><a href="javascript:return;" class="helpbox">
	  The name of a fictional page that does not exist.
      </a>
      </p>
      <p><input type="text" name="page" /></p>
    </div>
    
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Redirect to URL </a><a href="javascript:return;" class="helpbox">
	  A full URL of a real page that the visitor will redirect to. Beginning with "http://".
      </a>
      </p>
      <p><input type="text" name="redirect" style="width:80%;" value="http://<?php echo $this->_tpl_vars['site']['name']; ?>
/" /></p>
    </div>
    <p>&nbsp;</p>
    
    
    <!-- delete -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Delete an alias:</a><a href="javascript:return;" class="helpbox">
	  Remove a redirect setting.
      </a>
      </p>
      <p>
        <select name="delete">
        <option value=""></option>
        <?php echo smarty_function_getredirects(array(), $this);?>

        <?php $_from = $this->_tpl_vars['redirects']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['val']):
?>
            <option value="<?php echo $this->_tpl_vars['val']['page']; ?>
"><?php echo $this->_tpl_vars['val']['page']; ?>
 - <?php echo $this->_tpl_vars['val']['redirect']; ?>
</option>
        <?php endforeach; endif; unset($_from); ?>
        </select>
      </p>
    </div>
    
  	</form>
</div>

</body>
</html>