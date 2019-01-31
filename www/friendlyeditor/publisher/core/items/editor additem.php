<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

// validate
	if (!$_POST["name"]) {
		$_SESSION["page"]["error"] = "Oops! The name field is required.";
		redirect_back();
	}
	if (!$_POST["page"]) {
		$_SESSION["page"]["error"] = "Oops! The page field is required.";
		redirect_back();
	}
	if (!$_POST["date"]) {
		$date=time();
		$year=date('Y',$date);
		$month=date('m',$date);
		$day=date('d',$date);
	}
	else {
		$date=explode('/',trim($_POST["date"]));
		if (count($date) != 3) {
			$_SESSION["page"]["error"] = 'Sorry! The date has to be entered as "month/day/year" with a forward-slash separating the numbers. You could also leave the field blank to use today\'s date.';
			redirect_back();
		}
		else {
			$month=$date[0];
			$day=$date[1];
			$year=$date[2];
			$hour=date('G');
			$min=date('i');
			$sec=date('s');
			$date=strtotime("$year-$month-$day $hour:$min:$sec");
			if (!$date) {$date = time();}
		}
	}

// get id
	$uniqueid = time();
	db_edit('INSERT INTO '.$_SESSION["site"]["db"]["lang"].'_items (name, date, page) VALUES ("test", "'.$uniqueid.'", "'.$_SESSION["page"]["name"].'")');
	$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE date = '.$uniqueid.'');
	$id = mysql_result($its, 0, "id");
	db_edit('DELETE FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id='.$id.'');

// process
	require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/items/editor uploadimages.php');
	require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/items/editor uploadvideos.php');
	if ($_POST["clearformatting"]!="") {
		$text1 = text_clean_html($_POST["text1"]);
		$text2 = text_clean_paragraph($_POST["text2"]);
		$text3 = text_clean_paragraph($_POST["text3"]);
	} else {
		$text1 = trim($_POST["text1"]);
		$text2 = trim($_POST["text2"]);
		$text3 = trim($_POST["text3"]);
	}
	$caption1 = trim(text_clean_paragraph($_POST["caption1"])); if ($new_image[0]=='') {$new_image = Array(); $new_image[0] = $item["image1"];}
	$caption2 = trim(text_clean_paragraph($_POST["caption2"]));	if (($caption2!='') && ($new_image[1]=='') && ($item["image2"]=='')) {$new_image[1] = $new_image[0];}
	$caption3 = trim(text_clean_paragraph($_POST["caption3"])); if (($caption3!='') && ($new_image[2]=='') && ($item["image3"]=='')) {$new_image[2] = $new_image[1];}
	$caption4 = trim(text_clean_paragraph($_POST["caption4"])); if (($caption4!='') && ($new_image[3]=='') && ($item["image4"]=='')) {$new_image[3] = $new_image[2];}
	$caption5 = trim(text_clean_paragraph($_POST["caption5"])); if (($caption5!='') && ($new_image[4]=='') && ($item["image5"]=='')) {$new_image[4] = $new_image[3];}
	$title = trim(strip_tags($_POST["title"]));
	$link = trim(strip_tags($_POST["link"]));
	$name = substr(text_clean_allow_common($_POST["name"]),0,190);
	$category = substr(strtolower(text_clean_allow_common($_POST["category"])),0,190);
	$type = substr(strtolower(text_clean_allow_spaces($_POST["type"])),0,190);
	$page = substr(strtolower(text_clean_allow_spaces($_POST["page"])),0,190);

// update
	if ($its = db_edit('INSERT INTO '.$_SESSION["site"]["db"]["lang"].'_items (id, name, page, type, category, date, year, month, day, text1, text2, text3, link, image1, image2, image3, image4, image5, video1, video2, video3, video4, video5, caption1, caption2, caption3, caption4, caption5, price1, price2, price3, price4, price5, qty1, qty2, qty3, qty4, qty5, shp1, shp2, shp3, shp4, shp5) VALUES ('.$id.', "'.$name.'", "'.$page.'", "'.$type.'", "'.$category.'", "'.$date.'", "'.$year.'", "'.$month.'", "'.$day.'", "'.$text1.'", "'.$text2.'", "'.$text3.'", "'.$link.'", "'.$new_image[0].'", "'.$new_image[1].'", "'.$new_image[2].'", "'.$new_image[3].'", "'.$new_image[4].'", "'.$new_video[0].'", "'.$new_video[1].'", "'.$new_video[2].'", "'.$new_video[3].'", "'.$new_video[4].'", "'.$caption1.'", "'.$caption2.'", "'.$caption3.'", "'.$caption4.'", "'.$caption5.'", "'.$_POST["price1"].'", "'.$_POST["price2"].'", "'.$_POST["price3"].'", "'.$_POST["price4"].'", "'.$_POST["price5"].'", "'.$_POST["qty1"].'", "'.$_POST["qty2"].'", "'.$_POST["qty3"].'", "'.$_POST["qty4"].'", "'.$_POST["qty5"].'", "'.$_POST["shp1"].'", "'.$_POST["shp2"].'", "'.$_POST["shp3"].'", "'.$_POST["shp4"].'", "'.$_POST["shp5"].'")')) {
	$_SESSION["page"]["message"] = "You've just added an item!";
	}
	
// redirect
	// page
	redirect_home("page=$page&category=$category&item=$id");
	
?>





