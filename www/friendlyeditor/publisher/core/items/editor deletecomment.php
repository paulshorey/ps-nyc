<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// update
	db_edit('DELETE FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id='.$_GET["id"].'');

// send
	// message
	$_SESSION["page"]["message"] = 'You\'ve deleted the comment.';
	// page
	redirect_last();
	
?>





