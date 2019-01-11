<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/plugins/mail/function-mail.php');


// validate
	if (!$_POST["username"]) {
		$_SESSION["page"]["error"] = "The username field is required.";
		redirect_back();
	}
	if (!strstr($_POST["email"],'@')) {
		$_SESSION["page"]["error"] = 'Please enter a valid email address.';
		redirect_back();
	}
	if ($_POST["password"] && ($_POST["password"] != $_POST["password2"])) {
		$_SESSION["page"]["error"] = 'Sorry, but the new passwords dont match.';
		redirect_back();
	}
	
// process
	$username = substr(text_clean_allow_common($_POST["username"]),0,190);
	$firstname = substr(text_clean_allow_common($_POST["firstname"]),0,190);
	$middlename = substr(text_clean_allow_common($_POST["middlename"]),0,190);
	$lastname = substr(text_clean_allow_common($_POST["lastname"]),0,190);
	
// update
	if (!$_POST["password"]) {
		// process
		$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE id = '.$_POST["id"].'');
		$password = mysql_result($its, 0, "password");
		// update
		db_edit('UPDATE '.$site["db"]["lang"].'_users SET username="'.$username.'", firstname="'.$firstname.'", middlename="'.$middlename.'", lastname="'.$lastname.'", email="'.$_POST["email"].'", phone="'.$_POST["phone"].'", role="'.$_POST["role"].'", mail="'.$_POST["mail"].'" WHERE id='.$_POST["id"].'');
	} else {
		// process
		$password = $_POST["password"];
		// update
		db_edit('UPDATE '.$site["db"]["lang"].'_users SET username="'.$username.'", password="'.$password.'", firstname="'.$firstname.'", middlename="'.$middlename.'", lastname="'.$lastname.'", email="'.$_POST["email"].'", phone="'.$_POST["phone"].'", role="'.$_POST["role"].'", mail="'.$_POST["mail"].'" WHERE id='.$_POST["id"].'');
	}
	
	// notify
	if ($_POST["password"] || $username != mysql_result($its, 0, "username")) {
		
		// message
		$firstname = $Firstname = $firstname;
		$middlename = $Middlename = $middlename;
		$lastname = $Lastname = $lastname;
		$username = $Username = $username;
		$password = $password;
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
		'subject' => "Your account at $site_name", 
		'body' => eval("return \"$message_editor_editeduser_email\";"),
		'smtp_host' => $_SESSION["site"]["mail"]["host"], 
		'smtp_port' => $_SESSION["site"]["mail"]["port"], 
		'smtp_username' => $_SESSION["site"]["mail"]["username"], 
		'smtp_password' => $_SESSION["site"]["mail"]["password"], 
		'headers' => '', 
		'attachments' => array()
		);
	
		// send
		send_mail( $send );
		
	}

// redirect
	if (!$_SESSION["page"]["error"]) {
		$_SESSION["page"]["message"] = "You've successfully updated ".ucwords($username)."'s info.";
	}
	if ($_SESSION["user"]["id"] == $_POST["id"]) {
		$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE id = '.$_POST["id"].'');
		$_SESSION["user"] = mysql_fetch_assoc($its);
	}
	redirect_last();
	
?>





