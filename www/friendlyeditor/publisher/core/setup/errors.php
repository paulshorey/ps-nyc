<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: errors
// sets error-handling functions
///////////////////////////////////////////////////////////////////////////////////////

// SETUP
	// set error function
		if ($site["debug"]["errors"]) {
		error_reporting(0);
		set_error_handler("errors_showerrors");
		} else {
		error_reporting(0);
		set_error_handler("errors_hideerrors");
		}

// MODIFY
	function block_modify_errors() {
	}

// ASSIGN
	function block_assign_errors() {
	}

// COMPILE
	function block_compile_errors() {
	}

// OUTPUT
	function block_output_errors() {
	}
	
///////////////////////////////////////////////////////////////////////////////////////
	
// LIBRARY

	// function showerrors
	function errors_showerrors($errno, $errstr, $errfile, $errline) {
		$errfile = basename($errfile);
		switch ($errno) {
		case E_USER_ERROR:
			die("<div style=\"padding:80px;font-family:Arial,Helvetica;\"><h2>Sorry, there's an error on this page.</h2>If you can, please relay this message to the site administrator:<br /><b>'#$errno in file \"$errfile\" line $errline: $errstr'<b><br />&nbsp;<br />We appologize for any inconvenience<br /><a href=\"/\">Please click here to go back to the homepage</a></div>\n");
			break;
		case E_USER_WARNING:
			print("<span style='color:red;'>Warning #$errno</span> in file \"$errfile\" line $errline: $errstr<br />\n");
			break;
		case E_USER_NOTICE:
			print("<span style='color:red;'>Notice #$errno</span> in file \"$errfile\" line $errline: $errstr<br />\n");
			break;
		default:
			if ($errno != 8) {
			print("<span style='color:red;'>Error #$errno</span> in file \"$errfile\" line $errline: $errstr<br />\n");}
			break;
		}
		return true;
	}
	
	// function hideerrors
	function errors_hideerrors($errno, $errstr, $errfile, $errline) {
		$errfile = basename($errfile);
		switch ($errno) {
		case E_USER_ERROR:
			die("<div style=\"padding:80px;font-family:Arial,Helvetica;\"><h2>Sorry, there's an error on this page.</h2>If you can, please relay this message to the site administrator:<br /><b>'#$errno in file \"$errfile\" line $errline: $errstr'<b><br />&nbsp;<br />We appologize for any inconvenience<br /><a href=\"/\">Please click here to go back to the homepage</a></div>\n");
			break;
		}
		return true;
	}
	
	// debug
	// get
	if($site["debug"]["get"]){
		print '<span style="color:blue;">GET: </span>';
		print_r($_GET);
		print '<br />';
	}
	// post
	if($site["debug"]["post"]){
		$i0=0;
		foreach ($_POST as $var) {
		$temp = array_slice($_POST, $i0, 1);
		$key = key($temp);
		print '<span style="color:blue;">POSTED '.$key.':</span>';
		print_r($_POST[$key]);
		print '<br />';
		$i0++;
		}
	}
	// session
	if($site["debug"]["session"]){
		$i0=0;
		foreach ($_SESSION as $var) {
		$temp = array_slice($_SESSION, $i0, 1);
		$key = key($temp);
		print '<span style="color:blue;">SESSION '.$key.': </span>';
		print_r($_SESSION[$key]);
		print '<br />';
		$i0++;
		}
	}
	// server
	if($site["debug"]["server"]){
		print '<span style="color:blue;">SERVER: </span>';
		print_r($_SERVER);
		print '<br />';
	}
	// php
	if($site["debug"]["php"]){
		print '<span style="color:blue;">PHP: </span>';
		print 'post_max_size: '.ini_get('post_max_size').', ';
		print 'upload_max_filesize: '.ini_get('upload_max_filesize').', ';
		print 'memory_limit: '.ini_get("memory_limit").', ';
		print 'max_execution_time: '.ini_get('max_execution_time').', ';
		print 'max_input_time: '.ini_get('max_input_time').', ';
		print '</span><br />';
	}
	// phpinfo
	if($site["debug"]["phpinfo"]){
		phpinfo();
		die;
	}

	
?>
