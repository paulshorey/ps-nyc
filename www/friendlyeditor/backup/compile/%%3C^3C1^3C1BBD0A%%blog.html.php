<?php /* Smarty version 2.6.22, created on 2010-07-14 14:27:18
         compiled from blog.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'edittext1', 'blog.html', 6, false),array('function', 'getitems', 'blog.html', 13, false),array('function', 'edititem', 'blog.html', 15, false),array('function', 'playmedia', 'blog.html', 20, false),array('function', 'additem', 'blog.html', 43, false),array('function', 'edittext2', 'blog.html', 48, false),array('function', 'edittext3', 'blog.html', 92, false),array('modifier', 'date', 'blog.html', 57, false),array('modifier', 'capitalize', 'blog.html', 81, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<tr><td align="left" valign="top">

    <div style="float:left;margin:22px 0;" class="main">
    
    <?php echo smarty_function_edittext1(array(), $this);?>

    <?php if ($this->_tpl_vars['page']['text1']): ?>
	<h1><?php echo $this->_tpl_vars['page']['title1']; ?>
</h1>
    <p><?php echo $this->_tpl_vars['page']['text1']; ?>
</p>
    <?php endif; ?>
    <p>&nbsp;</p>
    
    <?php echo smarty_function_getitems(array('page' => $this->_tpl_vars['page']['name'],'category' => $this->_tpl_vars['page']['category'],'id' => $this->_tpl_vars['page']['item'],'limit' => '1','name' => 'items'), $this);?>

    <?php $_from = $this->_tpl_vars['items']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
    <?php echo smarty_function_edititem(array('id' => $this->_tpl_vars['item']['id']), $this);?>

    <h2><?php echo $this->_tpl_vars['item']['name']; ?>
</h2>
    <p><?php echo $this->_tpl_vars['item']['text1']; ?>
</p>
    
    <?php if ($this->_tpl_vars['item']['image1']): ?>
    <p class="margintop"><?php echo smarty_function_playmedia(array('image' => "/".($this->_tpl_vars['site']['uploads']['images']['dir'])."/".($this->_tpl_vars['item']['image1']),'height' => '300','width' => '600'), $this);?>
</p>
    <p class="margintop"><?php echo $this->_tpl_vars['item']['caption1']; ?>
</p>
    <?php endif; ?>
    <?php if ($this->_tpl_vars['item']['image2']): ?>
    <p class="margintop"><?php echo smarty_function_playmedia(array('image' => "/".($this->_tpl_vars['site']['uploads']['images']['dir'])."/".($this->_tpl_vars['item']['image2']),'height' => '300','width' => '600'), $this);?>
</p>
    <p class="margintop"><?php echo $this->_tpl_vars['item']['caption2']; ?>
</p>
    <?php endif; ?>
    <?php if ($this->_tpl_vars['item']['image3']): ?>
    <p class="margintop"><?php echo smarty_function_playmedia(array('image' => "/".($this->_tpl_vars['site']['uploads']['images']['dir'])."/".($this->_tpl_vars['item']['image3']),'height' => '300','width' => '600'), $this);?>
</p>
    <p class="margintop"><?php echo $this->_tpl_vars['item']['caption3']; ?>
</p>
    <?php endif; ?>
    <?php if ($this->_tpl_vars['item']['image4']): ?>
    <p class="margintop"><?php echo smarty_function_playmedia(array('image' => "/".($this->_tpl_vars['site']['uploads']['images']['dir'])."/".($this->_tpl_vars['item']['image4']),'height' => '300','width' => '600'), $this);?>
</p>
    <p class="margintop"><?php echo $this->_tpl_vars['item']['caption4']; ?>
</p>
    <?php endif; ?>
    <?php if ($this->_tpl_vars['item']['image5']): ?>
    <p class="margintop"><?php echo smarty_function_playmedia(array('image' => "/".($this->_tpl_vars['site']['uploads']['images']['dir'])."/".($this->_tpl_vars['item']['image5']),'height' => '300','width' => '600'), $this);?>
</p>
    <p class="margintop"><?php echo $this->_tpl_vars['item']['caption5']; ?>
</p>
    <?php endif; ?>
    
    <p class="margintop"><?php echo $this->_tpl_vars['item']['text2']; ?>
</p>
    <p>&nbsp;</p>
    <?php endforeach; else: ?>
    <?php echo smarty_function_additem(array(), $this);?>

    <p>&nbsp;</p>
    <?php endif; unset($_from); ?>
    <p>&nbsp;</p>
    
    <?php echo smarty_function_edittext2(array(), $this);?>

    <?php if ($this->_tpl_vars['page']['text2']): ?>
    <h3><?php echo $this->_tpl_vars['page']['title2']; ?>
</h3>
    <p><?php echo $this->_tpl_vars['page']['text2']; ?>
</p>
    <?php endif; ?>
    <p>&nbsp;</p>
    
    <form name="contact" action="<?php echo $this->_tpl_vars['mail_form']; ?>
" method="post" enctype="multipart/form-data">
    <input type="hidden" name="artspaces.net message" value="..." />
    <input type="hidden" name="date" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['Smarty']['now'])) ? $this->_run_mod_handler('date', true, $_tmp) : smarty_modifier_date($_tmp)); ?>
" />
    <input type="hidden" name="subject" value="artspaces.net message" />
    <p>Your name<br />
    <input type="text" name="name" value="<?php echo $this->_tpl_vars['post']['name']; ?>
" style="width:220px;" /></p>
    <p class="margintop">Email<br />
    <input type="text" name="email" value="<?php echo $this->_tpl_vars['post']['email']; ?>
" style="width:220px;" /></p>
    <p class="margintop">Message<br />
    <textarea name="site_structure" style="width:98%;height:80px"><?php echo $this->_tpl_vars['post']['site_structure']; ?>
</textarea></p>
    <p class="margintop">Please type "yes" into this box to prove that you're a real person.<br />
    <input type="text" name="areyouhuman" style="width:80px;" /></p>
    <p class="margintop"><input type="submit" value="Send" class="button" /></p>
    <p>&nbsp;</p>
    </form>
    
    <p>Thank you,<br />
    Paul Shorey, designer (<a href="http://www.paulshorey.com" target="_blank">www.paulshorey.com</a>, <a href="http://www.artspaces.net" target="_blank">www.artspaces.net</a>)</p>
    
    </div>
    
    
    <div style="float:right;margin:22px 0;" class="side">
    
    <?php echo smarty_function_getitems(array('page' => $this->_tpl_vars['page']['name'],'unique' => 'category','orderby' => $this->_tpl_vars['page']['orderby'],'limit' => "",'name' => 'cats'), $this);?>

    <?php $_from = $this->_tpl_vars['cats']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cat']):
?>
    <h2><?php echo ((is_array($_tmp=$this->_tpl_vars['cat']['category'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</h2>
    
        <?php echo smarty_function_getitems(array('page' => $this->_tpl_vars['page']['name'],'category' => $this->_tpl_vars['cat']['category'],'limit' => "",'name' => 'items'), $this);?>

        <?php $_from = $this->_tpl_vars['items']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
        <?php echo smarty_function_edititem(array('id' => $this->_tpl_vars['item']['id']), $this);?>

        <p><a href="/<?php echo $this->_tpl_vars['item']['page']; ?>
/<?php echo $this->_tpl_vars['item']['category']; ?>
/<?php echo $this->_tpl_vars['item']['id']; ?>
"><?php echo $this->_tpl_vars['item']['name']; ?>
</a></p>
        <?php endforeach; endif; unset($_from); ?>
        
    <p>&nbsp;</p>
    <?php endforeach; endif; unset($_from); ?>
    
    <?php echo smarty_function_edittext3(array(), $this);?>

    <?php if ($this->_tpl_vars['page']['text3']): ?>
    <h1><?php echo $this->_tpl_vars['page']['title3']; ?>
</h1>
    <p><?php echo $this->_tpl_vars['page']['text3']; ?>
</p>
    <?php endif; ?>
    <p>&nbsp;</p>
    
    </div>
    
</td></tr>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/foot.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>