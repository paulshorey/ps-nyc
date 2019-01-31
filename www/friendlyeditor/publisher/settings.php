<?php

///////////////////////////////////////////////////////////////////////////////////////
// SHARED SETTINGS
		
	// PAGES
	$site["homepage"] = "home"; // page to display when the visitor first enters the site
	$site["template"]["default"] = "home"; // page to display when the requested page cannot be found

	// MAIL
	$site["mail"]["host"] = "localhost";
	$site["mail"]["port"] = '2525';
	$site["mail"]["username"] = "mailer@alove4pixels.com";
	$site["mail"]["password"] = "ms[-;r-m";
	
	// LINKS
	// this will save you work replacing the links in html files
	$site["link"] = 'http://www.'.$_SERVER['HTTP_HOST'];
	$site["bookmark_link"] = 'http://www.addthis.com/bookmark.php?KeepThis=true&url=http://www.'.$_SERVER['HTTP_HOST'].'/'.$_GET['page'].'?category='.$_GET['category'].'&item='.$_GET['item'].'&TB_iframe=true&height=500&width=465';
	$site["publisher_link"] = 'http://www.artspaces.net';
	$site["publisher_name"] = 'Artspaces.net';
	$site["publisher_email"] = 'ps@artspaces.net';
	$site["designer_link"] = 'http://www.paulshorey.com';
	$site["designer_name"] = 'Paul Shorey';
	$site["designer_email"] = 'ps@artspaces.net';
	$site["login_link"] = "/publisher/core/users/login.php"; // page to display when the requested page cannot be found
	$site["logout_link"] = "/publisher/core/users/logout.php"; // page to display when the requested page cannot be found
	
	// IMAGES
	// folder where image uploads are put and retrieved
	// sizes in pixels, quality is a scale 1-10
	$site["uploads"]["images"]["dir"] = "images/uploads";
	$site["uploads"]["images"]["width"] = 1000;
	$site["uploads"]["images"]["height"] = 1000;
	$site["uploads"]["images"]["quality"] = 8;
	$site["uploads"]["images"]["twidth"] = 300;
	$site["uploads"]["images"]["theight"] = 300;
	$site["uploads"]["images"]["tquality"] = 8;
	
	// VIDEOS
	// folder where videos are uploaded,
	$site["uploads"]["videos"]["dir"] = "videos";
	
	// FILES
	// folder where message attachments are uploaded,
	$site["uploads"]["files"]["dir"] = "files";
	
	// DEMO LOGIN
	// demo users mimic administrator access, but cannot make any changes
	$demo["username"] = "visitor";
	$demo["password"] = "pass";
	$demo["role"] = "demo";

	// PLUGINS
	// add additional plugins (first upload to '/publisher/plugins' folder)
	$site["plugins"] = array('mail','rss','shoppingcart', 'alias');
	
	// MESSAGES
	// messages that visitors will see for certain events
	// use $username, $firstname, $middlename, $lastname, $password, $email, and $phone to dynamically insert the recipent's info
	// use $site_name, $site_owner, $site_email to insert your own info
	// you can also use html and css, but remember to put a backslash before EVERY QUOTE inside the message: \" \'
	// site messages...
	$message_editor_login = 'Welcome $username! This is your site editor. <a class=\"Thickbox\" href=\"/index.php?display=publisher/plugins/editor/help\">Click here for a quick introduction.';
	$message_demo_login = 'Welcome! You\'re logged-in to the Friendly Editor demo. It\'s a management tool that comes built-in with every <a href=\"http://www.artspaces.net\">www.artspaces.net</a> site. <br />Your own site will feature a very similar interface. Here you can preview the functionality, but can\'t make any changes. <br />Please try it, push some buttons, and read the <a href=\"http://www.friendlyeditor.com/tutorials\">tutorials</a> to get started.';
	$message_admin_login = 'Welcome back $username!';
	$message_user_login = 'Nice to have you back $username!';
	$message_login_denied = 'Username and password dont match. Not registered? <a href=\"/join\">Join here.</a>';
	$message_logout = 'Good bye. Come again soon!';
	$denied_ = 'Sorry, you do not have enough priveleges to perform this action.';
	$denied_demo = 'Thanks for trying our user-friendly editor. This action is not allowed in demo mode. Please visit www.userfriendlycms.com to get it for your own site.';
	$denied_editor = 'This is an advanced action. Please contact your web designer to perform it or unlock it for you.';
	$message_user_addedcomment = 'Thanks for commenting!';
	$message_visitor_sentmessage = 'Thanks for the message! Your email has been sent to'; // finishes of with 'your@email.com.'
	$message_visitor_addeduser = 'Thanks a lot for joining! Details have just been emailed to you. Make sure to check your junk-mail folder.';
	$message_visitor_removeduser = 'You have been unsubscribed from the mailinglist.';
	// automated email messages... Begin each new line on the left margin.
	$message_visitor_addeduser_email = '
