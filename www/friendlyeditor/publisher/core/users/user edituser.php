<?php 

// SETUP
$access = array('user','editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

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
	$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE username = "'.$_POST["username"].'"');
	$user = mysql_fetch_assoc($its);
	if ($user['username'] != $_SESSION['user']['username']) {
		$_SESSION["page"]["error"] = 'Sorry, but you have to be logged in as "'.$user['username'].'" to edit this profile.';
		redirect_back();
	}
	
// process
	$username = substr(text_clean_allow_common($_POST["username"]),0,190);
	$firstname = substr(text_clean_allow_common($_POST["firstname"]),0,190);
	$middlename = substr(text_clean_allow_common($_POST["middlename"]),0,190);
	$lastname = substr(text_clean_allow_common($_POST["lastname"]),0,190);
	$site_name = $_SESSION['site']['name'];
	$site_owner = $_SESSION['site']["owner"];
	$site_contact = $_SESSION['site']["contact"];
	
// update
	if (!$_POST["password"]) {
		// process
		$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE id = '.$user['id'].'');
		$password = mysql_result($its, 0, "password");
		// update
		db_edit('UPDATE '.$site["db"]["lang"].'_users SET username="'.$username.'", firstname="'.$firstname.'", middlename="'.$middlename.'", lastname="'.$lastname.'", email="'.$_POST["email"].'", phone="'.$_POST["phone"].'", mail="'.$_POST["mail"].'" WHERE id='.$user['id'].'');
	} else {
		// process
		$password = $_POST["password"];
		// update
		db_edit('UPDATE '.$site["db"]["lang"].'_users SET username="'.$username.'", password="'.$password.'", firstname="'.$firstname.'", middlename="'.$middlename.'", lastname="'.$lastname.'", email="'.$_POST["email"].'", phone="'.$_POST["phone"].'", mail="'.$_POST["mail"].'" WHERE id='.$user['id'].'');
	}
	if ($_POST["password"] || $username != mysql_result($its, 0, "username")) {
		// email
		// to
		$mailTo = $_POST["email"];
		// from
		$mailEmail = $_POST["email"];
		// user
		$mailName = $_POST["username"];
		// site
		$mailSite = $_SERVER["SERVER_NAME"];
		// phone
		$mailPhone = $_POST["phone"];
		// subject
		$mailSubject = "Your account at $mailSite";
		// headers
		$mailHeader .= "Return-Path: <$mailEmail>\n";
		$mailHeader .= "Delivered-To: $mailTo\n";
		$mailHeader .= "Received: Site Message\n";
		$mailHeader .= "From: $mailName <$mailEmail>\n";
		$mailHeader .= "To: $mailTo\n";
		$mailHeader .= "Subject: $mailSubject\n";
		$mailHeader .= "Date: ".date('r')."\n";
		$mailHeader .= "Organization: Emailed by $mailSite\n";
		$mailHeader .= "X-Mailer: $mailSite PHP Mailer\n";
		$mailHeader .= "MIME-Version: 1.0\n";
		$mailHeader .= "Content-type: text/html; charset=iso-8859-1\n";
		$mailHeader .= "Content-Transfer-Encoding: 7bit\n\n";
		
		// message
		$username = ucwords($username);
		$password = $password;
		$firstname = ucwords($firstname);
		$middlename = ucwords($middlename);
		$lastname = ucwords($lastname);
		$name = $username ? $username : $firstname;
		$email = $_POST['email'];
		$phone = $_POST['phone'];
		$mailContent = eval("return \"$message_editor_editeduser_email\";");
		
		// send email
		if (!mail($mailTo, $mailSubject, $mailContent, $mailHeader, "-f $mailEmail")) {
		$_SESSION["page"]["error"] = 'Sorry. There\'s been an error with your email. Are you sure you spelled it correctly? ';
		redirect_back();
		}
	}

// redirect
	$_SESSION["page"]["message"] = "You've successfully updated your account.";
	if ($_SESSION["user"]["id"] == $user['id']) {
		$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_users WHERE id = '.$user['id'].'');
		$_SESSION["user"] = mysql_fetch_assoc($its);
	}
	redirect_back();
	
?>