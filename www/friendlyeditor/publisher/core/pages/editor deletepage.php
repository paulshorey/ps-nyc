<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// update
	db_edit('DELETE FROM '.$_SESSION["site"]["db"]["lang"].'_pages WHERE id='.$_POST["form_id"].'');
	db_edit('DELETE FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE page="'.$_POST["form_name"].'"');

// send
	// message
	$_SESSION["page"]["message"] = 'You\'ve successfully deleted page "'.$_POST["form_name"].'"';
	// page
	redirect_home();
	
?>





