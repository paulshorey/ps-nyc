<?php 

// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');


// SETUP
$key = 0;
$post_id = $id;
$post_video = "video";
$post_delete = "delete_video";
// directory
$dir = $_SERVER["DOCUMENT_ROOT"].'/'.$site["uploads"]["videos"]["dir"];
if (!is_dir($dir)) {mkdir($dir);}

// UPLOAD
foreach ($_FILES[$post_video][name] as $key => $value) {
	
	// SETUP
	$num = $key+1;
	
	// NEW
	$file_size = $_FILES[$post_video]['size'][$key];
	if ($file_size < 100000000 && $file_size > 0) {
	
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
		
		// filename
		$file = 'video'.$post_id.'-'.$num.'.'.$ext; // filename for database
		$file_name = $dir.'/'.$file; // full filename for save
		
		// upload
		print('Copying: '.$file_name.'...<br />');
		move_uploaded_file($_FILES[$post_video]['tmp_name'][$key], $file_name);
		$new_video[] = $file; // new file
		
	// OLD
	} elseif ($file_size == 0) {
		
		// CHECK NEW
		if ($_POST["uploaded_video$num"]) {
		$newname = str_replace('video-','video'.$post_id.'-',$_POST["uploaded_video$num"]);
		rename($dir.'/'.$_POST["uploaded_video$num"],$dir.'/'.$newname);
		$new_video[$key] = $newname;
		//die('OLD FILE: '.$post_id.', '.$dir.'/'.$_POST["uploaded_video$num"].', '.$dir.'/'.$newname);
		
		// USE OLD
		} else {
		$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_items WHERE id = '.$post_id.'');
		if (mysql_num_rows($its)) {$new_video[$key] = mysql_result($its, 0, "video$num");}
		}
			
	// ERROR
	} else {
		$_SESSION["page"]["error"] = 'Unable to upload file '.$new_video[$key].'. Please make sure your selected file is less than 100MB, and ends in ext ".jpg", ".jpeg", ".gif", "mpeg/mpg", "mov", "avi", "wma/wmv", "swf", or "flv"';
		redirect_back();
	}
			
	// DELETE
	if ($_POST["$post_delete$num"]!="") {
		@unlink($file_name);
		$new_video[$key] = "";
	}
	
}

?>