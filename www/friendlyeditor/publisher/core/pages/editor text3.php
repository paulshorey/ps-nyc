<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// update
	// formatting
	if ($_POST["clearformatting"]!="") {
		$text3 = text_clean_html($_POST["text3"]);
	} else {
		$text3 = $_POST["text3"];
	}
	$title3 = substr(strip_tags($_POST["title3"]),0,500);
	// sql
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_pages SET text3="'.$text3.'", title3="'.$title3.'" WHERE name="'.$_POST["page"].'"');

// send
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your page text!";
	// page
	redirect_root();
	
?>





