<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: pages
// gets data from pages in site
///////////////////////////////////////////////////////////////////////////////////////

// SETUP
	// page
		// name
		if (($_GET["page"] != "") && ($_GET["page"] != "/index.php")) {$page["name"] = $_GET["page"];}
		elseif (($_GET["display"]!="") && ($_SESSION["page"]["name"]!="")) {$page["name"] = $_SESSION["page"]["name"];}
		else {$page["name"] = $site["homepage"];}
		
		// data
		$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_pages WHERE name = "'.$page["name"].'" LIMIT 0, 1');
		
		// page
		if (mysql_num_rows($its)) {$page = mysql_fetch_assoc($its);}
		// interactive
		elseif ($_GET["page"]=='login'||$_GET["page"]=='contact'||$_GET["page"]=='checkout'||$_GET["page"]=='account'||$_GET["page"]=='join'||$_GET["page"]=='join_mailinglist') {
			$page['name'] = $page['type'] = $_GET["page"];
			if ($_GET['display']) {
				$_SESSION['page']['error'] = 'The page "'.$_GET['page'].'" does not exist. To add content, like custom text, titles and images, you must first create it.';
				$_GET['display'] = 'publisher/core/pages/editor addpage';
			} else {
				$_GET['display'] = 'interactive';
			}
		}
		// 404
		elseif ($_GET["page"]) {
			$page["name"] = $site["template"]["default"];
			$its = db_query('SELECT * FROM '.$site["db"]["lang"].'_pages WHERE name = "'.$page["name"].'" LIMIT 0, 1');
			if ($its) {$page = mysql_fetch_assoc($its);}
			else {$page['name']='Page Not Found';}
		}
		// setup
		elseif (!$_GET) {setup_site();}
		
		// uri
		$page["uri"] = http_build_query($_GET);
		// back
		$page["last"] = $_SESSION["page"]["uri"];
		// message
		if ($_GET["message"]) {$page["message"] = $_GET["message"];}
		elseif ($_SESSION["page"]["message"]) {$page["message"] = $_SESSION["page"]["message"];}
		// error
		if ($_GET["error"]) {$page["error"] = $_GET["error"];}
		elseif ($_SESSION["page"]["error"]) {$page["error"] = $_SESSION["page"]["error"];}
		// category
		$page["category"] = trim($_GET["category"]);
		// item
		$page["item"] = trim($_GET["item"]);
		// date
		$page["day"] = $_GET["day"];
		$page["month"] = $_GET["month"]; //if ($page["month"]) {if(!$page["day"]){$page["day"]=1;}}
		$page["year"] = $_GET["year"]; //if ($page["year"]) {if(!$page["month"]){$page["month"]=1;$page["day"]=1;}}
		// display
		if ($_GET["display"]) {$page["display"] = $_GET["display"];}
		elseif ($page["type"]) {$page["display"] = $page["type"];}
		elseif (!$_GET) {$page["display"] = $site["template"]["default"];}
		else {$page["display"] = '404';}
	// data
		$smarty->register_function('getpages','smarty_function_getpages');
	// assign
		$smarty->assign('page', $page);
		$_SESSION["page"] = $page;
	
// MODIFY
	function block_modify_pages() {
	}

// ASSIGN
	function block_assign_pages() {
	}

// COMPILE
	function block_compile_pages() {
	}

// OUTPUT
	function block_output_pages() {
		// clean up
		unset($_SESSION["page"]["error"]);
		unset($_SESSION["page"]["message"]);
	}
	
///////////////////////////////////////////////////////////////////////////////////////

