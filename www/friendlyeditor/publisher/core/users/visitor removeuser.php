<?php 

// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
$_REQUEST["unsubscribe"] = strtolower($_REQUEST["unsubscribe"]);

// FIND
$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE username = "'.$_REQUEST["unsubscribe"].'"');
if (mysql_num_rows($its)>0) {
	$user = mysql_fetch_assoc($its);
} else {
	$_SESSION["page"]["error"] = 'We couldnt find "'.$_REQUEST["unsubscribe"].'".';
	redirect_root();
}

// email
	//to
	$mailTo = $user["email"];
	//from
	$mailEmail = $user["email"];
	//user
	$mailName = $user["username"];
	//site
	$mailSite = $_SERVER["SERVER_NAME"];
	//phone
	$mailPhone = $user["phone"];
	//subject
	$mailSubject = "You have been unsubscribed";
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
	$username = $user['username'];
	$password = $user['password'];
	$firstname = $user['firstname'];
	$middlename = $user['middlename'];
	$lastname = $user['lastname'];
	$password = $user['password'];
	$email = $user['email'];
	$phone = $user['phone'];
	$site_name = strtolower($_SERVER["SERVER_NAME"]);
	$site_owner = strtolower($_SESSION["site"]["owner"]);
	$site_contact = strtolower($_SESSION["site"]["contact"]);
	$mailContent = eval("return \"$message_visitor_removeduser_email\";");

// update
	if ($its = db_edit('UPDATE '.$site["db"]["lang"].'_users SET mail="" WHERE username = "'.$user["username"].'"')) {
	
	// send email
	if ($mailContent!="") {
	if (!mail($mailTo, $mailSubject, $mailContent, $mailHeader, "-f $mailEmail")) {
	$_SESSION["page"]["error"] = 'Sorry. There\'s been an error processing your request. Please contact the site owner to remove your account.';
	}}
	
	// redirect
	$_SESSION["page"]["message"] = eval("return \"$message_visitor_removeduser\";");
	unset($_SESSION["post"]);
	}
	
	redirect_home();
	
?>