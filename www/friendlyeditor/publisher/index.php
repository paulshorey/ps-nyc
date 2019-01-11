<?php
// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

	// load core
	$site['core'] = array('templates','site','pages','users','items','editor');
	foreach ($site['core'] as $core) {
	require($_SERVER['DOCUMENT_ROOT']."/publisher/core/$core/$core.php");
	}
	// load plugins
	foreach ($site['plugins'] as $plugin) {
	require($_SERVER['DOCUMENT_ROOT']."/publisher/plugins/$plugin/$plugin.php");
	}
	// merge
	$plugins = array_merge($site['core'],$site['plugins']);
		
// MODIFY
	// plugins
	foreach ($plugins as $plugin) {
	$plugin = 'block_modify_'.$plugin;
	$plugin();
	}

// ASSIGN
	// plugins
	foreach ($plugins as $plugin) {
	$plugin = 'block_assign_'.$plugin;
	$plugin();
	}

// COMPILE
	// plugins
	foreach ($plugins as $plugin) {
	$plugin = 'block_compile_'.$plugin;
	$plugin();
	}

// OUTPUT
	// plugins
	foreach ($plugins as $plugin) {
	$plugin = 'block_output_'.$plugin;
	$plugin();
	}

// DISPLAY
	print $output;
?>