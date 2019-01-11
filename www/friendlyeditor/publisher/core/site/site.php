<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: site
// settings, file, and sql variables
///////////////////////////////////////////////////////////////////////////////////////

// SETUP
	// globals
		if (!$_GET['display']) {$site['uri'] = http_build_query($_GET);} else {$site['uri'] = $_SESSION['site']['uri'];}
		if ($_SESSION['get']) {$get = $_SESSION['get'];} else {$get = $_GET;}
		if ($_SESSION['post']) {$post = $_SESSION['post'];} else {$post = $_POST;}
		$smarty->assign('get', $get);
		$smarty->assign('post', $post);
	// data
		$site['name'] = $_SERVER['SERVER_NAME'];
		$site['query'] = $_SERVER['QUERY_STRING'];
		$site['domain'] = $_SERVER['HTTP_HOST'];
		$site['server'] = $_SERVER['SERVER_NAME'];
		$site['referrer'] = $_SERVER['HTTP_REFERRER'];
		$site['visitor_ip'] = $_SERVER['REMOTE_ADDR'];
		$site['visitor_host'] = $_SERVER['REMOTE_HOST'];
	// assign
		$smarty->assign('site', $site);
		$_SESSION['site'] = $site;

// MODIFY
	function block_modify_site() {
	}

// ASSIGN
	function block_assign_site() {
	}

// COMPILE
	function block_compile_site() {
		// clean up
		unset($_SESSION['get']);
		unset($_SESSION['post']);
	}

// OUTPUT
	function block_output_site() {
	}
	
		
?>