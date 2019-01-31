<?php /* Smarty version 2.6.22, created on 2010-07-15 14:24:16
         compiled from publisher/core/pages/editor+style.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/paint.png" border="0" />
    <h3>Page Style</h3>
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
<!-- Image Manager -->
<script language="javascript" type="text/javascript" src="scripts/tiny_mce/plugins/imagemanager/js/mcimagemanager.js"></script>

<!-- MIDDLE -->
<div id="middle">

	<!-- FORM -->
    <form action="publisher/core/pages/editor style.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="form_id" value="<?php echo $this->_tpl_vars['page']['id']; ?>
" />
    <h5>If you know css, you can style anything in the page. This style takes priority over the default site style.</h5>
    
    <!-- style -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Edit Stylesheet </a><a href="javascript:return;" class="helpbox">
      Set your page background by typing: <br /><tt>body {background:url('/images/bgimage.jpg');}</tt><br /> Learn more at www.w3schools.com/css. 
      </a>
      </p>
    <p>
    <textarea name="form_style" style="width:100%;height:400px;" onFocus="this.innerHTML=this.innerHTML"><?php echo $this->_tpl_vars['page']['style']; ?>
</textarea>
    </p>
    </div>
    
  	</form>
</div>
</body>
</html>