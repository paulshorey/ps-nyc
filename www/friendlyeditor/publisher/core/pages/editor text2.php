<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// update
	// formatting
	if ($_POST["clearformatting"]!="") {
		$text2 = text_clean_html($_POST["text2"]);
	} else {
		$text2 = $_POST["text2"];
	}
	$title2 = substr(strip_tags($_POST["title2"]),0,500);
	// sql
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_pages SET text2="'.$text2.'", title2="'.$title2.'" WHERE name="'.$_POST["page"].'"');
	
// send
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your page text!";
	// page
	redirect_root();
	
?>





