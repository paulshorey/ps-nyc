-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2010 at 11:05 AM
-- Server version: 5.0.90
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `followth_oldfriendlyeditor`
--

-- --------------------------------------------------------

--
-- Table structure for table `english_items`
--

CREATE TABLE IF NOT EXISTS `english_items` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `category` varchar(500) default NULL,
  `type` varchar(200) NOT NULL default 'article',
  `text1` text,
  `text2` text,
  `text3` text,
  `image1` varchar(500) default NULL,
  `image2` varchar(500) default NULL,
  `image3` varchar(500) default NULL,
  `image4` varchar(500) default NULL,
  `image5` varchar(500) default NULL,
  `video1` varchar(200) default NULL,
  `video2` varchar(200) default NULL,
  `video3` varchar(200) default NULL,
  `video4` varchar(200) default NULL,
  `video5` varchar(200) default NULL,
  `caption1` text,
  `caption2` text,
  `caption3` text,
  `caption4` text,
  `caption5` text,
  `price1` int(11) default NULL,
  `price2` int(11) default NULL,
  `price3` int(11) default NULL,
  `price4` int(11) default NULL,
  `price5` int(11) default NULL,
  `qty1` int(11) default NULL,
  `qty2` int(11) default NULL,
  `qty3` int(11) default NULL,
  `qty4` int(11) default NULL,
  `qty5` int(11) default NULL,
  `shp1` int(11) default NULL,
  `shp2` int(11) default NULL,
  `shp3` int(11) default NULL,
  `shp4` int(11) default NULL,
  `shp5` int(11) default NULL,
  `item` int(11) NOT NULL,
  `link` text,
  `placement` int(11) default '1000000000',
  `date` int(11) NOT NULL,
  `year` int(11) default NULL,
  `month` int(11) default NULL,
  `day` int(11) default NULL,
  `page` varchar(200) NOT NULL,
  `user` varchar(200) default NULL,
  `postedby` varchar(200) default NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `description` (`name`,`text1`,`text2`,`text3`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=716 ;

--
-- Dumping data for table `english_items`
--

INSERT INTO `english_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES
(638, '', '', 'login', 'hi julia! this is your boyfriend <3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 637, '', 0, 1246974687, 0, 0, 0, 'demo', 'pshorey', 'pshorey'),
(639, '', '', 'login', 'hi again! hope you like your site', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 637, '', 0, 1246975456, 0, 0, 0, 'demo', 'pshorey', 'pshorey'),
(694, 'Give it a try', 'intro', 'blog', '<p>This is an easy-to-use site manager that comes standard with www.artspaces.net sites. It''s installed on your site. All you have to do is login, and the editor tools pop up, allowing you to manage your site pages, users, products and articles.</p>', '<p>Try out this editor in these recently-published websites...</p>\r\n<p><a href="http://www.PaulShorey.com" target="_blank">PaulShorey.com</a></p>\r\n<p><a href="http://www.Artspaces.net/login" target="_blank">Artspaces.net</a></p>\r\n<p><a href="http://www.FriendlyEditor.com/login" target="_blank">FriendlyEditor.com</a></p>\r\n<p><a href="http://www.FriendlyPublisher.com/login" target="_blank">FriendlyPublisher.com</a></p>\r\n<p><a href="http://www.theurbanminute.com" target="_blank">TheUrbanMinute.com</a></p>\r\n<p><a href="http://www.HandmadebyLaura.com" target="_blank">HandmadebyLaura.com</a></p>\r\n<p><a href="http://www.JuliaForrest.com" target="_blank">JuliaForrest.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Click "login" at the bottom of the page and login with...</p>\r\n<p>username: visitor</p>\r\n<p>password: pass</p>\r\n<p>&nbsp;</p>\r\n<p>I created this program for my clients at <a href="http://www.artspaces.net" target="_blank">www.artspaces.net</a>.</p>\r\n<p>Now, you can download it for your clients at <a href="http://www.friendlypublisher.com" target="_blank">www.friendlypublisher.com</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Paul Shorey -</p>\r\n<p>Please see my other work at <a href="http://www.paulshorey.com" target="_blank">www.paulshorey.com</a></p>', '', 'image694-1.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249603650, 2009, 8, 6, 'tutorials', NULL, NULL),
(695, 'What it does', 'intro', 'blog', '<p>This editor is similar to the site manager that comes with Blogger, Wordpress, Drupal, and Joomla sites, only easier and with more professional features.</p>\r\n<p>&nbsp;</p>\r\n<p>Its very easy. Use the buttons in the toolbar and on the page to manage your content. Click the "Manage Entries" button in the "Entries" section of the toolbar to drag the articles to their new order, move, delete, or edit them.</p>\r\n<p>&nbsp;</p>\r\n<p>There are many tools. To add a new product or article, click "Entries" in the toolbar, then "Add". A little window will pop up, asking for an article name, image, text, etc. Need assistance? Mouse over each title in the popup window for further explanation.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249575574, 2009, 8, 6, 'tutorials', NULL, NULL),
(696, 'How to get it', 'intro', 'blog', '<p>You can get a new custom site with this editor built-in from <a href="http://www.artspaces.net" target="_blank">www.artspaces.net</a>. Currently for only $300 + $99/yr hosting.</p>\r\n<p>&nbsp;</p>\r\n<p>Or, if you''re a web designer and would like to include this editor in your own projects, check <a href="http://www.friendlypublisher." target="_blank">www.friendlypublisher.com</a> for news and updates. Currently, it is not available for public download, but you can join the mailinglist to be the first to know of its official release.</p>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249572292, 2009, 8, 6, 'tutorials', NULL, NULL),
(697, 'Backup/restore', 'site', 'blog', '<p>On the toolbar, click "Site", then "Backup/Restore" to access the backup/restore utility.</p>', '<p>It only backs up and restores "data", meaning pages, articles, categories, settings, and user accounts. Unfortunately, if you delete some images and videos, then create new ones, the old files will have been over-written forever.</p>', '', 'image697-1.png', '', '', '', '', '', '', '', '', '', 'Click "backup" to backup your site. Click "restore" to go back to the previously-saved state.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249922001, 2009, 8, 10, 'tutorials', NULL, NULL),
(698, 'Manage pages', 'site', 'blog', '<p>In the top toolbar, click "Site", "Manage pages" to edit or arrange the pages in your site.</p>', '', '', 'image698-1.png', '', '', '', '', '', '', '', '', '', 'Sort pages by navigation menu. Click and drag to move them to their new order on the menu. Add, Edit, or Delete the pages.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249922649, 2009, 8, 10, 'tutorials', NULL, NULL),
(699, 'Page redirects', 'site', 'blog', '<p>In the top toolbar click "Site" then "Page redirects" to control what happens when a visitor tries to go to a page.</p>', '', '', 'image699-1.png', '', '', '', '', '', '', '', '', '', 'For example, when a visitor types in http://www.yourdomain.com/pricequote, redirect them to page http://www.yourdomain.com/order', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249922893, 2009, 8, 10, 'tutorials', NULL, NULL),
(700, 'Add new user', 'users', 'blog', '<p>In the top toolbar, click "Users", then "Add User" to add a new member to your site or mailinglist. Or if you preffer, your visitors can do this themselves from your site. Just ask your webdesigner to include a form on any page you like. The added user will receive an email welcoming them to the site.</p>', '<p>Add a password, or keep it blank to generate a random one. Leave the username blank to use the email address as the username. Enter their name for better tracking. Allow them to edit your site by typing "editor" in the role, or type in any message to make a note about the user. You''ll be able to send mass-mailings to every user that is added to the mailinglist.</p>', '', 'image700-1.png', '', '', '', '', '', '', '', '', '', 'Enter an email, and choose to add them to the mailinglist.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249923335, 2009, 8, 10, 'tutorials', NULL, NULL),
(701, 'Manage users', 'users', 'blog', '<p>In the top toolbar, click "Users" then "Manage Users".</p>', '', '', 'image701-1.png', '', '', '', '', '', '', '', '', '', 'Add, edit, or delete user accounts here.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249918273, 2009, 8, 10, 'tutorials', NULL, NULL),
(702, 'edit user', 'users', 'blog', '<p>In the top toolbar, click "Users", "Manage Users", then click to "Edit" the account you want.</p>', '<p>If the site member joined, or you invited them, you can update their name, email, even the password here. If you change the username or password, the user will be sent an email message with the updated login information. Check the "mailinglist" to add or remove the user from the mailinglist. When sending an email to your mailinglist members, they''ll automatically be given an option to unsubscribe.</p>', '', 'image702-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249918749, 2009, 8, 10, 'tutorials', NULL, NULL),
(703, 'Add new page', 'page', 'blog', '<p>In the top toolbar, click "Page" then "Add" to add a new page.</p>', '<p><strong>Add a new page with several options:</strong></p>\r\n<p><strong>Page name </strong>- http://www.yourdomain.com/pagename (can have letters, numbers, spaces, _, and&nbsp; - )</p>\r\n<p><strong>Page title </strong>- will be displayed in the top of the page (defaults to page name), additional titles are sometimes displayed in the middle or side of your page. Type something, and even if it''s not displayed, search engines will see it.</p>\r\n<p><strong>Page layout </strong>- your designer created several layouts for your site, usually including "homepage", "gallery", "blog", "products", and "contact". Choose a layout that fits your new page.</p>\r\n<p><strong>Menu</strong> - "1" is the main menu on the top of your site. "2" is a secondary menu on the side or bottom of your site. "Hidden" means the page will not be displayed in the menu, but you can still link to it with http://www.yourdomain.com/pagename</p>\r\n<p><strong>Sort entries </strong>- if your new page is a "blog", "gallery", or "products" listing, it will have many "entries", meaning photographs, articles, or products. How do you want these entries arranged on the page? By date, name, price? Choosing "date" allows you the greatest control over ordering the entries, because you can change the date of each article individually. If you have less than 50 articles on one page, you can order the entries by "placement". In the top toolbar, click "Entries" and "Manage Entries" to drag each product or article to its new position on the page.</p>\r\n<p><strong>Text </strong>- edit the main body of text for your page. It''s usually displayed on the top of the page, followed by blog posts or gallery items. Even if your page does not display any text (its purely a photo-gallery layout), this field still allows you to enter a page description for search engines. Enter a paragraph or two.</p>\r\n<p><strong>Text2, Text3 </strong>- Your page layout might have a second or third body of text displayed somewhere on the bottom or side. Add some content to each with these fields.</p>\r\n<p><strong>Advanced options</strong> - check "remove all html styles" to remove all formatting from your page texts. It will remove all colors, sizes, and styles in the page.</p>', '', 'image703-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249920020, 2009, 8, 10, 'tutorials', NULL, NULL),
(704, 'Add new entry', 'entries', 'blog', '<p>In the top toolbar, click "Entries", then "Add".</p>', '<p><strong>Add a new photo, article, or product.</strong></p>\r\n<p><strong>Title </strong>- name of the photo, article or product.</p>\r\n<p><strong>Category</strong> - the series, group, or gallery that this entry belongs to.</p>\r\n<p><strong>Image</strong> - click "Browse" to upload a new photo. JPG, GIF and PNG files are acceptable.</p>\r\n<p><strong>Video </strong>- click "Browse" to upload a new video. FLV files are best. MOV also works.</p>\r\n<p><strong>Price </strong>- how much (in dollars) to sell this product for.</p>\r\n<p><strong>Qty</strong> - how many items are available for sale (dont forget to login and change this after the item is sold)</p>\r\n<p><strong>Ship</strong> - flat fee shipping cost (in dollars).</p>\r\n<p><strong>Description </strong>- a very short description that will appear next to the price</p>\r\n<p><strong>Text</strong> - an article, or product description to display with the item (will not be displayed for gallery pages, use "description" instead)</p>\r\n<p><strong>Link</strong> - include a link for a links or web portfolio page, dont forget the "http://"</p>\r\n<p><strong>Page</strong> - what page to display this article on? usually its the page you are on</p>\r\n<p><strong>Date</strong> - sometimes, a date is displayed next to the blog entry, or it may be used to arrange the articles on a page</p>\r\n<p><strong>Text2, Text3</strong> - some pages might display a second or third product description or article</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Add 2nd variation</strong> - add upto 5 variations of the product or item. Sell several colors or styles of the same product, or multiple sizes or frame options of your print. Or, create a mini-slideshow for each photograph or article (if your page design supports this). Just add another price/description for each variation to give your shoppers options to choose from.</p>', '', 'image704-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249942349, 2009, 8, 10, 'tutorials', NULL, NULL),
(691, '1', 'gallery', 'home', '', '', '', 'image691-1.jpg', '', '', '', '', '', '', '', '', '', 'login', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249494880, 2009, 8, 5, 'home', NULL, NULL),
(692, '2', 'gallery', 'home', '', '', '', 'image692-1.jpg', '', '', '', '', '', '', '', '', '', 'manage', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249490694, 2009, 8, 5, 'home', NULL, NULL),
(693, '3', 'gallery', 'home', '', '', '', 'image693-1.jpg', '', '', '', '', '', '', '', '', '', 'sell', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 1249494866, 2009, 8, 5, 'home', NULL, NULL),
(705, 'demo', 'intro', 'login', '<p>Demonstration</p>', '', '', 'image705-1.png', '', '', '', '', '', '', '', '', '', 'Demonstration', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251045315, 2009, 8, 23, 'demo', NULL, NULL),
(706, 'support', 'intro', 'support', '<p>get support</p>', '', '', 'image706-1.png', '', '', '', '', '', '', '', '', '', 'get support', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251045577, 2009, 8, 23, 'support', NULL, NULL),
(707, 'send mail', 'users', 'blog', '<p>In the top toolbar, click "Users" then "Send Mail" to send out mass emails.</p>', '<p>Send an email to everybody in your mailinglist. They can unsubscribe with a linked attatched to the email. To manage the mailinglist yourself, go to the top toolbar, click "Users", then "Manage Users" and add or remove user accounts from the mailinglist.</p>', '', 'image707-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251128536, 2009, 8, 24, 'tutorials', NULL, NULL),
(708, 'Edit page', 'page', 'blog', '<p>In the top toolbar, click "Page", "Edit" to edit the current page.</p>', '<p><strong>Edit a page:</strong></p>\r\n<p><strong>Page name </strong>- http://www.yourdomain.com/pagename (can have letters, numbers, spaces, _, and&nbsp; - )</p>\r\n<p><strong>Page title </strong>- will be displayed in the top of the page (defaults to page name), additional titles are sometimes displayed in the middle or side of your page. Type something, and even if it''s not displayed, search engines will see it.</p>\r\n<p><strong>Page layout </strong>- your designer created several layouts for your site, usually including "homepage", "gallery", "blog", "products", and "contact". Choose a layout that fits your new page.</p>\r\n<p><strong>Menu</strong> - "1" is the main menu on the top of your site. "2" is a secondary menu on the side or bottom of your site. "Hidden" means the page will not be displayed in the menu, but you can still link to it with http://www.yourdomain.com/pagename</p>\r\n<p><strong>Sort entries </strong>- if your new page is a "blog", "gallery", or "products" listing, it will have many "entries", meaning photographs, articles, or products. How do you want these entries arranged on the page? By date, name, price? Choosing "date" allows you the greatest control over ordering the entries, because you can change the date of each article individually. If you have less than 50 articles on one page, you can order the entries by "placement". In the top toolbar, click "Entries" and "Manage Entries" to drag each product or article to its new position on the page.</p>\r\n<p><strong>Text </strong>- edit the main body of text for your page. It''s usually displayed on the top of the page, followed by blog posts or gallery items. Even if your page does not display any text (its purely a photo-gallery layout), this field still allows you to enter a page description for search engines. Enter a paragraph or two.</p>\r\n<p><strong>Text2, Text3 </strong>- Your page layout might have a second or third body of text displayed somewhere on the bottom or side. Add some content to each with these fields.</p>\r\n<p><strong>Advanced options</strong> - check "remove all html styles" to remove all formatting from your page texts. It will remove all colors, sizes, and styles in the page.</p>', '', 'image708-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251129913, 2009, 8, 24, 'tutorials', NULL, NULL),
(709, 'Page text', 'page', 'blog', '<p>In the top toolbar, click "Page" then "Text1", "Text2", or "Text3" to edit your page texts.</p>', '<p>Some of your pages may have one, two, or three text fields. Along with each would be a title. These options let you edit the text/title for each section. Your site will also have links to edit "Text1", "Text2", and "Text3". Clicking on the button brings up the same editor as clicking on the top toolbar. Edit the body of text and the title.</p>\r\n<p>&nbsp;</p>\r\n<p>Even if your page is purely a "photo gallery", and does not display any text besides image captions, its still a good idea to fill out "Title1" and "Text1" fields, so search engines can see the data and better index your page.</p>', '', 'image709-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251130206, 2009, 8, 24, 'tutorials', NULL, NULL),
(710, 'Page style', 'page', 'blog', '<p>In the top toolbar, click "Page", then "Style".</p>', '', '', 'image710-1.png', '', '', '', '', '', '', '', '', '', 'If you know CSS, create a unique style for each page using this tool.', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251150288, 2009, 8, 24, 'tutorials', NULL, NULL),
(711, 'delete page', 'page', 'blog', '<p>In the top toolbar, click "Page", then "Delete".</p>', '<p>Delete the current page. To delete a different page, navigate to another page, or in the top toolbar, go to "Site", "Manage Pages".</p>', '', 'image711-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251150498, 2009, 8, 24, 'tutorials', NULL, NULL),
(712, 'Edit entry', 'entries', 'blog', '<p>In the top toolbar, click "Entries", then "Manage Entries", and choose an item to edit. Or, click the "Edit" button in your page, located at the top left of your product or article.</p>', '<p><strong>Add a new photo, article, or product.</strong></p>\r\n<p><strong>Title </strong>- name of the photo, article or product.</p>\r\n<p><strong>Category</strong> - the series, group, or gallery that this entry belongs to.</p>\r\n<p><strong>Image</strong> - click "Browse" to upload a new photo. JPG, GIF and PNG files are acceptable.</p>\r\n<p><strong>Video </strong>- click "Browse" to upload a new video. FLV files are best. MOV also works.</p>\r\n<p><strong>Price </strong>- how much (in dollars) to sell this product for.</p>\r\n<p><strong>Qty</strong> - how many items are available for sale (dont forget to login and change this after the item is sold)</p>\r\n<p><strong>Ship</strong> - flat fee shipping cost (in dollars).</p>\r\n<p><strong>Description </strong>- a very short description that will appear next to the price</p>\r\n<p><strong>Text</strong> - an article, or product description to display with the item (will not be displayed for gallery pages, use "description" instead)</p>\r\n<p><strong>Link</strong> - include a link for a links or web portfolio page, dont forget the "http://"</p>\r\n<p><strong>Page</strong> - what page to display this article on? usually its the page you are on</p>\r\n<p><strong>Date</strong> - sometimes, a date is displayed next to the blog entry, or it may be used to arrange the articles on a page</p>\r\n<p><strong>Text2, Text3</strong> - some pages might display a second or third product description or article</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Add 2nd variation</strong> - add upto 5 variations of the product or item. Sell several colors or styles of the same product, or multiple sizes or frame options of your print. Or, create a mini-slideshow for each photograph or article (if your page design supports this). Just add another price/description for each variation to give your shoppers options to choose from.</p>', '', 'image712-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251152141, 2009, 8, 24, 'tutorials', NULL, NULL),
(713, 'manage entries', 'entries', 'blog', '<p>In the top toolbar, click "Entries", and "Manage Entries"</p>', '<p>Browse the articles on the page you''re currently on. Just go to "Manage Pages". Browse articles in a different page or category, or search to find the article you''re looking for. Apply a new page or new category to all search results, or delete them all.</p>\r\n<p><br />To edit them individually, click "Edit" or "Delete" next to the entry you wish to edit.</p>', '', 'image713-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251152493, 2009, 8, 24, 'tutorials', NULL, NULL),
(714, 'Manage categories', 'entries', 'blog', '<p>In the top toolbar, click "Entries" then "Manage Categories".</p>', '<p>Rename a category. Choose a category from the dropdown list. Rename it. All entries and products in that category are moved to the new name.</p>', '', 'image714-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251152799, 2009, 8, 24, 'tutorials', NULL, NULL),
(715, 'Manage comments', 'entries', 'blog', '<p>In the top toolbar, click "Entries" then "Manage Comments".</p>', '<p>Browse the comments visitors have left for each page or item. Use the buttons next to each comment to "edit", "delete", or "hide" each one.</p>', '', 'image715-1.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1000000000, 1251152986, 2009, 8, 24, 'tutorials', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `english_pages`
--

CREATE TABLE IF NOT EXISTS `english_pages` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL default 'text',
  `placement` int(11) NOT NULL,
  `orderby` varchar(200) NOT NULL default 'placement asc',
  `menu` varchar(200) NOT NULL default '1',
  `text1` text,
  `text2` text,
  `text3` text,
  `title1` text,
  `title2` text,
  `title3` text,
  `style` text,
  `date` int(11) default NULL,
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `description` (`name`,`title1`,`title2`,`title3`,`text1`,`text2`,`text3`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `english_pages`
--

INSERT INTO `english_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES
(1, 'home', 'home', 0, 'placement asc', '1', '<p>Your site will come finished with pages and articles. <span>When time comes&nbsp;</span></p>\r\n<p><span>to add new content, you can do it yourself without paying a webmaster.</span></p>\r\n<p><span>Just login to your site and an editor toolbar and buttons will pop up. </span></p>\r\n<p><span>Here, you''re already logged in to a trial account.&nbsp;You can only preview </span></p>\r\n<p><span>the administrator&nbsp;tools, but cant make any changes.</span></p>', '<p>Web design and publicity by&nbsp;<a style="z-index: 10; position: relative; font-style: normal; font-size: 16px; line-height: 18px; font-family: Arial, Helvetica, sans-serif; font-weight: normal; text-shadow: #000000 0px 0px 0px; color: #fee763; text-decoration: underline; padding: 0px; margin: 0px;" href="http://www.paulshorey.com/" target="_blank">Paul Shorey</a>.</p>', '<p>With&nbsp;the <a href="http://www.friendlyeditor.com" target="_blank">FriendlyEditor</a> <sup>tm</sup> - <br />Add pages articles and products</p>\r\n<p>without leaving the site. Login,</p>\r\n<p>go to the page, and click</p>\r\n<p>the buttons. Edit texts, add</p>\r\n<p>videos, create slideshows,</p>\r\n<p>even send mailinglists...</p>', 'Just Login, Manage, & Sell', 'Get it only from www.artspaces.net', 'Edit your site', '	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ', 0),
(51, 'login', 'login', 0, 'placement asc', 'hidden', '', '	    ', '', 'Login', '', '', '', 1245027696),
(48, '404', '404', 0, 'placement asc', 'hidden', '', '<p>&nbsp;</p>\r\n<p><a href="home">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', '', '', '', '', 1242828983),
(56, 'shoppingcart', 'shoppingcart', 0, 'placement asc', 'hidden', '<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>', '', '', 'Your shopping cart', '', '', '', 1246992987),
(43, 'tutorials', 'blog', 2, 'placement asc', '1', '<p>Try out the editor as if editing own site. Your finished site will have this editor built-in. When its time to add more content, just login, and all the tools you see here will pop up, allowing you to easily&nbsp;edit pages, articles and users. If you''re not sure about a question in the editor, mouse over it and a help box will appear.</p>', '<p>Please let me know what you think about this program. New features are being added every day. If there''s something special you''re looking for, please make a request below. I''ll let you know if it can be included in the next update.</p>', '', 'Manage your site quickly and efficiently', 'Webdesign by Paul Shorey', 'Tutorials', '', 1240361394),
(52, 'join', 'join', 0, 'placement asc', 'hidden', '<p><strong>Get the latest news! Join the site.</strong></p>', '', '', 'Join the mailinglist', '', '', '', 1245027739),
(55, 'demo', 'login', 1, 'placement asc', '1', '<p>Login to a trial account below, and preview every feature of this editor as if editing your own site.</p>', '<p>Try out this editor in these recently-published websites...</p>\r\n<p><a href="http://www.PaulShorey.com" target="_blank">PaulShorey.com</a></p>\r\n<p><a href="http://www.Artspaces.net/login" target="_blank">Artspaces.net</a></p>\r\n<p><a href="http://www.FriendlyEditor.com/login" target="_blank">FriendlyEditor.com</a></p>\r\n<p><a href="http://www.FriendlyPublisher.com/login" target="_blank">FriendlyPublisher.com</a></p>\r\n<p><a href="http://www.theurbanminute.com" target="_blank">TheUrbanMinute.com</a></p>\r\n<p><a href="http://www.HandmadebyLaura.com" target="_blank">HandmadebyLaura.com</a></p>\r\n<p><a href="http://www.JuliaForrest.com" target="_blank">JuliaForrest.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Click "login" at the bottom of the page and login with...</p>\r\n<p>username: visitor</p>\r\n<p>password: pass</p>\r\n<p>&nbsp;</p>\r\n<p>I created this program for my clients at <a href="http://www.artspaces.net" target="_blank">www.artspaces.net</a>.</p>\r\n<p>Now, you can download it for your clients at <a href="http://www.friendlypublisher.com" target="_blank">www.friendlypublisher.com</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Paul Shorey -</p>\r\n<p>Please see my other work at <a href="http://www.paulshorey.com" target="_blank">www.paulshorey.com</a></p>', '', 'Try the editor...', 'Try it on other sites...', '', '', 1246893299),
(33, 'contact', 'contact', 2, 'date desc', '2', '<p>Contact me, I''ll reply soon.</p>', '', '<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href="http://www.artspaces.net/policy">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you''re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href="http://www.artspaces.net/pricequote">pricequote</a> to get me started. Go ahead and try this even if you''re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>', 'Contact me', '', '', '', 1236058349),
(44, 'rss', 'rss', 0, 'date desc', 'hidden', '', '', '', '', '', '', '', 1240370292),
(57, 'support', 'support', 3, 'placement asc', '1', '<p><strong>Mozilla Firefox 2 - Sometimes you cant cut or delete&nbsp;from the text editor</strong></p>\r\n<p>Temporary fix - type something first (any character or spacebar)</p>\r\n<p>This is a problem with Firefox, and is seen on all major sites like Gmail.com and Craigslist.org. I''m currently working on a better&nbsp;solution.</p>\r\n<p>&nbsp;</p>\r\n<p>The Friendly Editor is a new service from <a href="http://www.artspaces.net">www.artspaces.net</a>.&nbsp;If you notice a problem, or can suggest an improvement, please let me know below, and I''ll get back to you right away with a solution.</p>', '<p>Please send me a message to report a problem with your site editor, or to suggest an improvement. I''ll get back to you right away with an answer.</p>\r\n<p>&nbsp;</p>\r\n<p>If you''re hosting with <a href="http://www.artspaces.net/" target="_blank">www.artspaces.net</a>, your site will be updated immediately. If you''re hosting elsewhere, I''ll post the latest patch to <a href="http://www.friendlypublisher.com/" target="_blank">www.friendlypublisher.com</a>, where you or your webmaster can download the fix, and update your site.</p>', '<p>This editor program is being improved every day. First things on the list are the issues at the top of the page. Later, new features and improvements will include:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Faster product management</strong></p>\r\n<p><strong></strong>rename and change multiple articles and products from a single form</p>\r\n<p><strong>Order on page by category</strong></p>\r\n<p>you can already drag and drop your articles to a new order on the page. However, if you have many items in multiple categories, this method is&nbsp;too time-consuming. I will soon add a tool to drag and drop entire categories to their new order on the page</p>\r\n<p><strong>Site preferences</strong></p>\r\n<p>right now only your webdesigner can modify your database info, name, contact email, upload folders, and other site details by editing the settings.php file. I''m currently working on integrating these options into the FriendlyEditor toolbar, so changing technical details will be as easy as editing your page text.</p>\r\n<p>&nbsp;</p>\r\n<p>Thank you very much for visiting, please take a look at my other work.</p>\r\n<p>Paul Shorey</p>\r\n<p><a href="http://www.paulshorey.com">www.paulshorey.com</a><a href="http://www.artspaces.net"></a></p>', 'Reported issues', 'Report a bug or get help with your site', 'Future improvements', '', 1248731459),
(58, 'policy', 'text', 0, 'placement asc', '2', '<p>Page coming very soon... please contact me below with any questions.</p>', '', '', 'My Policy', '', '', '', 1248782777);

-- --------------------------------------------------------

--
-- Table structure for table `english_redirects`
--

CREATE TABLE IF NOT EXISTS `english_redirects` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `page` varchar(200) default NULL,
  `redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `english_redirects`
--

INSERT INTO `english_redirects` (`id`, `page`, `redirect`) VALUES
(6, 'pricequote', 'http://www.artspaces.net/process'),
(7, 'login', 'http://friendlyeditor.com/demo');

-- --------------------------------------------------------

--
-- Table structure for table `english_users`
--

CREATE TABLE IF NOT EXISTS `english_users` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) default NULL,
  `lastname` varchar(100) default NULL,
  `middlename` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `phone` varchar(50) default NULL,
  `date` int(11) default NULL,
  `role` varchar(50) default NULL,
  `mail` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `english_users`
--

INSERT INTO `english_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES
(2, 'pshorey', 'ms[-;r-m', 'paul', 'shorey', '', 'pshorey@artspaces.net', '2147483647', 0, 'editor', 'yes'),
(3, 'demo', 'demo', 'demo', 'user', '', '', '0', 0, 'editor', ''),
(5, 'ps', 'ms[-;r-m', '', '', '', 'pshorey@gmail.com', '0', 0, '', 'yes');
