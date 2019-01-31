<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/plugins/mail/function-mail.php');


// update
	$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_users WHERE id = '.$_POST["id"].' LIMIT 0, 1');
	$user = mysql_fetch_assoc($its);
	db_edit('DELETE FROM '.$site["db"]["lang"].'_users WHERE id='.$_POST["id"].'');

// notify

	// message
	$firstname = $Firstname = $user['firstname'];
	$middlename = $Middlename = $user['middlename'];
	$lastname = $Lastname = $user['lastname'];
	$username = $Username = $user['username'];
	$password = $user['password'];
	$email = $user['email'];
	$phone = $user['phone'];
	$site_owner = $Site_owner = ucfirst($_SESSION["site"]["owner"]);
	$site_contact = $Site_contact = strtolower($_SESSION["site"]["contact"]);
	$site_name = $Site_name = str_replace('www.','',$_SERVER["SERVER_NAME"]);
	
	// phpmailer
	$send = array(
	'to' => array($username => $email),
	'from' => $_SESSION["site"]["contact"], 
	'fromname' => strstrb($_SESSION["site"]["contact"], '@'), 
	'subject' => "Your account at $site_name", 
	'body' => eval("return \"$message_editor_deleteduser_email\";"),
	'smtp_host' => $_SESSION["site"]["mail"]["host"], 
	'smtp_port' => $_SESSION["site"]["mail"]["port"], 
	'smtp_username' => $_SESSION["site"]["mail"]["username"], 
	'smtp_password' => $_SESSION["site"]["mail"]["password"], 
	'headers' => '', 
	'attachments' => array()
	);
	
	// send
	send_mail($send);
	
// redirect
	if (!$_SESSION["page"]["error"]) {
		$_SESSION["page"]["message"] = 'You\'ve successfully deleted '.ucwords($user["username"]).'. A message has been sent to the user.';
	}
	if ($_SESSION["user"]["id"] == $_POST["id"]) {
		$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE id = '.$_POST["id"].'');
		$_SESSION["user"] = mysql_fetch_assoc($its);
	}
	redirect_last();
	
?>





