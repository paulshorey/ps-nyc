<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

// order
	if ($_POST["form_order"]!="") {
		//sort
		$pl=0;
		parse_str($_POST["form_order"]);
		foreach($listItem as $id) {
			//change
			db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_pages SET placement="'.$pl.'" WHERE id='.$id.'');
		$pl++;
		}
	}

// orderby
	if ($_POST["form_orderby"]!="") {
		//update
		db_edit('UPDATE site SET orderby="'.$_POST["form_orderby"].'" WHERE id='.$_SESSION["site"]["id"].'');
	}

// update
	if ($err) {
	$_SESSION["page"]["message"] = 'Sorry. There\'s been an error and the server was unable to process your request. Please try again. If this keeps happening, please tell your developer what you were trying to do when the error occurred.';
	$_SESSION["page"]["error"] = $err;
	redirect_back();
	}

// send
	// message
	$_SESSION["page"]["message"] = "You've successfully updated your site!";
	// page
	redirect_root();


?>





