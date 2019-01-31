<?php

///////////////////////////////////////////////////////////////////////////////////////
// Plugin: Setup: functions
// sets useful functions and filters for other plugins
///////////////////////////////////////////////////////////////////////////////////////

// DB
	// db query
	function db_query($Query) {
		// setup
		global $site,$page;
		// query
		if (!$con = mysql_connect($site["db"]["address"],$site["db"]["username"],$site["db"]["password"])){}
		if (!mysql_select_db($site["db"]["schema"], $con)){}
		if ($site["debug"]["queries"]) {print('<span style="color:blue;">Query:</span> '.$Query.'<br />');}
		if (!$its=mysql_query($Query)) {$_SESSION["page"]["error"] = mysql_error($con);}
		mysql_close();
		// return
		return $its;
	}
	// db edit
	function db_edit($Query) {
		// setup
		global $site;
		// query
		if (!$con = mysql_connect($site["db"]["address"],$site["db"]["username"],$site["db"]["password"])){}
		if (!mysql_select_db($site["db"]["schema"], $con)){}
		if ($site["debug"]["queries"]) {print('<span style="color:blue;">Query:</span> '.$Query.'<br />');}
		if (!$its=mysql_query($Query)) {$_SESSION["page"]["error"] = mysql_error($con);}
		mysql_close();
		// return
		if ($its) {return $its;}
		elseif (mysql_error()!="") {
			$_SESSION["page"]["error"] = mysql_error();
			redirect_back();
		}
	}
	// db restore - thanks to Daniel15 - http://d15.biz
	function db_restore($File) {
		// setup
		global $site;
		$filename = $File;
		$mysql_host = $site["db"]["address"];
		$mysql_username = $site["db"]["username"];
		$mysql_password = $site["db"]["password"];
		$mysql_database = $site["db"]["schema"];
		// connect
		mysql_connect($mysql_host, $mysql_username, $mysql_password) or die('Error connecting to MySQL server: ' . mysql_error());
		mysql_select_db($mysql_database) or die('Error selecting MySQL database: ' . mysql_error());
		$templine = '';
		// read
		if ($lines = file($filename)) {
			// loop
			foreach ($lines as $line) {
				// skip
				if (substr($line, 0, 2) == '--' || $line == '')
					continue;
				// add line
				$templine .= $line;
				// end
				if (substr(trim($line), -1, 1) == ';') {
					// query
					mysql_query($templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysql_error() . '<br /><br />');
					// reset
					$templine = '';
				}
			}
			mysql_close();
		}
		// fail
		else {
			return FALSE;
			mysql_close();
		}
	}

