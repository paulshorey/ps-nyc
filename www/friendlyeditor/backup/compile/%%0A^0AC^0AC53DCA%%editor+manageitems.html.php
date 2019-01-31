<?php /* Smarty version 2.6.22, created on 2010-07-15 19:47:10
         compiled from publisher/core/items/editor+manageitems.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getitems', 'publisher/core/items/editor manageitems.html', 42, false),array('function', 'getpages', 'publisher/core/items/editor manageitems.html', 88, false),array('modifier', 'preview_text', 'publisher/core/items/editor manageitems.html', 141, false),array('modifier', 'capitalize', 'publisher/core/items/editor manageitems.html', 141, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/configure.png" border="0" />
    <h3>Manage Entries</h3>
        <!-- buttons -->
        <div class="buttons">
        	<!-- submit -->
            <input type="button" value="Rearrange" class="button" onClick="document.form_1.submit();" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" />
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

<!-- MIDDLE -->
<div id="middle">
    
    <!-- SORT -->
	<?php echo smarty_function_getitems(array('page' => $this->_tpl_vars['page']['name'],'category' => $this->_tpl_vars['page']['category'],'limit' => "",'name' => 'edititems','orderby' => 'placement asc'), $this);?>

    <!-- EDIT -->
    <div class="section button" style="cursor:default;">
    <h5>Move all search results to a new page or new category, or edit them individually. Click and drag the rows to change their order on the page/category. The new order will be saved when you hit "submit". To order by date or by name, go to "page" > "edit" on the main toolbar.</h5>
    <form name="sortdata" action="" id="form_src" method="get">
    <table border="0" cellpadding="0" cellspacing="0">
    </td><td align="left" valign="top">
    	<input type="hidden" name="display" value="<?php echo $this->_tpl_vars['page']['display']; ?>
" />
    	<input type="hidden" name="page" value="<?php echo $this->_tpl_vars['page']['name']; ?>
" />
        Search
        <input name="edititems[find]" value="<?php echo $this->_tpl_vars['edititems_find']; ?>
" />
        &nbsp;
    </td><td align="left" valign="top">
        in page 
        <select name="edititems[page]" onChange="$('#form_src').submit();">
        <option value=""></option>
        <?php echo smarty_function_getitems(array('unique' => 'page','page' => "",'category' => "",'item' => "",'name' => 'pgs'), $this);?>

        <?php $_from = $this->_tpl_vars['pgs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['pgs']):
?>
        <?php if ($this->_tpl_vars['pgs']['page'] != ""): ?>
        <option <?php if ($this->_tpl_vars['pgs']['page'] == $this->_tpl_vars['edititems_page']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['pgs']['page']; ?>
"><?php echo $this->_tpl_vars['pgs']['page']; ?>
</option>
        <?php endif; ?>
        <?php endforeach; endif; unset($_from); ?>
        </select> &nbsp;
    </td><td align="left" valign="top">
        in category
        <select name="edititems[category]" onChange="$('#form_src').submit();">
        <option value=""></option>
        <?php echo smarty_function_getitems(array('page' => $this->_tpl_vars['edititems_page'],'unique' => 'category','category' => "",'item' => "",'name' => 'categories'), $this);?>

        <?php $_from = $this->_tpl_vars['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['categories']):
?>
        <?php if ($this->_tpl_vars['categories']['category'] != ""): ?>
        <option <?php if ($this->_tpl_vars['categories']['category'] == $this->_tpl_vars['edititems_category']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['categories']['category']; ?>
"><?php echo $this->_tpl_vars['categories']['category']; ?>
</option>
        <?php endif; ?>
        <?php endforeach; endif; unset($_from); ?>
        </select> &nbsp;
    </td><td align="left" valign="top">
    	<input type="submit" style="padding:0;height:20px;line-height:20px;font-size:14px;font-weight:bold;" value="Search" />
        &nbsp;
    </td></tr>
    </table>
    </form>
    <form action="publisher/core/items/editor edititems.php" method="post" enctype="multipart/form-data">
    <table class="margintop" border="0" cellpadding="0" cellspacing="0">
    <tr><td align="left" valign="top">
    Move all entries to page: 
    <select name="page">
    <option value=""></option>
    <?php echo smarty_function_getpages(array('from' => 'pages','orderby' => 'name desc','unique' => 'name','name' => 'pgs'), $this);?>

    <?php $_from = $this->_tpl_vars['pgs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['val'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['val']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['val']):
        $this->_foreach['val']['iteration']++;
?>
        <option value="<?php echo $this->_tpl_vars['val']['name']; ?>
"><?php echo $this->_tpl_vars['val']['name']; ?>
</option>
    <?php endforeach; endif; unset($_from); ?>
    </select>
    </td><td align="left" valign="top">
	&nbsp;to category: 
    <select name="category" id="category_select"  onchange="if(this.value=='new category'){$('#category').show('slow');$('#category').attr('name','category');$(this).hide();}">
    <option value=""></option>
    <?php echo smarty_function_getitems(array('page' => "",'category' => "",'item' => "",'orderby' => 'category desc','unique' => 'category','name' => 'categories'), $this);?>

    <?php $_from = $this->_tpl_vars['categories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['val']):
?>
    <?php if ($this->_tpl_vars['val']['category'] != ""): ?><option value="<?php echo $this->_tpl_vars['val']['category']; ?>
"><?php echo $this->_tpl_vars['val']['category']; ?>
</option><?php endif; ?>
    <?php endforeach; endif; unset($_from); ?>
    <option value="new category">----------</option>
    <option value="new category">New Category</option>
    </select>
    <input type="text" name="xcategory" id="category" value="<?php if ($this->_tpl_vars['post']['category']): ?><?php echo $this->_tpl_vars['post']['category']; ?>
<?php endif; ?>" style="display:none;" />
    </td><td align="left" valign="top">
    <input type="hidden" name="ids" value="<?php echo $this->_tpl_vars['edititems_ids']; ?>
" />
    &nbsp;&nbsp;
    <input type="submit" style="padding:0;height:20px;line-height:20px;font-size:14px;font-weight:bold;" value="Move" />
    &nbsp;&nbsp;
    </form>
    </td><td align="left" valign="top">
    <form action="publisher/core/items/editor deleteitems.php" method="post" enctype="multipart/form-data">
    <input type="button" onClick="$(this).hide();$('#deleteforsure').show();" style="padding:0;height:20px;line-height:20px;font-size:14px;font-weight:bold;" value="Delete all" />
    <input type="submit" id="deleteforsure" style="display:none;padding:0;height:20px;line-height:20px;font-size:14px;font-weight:bold;" value="Are you sure?" />
    <input type="hidden" name="ids" value="<?php echo $this->_tpl_vars['edititems_ids']; ?>
" />
    </form>
    </td></tr>
    </table>
    <?php echo $this->_tpl_vars['edititems_query']; ?>

    </div>

	<!-- RESULTS -->
    <form action="publisher/core/items/editor manageitems.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="page" id="page" value="<?php if ($this->_tpl_vars['edititems_page']): ?><?php echo $this->_tpl_vars['edititems_page']; ?>
<?php else: ?><?php echo $this->_tpl_vars['page']['name']; ?>
<?php endif; ?>" />
    <input type="hidden" name="form_order" id="order" value="" />
    
    <div class="section">
    <div id="images">
    <ul id="orderlist" style="padding:0;margin:0;cursor:move;">
	<?php $_from = $this->_tpl_vars['edititems']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['value']):
?>
        <li id="listItem_<?php echo $this->_tpl_vars['value']['id']; ?>
" style="display:block;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="handle"><tr><td>
        <?php if ($this->_tpl_vars['value']['image1']): ?>
        <div class="image"><img src="/<?php echo $this->_tpl_vars['site']['uploads']['images']['dir']; ?>
/<?php echo $this->_tpl_vars['value']['image1']; ?>
" border="0" /></div>
        <?php else: ?>
        <div class="image"><img src="/publisher/core/editor/images/item-blank.jpg" border="0" /></div>
        <?php endif; ?>
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/items/editor edititem&item=<?php echo $this->_tpl_vars['value']['id']; ?>
';" value="Edit Item" />
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/items/editor additem&item=<?php echo $this->_tpl_vars['value']['id']; ?>
';" value="Add Item" />
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='publisher/core/items/editor deleteitem.php?id=<?php echo $this->_tpl_vars['value']['id']; ?>
&name=<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Delete Item" /><br />
        <div style="float:left;position:relative;margin-left:6px;text-transform:capitalize;"><b><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['name'])) ? $this->_run_mod_handler('preview_text', true, $_tmp, '40') : smarty_modifier_preview_text($_tmp, '40')); ?>
</b>&nbsp;&nbsp; page:<b><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['page'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</b>&nbsp;&nbsp; cgy:<b><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['category'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</b></div>
        <div style="float:left;position:relative;height:22px;overflow:hidden;margin-left:6px;color:#666666;"><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['text1'])) ? $this->_run_mod_handler('preview_text', true, $_tmp) : smarty_modifier_preview_text($_tmp)); ?>
</div>
        </td></tr></table>
        </li>
    <?php endforeach; else: ?>
    	<p>There are no items on this page/category</p>
    <?php endif; unset($_from); ?>
    </ul>
    </div>
    </div>
    </form>
    <p>&nbsp;</p>

</div>
</body>
</html>