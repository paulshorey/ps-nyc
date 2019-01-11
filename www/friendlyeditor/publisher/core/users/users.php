<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: users
// gets data for users in the site
///////////////////////////////////////////////////////////////////////////////////////

// SETUP
	// data
	$smarty->register_function('getuser','smarty_function_getuser');
	$smarty->register_function('getuserbyname','smarty_function_getuserbyname');
	$smarty->register_function('getusers','smarty_function_getusers');
	// html
	$smarty->assign("login_form",'publisher/core/users/visitor login.php');
	$smarty->assign("logout_form",'publisher/core/users/visitor logout.php');
	$smarty->assign("join_form",'publisher/core/users/visitor adduser.php');
	$smarty->assign("unjoin_form",'publisher/core/users/visitor removeuser.php');

// MODIFY
	function block_modify_users() {
	}

// ASSIGN
	function block_assign_users() {
	global $user, $smarty;
		// session
		$user = $_SESSION["user"];
		// template
		$smarty->assign('user', $user);
	}

// COMPILE
	function block_compile_users() {
	}

// OUTPUT
	function block_output_users() {
	}

///////////////////////////////////////////////////////////////////////////////////////

// LIBRARY

	// getuser
	function smarty_function_getuser($params, &$smarty) {
		// query
		$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_users WHERE id = '.$params["id"].' LIMIT 0, 1');
		if ($its) {
		$smarty->assign($params["name"], mysql_fetch_assoc($its));
		}
	}

	// getuserbyname
	function smarty_function_getuserbyname($params, &$smarty) {
		// query
		$its = db_query('SELECT * FROM '.$_SESSION["site"]["db"]["lang"].'_users WHERE username = "'.$params["username"].'" LIMIT 0, 1');
		if ($its) {
		$smarty->assign($params["name"], mysql_fetch_assoc($its));
		}
	}

	// getusers
	function smarty_function_getusers($params, &$smarty) {
	global $site;
		
		// default
		$params_default = array(
			'from' => "users",
			'search' => "",
			'limit' => 25,
			'name' => 'users'
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
		
		// fix
		if ($params["unique"]!="") {$params["orderby"]=$params["unique"].' asc'; $params[$params["unique"]]=''; $params["id"]='';}
		
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
				//next
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
					//all
					$smarty->assign($params["name"].'_all', $items_all);
					//this
					$smarty->assign($params["name"].'_this', $limit_start);
		}	
		
		//assign
			//items
			$smarty->assign($params["name"], $items);
			//total
			$smarty->assign($params["name"].'_total', $num_its);
	}
	

?>