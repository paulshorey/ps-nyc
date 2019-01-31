<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_pages SET style="'.$_POST["form_style"].'" WHERE id='.$_SESSION["page"]["id"].'');

// send
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your page style!";
	// page
	redirect_root();
	
?>





