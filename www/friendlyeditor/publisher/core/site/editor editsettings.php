<?php

// This prevents an unauthorized visitor from using this form
session_start();
if ($_SESSION['user']['role']=='admin' || $_SESSION['setup_site_settings_now']) {
	
	// Test
	print('<pre>');print_r($_POST);print('</pre>');
	
	// Start
	$output = '<?php'."\n".'// Created '.date('Y-m-d');
	
	// Build
	$output .= '
	
	// SITE SETTINGS
	
		// CONTACT
		$site["owner"] = "'.$_POST['site_owner'].'";
		$site["contact"] = "'.$_POST['site_contact'].'";
		$site["paypal"] = "'.$_POST['site_paypal'].'";
		
		// DESIGN
		$site["design"]["use_fancy_titles"] = "'.$_POST['use_fancy_titles'].'";
		$site["design"]["preload_images"] = "'.$_POST['preload_images'].'";
		
		// ADMIN SETTINGS
		$admin["username"] = "'.$_POST['admin_username'].'";
		$admin["password"] = "'.$_POST['admin_password'].'";
		$admin["role"] = "admin";
	
		// DATABASE
		$site["db"]["address"] = "'.$_POST['db_host'].'";
		$site["db"]["username"] = "'.$_POST['db_username'].'";
		$site["db"]["password"] = "'.$_POST['db_password'].'";
		$site["db"]["schema"] = "'.$_POST['db_schema'].'";
		$site["db"]["lang"] = "english";
	
		// MAIL
		$site["mail"]["host"] = "'.$_POST['mail_host'].'";
		$site["mail"]["port"] = "'.$_POST['mail_port'].'";
		$site["mail"]["username"] = "'.$_POST['mail_username'].'";
		$site["mail"]["password"] = "'.$_POST['mail_password'].'";
	
	';
	
	// End
	$output .= "\n".'?>';
	
	// Write
	if (file_put_contents($_SERVER['DOCUMENT_ROOT'].'/settings.php',$output)) {
		echo '<script>window.location="/";</script>';
	} else {
		echo '<script>window.history.back();</script>';
	}

// Database info ok, hack attempt
} else {
	echo '<script>window.location="/";</script>';
}
?>