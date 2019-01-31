<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// order
	// items
	if ($_POST["form_order"]!="") {
		//sort
		$pl=0;
		parse_str($_POST["form_order"]);
		foreach($listItem as $id) {
			//change
			db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_items SET placement="'.$pl.'" WHERE id='.$id.'');
		$pl++;
		}
	}
	// page
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_pages SET orderby="placement asc" WHERE name="'.$_POST["page"].'"');

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
	redirect_root('page='.$_POST["page"]);


?>





