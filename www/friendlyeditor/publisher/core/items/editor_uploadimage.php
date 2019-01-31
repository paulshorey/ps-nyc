<?php

// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
/// vars
$num = $_GET['v'];
$post_id = '';
$post_file = "Filedata";
// directory
$dir = $_SERVER["DOCUMENT_ROOT"].'/'.$site["uploads"]["images"]["dir"];
if (!is_dir($dir)) {mkdir($dir);}
if (!is_dir($dir.'/orig')) {mkdir($dir.'/orig');}
if (!is_dir($dir.'/thumbs')) {mkdir($dir.'/thumbs');}
$file_width = $site["uploads"]["images"]["width"];
$file_height = $site["uploads"]["images"]["height"];
$file_thumbwidth = $site["uploads"]["images"]["twidth"];
$file_thumbheight = $site["uploads"]["images"]["theight"];
$file_jpgquality = $site["uploads"]["images"]["quality"]*10;
$file_pngquality = $site["uploads"]["images"]["quality"];
$file_thumbjpgquality = $site["uploads"]["images"]["tquality"]*10;
$file_thumbpngquality = $site["uploads"]["images"]["tquality"];

// UPLOAD
		
	// IMAGE
	$file_size = $_FILES[$post_file]['size'];
	if (($file_size < 100000000) && ($file_size > 0)) {
	
		// EXT
		$ext = pathinfo($_FILES[$post_file]['name']);
		$ext = $ext['extension'];
		$lext = strtolower($ext);
		if (($lext != 'jpg') &&
		($lext != 'jpeg') &&
		($lext != 'mjpg') &&
		($lext != 'mjpeg') &&
		($lext != 'gif') &&
		($lext != 'png') &&
		($lext != 'tif')) {
		$_SESSION['page']['error'] = 'Sorry, "'.$ext.'" is not a valid image file.';
		redirect_back();
		}
		
		// FILE
		$file = 'image'.$post_id.'-'.$num.'.'.$ext; // filename for database
		$file_name = $dir.'/'.$file; // full filename for save
		$file_origname = $dir.'/orig/'.$file; // full filename for save
		$file_thumbname = $dir.'/thumbs/'.$file; // thumbs filename for save
		
		// UPLOAD
		$uploadedfile = $_FILES[$post_file]['tmp_name'];
		switch($lext) {
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
			switch($lext) {
				case 'gif':
				if (imagegif($src,$file_name)) {}
				break;
				case 'jpg':
				if (imagejpeg($src,$file_origname,70)) {}
				break;
				case 'png':
				if (imagepng($src,$file_origname,7)) {}
				break;
			}
		
		// COPY RESIZED
			// resize
			if ($width>$height) {$newwidth=$file_width; $newheight=($height/$width)*$newwidth;}
			else {$newheight=$file_height; $newwidth=($width/$height)*$newheight;}
			// resample
			$tmp=imagecreatetruecolor($newwidth,$newheight);
			imagecopyresampled($tmp,$src,0,0,0,0,$newwidth,$newheight,$width,$height);
			// save
			switch($lext) {
				case 'gif':
				if (imagegif($tmp,$file_name)) {}
				break;
				case 'jpg':
				if (imagejpeg($tmp,$file_name,$file_jpgquality)) {}
				break;
				case 'png':
				if (imagepng($tmp,$file_name,$file_pngquality)) {}
				break;
			}
			// cleanup
			imagedestroy($tmp);
		
		
		// COPY THUMB
			// resize
			if ($width>$height) {$newwidth=$file_thumbwidth; $newheight=($height/$width)*$newwidth;}
			else {$newheight=$file_thumbheight; $newwidth=($width/$height)*$newheight;}
			// resample
			$tmp=imagecreatetruecolor($newwidth,$newheight);
			imagecopyresampled($tmp,$src,0,0,0,0,$newwidth,$newheight,$width,$height);
			// save
			switch($lext) {
				case 'gif':
				if (imagegif($tmp,$file_thumbname)) {}
				break;
				case 'jpg':
				if (imagejpeg($tmp,$file_thumbname,$file_thumbjpgquality)) {}
				break;
				case 'png':
				if (imagepng($tmp,$file_thumbname,$file_thumbpngquality)) {}
				break;
			}
			// cleanup
			imagedestroy($src);
			imagedestroy($tmp);
	}

print($num);
?>