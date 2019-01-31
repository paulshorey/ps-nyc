<?php

// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');
/// vars
$num = $_GET['v'];
$post_id = '';
$post_file = "Filedata";
// directory
$dir = $_SERVER["DOCUMENT_ROOT"].'/'.$site["uploads"]["videos"]["dir"];
if (!is_dir($dir)) {mkdir($dir);}

// UPLOAD
		
	// IMAGE
	$file_size = $_FILES[$post_file]['size'];
	if (($file_size < 200000000) && ($file_size > 0)) {
	
		// extension
		$ext = pathinfo($_FILES[$post_file]['name']);
		$ext = $ext['extension'];
		$lext = strtolower($ext);
		if (($lext != '3gp') &&
		($lext != 'm4v') &&
		($lext != 'avi') &&
		($lext != 'dv') &&
		($lext != 'flv') &&
		($lext != 'flc') &&
		($lext != 'mov') &&
		($lext != 'jpg') &&
		($lext != 'mjpg') &&
		($lext != 'mp4') &&
		($lext != 'pct') &&
		($lext != 'qtl') &&
		($lext != 'aif') &&
		($lext != 'au') &&
		($lext != 'wav') &&
		($lext != 'mp3')) {
		$_SESSION['page']['error'] = 'Sorry, "'.$ext.'" is not a valid video file.';
		redirect_back();
		}
		
		// FILE
		$file = 'video'.$post_id.'-'.$num.'.'.$ext; // filename for database
		$file_name = $dir.'/'.$file; // full filename for save
		
		// UPLOAD
		move_uploaded_file($_FILES[$post_file]['tmp_name'], $file_name);
		
		// RETURN
		print($num);
		
	} else {die;}

?>