<p><b>Thanks a lot for joining the mailing list!</b></p>

<p>You will receive weekly or monthly updates from the site.</p>

<p>Username: $username<br />
Password: $password<br />
Login: http://www.$site_name<br />

<p>$site_owner<br />
$site_contact</p>
';
	$message_visitor_removeduser_email = '
<p><b>You have been unsubscribed from the mailinglist at $site_name.</b></p>
<p>Sorry to see you go. Please visit $site_name/account anytime to change your email preferences.</p>

<p>$site_owner</p>
<p>$site_contact</p>
';
	$message_mailinglist_bottom_email = '
<p style=\"font-weight:50%;\"><a href=\"http://www.$site_name/publisher/core/users/visitor%20removeuser.php?unsubscribe=$username\" target=\"_blank\">Click here</a> to unsubscribe.</p>
';
	$message_mailinglist_bottom_email_plaintext = '
Visit this link to unsubscribe: http://www.$site_name/publisher/core/users/visitor%20removeuser.php?unsubscribe=$username
';
	$message_editor_editeduser_email = '
<p><b>Dear $username,</b></p>
<p>&nbsp;</p>

<p>Your account has been modified by one of our site\'s moderators. Please login and make sure your account info is correct.</p>
<p>&nbsp;</p>

<p>Username: $username<br />
Password: $password<br />
Login: http://www.$site_name<br />
<p>&nbsp;</p>

<p>Thank you,<br />
<p>$site_owner</p>
';
	$message_editor_deleteduser_email = '
<p><b>Dear $username,</b></p>
<p>&nbsp;</p>

<p>Your account has been deleted from www.$site_name.</p>
<p>&nbsp;</p>

<p>Thanks for your interest in my site,<br />
I hope to hear from you again in the future.<br />
<p>$site_owner</p>
';
	$message_editor_addeduser_email = '
<p><b>$firstname $lastname, you\'ve been invited to join www.$site_name!</b></p>
<p>&nbsp;</p>

<p>Here is your login info. You can now participate in the site, post comments, and receive email updates. Please login below to manage your preferences or delete your account.</p>
<p>&nbsp;</p>

<p>Username: $username<br />
Password: $password<br />
Login: http://www.$site_name<br />
<p>&nbsp;</p>

<p>We hope to see you there soon.</p>
';
	
	// DEBUG
	// you may show/hide the variables passed through the url, forms, or sessions
	// type TRUE to show the values, FALSE to hide them
	$site["debug"]["errors"] = TRUE;
	$site["debug"]["queries"] = FALSE;
	$site["debug"]["get"] = FALSE;
	$site["debug"]["post"] = FALSE;
	$site["debug"]["session"] = FALSE;
	$site["debug"]["server"] = FALSE;
	$site["debug"]["php"] = FALSE;
	$site["debug"]["phpinfo"] = FALSE;

	// TIMEZONE
	// refer to http://us2.php.net/manual/en/timezones.php for an appropriate country/city name
	$site["timezone"] = date_default_timezone_set("America/New_York");
	
	// CACHING
	$site["caching"] = TRUE; // TRUE to cache output
	$site["force_compile"] = FALSE; // FALSE
	
	// TEMPLATES
	$site["template"]["left_delimeter"] = "<!--{";
	$site["template"]["right_delimeter"] = "}-->";
	
?>