<?php 

// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

// setup
	$site["uri"] = $_SESSION["site"]["uri"];
	$user_role = $_SESSION['user']['role'];
	
// destroy session
	$i0=0;
	foreach ($_SESSION as $var) {
	$temp = array_slice($_SESSION, $i0, 1);
	$key = key($temp);
	$_SESSION[$key] = array();
	unset($_SESSION[$key]);
	$i0++;
	}
	session_destroy();

// redirect
	session_start();
	$_SESSION["site"]["uri"] = $site["uri"];
	$_SESSION["page"]["message"] = eval("return \"$message_logout\";");
	
	if ($user_role == 'admin') {
	header('location:/publisher/core/site/editor backup.php?sqldate='.date('Y-m-d'));
	} else {
	redirect_root();
	}
?>