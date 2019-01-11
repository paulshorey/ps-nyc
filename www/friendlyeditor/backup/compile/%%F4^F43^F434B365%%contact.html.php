<?php /* Smarty version 2.6.22, created on 2012-03-31 01:54:21
         compiled from contact.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'capitalize', 'contact.html', 10, false),array('function', 'edittext1', 'contact.html', 14, false),array('function', 'edittext2', 'contact.html', 60, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/head.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<!-- BODY -->
<div style="position:absolute;margin:72px 0 0 20px;width:808px;">
		
        <!-- SCROLLAREA -->
        <div id="scrollarea" style="width:700px;height:390px;overflow:auto;margin-left:18px;">
        
		<!-- TITLE -->
        <h3><?php echo ((is_array($_tmp=$this->_tpl_vars['page']['title1'])) ? $this->_run_mod_handler('capitalize', true, $_tmp) : smarty_modifier_capitalize($_tmp)); ?>
</h3>
        
        <!-- TEXT -->
        <?php if ($this->_tpl_vars['page']['text1']): ?>
        <?php echo smarty_function_edittext1(array(), $this);?>

        <p class="margintop"><?php echo $this->_tpl_vars['page']['text1']; ?>
</p>
        <?php endif; ?>
        
        <!-- MESSAGE -->
        <?php if ($this->_tpl_vars['page']['error']): ?>
        <div id="error" class="margintop"><?php echo $this->_tpl_vars['page']['error']; ?>

        </div>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['page']['message']): ?>
        <div id="message" class="margintop"><?php echo $this->_tpl_vars['page']['message']; ?>

        </div>
        <?php endif; ?>
        
        <p>&nbsp;</p>
        
        <!-- FORM -->
     	<form name="contactform" action="/index.php?action=publisher/plugins/mail/visitor sendmail" method="post">
        
        <p style="font-weight:bold;">Your Name</p>
        <input type="text" name="name" value="<?php echo $this->_tpl_vars['post']['name']; ?>
" style="width:45%;" /> 
        
        <p class="margintop" style="font-weight:bold;">Your Email</p>
        <input type="text" name="email" value="<?php echo $this->_tpl_vars['post']['email']; ?>
" style="width:45%;" /> 
        
        <p class="margintop" style="font-weight:bold;">Subject</p>
        <input type="text" name="subject" value="<?php echo $this->_tpl_vars['post']['subject']; ?>
" style="width:90%;" />
        
        <p class="margintop" style="font-weight:bold;">Message</p>
        <p><textarea name="content" style="width:90%;height:100px"><?php echo $this->_tpl_vars['post']['content']; ?>
</textarea></p>
        
        <p class="margintop"><b>Are you human?</b> (spam protection)</p>
        <p><select name="areyouhuman" onclick="if(this.value=='yes'){document.getElementById('sendbutton').type='submit';}else{document.getElementById('sendbutton').type='button';}">
        <option value="no" selected="selected">No</option>
        <option value="yes">Yes</option>
        <option value="no">Nah</option>
        <option value="no">Nope</option>
        </select></p>
        
        <p>&nbsp;</p>
        <input type="button" id="sendbutton" value="Send" class="button" />
        </form>
        
        <p>&nbsp;</p>
        
        <!-- TEXT -->
        <?php echo smarty_function_edittext2(array(), $this);?>

        <?php if ($this->_tpl_vars['page']['text2']): ?>
        <p><?php echo $this->_tpl_vars['page']['text2']; ?>
</p>
        <p>&nbsp;</p>
        <?php endif; ?>
        
        </div>
    
</div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "includes/foot.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>