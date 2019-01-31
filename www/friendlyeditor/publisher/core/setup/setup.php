<?php

// SETUP
	if ($_GET['sessionname']) {session_id($_GET['sessionname']);}
	if ($_GET['sessionid']) {session_id($_GET['sessionid']);}
	session_start();
	require_once($_SERVER["DOCUMENT_ROOT"].'/publisher/settings.php');
	require_once($_SERVER["DOCUMENT_ROOT"].'/settings.php');
	require($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/errors.php');
	require($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/functions.php');
	require($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/security.php');
	
?>