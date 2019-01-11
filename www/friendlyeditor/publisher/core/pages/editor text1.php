<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// update
	// formatting
	if ($_POST["clearformatting"]!="") {
		$text1 = text_clean_html($_POST["text1"]);
	} else {
		$text1 = $_POST["text1"];
	}
	$title1 = substr(strip_tags($_POST["title1"]),0,500);
	if (!$title1) {$title1 = $_SESSION["page"]["name"];}
	// sql
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_pages SET text1="'.$text1.'", title1="'.$title1.'" WHERE name="'.$_POST["page"].'"');

// send
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your page text!";
	// page
	redirect_root();
	
?>





