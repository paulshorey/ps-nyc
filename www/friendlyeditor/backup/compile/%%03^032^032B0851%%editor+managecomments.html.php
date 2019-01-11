<?php /* Smarty version 2.6.22, created on 2010-07-14 23:49:46
         compiled from publisher/core/items/editor+managecomments.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getitems', 'publisher/core/items/editor managecomments.html', 37, false),array('modifier', 'preview_text', 'publisher/core/items/editor managecomments.html', 103, false),array('modifier', 'capitalize', 'publisher/core/items/editor managecomments.html', 104, false),array('modifier', 'date', 'publisher/core/items/editor managecomments.html', 104, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/configure.png" border="0" />
    <h3>Manage Comments</h3>
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
<script type="text/javascript" language="javascript">
	var xrel = "<?php echo $this->_tpl_vars['get']['xrel']; ?>
";
	if (xrel != "yes") {window.location.href = window.location.href+'&xrel=yes';}
</script>

<?php echo smarty_function_getitems(array('orderby' => 'date desc','limit' => "",'page' => $this->_tpl_vars['page']['name'],'type' => 'comment','item' => "",'name' => 'edititems'), $this);?>


<!-- MIDDLE -->
<div id="middle">
<h5>Here are all the comments in the page. To see all comments in the site, submit a blank search.</h5>
    
    <!-- SORT -->
    <form name="sortdata" action="" method="get">
    <div class="section">
    <table border="0" cellpadding="0" cellspacing="0">
    </td><td align="left" valign="top">
    	<input type="hidden" name="display" value="<?php echo $this->_tpl_vars['page']['display']; ?>
" />
    	<input type="hidden" name="page" value="<?php echo $this->_tpl_vars['page']['name']; ?>
" />
        Search
        <input name="edititems[find]" />
        &nbsp;&nbsp;
    </td><td align="left" valign="top">
        in page 
        <select name="edititems[page]">
        <option value=""></option>
        <?php echo smarty_function_getitems(array('unique' => 'page','category' => "",'item' => "",'name' => 'pgs'), $this);?>

        <?php $_from = $this->_tpl_vars['pgs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['pgs']):
?>
        <?php if ($this->_tpl_vars['pgs']['page'] != ""): ?>
        <?php if ($this->_tpl_vars['pgs']['page'] == $this->_tpl_vars['edititems_page']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['pgs']['page']; ?>
"><?php echo $this->_tpl_vars['pgs']['page']; ?>
<option <?php if ($this->_tpl_vars['pgs']['page'] == $this->_tpl_vars['edititems_page']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['pgs']['page']; ?>
"><?php echo $this->_tpl_vars['pgs']['page']; ?>
</option>
        <?php endif; ?>
        <?php endforeach; endif; unset($_from); ?>
        </select> &nbsp;&nbsp;
    </td><td align="left" valign="top">
        for item
        <select name="edititems[item]">
        <option value=""></option>
        <?php echo smarty_function_getitems(array('page' => $this->_tpl_vars['edititems_page'],'category' => "",'item' => '0','name' => 'its'), $this);?>

        <?php $_from = $this->_tpl_vars['its']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['its']):
?>
        <?php if ($this->_tpl_vars['its']['id'] == $this->_tpl_vars['edititems_item']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['its']['id']; ?>
"><?php echo $this->_tpl_vars['its']['name']; ?>
 - <?php echo $this->_tpl_vars['its']['id']; ?>
<option <?php if ($this->_tpl_vars['its']['id'] == $this->_tpl_vars['edititems_item']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['its']['id']; ?>
"><?php echo $this->_tpl_vars['its']['name']; ?>
 - <?php echo $this->_tpl_vars['its']['id']; ?>
</option>
        <?php endforeach; endif; unset($_from); ?>
        </select> &nbsp;&nbsp;
    </td><td align="left" valign="top">
    	<input type="submit" value="Search" />
        &nbsp;&nbsp;
    </td></tr>
    </table>
    </div>
    </form>

	<!-- RESULTS -->
    <form action="publisher/core/items/editor manageitems.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="form_pagename" id="pagename" value="<?php if ($this->_tpl_vars['edititems_page']): ?><?php echo $this->_tpl_vars['edititems_page']; ?>
<?php else: ?><?php echo $this->_tpl_vars['page']['name']; ?>
<?php endif; ?>" />
    <input type="hidden" name="form_orderby" id="orderby" value="<?php if ($this->_tpl_vars['edititems_orderby']): ?><?php echo $this->_tpl_vars['edititems_orderby']; ?>
<?php else: ?><?php echo $this->_tpl_vars['page']['orderby']; ?>
<?php endif; ?>" />
    <input type="hidden" name="form_order" id="order" value="" />
    
    <div class="section">
    
	<?php $_from = $this->_tpl_vars['edititems']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['value']):
?>
    
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td valign="top" align="left" width="1">
        <?php if ($this->_tpl_vars['value']['image1']): ?>
        <div class="image"><img src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['value']['image1']; ?>
" border="0" /></div>
        <?php else: ?>
        <div class="image"><img src="/publisher/core/editor/images/item-blank.jpg" border="0" /></div>
        <?php endif; ?>
        </td>
        <td valign="top" align="left">
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/items/editor editcomment&item=<?php echo $this->_tpl_vars['value']['id']; ?>
';" value="Edit Comment" />
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='publisher/core/items/editor deleteitem.php?id=<?php echo $this->_tpl_vars['value']['id']; ?>
';" value="Delete Comment" /><br />
        <?php echo ((is_array($_tmp=$this->_tpl_vars['value']['text1'])) ? $this->_run_mod_handler('preview_text', true, $_tmp, '100') : smarty_modifier_preview_text($_tmp, '100')); ?>
...<br />
        <span style="color:#666666;">Posted by <?php echo ((is_array($_tmp=$this->_tpl_vars['value']['username'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
<?php if ($this->_tpl_vars['value']['postedby']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['postedby'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
<?php endif; ?>, on <?php echo ((is_array($_tmp=$this->_tpl_vars['value']['date'])) ? $this->_run_mod_handler('date', true, $_tmp) : smarty_modifier_date($_tmp)); ?>
</span>
        </td>
        </tr>
        </table>
        
    <?php endforeach; else: ?>
    
    	<p>There are no items on this page/category</p>
        
    <?php endif; unset($_from); ?>
    
    </div>

    </form>
    <p>&nbsp;</p>

</div>
</body>
</html>