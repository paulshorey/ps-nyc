<?php 

// SETUP
$access = array('user');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

// validate
	if (!$_POST["text1"]) {
		$_SESSION["page"]["error"] = "Did you forget to type the message?";
		redirect_back();
	}
	if ($_POST["video"] && !$_POST["image"]) {
		$_SESSION["page"]["error"] = "Sorry, but you must upload an image to be used as the preview for the video.";
		redirect_back();
	}
	if (!$_POST["item"]) {
		$_SESSION["page"]["error"] = "Sorry, were unable to add your comment at this time. Please try again in a short while. If this happens again, please contact the site owner. Thank you.";
		redirect_back();
	}
	
// get id
	$uniqueid = time();
	db_edit('INSERT INTO '.$_SESSION["site"]["db"]["lang"].'_items (name, date) VALUES ("test", "'.$uniqueid.'")');
	$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE date = '.$uniqueid.'');
	$id = mysql_result($its, 0, "id");
	db_edit('DELETE FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id='.$id.'');

// process
	$type="comment";
	$user=$_SESSION["user"]["username"];
	if ($_SESSION["user"]["firstname"]) {$postedby=$_SESSION["user"]["firstname"].' '.$_SESSION["user"]["lastname"];} else {$postedby=$_SESSION["user"]["username"];}
	$page=$_SESSION["page"]["name"];
	$date = time();
	require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/items/user uploadimages.php');
	require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/items/user uploadvideos.php');
	if ($_GET["clearformatting"]!="") {
		$text1 = text_clean_html($_POST["text1"]);
		$text2 = text_clean_paragraph($_POST["text2"]);
		$text3 = text_clean_paragraph($_POST["text3"]);
	} else {
		$text1 = trim($_POST["text1"]);
		$text2 = trim(strip_tags($_POST["text2"]));
		$text3 = trim(strip_tags($_POST["text3"]));
	}
	$name = substr(text_clean_allow_common($_POST["name"]),0,190);

// update
	db_edit('INSERT INTO '.$_SESSION["site"]["db"]["lang"].'_items (id, name, page, category, date, year, month, day, text1, text2, text3, image1, image2, image3, image4, image5, video1, video2, video3, video4, video5, item, type, user, postedby) VALUES ('.$id.', "'.$name.'", "'.$page.'", "'.$_POST["category"].'", "'.$date.'", "'.$year.'", "'.$month.'", "'.$day.'", "'.$text1.'", "'.$text2.'", "'.$text3.'", "'.$new_image[0].'", "'.$new_image[1].'", "'.$new_image[2].'", "'.$new_image[3].'", "'.$new_image[4].'", "'.$new_video[0].'", "'.$new_video[1].'", "'.$new_video[2].'", "'.$new_video[3].'", "'.$new_video[4].'", "'.$_POST["item"].'", "'.$type.'", "'.$user.'", "'.$postedby.'")');

// send
	// message
	$_SESSION["page"]["message"] = eval("return \"$message_user_comment\";");
	// page
	redirect_root();
	
?>





