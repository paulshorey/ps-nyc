<?php

	// restore
	$backupfile = 'http://www.'.$_SERVER['SERVER_NAME'].'/publisher/core/site/backup.php';

	// from upload
	db_restore($backupfile);
	
	// redirect
	$_SESSION["page"]["message"] = "You've successfully published your site! As you've noticed, its preloaded sith some html and content. You can start editing it now, putting up a 'site is coming soon' message, etc. Just login, and have a blast! Good luck with your new site!";
	redirect_root();

?>