// REDIRECTS
	// redirect to
	function redirect_to($end="") {
		if ($_SESSION["page"]["error"]) {$_SESSION["post"] = $_POST;}
		else {unset($_SESSION["post"]);}
		die('
		<script type="text/javascript " language="javascript ">
		window.location="'.$end.'";
		</script>
		Redirecting to <a href="'.$end.'">'.$end.'</a>...
		');
	}
	// redirect to site
	function redirect_root($end="") {
		if ($_SESSION["page"]["error"]) {$_SESSION["post"] = $_POST;}
		else {unset($_SESSION["post"]);}
		die('
		<script type="text/javascript " language="javascript ">
		top.window.location="/index.php?'.$end.'";
		</script>
		Redirecting to <a href="/index.php?'.$end.'" target="_TOP">'.$_SERVER["SERVER_NAME"].'/index.php?'.$end.'</a>...
		');
	}
	// redirect home
	function redirect_home($end="") {
		if ($_SESSION["page"]["error"]) {$_SESSION["post"] = $_POST;}
		else {unset($_SESSION["post"]);}
		die('
		<script type="text/javascript " language="javascript ">
		top.window.location="/index.php?'.$end.'";
		</script>
		Redirecting to <a href="/index.php?'.$end.'" target="_TOP">'.$_SERVER["SERVER_NAME"].'/index.php?'.$end.'</a>...
		');
	}
	// redirect back
	function redirect_back($end="") {
		if ($_SESSION["page"]["error"]) {$_SESSION["post"] = $_POST;}
		else {unset($_SESSION["post"]);}
		die('
		<script type="text/javascript " language="javascript ">
		window.location="/index.php?'.$end.'";
		</script>
		Redirecting to <a href="/index.php?'.$end.'">'.$_SERVER["SERVER_NAME"].'/index.php?'.$end.'</a>...
		');
	}
	// redirect last
	function redirect_last($end="") {
		if ($_SESSION["page"]["error"]) {$_SESSION["post"] = $_POST;}
		else {unset($_SESSION["post"]);}
		die('
		<script type="text/javascript " language="javascript ">
		window.location="/index.php?'.$_SESSION["page"]["last"].'&'.$end.'";
		</script>
		Redirecting to <a href="/index.php?'.$_SESSION["page"]["last"].'&'.$end.'">'.$_SERVER["SERVER_NAME"].'/index.php?'.$_SESSION["page"]["last"].'&'.$end.'</a>...
		');
	}
	// redirect login
	function redirect_login($end="") {
		if ($_SESSION["page"]["error"]) {$_SESSION["post"] = $_POST;}
		else {unset($_SESSION["post"]);}
		die('
		<script type="text/javascript " language="javascript ">
		top.window.location="/login";
		</script>
		Please login to view this page. Visit <a href="/login">'.$_SERVER["SERVER_NAME"].'/login</a>.
		');
	}
	// redirect logout
	function redirect_logout($end="") {
		if ($_SESSION["page"]["error"]) {$_SESSION["post"] = $_POST;}
		else {unset($_SESSION["post"]);}
		die('
		<script type="text/javascript " language="javascript ">
		top.window.location="publisher/core/users/logout.php?'.$end.'";
		</script>
		javascript is turned off in your browser, click here to manually log out: <a href="/publisher/core/users/logout.php?'.$end.'">logout</a>.
		');
	}

// STRING
	// strstrb
	function strstrb($haystack,$needle){
		$pos = strpos($haystack, $needle);
		$return = substr($haystack,0,$pos);
		return $return;
	}
	// string between
	function string_between($string, $start, $end) {
		$string = " ".$string;
		$ini = strpos($string,$start);
		if ($ini == 0) return false;
		$ini += strlen($start);   
		$len = strpos($string,$end,$ini) - $ini;
		return substr($string,$ini,$len);
	}

// TEXT
	// text urispaces
	function text_uri_safe($text) {
		$text = str_replace(' ','%20',$text);
		return $text;
	}
	// text trim
	function text_trim_lowercase($text) {
		$text = trim(strtolower($text));
		return $text;
	}
	// text clean
	function text_clean($text) {
		$code_entities_match = array('  ',' ','--','&quot;','!','@','#','$','%','^','&','*','(',')','_','+','{','}','|',':','"','<','>','?','[',']','\\',';',"'",',','.','/','*','+','~','`','=',"\t","\n","\r");
		$code_entities_replace = array('_','','','','','','','','','','','','','','','','','','','','','','','','','',' ',' ',' ');
		$text = str_ireplace($code_entities_match, $code_entities_replace, $text);
		return trim($text);
	}
	// text clean allow spaces
	function text_clean_allow_spaces($text) {
		$code_entities_match = array('','--','&quot;','!','@','#','$','%','^','&','*','(',')','_','+','{','}','|',':','"','<','>','?','[',']','\\',';',"'",',','.','/','*','+','~','`','=',"\t","\n","\r");
		$code_entities_replace = array('','','','','','','','','','','','','','','','','','','','','','','','','',' ',' ',' ');
		$text = str_ireplace($code_entities_match, $code_entities_replace, $text);
		return trim($text);
	}
	// text clean allow common
	function text_clean_allow_common($text) {
		$code_entities_match = array('','--','&quot;','!','@','#','$','%','^','&','*','(',')','_','+','{','}','|',':','"','<','>','?','[',']','\\',';',"'",',','.','/','*','+','~','`','=',"\t","\n","\r");
		$code_entities_replace = array('','--','&quot;','!','@','#','$','%','^','&','*','(',')','_','+','{','}','|',':','"','<','>','?','[',']','\\',';',"'",',','.','/','*','+','~','`','=','','','');
		$text = str_ireplace($code_entities_match, $code_entities_replace, $text);
		return trim($text);
	}
	// text clean paragraph
	function text_clean_paragraph($text) {
		$code_entities_match = array('\t','\n','\r','&nbsp;');
		$code_entities_replace = array('','<br />','','');
		$text = str_ireplace($code_entities_match, $code_entities_replace, strip_tags($text));
		return trim($text);
	}
	// text clean html
	function text_clean_html($text) {
		// note opening tags...
		$code_entities_match = array('<!--','<a','<b','<body','<tbody','<br','<dd','<dl','<dt','<em','<head','<li','<menu','<ol','<p','<table','<td','<th','<tr','<ul','\'');
		$code_entities_replace = array('**01**<!--','**02**<a','**03**<b','**04**<body','**05**<tbody','**06**<br','**07**<dd','**08**<dl','**09**<dt','**10**<em','**12**<head','**14**<li','**16**<menu','**17**<ol','**19**<p','**20**<table','**21**<td','**22**<th','**23**<tr','**24**<ul','*');
		$text = str_ireplace($code_entities_match, $code_entities_replace, $text);
		// note closing tags
		$code_entities_match = array('-->','/a>','/b>','/body>','/tbody>','/br>','br />','br/>','/dd>','/dl>','/dt>','/em>','/head>','/li>','/menu>','/ol>','/p>','p />','p/>','/table>','/td>','/th>','/tr>','/ul>');
		$code_entities_replace = array('-->&&01&&','/a>&&02&&','/b>&&03&&','/body>&&04&&','/tbody>&&05&&','/br>&&06&&','br />&&07&&','br/>&&08&&','/dd>&&09&&','/dl>&&10&&','/dt>&&11&&','/em>&&12&&','/head>&&14&&','/li>&&15&&','/menu>&&17&&','/ol>&&18&&','/p>&&20&&','p />&&21&&','p/>&&22&&','/table>&&23&&','/td>&&24&&','/th>&&25&&','/tr>&&26&&','/ul>&&27&&');
		$text = str_ireplace($code_entities_match, $code_entities_replace, $text);
		// delete old tags
		$text = strip_tags($text, '<form><input><option><embed><img>');
		// replace with new closing tags
		$code_entities_match = array('&&01&&','&&02&&','&&03&&','&&04&&','&&05&&','&&06&&','&&07&&','&&08&&','&&09&&','&&10&&','&&11&&','&&12&&','&&14&&','&&15&&','&&17&&','&&18&&','&&20&&','&&21&&','&&22&&','&&23&&','&&24&&','&&25&&','&&26&&','&&27&&');
		$code_entities_replace = array('-->','</a>','','</body>','</tbody>','','','','</dd>','</dl>','</dt>','</em>','</head>','</li>','</menu>','</ol>','</p>','','','</table>','</td>','</th>','</tr>','</ul>');
		$text = str_ireplace($code_entities_match, $code_entities_replace, $text);
		// relace with new opening tags...
		$code_entities_match = array('**01**','**02**','**03**','**04**','**05**','**06**','**07**','**08**','**09**','**10**','**12**','**14**','**16**','**17**','**19**','**20**','**21**','**22**','**23**','**24**');
		$code_entities_replace = array('<!--','<a href="/">','','<body>','<tbody>','','<dd>','<dl>','<dt>','<em>','<head>','<li>','<menu>','<ol>','<p>','<table>','<td>','<th>','<tr>','<ul>');
		$text = str_ireplace($code_entities_match, $code_entities_replace, $text);
		$text = str_ireplace('*','\'',$text);
		// ta daa!
		return trim($text);
	}
	// random string 
	function random_string($length=8) {
		$characters = '0123456789abcdefghijklmnopqrstuvwxyz';
		$string = '';
		for ($p = 0; $p < $length; $p++) {
			$string .= $characters[mt_rand(0, strlen($characters))];
		}
		return $string;
	}

// DEBUGGING
	// showvar
	function showvar($str) {
		print('<pre>
		');print_r($str);print('
		</pre>');
	}
	// showvar (to file)
	function showvar_tofile($str) {
		@mkdir($_SERVER["DOCUMENT_ROOT"].'/test');
		@file_put_contents($_SERVER["DOCUMENT_ROOT"].'/test/test.txt',$str);
	}

?>