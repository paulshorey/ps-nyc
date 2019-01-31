<?php 

// SETUP
$access = array('editor');
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

	// restore
	$tempfile = $_SERVER['DOCUMENT_ROOT'].'/publisher/core/site/temp.sql';
	$backupfile = $_SERVER['DOCUMENT_ROOT'].'/backup/data/automatic_backup.sql';
	
		// from upload
		if ($_FILES["file"]["size"] > 0) {
			// verify
			$ext = pathinfo($_FILES["file"]["name"]);
			$ext = $ext['extension'];
			if ($ext != 'sql') {
			// fail
			$_SESSION["page"]["error"] = 'Please upload a mysql backup file. You can create one with this program, or "phpMyAdmin" in your hosting control panel.';
			redirect_back();
			}
			// success
			move_uploaded_file($_FILES["file"]["tmp_name"], $tempfile);
			db_restore($tempfile);
		
		// from file
		} else {
			db_restore($backupfile);
		}
	
	// redirect
	$_SESSION["page"]["message"] = "You've successfully restored your site to the previously-saved state! All text and data has been restored. To which files and videos have been restored, you should clear your browser cache. If some are missing, you will have to re-upload them.";
	redirect_root();

?>