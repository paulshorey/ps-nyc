<?php /* Smarty version 2.6.22, created on 2010-07-15 09:05:09
         compiled from publisher/core/users/editor+adduser.html */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/head.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<body>

<!-- TOP -->
<div id="top">
    <img src="publisher/core/editor/images/buttons/adduser.png" border="0" />
    <h3>Register New User</h3>
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
    <form action="publisher/core/users/editor adduser.php" name="form_1" method="post" enctype="multipart/form-data" autocomplete="off">
    
    <!-- account -->
    <div class="section">
    <img src="/publisher/core/editor/images/user-blank.jpg" border="0" width="100px" />
    </div>
    
    <div class="section">
    <p style="font-weight:bold;">Email:
    <input type="text" name="email" id="email" value="" /></p>
    <p style="font-weight:bold;">Username: 
    <input type="text" name="username" id="username" value="" /></p>
    <p style="font-weight:bold;">Password: 
    <input type="password" name="password" id="password" value="" /></p>
    </div>
    <div class="section">
    <p>Name:
    <input type="text" name="firstname" id="firstname" style="width:100px;" value="" />
    <input type="text" name="middlename" id="middlename" style="width:20px;" value="" />
    <input type="text" name="lastname" id="lastname" style="width:130px;" value="" /></p>
    <p>Phone number:
    <input type="text" name="phone" id="phone" value="" /></p>
    <p>Subscribe user to mailing list?
    <input type="checkbox" name="mail" id="mail" value="yes" /></p>
    </div>
    <div class="section">
    <p>Role:
    <input type="text" name="role" id="role" value="" /></p>
    <h6>*You would usually leave this blank. Set role to "editor" to give the user administrative priveleges in the site.</h6>
    </div>
    
    </form>
    
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'publisher/core/editor/includes/tinymce-nostyle.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</body>
</html>