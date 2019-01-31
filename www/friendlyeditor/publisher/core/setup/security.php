<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: setup: security
// verifies user access
///////////////////////////////////////////////////////////////////////////////////////

// VERIFY ACCESS
	if (is_array($access)) {
	$allow=0;
	
	foreach($access as $role) {
		if ($_SESSION['user']['role'] == $role) {$allow++;}
		elseif ($_SESSION['user']['role'] == 'admin') {$allow++;}
		elseif ($role == 'user' && $_SESSION['user']) {$allow++;}
	}
	
	$role = $_SESSION['user']['role'];
	$message='denied_'.$role;
	if ($allow<1) {$_SESSION["page"]["message"] = eval("return \"$$message\";");redirect_root();}
	}

?>