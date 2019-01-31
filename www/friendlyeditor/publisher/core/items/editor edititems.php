<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
	
	// select
	$ids = explode(",", $_POST['ids']);
	if (is_array($ids)) {
	
	// update
	if ($_POST["page"] && $_POST["category"]) {
		foreach ($ids as $id) {
		db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_items SET page="'.$_POST["page"].'", category="'.$_POST["category"].'" WHERE id='.$id.'');
		}
	} elseif ($_POST["page"]) {
		foreach ($ids as $id) {
		db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_items SET page="'.$_POST["page"].'" WHERE id='.$id.'');
		}
	} elseif ($_POST["category"]) {
		foreach ($ids as $id) {
		db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_items SET category="'.$_POST["category"].'" WHERE id='.$id.'');
		}
	}

	// redirect
	$_SESSION["page"]["message"] = 'You\'ve successfully updated items "'.$_POST['ids'].'"';
	
	}
	redirect_home('page='.$_POST["page"].'&category='.$_POST["category"]);
	
?>