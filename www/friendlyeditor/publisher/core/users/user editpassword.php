<?php 

// SETUP
$access = array('user');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

// validate
	if (!$_POST["password"]) {
		$_SESSION["page"]["error"] = 'Please specify a password.';
		redirect_back();
	}
	if ($_POST["password"] != $_POST["password2"]) {
		$_SESSION["page"]["error"] = 'Sorry, but the new passwords dont match.';
		redirect_back();
	}
	$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE password = "'.$_POST["oldpassword"].'"');
	if (!$oldpassword = mysql_result($its, 0, "password")) {
		$_SESSION["page"]["error"] = 'Oops! you\'ve misspelled your old password.';
		redirect_back();
	}

// update
	db_edit('UPDATE '.$site["db"]["lang"].'_users SET password="'.$_POST["password"].'" WHERE id='.$_SESSION["user"]["id"].'');

// redirect
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your password.";
	// page
	redirect_root();
	
?>





