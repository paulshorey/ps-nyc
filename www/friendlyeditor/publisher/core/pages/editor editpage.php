<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

if (!$_POST["name"]) {
	$_SESSION["page"]["error"] = "Oops! The name field is required.";
	redirect_back();
}
if ($_POST["name"] != $_SESSION["page"]["name"]) {
	$num_its=false;
	db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_pages WHERE name = "'.$_POST["name"].'"');
	if ($num_its) {
	$_SESSION["page"]["error"] = 'Sorry, but it looks like this page name is already taken. <a href="javascript:void(0)" onclick="top.window.location=\'/'.$_POST["name"].'\';">Click here to go to that page.</a>';
	redirect_back();
	}
}


// update
	//formatting
	if ($_POST["clearformatting"]!="") {
		$text1 = text_clean_html($_POST["text1"]);
		$text2 = text_clean_html($_POST["text2"]);
		$text3 = text_clean_html($_POST["text3"]);
	} else {
		$text1 = $_POST["text1"];
		$text2 = $_POST["text2"];
		$text3 = $_POST["text3"];
	}
	//vars
	$name = substr(strtolower(text_clean_allow_spaces($_POST["name"])),0,100);
	$title1 = substr(strip_tags($_POST["title1"]),0,500);
	$title2 = substr(strip_tags($_POST["title2"]),0,500);
	$title3 = substr(strip_tags($_POST["title3"]),0,500);
	if (!$title1) {$title1 = $name;}
	//sql
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_pages SET name="'.$name.'", menu="'.$_POST["menu"].'", type="'.$_POST["type"].'", text1="'.$text1.'", text2="'.$text2.'", text3="'.$text3.'", title1="'.$title1.'", orderby="'.$_POST["orderby"].'" WHERE name="'.$_POST["page"].'"');
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_items SET page="'.$name.'", type="'.$_POST["type"].'" WHERE page="'.$_POST["oldname"].'"');

// send
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your page!";
	// page
	redirect_root("page=$name");
	
?>





