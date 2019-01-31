<?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("SET FOREIGN_KEY_CHECKS = 0;

");
?><?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("-- 
-- Table structure for table `english_items` 
-- 

DROP TABLE IF EXISTS `english_items`;
CREATE TABLE `english_items` (
`id` int(11) unsigned NOT NULL auto_increment,
`name` varchar(200) NOT NULL,
`category` varchar(500),
`type` varchar(200) DEFAULT 'article' NOT NULL,
`text1` text,
`text2` text,
`text3` text,
`image1` varchar(500),
`image2` varchar(500),
`image3` varchar(500),
`image4` varchar(500),
`image5` varchar(500),
`video1` varchar(200),
`video2` varchar(200),
`video3` varchar(200),
`video4` varchar(200),
`video5` varchar(200),
`caption1` text,
`caption2` text,
`caption3` text,
`caption4` text,
`caption5` text,
`price1` int(11),
`price2` int(11),
`price3` int(11),
`price4` int(11),
`price5` int(11),
`qty1` int(11),
`qty2` int(11),
`qty3` int(11),
`qty4` int(11),
`qty5` int(11),
`shp1` int(11),
`shp2` int(11),
`shp3` int(11),
`shp4` int(11),
`shp5` int(11),
`item` int(11) NOT NULL,
`link` text,
`placement` int(11),
`date` int(11) NOT NULL,
`year` int(11),
`month` int(11),
`day` int(11),
`page` varchar(200) NOT NULL,
`user` varchar(200),
`postedby` varchar(200),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `text1`, `text2`, `text3`)
) ENGINE=MyISAM AUTO_INCREMENT=698;

-- --------------------------------------------------------

");
?><?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("-- 
-- Table structure for table `english_pages` 
-- 

DROP TABLE IF EXISTS `english_pages`;
CREATE TABLE `english_pages` (
`id` int(11) unsigned NOT NULL auto_increment,
`name` varchar(200) NOT NULL,
`type` varchar(200) DEFAULT 'text' NOT NULL,
`placement` int(11) NOT NULL,
`orderby` varchar(200) DEFAULT 'placement asc' NOT NULL,
`menu` varchar(200) DEFAULT '1' NOT NULL,
`text1` text,
`text2` text,
`text3` text,
`title1` text,
`title2` text,
`title3` text,
`style` text,
`date` int(11),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `title1`, `title2`, `title3`, `text1`, `text2`, `text3`)
) ENGINE=MyISAM AUTO_INCREMENT=64;

-- --------------------------------------------------------

");
?><?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("-- 
-- Table structure for table `english_users` 
-- 

DROP TABLE IF EXISTS `english_users`;
CREATE TABLE `english_users` (
`id` int(11) unsigned NOT NULL auto_increment,
`username` varchar(100) NOT NULL,
`password` varchar(100) NOT NULL,
`firstname` varchar(100),
`lastname` varchar(100),
`middlename` varchar(100),
`email` varchar(100),
`phone` varchar(50),
`date` int(11),
`role` varchar(50),
`mail` varchar(50),
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7;

-- --------------------------------------------------------

");
?><?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("-- 
-- Dumping data for table `english_items` 
-- 

INSERT INTO `english_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('533','Media Arts Department Show','media arts - senior show','gallery','<p>The media arts senior show has just passed, and I\'m about to graduate. What a strange feeling! ...</p>\r\n<p>The show was a great success. All the visitors seemed very enthuised by the live projections and projects from everybody\'s digital performance. I love the naked man projection right in front of the doorway. If you stood for the entire video, you\'d see him battling with his confidence and body image. Very well done Kevin.</p>','<p>I had the great opportunity of exhibiting to a lot of people, in a perfectly dim space, with a huge wall all to myself. It quite tiring climbing 20ft ladders running up all the wires, but in the end it worked nicely. Read about it below.</p>','','image533-1.jpg','','','','','video533-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1239384985','2009','4','10','projects','',''),
 ('518','Senior Project 2009','media arts - senior show','gallery','<p>Media Arts for me is like an interactive theater. A lot of fun setting up scripts that take on their own life and interact with people.</p>\r\n<p>Here I had an entire wall to setup whatever I wanted. So I created a bit of an experiment. I wanted to see how people would respond if they saw a wall of interacting faces looking at them and each other. I wanted to then put the person on that wall after they left the stage. How would people respond? What would they do?</p>\r\n<p>During the Media Arts show, there were so many people all having fun with the projects around them, that they crowded around my wall making faces and dancing around and really had a blast. Here\'s a bit of it from when I went around the room documenting the show.</p>\r\n<p>The few days following the show, very few people came into the studio, and they were afraid to approach the wall without the company of friends. The ones that did looked around as though unsure if they\'d be welcomed by the other expressions on the wall.</p>','','','image518-1.jpg','','','','','video518-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1','1239262993','2009','4','9','projects','',''),
 ('528','The Hipsters are judging you from above','media arts - senior show','gallery','<p>This was a fun piece. Like in the \"study of movement\", the animation follows the passing person. My Media Arts Department was located on the second floor overlooking a large atrium from above. So I thought it would be funny if I put the projection up that high with the faces and expressions of the Media Arts majors. It was very entertaining!</p>','','','image528-1.jpg','','','','','video528-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','3','1235808574','2009','2','28','projects','',''),
 ('531','Deep water exploration','media arts - senior show','gallery','<p>This is a project made with Adobe Flash and Pure-data with a local webserver connecting the two programs.<br /><br />Strange deep-water fish, garbage, a mermaid, and ruins of our civilization are floating and swimming randomly in a cityscape, following their own course of events.<br /><br />When a person walks up, a window is opened, like a flashlight shining into the darkness, allowing him/her to see whats inside. The window follows the person, creating the impression that the viewer is holding the flashlight, actively peering into the deep.</p>','','','image531-1.jpg','','','','','video531-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','6','1236671021','2009','3','10','projects','',''),
 ('587','Senior Project Test','media arts - senior show','gallery','<p>This myself walking around making sure the project works. This year\'s been very exciting, but very challenging as well. I\'ve created these projects in the program \"Pure Data\". Pure Data or PD, is a very simple graphical interface for simple \"C\" scripts. While its nice to be able to manipulate audio and video visually, there are a lot of things the program doesnt do. For example, It will motion-track a person walking by a camera. But, its results will be extremely jumpy, and will only output x, y coordinates. It\'s up to me, the programmer, to average, smooth, and make sense of the data with simple math functions. So, while creating the installations was a great learning experience, learning the program itself really made me that much more knowledgeable in programming, project planning, and knowing how to overcome limitations.</p>','','','image587-1.jpg','','','','','video587-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2','1238053402','2009','3','26','projects','',''),
 ('588','World View','media arts - senior show','gallery','<p>This is an interactive documentary. A journey around the world in the time it takes to cross two projector screens.<br /><br />The viewer comes in, a video starts playing. If the viewer moves right, the video adjusts its position and plays a scene from a country to the east. If the viewer moves left, the video moves west.<br /><br />The videos are home-made movies from people all around the world. Some are made by tourists. Some by locals, but they all seem to capture average lives of everyday middle-class people.<br /><br />The audio is from internet radio stations that the people in that region of the world listen to. Its funny to me how many of the clips turned out to be really cheesy American Pop, but they are chosen at random. So are the videos.</p>','','','image588-1.jpg','','','','','video588-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','5','1237362210','2009','3','18','projects','',''),
 ('589','A study of movement','media arts - senior show','gallery','<p>A simple interaction between a person and animated object. A videoclip plays when the viewer moves in one direction. Another plays when he/she moves in another, and another plays when the viewer is standing still.</p>','','','image589-1.jpg','','','','','video589-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','4','1235635790','2009','2','26','projects','',''),
 ('671','Artspaces.net','webdesign - artspaces','gallery','<p>After creating sites for people and only showing them my past works through links, I finally have my own professional website. It\'s a very exciting time for me. Right after graduating from Art School, this is my step into the professional world.</p>\r\n<p>&nbsp;</p>\r\n<p>This site is the most user-friendly and search-engine-optimized so far, and features some other improvements, like animated content in Internet Explorer and titles that generate as data for search engines but as graphics for visitors.</p>','','','image671-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.artspaces.net','','1246546291','2009','7','2','projects','',''),
 ('640','Behind the Scenes','media arts - senior show','gallery','<p>This is a sort of \"behind the scenes\" look at my senior year of media arts. See me install, test, and explain the setup. Also, see the equipment it takes to create an interactive installation.</p>','','','image640-1.jpg','','','','','video640-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','7','1233473279','2009','2','1','projects','',''),
 ('641','Editorial','media arts - senior show','gallery','<p>A video class project. We were to pick an article, and deconstruct its meaning and words in a video to draw new and maybe ironic meaning from it.</p>','','','image641-1.jpg','','','','','video641-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','10','1225521681','2008','11','1','projects','',''),
 ('642','Biographical','media arts - senior show','gallery','<p>This is a sketch for a project I\'d really like to do... in postproduction, to add moving video to another moving object. It can be done in animated Pixar film, but I wanted to put video into another video. So, I downloaded a copy of Maya, Boujou, and set out on the town. I still need to redo this with an HD camera and a much better script. :)</p>','','','image642-1.jpg','','','','','video642-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','8','1224315779','2008','10','18','projects','',''),
 ('643','Audio','media arts - senior show','gallery','<p>Everyone in the class first created an abstract audio composition. We then swapped with everyone else in the class, and had to come up with a video response to their piece. I got Mike Mal\'s sound, which sounded very industrial and technical. So, I came up with a response.</p>','','','image643-1.jpg','','','','','video643-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','9','1223276413','2008','10','6','projects','',''),
 ('680','FriendlyEditor.com','webdesign - friendly editor','gallery','<p>The user-friendly editor - lets you edit your content quickly and efficiently:</p>\r\n<ul>\r\n<li><span class=\"bright\"><br />1.</span> Update your content without leaving your site.</li>\r\n<li><span class=\"bright\"><br />2.</span> To edit an article, just login and click \"edit\" next to it,</li>\r\n<li>edit your products, photos the same way. Find them, click \"add\", \"edit\", or \"delete\".</li>\r\n<li><span class=\"bright\"><br />3.</span> Chose \"manage items\" in the toolbar to search all articles or comments on your site,</li>\r\n<li>want your articles arranged a certain way, just click and drag them to their new positions,</li>\r\n<li>or order them by date, alphabetically, category, etc.</li>\r\n<li><span class=\"bright\"><br />4.</span> You can have unlimited pages, with unlimited articles, arranged in unlimited categories,</li>\r\n<li>controlling your navigation menus is easy. Choose \"manage pages\" click and drag,</li>\r\n<li>move your page to a new menu or hide it. Link to it with \"www.yoursite.com/yourpage\".</li>\r\n<li><span class=\"bright\"><br />5.</span> Controlling users is easy. Add/edit/delete users, allow them to edit the site,</li>\r\n<li>dont like a particular user comment, edit or delete it.</li>\r\n<li>Send professional mailinglists with images, tables, links, and font styles. Even edit the code directly.</li>\r\n<li><span class=\"bright\"><br />6.</span> Use the html editor to customize your articles, products, and pages. </li>\r\n<li>Choose text styles that fit with your page.</li>\r\n<li>Upload images, videos, and slideshows, and the editor includes them in your page.</li>\r\n<li><span class=\"bright\"><br />7.</span> Sell unlimited products with the built-in shopping cart. Set the price, quantity, and shipping cost for each. Offer upto 5 variations of each product, each with a unique price, quantity and shipping costs.</li>\r\n<li>Include detailed pictures and videos of your products. Just upload and the site does the work.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>This is a really important tool. Unlike Wordpress or Drupal editors, I tried to make the program intuitive and userfriendly. It will almost ask you what you want to do.<br /><br />All functionality lies in the top toolbar. To edit the pages and menus for example, select \"site\" -&gt; \"pages\". To send mailinglists, choose \"users\" -&gt; \"mailinglist\". To add an article or product (depending on the page), choose \"items\" -&gt; \"add\".<br /><br /><a href=\"index.php?action=publisher/plugins/users/login&amp;user=visitor&amp;pass=demo\">Start the demo </a>(Its free, instant, and does not need to be installed.)</p>\r\n<p>&nbsp;</p>\r\n<p>You\'ll be able to use the editor tools, but will not be able to change anything (except leave comments). For security concerns, you also wont be able to use the built-in image upload tool in the text editor.</p>\r\n<ul>\r\n</ul>','','','image680-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1246544294','2009','7','2','projects','',''),
 ('684','Jquery Fancy Titles','webdesign - jquery','gallery','<p>I never liked developed with javascript untill Jquery. Now its so easy and fun! I hope the guys that came up with it become billionaires like the founders of Google. For me, its just that great. It took a while to figure out exactly how Jquery works. But, now I can write complicated own plugins and deconstruct others.</p>','<p>&nbsp;</p>\r\n<p>One Jquery plugin I created is SWF-Titles. It\'s a dynamic text replacement alternative to SIFR. SIFR allows webdesigners to use fancy fonts that the visitors wont have on their computers. However, SIFR swf files must be saved in Flash version 7, which does not support nice anti-aliasing. I came up with a solution that not only makes the text look nicer, but which is also much easier to use, and more customizable. Unlike replacing letter by letter, my SWF-Titles replace the whole line. So, if you\'d like to edit the flash document to have extra effects and animations, you can!</p>','','image684-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1','1246546226','2009','7','2','projects','',''),
 ('681','FrienlyPublisher.com','webdesign - friendly publisher','home','<p>More of a workflow than a program... a combination of tools that I use on a regular basis. It\'s a publishing platform, a lot like CakePHP or Zend, but much much simpler. In fact, the actual script is only a few lines of code. The rest is plugins, with their functions stacked on top of each other like blocks.</p>\r\n<p>&nbsp;</p>\r\n<p>CMS Blocks is made entirely of plugins which interact with and modify one another. One of the plugins is a site editor, which displays a toolbar if the logged in user has the proper credentials. Other plugins like \"pages\", \"users\", or \"items\" add their own functions and links to it. An \"rss\" plugin changes the editor link \"add item\" to \"add news feed\". The shopping plugin does the same.</p>\r\n<p>&nbsp;</p>\r\n<p>All these plugins are interdependent and work together. However, if you dont like one, it can be easily removed or changed. If you want to remove the shopping cart plugin for example, the site will function the same. You just wont be able to use the custom shopping cart tags in your templates.</p>\r\n<p>&nbsp;</p>\r\n<p>This system is very open, scalable, and expandable. This is mainly because of its simplicity. Creating a social network is as easy creating an html template, and displaying users information with special html tags. Including Ajax is easy. Just make a separate template for the dynamic part of the page, and update it with Jquery commands.</p>\r\n<p>&nbsp;</p>\r\n<p>In short, this project is my all my PHP development experience downloaded into a single folder.</p>','','','image681-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2','1246542896','2009','7','2','projects','',''),
 ('687','KFC at night','photography - digital','gallery','<p>The creepies but most beautiful thing ever at night. The lighting in the image is only slightly exaggerated. This KFC really was like a beacon of light surrounded by an empty lot, parking lot, and darkness.</p>','','','image687-1.jpg','','','','','','','','','','','','','','','0','0','60','60','60','0','0','6','6','6','0','0','0','0','0','0','','','1246546600','2009','7','2','projects','',''),
 ('686','Old Victorian','photography - digital','gallery','<p>I used to live on the border of a nice historic neighborhood and a low-class rundown one. The two environments combined there sometimes in the strangest way. Especially at night. I fell in love with this house. So rickety and run-down, but at the same time tied to such a rich stylistic history. Very surreal. The light coming through the window amplified the effect, making a strange haunted doll-house type of effect</p>','','','image686-1.jpg','image686-1.jpg','','','','','','','','','24 x 17 Matted','24 x 17 Framed','','','','60','160','120','120','120','6','6','6','6','6','0','0','0','0','0','0','','0','1246588909','2009','7','2','projects','',''),
 ('688','City at night','photography - digital','gallery','<p>This is actually my old apartment. Clemens Place in Hartford CT. A great place, very charming, cozy and historic. At night though, it was like the rest of the old neighborhood, creepy and surreal.</p>','','','image688-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1246546780','2009','7','2','projects','',''),
 ('689','Seminary','photography - digital','gallery','<p>What a great place, a center for religious study, learning, and understanding, the Hartford Seminary. The building was designed by some famous architect. It\'s really beautiful in the moonlight.</p>','','','image689-1.jpg','image689-1.jpg','','','','','','','','','24 x 17 Matted','24 x 17 Framed','','','','60','160','0','0','0','6','6','0','0','0','0','0','0','0','0','0','','','1246588894','2009','7','2','projects','',''),
 ('690','Imprezzza','photography - digital','gallery','<p>A photography class project. A subtle statement on overconsumption. Printed on rich glossy paper.</p>','','','image690-1.jpg','image690-1.jpg','','','','','','','','','17 x 24 Matted','17 x 24 Framed','','','','70','170','0','0','0','20','20','0','0','0','0','0','0','0','0','0','','','1246589239','2009','7','2','projects','',''),
 ('691','Technology Tree','photography - digital','gallery','<p>At my old job at the Kolo Albums store, they had the coolest silver rubber tree. I wanted to take a picture of it for the longest time. When they got this rediculous printer and a bunch of wires, I couldnt resist.</p>','','','image691-1.jpg','image691-1.jpg','','','','','','','','','17 x 24 Matted','17 x 24 Framed','','','','70','70','0','0','0','20','20','0','0','0','0','0','0','0','0','0','','','1246589416','2009','7','2','projects','',''),
 ('692','Le Grand','photography - digital','gallery','<p>A huge SUV in front of a huge building. I scaled the car up a bit. Thats it.</p>','','','image692-1.jpg','image692-1.jpg','','','','','','','','','17 x 24 Matted','17 x 24 Framed','','','','70','170','0','0','0','20','20','0','0','0','0','0','0','0','0','0','','','1246589582','2009','7','2','projects','',''),
 ('693','Hippies','photography - digital','gallery','<p>I just love these two hippies. Wearing protest pins and army jackets while shopping and sipping Starbucks. What a great statement on our comfortable consumer culture.</p>','','','image693-1.jpg','image693-1.jpg','','','','','','','','','24 x 17 Matted','24 x 17 Framed','','','','60','160','0','0','0','160','20','0','0','0','20','20','0','0','0','0','','','1246589928','2009','7','2','projects','',''),
 ('694','America','photography - digital','gallery','<p>I love this image too, with the big red white and blue, the blue jeans, the minivan, the shopping center. Its all so lovely and stereotypical.</p>','','','image694-1.jpg','image694-1.jpg','','','','','','','','','24 x 17 Matted','24 x 17 Framed','','','','60','160','60','60','60','20','20','20','20','20','0','0','0','0','0','0','','','1246591005','2009','7','2','projects','',''),
 ('695','Shopping','photography - digital','gallery','<p>Some friends and families window-shopping and enjoying the sunshine.</p>','','','image695-1.jpg','image695-1.jpg','','','','','','','','','24 x 17 Matted','24 x 17 Framed','','','','60','60','60','60','60','20','20','20','20','20','0','0','0','0','0','0','','','1246590901','2009','7','2','projects','',''),
 ('696','','','gallery','<p>Nice work Paul!</p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','533','','','1246637209','0','0','0','projects','pshorey','pshorey'),
 ('697','','','gallery','<p>This is a sample comment...</p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','533','','','1246637224','0','0','0','projects','pshorey','pshorey');

-- --------------------------------------------------------

");
?><?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("-- 
-- Dumping data for table `english_pages` 
-- 

INSERT INTO `english_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','date desc','2','<p><strong>I&rsquo;m a freelance web<br />developer with a BFA<br />in Media Arts, living<br />in Brooklyn NY.<br /><br />I&rsquo;ve created several<br />of my own projects,<br />that <span class=\"yellow\">help</span> <span class=\"magenta\">artists</span> and<br /><span class=\"cyan\">designers</span> publish <br />their work....<br /><br />Now I&rsquo;d like to help<br />you with any stage<br />of your next project:<br /><span class=\"black\">1</span> design<br /><span class=\"black\">2</span> markup,<br /><span class=\"black\">3</span> development,<br /><span class=\"black\">4</span> marketing<br /><br />Please contact me<br />ps@artspaces.net<br />860 849-1282</strong></p>','','','Welcome','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','	    ','	    ','','Login and join the fun!','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('2','about me','gallery','1','date desc','2','<p>I\'m living in Long Island right now, searching for jobs. In September, I\'ll hopefully move to Brooklyn with my girlfriend. Anyways, here\'s what Ive been upto lately. (Hover to pause the slideshows, click to advance)</p>','','','A bit about myself...','','','/* PAGE CSS FROM MYSQL */','0'),
 ('58','web','gallery','3','placement asc','2','<p>This site is published with my custom program, CMS Blocks. It makes it easy for web designers to publish their work, for programmers to develop services, and site owners to edit the site. It comes with an easy but powerful site editor. <a href=\"index.php?action=publisher/plugins/users/login\">Try it here on this page.</a></p>\r\n<p>&nbsp;</p>\r\n<p>Below are the features I use for creating dynamic websites. For a more specific list, please visit <a href=\"http://www.artspaces.net/services\" target=\"_blank\">www.artspaces.net/services</a>.</p>','','','web design','','','','1246506448'),
 ('59','web design','gallery','4','date desc','2','<p>Here are the sites I\'ve published. Each has come out with a stronger design and more functionality than the one before it.</p>\r\n<p>I really need to expand this portfolio. So if you need a site, I\'ll design, publish, and host it for you for only $350. You\'ll also get my easy <a href=\"http://www.artspaces.net/editor\" target=\"_blank\">site editor</a> to manage your site and subscribers. Please visit <a href=\"http://www.artspaces.net/services\" target=\"_blank\">www.artspaces.net/services</a> for details.</p>','','','web design','','','','1246506576'),
 ('61','fine art','gallery','6','placement asc','2','<p>Here are some prints for sale. The lithographs and photographs came out very nice, with great color and detail. It was really a lot of fun shooting and manipulating these. I\'m making a promise to myself to do more photography after moving to Brooklyn.</p>','<p>Thanks for looking! I accept Paypal and Google. This page also is a test for my shopping cart that you can have on your new site. Please take a look at my freelance design services at <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>.</p>','','Art prints','','','','1246506661'),
 ('62','resume','blog','8','placement asc','1','<p>Thanks a lot for visiting. My resume\'s coming soon. For now please take a look at my skills on the left.</p>','','','resume','','','','1246506700'),
 ('57','news','gallery','7','placement asc','2','<p>Thanks for looking. Here are some interesting news and events feeds. Just click on a link on the left to get started. I\'m going to expand on this concept in the near future, adding features, user pages, and hopefully a clever url.</p>','<p>This page is still not finished. Please stay with me. The site should be up and running in a couple of days.</p>','','News & Updates','','','','1246424495'),
 ('63','shopping cart','shopping cart','0','placement asc','hidden','<p>This is your shopping cart, where you can adjust the quantity, type, see review the prices. Shipping is included in all prices. To get a site with a shopping cart like this, please visit <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>.</p>','<p>Thanks a lot for visiting! I accept Paypal and Googlecheckout. Shipping is included in all prices.</p>','','your shopping cart','','','','1246592767'),
 ('52','join','join','0','placement asc','hidden','<p>Get the latest news! Join the site.</p>','','','Join the mailinglist','','','','1245027739'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('37','contact','blog','9','placement asc','1','<p>Please use this form or email me directly. I\'ll probably reply the next day.</p>','<p>Also, view and download my <a href=\"http://www.paulshorey.com/resume\">resume</a>.</p>','','Contact me','','','','1238088319'),
 ('55','projects','gallery','2','placement asc','1','<p>I just graduated from the Hartford Art School with a BFA in Media Arts. The best part of the program was how diverse my curriculum could be. I took classes in illustration, painting, graphic design, photography, web design, and interactive media. My last year, I really focused on my major. Here\'s what came out of it...</p>','<p>Thanks a lot for visiting! Please take a look at my <a href=\"http://www.paulshorey.com/resume\">resume</a>.</p>','','recent projects','','','','1246422852');

-- --------------------------------------------------------

");
?><?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("-- 
-- Dumping data for table `english_users` 
-- 

INSERT INTO `english_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('6','pshorey','ms[-;r-m','paul','i','shorey','pshorey@gmail.com','55555555','','editor','yes');

-- --------------------------------------------------------

");
?><?php
// SETUP
$access = array("editor");
require_once($_SERVER["DOCUMENT_ROOT"]."/publisher/core/setup/setup.php");
print("SET FOREIGN_KEY_CHECKS = 1;

");
?>