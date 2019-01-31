<?php /* Smarty version 2.6.22, created on 2010-07-15 09:23:10
         compiled from publisher/core/users/editor+users.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'getusers', 'publisher/core/users/editor users.html', 37, false),array('modifier', 'capitalize', 'publisher/core/users/editor users.html', 55, false),array('modifier', 'preview_text', 'publisher/core/users/editor users.html', 61, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/groupofusers.png" border="0" />
    <h3>Manage Users</h3>
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
<h5>Edit, delete and add new users here.</h5>

<?php echo smarty_function_getusers(array('name' => 'results','orderby' => "role asc,date desc"), $this);?>

    
	<!-- RESULTS -->
    <div class="section">
    <div id="images">
    <ul id="orderlist" style="padding:0;margin:0;">
	<?php $_from = $this->_tpl_vars['results']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['value'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['value']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['value']):
        $this->_foreach['value']['iteration']++;
?>
        <li id="listItem_<?php echo $this->_tpl_vars['value']['id']; ?>
" style="display:block;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0"><tr><td>
        <?php if ($this->_tpl_vars['value']['image1']): ?>
        <div class="image"><img src="images/<?php echo $this->_tpl_vars['value']['image1']; ?>
" border="0" /></div>
        <?php else: ?>
        <div class="image"><img src="/publisher/core/editor/images/user-blank.jpg" border="0" /></div>
        <?php endif; ?>
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/users/editor edituser&user=<?php echo $this->_tpl_vars['value']['id']; ?>
';" value="Edit User" />
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/users/editor adduser&user=<?php echo $this->_tpl_vars['value']['id']; ?>
';" value="Add User" /> 
        <input type="button" class="button" onMouseOver="this.className='button_hover'" onMouseOut="this.className='button'" onClick="document.location='?display=publisher/core/users/editor deleteuser&user=<?php echo $this->_tpl_vars['value']['id']; ?>
';" value="Delete User" /><br />
        <div style="float:left;position:relative;margin-left:6px;">
        <b><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['username'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</b> 
        (<?php if ($this->_tpl_vars['value']['firstname']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['firstname'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['value']['middlename'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['value']['lastname'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
<?php else: ?> - <?php endif; ?>,
        <?php if ($this->_tpl_vars['value']['email']): ?><?php echo $this->_tpl_vars['value']['email']; ?>
<?php else: ?> - <?php endif; ?>)
        <?php if ($this->_tpl_vars['value']['mail']): ?> &nbsp;*<b>mailinglist</b><?php endif; ?>
        <?php if ($this->_tpl_vars['value']['role']): ?> &nbsp;*<b><?php echo $this->_tpl_vars['value']['role']; ?>
</b> <?php endif; ?><br />
        <?php if ($this->_tpl_vars['value']['url']): ?> <a href="<?php echo $this->_tpl_vars['value']['url']; ?>
" target="_blank"><?php echo $this->_tpl_vars['value']['url']; ?>
</a></b> <?php endif; ?></div>
        <div style="float:left;position:relative;height:22px;overflow:hidden;margin-left:6px;color:#666666;"><?php echo ((is_array($_tmp=$this->_tpl_vars['value']['text'])) ? $this->_run_mod_handler('preview_text', true, $_tmp) : smarty_modifier_preview_text($_tmp)); ?>
</div>
        </td></tr></table>
        </li>
    <?php endforeach; else: ?>
    	<p>Your site has no members. <a href="index.php?display=publisher/core/users/editor adduser">Click here to add some.</a></p>
    <?php endif; unset($_from); ?>
    </ul>
    </div>
    </div>
    <p>&nbsp;</p>

</div>
</body>
</html>