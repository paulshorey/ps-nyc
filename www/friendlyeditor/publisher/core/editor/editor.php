<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: editor
// inserts the toolbar, and variables
///////////////////////////////////////////////////////////////////////////////////////
	
// SETUP
	// edit site
		$editor['menu']['site'][] = array('name'=>'Backup Site','link'=>'/index.php?display=publisher/core/site/editor backup&KeepThis=true&TB_iframe=true&modal=true');
		$editor['menu']['site'][] = array('name'=>'Manage Pages','link'=>'/index.php?display=publisher/core/site/editor pages&KeepThis=true&TB_iframe=true&modal=true');
	// edit pages
		$smarty->register_function('edittext1','smarty_function_edittext1');
		$smarty->register_function('edittext2','smarty_function_edittext2');
		$smarty->register_function('edittext3','smarty_function_edittext3');
		$editor["menu"]["page"][] = array("name"=>"Add","link"=>'/index.php?display=publisher/core/pages/editor addpage&page='.$page["name"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["page"][] = array("name"=>"Edit","link"=>'/index.php?display=publisher/core/pages/editor editpage&page='.$page["name"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["page"][] = array("name"=>"Text1","link"=>'/index.php?display=publisher/core/pages/editor text1&page='.$page["name"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["page"][] = array("name"=>"Text2","link"=>'/index.php?display=publisher/core/pages/editor text2&page='.$page["name"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["page"][] = array("name"=>"Text3","link"=>'/index.php?display=publisher/core/pages/editor text3&page='.$page["name"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["page"][] = array("name"=>"Style","link"=>'/index.php?display=publisher/core/pages/editor style&page='.$page["name"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["page"][] = array("name"=>"Delete","link"=>'/index.php?display=publisher/core/pages/editor deletepage&page='.$page["name"].'&KeepThis=true&TB_iframe=true&modal=true');
	// edit users
	$smarty->register_function('edituser','smarty_function_edituser');
	$editor["menu"]["users"][] = array("name"=>"Add User","link"=>"/index.php?display=publisher/core/users/editor adduser&KeepThis=true&TB_iframe=true&modal=true");
	$editor["menu"]["users"][] = array("name"=>"Manage Users","link"=>"/index.php?display=publisher/core/users/editor users&KeepThis=true&TB_iframe=true&modal=true");
	// edit items
		$smarty->register_function('additem','smarty_function_additem');
		$smarty->register_function('edititem','smarty_function_edititem');
		$editor["menu"]["items"][] = array("name"=>"Add","link"=>'/index.php?display=publisher/core/items/editor additem&page='.$page["name"].'&category='.$page["category"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["items"][] = array("name"=>"Manage Entries","link"=>'/index.php?display=publisher/core/items/editor manageitems&page='.$page["name"].'&category='.$page["category"].'&KeepThis=true&TB_iframe=true&modal=true');
		$editor["menu"]["items"][] = array("name"=>"Categories","link"=>'/index.php?display=publisher/core/pages/editor categories&page='.$page["name"].'&category='.$page["category"].'&KeepThis=true&TB_iframe=true&modal=true');

// MODIFY
	function block_modify_editor() {
	}

// ASSIGN
	function block_assign_editor() {
	}

// COMPILE
	function block_compile_editor() {
	global $smarty;
		// editor
		$smarty->register_function('editortoolbar','smarty_function_editortoolbar');
	}

// OUTPUT
	function block_output_editor() {
	/*global $output;
		// verify
		if ($_SESSION["user"]["role"] == "editor" || $_SESSION["user"]["role"] == "admin" || $_SESSION["user"]["role"] == "demo") {
			// toolbar
			if (!$_GET["display"]) {
				$body_pos = stripos($output,'<body');
				$body_end = stripos($output,'>',$body_pos);
				$body_tag = substr($output,$body_pos,$body_end-$body_pos+1);
				$output = str_ireplace($body_tag,$body_tag.editortoolbar(),$output);
			}
		}*/
	}

///////////////////////////////////////////////////////////////////////////////////////

// INCLUDE

// edittext1
	function smarty_function_edittext1($params, &$smarty) {
		// verify
		if ($_SESSION["user"]["role"] == "editor" || $_SESSION["user"]["role"] == "admin" || $_SESSION["user"]["role"] == "demo") {
		// display
		$output = '
			<!-- button -->
			<div id="editor">
			<table border="0" cellspacing="0" cellpadding="0"><tr>
			<td onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<div id="editor_button">
				<!-- mainlink -->
				<a class="thickbox" href="/index.php?page='.$_SESSION["page"]["name"].'&display=publisher/core/pages/editor text1&KeepThis=true&TB_iframe=true&modal=true">
				<img src="/publisher/core/editor/images/buttons/edit.png" class="trans" title="edit text1" border="0" style="margin:0;padding:0;" />
				<span>Text1</span>
				</a>
			</td>
			</tr></table>
			</div>
			<p>&nbsp;</p>
		';
		return $output;
		}
	}

// edittext2
	function smarty_function_edittext2($params, &$smarty) {
		// verify
		if ($_SESSION["user"]["role"] == "editor" || $_SESSION["user"]["role"] == "admin" || $_SESSION["user"]["role"] == "demo") {
		// display
		$output = '
			<!-- button -->
			<div id="editor" style="margin:0;padding:0;">
			<table border="0" cellspacing="0" cellpadding="0"><tr>
			<td onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<div id="editor_button">
				<!-- mainlink -->
				<a class="thickbox" href="/index.php?page='.$_SESSION["page"]["name"].'&display=publisher/core/pages/editor text2&KeepThis=true&TB_iframe=true&modal=true">
				<img src="/publisher/core/editor/images/buttons/edit.png" class="trans" title="edit text2" border="0" />
				<span>Text2</span>
				</a>
				</div>
			</td>
			</tr></table>
			</div>
			<p>&nbsp;</p>
		';
		return $output;
		}
	}

// edittext3
	function smarty_function_edittext3($params, &$smarty) {
		// verify
		if ($_SESSION["user"]["role"] == "editor" || $_SESSION["user"]["role"] == "admin" || $_SESSION["user"]["role"] == "demo") {
		// display
		$output = '
			<!-- button -->
			<div id="editor" style="margin:0;padding:0;">
			<table border="0" cellspacing="0" cellpadding="0"><tr>
			<td onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<div id="editor_button">
				<!-- mainlink -->
				<a class="thickbox" href="/index.php?page='.$_SESSION["page"]["name"].'&display=publisher/core/pages/editor text3&KeepThis=true&TB_iframe=true&modal=true">
				<img src="/publisher/core/editor/images/buttons/edit.png" class="trans" title="edit text3" border="0" />
				<span>Text3</span>
				</a>
				</div>
			</td>
			</tr></table>
			</div>
			<p>&nbsp;</p>
		';
		return $output;
		}
	}
	
// edituser
	function smarty_function_edituser($params, &$smarty) {
		// verify
		if ($_SESSION["user"]["role"] == "editor" || $_SESSION["user"]["role"] == "admin" || $_SESSION["user"]["role"] == "demo") {
		// display
		$output = '
			<!-- button -->
			<div id="editor" style="margin:0;padding:0;">
			<table border="0" cellspacing="0" cellpadding="0"><tr>
			<td onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<div id="editor_button" style="margin:0;">
				<!-- sublink -->
				<ul id="editor_dropdown" style="margin:0;">
				<li><a class="thickbox" href="/index.php?user='.$params["id"].'&display=publisher/core/users/editor edituser&KeepThis=true&TB_iframe=true&modal=true">Edit</a></li>
				<li>
					<a class="thickbox" href="/index.php?user='.$params["id"].'&display=publisher/core/users/editor adduser&KeepThis=true&TB_iframe=true&modal=true">Add</a>
				</li>
				<li>
					<a class="thickbox" href="/index.php?user='.$params["id"].'&display=publisher/core/users/editor deleteuser&KeepThis=true&TB_iframe=true&modal=true">Delete</a>
				</li>
				</ul>
				<!-- mainlink -->
				<a class="thickbox" href="/index.php?user='.$params["id"].'&display=publisher/core/users/editor edituser&KeepThis=true&TB_iframe=true&modal=true">
				<img src="/publisher/core/editor/images/buttons/edit.png" class="trans" title="edit user" border="0" style="margin:0;padding:0;" />
				</a>
				</div>
			</td>
			</tr></table>
			</div>
		';
		return $output;
		}
	}

// additem
	function smarty_function_additem($params, &$smarty) {
		// verify
		if ($_SESSION["user"]["role"] == "editor" || $_SESSION["user"]["role"] == "admin" || $_SESSION["user"]["role"] == "demo") {
		// display
		$output = '
			<!-- button -->
			<div id="editor">
			<table border="0" cellspacing="0" cellpadding="0"><tr>
			<td onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<div id="editor_button">
				<!-- mainlink -->
				<a class="thickbox" href="/index.php?page='.$params["page"].'&category='.$params["category"].'&display=publisher/core/items/editor additem&KeepThis=true&TB_iframe=true&modal=true">
				<img src="/publisher/core/editor/images/buttons/add.png" class="trans" title="new entry" border="0" style="margin:0;padding:0;" />
				<span>New Entry</span>
				</a>
			</td>
			</tr></table>
			</div>
			<p>&nbsp;</p>
		';
		return $output;
		}
	}
	
// edititem
	function smarty_function_edititem($params, &$smarty) {
		// verify
		if ($_SESSION["user"]["role"] == "editor" || $_SESSION["user"]["role"] == "admin" || $_SESSION["user"]["role"] == "demo") {
		// display
		$output = '
			<!-- button -->
			<div id="editor" style="margin:0;padding:0;">
			<table border="0" cellspacing="0" cellpadding="0"><tr>
			<td onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<div id="editor_button" style="margin:0;">
					<!-- sublink -->
					<ul id="editor_dropdown" style="margin:0;">
					<li style="height:20px;line-height:20px;padding:2px 0;">
					<a class="thickbox" href="/index.php?item='.$params["id"].'&display=publisher/core/items/editor edititem&KeepThis=true&TB_iframe=true&modal=true">Edit</a>
					</li>
					<li style="height:20px;line-height:20px;padding:2px 0;">
						<a class="thickbox" href="/index.php?item='.$params["id"].'&page='.$params["page"].'&category='.$params["category"].'&display=publisher/core/items/editor additem&KeepThis=true&TB_iframe=true&modal=true">Add</a>
					</li>
					<li style="height:20px;line-height:20px;padding:2px 0;">
						<a href="/publisher/core/items/editor deleteitem.php?id='.$params["id"].'">Delete</a>
					</li>
					</ul>
				<!-- mainlink -->
				<a class="thickbox" href="/index.php?item='.$params["id"].'&display=publisher/core/items/editor edititem&KeepThis=true&TB_iframe=true&modal=true">
				<img src="/publisher/core/editor/images/buttons/edit.png" class="trans" title="edit item" border="0" style="position:relative;margin:2px 0 0 0;" />
				</a>
				</div>
			</td>
			</tr></table>
			</div>
		';
		return $output;
		}
	}

// editortoolbar
	function smarty_function_editortoolbar($params, &$smarty) {
	global $editor, $user, $page;
	
		// verify
		if ($user["role"] == "editor" || $user["role"] == "admin" || $user["role"] == "demo") {
	
		// output
		$output = '
		<link rel="stylesheet" href="/publisher/core/editor/css/toolbar.css" type="text/css" />
		<!--[if lt IE 7]>
		<style type="text/css">
		.trans {behavior: url("/publisher/scripts/iepngfix/iepngfix.htc");}
		</style>
		<![endif]-->
		<div id="editor_toolbar">
			<div id="editor_button" class="hover" style="font-weight:normal;" onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<!-- sublink -->';
				if ($page["message"]||$page["message"]) {
				$output .= '<ul id="editor_dropdown" style="padding:0;">
				<li style="padding:0;">';
				if ($page["message"]) {	$output .= '<p style="padding:4px 9px;font-weight:normal;font-size:14px;">'.$page["message"].'</p>'; }
				if ($page["error"]) {	$output .= '<p style="padding:4px 9px;font-weight:normal;font-size:14px;">'.$page["error"].'</p>'; }
				$output .='</li>
				</ul>';}
			$output .= '
			<!-- mainlink -->
			&nbsp;&nbsp;Welcome '.ucwords($user["username"]).'! Here are some tools to help you manage your site... &nbsp;&nbsp;
			</div>
		';
		$key = "site";
		if ($editor["menu"][$key]) {
		$output .= '
			<div id="editor_button" onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<!-- sublink -->
				<ul id="editor_dropdown">';
				foreach ($editor["menu"][$key] as $edit) {
				$output .= '
				<li><a class="thickbox" href="'.$edit["link"].'" >'.$edit["name"].'</a></li>
				';
				}
				$output .= '
				<li><a class="thickbox" href="/index.php?display=publisher/core/editor/support&KeepThis=true&TB_iframe=true&modal=true">Help</a></li>
				</ul>
			<!-- mainlink -->
			<a href="javascript:return;">
			<img src="/publisher/core/editor/images/buttons/web.png" class="trans" />
			<span>'.ucwords($key).'&nbsp;</span>
			</a>
			</div>
		';
		}
		$key = "users";
		if ($editor["menu"][$key]) {
		$output .= '
			<div id="editor_button" onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<!-- sublink -->
				<ul id="editor_dropdown">';
				foreach ($editor["menu"][$key] as $edit) {
				$output .= '
				<li><a class="thickbox" href="'.$edit["link"].'" >'.$edit["name"].'</a></li>
				';
				}
				$output .= '
				</ul>
			<!-- mainlink -->
			<a href="javascript:return;">
			<img src="/publisher/core/editor/images/buttons/groupofusers.png" class="trans" />
			<span>'.ucwords($key).'&nbsp;</span>
			</a>
			</div>
		';
		}
		$key = "page";
		if ($editor["menu"][$key]) {
		$output .= '
			<div id="editor_button" onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<!-- sublink -->
				<ul id="editor_dropdown">';
				foreach ($editor["menu"][$key] as $edit) {
				$output .= '
				<li><a class="thickbox" href="'.$edit["link"].'" >'.$edit["name"].'</a></li>
				';
				}
				$output .= '
				</ul>
			<!-- mainlink -->
			<a href="javascript:return;">
			<img src="/publisher/core/editor/images/buttons/file.png" class="trans" />
			<span>'.ucwords($key).'&nbsp;</span>
			</a>
			</div>
		';
		}
		$key = "items";
		if ($editor["menu"][$key]) {
		$output .= '
			<div id="editor_button" onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
				<!-- sublink -->
				<ul id="editor_dropdown">';
				foreach ($editor["menu"][$key] as $edit) {
				$output .= '
				<li><a class="thickbox" href="'.$edit["link"].'" >'.$edit["name"].'</a></li>
				';
				}
				$output .= '
				</ul>
			<!-- mainlink -->
			<a href="javascript:return;">
			<img src="/publisher/core/editor/images/buttons/textfile.png" class="trans" />
			<span>Entries&nbsp;&nbsp;&nbsp;</span>
			</a>
			</div>
		';
		}
		$output .= '
			<div id="editor_button" onmouseover="this.className=\'hover\';" onmouseout="this.className=\'\';">
			<!-- mainlink -->
			<a href="/publisher/core/users/logout.php" >
			<img src="/publisher/core/editor/images/buttons/undo.png" class="trans" />
			<span>Logout&nbsp;</span>
			</a>
			</div>
		</div>
		';
	
	// display
	return $output;
	
	}
	}
	
?>