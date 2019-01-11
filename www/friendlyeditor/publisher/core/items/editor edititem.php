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

// process
	$id = $_POST["id"];
	$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id = '.$_POST["id"].'');
	if ($its) {$item = mysql_fetch_assoc($its);}
	else {
		$_SESSION["page"]["error"] = 'Sorry. The item you\'re trying to edit could not be found. Please refresh your page to make sure it has not been deleted.';
		redirect_back();
	}
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
	$link = trim(strip_tags($_POST["link"]));
	$page = $_POST["page"];
	$name = substr(text_clean_allow_common($_POST["name"]),0,190);
	$category = substr(strtolower(text_clean_allow_common($_POST["category"])),0,190);
	$type = substr(strtolower(text_clean_allow_spaces($_POST["type"])),0,190);
	$page = substr(strtolower(text_clean_allow_spaces($_POST["page"])),0,190);

// update
	db_edit('UPDATE '.$_SESSION["site"]["db"]["lang"].'_items SET name="'.$name.'", page="'.$page.'", type="'.$type.'", category="'.$category.'", date="'.$date.'", year="'.$year.'", month="'.$month.'", day="'.$day.'", text1="'.$text1.'", text2="'.$text2.'", text3="'.$text3.'", link="'.$link.'", image1="'.$new_image[0].'", image2="'.$new_image[1].'", image3="'.$new_image[2].'", image4="'.$new_image[3].'", image5="'.$new_image[4].'", video1="'.$new_video[0].'", video2="'.$new_video[1].'", video3="'.$new_video[2].'", video4="'.$new_video[3].'", video5="'.$new_video[4].'", caption1="'.$caption1.'", caption2="'.$caption2.'", caption3="'.$caption3.'", caption4="'.$caption4.'", caption5="'.$caption5.'", price1="'.$_POST["price1"].'", price2="'.$_POST["price2"].'", price3="'.$_POST["price3"].'", price4="'.$_POST["price4"].'", price5="'.$_POST["price5"].'", qty1="'.$_POST["qty1"].'", qty2="'.$_POST["qty2"].'", qty3="'.$_POST["qty3"].'", qty4="'.$_POST["qty4"].'", qty5="'.$_POST["qty5"].'", shp1="'.$_POST["shp1"].'", shp2="'.$_POST["shp2"].'", shp3="'.$_POST["shp3"].'", shp4="'.$_POST["shp4"].'", shp5="'.$_POST["shp5"].'" WHERE id='.$id.'');

// send
	// message
	$_SESSION["page"]["message"] = 'You\'ve successfully edited "'.$_POST["name"].'"!';
	// page
	redirect_home("page=$page&category=$category&item=$id");
	
?>





