<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
	
	// select
	$ids = explode(",", $_POST['ids']);
	if (is_array($ids)) {
	
	// update
	foreach ($ids as $id) {
	db_edit('DELETE FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id='.$id.'');
	}

	// redirect
	$_SESSION["page"]["message"] = 'You\'ve deleted items "'.$_POST['ids'].'"';
	
	}
	redirect_home();
	
?>