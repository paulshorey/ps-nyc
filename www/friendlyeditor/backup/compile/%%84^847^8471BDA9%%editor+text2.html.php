<?php /* Smarty version 2.6.22, created on 2010-07-15 02:19:23
         compiled from publisher/core/pages/editor+text2.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'capitalize', 'publisher/core/pages/editor text2.html', 40, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/file.png" border="0" />
    <h3>Edit Supporting Text</h3>
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
    <form action="publisher/core/pages/editor text2.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?php echo $this->_tpl_vars['page']['id']; ?>
" />
    <input type="hidden" name="page" value="<?php echo $this->_tpl_vars['page']['name']; ?>
" />
    <h5>Edit the supporting text in "<?php echo ((is_array($_tmp=$this->_tpl_vars['page']['name'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
"</h5>
    
    <!-- -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Title 2 </a><a href="javascript:return;" class="helpbox">
      Some of your webpages may display one, two or three titles.
      </a>
      </p>
    <input type="text" name="title2" style="width:80%;" value="<?php if ($this->_tpl_vars['post']['title2']): ?><?php echo $this->_tpl_vars['post']['title2']; ?>
<?php elseif ($this->_tpl_vars['page']['title2']): ?><?php echo $this->_tpl_vars['page']['title2']; ?>
<?php endif; ?>" />
    </div>
        
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Text 2 </a><a href="javascript:return;" class="helpbox">
      This is the secondary body of text that will be displayed in your webpage.
      </a>
      </p>
    <textarea name="text2" style="width:100%;height:400px;">
	<?php if ($this->_tpl_vars['post']['text2']): ?><?php echo $this->_tpl_vars['post']['text2']; ?>
<?php else: ?><?php echo $this->_tpl_vars['page']['text2']; ?>
<?php endif; ?>
    </textarea>
    </div>

    <!-- advanced features -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Advanced Options... </a><a href="javascript:return;" class="helpbox">
      Advanced tools and settings. See www.friendlyeditor.com/editors for more info.
      </a>
      </p>
      <input type="checkbox" name="clearformatting" value="yes"> Remove all html styles, colors, and behaviors in this article.
    </div>
    
  	</form>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/tinymce-simplified.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</body>
</html>