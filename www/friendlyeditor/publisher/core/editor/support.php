<?php
// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/plugins/mail/function-mail.php');

// validate
	if (!$_POST["name"]) {
	$_SESSION["page"]["error"] = 'Please enter your name.';
	redirect_back();
	}
	if (!strstr($_POST["email"],'@') || !strstr($_POST["email"],'.')) {
	$_SESSION["page"]["error"] = 'Sorry, thats not a valid email address.';
	redirect_back();
	}
	if (!$_POST["subject"]) {
	$_SESSION["page"]["error"] = 'Please include a subject.';
	redirect_back();
	}

// setup
	$domain = $_SERVER["SERVER_NAME"];
	$site = str_replace('www.','',$_SERVER["SERVER_NAME"]);
	$body = $_POST["name"].'<br />'.$_POST["email"].' <br />'.$_POST["subject"].' <br /> <br />'.$_POST["text"].' <br /> <br />'.$_POST["browser"];
	$send = array(
	'to' => array($_SESSION["site"]["designer_name"] => $_SESSION["site"]["designer_email"]),
	'from' => $_POST["email"], 
	'fromname' => $_POST["name"] ? $_POST["name"] : strstrb($_POST["email"], '@'), 
	'subject' => "$site support - ".$_POST["subject"],
	'body' => $body,
	'smtp_host' => $_SESSION["site"]["mail"]["host"],
	'smtp_port' => $_SESSION["site"]["mail"]["port"],
	'smtp_username' => $_SESSION["site"]["mail"]["username"],
	'smtp_password' => $_SESSION["site"]["mail"]["password"],
	'headers' => '', 
	'attachments' => array()
	);

// send mail
	send_mail( $send );

// redirect
	redirect_root();

?>