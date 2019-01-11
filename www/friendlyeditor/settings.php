<?php
///////////////////////////////////////////////////////////////////////////////////////
// SITE SETTINGS

	// DATABASE
	$site["db"]["address"] = "localhost";
	$site["db"]["username"] = "pshorey_ufc1";
	$site["db"]["password"] = "ms[-;r-m";
	$site["db"]["schema"] = "pshorey_ufc1";
	$site["db"]["lang"] = "friendlye";

	// CONTACT
	$site["owner"] = "Paul Shorey";
	$site["contact"] = "ps@artspaces.net"; // email visitors can send messages to
	$site["paypal"] = "ps@artspaces.net"; // email visitors can send messages to
	
	// DESIGN
	$site["design"]["use_fancy_titles"] = true;
	$site["design"]["preload_images"] = "'/images/layout/logo-hover.png','/images/layout/top_paulshorey-hover.png','/images/layout/top_artspaces-hover.png','/images/layout/top_cmsblocks-hover.png','/images/layout/top_portfolio-hover.png','/images/layout/top_services-hover.png','/images/layout/top_prices-hover.png','/images/layout/bottom_1-hover.png','/images/layout/bottom_2-hover.png','/images/layout/bottom_3-hover.png','/images/layout/bottom_4-hover.png','/images/layout/bottom_5-hover.png','/images/layout/bottom_6-hover.png'";
	
	
///////////////////////////////////////////////////////////////////////////////////////
// ADMIN SETTINGS
	$admin["username"] = "pshorey";
	$admin["password"] = "ms[-;r-m";
	$admin["role"] = "admin";
	
	/*
	$demo['username'] = 'visitor';
	$demo['password'] = 'pass';
	$demo['role'] = 'demo';
	
	if (!$_SESSION["user"]) {
	$_SESSION["user"]=$demo;
	if ($_SERVER["SCRIPT_NAME"]=="/index.php") {
		$_SESSION["page"]["message"] = eval("return \"$message_demo_login\";");
		}
	}
	*/
	
	
?>