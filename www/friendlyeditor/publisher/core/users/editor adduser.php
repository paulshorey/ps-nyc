<?php
// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/plugins/mail/function-mail.php');

// validate
	if (!$_POST["username"]) {
		$_SESSION["page"]["error"] = "The username field is required.";
		redirect_back();
	}
	if (!$_POST["password"]) {
		$_SESSION["page"]["error"] = "The user will be able to change their password later. So go ahead, hold down shift and press some keys.";
		redirect_back();
	}
	if (!strstr($_POST["email"],'@')) {
		$_SESSION["page"]["error"] = 'Looks like you mistyped the email address.';
		redirect_back();
	}
	
// process
	$username = substr(text_clean_allow_common($_POST["username"]),0,190);
	$firstname = substr(text_clean_allow_common($_POST["firstname"]),0,190);
	$middlename = substr(text_clean_allow_common($_POST["middlename"]),0,190);
	$lastname = substr(text_clean_allow_common($_POST["lastname"]),0,190);

// update
	db_edit('INSERT INTO '.$site["db"]["lang"].'_users (username, password, firstname, middlename, lastname, email, phone, role, mail) VALUES ("'.$username.'", "'.$_POST["password"].'", "'.$firstname.'", "'.$middlename.'", "'.$lastname.'", "'.$_POST["email"].'", "'.$_POST["phone"].'", "'.$_POST["role"].'", "'.$_POST["mail"].'")');
	
// notify
	
	// message
	$firstname = $Firstname = $firstname;
	$middlename = $Middlename = $middlename;
	$lastname = $Lastname = $lastname;
	$username = $Username = $username;
	$password = $_POST['password'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$site_owner = $Site_owner = ucfirst($_SESSION["site"]["owner"]);
	$site_contact = $Site_contact = strtolower($_SESSION["site"]["contact"]);
	$site_name = $Site_name = str_replace('www.','',$_SERVER["SERVER_NAME"]);
	
	// phpmailer
	$send = array(
	'to' => array($username => $email),
	'from' => $_SESSION["site"]["contact"], 
	'fromname' => strstrb($_SESSION["site"]["contact"], '@'), 
	'subject' => "You've been invited to $site_name", 
	'body' => eval("return \"$message_editor_addeduser_email\";"), 
	'smtp_host' => $_SESSION["site"]["mail"]["host"], 
	'smtp_port' => $_SESSION["site"]["mail"]["port"], 
	'smtp_username' => $_SESSION["site"]["mail"]["username"], 
	'smtp_password' => $_SESSION["site"]["mail"]["password"], 
	'headers' => '', 
	'attachments' => array()
	);

	// send
	send_mail( $send );

// redirect
	// message
	if (!$_SESSION["page"]["error"]) {$_SESSION["page"]["message"] = "You've successfully added a new user! A welcome message has been sent.";}
	// page
	redirect_root();
	
?>