// LIBRARY
		
	// setup_site
		function setup_site() {
		$_SESSION['setup_site_settings_now'] = true;
		redirect_to('/publisher/core/site/editor addsettings.php');
		die();
		}
	
	// getpages
	function smarty_function_getpages($params, &$smarty) {
	
		// setup
		global $site;
		
		// default
		$params_default = array(
			'from' => "pages",
			'search' => "name,text1,text2",
			'limit' => 25,
			'orderby' => 'placement asc',
			'name' => 'pages'
		);
		
		// combine
		$params = array_merge($params_default, $params);
		if (is_array($_POST[$params["name"]])) {$params = array_merge($params, $_POST[$params["name"]]);}
		if (is_array($_GET[$params["name"]])) {$params = array_merge($params, $_GET[$params["name"]]);}
		//elseif (!$_POST[$params["name"]] && $_SESSION[$params["name"]]) {$params = array_merge($_SESSION[$params["name"]], $params);}
		//elseif ($_POST[$params["name"]] && $_SESSION[$params["name"]]) {$params = array_merge($_SESSION[$params["name"]], $_POST[$params["name"]], $params);}
		
		// verify
		if (!$params["name"]) {$smarty->trigger_error('query "name" not specified<br />'); return;}
		if (!$params["from"]) {$smarty->trigger_error('query "from" not specified<br />'); return;}
		
		// params
		$i0=0;
		foreach ($params as $key => $param) {
		
			//from
				if ($key == "from") {
			//name
				} elseif ($key == "name") {
			//unique
				} elseif ($key == "unique") {
					//any
					$query["groupby"] = 'GROUP BY '.$param;
					//var
					$smarty->assign($params["name"].'_'.$key, $param);
					//save
					//$_SESSION[$params["name"]][$key] = $param;
			//search
				} elseif ($key == "search") {
			//find
				} elseif ($key == "find") {
					//var
					$smarty->assign($params["name"].'_'.$key, $param);
					//save
					//$_SESSION[$params["name"]][$key] = $param;
			//orderby
				} elseif ($key == "orderby") {
				  if($param != "") {
					//any
					$query["orderby"] = 'ORDER BY '.$param;
					//var
					$smarty->assign($params["name"].'_'.$key, $param);
					//save
					//$_SESSION[$params["name"]][$key] = $param;
				  }
			//limit
				} elseif ($key == "limit") {
				  if($param != "") {
					//code
					$limit_increment = $param;
					$limit_start = $params["start"]; if ($limit_start == "") {$limit_start=1;}
					$limit_end = $limit_start + $limit_increment;
					//var
					$smarty->assign($params["name"].'_'.$key, $param);
					//save
					//$_SESSION[$params["name"]][$key] = $param;
				  }
			//start
				} elseif ($key == "start") {
					//uri
					$limit_increment = $params["limit"];
					$limit_start = $param; if ($limit_start == "") {$limit_start=1;}
					$limit_end = $limit_start + $limit_increment;
					//var
					$smarty->assign($params["name"].'_'.$key, $param);
					//save
					//$_SESSION[$params["name"]][$key] = $param;
			//where
				} else {
					//<>=*
					if ($param != "") {
					if (is_array($param)) {
						//array
						$i=0;
						foreach ($param as $p) {
						$t = array_slice($param, $i, 1);
						$k = key($t);
							//key
							switch ($k) {
							//from
							case 'from':
								if ($param["from"] != "") {
								// ifno
								if ($param["to"]=="") {$param["to"] = '99999999999';}
								// first
								if (!$query["where"]) {$query["where"] = $key.' BETWEEN '.$p.' AND '.$param["to"].'';}
								else {$query["where"] = $query["where"].' AND '.$key.' BETWEEN '.$p.' AND '.$param["to"].'';}
								// close
								$param["to"] = "";
								}
								break;
							//to
							case 'to':
								if ($param["to"] != "") {
								// ifno
								if ($param["from"]=="") {$param["from"] = '0';}
								// first
								if (!$query["where"]) {$query["where"] = $key.' BETWEEN '.$param["from"].' AND '.$p.'';}
								else {$query["where"] = $query["where"].' AND '.$key.' BETWEEN '.$param["from"].' AND '.$p.'';}
								// close
								$param["from"] = "";
								}
								break;
							//between
							case 'between':
								// explode
								$par=explode('and',$p);
								// first
								if (!$query["where"]) {$query["where"] = $key.' BETWEEN '.trim($par[0]).' AND '.trim($par[1]).'';}
								else {$query["where"] = $query["where"].' AND '.$key.' BETWEEN '.trim($par[0]).' AND '.trim($par[1]).'';}
								break;
							//like
							case 'like':
								// first
								if (!$query["where"]) {
								$query["where"] = $key.' LIKE \''.$p.'\'';}
								// next
								else {
								$query["where"] = $query["where"].' AND '.$key.' LIKE \''.$p.'\'';
								}
								break;
							}
						$i++;
						}
					}
					//equal
					else {
						// first
						if (!$query["where"]) {$query["where"] = $key.' = \''.$param.'\'';}
						// next
						else {$query["where"] = $query["where"].' AND '.$key.' = \''.$param.'\'';
						}
					}
					//var
					$smarty->assign($params["name"].'_'.$key, $param);
					}
					//save
					//$_SESSION[$params["name"]][$key] = $param;
				}
			//next
			$i0++;
		}
		
		// fixes
			// search
				if ($params["find"] != "" && $params["search"] != "") {
				$query["search"] = 'MATCH ('.$params["search"].') AGAINST (\''.$params["find"].'\' IN BOOLEAN MODE)';
				}
			// orderby relevance
				if (strpos($query["orderby"],"relevance") && !$query["search"]) {
				$query["orderby"] = "";
				}
			// where
				// search
				if ($query["search"] && !$query["where"]) {
				$query["where"] = 'WHERE '.$query["search"];
				$smarty->assign($params["name"].'_where', $query["where"]);
				}
				// search/where
				else if ($query["search"] && $query["where"]) {
				$query["where"] = 'WHERE '.$query["where"].' AND '.$query["search"];
				$smarty->assign($params["name"].'_where', $query["where"]);
				}
				// where
				else if (!$query["search"] && $query["where"]) {
				$query["where"] = 'WHERE '.$query["where"];
				$smarty->assign($params["name"].'_where', $query["where"]);
				}
			// select
				// search
				if ($query["search"]) {
				$query["select"] = 'SELECT *, MATCH('.$params["search"].') AGAINST (\''.$params["find"].'\') as relevance FROM '.$site["db"]["lang"].'_'.$params["from"].' ';
				// no search
				} else {
				$query["select"] = 'SELECT * FROM '.$site["db"]["lang"].'_'.$params["from"].' ';
				}
			
		// query
			$its = db_query($query["select"].' '.$query["where"].' '.$query["groupby"].' '.$query["orderby"]);
		
		// array
			if ($its != "") {
			$i0=0; //pointer
			$iw=0; //written
			$num_its = mysql_num_rows($its);
			while ($i0<$num_its) {
				//array
				mysql_data_seek($its, $i0);
				$items[$iw] = mysql_fetch_assoc($its);
				//count
				$items[$iw]["start"] = $i0+1;
				//total
				$items[$iw]["total"] = $num_its;
				//next
				$iw++;
				$i0++;
			}
			}
		
		// slices
		if ($params["limit"] && $items) {
		
			//before
				//setup
				$i=1;
				$inc=$limit_increment;
				//assign
					//first
					$smarty->assign($params["name"].'_first', 1);
				//loop
				$iw=0;
				while ($i<$limit_start) {
				$items_before[$iw] = $items[$i-1];
				$i=$i+$inc;
				$iw++;
				}
				//assign
					//before
					$smarty->assign($params["name"].'_before', $items_before);
					//prev
					if ($limit_start-$inc<2) {$smarty->assign($params["name"].'_prev', 1);} 
					else {$smarty->assign($params["name"].'_prev', $limit_start-$inc);}
			
			//after
				//setup
				$i=$limit_start+$inc;
				//assign
					//next
					if ($i>=$num_its) {
						if ($limit_end>$num_its) {$smarty->assign($params["name"].'_next', $limit_end-$inc);
						} else {$smarty->assign($params["name"].'_next', $num_its-$inc);}
					} else {$smarty->assign($params["name"].'_next', $i);}
				//loop
				$iw=0;
				while ($i<=$num_its) {
				$items_after[$iw] = $items[$i-1];
				$i=$i+$inc;
				$iw++;
				}
				//assign
					//after
					$smarty->assign($params["name"].'_after', $items_after);
					//last
					if ($limit_end>$num_its) {$smarty->assign($params["name"].'_last', $limit_end-$inc);
					} else {$smarty->assign($params["name"].'_last', ($num_its+1)-$inc);}
			
			//now
				//setup
				if ($inc>(($num_its+1)-$limit_start)) {
					$inc=($num_its+1)-$limit_start;
				}
				//slice
				$items_all = $items;
				$items = array_slice($items, $limit_start-1, $inc);
				//assign
				$smarty->assign($params["name"].'_all', $items_all);
				$smarty->assign($params["name"].'_this', $limit_start);
		}	
		
		//assign
			//items
			$smarty->assign($params["name"], $items);
			//total
			$smarty->assign($params["name"].'_total', $num_its);
	}
	
?>