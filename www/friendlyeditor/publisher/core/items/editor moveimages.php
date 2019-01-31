<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

// SETUP
$key = 0;
$post_id = $id;
$post_image = "image";
$post_delete = "delete_image";
$post_donotresize = "donotresize_image";
// directory
$dir = $_SERVER["DOCUMENT_ROOT"].'/'.$_SESSION["site"]["uploads"]["images"]["dir"];
if (!is_dir($dir)) {mkdir($dir);}
if (!is_dir($dir.'/orig')) {mkdir($dir.'/orig');}
if (!is_dir($dir.'/thumbs')) {mkdir($dir.'/thumbs');}
$file_width = $_SESSION["site"]["uploads"]["images"]["width"];
$file_height = $_SESSION["site"]["uploads"]["images"]["height"];
$file_thumbwidth = $_SESSION["site"]["uploads"]["images"]["twidth"];
$file_thumbheight = $_SESSION["site"]["uploads"]["images"]["theight"];
$file_jpgquality = $_SESSION["site"]["uploads"]["images"]["quality"]*10;
$file_pngquality = $_SESSION["site"]["uploads"]["images"]["quality"];
$file_thumbjpgquality = $_SESSION["site"]["uploads"]["images"]["tquality"]*10;
$file_thumbpngquality = $_SESSION["site"]["uploads"]["images"]["tquality"];

// UPLOAD
if ($_FILES[$post_image]) {
foreach ($_FILES[$post_image][name] as $key => $value) {
	
	// SETUP
	
	// loop
	$num = $key+1;
		
	// IMAGE
	$file_size = $_FILES[$post_image]['size'][$key];
	if (($file_size < 100000000) && ($file_size > 0)) {
	
		// EXT
		$ext = pathinfo($_FILES[$post_image][name][$key]);
		$ext = strtolower($ext['extension']);
		if (($ext != 'jpg') &&
		($ext != 'jpeg') &&
		($ext != 'mjpg') &&
		($ext != 'mjpeg') &&
		($ext != 'gif') &&
		($ext != 'png') &&
		($ext != 'tif')) {
		$_SESSION['page']['error'] = 'Sorry, "'.$ext.'" is not a valid image file.';
		redirect_back();
		}
		
		// FILE
		$file = 'image'.$post_id.'-'.$num.'.'.$ext; // filename for database
		$file_name = $dir.'/'.$file; // full filename for save
		$file_origname = $dir.'/orig/'.$file; // full filename for save
		$file_thumbname = $dir.'/thumbs/'.$file; // thumbs filename for save
		
		// UPLOAD
		print('Copying '.$file_origname.'...<br />');
		$uploadedfile = $_FILES[$post_image]['tmp_name'][$key];
		switch($ext) {
			case 'gif':
			$src = imagecreatefromgif($uploadedfile);
			break;
			case 'jpg':
			$src = imagecreatefromjpeg($uploadedfile);
			break;
			case 'png':
			$src = imagecreatefrompng($uploadedfile);
			break;
		}
		
		// COPY ORIGINAL
			// size
			list($width,$height)=getimagesize($uploadedfile);
			// save
			switch($ext) {
				case 'gif':
				if (imagegif($src,$file_name)) {print('Original<br />');}
				break;
				case 'jpg':
				if (imagejpeg($src,$file_origname,70)) {print('Original<br />');}
				break;
				case 'png':
				if (imagepng($src,$file_origname,7)) {print('Original<br />');}
				break;
			}
		
		// COPY RESIZED
			// if donotresize
			if ($_POST["$donotresize$num"] != "") {
				$file_height = 2000;
				$file_width = 2000;
			}
			// resize
			if ($height>$width) {$newwidth=$file_width; $newheight=($height/$width)*$newwidth;}
			else {$newheight=$file_height; $newwidth=($width/$height)*$newheight;}
			// resample
			$tmp=imagecreatetruecolor($newwidth,$newheight);
			imagecopyresampled($tmp,$src,0,0,0,0,$newwidth,$newheight,$width,$height);
			// save
			switch($ext) {
				case 'gif':
				if (imagegif($tmp,$file_name)) {print('Resized<br />');}
				break;
				case 'jpg':
				if (imagejpeg($tmp,$file_name,$file_jpgquality)) {print('Resized<br />');}
				break;
				case 'png':
				if (imagepng($tmp,$file_name,$file_pngquality)) {print('Resized<br />');}
				break;
			}
			// cleanup
			imagedestroy($tmp);
		
		
		// COPY THUMB
			// if donotresize
			if ($_POST["$donotresize$num"] != "") {
				$file_thumbheight = 2000;
				$file_thumbwidth = 2000;
			}
			// resize
			if ($height>$width) {$newwidth=$file_thumbwidth; $newheight=($height/$width)*$newwidth;}
			else {$newheight=$file_thumbheight; $newwidth=($width/$height)*$newheight;}
			// resample
			$tmp=imagecreatetruecolor($newwidth,$newheight);
			imagecopyresampled($tmp,$src,0,0,0,0,$newwidth,$newheight,$width,$height);
			// save
			switch($ext) {
				case 'gif':
				if (imagegif($tmp,$file_thumbname)) {print('Thumb<br />');}
				break;
				case 'jpg':
				if (imagejpeg($tmp,$file_thumbname,$file_thumbjpgquality)) {print('Thumb<br />');}
				break;
				case 'png':
				if (imagepng($tmp,$file_thumbname,$file_thumbpngquality)) {print('Thumb<br />');}
				break;
			}
			// cleanup
			imagedestroy($src);
			imagedestroy($tmp);
			
		// NAME
			$new_image[] = $file;
	
	// NONE
	} elseif ($file_size == 0) {

		$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id = '.$post_id.'');
		if (mysql_num_rows($its)) {$new_image[$key] = mysql_result($its, 0, "image$num");}
	
	// ERROR
	} else {
		$_SESSION["page"]["error"] = 'Unable to upload file '.$new_image[$key].'. Please make sure each selected file is less than 10MB, and ends in ext ".jpg", ".jpeg", ".gif", or ".png"';
		redirect_back();
	}
			
	// DELETE
	if ($_POST["$post_delete$num"]!="") {
		unlink($file_origname);
		unlink($file_name);
		unlink($file_thumbname);
		$new_image[$key] = "";
	}
}
}

?>