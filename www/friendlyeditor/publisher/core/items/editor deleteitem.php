<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

	
// IF delete
	if ($_REQUEST["id"]) {
	
	// backup
	$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id = '.$_REQUEST["id"].'');
	if (mysql_num_rows($its)) {$_SESSION["item"] = mysql_fetch_assoc($its);}

	// update
	db_edit('DELETE FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id='.$_REQUEST["id"].'');

	// process
	$page = $_POST["page"];
	
	// redirect
	if ($_REQUEST["name"]) {
	$_SESSION["page"]["message"] = 'You\'ve deleted "'.$_REQUEST["name"].'". <a href="/publisher/core/items/editor deleteitem.php?undo=last">Click here to undo</a>.';
	} else {
	$_SESSION["page"]["message"] = 'You\'ve deleted the item. <a href="/publisher/core/items/editor deleteitem.php?undo=last">Click here to undo</a>.';
	}
	redirect_root();
	
// IF undo
	} elseif ($_REQUEST["undo"]) {
	
	// prepare
	foreach ($_SESSION["item"] as $key => $val) {
		if ($key != 'id') {
		$key_str .= ", $key";
		$val_str .= ', "'.$val.'"';
		}
	}
	$query_str = 'INSERT INTO '.$_SESSION["site"]["db"]["lang"].'_items (id'.$key_str.') VALUES ('.$_SESSION["item"]["id"].$val_str.')';
	// copy
	if ($its = db_edit($query_str)) {
	// redirect
	if ($_SESSION["item"]["name"]) {
	$_SESSION["page"]["message"] = 'You\'ve successfully restored "'.$_SESSION["item"]["name"].'"!';
	} else {
	$_SESSION["page"]["message"] = 'You\'ve successfully restored the item!';
	}
	redirect_root();
	}
	
	}
	
	redirect_root();
?>





