<?php
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
// email
if (!strstr($_POST['email'],'@') || !strstr($_POST['email'],'.')) {
	$_SESSION["page"]["error"] = "Sorry, but this is not a valid email.";
	redirect_back();
}
$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE email = "'.$_POST['email'].'"');
if (mysql_num_rows($its) > 0) {
	$_SESSION["page"]["error"] = 'Sorry, this email is already registered.';
	redirect_back();
}
// name
if (!$_POST["username"]) {
	$_POST["username"] = $_POST['email'];
}
// password
if (!$_POST["password"]) {
	$_POST["password"] = random_string(8);
}

// email
	//to
	$mailTo = $_POST["email"];
	//from
	$mailEmail = $_POST["email"];
	//user
	$mailName = $_POST["username"];
	//site
	$mailSite = $_SERVER["SERVER_NAME"];
	//phone
	$mailPhone = $_POST["phone"];
	//subject
	$mailSubject = "Thanks for joining $mailSite";
	// headers
	$mailHeader .= "Return-Path: <$mailEmail>\n";
	$mailHeader .= "Delivered-To: $mailTo\n";
	$mailHeader .= "Received: Site Message\n";
	$mailHeader .= "From: $mailName <$mailEmail>\n";
	$mailHeader .= "To: $mailTo <$mailTo>\n";
	$mailHeader .= "Subject: $mailSubject\n";
	$mailHeader .= "Date: ".date('r')."\n";
	$mailHeader .= "Organization: Emailed by $mailSite\n";
	$mailHeader .= "X-Mailer: $mailSite PHP Mailer\n";
	$mailHeader .= "MIME-Version: 1.0\n";
	$mailHeader .= "Content-type: text/html; charset=iso-8859-1\n";
	$mailHeader .= "Content-Transfer-Encoding: 7bit\n\n";
		
	// message
	$username = $_POST['username'];
	$password = $_POST['password'];
	$firstname = ucwords($_POST['firstname']);
	$middlename = ucwords($_POST['middlename']);
	$lastname = ucwords($_POST['lastname']);
	$password = $_POST['password'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$site_owner = $Site_owner = ucfirst($_SESSION["site"]["owner"]);
	$site_contact = $Site_contact = strtolower($_SESSION["site"]["contact"]);
	$site_name = $Site_name = str_replace('www.','',$_SERVER["SERVER_NAME"]);
	$mailContent = eval("return \"$message_visitor_addeduser_email\";");
	
	// send email
	if (!mail($mailTo, $mailSubject, $mailContent, $mailHeader, "-f $mailEmail")) {
	$_SESSION["page"]["error"] = 'Sorry. There\'s been an error with your email. Are you sure you spelled it correctly? ';
	redirect_back();
	}

// update
	if ($its = db_edit('INSERT INTO '.$site["db"]["lang"].'_users (username, password, firstname, middlename, lastname, email, phone, mail) VALUES ("'.$_POST["username"].'", "'.$_POST["password"].'", "'.$_POST["firstname"].'", "'.$_POST["middlename"].'", "'.$_POST["lastname"].'", "'.$_POST["email"].'", "'.$_POST["phone"].'", "'.$_POST["mail"].'")')) {
	// redirect
	$_SESSION["page"]["message"] = eval("return \"$message_visitor_addeduser\";");
	unset($_SESSION["post"]);
	redirect_root("page=login");
	} else {
	redirect_back();
	}
	
?>