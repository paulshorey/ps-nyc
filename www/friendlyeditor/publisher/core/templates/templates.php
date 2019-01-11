<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: smarty templates
// parses design templates, compiles code, caches output
///////////////////////////////////////////////////////////////////////////////////////

// SETUP
	// setup
	require_once($_SERVER["DOCUMENT_ROOT"].'/publisher/scripts/smarty/libs/Smarty.class.php');
	$smarty = new smarty();
	$smarty->template_dir = '';
	$smarty->compile_dir = $_SERVER["DOCUMENT_ROOT"].'/backup/compile/';
	$smarty->config_dir = $_SERVER["DOCUMENT_ROOT"].'/backup/config/';
	$smarty->cache_dir = $_SERVER["DOCUMENT_ROOT"].'/backup/cache/';
	$smarty->plugins_dir = array($_SERVER["DOCUMENT_ROOT"].'/publisher/scripts/smarty/plugins/',$_SERVER["DOCUMENT_ROOT"].'/publisher/scripts/smarty/libs/plugins/');
	$smarty->left_delimiter = '<!--{';
	$smarty->right_delimiter = '}-->';
	// cache
	if ($site["caching"] == TRUE) {
		// cached (if no post data)
		if (!$_POST) {$smarty->caching = true;$my_cache_id = substr(str_replace('/','',$_SERVER["QUERY_STRING"]),-80).session_id();}
		// clear cache (on every action)
		if ($_SESSION["page"]["message"] || $_GET["message"]) {$smarty->clear_all_cache();$smarty->caching = false;}
		// dont cache (if error)
		if ($_SESSION["page"]["error"] || $_GET["error"]) {$smarty->caching = false;}
		// clear everything (on call)
		if ($_GET["refresh"]) {$smarty->clear_all_cache();$smarty->clear_compiled_tpl();}
	}
	// compile
	if ($site["force_compile"] == TRUE) {
		// force compile
		$smarty->caching = false;
		$smarty->force_compile = true;
	}
	
// MODIFY
	function block_modify_templates() {
	}

// ASSIGN
	function block_assign_templates() {
	}

// COMPILE
	function block_compile_templates() {
	}

// OUTPUT
	function block_output_templates() {
	global $page, $site, $output, $smarty, $my_cache_id;
		// display
		$output = $smarty->fetch($page["display"].'.html',$my_cache_id);
	}
	
///////////////////////////////////////////////////////////////////////////////////////

// LIBRARY

	
?>