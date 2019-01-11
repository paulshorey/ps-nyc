<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// update
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_items SET category="'.$_POST["form_newcategory"].'" WHERE category="'.$_POST["form_oldcategory"].'"');

// send
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your categories!";
	// page
	redirect_root('category='.$_POST["form_newcategory"]);
	
?>





