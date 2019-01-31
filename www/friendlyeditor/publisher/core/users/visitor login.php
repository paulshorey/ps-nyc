<?php 

// SETUP
require_once($_SERVER['DOCUMENT_ROOT'].'/publisher/core/setup/setup.php');

	// Check File
	if (($_POST["user"] == $admin["username"]) && ($_POST["pass"] == $admin["password"])) {$user = $admin;}
	if (($_POST["user"] == $demo["username"]) && ($_POST["pass"] == $demo["password"])) {$user = $demo;}
	
	// Check Db
	if (!$user) {
	$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_users WHERE username = "'.$_POST["user"].'" AND password = "'.$_POST["pass"].'" LIMIT 0, 1');
	if ($its) {$user = mysql_fetch_assoc($its);}
	}
	
	// Success
	if ($user) {
		// success
		$username = $user["username"];
		$firstname = ucwords($user["firstname"]);
		$middlename = ucwords($user["middlename"]); 
		$lastname = ucwords($user["lastname"]);
		$name = $username ? $username : $firstname;
		$email = $user["email"];
		$phone = $user["phone"];
		$_SESSION["user"] = $user;
 		if ($user["role"] == "demo") {
			$_SESSION["page"]["message"] = eval("return \"$message_demo_login\";");
			redirect_back();
		} elseif ($user["role"] == "admin") {
			$_SESSION["page"]["message"] = eval("return \"$message_admin_login\";");
			redirect_back();
		} elseif ($user["role"] == "editor") {
			$_SESSION["page"]["message"] = eval("return \"$message_editor_login\";");
			redirect_back();
		} else {
			$_SESSION["page"]["message"] = eval("return \"$message_user_login\";");
			redirect_back();
		}
	}
	// Failure
	else {
		// redirect
		$_SESSION["page"]["error"] = eval("return \"$message_login_denied\";");
		redirect_back();
	}
	
?>