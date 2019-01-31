SET FOREIGN_KEY_CHECKS = 0;

-- 
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
) ENGINE=MyISAM AUTO_INCREMENT=707;

-- --------------------------------------------------------

-- 
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
) ENGINE=MyISAM AUTO_INCREMENT=58;

-- --------------------------------------------------------

-- 
-- Table structure for table `english_redirects` 
-- 

DROP TABLE IF EXISTS `english_redirects`;
CREATE TABLE `english_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

-- --------------------------------------------------------

-- 
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
) ENGINE=MyISAM AUTO_INCREMENT=6;

-- --------------------------------------------------------

-- 
-- Dumping data for table `english_items` 
-- 

INSERT INTO `english_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('662','Through','illusions','gallery','','','','image662-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','125','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','12','1248406082','2009','7','23','gallery','',''),
 ('660','Seam','illusions','gallery','','','','image660-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','8','1248405965','2009','7','23','gallery','',''),
 ('664','Illusions','illusions','blog','<p>&nbsp;&nbsp;&nbsp;&nbsp; A woman presents herself within the landscape. A mirror, either handheld or placed nearby, both reflect differently than what surrounds her. She interacts with the landscape she wanders in, blending into the background, changing with scale, or holding a part of the landscape itself. The whole image becomes a pictorial&nbsp; illusion and as the photographer, I am in complete control of the composition. <br />&nbsp;&nbsp;&nbsp;&nbsp; Using a medium format film camera and no digital manipulation, I pose women in the landscape. In reference to greek mythological stories of goddesses, these women look gentle and fragile, yet posses a strong power. Their long hair covers their face, giving them an unknown identify.&nbsp; The variety of mirrors I use do not reflect the women themselves, but instead are held away from them. They blend into their surroundings, the mirror serving as an illusion to show off their power by changing what\'s around them.<br />&nbsp;&nbsp;&nbsp;&nbsp; I am inspired by Pictoralist photographers and how they create a purely photographic reality in their images. Early 20th century photographer Anne Brigman seamlessly meets the human figure with a surreal landscape. Her figures have the same powerful presence that I strive to create in my photographs. Shooting in black and white, I make a historical reference to this period. I use Infrared film to emphasize the grain and to create a more surreal environment. I challenge the notion of the landscape by referencing what makes a photograph: the women re-frame what I have framed and they capture in their mirror like a camera captures in the lens.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1248718102','2009','7','27','statement','',''),
 ('665','Untitled','water nymphs','gallery','','','','image665-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','250','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','','1250911968','2009','8','21','gallery','',''),
 ('666','Untitled','water nymphs','gallery','','','','image666-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','250','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','','1250911985','2009','8','21','gallery','',''),
 ('667','Untitled','water nymphs','gallery','','','','image667-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','250','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','','1250912000','2009','8','21','gallery','',''),
 ('668','Untitled','water nymphs','gallery','','','','image668-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','250','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','','1250912015','2009','8','21','gallery','',''),
 ('669','Water Nymphs','Water Nymphs','blog','<p><!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	--></p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; Delicate and fragile, she <span style=\"font-family: Times New Roman,serif;\">is alone, working on tasks unknown to the viewer but yet of strong, ritualistic importance to her. As in Greek and Roman myths, she is a nymph wandering without her god in confined deteriorating spaces. Even in the landscape, she knows not to move beyond the dying trees and the still water. </span></p>\r\n<p style=\"margin-bottom: 0in;\"><span style=\"font-family: Times New Roman,serif;\">&nbsp;&nbsp;&nbsp;&nbsp; The viewer is curious to what the young woman is doing, but yet cannot grasp her strange activities. The viewer senses, however, that these rituals are extremely important. There is no need for color, as black and white perfects the quiet and calm thoughts of the nymph. Using a 4x5 camera, the landscape is presented in crisp detail, mixing together the reality of a photograph with a surreal world. The landscape, gray and deteriorating, highlights the white figure and makes her radiant. She becomes the only bright thing in a dark world. </span></p>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250893390','2009','8','21','statement','',''),
 ('670','Untitled','the mirrored self','gallery','','','','image670-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','','1250998317','2009','8','22','gallery','',''),
 ('671','Untitled','the mirrored self','gallery','','','','image671-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','','1250998339','2009','8','22','gallery','',''),
 ('672','Untitled','the mirrored self','gallery','','','','image672-1.jpg','','','','','','','','','','Digital Inkjet Print-16x20','','','','','100','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250965295','2009','8','22','gallery','',''),
 ('673','Untitled','the mirrored self','gallery','','','','image673-1.jpg','','','','','','','','','','Digital Inkjet Print-16x20','','','','','100','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250971995','2009','8','22','gallery','',''),
 ('674','Untitled','the mirrored self','gallery','','','','image674-1.jpg','','','','','','','','','','Digital Inkjet Print-16x20','','','','','100','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250966009','2009','8','22','gallery','',''),
 ('675','Untitled','the mirrored self','gallery','','','','image675-1.jpg','','','','','','','','','','Digital Inkjet Print-16x20','','','','','100','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250965658','2009','8','22','gallery','',''),
 ('676','Untitled','the mirrored self','gallery','','','','image676-1.jpg','','','','','','','','','','Digital Inkjet Print-16x20','','','','','100','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250965681','2009','8','22','gallery','',''),
 ('678','Resting Man','sicily','gallery','','','','image678-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343702','2009','8','26','gallery','',''),
 ('679','Garden of Ruins','sicily','gallery','','','','image679-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343714','2009','8','26','gallery','',''),
 ('680','Hidden Behind Ivy','sicily','gallery','','','','image680-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343723','2009','8','26','gallery','',''),
 ('681','Sun Columns','sicily','gallery','','','','image681-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343734','2009','8','26','gallery','',''),
 ('682','Ruin Rocks','sicily','gallery','','','','image682-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343746','2009','8','26','gallery','',''),
 ('683','Open Window','sicily','gallery','','','','image683-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343796','2009','8','26','gallery','',''),
 ('684','Resting Nuns','sicily','gallery','','','','image684-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343809','2009','8','26','gallery','',''),
 ('685','Procession March','sicily','gallery','','','','image685-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343820','2009','8','26','gallery','',''),
 ('686','Nuns in an Alley','sicily','gallery','','','','image686-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343833','2009','8','26','gallery','',''),
 ('687','Void','sicily','gallery','','','','image687-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','','1251343849','2009','8','26','gallery','',''),
 ('690','Sicily','sicily','blog','Traveling to Sicily was one of the most memorable experiences of my life.  I grew up in crowded towns and visited New York City weekly, so encountering a place filled with vistas of rolling green hills and beautiful blue skies put me in awe. I was particularly taken by the old crumbling architecture and broken little houses that dotted the landscape. In the American city, if a building is deteriorating, you demolish it and put up something new.  In contrast, Sicily is a timeless country.  It’s history and cultural influences can be read in the design and embellishments of its buildings and facades.  \r\n<p>&nbsp;</p>\r\nI have been influenced by 19th century landscape photography. Early photographers journeyed to exotic places and captured panoramic views unseen by human eyes. Oftentimes they placed figures within their images, allowing a viewer to experience the vastness of these majestic spaces and marvel in their magnificence. I approached my project with a similar sensibility.\r\n<p>&nbsp;</p>\r\nMy photographs are filled with dark shadows. I use grain for a desired effect, suggesting an ageless, strange presence. Black and white film lends a quiet feeling to the compositions- imbuing my images with a sense of mystery. I place myself within this landscape. I am a small, tiny figure amongst the grand scale of pillars, hills, and trees. It is as if I don’t belong, as if nature is too broad for me to comprehend. When other people are situated in my photographs, they too, are out of place. Dressed in odd clothing of a different time, they walk amongst the streets of today. They merge with the surroundings, becoming a part of it. They are as timeless as Sicily is itself.','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1251308870','2009','8','26','statement','',''),
 ('691','Masquerade','other works','gallery','','','','image691-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','5','1251344182','2009','8','26','gallery','',''),
 ('695','Picnic','other works','gallery','','','','image695-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','2','1251344098','2009','8','26','gallery','',''),
 ('696','The Only Tree','other works','gallery','','','','image696-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','3','1251344118','2009','8','26','gallery','',''),
 ('697','Secluded Alleyway','other works','gallery','','','','image697-1.jpg','','','','','','','','','','Digital Inkjet Print-11x14','','','','','50','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','7','1251315336','2009','8','26','gallery','',''),
 ('699','Out the Window','other works','gallery','','','','image699-1.jpg','','','','','','','','','','Digital Inkjet Print-11x14','','','','','50','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','8','1251316258','2009','8','26','gallery','',''),
 ('700','Storefront','other works','gallery','','','','image700-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','6','1251344199','2009','8','26','gallery','',''),
 ('701','Memory','other works','gallery','','','','image701-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','125','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','0','1251344043','2009','8','26','gallery','',''),
 ('702','Thought','other works','gallery','','','','image702-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','125','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','1','1251344068','2009','8','26','gallery','',''),
 ('703','View from Underwater','other works','gallery','','','','image703-1.jpg','','','','','','','','','','Digital Inkjet Print-11x14','','','','','50','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','10','1251316476','2009','8','26','gallery','',''),
 ('704','Reaching','other works','gallery','','','','image704-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','4','1251344135','2009','8','26','gallery','',''),
 ('705','Street Kids','other works','gallery','','','','image705-1.jpg','','','','','','','','','','Digital Inkjet Print-11x14','','','','','50','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','9','1251316546','2009','8','26','gallery','',''),
 ('706','Movement','other works','gallery','','','','image706-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','50','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','11','1251344236','2009','8','26','gallery','',''),
 ('638','','','blog','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','637','','','1246974687','0','0','0','statement','pshorey','pshorey'),
 ('639','','','blog','hi again! hope you like your site','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','637','','','1246975456','0','0','0','statement','pshorey','pshorey'),
 ('643','Horizon','illusions','gallery','','','','image643-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','125','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','2','1247023452','2009','7','7','gallery','',''),
 ('657','Form','illusions','gallery','','','','image657-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','125','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','7','1248405949','2009','7','23','gallery','',''),
 ('648','Grasp','illusions','gallery','','','','image648-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','5','1247023485','2009','7','7','gallery','',''),
 ('649','Half','illusions','gallery','','','','image649-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','1','1247023311','2009','7','7','gallery','',''),
 ('650','Held','illusions','gallery','','','','image650-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','180','10','0','0','0','1','20','0','0','0','0','0','','4','1247023472','2009','7','7','gallery','',''),
 ('651','Reverse','illusions','gallery','','','','image651-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','6','1247023526','2009','7','7','gallery','',''),
 ('652','Seen','illusions','gallery','','','','image652-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','11','1247023656','2009','7','7','gallery','',''),
 ('653','Tilt','illusions','gallery','','','','image653-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','200','200','200','200','10','1','1','1','1','20','20','20','20','20','0','','9','1247023590','2009','7','7','gallery','',''),
 ('654','Lift','illusions','gallery','','','','image654-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','125','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','10','1247023631','2009','7','7','gallery','',''),
 ('655','Reveal','illusions','gallery','','','','image655-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','125','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','3','1247023400','2009','7','7','gallery','',''),
 ('661','Frame','illusions','gallery','','','','image661-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','175','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','0','1248405697','2009','7','23','gallery','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `english_pages` 
-- 

INSERT INTO `english_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','placement asc','1','<p>This site is almost finished! Please <a onclick=\"return addthis_sendto()\" onmouseover=\"return addthis_open(this, \'\', \'http://www.juliaforrest.com\', \'Julia Forrest Photography\')\" onmouseout=\"addthis_close()\" href=\"http://www.addthis.com/bookmark.php?v=20\" target=\"_blank\">bookmark this page</a> and come back real soon.</p>','','','home','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','','	    ','','Login','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','gallery','gallery','2','placement asc','1','','','','gallery','','','','1240361394'),
 ('57','resume','blog','3','placement asc','1','<p>&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; My name is Julia Forrest  and I am a Brooklyn based artist. I recently graduated from Hartford Art school with a BFA in fine art photography. Surrounded by the constant creativity in NY and only a subway ride away from any museum or gallery, I constantly involve myself in the art world. I work mostly in film and print all images myself in a darkroom I built within my apartment. My own art has always been my top priority in life and in this digital world, I will continue to work with old processing. Anything can simply be done in photoshop, I prefer to take the camera, a tool of showing reality, and experiment with what I can do within it. I create surreal environments, tricking the camera into what it sees.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Julia Forrest          (631)902-8705           Jforrest@artspaces.net           www.JuliaForrest.com</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Education:</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2009</p>\r\n<p style=\"margin-bottom: 0in;\">Hartford Art School, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Bachelor of Photography, GPA- 3.64, Magnum Cum Laude, Presidents List, Deans List</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Work Experience:</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2009-2010</p>\r\n<p style=\"margin-bottom: 0in;\">ROCKSTAR GAMES, New York, NY</p>\r\n<p style=\"margin-bottom: 0in;\">In Game Photography and Video (Lazlow/Supervisor)</p>\r\n<p style=\"margin-bottom: 0in;\">-responsible for taking screen captures of gameplay for use both in print and online campaigns</p>\r\n<p style=\"margin-bottom: 0in;\">-conceive of and execute the best-looking scenes and shots possible in a 3D environment</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-using editing programs such as Avid and ACDSee</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2006-2009</p>\r\n<p style=\"margin-bottom: 0in;\">USDAN FOR THE CREATIVE AND PERFORMING ARTS, Wheatly Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Digital Photography Assistant Teacher, (Lori Sklar/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught two classes monday-friday, ages 10-12 and 14-16</p>\r\n<p style=\"margin-bottom: 0in;\">-lessons on how to use your camera, composition, lighting studio, photoshop workflow,  and printing.</p>\r\n<p style=\"margin-bottom: 0in;\">-matted and hung student work for a gallery show at the end of the summer</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan.com Photography Editor</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-photographed students daily enjoying the art facility and working on projects.</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-edited, prepared, uploaded and arranged photographs on the website to impress future students.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007-2008</p>\r\n<p style=\"margin-bottom: 0in;\">HARTFORD ART SCHOOL PHOTOGRAPHY DEPARTMENT, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Photo Monitor for the B&amp;W and Color Darkrooms (Christine Dalenta/Technician)</p>\r\n<p style=\"margin-bottom: 0in;\">-prepared darkroom chemical setup, inkjet printers, and color darkroom for student use</p>\r\n<p style=\"margin-bottom: 0in;\">-maintained all lighting and printing equipment to hand out to students</p>\r\n<p style=\"margin-bottom: 0in;\">-assisted students with darkroom printing, adobe photoshop, and inkjet printing</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2008</p>\r\n<p style=\"margin-bottom: 0in;\">THE ART LEAUGE OF LONG ISLAND Huntington, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Teaching Assistant for Introductory Art Classes (Laura Emiliani/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught a wide range of art classes, ages 3-16</p>\r\n<p style=\"margin-bottom: 0in;\">-classes specialized in sculpture, ceramics, drawing, painting, illustration, and architecture</p>\r\n<p style=\"margin-bottom: 0in;\">-constantly prepared lesson plans with new project ideas. Never repeated the same project</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">UNIVERSITY OF HARTFORD West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Publicity and Programming Manager</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-organized, planned and put on all concerts and events for the university of hartford</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-compile, review and negotiate contract terms and language in performance agreements</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-maintained detailed status accounts and records of show confirmations, expenses, and deposits.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Skills:</p>\r\n<p style=\"margin-bottom: 0in;\">Black and White: 35mm and medium format camera, RC/Fiber</p>\r\n<p style=\"margin-bottom: 0in;\">Color: 35mm camera, photographic color theory, C-printing</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 4x5: Studio, Zone System and Field</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 8x10</p>\r\n<p style=\"margin-bottom: 0in;\">Digital: Photoshop workflow, Lightroom, HDR</p>\r\n<p style=\"margin-bottom: 0in;\">Non Silver Processes: Platinum/ Palladium</p>\r\n<p style=\"margin-bottom: 0in;\">Commercial Lighting: Studio, strobe, flood, ambient, tungsten, florescent`</p>\r\n<p style=\"margin-bottom: 0in;\">History of Photography: 1834 (Talbot &amp; Daguerre) to late 20th century</p>\r\n<p style=\"margin-bottom: 0in;\">Junior Seminar- Criticizing Photographs, Terry Barrett</p>\r\n<p style=\"margin-bottom: 0in;\">Senior Seminar: BFA Exhibition &amp; Professional Practices</p>\r\n<p style=\"margin-bottom: 0in;\">Koopman Chair with Jerry Spagnoli/ Aziz + Cucher</p>\r\n<p style=\"margin-bottom: 0in;\">Travel Photography: Sicily (Spring 2008)</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Group Exhibitions:</p>\r\n<p style=\"margin-bottom: 0in;\">2009</p>\r\n<p style=\"margin-bottom: 0in;\">My Long Island, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">BFA Senior Thesis Photography Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Goldfarb, Joseloff Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2008</p>\r\n<p style=\"margin-bottom: 0in;\">Sicily Photography, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">A Passion for Pixels, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan Faculty Show, Usdan for the Creative and Performing Arts,Wheatley Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">Free Play, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2006</p>\r\n<p style=\"margin-bottom: 0in;\">SQURL Art Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2005</p>\r\n<p style=\"margin-bottom: 0in;\">Foundations Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Gallery North Art Exhibit, Gallery North, Setauket, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2004</p>\r\n<p style=\"margin-bottom: 0in;\">Nita Elder Scholarship Art Exhibit, South Bay Art Association, Bellport, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Creative Expressions Artists Showcase, Ward Melville Gallery and Cultural Center, Stonybrook, NY</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">2003</p>\r\n<p style=\"margin-bottom: 0in;\">Mixed Media Exhibit, Baffa Art Gallery,  Sayville, NY</p>','','','Resume','','','','1250887383'),
 ('52','join','join','0','placement asc','hidden','<p>Get the latest news! Join the site.</p>','','','Join the mailinglist','','','','1245027739'),
 ('55','statement','blog','1','placement asc','1','','','','Artist Statement','','','','1246893299'),
 ('33','contact','contact','4','date desc','1','<p>Contact me, I\'ll reply soon.</p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Contact me','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292');

-- --------------------------------------------------------

-- 
-- Dumping data for table `english_users` 
-- 

INSERT INTO `english_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('2','pshorey','ms[-;r-m','paul','shorey','','pshorey@artspaces.net','2147483647','0','editor','yes'),
 ('3','demo','demo','demo','user','','','0','0','editor',''),
 ('5','ps','ms[-;r-m','','','','pshorey@gmail.com','0','','','yes');

-- --------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 1;

