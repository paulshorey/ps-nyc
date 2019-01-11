<?php /* Smarty version 2.6.22, created on 2010-07-15 09:40:03
         compiled from publisher/core/site/editor+backup.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/webhd.png" border="0" />
    <h3>Site Backup</h3>
        <!-- buttons -->
        <div class="buttons">
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
    <h5>Backup your site often so you're protected. If you accidentally delete something, restore will bring it back.</h5>
    
    <!-- bg -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Backup site data </a><a href="javascript:return;" class="helpbox">
      Backup all data (like page names, categories, items, etc. Images and files will not be saved. If you're moving to a new server, first backup the site to avoid losing content.
      </a>
      </p>
    <form action="publisher/core/site/editor backup.php" name="form_1" method="post" enctype="multipart/form-data">
    <p><input type="submit" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" value="Backup Site" /></p>
  	</form>
    <h6>Backup your site often. This will save all data like pages, items, and settings incase you accidentally delete something or change your mind about some updates. Files, images and videos will not be backed up.</h6>
    </div>
    
    <!-- bg -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Restore site data </a><a href="javascript:return;" class="helpbox">
      This will restore your site data to the last time you backed it up.
      </a>
      </p>
    <form action="publisher/core/site/editor restore.php" name="form_1" method="post" enctype="multipart/form-data">
    <p style="color:#999999;"><input type="file" name="file" /> (Optional, restore from ".sql" file.)</p>
    <p><input type="submit" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" value="Restore Site" /></p>
  	</form>
    <h6>This will delete any changes you've made since the last backup. All modified pages, entries, and comments will be restored, but the images and files may not be recoverable.</h6>
    </div>
    
</div>
</body>
</html>