<?php /* Smarty version 2.6.22, created on 2012-02-29 16:30:37
         compiled from join.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'capitalize', 'join.html', 10, false),array('function', 'edittext1', 'join.html', 24, false),array('function', 'edittext2', 'join.html', 62, false),)), $this); ?>
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
        
        <!-- MESSAGE -->
        <?php if ($this->_tpl_vars['page']['error']): ?>
        <div id="error" class="margintop"><?php echo $this->_tpl_vars['page']['error']; ?>

        </div>
        <?php endif; ?>
        <?php if ($this->_tpl_vars['page']['message']): ?>
        <div id="message" class="margintop"><?php echo $this->_tpl_vars['page']['message']; ?>

        </div>
        <?php endif; ?>
        
        <!-- TEXT -->
        <?php if ($this->_tpl_vars['page']['text1']): ?>
        <?php echo smarty_function_edittext1(array(), $this);?>

        <p class="margintop"><?php echo $this->_tpl_vars['page']['text1']; ?>
</p>
        <?php endif; ?>
        
        <!-- RESULTS -->
        <?php if (! $this->_tpl_vars['user'] || $this->_tpl_vars['user']['role'] == 'editor' || $this->_tpl_vars['user']['role'] == 'admin'): ?>
            
            <!-- FORM -->
            <form class="margintop" action="/index.php?action=publisher/plugins/users/visitor adduser" name="form_1" method="post" enctype="multipart/form-data">
            
            <p class="margintop">Your name:<br />
            <input type="text" name="firstname" id="firstname" style="width:100px;" value="<?php if ($this->_tpl_vars['post']['firstname']): ?><?php echo $this->_tpl_vars['post']['firstname']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['firstname']; ?>
<?php endif; ?>" />
            <input type="text" name="middlename" id="middlename" style="width:20px;" value="<?php if ($this->_tpl_vars['post']['middlename']): ?><?php echo $this->_tpl_vars['post']['middlename']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['middlename']; ?>
<?php endif; ?>" />
            <input type="text" name="lastname" id="lastname" style="width:120px;" value="<?php if ($this->_tpl_vars['post']['lastname']): ?><?php echo $this->_tpl_vars['post']['lastname']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['lastname']; ?>
<?php endif; ?>" /></p>
            <p class="margintop">Email: <br />
            <input type="text" name="email" id="email" style="width:200px;" value="<?php if ($this->_tpl_vars['post']['email']): ?><?php echo $this->_tpl_vars['post']['email']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['email']; ?>
<?php endif; ?>" /></p>
            <p class="margintop">Username:<br />
            <input type="text" name="username" style="width:100px;" id="username" value="<?php if ($this->_tpl_vars['post']['username']): ?><?php echo $this->_tpl_vars['post']['username']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['username']; ?>
<?php endif; ?>" /></p>
            <p class="margintop">Password <br />
            <input type="password" name="password" style="width:100px;" id="password" value="" /></p>
            <input type="hidden" name="mail" id="mail" value="yes" /></p>
            <p class="margintop">Phone: (optional)<br />
            <input type="text" name="phone" style="width:100px;" id="phone" value="<?php if ($this->_tpl_vars['post']['phone']): ?><?php echo $this->_tpl_vars['post']['phone']; ?>
<?php else: ?><?php echo $this->_tpl_vars['user']['phone']; ?>
<?php endif; ?>" /></p>
            <p>&nbsp;</p>
            
            <p><input type="submit" value="Submit" class="button" /></p>
            </form>
            
        <?php else: ?>
                
                <script type="text/javascript">
                window.location = '/home';
                </script>
                <p>&nbsp;</p>
                
        <?php endif; ?>
            
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