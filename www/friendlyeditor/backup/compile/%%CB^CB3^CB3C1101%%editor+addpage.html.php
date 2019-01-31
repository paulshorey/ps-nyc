<?php /* Smarty version 2.6.22, created on 2010-07-15 09:19:28
         compiled from publisher/core/pages/editor+addpage.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getfiles', 'publisher/core/pages/editor addpage.html', 75, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/file.png" border="0" />
    <h3>Add a New Page</h3>
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
    <form action="publisher/core/pages/editor addpage.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="<?php echo $this->_tpl_vars['xpage']['id']; ?>
" />
    <h5>Add a new page, try out some different layouts.</h5>
    
    <!---->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Name </a><a href="javascript:return;" class="helpbox">
      Will be displayed in the url. Only letters, numbers, dashes and spaces please. After creating, it's not a good idea to change it because other sites may have already linked to it. Instead, change the first title below.
      </a>
      </p>
    <input type="hidden" name="oldname" value="<?php echo $this->_tpl_vars['xpage']['name']; ?>
" />
    <input type="text" name="name" value="<?php echo $this->_tpl_vars['xpage']['name']; ?>
" />
    </div>
    
    <!-- -->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Title </a><a href="javascript:return;" class="helpbox">
    Some of your pages may display one, two or three titles. If left blank, the page name will be used.
      </a>
      </p>
    <p><input type="text" name="title1" style="width:80%;" value="<?php if ($this->_tpl_vars['post']['title1']): ?><?php echo $this->_tpl_vars['post']['title1']; ?>
<?php elseif ($this->_tpl_vars['xpage']['title1']): ?><?php echo $this->_tpl_vars['xpage']['title1']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xpage']['name']; ?>
<?php endif; ?>" /></p>
    <h6 onClick="$('#pagetitles').show('slow');$(this).hide('slow');"><a href="javascript:return;">Add more titles.</a></h6>
    <div id="pagetitles" style="display:none;">
    <p><input type="text" name="title2" style="width:80%;" value="<?php if ($this->_tpl_vars['post']['title2']): ?><?php echo $this->_tpl_vars['post']['title2']; ?>
<?php elseif ($this->_tpl_vars['xpage']['title2']): ?><?php echo $this->_tpl_vars['xpage']['title2']; ?>
<?php endif; ?>" /></p>
    <p><input type="text" name="title3" style="width:80%;" value="<?php if ($this->_tpl_vars['post']['title3']): ?><?php echo $this->_tpl_vars['post']['title3']; ?>
<?php elseif ($this->_tpl_vars['xpage']['title3']): ?><?php echo $this->_tpl_vars['xpage']['title3']; ?>
<?php endif; ?>" /></p>
    </div>
    </div>
    
    <!---->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Layout </a><a href="javascript:return;" class="helpbox">
    What kind of page is this? Your site has been created with several designs to choose from.
      </a>
      </p>
    <select name="type">
    <?php echo smarty_function_getfiles(array('dir' => "",'ext' => 'html','name' => 'layouts'), $this);?>

    <?php $_from = $this->_tpl_vars['layouts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['val'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['val']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['val']):
        $this->_foreach['val']['iteration']++;
?>
        <?php if ($this->_tpl_vars['val'] == 'blog' || $this->_tpl_vars['val'] == 'text'): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['val']; ?>
"><?php echo $this->_tpl_vars['val']; ?>
<option <?php if ($this->_tpl_vars['val'] == 'blog' || $this->_tpl_vars['val'] == 'text'): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['val']; ?>
"><?php echo $this->_tpl_vars['val']; ?>
</option>
    <?php endforeach; endif; unset($_from); ?>
    </select>
    </div>
    
    <!---->
    <div class="section">
      <p>
      <a href="javascript:return;" class="help">Menu</a><a href="javascript:return;" class="helpbox">
    Your site may have one or two navigation menus. Which one would you like to place this page on?
      </a>
      </p>
    <select name="menu">
    <option value="1" selected="selected">Main menu</option>
    <option value="2" >Second menu</option>
    <option value="hidden" >Hidden (link only)</option>
    </select>
    </div>
    
    <!---->
    <div class="section">
      <p>
      <a href="javascript:return;" class="help">Sort entries</a><a href="javascript:return;" class="helpbox">
    Whether you have products, photos, or links, they'll be arranged in this order. If you'd like to drag and drop your etries with the "Manage Entries" tool, choose "placement asc".
      </a>
      </p>
    <select name="orderby">
    <option value="name asc">name asc</option>
    <option value="name desc">name desc</option>
    <option value="date asc">date asc</option>
    <option selected="selected" value="date desc">date desc</option>
    <option value="page asc">page asc</option>
    <option value="page desc">page desc</option>
    <option value="price1 asc">price asc</option>
    <option value="price1 desc">price desc</option>
    <option value="category asc">category asc</option>
    <option value="category desc">category desc</option>
    <option value="placement asc">placement asc</option>
    </select>
    </div>
        
    <!---->
    <div class="section">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Text</a><a href="javascript:return;" class="helpbox">
    This will be the main body of text for this page.
      </a>
      </p>
    <textarea name="text1" style="width:100%;height:400px;">
	<?php if ($this->_tpl_vars['post']['text1']): ?><?php echo $this->_tpl_vars['post']['text1']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xpage']['text1']; ?>
<?php endif; ?>
    </textarea>
    </div>
	
    <div class="section" style="cursor:hand;cursor:pointer;display:none;" onClick="$('#itemtexts').show('slow');$(this).hide('slow');">
      <p style="font-weight:bold;">
      <a href="javascript:return;" class="help">Add more text fields.</a><a href="javascript:return;" class="helpbox">
      If your page supports more than one text field, add them here. Otherwise, contact your designer to add some.
      </a>
      </p>
    </div>
    <div id="itemtexts" style="display:block;">
        
    <!---->
    <div class="section">
      <p>
      <a href="javascript:return;" class="help">Text 2</a><a href="javascript:return;" class="helpbox">
    This is the secondary text that is usually displayed on the side or bottom of the page.
      </a>
      </p>
    <textarea name="text2" style="width:100%;height:400px;">
	<?php if ($this->_tpl_vars['post']['text2']): ?><?php echo $this->_tpl_vars['post']['text2']; ?>
<?php else: ?><?php echo $this->_tpl_vars['xpage']['text2']; ?>
<?php endif; ?>
    </textarea>
    </div>
    
    </div>

    <!-- advanced features -->
    <div class="section">
      <p>
      <a href="javascript:return;" class="help">Advanced Options... </a><a href="javascript:return;" class="helpbox">
      Advanced tools and settings. Visit www.friendlyeditor.com/editors for more info.
      </a>
      </p>
      <input type="checkbox" name="clearformatting" value="yes"> Remove all html styles, colors, and behaviors in this page.
    </div>

  	</form>
    
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/tinymce.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</body>
</html>