<?php /* Smarty version 2.6.22, created on 2010-07-17 00:59:38
         compiled from publisher/core/site/editor+pages.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getpages', 'publisher/core/site/editor pages.html', 41, false),array('function', 'getitem', 'publisher/core/site/editor pages.html', 69, false),array('modifier', 'preview_text', 'publisher/core/site/editor pages.html', 81, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/configure.png" border="0" />
    <h3>Manage Pages</h3>
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

<!-- MIDDLE -->
<div id="middle">
<h5>Click and drag the pages to their new order. To move a page to another menu, click "edit page".</h5>

<?php echo smarty_function_getpages(array('orderby' => 'placement asc','search' => "name,text1,text2,text3",'limit' => "",'menu' => '1','name' => 'editpages'), $this);?>

    
    <!-- SORT -->
    <form name="sortdata" action="/index.php?<?php echo $this->_tpl_vars['page']['uri']; ?>
" method="post">
    <div class="section">
    <table border="0" cellpadding="0" cellspacing="0"><tr><td align="left" valign="top">
        Navigation menu: 
        <select name="editpages[menu]">
        <?php echo smarty_function_getpages(array('unique' => 'menu','orderby' => 'menu asc','name' => 'menus'), $this);?>

        <?php $_from = $this->_tpl_vars['menus']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['val'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['val']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['val']):
        $this->_foreach['val']['iteration']++;
?>
        <?php if ($this->_tpl_vars['val']['menu'] == $this->_tpl_vars['editpages_menu']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['val']['menu']; ?>
" onclick="document.sortdata.submit();"><?php echo $this->_tpl_vars['val']['menu']; ?>
<option <?php if ($this->_tpl_vars['val']['menu'] == $this->_tpl_vars['editpages_menu']): ?>selected="selected"<?php endif; ?> value="<?php echo $this->_tpl_vars['val']['menu']; ?>
" onclick="document.sortdata.submit();"><?php echo $this->_tpl_vars['val']['menu']; ?>
</option>
        <?php endforeach; endif; unset($_from); ?>
        </select>
    </td></tr></table>
    </div>
    </form>

	<!-- RESULTS -->
    <form action="publisher/core/site/editor pages.php" name="form_1" method="post" enctype="multipart/form-data">
    <input type="hidden" name="form_id" value="<?php echo $this->_tpl_vars['site']['id']; ?>
" />
    <input type="hidden" name="form_orderby" id="orderby" value="" />
    <input type="hidden" name="form_order" id="order" value="" />
    <div class="section">
    <div id="images">
    <ul id="orderlist" style="padding:0;margin:0;cursor:move;">
   	<?php $_from = $this->_tpl_vars['editpages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['value'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['value']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['value']):
        $this->_foreach['value']['iteration']++;
?>
        <li id="listItem_<?php echo $this->_tpl_vars['value']['id']; ?>
">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="handle"><tr><td>
        <?php echo smarty_function_getitem(array('page' => $this->_tpl_vars['value']['name'],'name' => 'val'), $this);?>

        <?php if ($this->_tpl_vars['val']): ?>
        	<?php if ($this->_tpl_vars['val']['image1']): ?>
           	<div class="image"><img src="/images/<?php echo $this->_tpl_vars['val']['image1']; ?>
" border="0" width="100%" /></div>
        	<?php else: ?>
           	<div class="image"></div>
        	<?php endif; ?>
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="window.top.location='<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Visit" />
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/pages/editor editpage&page=<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Edit Page" />
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/pages/editor addpage&page=<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Add Page" />
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/pages/editor deletepage&page=<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Delete Page" /><br />
            <span style="padding-left:6px;text-transform:capitalize;font-weight:bold;"><?php echo $this->_tpl_vars['value']['name']; ?>
</span> <?php echo $this->_tpl_vars['value']['category']; ?>
 <?php echo $this->_tpl_vars['value']['relevance']; ?>
<br />
            <div style="height:22px;overflow:hidden;padding-left:6px;color:#666666;"><?php echo ((is_array($_tmp=$this->_tpl_vars['val']['text1'])) ? $this->_run_mod_handler('preview_text', true, $_tmp) : smarty_modifier_preview_text($_tmp)); ?>
</div>
        <?php else: ?>
           	<div class="image"></div>
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="window.top.location='<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Visit" />
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/pages/editor editpage&page=<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Edit Page" />
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/pages/editor addpage&page=<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Add Page" />
            <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/pages/editor deletepage&page=<?php echo $this->_tpl_vars['value']['name']; ?>
';" value="Delete Page" /><br />
            <span style="padding-left:6px;text-transform:capitalize;font-weight:bold;"><?php echo $this->_tpl_vars['value']['name']; ?>
</span> <?php echo $this->_tpl_vars['value']['category']; ?>
 <?php echo $this->_tpl_vars['value']['relevance']; ?>
<br />
            <div style="height:22px;overflow:hidden;padding-left:6px;color:#666666;"><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['text1'])) ? $this->_run_mod_handler('preview_text', true, $_tmp) : smarty_modifier_preview_text($_tmp)); ?>
</div>
            <?php endif; ?>
        </td></tr></table>
        </li>
    <?php endforeach; endif; unset($_from); ?>
    </ul>
    </div>
    </div>
    </form>
    <p>&nbsp;</p>

</div>
</body>
</html>