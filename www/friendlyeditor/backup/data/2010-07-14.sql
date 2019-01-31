SET FOREIGN_KEY_CHECKS = 0;

-- 
-- Table structure for table `artspaces_items` 
-- 

DROP TABLE IF EXISTS `artspaces_items`;
CREATE TABLE `artspaces_items` (
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
`placement` int(11) DEFAULT '1000000000',
`date` int(11) NOT NULL,
`year` int(11),
`month` int(11),
`day` int(11),
`page` varchar(200) NOT NULL,
`user` varchar(200),
`postedby` varchar(200),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `text1`, `text2`, `text3`)
) ENGINE=MyISAM AUTO_INCREMENT=714;

-- --------------------------------------------------------

-- 
-- Table structure for table `artspaces_pages` 
-- 

DROP TABLE IF EXISTS `artspaces_pages`;
CREATE TABLE `artspaces_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=59;

-- --------------------------------------------------------

-- 
-- Table structure for table `artspaces_redirects` 
-- 

DROP TABLE IF EXISTS `artspaces_redirects`;
CREATE TABLE `artspaces_redirects` (
`id` int(11) unsigned NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7;

-- --------------------------------------------------------

-- 
-- Table structure for table `artspaces_users` 
-- 

DROP TABLE IF EXISTS `artspaces_users`;
CREATE TABLE `artspaces_users` (
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
-- Table structure for table `ayurvedic_items` 
-- 

DROP TABLE IF EXISTS `ayurvedic_items`;
CREATE TABLE `ayurvedic_items` (
`id` int(11) unsigned NOT NULL auto_increment,
`name` varchar(200) NOT NULL,
`subtitle` varchar(500),
`category` varchar(500),
`text` text,
`image1` varchar(500),
`image2` varchar(500),
`image3` varchar(500),
`image4` varchar(500),
`image5` varchar(500),
`caption` varchar(500),
`keywords` text,
`description` text,
`price` int(11),
`placement` int(11),
`date` int(11) NOT NULL,
`year` int(11),
`month` int(11),
`day` int(11),
`page` varchar(200) NOT NULL,
`user` varchar(200),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `text`, `keywords`, `description`)
) ENGINE=MyISAM AUTO_INCREMENT=528;

-- --------------------------------------------------------

-- 
-- Table structure for table `ayurvedic_pages` 
-- 

DROP TABLE IF EXISTS `ayurvedic_pages`;
CREATE TABLE `ayurvedic_pages` (
`id` int(11) unsigned NOT NULL auto_increment,
`name` varchar(200) NOT NULL,
`type` varchar(200) DEFAULT 'text' NOT NULL,
`placement` int(11) NOT NULL,
`orderby` varchar(200) DEFAULT 'placement asc' NOT NULL,
`menu` varchar(200) DEFAULT '1' NOT NULL,
`text1` text,
`text2` text,
`style` text,
`bgimage` text,
`date` int(11),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `text1`, `text2`)
) ENGINE=MyISAM AUTO_INCREMENT=39;

-- --------------------------------------------------------

-- 
-- Table structure for table `ayurvedic_redirects` 
-- 

DROP TABLE IF EXISTS `ayurvedic_redirects`;
CREATE TABLE `ayurvedic_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

-- --------------------------------------------------------

-- 
-- Table structure for table `ayurvedic_users` 
-- 

DROP TABLE IF EXISTS `ayurvedic_users`;
CREATE TABLE `ayurvedic_users` (
`id` int(11) unsigned NOT NULL auto_increment,
`username` varchar(100) NOT NULL,
`password` varchar(100) NOT NULL,
`firstname` varchar(100),
`lastname` varchar(100),
`middlename` varchar(100),
`email` varchar(100),
`phone` int(11),
`date` int(11),
`editor` varchar(50),
`mailer` varchar(50),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`firstname`, `lastname`)
) ENGINE=MyISAM AUTO_INCREMENT=4;

-- --------------------------------------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=709;

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
) ENGINE=MyISAM AUTO_INCREMENT=61;

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
) ENGINE=MyISAM AUTO_INCREMENT=3;

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
) ENGINE=MyISAM AUTO_INCREMENT=25;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlye_items` 
-- 

DROP TABLE IF EXISTS `friendlye_items`;
CREATE TABLE `friendlye_items` (
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
`placement` int(11) DEFAULT '1000000000',
`date` int(11) NOT NULL,
`year` int(11),
`month` int(11),
`day` int(11),
`page` varchar(200) NOT NULL,
`user` varchar(200),
`postedby` varchar(200),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `text1`, `text2`, `text3`)
) ENGINE=MyISAM AUTO_INCREMENT=716;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlye_pages` 
-- 

DROP TABLE IF EXISTS `friendlye_pages`;
CREATE TABLE `friendlye_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=59;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlye_redirects` 
-- 

DROP TABLE IF EXISTS `friendlye_redirects`;
CREATE TABLE `friendlye_redirects` (
`id` int(11) unsigned NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlye_users` 
-- 

DROP TABLE IF EXISTS `friendlye_users`;
CREATE TABLE `friendlye_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=8;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlyp_items` 
-- 

DROP TABLE IF EXISTS `friendlyp_items`;
CREATE TABLE `friendlyp_items` (
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
`placement` int(11) DEFAULT '1000000000',
`date` int(11) NOT NULL,
`year` int(11),
`month` int(11),
`day` int(11),
`page` varchar(200) NOT NULL,
`user` varchar(200),
`postedby` varchar(200),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `text1`, `text2`, `text3`)
) ENGINE=MyISAM AUTO_INCREMENT=693;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlyp_pages` 
-- 

DROP TABLE IF EXISTS `friendlyp_pages`;
CREATE TABLE `friendlyp_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=59;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlyp_redirects` 
-- 

DROP TABLE IF EXISTS `friendlyp_redirects`;
CREATE TABLE `friendlyp_redirects` (
`id` int(11) unsigned NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16;

-- --------------------------------------------------------

-- 
-- Table structure for table `friendlyp_users` 
-- 

DROP TABLE IF EXISTS `friendlyp_users`;
CREATE TABLE `friendlyp_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=10;

-- --------------------------------------------------------

-- 
-- Table structure for table `handmadeb_items` 
-- 

DROP TABLE IF EXISTS `handmadeb_items`;
CREATE TABLE `handmadeb_items` (
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
) ENGINE=MyISAM AUTO_INCREMENT=708;

-- --------------------------------------------------------

-- 
-- Table structure for table `handmadeb_pages` 
-- 

DROP TABLE IF EXISTS `handmadeb_pages`;
CREATE TABLE `handmadeb_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=57;

-- --------------------------------------------------------

-- 
-- Table structure for table `handmadeb_redirects` 
-- 

DROP TABLE IF EXISTS `handmadeb_redirects`;
CREATE TABLE `handmadeb_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

-- --------------------------------------------------------

-- 
-- Table structure for table `handmadeb_users` 
-- 

DROP TABLE IF EXISTS `handmadeb_users`;
CREATE TABLE `handmadeb_users` (
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

-- 
-- Table structure for table `juliaforr_items` 
-- 

DROP TABLE IF EXISTS `juliaforr_items`;
CREATE TABLE `juliaforr_items` (
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
) ENGINE=MyISAM AUTO_INCREMENT=709;

-- --------------------------------------------------------

-- 
-- Table structure for table `juliaforr_pages` 
-- 

DROP TABLE IF EXISTS `juliaforr_pages`;
CREATE TABLE `juliaforr_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=61;

-- --------------------------------------------------------

-- 
-- Table structure for table `juliaforr_redirects` 
-- 

DROP TABLE IF EXISTS `juliaforr_redirects`;
CREATE TABLE `juliaforr_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3;

-- --------------------------------------------------------

-- 
-- Table structure for table `juliaforr_users` 
-- 

DROP TABLE IF EXISTS `juliaforr_users`;
CREATE TABLE `juliaforr_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=24;

-- --------------------------------------------------------

-- 
-- Table structure for table `mauriceanthonyent_items` 
-- 

DROP TABLE IF EXISTS `mauriceanthonyent_items`;
CREATE TABLE `mauriceanthonyent_items` (
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
) ENGINE=MyISAM AUTO_INCREMENT=709;

-- --------------------------------------------------------

-- 
-- Table structure for table `mauriceanthonyent_pages` 
-- 

DROP TABLE IF EXISTS `mauriceanthonyent_pages`;
CREATE TABLE `mauriceanthonyent_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=61;

-- --------------------------------------------------------

-- 
-- Table structure for table `mauriceanthonyent_redirects` 
-- 

DROP TABLE IF EXISTS `mauriceanthonyent_redirects`;
CREATE TABLE `mauriceanthonyent_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3;

-- --------------------------------------------------------

-- 
-- Table structure for table `mauriceanthonyent_users` 
-- 

DROP TABLE IF EXISTS `mauriceanthonyent_users`;
CREATE TABLE `mauriceanthonyent_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=24;

-- --------------------------------------------------------

-- 
-- Table structure for table `paulshore_items` 
-- 

DROP TABLE IF EXISTS `paulshore_items`;
CREATE TABLE `paulshore_items` (
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
`placement` int(11) DEFAULT '1000000000',
`date` int(11) NOT NULL,
`year` int(11),
`month` int(11),
`day` int(11),
`page` varchar(200) NOT NULL,
`user` varchar(200),
`postedby` varchar(200),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`name`, `text1`, `text2`, `text3`)
) ENGINE=MyISAM AUTO_INCREMENT=704;

-- --------------------------------------------------------

-- 
-- Table structure for table `paulshore_pages` 
-- 

DROP TABLE IF EXISTS `paulshore_pages`;
CREATE TABLE `paulshore_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=80;

-- --------------------------------------------------------

-- 
-- Table structure for table `paulshore_redirects` 
-- 

DROP TABLE IF EXISTS `paulshore_redirects`;
CREATE TABLE `paulshore_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

-- --------------------------------------------------------

-- 
-- Table structure for table `paulshore_users` 
-- 

DROP TABLE IF EXISTS `paulshore_users`;
CREATE TABLE `paulshore_users` (
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
`url` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21;

-- --------------------------------------------------------

-- 
-- Table structure for table `philippem_items` 
-- 

DROP TABLE IF EXISTS `philippem_items`;
CREATE TABLE `philippem_items` (
`id` int(10) unsigned NOT NULL auto_increment,
`name` text NOT NULL,
`category` text,
`type` varchar(200) NOT NULL,
`text1` text,
`text2` text,
`text3` text,
`keywords` text,
`description` text,
`image1` text,
`image2` text,
`image3` text,
`image4` text,
`image5` text,
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
`price1` int(10),
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
`placement` int(10) unsigned,
`date` int(10) NOT NULL,
`year` int(11),
`month` int(11),
`day` int(11),
`page` text NOT NULL,
`user` text,
`postedby` varchar(200),
  PRIMARY KEY  (`id`),
  FULLTEXT `description` (`text1`)
) ENGINE=MyISAM AUTO_INCREMENT=801;

-- --------------------------------------------------------

-- 
-- Table structure for table `philippem_pages` 
-- 

DROP TABLE IF EXISTS `philippem_pages`;
CREATE TABLE `philippem_pages` (
`id` int(10) unsigned NOT NULL auto_increment,
`name` text NOT NULL,
`placement` int(11) NOT NULL,
`orderby` varchar(200) NOT NULL,
`type` text NOT NULL,
`menu` text NOT NULL,
`text1` text,
`text2` text,
`text3` text,
`title1` text,
`title2` text,
`title3` text,
`style` text,
`date` int(11),
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41;

-- --------------------------------------------------------

-- 
-- Table structure for table `philippem_redirects` 
-- 

DROP TABLE IF EXISTS `philippem_redirects`;
CREATE TABLE `philippem_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

-- --------------------------------------------------------

-- 
-- Table structure for table `philippem_users` 
-- 

DROP TABLE IF EXISTS `philippem_users`;
CREATE TABLE `philippem_users` (
`id` int(10) unsigned NOT NULL auto_increment,
`username` text NOT NULL,
`password` text NOT NULL,
`firstname` text,
`lastname` text,
`middlename` text,
`email` text,
`phone` int(10),
`date` int(11),
`role` varchar(50),
`mail` varchar(50),
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13;

-- --------------------------------------------------------

-- 
-- Table structure for table `purplelan_items` 
-- 

DROP TABLE IF EXISTS `purplelan_items`;
CREATE TABLE `purplelan_items` (
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
) ENGINE=MyISAM AUTO_INCREMENT=752;

-- --------------------------------------------------------

-- 
-- Table structure for table `purplelan_pages` 
-- 

DROP TABLE IF EXISTS `purplelan_pages`;
CREATE TABLE `purplelan_pages` (
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
) ENGINE=MyISAM AUTO_INCREMENT=61;

-- --------------------------------------------------------

-- 
-- Table structure for table `purplelan_redirects` 
-- 

DROP TABLE IF EXISTS `purplelan_redirects`;
CREATE TABLE `purplelan_redirects` (
`id` int(11) NOT NULL auto_increment,
`page` varchar(200),
`redirect` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1;

-- --------------------------------------------------------

-- 
-- Table structure for table `purplelan_users` 
-- 

DROP TABLE IF EXISTS `purplelan_users`;
CREATE TABLE `purplelan_users` (
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
) ENGINE=MyISAM AUTO_INCREMENT=9;

-- --------------------------------------------------------

-- 
-- Dumping data for table `artspaces_items` 
-- 

INSERT INTO `artspaces_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('638','','','gallery','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246974687','0','0','0','gallery','pshorey','pshorey'),
 ('639','','','gallery','hi again! hope you like your site','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246975456','0','0','0','gallery','pshorey','pshorey'),
 ('648','Custom Shopping Cart','gallery','gallery','<p>Your&nbsp;site will&nbsp;come&nbsp;with an&nbsp;integrated shopping cart. Dont  rely on Paypal\'s or Google\'s shopping cart, that make the visitor  switch between your site and theirs. Instead, your visitor stays on  your site the whole time, and is then forwarded to Paypal, Google, C20,  or your own Merchant Account. Also, sell different sizes or variations  of the same item, with a different image, video, and price for each.</p>','<p><br /> Example: <a href=\"http://www.friendlyeditor.com/tutorials\" target=\"_blank\">www.handmadebylaura.com/gallery</a> (buy a product, and the shopping cart comes up)</p>','','image648-1.jpg','','','','','','','','','','your visitor stays on your site the whole time, and is then forwarded to Paypal, Google, or C20...','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','3','1246983546','2009','7','7','features','',''),
 ('649','Video hosting','gallery','gallery','<p>Upload videos to better illustrate your articles, show better  views of your products, and to better communicate with your audience.  Even add more than one video with just a click of a button.</p>','<p>Example: <a href=\"http://www.friendlyeditor.com/tutorials\" target=\"_blank\">www.paulshorey.com/media arts</a> (use the login link at the bottom to preview how easy it is to upload videos)</p>\r\n<p>&nbsp;</p>','','image649-1.jpg','','','','','','','','','','Upload videos to better illustrate your articles, show better views of your products...','','','','','0','180','180','180','180','0','1','1','1','1','0','0','0','0','0','0','','4','1246983911','2009','7','7','features','',''),
 ('650','Custom Design and Graphics','gallery','gallery','<p>A unique design for your unique online identity,  with a custom layout and custom graphics. Want to include your logo,  photos or graphics into the design? Just upload them when you  submit your order, and I\'ll integrate them into the design. Your site can have custom graphics, patterns and  illustrations like in <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a>, or can remain plain with minimal graphics such as <a href=\"http://www.juliaforrest.com\" target=\"_blank\">www.juliaforrest.com</a>.</p>','<p>Example: <a href=\"http://www.handmadebylaura.com/\" target=\"_blank\">www.handmadebylaura.com</a> (appears to be on top of handmade paper).</p>','','image650-1.jpg','','','','','','','','','','A unique design for your unique online identity...','','','','','0','0','0','0','180','0','0','0','0','1','0','0','0','0','0','0','','0','1246982053','2009','7','7','features','',''),
 ('652','Mailinglist','gallery','gallery','<p>Your visitors can instantly join your mailinglist, then you  can&nbsp;send them all emails from a single form. Add text styles, tables,  images, media, even copy and paste from microsoft word. Its easy. Try this and other tools at <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a>.</p>','<p><br /> Example: <a href=\"http://www.friendlyeditor.com/tutorials\" target=\"_blank\">www.handmadebylaura.com/join</a> (visitors will be able to join your mailinglist from any page)</p>','','image652-1.jpg','','','','','','','','','','Your visitors can instantly join your mailinglist, then you can send them all emails from a single form...','','','','','0','180','180','180','180','0','1','1','1','1','0','0','0','0','0','0','','5','1246984127','2009','7','7','features','',''),
 ('653','Unlimited Pages and Entries','gallery','gallery','<p>You\'ll get unlimited pages with your choice of layouts. I\'ll create for you the \"home\", \"contact\", \"shoppingcart\", \"join\", and three others, \"blog\", \"gallery\" and  \"products\" for example. You then create unlimited pages from  each layout, with unlimited articles and categories on each new page.</p>','<p><br /> Example: <a href=\"http://www.paulshorey.com/photo\" target=\"_blank\">this site</a> (\"gallery\" and \"features\" pages share the same layout)</p>','','image653-1.jpg','','','','','','','','','','','','','','','0','200','200','200','200','0','1','1','1','1','0','20','20','20','20','0','','2','1246983821','2009','7','7','features','',''),
 ('654','Easy Site Manager','gallery','gallery','<p>I start you off with a completed site. When time comes to add  new articles, products, or pages, you can login and easily edit any  page. You can also add and sort pages and articles. Manage  mailinglists, add products, edit stylesheets, etc. There are a lot of tools, but dont worry, I\'ll walk you through everything and you\'ll be editing your site like a pro.</p>\r\n<p>Or just tell me what to change, and for an extra $30/hr, I\'ll manage your site.</p>','<p>Visit: <a href=\"http://www.friendlyeditor.com/\" target=\"_blank\">www.friendlyeditor.com</a> for tutorials and support (try editing this site, click the login link at the bottom)</p>','','image654-1.jpg','','','','','','','','','','...easily edit any page. You can also add and sort pages and articles.','','','','','0','200','200','200','200','0','1','1','1','1','0','20','20','20','20','0','','1','1246983440','2009','7','7','features','',''),
 ('677','Lanas Art Gallery','gallery','gallery','<p>Svetlana is a very talented artist, and has some really impressive murals and theater props. We tried to keep the site design warm and inviting, with warm tones and floral motifs.</p>','','','image677-1.jpg','','','','','','','','','','Svetlana is a very talented artist, and has some really impressive murals and theater props.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.lanasgallery.com','5','1122647619','2005','7','29','gallery','',''),
 ('678','Hartford Yearbook','gallery','gallery','<p>The University of Hartford Yearbook site. Now students can order their yearbooks online, with several options. I made this while going to school at the Hartford Art School, and while working as the Yearbook\'s Layout Editor.</p>','','','image678-1.jpg','','','','','','','','','','The University of Hartford Yearbook site...','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.yearbook.hartford.edu','7','1154185655','2006','7','29','gallery','',''),
 ('679','Handmade by Laura','gallery','gallery','<p>A ceramics gallery with some fancy graphics. The titles are dynamically-generated brush scripts. The background is parchment paper with a deckled edge motif. Mouseover the dollar sign, and more details fade in, letting you purchase the work. Checkout with Paypal or Google cart.</p>','','','image679-1.jpg','','','','','','','','','','A simple gallery website, with an artistic deckled edge motif.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.handmadebylaura.com','2','1246284961','2009','6','29','gallery','',''),
 ('680','Julia Forrest Photo','gallery','gallery','<p>Julia Forrest black &amp; white photography. Some striking images that dont need much, just a simple border and a black matte paper background. An ecommerce site with a built-in shopping cart. At checkout, the visitor can choose the desired size and frame of the image.</p>','','','image680-1.jpg','','','','','','','','','','Very minimal, but still allows for ecommerce. At checkout, the visitor can choose the desired size and frame of the image.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.juliaforrest.com','3','1243606589','2009','5','29','gallery','',''),
 ('681','Ayurvedic Resources','gallery','gallery','<p>A collection of useful articles, products, services, and events from Eastern Vedas. The first site to features animated titles as links. The herbal greens and warm tones make the site look in-touch with nature.</p>','','','image681-1.jpg','','','','','','','','','','A collection of greens and warm tones, for a site in touch with nature.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.ayurvedic-resources.artspaces.net','0','1238301877','2009','3','29','gallery','',''),
 ('682','PhilippeMay','gallery','gallery','<p>An edgy tribal site for a champion downhill skiier. Features tribal titles, a border made of tribal tatoo designs and animated ghost eagles flying downhill with him on the homepage.</p>','','','image682-1.jpg','','','','','','','','','','An edgy tribal site for a champion downhill skiier...','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.philippemay.com','4','1227972081','2008','11','29','gallery','',''),
 ('683','Jewelry by Tracie','gallery','gallery','<p>Tracie\'s works really speak for themselves. We didnt want a cluttered website to get in the way, but still needed to add some style and funk. So, I used a light background, with the elegant but stylish Zapfino font and complementary orange accents.</p>','','','image683-1.jpg','','','','','','','','','','They\'re really one of a kind works of art. So, we didnt want a cluttered website to get in the way of that.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.jewelrybytracie.com','1','1225292828','2008','10','29','gallery','',''),
 ('684','Quickchick','gallery','gallery','<p>Tracie is a very quick chick, a world champion downhill skiier. This site is a portal for her news, sponsors, and fans. Features a gallery page, and an archive of her racing history.</p>','','','image684-1.jpg','','','','','','','','','','...a world champion downhill skiier. This site is a portal for her news, sponsors, and fans.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','www.quickchick.com','6','1222698556','2008','9','29','gallery','',''),
 ('691','Artspaces.net','gallery','gallery','<p>A showcase of my past web publications, this site allows you to contact me, send a pricequote, and submit an orderform with file uploads and special options. Its the start of a great thing!</p>','','','image691-1.jpg','','','','','','','','','','this site allows you to contact me, send a pricequote, and submit an orderform with file uploads and special options.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.artspaces.net','9','1247929694','2009','7','18','gallery','',''),
 ('692','Friendly Editor','gallery','gallery','<p>A user-friendly site manager I built and currently include with all my websites. It allows someone with no previous web experience to publish pages, add products, send mailinglists, upload videos, even drag/drop articles to their new order on a page.</p>','','','image692-1.jpg','','','','','','','','','','...add products, send mailinglists, upload videos, even drag/drop articles to their new order on a page.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.friendlyeditor.coom','10','1248706598','2009','7','27','gallery','',''),
 ('693','Friendly Publisher','gallery','gallery','<p>The Friendly Publisher is a part of the User-Friendly CMS, a content management system I built and currently use to publish all my sites. Better than Blogger, Wordpress, or Joomla, it allows designers to quickly publish unique and creative websites.</p>','','','image693-1.jpg','','','','','','','','','','...a content management system I built and currently use to publish all my sites.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.friendlypublisher.com','11','1249433176','2009','8','4','gallery','',''),
 ('694','Design by Paul Shorey','gallery','gallery','<p>After publishing sites for others, I finally have my own portfolio! This is very exciting, a place to show my past work, resume, and project proposals. Visit to see my photo and media arts work.</p>','','','image694-1.jpg','','','','','','','','','','Visit to see my photo and media arts work.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.paulshorey.com','8','1250729132','2009','8','19','gallery','',''),
 ('695','Slideshows and animations','gallery','gallery','<p>Your site can have custom slideshows, animations, animated buttons  or images, and any kind of dynamic content you or I can think of. It can be loud and sublime, or subtle and sophisticated, all depends on your audience.</p>','<p>Examples: <a href=\"http://www.philippemay.com/\" target=\"_blank\">www.philippemay.com</a> (flying eagles), <a href=\"http://www.handmadebylaura.com/\" target=\"_blank\">www.handmadebylaura.com</a> (slideshow), <a href=\"http://www.juliaforrest.com/gallery\" target=\"_blank\">www.juliaforrest.com/gallery</a> (animated scrollbar)</p>','','image695-1.jpg','','','','','','','','','','...any kind of dynamic content you or I can think of.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','6','1249921788','2009','8','10','features','',''),
 ('696','Search engine optimization','gallery','gallery','<p>Your site will be built especially for search-engine-marketing, with titles that display the most relevant information, followed by relevant bodies of text - your site will also have a dynamic title bar, page-centric meta tags, image captions, product captions, and other search-engine goodies to make your site show up on Web, Image and Products searches.<br /><br /></p>\r\n<div id=\"_mcePaste\" style=\"overflow: hidden; position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px;\">\r\n<p>the site will be built especially for search-engine-marketing, with&nbsp; titles that display the most relevant information, followed by bodies&nbsp; of text - your site will also have a dynamic title bar and meta tags to&nbsp; make Google notice you right away</p>\r\n</div>','','','image696-1.jpg','','','','','','','','','','...will be built especially for search-engine-marketing...','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','7','1249922316','2009','8','10','features','',''),
 ('697','Animated titles','gallery','gallery','<p>Your page and article titles can be in any font or style, and can even contain links. Unlike other websites, you wont have to pay your designer to update the image when adding or changing a title. Just edit each title or caption in your <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">Friendly Editor</a>.</p>','','','image697-1.jpg','','','','','','','','','','...page and article titles can be in any font or style, and can even contain links.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','8','1249922598','2009','8','10','features','',''),
 ('698','Search-engine-friendly urls','gallery','gallery','<p>Search engines and your visitors can access your pages with clear and simple urls:</p>\r\n<p>http:// www.domain.com / page / category / item, or</p>\r\n<p>http:// www.domain.com / page / year / month / day</p>','','','image698-1.jpg','','','','','','','','','','Search engines and your visitors can access your pages with clear and simple urls.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','9','1249923314','2009','8','10','features','',''),
 ('699','HTML editor with file uploads','gallery','gallery','<p>Edit your articles as easily as typing into a word document, even add images and media.</p>','','','image699-1.jpg','','','','','','','','','','edit your articles as easily as typing into a word document, even add images','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','10','1249923446','2009','8','10','features','',''),
 ('700','Custom contact and price forms','gallery','gallery','<p>Have complicated forms with file attatchments and your choice of questions. Or have simple feedback forms on each page to let your users share their opinions.</p>','','','image700-1.jpg','','','','','','','','','','have complicated forms with file attatchments and your choice of questions','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','11','1249923600','2009','8','10','features','',''),
 ('705','1','gallery','home','','','','image705-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050363','2009','8','12','home','',''),
 ('702','Site editor support','gallery','gallery','<p>Visit <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a> for help and support using your new site editor.</p>','','','image702-1.jpg','','','','','','','','','','visit www.friendlyeditor.com for help and support using your new site editor','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','13','1249923661','2009','8','10','features','',''),
 ('703','And a reliable and friendly designer','gallery','gallery','<p>I\'m not a large company that thinks of you as a number. I\'ll help  you right away with every question, problem or concern. Just contact me  below anytime, go to <a href=\"http://www.friendlyeditor.com/support\" target=\"_blank\">www.friendlyeditor.com/support</a>,  or contact me by phone or email. I\'ll be happy to talk to you about  improvements, business plans, your products, the internet, or just  chat.</p>','','','image703-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','14','1249941931','2009','8','10','features','',''),
 ('706','2','gallery','home','','','','image706-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050377','2009','8','12','home','',''),
 ('707','3','gallery','home','','','','image707-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050392','2009','8','12','home','',''),
 ('708','4','gallery','home','','','','image708-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050406','2009','8','12','home','',''),
 ('709','5','gallery','home','','','','image709-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050418','2009','8','12','home','',''),
 ('710','6','gallery','home','','','','image710-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050965','2009','8','12','home','',''),
 ('711','7','gallery','home','','','','image711-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050455','2009','8','12','home','',''),
 ('712','8','gallery','home','','','','image712-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1250050859','2009','8','12','home','',''),
 ('713','The Urban Minute','gallery','gallery','<p>A community-powered newspaper site where you can follow the latest news, events, and job listings. Add a news feed, or login and manage your own newspaper pages with your links arranged on the page in your order.</p>','','','image713-1.jpg','','','','','','','','','','A community-powered newspaper site where you can follow the latest news, events, and job listings.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.theurbanminute.com','1000000000','1250556480','2009','8','17','gallery','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `artspaces_pages` 
-- 

INSERT INTO `artspaces_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','date desc','1','<p>Creative design and publicity by <a href=\"http://www.paulshorey.com/\" target=\"_blank\">Paul Shorey</a>.</p>','<p>Your site will be custom designed for your unique needs. <br />Show your work, interact with your audience, expand your <br />brand, sell your products, and manage your online identity. <br />I&rsquo;m a local designer, and stand behind my work. We can <br />meet in person or over the phone to discuss your plans...</p>','<p>With&nbsp;the <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">FriendlyEditor</a> <sup>tm</sup> - <br />Add pages articles and products</p>\r\n<p>without leaving the site. Login,</p>\r\n<p>and editor buttons and toolbar</p>\r\n<p>will popup. Use these tools to</p>\r\n<p>edit texts, add videos, create</p>\r\n<p>slideshows, and send mailinglists.</p>','$899 - custom site, domain & hosting','Show Manage and Sell','Easily edit your site','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','<p>Log in to this website as if you were managing your own site.</p>\r\n<p>Your trial account: username: \"visitor\" password: \"pass\".</p>','<p>Once logged in, go to any page to edit or add content.</p>\r\n<p>You can preview the tools, but cant make any changes.</p>','','Login','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','features','gallery','2','placement asc','1','<p>Your site will include many exciting features, like unlimited pages and products, shopping cart, mailing list, visitor comments or ratings, user feedback, search-engine-optimization, animated titles, etc.</p>','<p>Your site will come with all the features listed here. Looking for something else? Just ask me below, or complete the <a href=\"pricequote\">free pricequote</a>, and I\'ll get back to you with the price and timeframe. If you can imagine it, I can probably create it!</p>','','Your Site Features','What\'s Included','','','1240361394'),
 ('52','join','join','0','placement asc','hidden','<p><strong>Get the latest news! Join the site.</strong></p>','','','Join the mailinglist','','','','1245027739'),
 ('55','gallery','gallery','1','date desc','1','<p>These are my previously-published sites. I try to make each site better than the one before it. I want you to love your new site and be proud to show it off, but most importantly, I want your clients to be intrigued by your work and be encouraged to buy it.</p>','<p>Here are sites I\'ve published to date. Each site has come out better than the last with a better design and more advanced functionality. Your site will be state of the art, and will include many advanced and dynamic features.<a href=\"http://www.artspaces.net/features\"></a></p>\r\n<div id=\"_mcePaste\" style=\"overflow: hidden; position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px;\">\r\n<p><strong>Easy site manager</strong></p>\r\n<span>I start you off with a completed website. When time comes to add new articles, products, or pages, you can login and easily edit any page. You can also add and sort pages and articles. Manage mailinglists, add products, edit stylesheet</span></div>','','Web Design Gallery','Recently Published','','','1246893299'),
 ('33','contact','contact','2','date desc','2','<p>Contact me, I\'ll reply soon.</p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Contact me','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('57','process','pricequote','3','placement asc','1','<p><strong><img style=\"float:left;padding:0 18px 3px 0;\" src=\"images/meeting.jpg\" alt=\"\" width=\"233\" height=\"155\" /></strong></p>\r\n<p><strong>1.</strong> Fill out the pricequote below to get started. I\'ll contact to you with details and design ideas. We\'ll discuss your stylistic preferences and business plans.</p>\r\n<p><strong>2.</strong> You\'ll receive a link to the order page, where you can print your&nbsp;contract, pay the 50% deposit, and upload some images.</p>\r\n<p><strong>3.</strong> I\'ll design and redesign the site untill you love it! Then, I\'ll publish it on its own domain name and hosting account, and help you manage it.</p>','<p>I\'ll help you from start to finish. Just let me know what you have in mind, and I\'ll take care of the rest. I\'ll ask your feedback at every step to create a site that\'s perfect for your business.</p>\r\n<p class=\"margintop\">For $899, your site can have 5 unique layouts, unlimited pages and items, and all the features from the <a href=\"features\">features</a> page. If you would like additional work done, please specify the details below.</p>','','The Design Process','Free Pricequote','Design by Paul Shorey','','1248731459'),
 ('58','policy','text','0','placement asc','2','<p>I\'m a local designer, have pride in my work, and will be there for you from the start, whenever you need me. I try to make each site better than the last. This way, my business can grow as well as yours.</p>\r\n<p>&nbsp;</p>\r\n<h1>The Design Process</h1>\r\n<p><strong>I.</strong> Fill out the <a href=\"pricequote\" target=\"_self\">no-obligation pricequote</a> to get started. I\'ll contact to you with details and design ideas. We\'ll discuss your stylistic preferences and business plans.</p>\r\n<p class=\"margintop\"><strong>II.</strong> You\'ll receive a link to the order page, where you can print your&nbsp;contract and pay the 50% deposit. I\'ll then get to work designing and redesigning your site.</p>\r\n<p class=\"margintop\"><strong>III.</strong> When you\'re happy with the design, I\'ll publish it on its own domain name and hosting account. Then we can discuss printed and web-based marketing for your site.</p>\r\n<p>&nbsp;</p>\r\n<h1>Our Contract</h1>\r\n<p><strong>I. Agreement</strong></p>\r\n<p>A work agreement between client and designer. By accepting the 50% deposit, the designer, Paul Shorey, agrees to be legally-bound by the terms of this contract. By paying the 50% deposit, the client also agrees to be bound by the terms of this contract. <a href=\"#contact\">Scroll down</a> to make this page printer-friendly.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>II. Design process</strong></p>\r\n<p>a. The designer, Paul Shorey, is bound to finish all work stated below in a timely manner.</p>\r\n<p>b. The designer will offer the client at least one unique design which meets the below requirements. If the client accepts the design, the site must be published within two weeks from the date acceptance.</p>\r\n<p>c. If rejected, the designer will submit another design, which meets the below requirements, no later than one week from the date of correspondence.</p>\r\n<p>d. If the designer proposes at least five unique designs which meet the below requirements, and the client is still not satisfied, the designer can void the contract by refunding the 50% deposit.</p>\r\n<p>e. If the designer has proposed at least ten unique designs which all meet the below requirements, the deposit becomes non-refundable, and the agreement between client and designer becomes void.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>III. Design requirements</strong></p>\r\n<p>a. These agreed upon requirements must be met each time the designer proposes a new design. They include everything listed on the website at the time the contract was printed or saved, as well as any additional services that the designer and client agreed upon through email or written communication.</p>\r\n<p>b. The design requirements which cannot be included in the design proposal (becase they can only be added on the server after the site is published) must be clearly explained to the client in detail, then executed exactly as described.</p>\r\n<p>c. For example, its impossible to include dynamic content before actually publishing the site, so if the designer wants to include a slideshow in a design, he will have to show the client a detailed image of the site design with the proposed slideshow and answer any of the clients questions about its function.</p>\r\n<p>&nbsp;</p>\r\n<p>d. The design requirements include the following, as well as any other services offered by the designer, agreed upon by the client, and included in the 50% deposit. The designer is bound to meet all requirements listed here, in email, or in printed conversation:</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>One year free unlimited hosting (as long as the client keeps a visible text link to the designer\'s site)</p>\r\n<p>&nbsp;</p>\r\n<p>Custom design and graphics (photography, illustrations, lines, shapes, and text modified in a graphics program, which were provided by the client or found on the internet at no cost - if the designer wishes to purchase additional photos or graphics for inclusion or manipulation, the designer can bill the client, with the client\'s written permission - the total being added to the remaining 50% of the client\'s balance)</p>\r\n<p>&nbsp;</p>\r\n<p>Easy site manager (a program where the client can update, add, or remove pages, posts, comments, users, backup/restore the site, and send mailinglists - without having to edit html or other site files)</p>\r\n<p>&nbsp;</p>\r\n<p>Unlimited pages and posts grouped into an unlimited number of categories (self-explanatory)</p>\r\n<p>&nbsp;</p>\r\n<p>Several unique page layouts which the client can apply to each page (including a \"home page\", \"login\", \"shopping cart\", and three others which may include \"gallery\", \"blog\", \"text\", \"products\", or other types)</p>\r\n<p>&nbsp;</p>\r\n<p>Custom shopping cart (i<span>f the client requests to sell items with a shopping cart, the designer will create a custom layout where visitors can change quantity or variant of the product they\'re ordering - the client will be able to change the prices, quantities, and add variations of their products using the site manager)<br /></span></p>\r\n<p>&nbsp;</p>\r\n<p>Video hosting (if the client requests it, video hosting and display will be provided in any of the page layouts)<span>&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p>Mailinglist (if the client requests it, a form will be added to any page layout, where visitors can register for the mailinglist - the client can then manage the users and send out emails to the subscribers - the subscribers will have the option to unsubscribe automatically)</p>\r\n<p>&nbsp;</p>\r\n<p>Search engine optimization (the site will be compatible with search-engine-marketing, with titles that display the most relevant information, followed by bodies of text - also including a dynamic title bar and meta tags which preview text from the page)</p>\r\n<p>&nbsp;</p>\r\n<p>Dynamic graphic titles (if requested, the site will have titles in any font, which the client can change using the site editor)</p>\r\n<p>&nbsp;</p>\r\n<p>Slideshows and slide pages (custom fading or transitioning effects for your images, slideshows, or pages)</p>\r\n<p>&nbsp;</p>\r\n<p>Search-engine-friendly URLs (either http://www.domain.com/page/category/item or http://www.domain.com/page/year/month/day)</p>\r\n<p>&nbsp;</p>\r\n<p>Html editor with file uploads (part of the site manager, allows the client to edit text and add styles, paragraph options, links, images, and media)</p>\r\n<p>&nbsp;</p>\r\n<p>Custom contact forms and pricequotes (visitor questionnairs with file attatchments and choice of questions)</p>\r\n<p>&nbsp;</p>\r\n<p>Site editor support (support for bugs and glitches at <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a>, site manager updates and patches, posted at <a href=\"http://www.friendlypublisher.com\" target=\"_blank\">www.friendlypublisher.com</a>)</p>\r\n<p>&nbsp;</p>\r\n<p>And a reliable and friendly designer (easy contact and next-day email support to the client by the designer - if the site malfunctions due to a fault in design, the designer must fix it at his own expense)</p>\r\n<div id=\"_mcePaste\" style=\"overflow: hidden; position: absolute; left: -10000px; top: 0px; width: 1px; height: 1px;\"><br />\r\n<p>&nbsp;</p>\r\nPricequotes - have complicated forms with file attatchments and your choice of questions</div>','','','My Policy','','','','1248782777');

-- --------------------------------------------------------

-- 
-- Dumping data for table `artspaces_redirects` 
-- 

INSERT INTO `artspaces_redirects` (`id`, `page`, `redirect`) VALUES ('6','pricequote','http://www.artspaces.net/process');

-- --------------------------------------------------------

-- 
-- Dumping data for table `artspaces_users` 
-- 

INSERT INTO `artspaces_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('2','pshorey','ms[-;r-m','paul','shorey','','pshorey@artspaces.net','2147483647','0','editor','yes'),
 ('3','demo','demo','demo','user','','','0','0','editor',''),
 ('5','ps','ms[-;r-m','','','','pshorey@gmail.com','0','0','','yes');

-- --------------------------------------------------------

-- 
-- Dumping data for table `ayurvedic_items` 
-- 

INSERT INTO `ayurvedic_items` (`id`, `name`, `subtitle`, `category`, `text`, `image1`, `image2`, `image3`, `image4`, `image5`, `caption`, `keywords`, `description`, `price`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`) VALUES ('512','AyurBeauty Natural Skin Care','“I call upon the herbs and plants with shoots, those with stalks, with branches and those derived from Gods, the ones that provide life to men.”  - Atharva Veda','skin care','<p>A unique blend of Ayurvedic herbs and clays that cleans and very gently exfoliates skin, reviving texture and tone of the skin, stimulating new cell growth and balancing oil production. For all skin types. Can be used as an everyday facial wash.</p>\r\n<p>100% Natural ingredients: aritha powder, multani mitti clay, arrowroot*, banslochan powder, dead sea clay, sandalwood*, rose petals*, lemon peel*, neem*. No chemical or artificial additives.</p>\r\n<p>*100% Organic</p>\r\n<p>Directions: For oily/normal skin: Take 1/3 -1/2 tsp of the blend, add a few drops of water or herbal tea (chamomile, calendula, or lavender) to make a paste (not too thin, not too thick). For dry skin you can substitute water with milk or yogurt. Using a circular motion, gently massage exfoliating mixture into the skin. Leave it on for 2-3 minutes. Rinse well with warm water. Then continue with your normal moisturizing skin routine (apply cream or facial oil).</p>\r\n<p><span style=\"color: #000000;\">For external use only. Avoid eye area.</span></p>\r\n<p>50-55 applications: 1.4 oz (40g)</p>\r\n<p>$20.00</p>\r\n<p>&nbsp;</p>','512-1.jpg','','','','','','','','20','','1238039189','2009','3','25','products',''),
 ('514','New Product','','oils','<p>A unique blend of grains, herbs and spices that acts as a gentle scrub to clear away ingrained impurities, dead cells and toxins from the pores leaving the skin feeling silky to touch. For all skin types.</p>\r\n<p>&nbsp;</p>\r\n<p>100% Natural ingredients: white kaolin clay, banslochan powder, oatmeal*, adzuki beans*, rice flour*, lemon peel powder*, chickpea flour*, neem*, turmeric*, fennel*, licorice root powder*, red sandalwood*, jasmine flowers*, rose petals*.</p>\r\n<p>No chemical or artificial additives.</p>\r\n<p>*100% Organic</p>\r\n<p>Directions: Mix 1-1 &frac12; teaspoon(s) of the powder with slightly warm water or milk. Stir into paste and gently massage it into clean, slightly damp skin with circular motions. Leave it on for 10-15minutes until it dries. Rinse off with warm water. Follow with your normal moisturizing skin routine (apply cream or facial oil). For Oily skin: use it 2-3 times a week; for Normal/Dry: 1-2 times a week.</p>\r\n<p>For external use only. Avoid eye area.</p>','514-1.jpg','','','','','','','','0','','1238073238','2009','3','26','products',''),
 ('515','KaphaSpice','','spices','<p>This item is coming soon. Please bookmark this page and check back soon!</p>','515-1.jpg','','','','','','','','0','','1238073315','2009','3','26','products',''),
 ('513','Cleansing  Exfoliating Facial Mixture','','skin care','<p>A unique blend of grains, herbs and spices that acts as a gentle scrub to clear away ingrained impurities, dead cells and toxins from the pores leaving the skin feeling silky to touch. For all skin types.</p>\r\n<p>100% Natural ingredients: white kaolin clay, banslochan powder, oatmeal*, adzuki beans*, rice flour*, lemon peel powder*, chickpea flour*, neem*, turmeric*, fennel*, licorice root powder*, red sandalwood*, jasmine flowers*, rose petals*.</p>\r\n<p>No chemical or artificial additives.</p>\r\n<p>*100% Organic</p>\r\n<p>Directions: Mix 1-1 &frac12; teaspoon(s) of the powder with slightly warm water or milk. Stir into paste and gently massage it into clean, slightly damp skin with circular motions. Leave it on for 10-15minutes until it dries.  Rinse off with warm water. Follow with your normal moisturizing skin routine (apply cream or facial oil). For Oily skin: use it 2-3 times a week; for Normal/Dry: 1-2 times a week.</p>\r\n<p>For external use only. Avoid eye area.</p>\r\n<p>2.5 oz (75g)</p>\r\n<p>$32.00</p>','513-1.jpg','','','','','','','','32','','1237125893','2009','3','15','products',''),
 ('527','faslfkdj','','articles','','','','','','','','','','0','','1239046590','2009','4','6','ayurveda',''),
 ('509','What is Ayurveda','“The goal of life is to make your heartbeat match the beat of the universe, to match your nature with Nature”.  - Joseph Campbell','articles','<p style=\"text-align: justify;\">Ayurveda is the most comprehensive and ancient healing science that originated in India and has been practiced for over 5000 years. It recognizes and emphasizes the body, mind and spirit interconnection while dealing with the promotion and maintenance of health.</p>\r\n<p style=\"text-align: justify;\">Ayurveda is the science of life (in the Sanskrit language: Ayur means \"Life\" and Veda means \"Knowledge, Spiritual Science\") that embraces and unites all aspects of a human being within the universal laws and principles of nature. Ayurveda is the art of healthy, harmonious and content leaving.</p>\r\n<p style=\"text-align: justify;\">Ayurveda seeks to restore the natural balance to the body, mind, and spirit. It creates vibrant health and longevity through pure foods, herbs, massage, body treatments, yoga, deep pranic breathing, and consistent daily routine that is in keeping with our unique constitution or dosha (Vata, Pitta, and Kapha).</p>\r\n<p style=\"text-align: justify;\">By keeping us physically healthy and emotionally stable, an Ayurvedic lifestyle allows us to focus our time and energies on enjoying this gift of life, to discover our true nature, and achieving our full potential as spiritual human beings.</p>','509-1.jpg','','','','','','','','0','1','1237126226','2009','3','15','ayurveda',''),
 ('516','PittaSpice','','spices','<p>Coming Soon</p>','516-1.jpg','','','','','','','','0','','1238073366','2009','3','26','products',''),
 ('517','Spice Gift Set','','spices','<p>Coming Soon</p>','517-1.jpg','','','','','','','','0','','1238073417','2009','3','26','products',''),
 ('518','Kapha Tea','','tea','','518-1.jpg','','','','','','','','0','','1238073453','2009','3','26','products',''),
 ('519','Tridosha','','spices','<p>coming soon</p>','519-1.jpg','','','','','','','','0','','1238073488','2009','3','26','products',''),
 ('520','Mind-Body Types','','articles','<p>Article Coming Soon</p>','520-1.jpg','','','','','','','','0','2','1238100078','2009','3','26','ayurveda',''),
 ('521','Ayurvedic Lifestyle','','articles','<p>Coming soon</p>','521-1.jpg','','','','','','','','0','3','1238076878','2009','3','26','ayurveda',''),
 ('522','The Healing Arts','','articles','<p>Article coming soon</p>','522-1.jpg','','','','','','','','0','4','1238100110','2009','3','26','ayurveda',''),
 ('523','some new link','','links','<p>coming soon</p>','523-1.jpg','','','','','','','','0','','1238250717','2009','3','28','links',''),
 ('524','test link','','links','<p>details coming soon</p>','524-1.jpg','','','','','','','','0','','1238682703','2009','4','2','links',''),
 ('525','new event','','events','<p>details coming soon</p>','525-1.jpg','','','','','','','','0','','1239287602','2009','4','9','events',''),
 ('526','another test event','','events','<p>coming soon</p>','526-1.jpg','','','','','','','','0','','1240583774','2009','4','24','events','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `ayurvedic_pages` 
-- 

INSERT INTO `ayurvedic_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `style`, `bgimage`, `date`) VALUES ('1','home','home','0','','1','<p><strong>Let it be a guide to lead you to find the information and items you seek to make your life healthier, happier, and complete. This site shares knowledge from the sages of the past applied to today&rsquo;s lifestyle and offers quality products that may assist you with your&nbsp;quest for a more natural path to&nbsp;health and well-being.</strong></p>','','						                        ','','0'),
 ('2','ayurveda','articles','1','placement asc','1','<p class=\"green\"><em>\"Our deepest fear is not that we are inadequate. Our deepest fear is that we are powerful beyond measure. It is our light, not our darkness that most frightens us. We ask ourselves, Who am I to be brilliant, gorgeous, talented, fabulous? Actually, who are you not to be? You are a child of God. Your playing small does not serve the world. There is nothing enlightened about shrinking so that other people won\'t feel insecure around you. We are all meant to shine, as children do. We were born to make manifest the glory of God that is within us. It\'s not just in some of us; it\'s in everyone. And as we let our own light shine, we unconsciously give other people permission to do the same. As we are liberated from our own fear, our presence automatically liberates others.\" - Marianne Williamson</em></p>\r\n<p class=\"green\" style=\"text-align: center;\"><a class=\"thickbox\" rel=\"shadowbox\" href=\"../images/namaste.png\"><img src=\"../images/namaste.png\" alt=\"\" width=\"240\" /></a></p>\r\n<h4 class=\"red\" style=\"text-align: center;\">NAMASTE</h4>\r\n<p class=\"green\" style=\"text-align: center;\">\"I honor and bow to the Divine Light in you which is also in me.\"</p>\r\n<p class=\"green\" style=\"text-align: center;\">&nbsp;&nbsp;</p>\r\n<p class=\"green\" style=\"text-align: left;\">In the East, \"Namaste\" is the greeting of great respect, recognizing and appreciating the Divine Light within all of creation, celebrating the oneness of all living things. With the palms of the hands put together before the heart in prayer position - the gesture of serenity and unity, accompanied by a slight bow, the humble salutation straight from the heart is equally offered to temple deities, teachers, family, friends, and all that is sacred to us.</p>\r\n<p>The Namaste greeting symbolizes returning to one\'s heart, inner Self, honoring and embracing the unity and wholeness with the world around us and within ourselves, thus opening the space for harmony and peace, health and happiness. Yet, by turning away from our true nature, by closing up and building shields around our hearts we are isolating ourselves from the Divine Light, creating darkness and disharmony that leads us to dissatisfactions, fears, sadness and disease.</p>\r\n<p>A spiritual healing science, Ayurveda, the \"Medicine of Gods\", emerged at the time of an auspicious assembly of \"holy great sages\"* who were inspired to find the proper way to eradicate diseases - the impediments to one\'s happy long life, well being and spiritual growth. With its mission to promote and sustain life, health and happiness by eliminating \"diseases of the past, present and future\"*, Ayurveda, through purification of body and mind, is meant to bring out the light of our higher Self and helps us to achieve our full potential as spiritual human beings.</p>\r\n<p>It is an honor and blessing to have the opportunity to learn, experience and continue the tradition that has been around for more than 5,000 years, the ancient wisdom of Ayurveda, that was passed onto us from the holy sages and has been kept alive since from generation to generation. I am thankful to all my teachers for sharing this sacred knowledge, their devotion and passion for Ayurveda. I am thankful to my family and my friends in Russia and in America for supporting and encouraging me to follow my path of the heart. And I am thankful to Ayurveda for guiding me and helping me to see, feel and experience Love and Light - the two essentials of a great gift that we call Life.</p>\r\n<p>Namaste!<br /><br />Svetlana Mika</p>\r\n<p>*Charaka Samhita - One of the major ancient texts on Ayurveda.</p>\r\n<p>&nbsp;</p>','','/* PAGE CSS FROM MYSQL */','/images/testimg.jpg','0'),
 ('3','nutrition','articles','2','placement asc','1','','','		        ','','0'),
 ('4','beauty','articles','3','','1','<h3>Ayurvedic Health and Beauty care Products</h3>\r\n<p><em>\"I call upon the herbs and plants with shoots, those with stalks, with branches and those derived from Gods, the ones that provide life to men.\" - </em>Atharva Veda</p>\r\n<p><a class=\"thickbox\" rel=\"shadowbox\" href=\"../images/prod9.jpg\"><img src=\"../images/prod9.jpg\" alt=\"\" width=\"240\" /></a></p>\r\n<p>Ayurveda creates vibrant health and longevity through pure foods, herbs, body treatments, yoga, deep pranic breathing, and consistent daily routine that is in keeping with our unique constitution or dosha (Vata, Pitta, and Kapha).</p>\r\n<p>Ayurvedic Resources offers health and beauty care products that are preservative free and made from 100% organic and all-natural ingredients. Our products contain the finest herbs, high quality spices, herbal powders, minerally rich purified clays, and oils traditionally used to bring and sustain healthy balance to the body, mind and soul. We do not use chemical or artificial additives.</p>\r\n<p>All our products are hand-crafted and made in small batches to ensure the premium quality and freshness. They are created with love and enchanted with special mantras and prayers following ancient Vedic traditions. To suit the individual needs of our clients, we also offer custom formulated products.</p>\r\n<p><a></a></p>\r\n<p>&nbsp;</p>','','','','0'),
 ('5','services','articles','5','','1','<h3>Services</h3>\r\n<p><em>\"I call upon the herbs and plants with shoots, those with stalks, with branches and those derived from Gods, the ones that provide life to men.\" - </em>Atharva Veda</p>\r\n<p><a class=\"thickbox\" rel=\"shadowbox\" href=\"../images/prod9.jpg\"><img src=\"../images/prod9.jpg\" alt=\"\" width=\"240\" /></a></p>\r\n<p>Services coming soon</p>','','										                                        ','','0'),
 ('31','products','products','4','','1','<h4 style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ayurvedic Health and Beauty Products</h4>\r\n<p class=\"green\" style=\"text-align: center;\"><em>\"I call upon the herbs and plants with shoots, those with stalks, with branches and those derived from Gods, the ones that provide life to men.\" - Atharva Veda</em></p>\r\n<p><a class=\"thickbox\" rel=\"shadowbox\" href=\"../images/Vatatea.jpg\"></a><a class=\"thickbox\" rel=\"shadowbox\" href=\"../images/products5.jpg\"></a></p>\r\n<p style=\"text-align: center;\"><img src=\"../images/products5.jpg\" alt=\"\" width=\"327\" height=\"236\" /></p>\r\n<p><br />Ayurveda creates vibrant health and longevity through pure foods, herbs, body treatments, yoga, deep pranic breathing, and consistent daily routine that is in keeping with our unique constitution or dosha (Vata, Pitta, and Kapha).</p>\r\n<p>Ayurvedic Resources offers health and beauty care products that are preservative free and made from 100% organic and all-natural ingredients. Our products contain the finest herbs, high quality spices, herbal powders, minerally rich purified clays, and oils traditionally used to bring and sustain healthy balance to the body, mind and soul. We do not use chemical or artificial additives.</p>\r\n<p>All our products are hand-crafted and made in small batches to ensure the premium quality and freshness. They are created with love and enchanted with special mantras and prayers following ancient Vedic traditions. To suit the individual needs of our clients, we also offer custom formulated products.</p>\r\n<p>&nbsp;</p>','<p>dfasd&nbsp; afd dff ads sdaa dsf faaf ds afsd fad df fsda dfsa dfsa fads asf asfd fds</p>','','','1235722476'),
 ('11','about','contact','2','','2','<p>Ayurvedic-resources - This page is currently under construction. Please bookmark this site and check back soon.</p>','','','','0'),
 ('33','events','events','6','date desc','1','<p>This page is currently under construction. Please check back really soon!</p>','','','','1236058349'),
 ('34','links','links','7','placement asc','1','<p>This is your links page. Login to add some text, or just leave it blank.</p>','','','','1236109103'),
 ('37','contact','contact','8','placement asc','1','<h3>Contact Svetlana:</h3>\r\n<p>email:</p>\r\n<p>phone:</p>\r\n<p>or send her a message below</p>','','','','1238088319'),
 ('38','splash','splash','0','placement asc','5','','','','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `ayurvedic_users` 
-- 

INSERT INTO `ayurvedic_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `editor`, `mailer`) VALUES ('2','ayurveda','sashaalex','svetlana','mika','','thomas.mika@snet.net','2147483647','0','editor',''),
 ('3','demo','demo','demo','user','','','0','0','editor','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `english_items` 
-- 

INSERT INTO `english_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('662','Through','illusions','gallery','','','','image662-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','45','1248358378','2009','7','23','gallery','',''),
 ('660','Seam','illusions','gallery','','','','image660-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','37','1248358271','2009','7','23','gallery','',''),
 ('664','Illusions','illusions','blog','<p>&nbsp;&nbsp;&nbsp;&nbsp; A woman presents herself within the landscape. A mirror, either handheld or placed nearby, both reflect differently than what surrounds her. She interacts with the landscape she wanders in, blending into the background, changing with scale, or holding a part of the landscape itself. The whole image becomes a pictorial&nbsp; illusion and as the photographer, I am in complete control of the composition. <br />&nbsp;&nbsp;&nbsp;&nbsp; Using a medium format film camera and no digital manipulation, I pose women in the landscape. In reference to greek mythological stories of goddesses, these women look gentle and fragile, yet posses a strong power. Their long hair covers their face, giving them an unknown identify.&nbsp; The variety of mirrors I use do not reflect the women themselves, but instead are held away from them. They blend into their surroundings, the mirror serving as an illusion to show off their power by changing what\'s around them.<br />&nbsp;&nbsp;&nbsp;&nbsp; I am inspired by Pictoralist photographers and how they create a purely photographic reality in their images. Early 20th century photographer Anne Brigman seamlessly meets the human figure with a surreal landscape. Her figures have the same powerful presence that I strive to create in my photographs. Shooting in black and white, I make a historical reference to this period. I use Infrared film to emphasize the grain and to create a more surreal environment. I challenge the notion of the landscape by referencing what makes a photograph: the women re-frame what I have framed and they capture in their mirror like a camera captures in the lens.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1248718102','2009','7','27','statement','',''),
 ('665','Untitled','water nymphs','gallery','','','','image665-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','0','1250864427','2009','8','21','gallery','',''),
 ('666','Untitled','water nymphs','gallery','','','','image666-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','1','1250864447','2009','8','21','gallery','',''),
 ('667','Untitled','water nymphs','gallery','','','','image667-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','2','1250864465','2009','8','21','gallery','',''),
 ('668','Untitled','water nymphs','gallery','','','','image668-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','3','1250864476','2009','8','21','gallery','',''),
 ('669','Water Nymphs','Water Nymphs','blog','<p><!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	--></p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; Delicate and fragile, she <span style=\"font-family: Times New Roman,serif;\">is alone, working on tasks unknown to the viewer but yet of strong, ritualistic importance to her. As in Greek and Roman myths, she is a nymph wandering without her god in confined deteriorating spaces. Even in the landscape, she knows not to move beyond the dying trees and the still water. </span></p>\r\n<p style=\"margin-bottom: 0in;\"><span style=\"font-family: Times New Roman,serif;\">&nbsp;&nbsp;&nbsp;&nbsp; The viewer is curious to what the young woman is doing, but yet cannot grasp her strange activities. The viewer senses, however, that these rituals are extremely important. There is no need for color, as black and white perfects the quiet and calm thoughts of the nymph. Using a 4x5 camera, the landscape is presented in crisp detail, mixing together the reality of a photograph with a surreal world. The landscape, gray and deteriorating, highlights the white figure and makes her radiant. She becomes the only bright thing in a dark world. </span></p>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1250893390','2009','8','21','statement','',''),
 ('670','Untitled','the mirrored self','gallery','','','','image670-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','4','1250950650','2009','8','22','gallery','',''),
 ('671','Untitled','the mirrored self','gallery','','','','image671-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','5','1250950662','2009','8','22','gallery','',''),
 ('672','Untitled','the mirrored self','gallery','','','','image672-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','6','1250950702','2009','8','22','gallery','',''),
 ('673','Untitled','the mirrored self','gallery','','','','image673-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','7','1250950729','2009','8','22','gallery','',''),
 ('674','Untitled','the mirrored self','gallery','','','','image674-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','8','1250950761','2009','8','22','gallery','',''),
 ('675','Untitled','the mirrored self','gallery','','','','image675-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','9','1250950779','2009','8','22','gallery','',''),
 ('676','Untitled','the mirrored self','gallery','','','','image676-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','10','1250950810','2009','8','22','gallery','',''),
 ('678','Resting Man','sicily','gallery','','','','image678-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','11','1251296022','2009','8','26','gallery','',''),
 ('679','Garden of Ruins','sicily','gallery','','','','image679-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','12','1251296036','2009','8','26','gallery','',''),
 ('680','Hidden Behind Ivy','sicily','gallery','','','','image680-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','13','1251296049','2009','8','26','gallery','',''),
 ('681','Sun Columns','sicily','gallery','','','','image681-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','14','1251296069','2009','8','26','gallery','',''),
 ('682','Ruin Rocks','sicily','gallery','','','','image682-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','15','1251296104','2009','8','26','gallery','',''),
 ('683','Open Window','sicily','gallery','','','','image683-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','16','1251296122','2009','8','26','gallery','',''),
 ('684','Resting Nuns','sicily','gallery','','','','image684-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','17','1251296132','2009','8','26','gallery','',''),
 ('685','Procession March','sicily','gallery','','','','image685-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','18','1251296147','2009','8','26','gallery','',''),
 ('686','Nuns in an Alley','sicily','gallery','','','','image686-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','19','1251296170','2009','8','26','gallery','',''),
 ('687','Void','sicily','gallery','','','','image687-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','20','1251296193','2009','8','26','gallery','',''),
 ('690','Sicily','sicily','blog','Traveling to Sicily was one of the most memorable experiences of my life.  I grew up in crowded towns and visited New York City weekly, so encountering a place filled with vistas of rolling green hills and beautiful blue skies put me in awe. I was particularly taken by the old crumbling architecture and broken little houses that dotted the landscape. In the American city, if a building is deteriorating, you demolish it and put up something new.  In contrast, Sicily is a timeless country.  It’s history and cultural influences can be read in the design and embellishments of its buildings and facades.  \r\n<p>&nbsp;</p>\r\nI have been influenced by 19th century landscape photography. Early photographers journeyed to exotic places and captured panoramic views unseen by human eyes. Oftentimes they placed figures within their images, allowing a viewer to experience the vastness of these majestic spaces and marvel in their magnificence. I approached my project with a similar sensibility.\r\n<p>&nbsp;</p>\r\nMy photographs are filled with dark shadows. I use grain for a desired effect, suggesting an ageless, strange presence. Black and white film lends a quiet feeling to the compositions- imbuing my images with a sense of mystery. I place myself within this landscape. I am a small, tiny figure amongst the grand scale of pillars, hills, and trees. It is as if I don’t belong, as if nature is too broad for me to comprehend. When other people are situated in my photographs, they too, are out of place. Dressed in odd clothing of a different time, they walk amongst the streets of today. They merge with the surroundings, becoming a part of it. They are as timeless as Sicily is itself.','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1251308870','2009','8','26','statement','',''),
 ('691','Masquerade','other works','gallery','','','','image691-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','31','1251296686','2009','8','26','gallery','',''),
 ('695','Picnic','other works','gallery','','','','image695-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','25','1251296592','2009','8','26','gallery','',''),
 ('696','The Only Tree','other works','gallery','','','','image696-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','27','1251296666','2009','8','26','gallery','',''),
 ('697','Secluded Alleyway','other works','gallery','','','','image697-1.jpg','','','','','','','','','','Digital Inkjet Print-11x14','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','35','1251296702','2009','8','26','gallery','',''),
 ('699','Out the Window','other works','gallery','','','','image699-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','38','1251296798','2009','8','26','gallery','',''),
 ('700','Storefront','other works','gallery','','','','image700-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','33','1251296694','2009','8','26','gallery','',''),
 ('701','Memory','other works','gallery','','','','image701-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','21','1251296562','2009','8','26','gallery','',''),
 ('702','Thought','other works','gallery','','','','image702-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','23','1251296572','2009','8','26','gallery','',''),
 ('703','View from Underwater','other works','gallery','','','','image703-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','41','1251296763','2009','8','26','gallery','',''),
 ('704','Reaching','other works','gallery','','','','image704-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','29','1251296676','2009','8','26','gallery','',''),
 ('705','Street Kids','other works','gallery','','','','image705-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','39','1251296742','2009','8','26','gallery','',''),
 ('706','Movement','other works','gallery','','','','image706-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','43','1251296775','2009','8','26','gallery','',''),
 ('638','','','blog','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246974687','0','0','0','statement','pshorey','pshorey'),
 ('639','','','blog','hi again! hope you like your site','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246975456','0','0','0','statement','pshorey','pshorey'),
 ('643','Horizon','illusions','gallery','','','','image643-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','26','1246975752','2009','7','7','gallery','',''),
 ('657','Form','illusions','gallery','','','','image657-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','36','1248358239','2009','7','23','gallery','',''),
 ('648','Grasp','illusions','gallery','','','','image648-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','32','1246975813','2009','7','7','gallery','',''),
 ('649','Half','illusions','gallery','','','','image649-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','24','1246975695','2009','7','7','gallery','',''),
 ('650','Held','illusions','gallery','','','','image650-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','180','10','0','0','0','1','20','0','0','0','0','0','','30','1246975801','2009','7','7','gallery','',''),
 ('651','Reverse','illusions','gallery','','','','image651-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','34','1246975826','2009','7','7','gallery','',''),
 ('652','Seen','illusions','gallery','','','','image652-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','44','1246975942','2009','7','7','gallery','',''),
 ('653','Tilt','illusions','gallery','','','','image653-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','20','20','20','20','20','0','','40','1246975928','2009','7','7','gallery','',''),
 ('654','Lift','illusions','gallery','','','','image654-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','42','1246975913','2009','7','7','gallery','',''),
 ('655','Reveal','illusions','gallery','','','','image655-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','28','1246975775','2009','7','7','gallery','',''),
 ('661','Frame','illusions','gallery','','','','image661-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','22','1248357898','2009','7','23','gallery','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `english_pages` 
-- 

INSERT INTO `english_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','placement asc','1','<p>This site is almost finished! Please <a onclick=\"return addthis_sendto()\" onmouseover=\"return addthis_open(this, \'\', \'http://www.juliaforrest.com\', \'Julia Forrest Photography\')\" onmouseout=\"addthis_close()\" href=\"http://www.addthis.com/bookmark.php?v=20\" target=\"_blank\">bookmark this page</a> and come back real soon.</p>','','','home','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','','	    ','','Login','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','gallery','gallery','2','placement asc','1','','','','gallery','','','','1240361394'),
 ('57','resume','blog','4','placement asc','1','<p>Bio:</p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; My name is Julia Forrest  and I am a Brooklyn based artist. I recently graduated from Hartford Art school with a BFA in fine art photography. Surrounded by the constant creativity in NY and only a subway ride away from any museum or gallery, I constantly involve myself in the art world. I work mostly in film and print all images myself in a darkroom I built within my apartment. My own art has always been my top priority in life and in this digital world, I will continue to work with old processing. Anything can simply be done in photoshop, I prefer to take the camera, a tool of showing reality, and experiment with what I can do within it. I create surreal environments, tricking the camera into what it sees.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Solor Exhibitions:</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">2010</p>\r\n<p style=\"margin-bottom: 0in;\">Illusion, chashama gallery, New York, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Illusion, Beehive Salon, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Group Exhibitions:</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2010</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">Breukelen Rebuilt, Breukelen, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">The Great Pop Up Art Sale, Dumbo Art Center, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2009</p>\r\n<p style=\"margin-bottom: 0in;\">My Long Island, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">BFA Senior Thesis Photography Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Goldfarb, Joseloff Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2008</p>\r\n<p style=\"margin-bottom: 0in;\">Sicily Photography, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">A Passion for Pixels, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan Faculty Show, Usdan for the Creative and Performing Arts,Wheatley Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">Free Play, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2006</p>\r\n<p style=\"margin-bottom: 0in;\">SQURL Art Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2005</p>\r\n<p style=\"margin-bottom: 0in;\">Foundations Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Gallery North Art Exhibit, Gallery North, Setauket, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2004</p>\r\n<p style=\"margin-bottom: 0in;\">Nita Elder Scholarship Art Exhibit, South Bay Art Association, Bellport, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Creative Expressions Artists Showcase, Ward Melville Gallery and Cultural Center, Stonybrook, NY</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">2003</p>\r\n<p style=\"margin-bottom: 0in;\">Mixed Media Exhibit, Baffa Art Gallery,  Sayville, NY</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Experience:</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Education:</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2009</p>\r\n<p style=\"margin-bottom: 0in;\">Hartford Art School, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Bachelor of Photography, GPA- 3.64, Magnum Cum Laude, Presidents List, Deans List</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Work Experience:</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2010-present</p>\r\n<p style=\"margin-bottom: 0in;\">Brooklyn Museum, Brooklyn NY</p>\r\n<p style=\"margin-bottom: 0in;\">Photography Instructor (Maya/ Supervisor)</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-teach a basic photography class focusing on digital, pinhole, and darkroom photography. Ages 12-14.</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-lessons include how to take professional quality images on a point and shoot digital camera, how to build your own working pinhole camera, and the development/printing process.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2009-2010</p>\r\n<p style=\"margin-bottom: 0in;\">ROCKSTAR GAMES, New York, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Photography and Video Capture Artist (Lazlow/Supervisor)</p>\r\n<p style=\"margin-bottom: 0in;\">-responsible for taking screen captures of gameplay for use both in print and online campaigns</p>\r\n<p style=\"margin-bottom: 0in;\">-conceive of and execute the best-looking scenes and shots possible in a 3D environment</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-using editing programs such as Avid and ACDSee</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2006-2009</p>\r\n<p style=\"margin-bottom: 0in;\">USDAN FOR THE CREATIVE AND PERFORMING ARTS, Wheatly Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Digital Photography Instructor (Lori Sklar/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught two classes monday-friday, ages 10-12 and 14-16</p>\r\n<p style=\"margin-bottom: 0in;\">-lessons on how to use your camera, composition, lighting studio, photoshop workflow,  and printing.</p>\r\n<p style=\"margin-bottom: 0in;\">-matted and hung student work for a gallery show at the end of the summer</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan.com Photography Editor</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-photographed students daily enjoying the art facility and working on projects.</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-edited, prepared, uploaded and arranged photographs on the website to impress future students.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007-2008</p>\r\n<p style=\"margin-bottom: 0in;\">HARTFORD ART SCHOOL PHOTOGRAPHY DEPARTMENT, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Photography Technician for the Digital Lab and B&amp;W and Color Darkrooms (Christine Dalenta/Technician)</p>\r\n<p style=\"margin-bottom: 0in;\">-prepared darkroom chemical setup, inkjet printers, and color darkroom for student use</p>\r\n<p style=\"margin-bottom: 0in;\">-maintained all lighting and printing equipment to hand out to students</p>\r\n<p style=\"margin-bottom: 0in;\">-assisted students with darkroom printing, adobe photoshop, and inkjet printing</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2008</p>\r\n<p style=\"margin-bottom: 0in;\">THE ART LEAUGE OF LONG ISLAND Huntington, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Assistant Instructor for Introductory Art Classes (Laura Emiliani/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught a wide range of art classes, ages 3-16</p>\r\n<p style=\"margin-bottom: 0in;\">-classes specialized in sculpture, ceramics, drawing, painting, illustration, and architecture</p>\r\n<p style=\"margin-bottom: 0in;\">-constantly prepared lesson plans with new project ideas. Never repeated the same project</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">UNIVERSITY OF HARTFORD West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Publicity and Events Manager</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-organized, planned and put on all concerts and events for the university of hartford</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-compile, review and negotiate contract terms and language in performance agreements</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-maintained detailed status accounts and records of show confirmations, expenses, and deposits.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Skills:</p>\r\n<p style=\"margin-bottom: 0in;\">Black and White: 35mm and medium format camera, RC/Fiber</p>\r\n<p style=\"margin-bottom: 0in;\">Color: 35mm camera, photographic color theory, C-printing</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 4x5: Studio, Zone System and Field</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 8x10</p>\r\n<p style=\"margin-bottom: 0in;\">Digital: Photoshop workflow, Lightroom, HDR</p>\r\n<p style=\"margin-bottom: 0in;\">Non Silver Processes: Platinum/ Palladium</p>\r\n<p style=\"margin-bottom: 0in;\">Commercial Lighting: Studio, strobe, flood, ambient, tungsten, florescent`</p>\r\n<p style=\"margin-bottom: 0in;\">History of Photography: 1834 (Talbot &amp; Daguerre) to late 20th century</p>\r\n<p style=\"margin-bottom: 0in;\">Junior Seminar- Criticizing Photographs, Terry Barrett</p>\r\n<p style=\"margin-bottom: 0in;\">Senior Seminar: BFA Exhibition &amp; Professional Practices</p>\r\n<p style=\"margin-bottom: 0in;\">Koopman Chair with Jerry Spagnoli/ Aziz + Cucher</p>\r\n<p style=\"margin-bottom: 0in;\">Travel Photography: Sicily (Spring 2008)</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p>&nbsp;</p>','','','Resume','','','','1250887383'),
 ('52','join','join','0','placement asc','hidden','<p>Get the latest news! Join the site.</p>','','','Join the mailinglist','','','','1245027739'),
 ('55','statement','blog','1','placement asc','1','','','','Artist Statement','','','','1246893299'),
 ('33','mailing list','join','5','date desc','1','<p><strong>Please join the mailing list to recieve updates on Julia Forrest photography.</strong></p>\r\n<p>~ Up and coming shows</p>\r\n<p>~ Photography classes</p>\r\n<p>~ New work</p>\r\n<p><strong>Your email will not be spammed or sent out. It will remain private.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Or, <a href=\"contact\">email me at jforrest@artspaces.net</a></p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Mailing list','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('58','contact','contact','0','placement asc','hidden','<p>Send me an email below:</p>','','','contact me','','','','1265662252'),
 ('60','account','account','0','placement asc','hidden','','','','My Account','','','','1274303062');

-- --------------------------------------------------------

-- 
-- Dumping data for table `english_redirects` 
-- 

INSERT INTO `english_redirects` (`id`, `page`, `redirect`) VALUES ('2','blog','http://juliaforrestphoto.blogspot.com/');

-- --------------------------------------------------------

-- 
-- Dumping data for table `english_users` 
-- 

INSERT INTO `english_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('20','heather4x5@gmail.com','99c8oh8c','Heather','White','','heather4x5@gmail.com','','0','','yes'),
 ('14','pshorey','hawaii','paul','shorey','','pshorey@artspaces.net','','0','editor','yes'),
 ('7','jforrest','evilsnail','julia','forrest','','jforrest@artspaces.net','','0','editor','yes'),
 ('19','eve@go-media.com','ykfus1r1','Eve','Windebank','','eve@go-media.com','','0','','yes'),
 ('21','rogcast211@sbcglobal.net','8vqj7kq','Roger','Castonguay','','rogcast211@sbcglobal.net','','0','','yes'),
 ('22','little@hartford.edu','yqa5tkzl','Amanda ','Little','C','little@hartford.edu','','0','','yes'),
 ('23','scottjmccracken@gmail.com','9pyw5f48','Scott','McCracken','J','scottjmccracken@gmail.com','','0','','yes'),
 ('24','susana99@att.blackberry.net','qk5d14kr','susana','romero','','susana99@att.blackberry.net','','0','','yes');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlye_items` 
-- 

INSERT INTO `friendlye_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('638','','','login','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246974687','0','0','0','demo','pshorey','pshorey'),
 ('639','','','login','hi again! hope you like your site','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246975456','0','0','0','demo','pshorey','pshorey'),
 ('694','Give it a try','intro','blog','<p>This is an easy-to-use site manager that comes standard with www.artspaces.net sites. It\'s installed on your site. All you have to do is login, and the editor tools pop up, allowing you to manage your site pages, users, products and articles.</p>','<p>Try out this editor in these recently-published websites...</p>\r\n<p><a href=\"http://www.PaulShorey.com\" target=\"_blank\">PaulShorey.com</a></p>\r\n<p><a href=\"http://www.Artspaces.net/login\" target=\"_blank\">Artspaces.net</a></p>\r\n<p><a href=\"http://www.FriendlyEditor.com/login\" target=\"_blank\">FriendlyEditor.com</a></p>\r\n<p><a href=\"http://www.FriendlyPublisher.com/login\" target=\"_blank\">FriendlyPublisher.com</a></p>\r\n<p><a href=\"http://www.theurbanminute.com\" target=\"_blank\">TheUrbanMinute.com</a></p>\r\n<p><a href=\"http://www.HandmadebyLaura.com\" target=\"_blank\">HandmadebyLaura.com</a></p>\r\n<p><a href=\"http://www.JuliaForrest.com\" target=\"_blank\">JuliaForrest.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Click \"login\" at the bottom of the page and login with...</p>\r\n<p>username: visitor</p>\r\n<p>password: pass</p>\r\n<p>&nbsp;</p>\r\n<p>I created this program for my clients at <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>.</p>\r\n<p>Now, you can download it for your clients at <a href=\"http://www.friendlypublisher.com\" target=\"_blank\">www.friendlypublisher.com</a>.</p>\r\n<p>&nbsp;</p>\r\n<p>Paul Shorey -</p>\r\n<p>Please see my other work at <a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>','','image694-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249603650','2009','8','6','tutorials','',''),
 ('695','What it does','intro','blog','<p>This editor is similar to the site manager that comes with Blogger, Wordpress, Drupal, and Joomla sites, only easier and with more professional features.</p>\r\n<p>&nbsp;</p>\r\n<p>Its very easy. Use the buttons in the toolbar and on the page to manage your content. Click the \"Manage Entries\" button in the \"Entries\" section of the toolbar to drag the articles to their new order, move, delete, or edit them.</p>\r\n<p>&nbsp;</p>\r\n<p>There are many tools. To add a new product or article, click \"Entries\" in the toolbar, then \"Add\". A little window will pop up, asking for an article name, image, text, etc. Need assistance? Mouse over each title in the popup window for further explanation.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249575574','2009','8','6','tutorials','',''),
 ('696','How to get it','intro','blog','<p>You can get a new custom site with this editor built-in from <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>. Currently for only $300 + $99/yr hosting.</p>\r\n<p>&nbsp;</p>\r\n<p>Or, if you\'re a web designer and would like to include this editor in your own projects, check <a href=\"http://www.friendlypublisher.\" target=\"_blank\">www.friendlypublisher.com</a> for news and updates. Currently, it is not available for public download, but you can join the mailinglist to be the first to know of its official release.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249572292','2009','8','6','tutorials','',''),
 ('697','Backup/restore','site','blog','<p>On the toolbar, click \"Site\", then \"Backup/Restore\" to access the backup/restore utility.</p>','<p>It only backs up and restores \"data\", meaning pages, articles, categories, settings, and user accounts. Unfortunately, if you delete some images and videos, then create new ones, the old files will have been over-written forever.</p>','','image697-1.png','','','','','','','','','','Click \"backup\" to backup your site. Click \"restore\" to go back to the previously-saved state.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249922001','2009','8','10','tutorials','',''),
 ('698','Manage pages','site','blog','<p>In the top toolbar, click \"Site\", \"Manage pages\" to edit or arrange the pages in your site.</p>','','','image698-1.png','','','','','','','','','','Sort pages by navigation menu. Click and drag to move them to their new order on the menu. Add, Edit, or Delete the pages.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249922649','2009','8','10','tutorials','',''),
 ('699','Page redirects','site','blog','<p>In the top toolbar click \"Site\" then \"Page redirects\" to control what happens when a visitor tries to go to a page.</p>','','','image699-1.png','','','','','','','','','','For example, when a visitor types in http://www.yourdomain.com/pricequote, redirect them to page http://www.yourdomain.com/order','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249922893','2009','8','10','tutorials','',''),
 ('700','Add new user','users','blog','<p>In the top toolbar, click \"Users\", then \"Add User\" to add a new member to your site or mailinglist. Or if you preffer, your visitors can do this themselves from your site. Just ask your webdesigner to include a form on any page you like. The added user will receive an email welcoming them to the site.</p>','<p>Add a password, or keep it blank to generate a random one. Leave the username blank to use the email address as the username. Enter their name for better tracking. Allow them to edit your site by typing \"editor\" in the role, or type in any message to make a note about the user. You\'ll be able to send mass-mailings to every user that is added to the mailinglist.</p>','','image700-1.png','','','','','','','','','','Enter an email, and choose to add them to the mailinglist.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249923335','2009','8','10','tutorials','',''),
 ('701','Manage users','users','blog','<p>In the top toolbar, click \"Users\" then \"Manage Users\".</p>','','','image701-1.png','','','','','','','','','','Add, edit, or delete user accounts here.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249918273','2009','8','10','tutorials','',''),
 ('702','edit user','users','blog','<p>In the top toolbar, click \"Users\", \"Manage Users\", then click to \"Edit\" the account you want.</p>','<p>If the site member joined, or you invited them, you can update their name, email, even the password here. If you change the username or password, the user will be sent an email message with the updated login information. Check the \"mailinglist\" to add or remove the user from the mailinglist. When sending an email to your mailinglist members, they\'ll automatically be given an option to unsubscribe.</p>','','image702-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249918749','2009','8','10','tutorials','',''),
 ('703','Add new page','page','blog','<p>In the top toolbar, click \"Page\" then \"Add\" to add a new page.</p>','<p><strong>Add a new page with several options:</strong></p>\r\n<p><strong>Page name </strong>- http://www.yourdomain.com/pagename (can have letters, numbers, spaces, _, and&nbsp; - )</p>\r\n<p><strong>Page title </strong>- will be displayed in the top of the page (defaults to page name), additional titles are sometimes displayed in the middle or side of your page. Type something, and even if it\'s not displayed, search engines will see it.</p>\r\n<p><strong>Page layout </strong>- your designer created several layouts for your site, usually including \"homepage\", \"gallery\", \"blog\", \"products\", and \"contact\". Choose a layout that fits your new page.</p>\r\n<p><strong>Menu</strong> - \"1\" is the main menu on the top of your site. \"2\" is a secondary menu on the side or bottom of your site. \"Hidden\" means the page will not be displayed in the menu, but you can still link to it with http://www.yourdomain.com/pagename</p>\r\n<p><strong>Sort entries </strong>- if your new page is a \"blog\", \"gallery\", or \"products\" listing, it will have many \"entries\", meaning photographs, articles, or products. How do you want these entries arranged on the page? By date, name, price? Choosing \"date\" allows you the greatest control over ordering the entries, because you can change the date of each article individually. If you have less than 50 articles on one page, you can order the entries by \"placement\". In the top toolbar, click \"Entries\" and \"Manage Entries\" to drag each product or article to its new position on the page.</p>\r\n<p><strong>Text </strong>- edit the main body of text for your page. It\'s usually displayed on the top of the page, followed by blog posts or gallery items. Even if your page does not display any text (its purely a photo-gallery layout), this field still allows you to enter a page description for search engines. Enter a paragraph or two.</p>\r\n<p><strong>Text2, Text3 </strong>- Your page layout might have a second or third body of text displayed somewhere on the bottom or side. Add some content to each with these fields.</p>\r\n<p><strong>Advanced options</strong> - check \"remove all html styles\" to remove all formatting from your page texts. It will remove all colors, sizes, and styles in the page.</p>','','image703-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249920020','2009','8','10','tutorials','',''),
 ('704','Add new entry','entries','blog','<p>In the top toolbar, click \"Entries\", then \"Add\".</p>','<p><strong>Add a new photo, article, or product.</strong></p>\r\n<p><strong>Title </strong>- name of the photo, article or product.</p>\r\n<p><strong>Category</strong> - the series, group, or gallery that this entry belongs to.</p>\r\n<p><strong>Image</strong> - click \"Browse\" to upload a new photo. JPG, GIF and PNG files are acceptable.</p>\r\n<p><strong>Video </strong>- click \"Browse\" to upload a new video. FLV files are best. MOV also works.</p>\r\n<p><strong>Price </strong>- how much (in dollars) to sell this product for.</p>\r\n<p><strong>Qty</strong> - how many items are available for sale (dont forget to login and change this after the item is sold)</p>\r\n<p><strong>Ship</strong> - flat fee shipping cost (in dollars).</p>\r\n<p><strong>Description </strong>- a very short description that will appear next to the price</p>\r\n<p><strong>Text</strong> - an article, or product description to display with the item (will not be displayed for gallery pages, use \"description\" instead)</p>\r\n<p><strong>Link</strong> - include a link for a links or web portfolio page, dont forget the \"http://\"</p>\r\n<p><strong>Page</strong> - what page to display this article on? usually its the page you are on</p>\r\n<p><strong>Date</strong> - sometimes, a date is displayed next to the blog entry, or it may be used to arrange the articles on a page</p>\r\n<p><strong>Text2, Text3</strong> - some pages might display a second or third product description or article</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Add 2nd variation</strong> - add upto 5 variations of the product or item. Sell several colors or styles of the same product, or multiple sizes or frame options of your print. Or, create a mini-slideshow for each photograph or article (if your page design supports this). Just add another price/description for each variation to give your shoppers options to choose from.</p>','','image704-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249942349','2009','8','10','tutorials','',''),
 ('691','1','gallery','home','','','','image691-1.jpg','','','','','','','','','','login','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249494880','2009','8','5','home','',''),
 ('692','2','gallery','home','','','','image692-1.jpg','','','','','','','','','','manage','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249490694','2009','8','5','home','',''),
 ('693','3','gallery','home','','','','image693-1.jpg','','','','','','','','','','sell','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249494866','2009','8','5','home','',''),
 ('705','demo','intro','login','<p>Demonstration</p>','','','image705-1.png','','','','','','','','','','Demonstration','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251045315','2009','8','23','demo','',''),
 ('706','support','intro','support','<p>get support</p>','','','image706-1.png','','','','','','','','','','get support','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251045577','2009','8','23','support','',''),
 ('707','send mail','users','blog','<p>In the top toolbar, click \"Users\" then \"Send Mail\" to send out mass emails.</p>','<p>Send an email to everybody in your mailinglist. They can unsubscribe with a linked attatched to the email. To manage the mailinglist yourself, go to the top toolbar, click \"Users\", then \"Manage Users\" and add or remove user accounts from the mailinglist.</p>','','image707-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251128536','2009','8','24','tutorials','',''),
 ('708','Edit page','page','blog','<p>In the top toolbar, click \"Page\", \"Edit\" to edit the current page.</p>','<p><strong>Edit a page:</strong></p>\r\n<p><strong>Page name </strong>- http://www.yourdomain.com/pagename (can have letters, numbers, spaces, _, and&nbsp; - )</p>\r\n<p><strong>Page title </strong>- will be displayed in the top of the page (defaults to page name), additional titles are sometimes displayed in the middle or side of your page. Type something, and even if it\'s not displayed, search engines will see it.</p>\r\n<p><strong>Page layout </strong>- your designer created several layouts for your site, usually including \"homepage\", \"gallery\", \"blog\", \"products\", and \"contact\". Choose a layout that fits your new page.</p>\r\n<p><strong>Menu</strong> - \"1\" is the main menu on the top of your site. \"2\" is a secondary menu on the side or bottom of your site. \"Hidden\" means the page will not be displayed in the menu, but you can still link to it with http://www.yourdomain.com/pagename</p>\r\n<p><strong>Sort entries </strong>- if your new page is a \"blog\", \"gallery\", or \"products\" listing, it will have many \"entries\", meaning photographs, articles, or products. How do you want these entries arranged on the page? By date, name, price? Choosing \"date\" allows you the greatest control over ordering the entries, because you can change the date of each article individually. If you have less than 50 articles on one page, you can order the entries by \"placement\". In the top toolbar, click \"Entries\" and \"Manage Entries\" to drag each product or article to its new position on the page.</p>\r\n<p><strong>Text </strong>- edit the main body of text for your page. It\'s usually displayed on the top of the page, followed by blog posts or gallery items. Even if your page does not display any text (its purely a photo-gallery layout), this field still allows you to enter a page description for search engines. Enter a paragraph or two.</p>\r\n<p><strong>Text2, Text3 </strong>- Your page layout might have a second or third body of text displayed somewhere on the bottom or side. Add some content to each with these fields.</p>\r\n<p><strong>Advanced options</strong> - check \"remove all html styles\" to remove all formatting from your page texts. It will remove all colors, sizes, and styles in the page.</p>','','image708-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251129913','2009','8','24','tutorials','',''),
 ('709','Page text','page','blog','<p>In the top toolbar, click \"Page\" then \"Text1\", \"Text2\", or \"Text3\" to edit your page texts.</p>','<p>Some of your pages may have one, two, or three text fields. Along with each would be a title. These options let you edit the text/title for each section. Your site will also have links to edit \"Text1\", \"Text2\", and \"Text3\". Clicking on the button brings up the same editor as clicking on the top toolbar. Edit the body of text and the title.</p>\r\n<p>&nbsp;</p>\r\n<p>Even if your page is purely a \"photo gallery\", and does not display any text besides image captions, its still a good idea to fill out \"Title1\" and \"Text1\" fields, so search engines can see the data and better index your page.</p>','','image709-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251130206','2009','8','24','tutorials','',''),
 ('710','Page style','page','blog','<p>In the top toolbar, click \"Page\", then \"Style\".</p>','','','image710-1.png','','','','','','','','','','If you know CSS, create a unique style for each page using this tool.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251150288','2009','8','24','tutorials','',''),
 ('711','delete page','page','blog','<p>In the top toolbar, click \"Page\", then \"Delete\".</p>','<p>Delete the current page. To delete a different page, navigate to another page, or in the top toolbar, go to \"Site\", \"Manage Pages\".</p>','','image711-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251150498','2009','8','24','tutorials','',''),
 ('712','Edit entry','entries','blog','<p>In the top toolbar, click \"Entries\", then \"Manage Entries\", and choose an item to edit. Or, click the \"Edit\" button in your page, located at the top left of your product or article.</p>','<p><strong>Add a new photo, article, or product.</strong></p>\r\n<p><strong>Title </strong>- name of the photo, article or product.</p>\r\n<p><strong>Category</strong> - the series, group, or gallery that this entry belongs to.</p>\r\n<p><strong>Image</strong> - click \"Browse\" to upload a new photo. JPG, GIF and PNG files are acceptable.</p>\r\n<p><strong>Video </strong>- click \"Browse\" to upload a new video. FLV files are best. MOV also works.</p>\r\n<p><strong>Price </strong>- how much (in dollars) to sell this product for.</p>\r\n<p><strong>Qty</strong> - how many items are available for sale (dont forget to login and change this after the item is sold)</p>\r\n<p><strong>Ship</strong> - flat fee shipping cost (in dollars).</p>\r\n<p><strong>Description </strong>- a very short description that will appear next to the price</p>\r\n<p><strong>Text</strong> - an article, or product description to display with the item (will not be displayed for gallery pages, use \"description\" instead)</p>\r\n<p><strong>Link</strong> - include a link for a links or web portfolio page, dont forget the \"http://\"</p>\r\n<p><strong>Page</strong> - what page to display this article on? usually its the page you are on</p>\r\n<p><strong>Date</strong> - sometimes, a date is displayed next to the blog entry, or it may be used to arrange the articles on a page</p>\r\n<p><strong>Text2, Text3</strong> - some pages might display a second or third product description or article</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Add 2nd variation</strong> - add upto 5 variations of the product or item. Sell several colors or styles of the same product, or multiple sizes or frame options of your print. Or, create a mini-slideshow for each photograph or article (if your page design supports this). Just add another price/description for each variation to give your shoppers options to choose from.</p>','','image712-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251152141','2009','8','24','tutorials','',''),
 ('713','manage entries','entries','blog','<p>In the top toolbar, click \"Entries\", and \"Manage Entries\"</p>','<p>Browse the articles on the page you\'re currently on. Just go to \"Manage Pages\". Browse articles in a different page or category, or search to find the article you\'re looking for. Apply a new page or new category to all search results, or delete them all.</p>\r\n<p><br />To edit them individually, click \"Edit\" or \"Delete\" next to the entry you wish to edit.</p>','','image713-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251152493','2009','8','24','tutorials','',''),
 ('714','Manage categories','entries','blog','<p>In the top toolbar, click \"Entries\" then \"Manage Categories\".</p>','<p>Rename a category. Choose a category from the dropdown list. Rename it. All entries and products in that category are moved to the new name.</p>','','image714-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251152799','2009','8','24','tutorials','',''),
 ('715','Manage comments','entries','blog','<p>In the top toolbar, click \"Entries\" then \"Manage Comments\".</p>','<p>Browse the comments visitors have left for each page or item. Use the buttons next to each comment to \"edit\", \"delete\", or \"hide\" each one.</p>','','image715-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251152986','2009','8','24','tutorials','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlye_pages` 
-- 

INSERT INTO `friendlye_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','placement asc','2','<p>Your site will come finished with pages and articles. <span>When time comes&nbsp;</span></p>\r\n<p><span>to add new content, you can do it yourself without paying a webmaster.</span></p>\r\n<p><span>Just login to your site and an editor toolbar and buttons will pop up. </span></p>\r\n<p><span>Here, you can login to a trial account and preview the admin tools.</span></p>','<p>Visit <a href=\"http://www.artspaces.net\" target=\"_blank\">Artspaces</a>.Web development by <a href=\"http://www.paulshorey.com\" target=\"_blank\">Paul Shorey</a>.</p>','','Just Login, Manage, & Sell','Get it only from www.artspaces.net','Edit your site','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','','	    ','','Login','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','tutorials','blog','2','placement asc','1','<p>Try out the editor as if editing own site. Your finished site will have this editor built-in. When its time to add more content, just login, and all the tools you see here will pop up, allowing you to easily&nbsp;edit pages, articles and users. If you\'re not sure about a question in the editor, mouse over it and a help box will appear.</p>','<p>Please let me know what you think about this program. New features are being added every day. If there\'s something special you\'re looking for, please make a request below. I\'ll let you know if it can be included in the next update.</p>','','Manage your site quickly and efficiently','Webdesign by Paul Shorey','Tutorials','','1240361394'),
 ('52','join','join','0','placement asc','hidden','<p><strong>Get the latest news! Join the site.</strong></p>','','','Join the mailinglist','','','','1245027739'),
 ('55','demo','login','1','placement asc','1','<p>Login to a trial account below, and preview every feature of this editor as if editing your own site.</p>','<p>Try out this editor in these recently-published websites...</p>\r\n<p><a href=\"http://www.HandmadebyLaura.com\" target=\"_blank\">HandmadebyLaura.com</a></p>\r\n<p><a href=\"http://www.JuliaForrest.com\" target=\"_blank\">JuliaForrest.com</a></p>\r\n<p><a href=\"http://www.purplelanternstudio.com\" target=\"_blank\">PurpleLanternStudio.com</a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.Artspaces.net/login\" target=\"_blank\">Artspaces.net</a></p>\r\n<p><a href=\"http://www.theurbanminute.com\" target=\"_blank\">TheUrbanMinute.com</a><a href=\"http://www.JuliaForrest.com\" target=\"_blank\"> </a></p>\r\n<p><a href=\"http://www.PaulShorey.com\" target=\"_blank\">PaulShorey.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Click \"login\" at the bottom of the page and login with...</p>\r\n<p>username: visitor</p>\r\n<p>password: pass</p>\r\n<p>&nbsp;</p>\r\n<p>Paul Shorey -</p>\r\n<p>Please see my other work at <a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>','','Try the editor...','Try it on other sites...','','','1246893299'),
 ('33','contact','contact','2','date desc','2','<p>Contact me, I\'ll reply soon.</p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Contact me','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('57','support','support','3','placement asc','1','<p><span style=\"text-decoration: line-through;\"><strong>Mozilla Firefox 2 - Sometimes you cant cut or delete&nbsp;from the text editor</strong></span></p>\r\n<p><span style=\"text-decoration: line-through;\">Fix: Upgrade to Firefox 3</span></p>\r\n<p>&nbsp;</p>\r\n<p>The Friendly Editor is a new service from <a href=\"http://www.artspaces.net\">www.artspaces.net</a>.&nbsp;If you notice a problem, or can suggest an improvement, please let me know below, and I\'ll get back to you right away with a solution.</p>','<p>Please send me a message to report a problem with your site editor, or to suggest an improvement. I\'ll get back to you right away with an answer.</p>\r\n<p>&nbsp;</p>\r\n<p>If you\'re hosting with <a href=\"http://www.artspaces.net/\" target=\"_blank\">www.artspaces.net</a>, your site will be updated right away.</p>','<p>This editor program is being improved every day. First things on the list are the issues at the top of the page. Later, new features and improvements will include:</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Faster product management</strong></p>\r\n<p><strong></strong>rename and change multiple articles and products from a single form</p>\r\n<p><strong>Order on page by category</strong></p>\r\n<p>you can already drag and drop your articles to a new order on the page. However, if you have many items in multiple categories, this method is&nbsp;too time-consuming. I will soon add a tool to drag and drop entire categories to their new order on the page</p>\r\n<p><strong>Site preferences</strong></p>\r\n<p>right now only your webdesigner can modify your database info, name, contact email, upload folders, and other site details by editing the settings.php file. I\'m currently working on integrating these options into the FriendlyEditor toolbar, so changing technical details will be as easy as editing your page text.</p>\r\n<p><strong>Check back soon for Version 2!</strong></p>\r\n<p>Instead of modifying this build of the editor, I\'m working on new, enterprise-level software that will let you add user groups, editor roles, customers, order tracking, polls, article types, and more! Once ready, an announcement will be made at paulshorey.com and artspaces.net.</p>\r\n<p>&nbsp;</p>\r\n<p>Thank you very much for visiting, please take a look at my other work.</p>\r\n<p>Paul Shorey</p>\r\n<p><a href=\"http://www.paulshorey.com\">www.paulshorey.com</a><a href=\"http://www.artspaces.net\"></a></p>','Reported issues','Report a bug or get help with your site','Future improvements','','1248731459'),
 ('58','policy','text','0','placement asc','2','<p>Page coming very soon... please contact me below with any questions.</p>','','','My Policy','','','','1248782777');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlye_redirects` 
-- 

INSERT INTO `friendlye_redirects` (`id`, `page`, `redirect`) VALUES ('6','pricequote','http://www.artspaces.net/process'),
 ('7','login','http://friendlyeditor.com/demo');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlye_users` 
-- 

INSERT INTO `friendlye_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('2','pshorey','ms[-;r-m','paul','shorey','','pshorey@artspaces.net','2147483647','0','editor','yes'),
 ('3','demo','demo','demo','user','','','0','0','editor',''),
 ('5','ps','ms[-;r-m','','','','pshorey@gmail.com','0','0','','yes'),
 ('6','yeguthyy','xuPaCr','yeguthyy','yeguthyy','3236','bamkth@nvvtpn.com','74339294959','','AeRNIidPcaRAMjfeB',''),
 ('7','kbfcdeg','wCncnZ','kbfcdeg','kbfcdeg','325474','nhdalh@monsom.com','85272011587','','eVWNusNSbIdy','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlyp_items` 
-- 

INSERT INTO `friendlyp_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('638','','','download','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246974687','0','0','0','download','pshorey','pshorey'),
 ('639','','','download','hi again! hope you like your site','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246975456','0','0','0','download','pshorey','pshorey'),
 ('691','1','gallery','home','','','','image691-1.jpg','','','','','','','','','','code','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249511879','2009','8','5','home','',''),
 ('692','2','gallery','home','','','','image692-1.jpg','','','','','','','','','','html','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1249511896','2009','8','5','home','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlyp_pages` 
-- 

INSERT INTO `friendlyp_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','date desc','1','<p>Dont waste time working around limiting CMS functions. Instead,</p>\r\n<p>design creative html pages, then make them dynamic with simple tags.</p>\r\n<p>This program puts you back in control of webdesign, by removing</p>\r\n<p>limitations of popular blog/cms templates. Create anything, then</p>\r\n<p>automate it. Its the best of HTML and PHP combined!</p>','<p>Current version contributed by <a href=\"http://www.paulshorey.com\" target=\"_blank\">Paul Shorey</a>.</p>','<p>With the included <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">FriendlyEditor</a> <sup>tm</sup> -</p>\r\n<p>your clients can manage their site</p>\r\n<p>by themselves. Change any page</p>\r\n<p>or function of their site editor.</p>\r\n<p>Create a totally custom CMS</p>\r\n<p>package in minutes! Find out</p>\r\n<p>more at <a href=\"http://www.FriendlyEditor.com\" target=\"_blank\">www.FriendlyEditor.com</a>.</p>','Design with dynamic html','Get it, upload, & start publishing','Customize your CMS','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','<p>Log in to this website as if you were managing your own site.</p>\r\n<p>Your trial account: username: \"visitor\" password: \"pass\".</p>','<p>Once logged in, go to any page to add or edit content.</p>\r\n<p>You can preview the tools, but cant make any changes.</p>','','Login','Try it','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','docs','blog','2','placement asc','1','<p>The project is currently in Alpha testing, used only at <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>.</p>\r\n<p>Please join the mailinglist and be first to know when this project goes public.</p>\r\n<p>&nbsp;</p>\r\n<p>The project is currently in Alpha testing, used only at <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>. Here are some sites recently published with this program...</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.theurbanminute.com\" target=\"_blank\">www.theurbanminute.com</a></p>\r\n<p><a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>\r\n<p><a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a></p>\r\n<p><a href=\"http://www.friendlypublisher.com\" target=\"_blank\">www.friendlypublisher.com</a></p>\r\n<p><a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a></p>\r\n<p><a href=\"http://www.handmadebylaura.com\" target=\"_blank\">www.handmadebylaura.com</a></p>\r\n<p><a href=\"http://www.juliaforrest.com\" target=\"_blank\">www.juliaforrest.com</a></p>\r\n<p><a href=\"http://www.ayurvedic-resources.artspaces.net\" target=\"_blank\">www.ayurvedic-resources.artspaces.net</a></p>\r\n<p><a href=\"http://www.jewelrybytracie.com\" target=\"_blank\">www.jewelrybytracie.com</a></p>\r\n<p><a href=\"http://www.philippemay.com\" target=\"_blank\">www.philippemay.com</a></p>\r\n<p><a href=\"http://www.quickchick.com\" target=\"_blank\">www.quickchick.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Soon, this program will be publically released for webdesigners and design studios. Please join the email list to be notified when it is released.</p>\r\n<p>&nbsp;</p>\r\n<p>Also try the FriendlyEditor, an included tool that allows your clients (with no computer experience) to easily manage their sites. Go to <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a> for an instant live demo, or try it on this page. Click the login link at the bottom, and login with username: \"visitor\", and password: \"pass\".</p>\r\n<p>&nbsp;</p>\r\n<h1>Easy Install<br /></h1>\r\n<p>Upload this program to your own site and easily manage your project.<strong><br /></strong></p>\r\n<div style=\"padding:15px 0 0 19px;\">\r\n<p><strong>1) Create a database</strong> in your hosting account using the \"database wizard\"<strong><br /></strong></p>\r\n<p><strong>2)</strong> <strong>Unzip and upload</strong> the program to your server\'s root directory</p>\r\n<p><strong>3) Edit the settings.php</strong> file. Change the database login, your name and email</p>\r\n<p>Done! Read the documentation for help designing your site.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<h1>License</h1>\r\n<p>This program is created and currently managed by Paul Shorey. It will soon be released for developers under an open or shared-source license.</p>\r\n<p>&nbsp;</p>\r\n<h1>About it</h1>\r\n<p>This project is intended for small sites that focus on a unique and creative look, as opposed to structured data sites like online news portals and online department stores.</p>\r\n<div style=\"padding:15px 0 0 19px;\">\r\n<p><strong>unique designs</strong> with this program its easier to design creative layouts than with other publishing platforms</p>\r\n<p><strong>sites with less than 200 pages</strong> with less than 50 categories and less than 500 articles in each</p>\r\n<p><strong>simple management</strong> less emphasis on data-entry and efficiency, more on usability</p>\r\n<p><strong>simple ecommerce</strong> integrated shopping cart, but no inventory management tools</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>It is very scalable, flexible, and expandable. An example of whats possible, you could easily create a Twitter.com with this program, but not Facebook.com. You could easily set up a BargainNews.com, but not CNN.com. I\'ve recently created www.TheUrbanMinute.com from scratch, in less than a week.</p>\r\n<p>&nbsp;</p>\r\n<p>Please join the mailinglist and check back soon for more exciting news and updates.</p>\r\n<p>&nbsp;</p>\r\n<p>Thank you for visiting!</p>\r\n<p>Paul Shorey</p>\r\n<p><a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>','<p>I\'m currently in the middle of documenting the project and setting up a page where developers can submit and manage their contributions. More info coming soon.</p>\r\n<p>I\'ll be happy to answer questions. Please contact me below or email ps@artspaces.net.</p>','<p>Be the first to know when its publically released!</p>','Download coming soon!','Developed by Paul Shorey','Join Mailinglist','','1240361394'),
 ('52','join','join','0','placement asc','hidden','<p><strong>Get the latest news! Join the site.</strong></p>','','','Join the mailinglist','','','','1245027739'),
 ('55','download','download','1','placement asc','1','<p>The project is currently in Alpha testing, used only at <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>. Here are some sites recently published with this program...</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.theurbanminute.com\" target=\"_blank\">www.theurbanminute.com</a></p>\r\n<p><a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>\r\n<p><a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a></p>\r\n<p><a href=\"http://www.friendlypublisher.com\" target=\"_blank\">www.friendlypublisher.com</a></p>\r\n<p><a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a></p>\r\n<p><a href=\"http://www.handmadebylaura.com\" target=\"_blank\">www.handmadebylaura.com</a></p>\r\n<p><a href=\"http://www.juliaforrest.com\" target=\"_blank\">www.juliaforrest.com</a></p>\r\n<p><a href=\"http://www.ayurvedic-resources.artspaces.net\" target=\"_blank\">www.ayurvedic-resources.artspaces.net</a></p>\r\n<p><a href=\"http://www.jewelrybytracie.com\" target=\"_blank\">www.jewelrybytracie.com</a></p>\r\n<p><a href=\"http://www.philippemay.com\" target=\"_blank\">www.philippemay.com</a></p>\r\n<p><a href=\"http://www.quickchick.com\" target=\"_blank\">www.quickchick.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Soon, this program will be publically released for webdesigners and design studios. Please join the email list to be notified with any news or announcements.</p>\r\n<p>&nbsp;</p>\r\n<p>Also try the FriendlyEditor, an included tool that allows your clients (with no computer experience) to easily manage their sites. Go to <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a> for an instant live demo, or try it on this page. Click the login link at the bottom, and login with username: \"visitor\", and password: \"pass\".</p>','<p>Upload this program to your own site and easily manage your project.<strong><br /></strong></p>\r\n<div style=\"padding:15px 0 0 19px;\">\r\n<p><strong>1) Create a database</strong> in your hosting account using the \"database wizard\"<strong><br /></strong></p>\r\n<p><strong>2)</strong> <strong>Unzip and upload</strong> the program to your server\'s root directory</p>\r\n<p><strong>3) Edit the settings.php</strong> file. Change the database login, your name and email</p>\r\n<p>Done! Read the documentation for help designing your site.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<h1>License</h1>\r\n<p>This program is created and currently managed by Paul Shorey. It will soon be released for developers under an open or shared-source license.</p>\r\n<p>&nbsp;</p>\r\n<h1>About it</h1>\r\n<p>This project is intended for small sites that focus on a unique and creative look, as opposed to structured data sites like online news portals and online department stores.</p>\r\n<div style=\"padding:15px 0 0 19px;\">\r\n<p><strong>unique designs</strong> with this program its easier to design creative layouts than with other publishing platforms</p>\r\n<p><strong>for small business sites</strong> with upto 200 pages, 50 categories in each and 500 articles in each category</p>\r\n<p><strong>simple management</strong> less emphasis on data-entry and efficiency, more on usability</p>\r\n<p><strong>simple ecommerce</strong> integrated shopping cart, but no inventory management tools</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>It is very scalable, flexible, and expandable. An example of whats possible, you could easily create a Twitter.com with this program, but not Facebook.com. You could easily set up a BargainNews.com, but not CNN.com. I\'ve recently created www.TheUrbanMinute.com from scratch, in less than a week.</p>\r\n<p>&nbsp;</p>\r\n<p>Please join the mailinglist and check back soon for more exciting news and updates.</p>\r\n<p>&nbsp;</p>\r\n<p>Thank you for visiting!</p>\r\n<p>Paul Shorey</p>\r\n<p><a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>','<p>With the included <a href=\"http://www.FriendlyEditor.com\" target=\"_blank\">Friendly Editor</a>, your clients can add pages and manage their site.</p>\r\n<p>&nbsp;</p>\r\n<h2>Get Started</h2>\r\n<p>Get the program and start publishing right away. Use the included shopping cart, mailinglist, and rss plugins.</p>\r\n<p>&nbsp;</p>\r\n<h2>Join Mailinglist</h2>\r\n<p>Find out when this program will be publically released.</p>','Download coming soon!','Easy Install','Site Editor','','1246893299'),
 ('33','contact','contact','2','date desc','2','<p>Contact me, I\'ll reply soon.</p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Contact me','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('57','support','support','3','placement asc','1','<p>The project is currently in Alpha testing, used only at <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>.</p>\r\n<p>Please join the mailinglist and be first to know when this project goes public.</p>\r\n<p>&nbsp;</p>\r\n<p>The project is currently in Alpha testing, used only at <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>. Here are some sites recently published with this program...</p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.theurbanminute.com\" target=\"_blank\">www.theurbanminute.com</a></p>\r\n<p><a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>\r\n<p><a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a></p>\r\n<p><a href=\"http://www.friendlypublisher.com\" target=\"_blank\">www.friendlypublisher.com</a></p>\r\n<p><a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a></p>\r\n<p><a href=\"http://www.handmadebylaura.com\" target=\"_blank\">www.handmadebylaura.com</a></p>\r\n<p><a href=\"http://www.juliaforrest.com\" target=\"_blank\">www.juliaforrest.com</a></p>\r\n<p><a href=\"http://www.ayurvedic-resources.artspaces.net\" target=\"_blank\">www.ayurvedic-resources.artspaces.net</a></p>\r\n<p><a href=\"http://www.jewelrybytracie.com\" target=\"_blank\">www.jewelrybytracie.com</a></p>\r\n<p><a href=\"http://www.philippemay.com\" target=\"_blank\">www.philippemay.com</a></p>\r\n<p><a href=\"http://www.quickchick.com\" target=\"_blank\">www.quickchick.com</a></p>\r\n<p>&nbsp;</p>\r\n<p>Soon, this program will be publically released for webdesigners and design studios. Please join the email list to be notified when it is released.</p>\r\n<p>&nbsp;</p>\r\n<p>Also try the FriendlyEditor, an included tool that allows your clients (with no computer experience) to easily manage their sites. Go to <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a> for an instant live demo, or try it on this page. Click the login link at the bottom, and login with username: \"visitor\", and password: \"pass\".</p>\r\n<p>&nbsp;</p>\r\n<h1>Easy Install<br /></h1>\r\n<p>Upload this program to your own site and easily manage your project.<strong><br /></strong></p>\r\n<div style=\"padding:15px 0 0 19px;\">\r\n<p><strong>1) Create a database</strong> in your hosting account using the \"database wizard\"<strong><br /></strong></p>\r\n<p><strong>2)</strong> <strong>Unzip and upload</strong> the program to your server\'s root directory</p>\r\n<p><strong>3) Edit the settings.php</strong> file. Change the database login, your name and email</p>\r\n<p>Done! Read the documentation for help designing your site.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<h1>License</h1>\r\n<p>This program is created and currently managed by Paul Shorey. It will soon be released for developers under an open or shared-source license.</p>\r\n<p>&nbsp;</p>\r\n<h1>About it</h1>\r\n<p>This project is intended for small sites that focus on a unique and creative look, as opposed to structured data sites like online news portals and online department stores.</p>\r\n<div style=\"padding:15px 0 0 19px;\">\r\n<p><strong>unique designs</strong> with this program its easier to design creative layouts than with other publishing platforms</p>\r\n<p><strong>sites with less than 200 pages</strong> with less than 50 categories and less than 500 articles in each</p>\r\n<p><strong>simple management</strong> less emphasis on data-entry and efficiency, more on usability</p>\r\n<p><strong>simple ecommerce</strong> integrated shopping cart, but no inventory management tools</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>It is very scalable, flexible, and expandable. An example of whats possible, you could easily create a Twitter.com with this program, but not Facebook.com. You could easily set up a BargainNews.com, but not CNN.com. I\'ve recently created www.TheUrbanMinute.com from scratch, in less than a week.</p>\r\n<p>&nbsp;</p>\r\n<p>Please join the mailinglist and check back soon for more exciting news and updates.</p>\r\n<p>&nbsp;</p>\r\n<p>Thank you for visiting!</p>\r\n<p>Paul Shorey</p>\r\n<p><a href=\"http://www.paulshorey.com\" target=\"_blank\">www.paulshorey.com</a></p>','<p>I\'m currently in the middle of documenting the project and setting up a page where developers can submit contributions and manage documentation. More info coming soon.</p>\r\n<p>I\'ll be happy to answer questions. Please contact me below or email ps@artspaces.net.</p>','<p>Be the first to know when its publically released!</p>','Support coming soon','Developed by Paul Shorey','Join Mailinglist','','1248731459'),
 ('58','license','text','0','placement asc','2','<p>Page coming very soon... please contact me below with any questions.</p>','','','program license','','','','1248782777');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlyp_redirects` 
-- 

INSERT INTO `friendlyp_redirects` (`id`, `page`, `redirect`) VALUES ('14','docs','http://friendlypublisher.com/download'),
 ('15','support','http://friendlypublisher.com/download');

-- --------------------------------------------------------

-- 
-- Dumping data for table `friendlyp_users` 
-- 

INSERT INTO `friendlyp_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('9','Pshorey@gmail.com','03029fce','','','','pshorey@gmail.com','','','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `handmadeb_items` 
-- 

INSERT INTO `handmadeb_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('638','','','blog','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246974687','0','0','0','bio','pshorey','pshorey'),
 ('639','','','blog','hi again! hope you like your site','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246975456','0','0','0','bio','pshorey','pshorey'),
 ('643','Horizon','earrings','gallery','','','','image643-1.jpg','','','','','','','','','','Red and green','','','','','25','0','0','0','0','0','0','0','0','0','10','0','0','0','0','0','','1','1246976127','2009','7','7','gallery','',''),
 ('648','Grasp','earrings','gallery','','','','image648-1.jpg','','','','','','','','','','','','','','','25','180','180','180','180','0','1','1','1','1','10','0','0','0','0','0','','5','1246976168','2009','7','7','gallery','',''),
 ('649','Half','earrings','gallery','','','','image649-1.jpg','','','','','','','','','','','','','','','25','180','180','180','180','0','1','1','1','1','10','0','0','0','0','0','','7','1246976191','2009','7','7','gallery','',''),
 ('650','Held','earrings','gallery','','','','image650-1.jpg','','','','','','','','','','','','','','','25','0','0','0','180','0','0','0','0','1','10','0','0','0','0','0','','3','1246976148','2009','7','7','gallery','',''),
 ('651','Reverse','earrings','gallery','','','','image651-1.jpg','','','','','','','','','','Ceramic and glass','','','','','25','180','180','180','180','0','1','1','1','1','10','0','0','0','0','0','','2','1246976137','2009','7','7','gallery','',''),
 ('652','Seen','earrings','gallery','','','','image652-1.jpg','','','','','','','','','','Silver fish beads','','','','','25','180','180','180','180','0','1','1','1','1','10','0','0','0','0','0','','8','1246976211','2009','7','7','gallery','',''),
 ('653','Tilt','earrings','gallery','','','','image653-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','25','200','200','200','200','0','1','1','1','1','10','20','20','20','20','0','','4','1246976157','2009','7','7','gallery','',''),
 ('654','Lift','earrings','gallery','','','','image654-1.jpg','','','','','','','','','','green and silver','','','','','25','200','200','200','200','0','1','1','1','1','10','20','20','20','20','0','','6','1246976180','2009','7','7','gallery','',''),
 ('655','Reveal','earrings','gallery','','','','image655-1.jpg','','','','','','','','','','glazed ceramic','','','','','25','200','200','200','200','1','1','1','1','1','10','20','20','20','20','0','','0','1246980900','2009','7','7','gallery','',''),
 ('656','Artist Statement','earrings','blog','<p>&nbsp;&nbsp; &nbsp; I am a New York based artist who works in clay. I hand-build sculptural functional ceramic ware.</p>\r\n<p>&nbsp;&nbsp; &nbsp; As an artist I am not only concerned with form but with surface quality. My vessels are handpainted, sometimes I add collages and small paintings. It is important that my work has a painterly feeling. The interior of most pieces are glazed making my pieces functional.</p>\r\n<p>&nbsp;&nbsp; &nbsp; My Interest has always encompassed body adornment. I have merged elements from my ceramic work with Jewelry. Creating wearable art. Thus my earrings and necklaces were born. Now my friends, family and even you can wear art.</p>\r\n<p>&nbsp;&nbsp; &nbsp; Please enjoy yourself as you browse through my website.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1246992195','2009','7','7','bio','',''),
 ('663','Green Frogs','vessels','gallery','','','','image663-1.jpg','','','','','video-1.mov?DBIVTM','','','','','Hand painted ceramic vessel','','','','','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','0','1248114391','2009','7','20','gallery','',''),
 ('664','Raku vase','vessels','gallery','','','','image664-1.jpg','','','','','','','','','','4x12 in','','','','','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','','1248200750','2009','7','21','gallery','',''),
 ('665','all eyes on you','vessels','gallery','','','','image665-1.jpg','','','','','','','','','','Hand painted  ceramic vessel','','','','','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','','1248200802','2009','7','21','gallery','',''),
 ('666','Peeking','vessels','gallery','','','','image666-1.jpg','','','','','','','','','','Hand painted  ceramic vessel','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1248200695','2009','7','21','gallery','',''),
 ('667','The Column','vessels','gallery','','','','image667-1.jpg','','','','','','','','','','Hand painted  ceramic vessel','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1248200652','2009','7','21','gallery','',''),
 ('668','Open Window','vessels','gallery','','','','image668-1.jpg','','','','','','','','','','Hand painted  ceramic vessel','','','','','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','','1248200824','2009','7','21','gallery','',''),
 ('670','Time is up','vessels','gallery','','','','image670-1.jpg','','','','','','','','','','Hand painted ceramic vessel','','','','','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','','1248200555','2009','7','21','gallery','',''),
 ('672','Think','pendants','gallery','','','','image672-1.jpg','','','','','','','','','','blue stoneware pendant/beads','','','','','75','0','0','0','0','1','0','0','0','0','10','0','0','0','0','0','','','1248200222','2009','7','21','gallery','',''),
 ('673','seek','pendants','gallery','','','','image673-1.jpg','','','','','','','','','','green stoneware pendant /beads','','','','','75','0','0','0','0','1','0','0','0','0','10','0','0','0','0','0','','','1248200111','2009','7','21','gallery','',''),
 ('674','Two Faces','pendants','gallery','','','','image674-1.jpg','','','','','','','','','','Raku pendant,double sided','','','','','75','0','0','0','0','1','0','0','0','0','10','0','0','0','0','0','','','1248200331','2009','7','21','gallery','',''),
 ('677','500','earrings','gallery','','','','image677-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847184','2009','12','26','gallery','',''),
 ('678','02','earrings','gallery','','','','image678-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847218','2009','12','26','gallery','',''),
 ('679','03','earrings','gallery','','','','image679-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847240','2009','12','26','gallery','',''),
 ('680','04','earrings','gallery','','','','image680-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847268','2009','12','26','gallery','',''),
 ('681','5','earrings','gallery','','','','image681-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847298','2009','12','26','gallery','',''),
 ('682','06','earrings','gallery','','','','image682-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847317','2009','12','26','gallery','',''),
 ('683','07','earrings','gallery','','','','image683-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847336','2009','12','26','gallery','',''),
 ('684','08','earrings','gallery','','','','image684-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847385','2009','12','26','gallery','',''),
 ('685','09','earrings','gallery','','','','image685-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847406','2009','12','26','gallery','',''),
 ('686','10','earrings','gallery','','','','image686-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847437','2009','12','26','gallery','',''),
 ('687','11','earrings','gallery','','','','image687-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847470','2009','12','26','gallery','',''),
 ('688','12','earrings','gallery','','','','image688-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847497','2009','12','26','gallery','',''),
 ('689','13','earrings','gallery','','','','image689-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847539','2009','12','26','gallery','',''),
 ('690','14','earrings','gallery','','','','image690-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847558','2009','12','26','gallery','',''),
 ('691','16','earrings','gallery','','','','image691-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847590','2009','12','26','gallery','',''),
 ('692','18','earrings','gallery','','','','image692-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847630','2009','12','26','gallery','',''),
 ('693','19','earrings','gallery','','','','image693-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847724','2009','12','26','gallery','',''),
 ('694','21','earrings','gallery','','','','image694-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847747','2009','12','26','gallery','',''),
 ('695','dance','earrings','gallery','','','','image695-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854519','2009','12','26','gallery','',''),
 ('696','red and black','earrings','gallery','','','','image696-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854398','2009','12','26','gallery','',''),
 ('697','26','earrings','gallery','','','','image697-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847808','2009','12','26','gallery','',''),
 ('698','serenity','earrings','gallery','','','','image698-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854593','2009','12','26','gallery','',''),
 ('699','jazz','earrings','gallery','','','','image699-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854333','2009','12','26','gallery','',''),
 ('700','love','earrings','gallery','','','','image700-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854474','2009','12','26','gallery','',''),
 ('701','I see you','earrings','gallery','','','','image701-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854277','2009','12','26','gallery','',''),
 ('702','wave','earrings','gallery','','','','image702-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854226','2009','12','26','gallery','',''),
 ('703','36','earrings','gallery','','','','image703-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261847929','2009','12','26','gallery','',''),
 ('704','summer','earrings','gallery','','','','image704-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854183','2009','12','26','gallery','',''),
 ('705','peace','earrings','gallery','','','','image705-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854131','2009','12','26','gallery','',''),
 ('706','tranquil','earrings','gallery','','','','image706-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854092','2009','12','26','gallery','',''),
 ('707','nature','earrings','gallery','','','','image707-1.jpg','','','','','','','','','','Handmade, one of a kind','','','','','25','0','0','0','0','1','0','0','0','0','6','0','0','0','0','0','','','1261854040','2009','12','26','gallery','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `handmadeb_pages` 
-- 

INSERT INTO `handmadeb_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','placement asc','1','<p>This site is almost finished! Please <a onclick=\"return addthis_sendto()\" onmouseover=\"return addthis_open(this, \'\', \'http://www.juliaforrest.com\', \'Julia Forrest Photography\')\" onmouseout=\"addthis_close()\" href=\"http://www.addthis.com/bookmark.php?v=20\" target=\"_blank\">bookmark this page</a> and come back real soon.</p>','','','home','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','','	    ','','Login','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','gallery','gallery','1','date desc','1','','','','gallery','','','','1240361394'),
 ('52','join','join','0','placement asc','hidden','<p><strong>Get the latest news! Join the site.</strong></p>','','','Join the mailinglist','','','','1245027739'),
 ('55','bio','blog','0','placement asc','1','','','','bio','','','','1246893299'),
 ('33','contact','contact','2','date desc','1','<p><a href=\"mailto:lauraforrest@optonline.net\">lauraforrest@optonline.net</a></p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Contact me','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292');

-- --------------------------------------------------------

-- 
-- Dumping data for table `handmadeb_users` 
-- 

INSERT INTO `handmadeb_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('2','pshorey','ms[-;r-m','paul','shorey','','pshorey@artspaces.net','2147483647','0','editor','yes'),
 ('3','demo','demo','demo','user','','','0','0','editor',''),
 ('5','ps','ms[-;r-m','','','','pshorey@gmail.com','0','0','','yes'),
 ('6','jon','husband','jon','forrest','','jonforrest@optonline.net','','','','yes');

-- --------------------------------------------------------

-- 
-- Dumping data for table `juliaforr_items` 
-- 

INSERT INTO `juliaforr_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('662','Through','illusions','gallery','','','','image662-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','45','1248358378','2009','7','23','gallery','',''),
 ('660','Seam','illusions','gallery','','','','image660-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','37','1248358271','2009','7','23','gallery','',''),
 ('664','Illusions','illusions','blog','<p>&nbsp;&nbsp;&nbsp;&nbsp; A woman presents herself within the landscape. A mirror, either handheld or placed nearby, both reflect differently than what surrounds her. She interacts with the landscape she wanders in, blending into the background, changing with scale, or holding a part of the landscape itself. The whole image becomes a pictorial&nbsp; illusion and as the photographer, I am in complete control of the composition. <br />&nbsp;&nbsp;&nbsp;&nbsp; Using a medium format film camera and no digital manipulation, I pose women in the landscape. In reference to greek mythological stories of goddesses, these women look gentle and fragile, yet posses a strong power. Their long hair covers their face, giving them an unknown identify.&nbsp; The variety of mirrors I use do not reflect the women themselves, but instead are held away from them. They blend into their surroundings, the mirror serving as an illusion to show off their power by changing what\'s around them.<br />&nbsp;&nbsp;&nbsp;&nbsp; I am inspired by Pictoralist photographers and how they create a purely photographic reality in their images. Early 20th century photographer Anne Brigman seamlessly meets the human figure with a surreal landscape. Her figures have the same powerful presence that I strive to create in my photographs. Shooting in black and white, I make a historical reference to this period. I use Infrared film to emphasize the grain and to create a more surreal environment. I challenge the notion of the landscape by referencing what makes a photograph: the women re-frame what I have framed and they capture in their mirror like a camera captures in the lens.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1248718102','2009','7','27','statement','',''),
 ('665','Untitled','water nymphs','gallery','','','','image665-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','0','1250864427','2009','8','21','gallery','',''),
 ('666','Untitled','water nymphs','gallery','','','','image666-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','1','1250864447','2009','8','21','gallery','',''),
 ('667','Untitled','water nymphs','gallery','','','','image667-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','2','1250864465','2009','8','21','gallery','',''),
 ('668','Untitled','water nymphs','gallery','','','','image668-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','3','1250864476','2009','8','21','gallery','',''),
 ('669','Water Nymphs','Water Nymphs','blog','<p><!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	--></p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; Delicate and fragile, she <span style=\"font-family: Times New Roman,serif;\">is alone, working on tasks unknown to the viewer but yet of strong, ritualistic importance to her. As in Greek and Roman myths, she is a nymph wandering without her god in confined deteriorating spaces. Even in the landscape, she knows not to move beyond the dying trees and the still water. </span></p>\r\n<p style=\"margin-bottom: 0in;\"><span style=\"font-family: Times New Roman,serif;\">&nbsp;&nbsp;&nbsp;&nbsp; The viewer is curious to what the young woman is doing, but yet cannot grasp her strange activities. The viewer senses, however, that these rituals are extremely important. There is no need for color, as black and white perfects the quiet and calm thoughts of the nymph. Using a 4x5 camera, the landscape is presented in crisp detail, mixing together the reality of a photograph with a surreal world. The landscape, gray and deteriorating, highlights the white figure and makes her radiant. She becomes the only bright thing in a dark world. </span></p>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1250893390','2009','8','21','statement','',''),
 ('670','Untitled','the mirrored self','gallery','','','','image670-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','4','1250950650','2009','8','22','gallery','',''),
 ('671','Untitled','the mirrored self','gallery','','','','image671-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','5','1250950662','2009','8','22','gallery','',''),
 ('672','Untitled','the mirrored self','gallery','','','','image672-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','6','1250950702','2009','8','22','gallery','',''),
 ('673','Untitled','the mirrored self','gallery','','','','image673-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','7','1250950729','2009','8','22','gallery','',''),
 ('674','Untitled','the mirrored self','gallery','','','','image674-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','8','1250950761','2009','8','22','gallery','',''),
 ('675','Untitled','the mirrored self','gallery','','','','image675-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','9','1250950779','2009','8','22','gallery','',''),
 ('676','Untitled','the mirrored self','gallery','','','','image676-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','10','1250950810','2009','8','22','gallery','',''),
 ('678','Resting Man','sicily','gallery','','','','image678-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','11','1251296022','2009','8','26','gallery','',''),
 ('679','Garden of Ruins','sicily','gallery','','','','image679-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','12','1251296036','2009','8','26','gallery','',''),
 ('680','Hidden Behind Ivy','sicily','gallery','','','','image680-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','13','1251296049','2009','8','26','gallery','',''),
 ('681','Sun Columns','sicily','gallery','','','','image681-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','14','1251296069','2009','8','26','gallery','',''),
 ('682','Ruin Rocks','sicily','gallery','','','','image682-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','15','1251296104','2009','8','26','gallery','',''),
 ('683','Open Window','sicily','gallery','','','','image683-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','16','1251296122','2009','8','26','gallery','',''),
 ('684','Resting Nuns','sicily','gallery','','','','image684-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','17','1251296132','2009','8','26','gallery','',''),
 ('685','Procession March','sicily','gallery','','','','image685-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','18','1251296147','2009','8','26','gallery','',''),
 ('686','Nuns in an Alley','sicily','gallery','','','','image686-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','19','1251296170','2009','8','26','gallery','',''),
 ('687','Void','sicily','gallery','','','','image687-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','20','1251296193','2009','8','26','gallery','',''),
 ('690','Sicily','sicily','blog','Traveling to Sicily was one of the most memorable experiences of my life.  I grew up in crowded towns and visited New York City weekly, so encountering a place filled with vistas of rolling green hills and beautiful blue skies put me in awe. I was particularly taken by the old crumbling architecture and broken little houses that dotted the landscape. In the American city, if a building is deteriorating, you demolish it and put up something new.  In contrast, Sicily is a timeless country.  Itâ€™s history and cultural influences can be read in the design and embellishments of its buildings and facades.  \r\n<p>&nbsp;</p>\r\nI have been influenced by 19th century landscape photography. Early photographers journeyed to exotic places and captured panoramic views unseen by human eyes. Oftentimes they placed figures within their images, allowing a viewer to experience the vastness of these majestic spaces and marvel in their magnificence. I approached my project with a similar sensibility.\r\n<p>&nbsp;</p>\r\nMy photographs are filled with dark shadows. I use grain for a desired effect, suggesting an ageless, strange presence. Black and white film lends a quiet feeling to the compositions- imbuing my images with a sense of mystery. I place myself within this landscape. I am a small, tiny figure amongst the grand scale of pillars, hills, and trees. It is as if I donâ€™t belong, as if nature is too broad for me to comprehend. When other people are situated in my photographs, they too, are out of place. Dressed in odd clothing of a different time, they walk amongst the streets of today. They merge with the surroundings, becoming a part of it. They are as timeless as Sicily is itself.','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1251308870','2009','8','26','statement','',''),
 ('691','Masquerade','other works','gallery','','','','image691-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','31','1251296686','2009','8','26','gallery','',''),
 ('695','Picnic','other works','gallery','','','','image695-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','25','1251296592','2009','8','26','gallery','',''),
 ('696','The Only Tree','other works','gallery','','','','image696-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','27','1251296666','2009','8','26','gallery','',''),
 ('697','Secluded Alleyway','other works','gallery','','','','image697-1.jpg','','','','','','','','','','Digital Inkjet Print-11x14','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','35','1251296702','2009','8','26','gallery','',''),
 ('699','Out the Window','other works','gallery','','','','image699-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','38','1251296798','2009','8','26','gallery','',''),
 ('700','Storefront','other works','gallery','','','','image700-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','33','1251296694','2009','8','26','gallery','',''),
 ('701','Memory','other works','gallery','','','','image701-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','21','1251296562','2009','8','26','gallery','',''),
 ('702','Thought','other works','gallery','','','','image702-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','23','1251296572','2009','8','26','gallery','',''),
 ('703','View from Underwater','other works','gallery','','','','image703-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','41','1251296763','2009','8','26','gallery','',''),
 ('704','Reaching','other works','gallery','','','','image704-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','29','1251296676','2009','8','26','gallery','',''),
 ('705','Street Kids','other works','gallery','','','','image705-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','39','1251296742','2009','8','26','gallery','',''),
 ('706','Movement','other works','gallery','','','','image706-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','43','1251296775','2009','8','26','gallery','',''),
 ('638','','','blog','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246974687','0','0','0','statement','pshorey','pshorey'),
 ('639','','','blog','hi again! hope you like your site','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246975456','0','0','0','statement','pshorey','pshorey'),
 ('643','Horizon','illusions','gallery','','','','image643-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','26','1246975752','2009','7','7','gallery','',''),
 ('657','Form','illusions','gallery','','','','image657-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','36','1248358239','2009','7','23','gallery','',''),
 ('648','Grasp','illusions','gallery','','','','image648-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','32','1246975813','2009','7','7','gallery','',''),
 ('649','Half','illusions','gallery','','','','image649-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','24','1246975695','2009','7','7','gallery','',''),
 ('650','Held','illusions','gallery','','','','image650-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','180','10','0','0','0','1','20','0','0','0','0','0','','30','1246975801','2009','7','7','gallery','',''),
 ('651','Reverse','illusions','gallery','','','','image651-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','34','1246975826','2009','7','7','gallery','',''),
 ('652','Seen','illusions','gallery','','','','image652-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','44','1246975942','2009','7','7','gallery','',''),
 ('653','Tilt','illusions','gallery','','','','image653-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','20','20','20','20','20','0','','40','1246975928','2009','7','7','gallery','',''),
 ('654','Lift','illusions','gallery','','','','image654-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','42','1246975913','2009','7','7','gallery','',''),
 ('655','Reveal','illusions','gallery','','','','image655-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','28','1246975775','2009','7','7','gallery','',''),
 ('661','Frame','illusions','gallery','','','','image661-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','22','1248357898','2009','7','23','gallery','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `juliaforr_pages` 
-- 

INSERT INTO `juliaforr_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','placement asc','1','<p>This site is almost finished! Please <a onclick=\"return addthis_sendto()\" onmouseover=\"return addthis_open(this, \'\', \'http://www.juliaforrest.com\', \'Julia Forrest Photography\')\" onmouseout=\"addthis_close()\" href=\"http://www.addthis.com/bookmark.php?v=20\" target=\"_blank\">bookmark this page</a> and come back real soon.</p>','','','home','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','','	    ','','Login','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','gallery','gallery','2','placement asc','1','','','','gallery','','','','1240361394'),
 ('57','resume','blog','4','placement asc','1','<p>Bio:</p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; My name is Julia Forrest  and I am a Brooklyn based artist. I recently graduated from Hartford Art school with a BFA in fine art photography. Surrounded by the constant creativity in NY and only a subway ride away from any museum or gallery, I constantly involve myself in the art world. I work mostly in film and print all images myself in a darkroom I built within my apartment. My own art has always been my top priority in life and in this digital world, I will continue to work with old processing. Anything can simply be done in photoshop, I prefer to take the camera, a tool of showing reality, and experiment with what I can do within it. I create surreal environments, tricking the camera into what it sees.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Solor Exhibitions:</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">2010</p>\r\n<p style=\"margin-bottom: 0in;\">Illusion, chashama gallery, New York, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Illusion, Beehive Salon, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Group Exhibitions:</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2010</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">Breukelen Rebuilt, Breukelen, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">The Great Pop Up Art Sale, Dumbo Art Center, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2009</p>\r\n<p style=\"margin-bottom: 0in;\">My Long Island, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">BFA Senior Thesis Photography Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Goldfarb, Joseloff Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2008</p>\r\n<p style=\"margin-bottom: 0in;\">Sicily Photography, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">A Passion for Pixels, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan Faculty Show, Usdan for the Creative and Performing Arts,Wheatley Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">Free Play, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2006</p>\r\n<p style=\"margin-bottom: 0in;\">SQURL Art Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2005</p>\r\n<p style=\"margin-bottom: 0in;\">Foundations Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Gallery North Art Exhibit, Gallery North, Setauket, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2004</p>\r\n<p style=\"margin-bottom: 0in;\">Nita Elder Scholarship Art Exhibit, South Bay Art Association, Bellport, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Creative Expressions Artists Showcase, Ward Melville Gallery and Cultural Center, Stonybrook, NY</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">2003</p>\r\n<p style=\"margin-bottom: 0in;\">Mixed Media Exhibit, Baffa Art Gallery,  Sayville, NY</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Experience:</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Education:</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2009</p>\r\n<p style=\"margin-bottom: 0in;\">Hartford Art School, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Bachelor of Photography, GPA- 3.64, Magnum Cum Laude, Presidents List, Deans List</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Work Experience:</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2010-present</p>\r\n<p style=\"margin-bottom: 0in;\">Brooklyn Museum, Brooklyn NY</p>\r\n<p style=\"margin-bottom: 0in;\">Photography Instructor (Maya/ Supervisor)</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-teach a basic photography class focusing on digital, pinhole, and darkroom photography. Ages 12-14.</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-lessons include how to take professional quality images on a point and shoot digital camera, how to build your own working pinhole camera, and the development/printing process.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2009-2010</p>\r\n<p style=\"margin-bottom: 0in;\">ROCKSTAR GAMES, New York, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Photography and Video Capture Artist (Lazlow/Supervisor)</p>\r\n<p style=\"margin-bottom: 0in;\">-responsible for taking screen captures of gameplay for use both in print and online campaigns</p>\r\n<p style=\"margin-bottom: 0in;\">-conceive of and execute the best-looking scenes and shots possible in a 3D environment</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-using editing programs such as Avid and ACDSee</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2006-2009</p>\r\n<p style=\"margin-bottom: 0in;\">USDAN FOR THE CREATIVE AND PERFORMING ARTS, Wheatly Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Digital Photography Instructor (Lori Sklar/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught two classes monday-friday, ages 10-12 and 14-16</p>\r\n<p style=\"margin-bottom: 0in;\">-lessons on how to use your camera, composition, lighting studio, photoshop workflow,  and printing.</p>\r\n<p style=\"margin-bottom: 0in;\">-matted and hung student work for a gallery show at the end of the summer</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan.com Photography Editor</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-photographed students daily enjoying the art facility and working on projects.</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-edited, prepared, uploaded and arranged photographs on the website to impress future students.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007-2008</p>\r\n<p style=\"margin-bottom: 0in;\">HARTFORD ART SCHOOL PHOTOGRAPHY DEPARTMENT, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Photography Technician for the Digital Lab and B&amp;W and Color Darkrooms (Christine Dalenta/Technician)</p>\r\n<p style=\"margin-bottom: 0in;\">-prepared darkroom chemical setup, inkjet printers, and color darkroom for student use</p>\r\n<p style=\"margin-bottom: 0in;\">-maintained all lighting and printing equipment to hand out to students</p>\r\n<p style=\"margin-bottom: 0in;\">-assisted students with darkroom printing, adobe photoshop, and inkjet printing</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2008</p>\r\n<p style=\"margin-bottom: 0in;\">THE ART LEAUGE OF LONG ISLAND Huntington, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Assistant Instructor for Introductory Art Classes (Laura Emiliani/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught a wide range of art classes, ages 3-16</p>\r\n<p style=\"margin-bottom: 0in;\">-classes specialized in sculpture, ceramics, drawing, painting, illustration, and architecture</p>\r\n<p style=\"margin-bottom: 0in;\">-constantly prepared lesson plans with new project ideas. Never repeated the same project</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">UNIVERSITY OF HARTFORD West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Publicity and Events Manager</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-organized, planned and put on all concerts and events for the university of hartford</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-compile, review and negotiate contract terms and language in performance agreements</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-maintained detailed status accounts and records of show confirmations, expenses, and deposits.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Skills:</p>\r\n<p style=\"margin-bottom: 0in;\">Black and White: 35mm and medium format camera, RC/Fiber</p>\r\n<p style=\"margin-bottom: 0in;\">Color: 35mm camera, photographic color theory, C-printing</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 4x5: Studio, Zone System and Field</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 8x10</p>\r\n<p style=\"margin-bottom: 0in;\">Digital: Photoshop workflow, Lightroom, HDR</p>\r\n<p style=\"margin-bottom: 0in;\">Non Silver Processes: Platinum/ Palladium</p>\r\n<p style=\"margin-bottom: 0in;\">Commercial Lighting: Studio, strobe, flood, ambient, tungsten, florescent`</p>\r\n<p style=\"margin-bottom: 0in;\">History of Photography: 1834 (Talbot &amp; Daguerre) to late 20th century</p>\r\n<p style=\"margin-bottom: 0in;\">Junior Seminar- Criticizing Photographs, Terry Barrett</p>\r\n<p style=\"margin-bottom: 0in;\">Senior Seminar: BFA Exhibition &amp; Professional Practices</p>\r\n<p style=\"margin-bottom: 0in;\">Koopman Chair with Jerry Spagnoli/ Aziz + Cucher</p>\r\n<p style=\"margin-bottom: 0in;\">Travel Photography: Sicily (Spring 2008)</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p>&nbsp;</p>','','','Resume','','','','1250887383'),
 ('52','join','join','0','placement asc','hidden','<p>Get the latest news! Join the site.</p>','','','Join the mailinglist','','','','1245027739'),
 ('55','statement','blog','1','placement asc','1','','','','Artist Statement','','','','1246893299'),
 ('33','mailing list','join','5','date desc','1','<p><strong>Please join the mailing list to recieve updates on Julia Forrest photography.</strong></p>\r\n<p>~ Up and coming shows</p>\r\n<p>~ Photography classes</p>\r\n<p>~ New work</p>\r\n<p><strong>Your email will not be spammed or sent out. It will remain private.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Or, <a href=\"contact\">email me at jforrest@artspaces.net</a></p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Mailing list','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('58','contact','contact','0','placement asc','hidden','<p>Send me an email below:</p>','','','contact me','','','','1265662252'),
 ('60','account','account','0','placement asc','hidden','','','','My Account','','','','1274303062');

-- --------------------------------------------------------

-- 
-- Dumping data for table `juliaforr_redirects` 
-- 

INSERT INTO `juliaforr_redirects` (`id`, `page`, `redirect`) VALUES ('2','blog','http://juliaforrestphoto.blogspot.com/');

-- --------------------------------------------------------

-- 
-- Dumping data for table `juliaforr_users` 
-- 

INSERT INTO `juliaforr_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('20','heather4x5@gmail.com','99c8oh8c','Heather','White','','heather4x5@gmail.com','','','','yes'),
 ('14','pshorey','hawaii','paul','shorey','','pshorey@artspaces.net','','','editor','yes'),
 ('7','jforrest','evilsnail','julia','forrest','','jforrest@artspaces.net','','0','editor','yes'),
 ('19','eve@go-media.com','ykfus1r1','Eve','Windebank','','eve@go-media.com','','','','yes'),
 ('21','rogcast211@sbcglobal.net','8vqj7kq','Roger','Castonguay','','rogcast211@sbcglobal.net','','','','yes'),
 ('22','little@hartford.edu','yqa5tkzl','Amanda ','Little','C','little@hartford.edu','','','','yes'),
 ('23','scottjmccracken@gmail.com','9pyw5f48','Scott','McCracken','J','scottjmccracken@gmail.com','','','','yes');

-- --------------------------------------------------------

-- 
-- Dumping data for table `mauriceanthonyent_items` 
-- 

INSERT INTO `mauriceanthonyent_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('662','Through','illusions','gallery','','','','image662-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','45','1248358378','2009','7','23','gallery','',''),
 ('660','Seam','illusions','gallery','','','','image660-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','37','1248358271','2009','7','23','gallery','',''),
 ('664','Illusions','illusions','blog','<p>&nbsp;&nbsp;&nbsp;&nbsp; A woman presents herself within the landscape. A mirror, either handheld or placed nearby, both reflect differently than what surrounds her. She interacts with the landscape she wanders in, blending into the background, changing with scale, or holding a part of the landscape itself. The whole image becomes a pictorial&nbsp; illusion and as the photographer, I am in complete control of the composition. <br />&nbsp;&nbsp;&nbsp;&nbsp; Using a medium format film camera and no digital manipulation, I pose women in the landscape. In reference to greek mythological stories of goddesses, these women look gentle and fragile, yet posses a strong power. Their long hair covers their face, giving them an unknown identify.&nbsp; The variety of mirrors I use do not reflect the women themselves, but instead are held away from them. They blend into their surroundings, the mirror serving as an illusion to show off their power by changing what\'s around them.<br />&nbsp;&nbsp;&nbsp;&nbsp; I am inspired by Pictoralist photographers and how they create a purely photographic reality in their images. Early 20th century photographer Anne Brigman seamlessly meets the human figure with a surreal landscape. Her figures have the same powerful presence that I strive to create in my photographs. Shooting in black and white, I make a historical reference to this period. I use Infrared film to emphasize the grain and to create a more surreal environment. I challenge the notion of the landscape by referencing what makes a photograph: the women re-frame what I have framed and they capture in their mirror like a camera captures in the lens.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1248718102','2009','7','27','statement','',''),
 ('665','Untitled','water nymphs','gallery','','','','image665-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','0','1250864427','2009','8','21','gallery','',''),
 ('666','Untitled','water nymphs','home','','','','image666-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','1','1250910870','2009','8','21','gallery','',''),
 ('667','Untitled','water nymphs','gallery','','','','image667-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','2','1250864465','2009','8','21','gallery','',''),
 ('668','Untitled','water nymphs','gallery','','','','image668-1.jpg','','','','','','','','','','Silver Gelatin Print, 20x24','','','','','450','0','0','0','0','10','0','0','0','0','25','0','0','0','0','0','','3','1250864476','2009','8','21','gallery','',''),
 ('669','Water Nymphs','Water Nymphs','blog','<p><!-- 		@page { margin: 0.79in } 		P { margin-bottom: 0.08in } 	--></p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; Delicate and fragile, she <span style=\"font-family: Times New Roman,serif;\">is alone, working on tasks unknown to the viewer but yet of strong, ritualistic importance to her. As in Greek and Roman myths, she is a nymph wandering without her god in confined deteriorating spaces. Even in the landscape, she knows not to move beyond the dying trees and the still water. </span></p>\r\n<p style=\"margin-bottom: 0in;\"><span style=\"font-family: Times New Roman,serif;\">&nbsp;&nbsp;&nbsp;&nbsp; The viewer is curious to what the young woman is doing, but yet cannot grasp her strange activities. The viewer senses, however, that these rituals are extremely important. There is no need for color, as black and white perfects the quiet and calm thoughts of the nymph. Using a 4x5 camera, the landscape is presented in crisp detail, mixing together the reality of a photograph with a surreal world. The landscape, gray and deteriorating, highlights the white figure and makes her radiant. She becomes the only bright thing in a dark world. </span></p>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1250893390','2009','8','21','statement','',''),
 ('670','Untitled','the mirrored self','gallery','','','','image670-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','4','1250950650','2009','8','22','gallery','',''),
 ('671','Untitled','the mirrored self','gallery','','','','image671-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','5','1250950662','2009','8','22','gallery','',''),
 ('672','Untitled','the mirrored self','gallery','','','','image672-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','6','1250950702','2009','8','22','gallery','',''),
 ('673','Untitled','the mirrored self','gallery','','','','image673-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','7','1250950729','2009','8','22','gallery','',''),
 ('674','Untitled','the mirrored self','gallery','','','','image674-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','8','1250950761','2009','8','22','gallery','',''),
 ('675','Untitled','the mirrored self','gallery','','','','image675-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','9','1250950779','2009','8','22','gallery','',''),
 ('676','Untitled','the mirrored self','gallery','','','','image676-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','10','1250950810','2009','8','22','gallery','',''),
 ('678','Resting Man','sicily','gallery','','','','image678-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','11','1251296022','2009','8','26','gallery','',''),
 ('679','Garden of Ruins','sicily','gallery','','','','image679-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','12','1251296036','2009','8','26','gallery','',''),
 ('680','Hidden Behind Ivy','sicily','gallery','','','','image680-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','13','1251296049','2009','8','26','gallery','',''),
 ('681','Sun Columns','sicily','gallery','','','','image681-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','14','1251296069','2009','8','26','gallery','',''),
 ('682','Ruin Rocks','sicily','gallery','','','','image682-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','15','1251296104','2009','8','26','gallery','',''),
 ('683','Open Window','sicily','gallery','','','','image683-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','16','1251296122','2009','8','26','gallery','',''),
 ('684','Resting Nuns','sicily','gallery','','','','image684-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','17','1251296132','2009','8','26','gallery','',''),
 ('685','Procession March','sicily','gallery','','','','image685-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','18','1251296147','2009','8','26','gallery','',''),
 ('686','Nuns in an Alley','sicily','gallery','','','','image686-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','19','1251296170','2009','8','26','gallery','',''),
 ('687','Void','sicily','gallery','','','','image687-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','20','1251296193','2009','8','26','gallery','',''),
 ('690','Sicily','sicily','blog','Traveling to Sicily was one of the most memorable experiences of my life.  I grew up in crowded towns and visited New York City weekly, so encountering a place filled with vistas of rolling green hills and beautiful blue skies put me in awe. I was particularly taken by the old crumbling architecture and broken little houses that dotted the landscape. In the American city, if a building is deteriorating, you demolish it and put up something new.  In contrast, Sicily is a timeless country.  Itâ€™s history and cultural influences can be read in the design and embellishments of its buildings and facades.  \r\n<p>&nbsp;</p>\r\nI have been influenced by 19th century landscape photography. Early photographers journeyed to exotic places and captured panoramic views unseen by human eyes. Oftentimes they placed figures within their images, allowing a viewer to experience the vastness of these majestic spaces and marvel in their magnificence. I approached my project with a similar sensibility.\r\n<p>&nbsp;</p>\r\nMy photographs are filled with dark shadows. I use grain for a desired effect, suggesting an ageless, strange presence. Black and white film lends a quiet feeling to the compositions- imbuing my images with a sense of mystery. I place myself within this landscape. I am a small, tiny figure amongst the grand scale of pillars, hills, and trees. It is as if I donâ€™t belong, as if nature is too broad for me to comprehend. When other people are situated in my photographs, they too, are out of place. Dressed in odd clothing of a different time, they walk amongst the streets of today. They merge with the surroundings, becoming a part of it. They are as timeless as Sicily is itself.','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1251308870','2009','8','26','statement','',''),
 ('691','Masquerade','other works','gallery','','','','image691-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','31','1251296686','2009','8','26','gallery','',''),
 ('695','Picnic','other works','gallery','','','','image695-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','25','1251296592','2009','8','26','gallery','',''),
 ('696','The Only Tree','other works','gallery','','','','image696-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','27','1251296666','2009','8','26','gallery','',''),
 ('697','Secluded Alleyway','other works','gallery','','','','image697-1.jpg','','','','','','','','','','Digital Inkjet Print-11x14','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','35','1251296702','2009','8','26','gallery','',''),
 ('699','Out the Window','other works','gallery','','','','image699-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','38','1251296798','2009','8','26','gallery','',''),
 ('700','Storefront','other works','gallery','','','','image700-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','33','1251296694','2009','8','26','gallery','',''),
 ('701','Memory','other works','gallery','','','','image701-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','21','1251296562','2009','8','26','gallery','',''),
 ('702','Thought','other works','gallery','','','','image702-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','23','1251296572','2009','8','26','gallery','',''),
 ('703','View from Underwater','other works','gallery','','','','image703-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','41','1251296763','2009','8','26','gallery','',''),
 ('704','Reaching','other works','gallery','','','','image704-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','29','1251296676','2009','8','26','gallery','',''),
 ('705','Street Kids','other works','gallery','','','','image705-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','39','1251296742','2009','8','26','gallery','',''),
 ('706','Movement','other works','gallery','','','','image706-1.jpg','','','','','','','','','','Digital Inkjet Print-8x10','','','','','150','0','0','0','0','10','0','0','0','0','10','0','0','0','0','0','','43','1251296775','2009','8','26','gallery','',''),
 ('638','','','blog','hi julia! this is your boyfriend <3','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246974687','0','0','0','statement','pshorey','pshorey'),
 ('639','','','blog','hi again! hope you like your site','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','637','','0','1246975456','0','0','0','statement','pshorey','pshorey'),
 ('643','Horizon','illusions','gallery','','','','image643-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','26','1246975752','2009','7','7','gallery','',''),
 ('657','Form','illusions','gallery','','','','image657-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','0','0','0','0','10','0','0','0','0','15','0','0','0','0','0','','36','1248358239','2009','7','23','gallery','',''),
 ('648','Grasp','illusions','gallery','','','','image648-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','32','1246975813','2009','7','7','gallery','',''),
 ('649','Half','illusions','gallery','','','','image649-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','24','1246975695','2009','7','7','gallery','',''),
 ('650','Held','illusions','gallery','','','','image650-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','180','10','0','0','0','1','20','0','0','0','0','0','','30','1246975801','2009','7','7','gallery','',''),
 ('651','Reverse','illusions','gallery','','','','image651-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','34','1246975826','2009','7','7','gallery','',''),
 ('652','Seen','illusions','gallery','','','','image652-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','180','180','180','180','10','1','1','1','1','20','0','0','0','0','0','','44','1246975942','2009','7','7','gallery','',''),
 ('653','Tilt','illusions','gallery','','','','image653-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','20','20','20','20','20','0','','40','1246975928','2009','7','7','gallery','',''),
 ('654','Lift','illusions','gallery','','','','image654-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','42','1246975913','2009','7','7','gallery','',''),
 ('655','Reveal','illusions','gallery','','','','image655-1.jpg','','','','','','','','','','Silver Gelatin Print, 11x14','','','','','250','200','200','200','200','10','1','1','1','1','15','20','20','20','20','0','','28','1246975775','2009','7','7','gallery','',''),
 ('661','Frame','illusions','gallery','','','','image661-1.jpg','','','','','','','','','','Silver Gelatin Print, 16x20','','','','','350','0','0','0','0','10','0','0','0','0','20','0','0','0','0','0','','22','1248357898','2009','7','23','gallery','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `mauriceanthonyent_pages` 
-- 

INSERT INTO `mauriceanthonyent_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','placement asc','1','<p>This site is almost finished! Please <a onclick=\"return addthis_sendto()\" onmouseover=\"return addthis_open(this, \'\', \'http://www.mauriceanthonyentest.com\', \'Julia Forrest Photography\')\" onmouseout=\"addthis_close()\" href=\"http://www.addthis.com/bookmark.php?v=20\" target=\"_blank\">bookmark this page</a> and come back real soon.</p>','','','home','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','','	    ','','Login','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('56','shoppingcart','shoppingcart','0','placement asc','hidden','<p>This is your shopping cart. Please scroll down to see the price and checkout.</p>','','','Your shopping cart','','','','1246992987'),
 ('43','gallery','gallery','2','placement asc','1','','','','gallery','','','','1240361394'),
 ('57','resume','blog','4','placement asc','1','<p>Bio:</p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;&nbsp;&nbsp;&nbsp; My name is Julia Forrest  and I am a Brooklyn based artist. I recently graduated from Hartford Art school with a BFA in fine art photography. Surrounded by the constant creativity in NY and only a subway ride away from any museum or gallery, I constantly involve myself in the art world. I work mostly in film and print all images myself in a darkroom I built within my apartment. My own art has always been my top priority in life and in this digital world, I will continue to work with old processing. Anything can simply be done in photoshop, I prefer to take the camera, a tool of showing reality, and experiment with what I can do within it. I create surreal environments, tricking the camera into what it sees.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Solor Exhibitions:</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">2010</p>\r\n<p style=\"margin-bottom: 0in;\">Illusion, chashama gallery, New York, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Illusion, Beehive Salon, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Group Exhibitions:</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2010</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">Breukelen Rebuilt, Breukelen, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">The Great Pop Up Art Sale, Dumbo Art Center, Brooklyn, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2009</p>\r\n<p style=\"margin-bottom: 0in;\">My Long Island, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">BFA Senior Thesis Photography Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Goldfarb, Joseloff Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2008</p>\r\n<p style=\"margin-bottom: 0in;\">Sicily Photography, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">A Passion for Pixels, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan Faculty Show, Usdan for the Creative and Performing Arts,Wheatley Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">Free Play, Islip Art Museum, Islip, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2006</p>\r\n<p style=\"margin-bottom: 0in;\">SQURL Art Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">2005</p>\r\n<p style=\"margin-bottom: 0in;\">Foundations Exhibition, Silpe Gallery, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Gallery North Art Exhibit, Gallery North, Setauket, NY</p>\r\n<p style=\"margin-bottom: 0in;\">2004</p>\r\n<p style=\"margin-bottom: 0in;\">Nita Elder Scholarship Art Exhibit, South Bay Art Association, Bellport, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Creative Expressions Artists Showcase, Ward Melville Gallery and Cultural Center, Stonybrook, NY</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">2003</p>\r\n<p style=\"margin-bottom: 0in;\">Mixed Media Exhibit, Baffa Art Gallery,  Sayville, NY</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Experience:</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Education:</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2009</p>\r\n<p style=\"margin-bottom: 0in;\">Hartford Art School, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Bachelor of Photography, GPA- 3.64, Magnum Cum Laude, Presidents List, Deans List</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Work Experience:</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2010-present</p>\r\n<p style=\"margin-bottom: 0in;\">Brooklyn Museum, Brooklyn NY</p>\r\n<p style=\"margin-bottom: 0in;\">Photography Instructor (Maya/ Supervisor)</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-teach a basic photography class focusing on digital, pinhole, and darkroom photography. Ages 12-14.</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-lessons include how to take professional quality images on a point and shoot digital camera, how to build your own working pinhole camera, and the development/printing process.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">2009-2010</p>\r\n<p style=\"margin-bottom: 0in;\">ROCKSTAR GAMES, New York, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Photography and Video Capture Artist (Lazlow/Supervisor)</p>\r\n<p style=\"margin-bottom: 0in;\">-responsible for taking screen captures of gameplay for use both in print and online campaigns</p>\r\n<p style=\"margin-bottom: 0in;\">-conceive of and execute the best-looking scenes and shots possible in a 3D environment</p>\r\n<p style=\"margin-bottom: 0in; font-style: normal; font-weight: normal; text-decoration: none;\">-using editing programs such as Avid and ACDSee</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2006-2009</p>\r\n<p style=\"margin-bottom: 0in;\">USDAN FOR THE CREATIVE AND PERFORMING ARTS, Wheatly Heights, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Digital Photography Instructor (Lori Sklar/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught two classes monday-friday, ages 10-12 and 14-16</p>\r\n<p style=\"margin-bottom: 0in;\">-lessons on how to use your camera, composition, lighting studio, photoshop workflow,  and printing.</p>\r\n<p style=\"margin-bottom: 0in;\">-matted and hung student work for a gallery show at the end of the summer</p>\r\n<p style=\"margin-bottom: 0in;\">Usdan.com Photography Editor</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-photographed students daily enjoying the art facility and working on projects.</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal;\">-edited, prepared, uploaded and arranged photographs on the website to impress future students.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007-2008</p>\r\n<p style=\"margin-bottom: 0in;\">HARTFORD ART SCHOOL PHOTOGRAPHY DEPARTMENT, West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Photography Technician for the Digital Lab and B&amp;W and Color Darkrooms (Christine Dalenta/Technician)</p>\r\n<p style=\"margin-bottom: 0in;\">-prepared darkroom chemical setup, inkjet printers, and color darkroom for student use</p>\r\n<p style=\"margin-bottom: 0in;\">-maintained all lighting and printing equipment to hand out to students</p>\r\n<p style=\"margin-bottom: 0in;\">-assisted students with darkroom printing, adobe photoshop, and inkjet printing</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2005-2008</p>\r\n<p style=\"margin-bottom: 0in;\">THE ART LEAUGE OF LONG ISLAND Huntington, NY</p>\r\n<p style=\"margin-bottom: 0in;\">Assistant Instructor for Introductory Art Classes (Laura Emiliani/Instructor)</p>\r\n<p style=\"margin-bottom: 0in;\">-taught a wide range of art classes, ages 3-16</p>\r\n<p style=\"margin-bottom: 0in;\">-classes specialized in sculpture, ceramics, drawing, painting, illustration, and architecture</p>\r\n<p style=\"margin-bottom: 0in;\">-constantly prepared lesson plans with new project ideas. Never repeated the same project</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">2007</p>\r\n<p style=\"margin-bottom: 0in;\">UNIVERSITY OF HARTFORD West Hartford, CT</p>\r\n<p style=\"margin-bottom: 0in;\">Publicity and Events Manager</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-organized, planned and put on all concerts and events for the university of hartford</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-compile, review and negotiate contract terms and language in performance agreements</p>\r\n<p style=\"margin-bottom: 0in; font-weight: normal; text-decoration: none;\">-maintained detailed status accounts and records of show confirmations, expenses, and deposits.</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p style=\"margin-bottom: 0in;\">Skills:</p>\r\n<p style=\"margin-bottom: 0in;\">Black and White: 35mm and medium format camera, RC/Fiber</p>\r\n<p style=\"margin-bottom: 0in;\">Color: 35mm camera, photographic color theory, C-printing</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 4x5: Studio, Zone System and Field</p>\r\n<p style=\"margin-bottom: 0in;\">Large Format 8x10</p>\r\n<p style=\"margin-bottom: 0in;\">Digital: Photoshop workflow, Lightroom, HDR</p>\r\n<p style=\"margin-bottom: 0in;\">Non Silver Processes: Platinum/ Palladium</p>\r\n<p style=\"margin-bottom: 0in;\">Commercial Lighting: Studio, strobe, flood, ambient, tungsten, florescent`</p>\r\n<p style=\"margin-bottom: 0in;\">History of Photography: 1834 (Talbot &amp; Daguerre) to late 20th century</p>\r\n<p style=\"margin-bottom: 0in;\">Junior Seminar- Criticizing Photographs, Terry Barrett</p>\r\n<p style=\"margin-bottom: 0in;\">Senior Seminar: BFA Exhibition &amp; Professional Practices</p>\r\n<p style=\"margin-bottom: 0in;\">Koopman Chair with Jerry Spagnoli/ Aziz + Cucher</p>\r\n<p style=\"margin-bottom: 0in;\">Travel Photography: Sicily (Spring 2008)</p>\r\n<p style=\"margin-bottom: 0in;\">&nbsp;</p>\r\n<p>&nbsp;</p>','','','Resume','','','','1250887383'),
 ('52','join','join','0','placement asc','hidden','<p>Get the latest news! Join the site.</p>','','','Join the mailinglist','','','','1245027739'),
 ('55','statement','blog','1','placement asc','1','','','','Artist Statement','','','','1246893299'),
 ('33','mailing list','join','5','date desc','1','<p><strong>Please join the mailing list to recieve updates on Julia Forrest photography.</strong></p>\r\n<p>~ Up and coming shows</p>\r\n<p>~ Photography classes</p>\r\n<p>~ New work</p>\r\n<p><strong>Your email will not be spammed or sent out. It will remain private.</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Or, <a href=\"contact\">email me at jforrest@artspaces.net</a></p>','','<p>The standard site will cost $450, and will include all the features on this page.</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>- unlimited pages, categories, articles</li>\r\n<li>- several unique layouts to display your content</li>\r\n<li>- simple custom logos and illustrations</li>\r\n<li>- a search-engine-friendly design</li>\r\n<li>- a professional look and interesting style</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>- 1 year free hosting</p>\r\n<p>- 1 domain name</p>\r\n<ul>\r\n<li>- an easy site editor to help you make changes</li>\r\n<li>- 5 years technical support for the editor</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>-</p>\r\n<p>&nbsp;</p>\r\n<p>See these points explained, and print them in <a href=\"http://www.artspaces.net/policy\">my policy.</a></p>\r\n<p>It is possible to turn my policy into a binding contract.</p>\r\n<p>&nbsp;</p>\r\n<h3>Order Details</h3>\r\n<p>If you\'re getting the standard site, we do not need a contract because you wont be making a downpayment. Just fill out the <a href=\"http://www.artspaces.net/pricequote\">pricequote</a> to get me started. Go ahead and try this even if you\'re unsure about your plans. When I make the initial design, I will call you to discuss the site.</p>\r\n<p>&nbsp;</p>\r\n<p>If your site requires custom features, I will ask that you pay 50% of it upfront. We will talk over the phone about contract details. When you submit the pricequote, I will get back to you with a price and details.</p>','Mailing list','','','','1236058349'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('58','contact','contact','0','placement asc','hidden','<p>Send me an email below:</p>','','','contact me','','','','1265662252'),
 ('60','account','account','0','placement asc','hidden','','','','My Account','','','','1274303062');

-- --------------------------------------------------------

-- 
-- Dumping data for table `mauriceanthonyent_redirects` 
-- 

INSERT INTO `mauriceanthonyent_redirects` (`id`, `page`, `redirect`) VALUES ('2','blog','http://mauriceanthonyentestphoto.blogspot.com/');

-- --------------------------------------------------------

-- 
-- Dumping data for table `mauriceanthonyent_users` 
-- 

INSERT INTO `mauriceanthonyent_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('20','heather4x5@gmail.com','99c8oh8c','Heather','White','','heather4x5@gmail.com','','','','yes'),
 ('14','pshorey','hawaii','paul','shorey','','pshorey@artspaces.net','','','editor','yes'),
 ('7','maurice','brooklyn1','maurice','anthony','','maurice@mauriceanthonyent.com','','0','editor','yes'),
 ('19','eve@go-media.com','ykfus1r1','Eve','Windebank','','eve@go-media.com','','','','yes'),
 ('21','rogcast211@sbcglobal.net','8vqj7kq','Roger','Castonguay','','rogcast211@sbcglobal.net','','','','yes'),
 ('22','little@hartford.edu','yqa5tkzl','Amanda ','Little','C','little@hartford.edu','','','','yes'),
 ('23','scottjmccracken@gmail.com','9pyw5f48','Scott','McCracken','J','scottjmccracken@gmail.com','','','','yes');

-- --------------------------------------------------------

-- 
-- Dumping data for table `paulshore_items` 
-- 

INSERT INTO `paulshore_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('533','The Poetics of Relation','senior show','gallery','<p>I wanted to see how people would respond if they saw a wall of faces looking at them and each other. Their response would then be put on the wall for the next person to ponder.</p>','<p>For my senior show, I had an opportunity of exhibiting to a lot of people, in a perfectly dim space with a huge wall all to myself. It quite tiring climbing 20ft ladders running up all the wires, but in the end it worked nicely.</p>','','image533-1.jpg','','','','','video533-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1239365061','2009','4','10','media arts','',''),
 ('518','Senior Project 2009','senior show','gallery','<p>What resulted from this effort is a system of dynamic video manipulation that can be modified for abstract projections in any gallery exhibit or filled with custom content for any ad campaign.</p>','','','image518-1.jpg','','','','','video518-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1','1239278748','2009','4','9','media arts','',''),
 ('528','The Hipsters are judging you from above','senior show','gallery','<p>This was a fun piece. Like in the \"study of movement\", the animation follows the passing person. My Media Arts Department was located on the second floor overlooking a large atrium from above. So I thought it would be funny if I put the projection up that high with the faces and expressions of the Media Arts majors. It was very entertaining!</p>','','','image528-1.jpg','','','','','video528-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','3','1235808574','2009','2','28','media arts','',''),
 ('531','Deep water exploration','senior show','gallery','<p>This is a project made with Adobe Flash and Pure-data with a local webserver connecting the two programs.<br /><br />Strange deep-water fish, garbage, a mermaid, and ruins of our civilization are floating and swimming randomly in a cityscape, following their own course of events.<br /><br />When a person walks up, a window is opened, like a flashlight shining into the darkness, allowing him/her to see whats inside. The window follows the person, creating the impression that the viewer is holding the flashlight, actively peering into the deep.</p>','','','image531-1.jpg','','','','','video531-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','6','1236671021','2009','3','10','media arts','',''),
 ('587','Senior Project Test','senior show','gallery','<p>I&rsquo;ve created these projects in the program &ldquo;Pure Data&rdquo;. Pure Data or PD, is a very simple graphical interface for simple &ldquo;C&rdquo; scripts. While its nice to be able to manipulate audio and video visually, there are a lot of things the program doesnt do. For example, It motion-tracked a person walking by a camera. But, its results were extremely jumpy x, y coordinates. I then took the raw data, averaged, smoothed, it using math functions, and used the output to control audio and video triggers.</p>','','','image587-1.jpg','','','','','video587-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','2','1238069118','2009','3','26','media arts','',''),
 ('588','World View','senior show','gallery','<p>This is an interactive documentary. A journey around the world in the time it takes to cross two projector screens.<br /><br />The viewer comes in, a video starts playing. If the viewer moves right, the video adjusts its position and plays a scene from a country to the east. If the viewer moves left, the video moves west.<br /><br />The videos are home-made movies from people all around the world. Some are made by tourists. Some by locals, but they all seem to capture average lives of everyday middle-class people.<br /><br />The audio is from internet radio stations that the people in that region of the world listen to. Its funny to me how many of the clips turned out to be really cheesy American Pop, but they are chosen at random. So are the videos.</p>','','','image588-1.jpg','','','','','video588-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','5','1237362210','2009','3','18','media arts','',''),
 ('589','A study of movement','senior show','gallery','<p>A simple interaction between a person and animated object. A videoclip plays when the viewer moves in one direction. Another plays when he/she moves in another, and another plays when the viewer is standing still.</p>','','','image589-1.jpg','','','','','video589-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','4','1235635790','2009','2','26','media arts','',''),
 ('671','Artspaces.net','web design','gallery','<p>A freelance work and testing ground, these web design clients allow me to develop and expand my publishing and editing programs.<br /><br />I&rsquo;m currently advertising my services, and always looking for critical feedback. Please let me know what you think about my work, and how I can improve it.</p>','<p>Artspaces.net is my freelance design portal for artists, artisans, jewelry makers, and other creative people. It&rsquo;s a place where I can advertise my services, and future clients can send pricequotes, ask questions, and upload media for their new site.</p>','','image671-1.jpg','image671-2.jpg','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.artspaces.net','1','1246536443','2009','7','2','artspaces','',''),
 ('640','Behind the Scenes','senior show','gallery','<p>This is a sort of \"behind the scenes\" look at my senior year of media arts. See me install, test, and explain the setup. Also, see the equipment it takes to create an interactive installation.</p>','','','image640-1.jpg','','','','','video640-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','7','1233473279','2009','2','1','media arts','',''),
 ('641','Editorial','videos','gallery','<p>A video class project. We were to pick an article, and deconstruct its meaning and words in a video to draw new and maybe ironic meaning from it.</p>','','','image641-1.jpg','','','','','video641-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','10','1225570062','2008','11','1','video','',''),
 ('642','Biographical','videos','gallery','<p>This is a sketch for a project I\'d really like to do... in postproduction, to add moving video to another moving object. It can be done in animated Pixar film, but I wanted to put video into another video. So, I downloaded a copy of Maya, Boujou, and set out on the town. I still need to redo this with an HD camera and a much better script. :)</p>','','','image642-1.jpg','','','','','video642-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','8','1224360426','2008','10','18','video','',''),
 ('643','Audio','videos','gallery','<p>Everyone in the class first created an abstract audio composition. We then swapped with everyone else in the class, and had to come up with a video response to their piece. I got Mike Mal\'s sound, which sounded very industrial and technical. So, I came up with a response.</p>','','','image643-1.jpg','','','','','video643-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','9','1223323648','2008','10','6','video','',''),
 ('680','FriendlyEditor.com','editor','gallery','<p>The client can easily make changes to the websites simply by logging in and clicking buttons. They can easily create pages and content, arrange articles on the site, and manage mailinglists. The editor is as fully-featured as Joomla&rsquo;s tool, but is displayed on the site as a toolbar and buttons.</p>\r\n<p><br />All functionality lies in the top toolbar, while buttons throughout the site provide shortcuts for easier access to these tools. To arrange and edit site pages and menus, select \"site\" -&gt; \"pages\". To send mailinglists, choose \"users\" -&gt; \"send mailinglist\". To add an article or product, choose \"entries\" -&gt; \"add\".<br /><br />Try an instant, online demo at <a href=\"http://www.friendlyeditor.com\" target=\"_blank\">www.friendlyeditor.com</a>.</p>\r\n<ul>\r\n</ul>','<p>This is a custom content management interface I created for my clients at www.artspaces.net. I try to focus on artists and jewelry-makers who need creative sites, but dont have the technical skills to use even the easiest tools like Drupal or Joomla. For them, an easy site manager like this is essential, to make content management easy, but without sacrificint any functionality.</p>','','image680-1.jpg','image680-2.jpg','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.friendlyeditor.com','2','1246536999','2009','7','2','userfriendly cms','',''),
 ('684','Dynamic Titles','scripts','gallery','<p>I&rsquo;ve developed my own javascript tool for dynamic font replacement. It can be used with any javascript framework or by itself. They are just like SIFR titles, but render better, and are more customizable.<br /><br />When using dynamic titles, I make sure that they look good without Javascript, so that people with older browsers as well as search engines will see the full page.<br /><br />Another benefit over SIFR (besides better rendering), is that these titles are highly customizable, and can be made to include multiple lines of text, paragraphs, or even videos and animations. Anything is possible with these flash files.</p>','<p>Using a simple Jquery command, replace h1, h2, h3, h4 titles with sophisticated fonts or playful animations. Search engines still see the h1, h2 tags, easily sorting through the site content. With the site-editor, change each title to keep it relevant and up to date.</p>','','image684-1.jpg','','','','','','','','','','Replace h1, h2, h3, h4 titles with sophisticated fonts or playful animations.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','3','1246537352','2009','7','2','userfriendly cms','',''),
 ('702','Jquery library','scripts','gallery','<p>Jquery is a javascript framework that makes life easier for webdesigners. It is included in my UserFriendlyCMS platform. With simple tags, make roll-out menus, fade-in options, slideshows, and drag-drop interfaces. Its easy and reliable.</p>','','','image702-1.png','','','','','','','','','','make roll-out menus, fade-in options, slideshows, and drag-drop interfaces. Its easy and reliable.','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251203173','2009','8','25','userfriendly cms','',''),
 ('703','Video publishing','scripts','gallery','<p>Video publishing, ajax-compatible popup boxes, dynamic urls, and search engine optimization are just some of the tools that come with my UserFriendlyCMS. An entire code library that I developed, you just type</p>\r\n<p>\"&lt;!--{playmedia image=\"/images/`$items.0.image1`\" file=\"/videos/`$items.0.video1`\" height=\"400\" width=\"580\"}--&gt;\"</p>\r\n<p>to publish media content in any format. To make a dynamic title, modify the Flash file, then type \"&lt;h1&gt;Your Title&lt;/h1&gt;\". The program does the rest.</p>','','','image703-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1000000000','1251203388','2009','8','25','userfriendly cms','',''),
 ('681','FriendlyPublisher.com','publisher','gallery','<p>It\'s a publishing platform, a lot like CakePHP or Zend, but much much simpler. In fact, the actual script is only a few lines of code. The rest is plugins, with their functions stacked one on top of another.</p>\r\n<p>&nbsp;</p>\r\n<p>An entire workflow, a combination of tools that I use on a regular basis bundled into a single program. Right now, I\'m testing it on my own sites,but will soon open it up to the community for free or cheap download.</p>\r\n<p>&nbsp;</p>\r\n<p>It\'s made up entirely of plugins which interact with one another through a hierarchal series of function calls. One of the plugins is a site editor, which displays a toolbar if the logged in user has the proper credentials. Other plugins like \"pages\", \"users\", or \"items\" add their own functions and links to it. An \"rss\" plugin changes the editor link \"add item\" to \"add news feed\" whenever a page design displays news feeds. The shopping plugin does the same whenever the page displays shopping cart items.</p>\r\n<p>&nbsp;</p>\r\n<p>This system is very open and expandable. It\'s so simple that anybody can alter its functionality. The plugin API is so simple that a plugin can be written in just a few minutes.</p>\r\n<p>&nbsp;</p>\r\n<p>Creating a social network is as easy creating an html template, and displaying users information with special html tags. The included site editor already has a page that displays and modifies user information. The same code and processes can be copied to the main pages.</p>\r\n<p>&nbsp;</p>\r\n<p>Including Ajax is easy. Just make a separate template for the dynamic section of the page, and update it with Jquery, which is also included. The code is so easy to work with and expandable! I\'ve used other CMS platforms in the past, but they dont come close.</p>\r\n<p>&nbsp;</p>\r\n<p>I\'m currently documenting the plugins and design tools, and will soon release it to the developers community under a open or shared source license.</p>\r\n<p>&nbsp;</p>\r\n<p>Please contact me for a one-on-one demonstration of this program. I would love to help you integrate it into your own project.</p>','','','image681-1.jpg','image681-2.jpg','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.friendlypublisher.com','4','1246537156','2009','7','2','userfriendly cms','',''),
 ('687','City at night','city at night','gallery','<p>The creepies but most beautiful thing ever at night. The lighting in the image is only slightly exaggerated. This KFC really was like a beacon of light surrounded by an empty lot, parking lot, and darkness.</p>','','','image687-1.jpg','','','','','','','','','','','','','','','0','0','60','60','60','0','0','6','6','6','0','0','0','0','0','0','','0','1246560315','2009','7','2','digital photo','',''),
 ('686','Old Victorian','city at night','gallery','<p>I used to live on the border of a nice historic neighborhood and a low-class rundown one. The two environments combined there sometimes in the strangest way. Especially at night. I fell in love with this house. So rickety and run-down, but at the same time tied to such a rich stylistic history. Very surreal. The light coming through the window amplified the effect, making a strange haunted doll-house type of effect</p>','','','image686-1.jpg','image686-1.jpg','','','','','','','','','24 x 17 Matted','24 x 17 Framed','','','','60','160','120','120','120','6','6','6','6','6','0','0','0','0','0','0','','0','1246588909','2009','7','2','digital photo','',''),
 ('688','Clemens Place','city at night','gallery','<p>This is actually my old apartment. Clemens Place in Hartford CT. A great place, very charming, cozy and historic. At night though, it was like the rest of the old neighborhood, creepy and surreal.</p>','','','image688-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1246560330','2009','7','2','digital photo','',''),
 ('689','Seminary','city at night','gallery','<p>What a great place, a center for religious study, learning, and understanding, the Hartford Seminary. The building was designed by some famous architect. It\'s really beautiful in the moonlight.</p>','','','image689-1.jpg','image689-1.jpg','','','','','','','','','24 x 17 Matted','24 x 17 Framed','','','','60','160','0','0','0','6','6','0','0','0','0','0','0','0','0','0','','0','1246588894','2009','7','2','digital photo','',''),
 ('690','Imprezzza','commercial photo','gallery','<p>A photography class project. A subtle statement on overconsumption. Notice the overflowing Cafe Latte.</p>','','','image690-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1246536161','2009','7','2','digital photo','',''),
 ('691','Technology Tree','commercial photo','gallery','<p>At my old job at the Kolo Albums store, they had the coolest silver rubber tree. I wanted to take a picture of it for the longest time. When they got this rediculous printer and a bunch of wires, I couldnt resist.</p>','','','image691-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1246564609','2009','7','2','digital photo','',''),
 ('692','Le Grand','commercial photo','gallery','<p>A huge SUV in front of a huge building. I scaled the car up a bit. Thats it.</p>','','','image692-1.jpg','','','','','','','','','','0','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1246564790','2009','7','2','digital photo','',''),
 ('693','Hippies','west hartford center','gallery','<p>I just love these two hippies. Wearing protest pins and army jackets while shopping and sipping Starbucks. What a great statement on our comfortable consumer culture.</p>','','','image693-1.jpg','','','','','','','','','','0','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1246564848','2009','7','2','digital photo','',''),
 ('694','America','west hartford center','gallery','<p>I love this image too, with the big red white and blue, the blue jeans, the minivan, the shopping center. Its all so lovely and stereotypical.</p>','','','image694-1.jpg','','','','','','','','','','24 x 17 Matted','','','','','60','0','60','60','60','20','0','20','20','20','0','0','0','0','0','0','','0','1246564877','2009','7','2','digital photo','',''),
 ('695','Shopping','west hartford center','gallery','<p>Some friends and families window-shopping and enjoying the sunshine.</p>','','','image695-1.jpg','','','','','','','','','','24 x 17 Matted','','','','','60','0','60','60','60','20','0','20','20','20','0','0','0','0','0','0','','0','1246564893','2009','7','2','digital photo','',''),
 ('696','','','projects','<p>Nice work Paul!</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','533','','0','1246637209','0','0','0','projects','pshorey','pshorey'),
 ('697','','','projects','<p>This is a sample comment...</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','533','','0','1246637224','0','0','0','projects','pshorey','pshorey'),
 ('701','The Urban Minute','the urban minute','gallery','<p>It has the potential to be very profitable. There is lots of empty space which can be filled in with keyword-specific advertising. Visitors will be charged a small fee for premium accounts. Finally, every link displayed can be dynamically modified to include an affiliate code, turning this into a live affiliate-marketing campaign.<br /><br />Later, I will expand this into a social-network, where users can view each others&rsquo; profiles, share links, and choose from different CSS styles.</p>','<p>This project was created with the Userfriendly CMS, and&nbsp;demonstrates its ease-of-use and flexibility. It\'s ready now, but in the future will include public profiles and message-boards,&nbsp;where users will be able to see each others articles, make comments, and add new-found links to their own accounts.</p>','','image701-1.png','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','http://www.theurbanminute.com','1000000000','1250683708','2009','8','19','the urban minute','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `paulshore_pages` 
-- 

INSERT INTO `paulshore_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','date desc','hidden','<p><strong>I\'m currently working<br />on developing new layouts<br />for <a class=\"cyan\" href=\"http://www.focusfeatures.com\" target=\"_blank\">Focus Features</a>, a film<br />site getting over 1,000,000 </strong></p>\r\n<p><strong>visitors each month.</strong></p>\r\n<p><strong><br /></strong></p>\r\n<p><strong>I\'m also creating new </strong></p>\r\n<p><strong>sites for smaller clients. </strong></p>\r\n<p><strong>Please check out</strong></p>\r\n<p><strong><a class=\"magenta\" href=\"http://www.PurpleLanternStudio.com\" target=\"_blank\">PurpleLanternStudio.com</a>,</strong></p>\r\n<p><strong><a href=\"http://www.juliaforrest.com\" target=\"_blank\">JuliaForrest.com</a>, and<br /><a href=\"http://www.artspaces.net/gallery\">Artspaces.com/gallery</a></strong></p>\r\n<p><strong><br /></strong></p>\r\n<p><strong>Also demo my unique</strong></p>\r\n<p><strong><a class=\"cyan\" href=\"http://www.friendlyeditor.com\" target=\"_blank\">userfriendly site editor</a>,</strong></p>\r\n<p><strong>and please check back </strong></p>\r\n<p><strong>soon for more updates!</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Please contact me&nbsp;<br />ps@artspaces.net&nbsp;<br />860 849-1282&nbsp;</strong></p>','','','Welcome','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('51','login','login','0','placement asc','hidden','	    ','	    ','','Login and join the fun!','','','','1245027696'),
 ('48','404','404','0','placement asc','hidden','','<p>&nbsp;</p>\r\n<p><a href=\"home\">Click here to go back to the homepage.</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','1242828983'),
 ('62','resume','resume','8','placement asc','1','<p>A passionate artist and creative programmer, a bold designer and an energetic leader, I will offer a fresh and unique approach to every project. Excited about creating engaging designs and dynamic user experiences, I want to be a part of&nbsp; your team, collaborating with other professionals to solve new problems and create new services.</p>\r\n<p>Download resume <a href=\"http://www.paulshorey.com/resume_shorey_web.doc\">.doc</a> <a href=\"http://www.paulshorey.com/resume_shorey_web.pdf\">.pdf</a></p>\r\n<p>&nbsp;</p>\r\n<h2>Experience</h2>\r\n<p><strong><span class=\"black\">April 2009 - Currently</span><br />Developer - Freelance</strong><br />TheUrbanMinute.com - community news and social-networking<br />FriendlyPublisher.com - simpler and cleaner alternative to popular CMS<br />FriendlyEditor.com - a user-friendly content management interface<br />Artspaces.net - web services for small businesses, artists and artisans.<br /><em>Contact - Laura Forrest, (631) 737-5596 - client, handmadebylaura.com</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"black\">May 2004 - Currently</span><br />Designer - Freelance</strong><br />JewelryByTracie.com, HandmadeByLaura.com, JuliaForrest.com,<br />Please view additional work at www.artspaces.net/gallery<br /><em>Contact - Tracie Sachs, max@quickchick.com - client, jewelrybytracie.com</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"black\">January 2009 - May 2009</span><br />Artist - Media Arts</strong><br />Working on group shows and programming interactive video installations.<br /><em>Contact - Gene Gort, gort@hartford.edu - director, media arts dept</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"black\">February 2006 - September 2008</span><br />Intern - Kolo LLC.</strong><br />Assisting designers, and researching/planing new products &amp; services.<br /><em>Contact - Keith Werner, kkw@kolo.usa.com - president, co-owner </em></p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"black\">June 2006 - August 2006</span><br />Head of Publicity - Campus Activities Team</strong><br />Managing the website, designing flyers and posters, marketing events.</p>\r\n<p>&nbsp;</p>\r\n<p><strong><span class=\"black\">June 2006 - August 2006</span><br />Layout Editor - University of Hartford Yearbook</strong><br />Managing the website, creating theme pages with Microsoft Publisher.</p>\r\n<p>&nbsp;</p>\r\n<p><strong class=\"black\">June 2006 - August 2006</strong><br /><strong>Intern - Alphagraphics LLC.</strong><br />Prepping documents for offset/digital press, binding and making copies.</p>\r\n<p>&nbsp;</p>\r\n<p><strong class=\"black\">Before November 2007</strong></p>\r\n<p><strong>Server - </strong><strong>Starbucks, Chippanee Golf Club, Hartford Country Club, Joe Blacks Restaraunt, The Russell</strong></p>\r\n<p>Fast fast fast and friendly service was the key in serving lines of coffee drinkers and rooms of diners.</p>\r\n<p>&nbsp;</p>\r\n<h2>Awards and Exhibitions</h2>\r\n<p><strong>2004</strong> - Art Exhibition - Tunxis Community College, Farmington, CT</p>\r\n<p><strong>2003/05</strong> - Gold Portfolio, Gold Key, Honorable Mention - Scholastics Art &amp; Writing Show, CT</p>\r\n<p><strong>2004</strong> - Highest Merit Scholarship Award - Hartford Art School, CT</p>\r\n<p><strong>2005</strong> - Voices Magazine publication - Bristol CT</p>\r\n<p><strong>2006</strong> - Freshman Foundations Exhibition - Silpe Gallery, West Hartford, CT</p>\r\n<p><strong>2008</strong> - SQURL Art Exhibition - Silpe Gallery, West Hartford, CT</p>\r\n<p><strong>2009</strong> - Senior Show - Silpe Gallery, West Hartford, CT</p>\r\n<p>&nbsp;</p>\r\n<p>Demo my own intuitive userfriendly CMS below, login with u:visitor p:pass</p>\r\n<p>Please ask me to come in and show you examples of my work and code.</p>\r\n<p>Thank you!</p>','<h2><a href=\"contact\">Contact me</a></h2>\r\n<p>860.849.1282<br /> ps@artspaces.net</p>\r\n<p>&nbsp;</p>\r\n<h2>Education</h2>\r\n<p>May 2009 <br /> BFA - Media Arts<br /> Hartford Art School</p>\r\n<p>High Honors</p>\r\n<p>&nbsp;</p>\r\n<h2>Skills</h2>\r\n<p>Web design<br /> Web development</p>\r\n<p>User interface design</p>\r\n<p>Digital photography<br /> Graphic design<br /> Media arts<br /> Marketing<br /> Video<br /> Printing<br /> Print prep</p>\r\n<p>Studio art<br />Customer service</p>\r\n<p>Business planning</p>\r\n<p>&nbsp;</p>\r\n<h2>Software</h2>\r\n<p>PHP / MYSQL</p>\r\n<p>HTML / CSS<br /> Javascript / Jquery<br /> CMS platforms</p>\r\n<p>Adobe Creative Suite 3<br />Lightroom 2.0<br /> Printer calibration</p>\r\n<p>Final Cut Pro</p>\r\n<p>DVD Studio Pro</p>\r\n<p>3d Studio Max<br /> Microsoft office</p>\r\n<p>&nbsp;</p>\r\n<h2>Interests</h2>\r\n<p>Making things<br /> Photography<br /> Painting<br /> Skiing<br /> Wood-working<br /> Playing music<br /> Concerts<br /> Performances<br /> Fuerza Bruta<br /> Owen Pallett<br /> Gogol Bordello<br /> Camping<br /> Adventuring<br /> Hiking tall mountains</p>\r\n<p>Reading<br />Designing</p>\r\n<p>&nbsp;</p>\r\n<h2>References</h2>\r\n<p>Available on request</p>\r\n<p>&nbsp;</p>\r\n<h2>Code Samples</h2>\r\n<p><a href=\"http://www.paulshorey.com/resume.pdf\">resume.pdf</a></p>','','web application designer / ui engineer','','','','1246506700'),
 ('63','shopping cart','shopping cart','0','placement asc','hidden','<p>This is your shopping cart, where you can adjust the quantity, type, see review the prices. Shipping is included in all prices. To get a site with a shopping cart like this, please visit <a href=\"http://www.artspaces.net\" target=\"_blank\">www.artspaces.net</a>.</p>','<p>Thanks a lot for visiting! I accept Paypal and Googlecheckout. Shipping is included in all prices.</p>','','your shopping cart','','','','1246592767'),
 ('52','join','join','0','placement asc','hidden','<p>Get the latest news! Join the site.</p>','','','Join the mailinglist','','','','1245027739'),
 ('44','rss','rss','0','date desc','hidden','','','','','','','','1240370292'),
 ('37','contact','contact','9','placement asc','1','<p style=\"position: relative; font-style: normal; font-size: 16px; line-height: 20px; font-family: Arial, Helvetica, sans-serif; color: #666666; font-weight: normal; padding: 0px; margin: 0px;\">Thanks a lot for visiting! Please let me know what you think about my work.&nbsp;</p>\r\n<p>I\'ll usually reply the next day.</p>','','','Contact me','','','','1238088319'),
 ('55','projects','projects','2','placement asc','1','<p>I just graduated from the Hartford Art School with a BFA in Media Arts. The best part of the program was how diverse my curriculum could be. I took classes in illustration, painting, graphic design, photography, web design, and interactive media. My last year, I really focused on my major. Here\'s what came out of it...</p>','<p>Thanks a lot for visiting! Please take a look at my <a href=\"http://www.paulshorey.com/resume\">resume</a>.</p>','','recent projects','','','','1246422852'),
 ('64','digital photo','gallery','0','placement asc','2','<p>Most of these images are from digital photo classes in college, where we learned the fundamentals of a digital photo workflow. Shooting in Raw, we sorted through hundreds of photos using Adobe Lightroom, edited and manipulated them without disturbing the original data, then prepared them for output to the printer and to digital media.<br /><br />I&rsquo;ve had experienced printing with many profiles, even creating custom profiles for different types of paper. I have used printer/screen calibration software to make an accurate editing environment, and worked with glossy, lustre, and matte surfaces.<br /><br />I&rsquo;ve worked in a print shop, and have optimized files for digital and 4color presses, and have created slideshows, photo mpegs and galleries for the web. I&rsquo;d love to help you print or publish outstanding quality photos.</p>','','','photography','','','','1249328299'),
 ('65','media arts','gallery','1','placement asc','2','<p>Media Arts for me is like an interactive theater. A lot of fun setting up scripts that take on their own life and interact with people.</p>','','','poetics of relation','','','','1249328360'),
 ('66','userfriendly cms','gallery','4','placement asc','2','<p>Not satisfied with the limitations of popular CMS platforms like Wordpress, Joomla and Drupal, I created my own publishing workflow. The program turned out to be extremely useful. It\'s scalable and expandable with plugins. I currently use to publish all my sites, including the new, interactive newspaper, <a href=\"http://www.theurbanminute.com\" target=\"_blank\">www.theurbanminute.com</a>.</p>','','','UserFriendlyCMS.com','','','','1249328377'),
 ('74','upload','upload','0','placement asc','hidden','<p><strong>Please upload some files and a description along with each. </strong>I\'ll get the message in my email. Total size can be as large as 200mb. To make the process easier, try grouping several files into a \".zip\" archive.</p>\r\n<p><strong>Windows: </strong></p>\r\n<p>1) Open Windows Explorer</p>\r\n<p>2) Hold down \"shift\" or \"control\" to select several files</p>\r\n<p>3) Right click on any file, choose \"send to -&gt; compressed (zip) folder\"</p>\r\n<p><strong>Mac:</strong></p>\r\n<p>1) Open Finder</p>\r\n<p>2) Hold down \"shift\" or \"apple\" to select several files</p>\r\n<p>3) Hold \"control\" or \"apple\" and click on any file, choose \"create zip archive\"</p>','<p>Thank you! I\'ll get back to you right away.</p>\r\n<p>If you are uploading large files, they may take upto 15min to process, especially over a slow connection. This is normal.</p>','','upload some files','','','','1252250626'),
 ('75','test','test','0','placement asc','hidden','<p>This page will test some useful javascripts for compatibility across browsers.</p>','','','testing page','','','','1252954954'),
 ('72','artspaces','gallery','2','placement asc','2','<p>\"Your site will be custom designed for your unique needs. Show your work, interact with your audience, expand your brand, sell your products, and manage your online identity. I&rsquo;m a local designer, and stand behind my work. We can meet in person or over the phone to discuss your plans.\" - Artspaces.net</p>','','','artspaces','','','','1250771694'),
 ('73','the urban minute','gallery','3','placement asc','2','<div>\r\n<p>I&rsquo;m very excited about this project, an online newspaper that combines blog and news feed from across the web into a single, readable format. Of course, its interactive, and anyone can add or edit links. I will soon add custom styles, advertisements, and premium accounts.</p>\r\n</div>','','','TheUrbanMinute.com','','','','1250771754'),
 ('71','video','gallery','0','placement asc','hidden','<p>more details coming soon...</p>','','','video','','','','1250733282'),
 ('76','theme','theme','0','placement asc','hidden','<p>This is a page to test the admin interface theme...</p>','','','theme','','','','1253116471'),
 ('77','fullscreen','fullscreen','0','placement asc','hidden','<p>Testing out some cool positioning effects.</p>','','','Fullscreen background image test','','','','1271353385'),
 ('78','fancyfonts','fancyfonts','0','placement asc','hidden','<p>Lets see if this works...</p>','','','FancyFonts','','','','1271874416'),
 ('79','swftitles','swftitles','0','placement asc','hidden','<p>Lets test this out...</p>','','','SWF Titles','','','','1271881330');

-- --------------------------------------------------------

-- 
-- Dumping data for table `paulshore_users` 
-- 

INSERT INTO `paulshore_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`, `url`) VALUES ('18','pshorey','pshorey','paul','i','shorey','pshorey@gmail.com','860-849-1282','','site owner','yes','http://www.paulshorey.com'),
 ('20','rosenberg','rosenberg','Shari','','Rosenberg','shari.rosenberg@spafinder.com','','','','yes','http://');

-- --------------------------------------------------------

-- 
-- Dumping data for table `philippem_items` 
-- 

INSERT INTO `philippem_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `keywords`, `description`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('525','tuesday, feb. 17, 2004','','blog','<p>I had a really nice week at the XGames in Goldeck, Austria. The track was very interesting and was quite technical with speeds hovering around 160 km/h. I skied very well during training and felt very comfortable in my tuck. Several times in training I had the fastest run.<br />On the day of the race, the track was quite bumpy and there were very high winds. The organizers had to make a decision to run from the lower start instead of the very top of the track. This would mean there would be lower speeds for the race. In addition, we would only have time for one run. This made it a very difficult event.<br />At the start, I had a problem with my skis. The track had a lot of ridges in it, and my ski got hooked on the edge. This made it impossible for me to get into my tuck quickly. I still had a very good run and I finished in 7th place. I think I lost a lot of acceleration at the top of the track.<br />I am really looking forward to racing in Canada the first week of March. They have a very exciting track and the race is very well organized. I will continue to work and train in Verbier until then. Peace.</p>','','update','','','524-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1076976000','','','','news','philippe',''),
 ('527','friday, feb. 06, 2004 ','','blog','<p>I have just returned home from the first two World Cup races in Leysin, Switzerland. We had beautiful weather throughout the competition. The track was very tricky and required a lot of technical expertise. After a successful day of training I was ready to go for the semifinals and ultimately the 2 final World Cup Runs.<br />On the first race run, I was very focused and determined to keep my tuck still on this bumpy, turny track. I succeeded and finished in 2nd place. On the second race, I also had a good run. I think however I was trying a bit too hard and was somewhat too aggressive. I was still able to finish 5th, which has placed me 2nd in the overall competition for the globe.<br />I am very happy with my performance in both races and I am looking forward to more tough competitions in the season.<br />On Saturday, I will join my fellow speed skier Jonathan Moret and former World Cup downhiller William Besse to compete in the Derby Du Chavanette. A cancellation of the WC on Altausee Austria has allowed the time for this race. I am really looking forward to having fun at this event before the XGames in Goldeck Austria next week.</p>','','update','','','526-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1076025600','','','','news','philippe',''),
 ('529','2004','2004','blog','<h3><em>2004 Fis 3rd Place Overall<br />2004 pro-mondial 2nd place overall </em></h3>\r\n<p align=\"center\"><strong><span style=\"font-weight: normal;\"> </span>\r\n<div>\r\n<table style=\"width: 100%; height: 262px; border: 0pt solid #c0c0c0;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"122\"><span style=\"font-weight: normal;\">World Cup 1</span></td>\r\n<td width=\"110\"><span style=\"font-weight: normal;\">Leysin, Switzerland</span></td>\r\n<td width=\"67\"><span style=\"font-weight: normal;\">2nd place</span></td>\r\n<td width=\"54\"><span style=\"font-weight: normal;\">161.66</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 2</span></td>\r\n<td><span style=\"font-weight: normal;\">Leysin Switzerland</span></td>\r\n<td><span style=\"font-weight: normal;\">5th  place</span></td>\r\n<td><span style=\"font-weight: normal;\">159.98</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 3</span></td>\r\n<td><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></td>\r\n<td><span style=\"font-weight: normal;\">3rd Place</span></td>\r\n<td>\r\n<div><span style=\"font-weight: normal;\">160.64</span></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 4</span></td>\r\n<td><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></td>\r\n<td><span style=\"font-weight: normal;\">8th Place</span></td>\r\n<td><span style=\"font-weight: normal;\">156.92</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">Velocity Challenge</span></td>\r\n<td><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></td>\r\n<td><span style=\"font-weight: normal;\">3rd Place</span></td>\r\n<td><span style=\"font-weight: normal;\">160.64</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 5</span></td>\r\n<td><span style=\"font-weight: normal;\">Cervinia, Italy</span></td>\r\n<td><span style=\"font-weight: normal;\">1st Place</span></td>\r\n<td><span style=\"font-weight: normal;\">161.29</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 6</span></td>\r\n<td><span style=\"font-weight: normal;\">Cervinia, Italy</span></td>\r\n<td><span style=\"font-weight: normal;\">3rd Place</span></td>\r\n<td><span style=\"font-weight: normal;\">160.79</span></td>\r\n</tr>\r\n<tr>\r\n<td><strong><span style=\"font-weight: normal;\">W</span></strong><span style=\"font-weight: normal;\">orld Cup 7</span></td>\r\n<td><span style=\"font-weight: normal;\">Hundfjallet, Sweden</span></td>\r\n<td><span style=\"font-weight: normal;\">7th Place</span></td>\r\n<td><span style=\"font-weight: normal;\">195.58</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">Red Rock Cup</span></td>\r\n<td><span style=\"font-weight: normal;\">Les Arcs, France</span></td>\r\n<td><span style=\"font-weight: normal;\">8th Place</span></td>\r\n<td><span style=\"font-weight: normal;\">197.80</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">Pro Mondial</span></td>\r\n<td><span style=\"font-weight: normal;\">Vars, France</span></td>\r\n<td><span style=\"font-weight: normal;\">2nd Place</span></td>\r\n<td><span style=\"font-weight: normal;\">204.081</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">Pro Mondial</span></td>\r\n<td><span style=\"font-weight: normal;\">Les Arcs, France</span></td>\r\n<td><span style=\"font-weight: normal;\">2nd Place</span></td>\r\n<td><span style=\"font-weight: normal;\">221.81</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">XSpeedSki</span></td>\r\n<td><span style=\"font-weight: normal;\">Verbier- Nendaz, Mont-Fort</span></td>\r\n<td><strong><span style=\"font-weight: normal;\">9</span></strong><span style=\"font-weight: normal;\">th Place</span></td>\r\n<td><span style=\"font-weight: normal;\">199.94</span><strong><span style=\"font-weight: normal;\"> </span></strong></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">Swiss Championships</span></td>\r\n<td><span style=\"font-weight: normal;\">Verbier- Nendaz, Mont-Fort</span></td>\r\n<td><span style=\"font-weight: normal;\">2nd</span><strong><span style=\"font-weight: normal;\"> </span></strong><span style=\"font-weight: normal;\">Place</span></td>\r\n<td><span style=\"font-weight: normal;\">199.94</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</strong></p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230163200','','','','results','philippe',''),
 ('531','2003','2003','blog','<p><strong>\r\n<div>\r\n<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup Race</span></td>\r\n<td><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></td>\r\n<td><span style=\"font-weight: normal;\">2nd place</span></td>\r\n<td><span style=\"font-weight: normal;\">&nbsp;</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup Race&nbsp;</span></td>\r\n<td><span style=\"font-weight: normal;\">Cervinia, Italy &nbsp; &nbsp; &nbsp;</span></td>\r\n<td><span style=\"font-weight: normal;\">11th place</span></td>\r\n<td><span style=\"font-weight: normal;\">CRASH/HIGH WINDS</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div>\r\n<table style=\"border: 0pt solid #c0c0c0; width: 100%;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">Invitational Race</span></td>\r\n<td><span style=\"font-weight: normal;\">Goldeck, Austria</span></td>\r\n<td><span style=\"font-weight: normal;\">6th place</span></td>\r\n<td><span style=\"font-weight: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup Race</span></td>\r\n<td><span style=\"font-weight: normal;\">Altausee-Loser, Austria</span></td>\r\n<td><span style=\"font-weight: normal;\">4th&nbsp; place</span></td>\r\n<td><span style=\"font-weight: normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</strong></p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230076800','','','','results','philippe',''),
 ('533','2002 ','2002 ','blog','<h3 style=\"text-align: left;\"><em>2002 FIS World Cup Champion</em></h3>\r\n<table style=\"border: 1px solid #c0c0c0; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td>Red Rock Cup</td>\r\n<td>Les Arcs, France</td>\r\n<td>7th place</td>\r\n<td>241.77 K</td>\r\n</tr>\r\n<tr>\r\n<td>Swedish Cup</td>\r\n<td>Hundfjallet, Sweden</td>\r\n<td>1st place</td>\r\n<td>182.20 K</td>\r\n</tr>\r\n<tr>\r\n<td>FIS World Cup</td>\r\n<td>Hundfjallet, Sweden</td>\r\n<td>7th place</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Pro Mondial</td>\r\n<td>Les Arcs, France</td>\r\n<td>6th</td>\r\n<td>237.78 K</td>\r\n</tr>\r\n<tr>\r\n<td>Swiss Championship/Swiss Cup</td>\r\n<td>Les Arcs, France</td>\r\n<td>8th</td>\r\n<td>203.375 K</td>\r\n</tr>\r\n<tr>\r\n<td>Coupe du Monde FIS</td>\r\n<td>Altausee-Loser, Austria</td>\r\n<td>1st</td>\r\n<td>153.71 K</td>\r\n</tr>\r\n<tr>\r\n<td>FIS World Cup</td>\r\n<td>Bad Mitterndorf, Austria</td>\r\n<td>2nd</td>\r\n<td>126.30 K</td>\r\n</tr>\r\n<tr>\r\n<td>FIS World Cup</td>\r\n<td>Snowmass CO, USA</td>\r\n<td>6th</td>\r\n<td>180.172 K</td>\r\n</tr>\r\n<tr>\r\n<td>US National Championships</td>\r\n<td>Snowmass CO, USA</td>\r\n<td>8th</td>\r\n<td>186.035 K</td>\r\n</tr>\r\n</tbody>\r\n</table>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','6','1229990400','','','','results','philippe',''),
 ('535','2001','2001','blog','<p><strong></strong></p>\r\n<table style=\"width: 100%; height: 100px; border: 0pt solid #c0c0c0;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Red Rock Cup/ British Cup</td>\r\n<td>Les Arcs, France</td>\r\n<td>6th</td>\r\n<td>207.373 K</td>\r\n</tr>\r\n<tr>\r\n<td>French Cup</td>\r\n<td>La Plagne, France</td>\r\n<td>2nd (1st foreigner)</td>\r\n<td>127.84 K</td>\r\n</tr>\r\n<tr>\r\n<td>Pro Mondial</td>\r\n<td>Les Arcs, France</td>\r\n<td>6th</td>\r\n<td>199.677 K</td>\r\n</tr>\r\n<tr>\r\n<td>World Championship</td>\r\n<td>Cervinia, Italy</td>\r\n<td>7th</td>\r\n<td>156.931 K</td>\r\n</tr>\r\n<tr>\r\n<td>French Championship</td>\r\n<td>La Plagne, France</td>\r\n<td>4th</td>\r\n<td>159.57 K</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','7','1229904000','','','','results','philippe',''),
 ('537','2000','2000','blog','<p><strong></strong></p>\r\n<table style=\"width: 100%; height: 100px; border: 0pt solid #c0c0c0;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Swiss Cup</td>\r\n<td>Les Arcs, France</td>\r\n<td>8th</td>\r\n<td>219.378 K</td>\r\n</tr>\r\n<tr>\r\n<td>Swiss Championship</td>\r\n<td>Grimentz, Switz.</td>\r\n<td>9th</td>\r\n<td>173.770 K</td>\r\n</tr>\r\n<tr>\r\n<td>FIS World Cup</td>\r\n<td>Salla, Finland</td>\r\n<td>25th</td>\r\n<td>151.130 K</td>\r\n</tr>\r\n<tr>\r\n<td>FIS World Cup</td>\r\n<td>Idre Fjall, Sweden</td>\r\n<td>26th</td>\r\n<td>162.450 K</td>\r\n</tr>\r\n<tr>\r\n<td>Pro Mondial</td>\r\n<td>Les Arcs, France</td>\r\n<td>23rd</td>\r\n<td>212.139 K</td>\r\n</tr>\r\n<tr>\r\n<td>Red Rock, French Cup</td>\r\n<td>Les Arcs, France</td>\r\n<td>19th</td>\r\n<td>203.210 K</td>\r\n</tr>\r\n<tr>\r\n<td>FIS World Cup</td>\r\n<td>Cervinia, Italy</td>\r\n<td>8th</td>\r\n<td>142.473 K</td>\r\n</tr>\r\n<tr>\r\n<td>Swiss Cup</td>\r\n<td>Les Arcs, France</td>\r\n<td>13th</td>\r\n<td>200.222 K</td>\r\n</tr>\r\n<tr>\r\n<td>French Championship</td>\r\n<td>Les Arcs, France</td>\r\n<td>13th</td>\r\n<td>187.696 K</td>\r\n</tr>\r\n<tr>\r\n<td>French Cup</td>\r\n<td>La Plagne, France</td>\r\n<td>6th</td>\r\n<td>152.38   K</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','8','1229817600','','','','results','philippe',''),
 ('539','1999','1999','blog','<p>&nbsp;</p>\r\n<table style=\"width: 100%; height: 10px; border: 0pt solid #c0c0c0;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Pro Mondial</td>\r\n<td>Les Arcs, France</td>\r\n<td>23rd</td>\r\n<td>225.847</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','9','1229731200','','','','results','philippe',''),
 ('541','philippe may - plus','','blog','','','click to enlarge photo','','','541-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1231545600','','','','press','philippe',''),
 ('559','l\'illustre magazine','','blog','','','click to enlarge photo','','','558-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230149184','','','','press','administrator',''),
 ('543','5 seconds de 200 km/h','','blog','','','click to enlarge photo','','','543-0.png','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230145921','','','','press','administrator',''),
 ('545','un excellent indicateur','','blog','','','click to enlarge photo','','','544-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230145982','','','','press','administrator',''),
 ('551','le frict c\'est chic','','blog','','','click to enlarge photo','','','550-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230146393','','','','press','administrator',''),
 ('547','bilan satiafaisant','','blog','','','click to enlarge photo','','','546-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230146020','','','','press','administrator',''),
 ('561','trois mois pour sÂ´Ã©clater','','blog','','','click to enlarge photo','','','560-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230149290','','','','press','administrator',''),
 ('549','des objectifs ambitieux','','blog','','','click to enlarge photo','','','548-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230146261','','','','press','administrator',''),
 ('563','un skieur bat la sti','','blog','','','click to enlarge photo','','','562-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230149432','','','','press','administrator',''),
 ('565','schedule 2010','','blog','<table style=\"width: 100%;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h3>Date</h3>\r\n</td>\r\n<td>\r\n<h3>Location</h3>\r\n</td>\r\n<td>\r\n<h3>Event</h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Jan 27 - 31</td>\r\n<td>Vars (Fra)</td>\r\n<td>FIS World Cup</td>\r\n</tr>\r\n<tr>\r\n<td>Mar 4 - 7</td>\r\n<td>Sun Peaks (Can)</td>\r\n<td>FIS World Cup (2                     races)</td>\r\n</tr>\r\n<tr>\r\n<td>Mar 14 - 17</td>\r\n<td>Salla (Fin)</td>\r\n<td>FIS World Cup (2                     races)</td>\r\n</tr>\r\n<tr>\r\n<td>Mar 20 - 21</td>\r\n<td>Idre (Swe)</td>\r\n<td>FIS World Cup</td>\r\n</tr>\r\n<tr>\r\n<td>April 23 - 24</td>\r\n<td>Hundfjallet (SWE)<br /></td>\r\n<td>FIS World Cup</td>\r\n</tr>\r\n<tr>\r\n<td>Apr 19 - 22</td>\r\n<td>Verbier (Sui)</td>\r\n<td>FIS World Cup Final</td>\r\n</tr>\r\n<tr>\r\n<td>Apr 23 - 24</td>\r\n<td>Verbier (Sui)</td>\r\n<td>Speed Master (PRO)</td>\r\n</tr>\r\n<tr>\r\n<td>Apr ?-?</td>\r\n<td>Les Arcs (FRA)</td>\r\n<td>Speed Master (PRO)</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>','','','','','565-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1258783200','','','','schedule','philippe',''),
 ('573','5th','2007','gallery','','','photo','','','573-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150296','','','','photos','administrator',''),
 ('575','philippe and tracie max sachs','2007','gallery','','','verbier switzerland','','','575-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150337','','','','photos','philippe',''),
 ('577','7th','2006','gallery','','','photo','','','577-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150367','','','','photos','administrator',''),
 ('579','8th','2006','gallery','','','photo','','','579-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150388','','','','photos','administrator',''),
 ('581','jump in sun peaks ca','2003','gallery','','','','','','581-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230098400','','','','photos','philippe',''),
 ('583','fifi flies down the mont fort','2008','gallery','','','photo - t max sachs','','','583-0.jpg','','','','','','','','','','Philippe flies down his home track of the Mont Fort in Verbier Switzerland.','','','','','0','','','','','','','','','','','','','','','0','','0','1230150461','','','','photos','philippe',''),
 ('585','world cup podium 08','2008','gallery','','','undefeatable trio','','','585-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150508','','','','photos','philippe',''),
 ('587','men\'s podium','2007','gallery','','','verbier speed master','','','587-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150545','','','','photos','philippe',''),
 ('589','2005 world championship podium','2005','gallery','','','cervinia italy','','','589-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150580','','','','photos','philippe',''),
 ('591','les arcs','2007','gallery','','','','','','591-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230098400','','','','photos','philippe',''),
 ('593','top 3','2007','gallery','','','philippe, jonathan moret, joh hembel','','','593-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150665','','','','photos','philippe',''),
 ('595','swiss team in salla','2008','gallery','','','salla finland','','','595-0.jpg','','','','','','','','','','The Swiss Team puts up a good fight in Salla Finland.','','','','','0','','','','','','','','','','','','','','','0','','0','1230150700','','','','photos','philippe',''),
 ('597','mont fort track','2005','gallery','','','verbier nendaz','','','597-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150748','','','','photos','philippe',''),
 ('599','18th','2007','gallery','','','photo','','','599-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150777','','','','photos','administrator',''),
 ('601','philippe','','contact','','','','','','601-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230156477','','','','contact','administrator',''),
 ('523','march 23, 2004 ','','blog','<p>I have just returned from several races in Cervinia Italy and Sun Peaks Canada. After weeks of traveling, I am happy to report that I have been on the podium 3 times during the last 4 races.<br />In Canada, the track was extremely difficult. The course was quite steep with 3 jumps, requiring technical expertise and strength. In the first World Cup race, I had some difficulty on one of the jumps and landed a bit off center. Unfortunately this cost me some time and I finished 8th. For the second WC race, I was able to regain my focus and take the jumps with strength. I was very happy with my 3rd place finish.<br />In Cervinia Italy I had to overcome the hurdle of racing on a track where I left in an ambulance one year ago. I didn\'t think it would be as difficult as it was. In addition, the crowd almost seemed to view me as nonthreatening for the top position. I was a bit frustrated by this and I really wanted to prove to everyone including myself that I had what it takes to be number one. After several good training runs, I was mentally prepared to take on the track. In the first World Cup, I put up a great fight and I nailed first place. During the second race, the wind conditions were a bit inconsistent, but I was able to maintain my focus. I skied well again and fought for a podium position. After a tough battle, I placed 3rd, which moved me up to the 2nd position overall in the World Cup fight for the globe.<br />I will leave on Sunday for the World Cup Finals in Hundfjallet Sweden. I am really looking forward to this race. Last year I did not get to participate there because of the injuries I sustained in Cervinia. I have skied well in Hundfjallet before, and I know I can do well there next week. After the F.I.S. World Cup Finals, the higher speed events will begin in France and Switzerland. This has been a great season so far and I really hope it continues in the same direction.</p>','','update','','','522-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1080000000','','','','news','philippe',''),
 ('521',' april 27, 2004 ','','blog','<p>-----The TagHeuer/ XSpeedSki and Swiss Championships in Verbier, Nendez, Mont-Fort were a great success. After a minor set back due to the FSV changing their minds about covering the race, we changed the event from the Pro-Mondial to a Swiss Open. This was only a small bump in the road in the organization. Because the organizers of the event were so well prepared, we were able to hold a very successful race. For the first time in Swiss history, several racers were able to safely achieve speeds over 200 km/h.<br />We are looking at this achievement as a great accomplishment in speed skiing. We had the Mont-Fort track homoligated by the FIS over the weekend, and we are looking forward to having a World Cup, or possibly the World Championships here next year. It is possible that for the first time since the 92 Olympics, we may have a FIS race at a speed over 200. This is a great break through for the sport, and we are very proud of the performance of all of the racers, organizers and volunteers.<br />I am happy with my performance during this race, considering the amount of stress I was under, being one of the main organizers of this event. I really wanted everything to run smoothly, and I was hoping to be the fastest Swiss as well. I turned out to be the 2nd fastest Swiss, and the race ended up being one of the most fun events of the season.<br />In addition to hosting a great event, I am happy to announce that I have signed a deal with Rossignol. I was very happy with the performance of the ski during the race on the Mont-Fort. I think the skis have a lot of potential to become very fast, and I am very happy to be a new member of the Rossignol team.</p>\r\n<p>-----The high speed races of the Pro-Mondial circuit went by very quickly. After the FIS circuit was over, we immediately began racing in Les Arcs, France and Vars, France. The speed ski tracks in these locations are known to be the fastest in the world. I was very excited to be skiing over 200 km/h again. I think my enthusiasm helped me gain a position on the top of the field in the pro races.<br />In the first Pro-Mondial in Vars France, I had an amazing race. I remained in the top 3 positions throughout all of the runs. In the finals, I skied well and I placed 2nd with a speed of 204.08 km/h. In the second Pro-Mondial event in Les Arcs, I was also skiing very well. I was trying new skis, that Rossignol provided me, and I did very well with them. All of my runs were in the top five, which made me very confident for the finals. In the semifinals, I was in 3rd place. The weather was not looking good, and they were threatening to close the event early. After a track inspection, it was decided that despite low visibility the track was in safe condition. This was to my benefit, because with one more run, I was able to secure 2nd place with a final speed of 221.81. This result placed me 2nd in the overall Pro-Mondial competition, behind Simone Origone by only one point. I was happy with my finish in the Pro-Mondial, and this has been one of my best seasons yet.</p>\r\n<p>-----The World Cup Finals in Hundfjallet, Sweden went very well. It was a very difficult race because of the shape of the track. The track was very steep, and it finished into a frozen lake. If you can imagine, this caused quite a compression at the bottom. I was under a lot of pressure to perform well here, because I was sitting so high in the overall ranking. I was very happy with my performance, and I ended up finishing the FIS season 3rd overall. This made me very happy, because it is the 3rd year in a row that I have been on the overall World Cup Podium.</p>\r\n<p>&nbsp;</p>','','update','','','520-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1083024000','','','','news','philippe',''),
 ('603','dfafsdf','','blog','<p>adsfdfsdfdfsdfdfsfafdffd</p>\r\n<p><a rel=\"lightbox\" href=\"http://www.paulshorey.com/philippemay/_images/biopic.jpg\"><img src=\"http://www.paulshorey.com/philippemay/_images/biopic.jpg\" alt=\"\" width=\"183\" height=\"295\" /></a></p>','','adsfdff','','','602-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230183585','','','','sdfddsfd','philippe',''),
 ('515',' march 12, 2007','','blog','<p>It has been a great start to the season so far. Although there hasn\'t been much snow in Europe, the Speed Ski World Cup Tour was able to commence in Kulm, Badmittendorf Austria the weekend of February 23rd. The race took place on the longest natural ski flying hill in the world. Despite the spring weather and lack of snow on all of the surrounding areas, Andy Nemetz and his race crew were able to truck snow in to Bad Mittendorf and pack the track with enough coverage to host the race. Surprisingly the track conditions were quite good, even with the huge compression and the short run out. It was a very technical course and the speeds were very tight between the top men and women.<br />I was skiing very well and I was leading at the semifinal. The speeds were so close in the end that I tied for second place with Jonathan Moret, and Martin Hochrainer, lead by Simone Origone in First place.<br />Just after the World Cup in Austria, all the racers got on a plane and headed to western Canada for 2 more World Cups and a pro race. The 9 hour time difference proved not to be much of a factor, as the racers were very competative again. The young new comer Ivan Origone placed first with Canadian Kenny Dale in second and myself in third, followed by Simone Origone.<br />The second Canadian race was a difficult one to pull off. With horrible weather conditions and high winds, we were left with only a half hour window of sunshine. The podium didn\'t change much, with Kenny Dale in first, myself in second and Simone Origone in 3rd.<br />These results left me in the lead for the overall points of the World Cup. In the pro race on Sunday I placed 4th. It again was a tight race, and I think I finally succomed to the fatigue of travel, but I\'m not dissapointed because of any race to drop in the rankings I\'m happy it wasn\'t one of the World Cups.<br />Because of the postponement of a pro race in Les Arcs France, I have a few days to relax and prepare for the upcomming races in Scandanavia. We have 2 World Cups in Sweden and then 2 World Cups in Finland. They will be followed by the World Cup finals in Italy. I am hoping the weather will be good for all of the events and that my travel itinerary goes according to plan.<br />Stay Fast -<br />Philippe</p>','','update','','','514-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1173657600','','','','news','philippe',''),
 ('517',' march 22, 2006 ','','blog','<p>It\'s been a great start to the season. In fact it\'s the best start I\'ve ever had.<br />I placed 4th in the European XGames in Goldeck Austria.<br />I then traveled to participate in the races in Sun Peaks Canada. I had a great time there, despite the travel difficulties of getting stranded overnight in Germany with the whole Swiss Team. After arriving a day late, and losing all of our luggage and having no sleep, I was surprised at how well I was able to perform. In the first World Cup race, I placed 2nd, and in the second World Cup race I placed 3rd. My speed was the second fastest of the weekend, giving my the second place in the Velocity challenge.<br />After flying back to Switzerland and losing my luggage again, I managed to pull myself together for the French Championship/ Marco Salvagio race in Les Arcs France. The weather forecast was bad, but Marco shined on us the whole weekend. We had perfectly sunny weather and I came in second place with a speed of 207 km/h.<br />I\'m leaving tomorrow to go to the 3 World Cup races in Sweden. I\'m looking forward to these events and I hope to perform to the best of my ability.</p>','','update','','','516-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1142985600','','','','news','philippe',''),
 ('519',' september 14, 2005 ','','blog','<p>I had an excellent season, finishing off with a new personal record and new Swiss record. I came in 2nd place at the Pro Mondial in Les Arcs France, with a very fast speed of 248.280 km/h. This is the 4th fastest speed in the history of skiing.<br />I am very proud of my achievments this year and I look forward to competing again next year.<br />This comming season, I will not be updating the English news section of my website as frequently as I have in the past. For the latest updates, please check the French version of the site. If you have any questions, please feel free to contact me via email.</p>','','update','','','519-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1126656000','','','','news','philippe',''),
 ('511','wind tunnel testing','2007','gallery','<p>description</p>','','geneva','','','511-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230091925','','','','photos','philippe',''),
 ('567','wind tunnel testing','2005','gallery','','','geneva','','','567-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150200','','','','photos','philippe',''),
 ('571','reflections of philippe','2007','gallery','','','','','','571-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230150241','','','','photos','philippe',''),
 ('509','philippe may biography ','','blog','<p>Philippe May was born on October 8th, 1970. He grew up in a small village in the Swiss Alps, called Versegeres. Versegeres is located in the valley below the famous ski resort Verbier. Although the rest of Philippe\'s family are not big skiers, it seemed from an early age Philippe was bound for the slopes.</p>\r\n<p>Like many other youngsters, Philippe had dreams of being a rock star in a heavy metal band. In the early 80\'s with KISS and Metalica as his idols, Philippe and his brother Michel started a rock band. Philippe was the star drummer. After a few years of playing and touring successfully, Philippe decided to move on and get more serious about his true calling; skiing.</p>\r\n<p>Philippe was a competitive racer in all alpine events, but his favorite was downhill. It seemed from the very start May had a need for speed. After a bad knee injury, he was forced to stop all sports for four years. Philippe was determined to return to the ski world. With a lot of hard work, and physical therapy, Philippe was able to overcome his injury. He returned to the ski world and acquired his ski teaching license, and continued to coach youngsters in alpine racing.</p>\r\n<p>Philippe got more involved in speed skiing, traveling to other areas to participate in World Cup races with World Class Athletes. It was a struggle at the beginning. May was used to the \"Alpine\" way of thinking for race preparation. In this event, Philippe was a rookie and had to start from the beginning. In addition to having entirely different equipment, Philippe had to adjust mentally as well. Philippe found a niche in a truly invigorating and exhilarating ski event known as speed skiing.</p>\r\n<p>After several years of fighting and competing among the most elite athletes in this event, Philippe May has conquered many goals. Every year for the last 8, Philippe was successful in winning the title of Swiss Speed Ski Champion. &nbsp;Philippe conquered one of the most difficult goals in all alpine disciplines by winning the overall FIS World Cup Globe in Speed skiing in 2002. He was also the Pro World Champion in 2007. &nbsp;Not only has Philippe achieved his personal goals, he is now one of 5 men to ever ski over 250 km/h. &nbsp;</p>\r\n<p>Philippe is continuing his training during the off season.  In addition to weight lifting and cross training sports, Philippe is the new director of the Suisse Ski School in Verbier. &nbsp;This is a very important position which Philippe had to fight hard for. &nbsp;This job will satisfy him both mentally and physically and he will be working both at his desk and on the mountain taking care of business in Verbier while he\'s not racing. &nbsp;Philippe is looking forward to another competitive season for 2009.</p>','','','','','509-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1229990400','','','','bio','philippe',''),
 ('619','philippe on the world cup podium again!','2008','gallery','','','3rd place','','','618-0.jpg','','','','','','','','','','Philippe makes it the the World Cup Final Podium for the 7th consecutive year, proving he is one of the most consistent athletes on the speed ski tour.','','','','','0','','','','','','','','','','','','','','','0','','0','1230896397','','','','photos','philippe',''),
 ('621','philippe\'s mom proudly holds his loot.','2008','gallery','','','berthe','','','621-0.jpg','','','','','','','','','','Bert walks away with the winnings ;-)','','','','','0','','','','','','','','','','','','','','','0','','0','1230896732','','','','photos','philippe',''),
 ('625','philippe in salla finland','2008','gallery','','','laughing at the irony of the track conditions','','','624-0.jpg','','','','','','','','','','Philippe makes the best of the weather conditions in Salla Finland.','','','','','0','','','','','','','','','','','','','','','0','','0','1230897211','','','','photos','philippe',''),
 ('637','salla podium 08','2008','gallery','','','unbeatable trio','','','636-0.jpg','','','','','','','','','','This trio of racers is the fastest in the world, Philippe is on the podium again with the Origone brothers.','','','','','0','','','','','','','','','','','','','','','0','','0','1230897995','','','','photos','philippe',''),
 ('641','philippe and tracie max sachs','2005','gallery','','','verbier speed master','','','640-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230898852','','','','photos','philippe',''),
 ('643','speed cart','2005','gallery','','','','','','642-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230899005','','','','photos','philippe',''),
 ('645','philippe on top of the track in verbier','2008','gallery','','','waiting at the start','','','644-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230899665','','','','photos','philippe',''),
 ('605','2005','2005','blog','<p>&nbsp;</p>\r\n<div>\r\n<h3>2005 FIS Vice World Champion</h3>\r\n<p align=\"center\">&nbsp;</p>\r\n<div>\r\n<table style=\"height: 262px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"122\">World Cup 1</td>\r\n<td width=\"110\">Cervinia, Italy</td>\r\n<td width=\"67\">3rd place</td>\r\n<td width=\"54\"><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Championships</td>\r\n<td>Cervinia, Italy</td>\r\n<td>2nd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 2</td>\r\n<td>Leysin, Switzerland</td>\r\n<td>2nd Place</td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 3</td>\r\n<td>Leysin, Switzerland</td>\r\n<td>8th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>Velocity Challenge</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>2rd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 4</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>7th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 5</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>5th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 6</td>\r\n<td>Reutte, Austria</td>\r\n<td>3rd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 7</td>\r\n<td>Goldeck, Austria</td>\r\n<td>7th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 8</td>\r\n<td>Salla, Finland</td>\r\n<td>15th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','3','1230249600','','','','results','philippe',''),
 ('607','2006','2006','blog','<p>&nbsp;</p>\r\n<div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h3>2006 FIS Vice World Cup Champion</h3>\r\n<p align=\"center\">&nbsp;</p>\r\n<div>\r\n<table style=\"height: 262px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"122\">World Cup 1</td>\r\n<td width=\"110\">Sun Peaks, Canada</td>\r\n<td width=\"67\">2nd place</td>\r\n<td width=\"54\"><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 2</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>3rd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>Velocity Challenge</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>3rd Place</td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 3</td>\r\n<td>Orsa, Sweden</td>\r\n<td>4th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 4</td>\r\n<td>Hundfjallet, Sweden</td>\r\n<td>5th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 5</td>\r\n<td>Verbier, Switzerland</td>\r\n<td>3rd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>Speed Master</td>\r\n<td>Verbier, Switzerland</td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n<td><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','2','1230336000','','','','results','philippe',''),
 ('609','2007','2007','blog','<p>&nbsp;</p>\r\n<div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h3>2007 Pro World Champion</h3>\r\n<p><strong>2007 Vice World Champion</strong></p>\r\n<p align=\"center\">&nbsp;</p>\r\n<div>\r\n<table style=\"height: 262px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"122\">World Cup 1</td>\r\n<td width=\"110\">Bad Mittendorf, Austria</td>\r\n<td width=\"67\">2nd place</td>\r\n<td width=\"54\"><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 2</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>3rd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 3</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>2nd Place</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Velocity Challenge</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>2nd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 4</td>\r\n<td>Hundfjallet, Sweden<br /></td>\r\n<td>2nd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 5</td>\r\n<td>Idre, Sweden</td>\r\n<td>2nd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 6</td>\r\n<td>Salla, Finland</td>\r\n<td>3rd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 7</td>\r\n<td>Salla, Finland</td>\r\n<td>4th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 8</td>\r\n<td>Verbier, Switzerland</td>\r\n<td>2nd Place</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','1','1230422400','','','','results','philippe',''),
 ('611','2008','2008','blog','<p>\r\n<p style=\"text-align: auto;\" align=\"center\">\r\n<div style=\"text-align: auto;\"></div>\r\n</p>\r\n<div>\r\n<table style=\"height: 262px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"122\">World Cup 1</td>\r\n<td width=\"110\">Vars, France</td>\r\n<td width=\"67\">4th place</td>\r\n<td width=\"54\"><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 2</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>3rd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 3</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>2nd Place</td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>Velocity Challenge</td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>2nd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 4</td>\r\n<td>Salla, Finland</td>\r\n<td>4th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 5</td>\r\n<td>Salla, Finland</td>\r\n<td>3rd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 6</td>\r\n<td>Hundfallet, Sweden</td>\r\n<td>8th Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 7</td>\r\n<td>Verbier, Switzerland</td>\r\n<td>3rd Place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>Speed Master</td>\r\n<td>Verbier, Switzerland</td>\r\n<td>2nd Place</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1230822348','','','','results','philippe',''),
 ('613','january 1, 2009','','blog','<p>Welcome to my new and improved website. &nbsp;Thanks to Paul Shorey my new webdesigner and Tracie Max Sachs who helped in the design, I will be able to update my website very frequently. &nbsp;This is great news and I\'m proud of all the work they did to enable me to have a website that is not only very fresh looking but extremely functional as well.</p>\r\n<p>I have been training extremely hard this summer. &nbsp;I have started competitive cycling as part of my new training program. &nbsp;I cycled over 3000 kilometers this summer, and I participated in several races both in Switzerland and the US. &nbsp;I\'m most satisfied with my result in the Bike Across Florida Event. &nbsp;It was the longest single day bike race in the US, and I came in 7th place! &nbsp;I am continuing my cycling with small online races through the Taxc Imagic program. &nbsp;I have been working on a weight training and strengthening program as well. &nbsp;</p>\r\n<p>Today is the first day of 2009. &nbsp;I\'m so excited and happy with my current situation as the new Director of the Swiss Ski School in Verbier. &nbsp;I am challenged everyday both mentally and physically. &nbsp;We have massive amounts of snow here, and it seems to just keep coming. &nbsp;We are so lucky and fortunate to live in this ski paradise I call home! &nbsp;</p>\r\n<p>Happy New Year, and best wishes to you for a fast and prosperous 2009!</p>\r\n<p><em><span style=\"font-family: \'comic sans ms\', sans-serif;\">Philippe</span></em></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','613-0.jpg','','','','','','','','','','Philippe finished 7th place in the Bike Across Florida Race - 272 kilometers, the longest single day bike race in the US.','','','','','0','','','','','','','','','','','','','','','0','','0','1230824621','','','','news','philippe',''),
 ('647','nouvelliste','press','blog','<p>Please click on the photo to read the article. &nbsp;</p>','','march 14, 2008','','','646-0.jpg','','','','','','','','','','May file au Canada','','','','','0','','','','','','','','','','','','','','','0','','0','1231779172','','','','press','philippe',''),
 ('655','bad mittendorf ','2007','gallery','','','austria','','','654-0.jpg','','','','','','','','','','Men\'s podium, 3 way tie for 2nd place!','','','','','0','','','','','','','','','','','','','','','0','','0','1231943676','','','','photos','philippe',''),
 ('651','aspen press','press','blog','<p>Philippe May skis in the 24 Hours of Aspen - World Championships of solo endurance skiing!</p>','','2003','','','651-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1040342400','','','','press','philippe',''),
 ('653','bild am sonntag','press','blog','<p>Philippe and Jonathan Moret in the Sonntag December 2002.</p>','','2002','','','653-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1038700800','','','','press','philippe',''),
 ('657','dick and the boyz','2007','gallery','','','austria','','','657-0.jpg','','','','','','','','','','Philippe with Simone Origone and Dick Taplin President of FIS Speed Ski.','','','','','0','','','','','','','','','','','','','','','0','','0','1231891200','','','','photos','philippe',''),
 ('659','bad mittendorf ','2007','gallery','','','austria','','','658-0.jpg','','','','','','','','','','Crazy conditions on the track behind this dynamic duo - It\'s more scary to crash into dirt than snow!','','','','','0','','','','','','','','','','','','','','','0','','0','1231944431','','','','photos','philippe',''),
 ('661','going up on the chopper!','2007','gallery','','','austria','','','660-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1231944728','','','','photos','philippe',''),
 ('663','philippe at the start','2007','gallery','','','austria','','','662-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1231945112','','','','photos','philippe',''),
 ('665','reutte austria','2005','gallery','','','world cup ','','','664-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1231947548','','','','photos','philippe',''),
 ('667','reutte austria','2005','gallery','','','swiss team','','','666-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1231948121','','','','photos','philippe',''),
 ('675','la fonte avant la neige','press','blog','','','nouvelliste 12/5/08','','','675-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1232409600','','','','press','philippe',''),
 ('671','redrock cup podium ','2006','gallery','','','les arcs, france 2006','','','670-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1231948513','','','','photos','philippe',''),
 ('677','trois valaisans en piste','press','blog','','','nouvelliste 21/1/09','','','677-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1232496000','','','','press','philippe',''),
 ('679','philippe may en tete','','blog','','','nouvelliste 22/1/09','','','679-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1232582400','','','','press','philippe',''),
 ('681','philippe may 2nd!','press','blog','','','nouvelliste 23/1/09','','','681-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1232668800','','','','press','philippe',''),
 ('683','vice world champion','','blog','<p>I am very happy with my performance at the FIS World Championships in Vars, France.  I am proud to announce that I am now the 2009 FIS Vice World Champion.</p>\r\n<p>After many days of bad weather and postponements, the race finally took place in only 2 days.  We had 3 runs on the first day, and a semifinal and final on the second day with a prediction of more bad weather by the end of the day.</p>\r\n<p>My wax technician, Tracie Max Sachs was able to mix up some magical potions for my skis that seemed to be working very well.  On the first run, I was in 2nd place.  On the second run, I was in 1st place tied with Jukka Viitasaari of Finland.  On the 3rd run, I was in 1st place faster than Jukka and Jonathan Moret by more than 1k.  Things were looking good going into the finals for the next day.  In the semifinal I won with more than a 1 k lead.  On the final run, I was just under the pace of Simone Origone.  He won with a speed of 225 km/h and I came in 2nd with a speed of 224.57 km/h.  It was amazing to be separated by only .4 k.  Behind us, my team-mate Jonathan Moret took 3rd with a speed of 221, almost 4 k behind myself and Simone!  Jukka, and Bastien Montes tied for 4th with a speed of 220.99.</p>\r\n<p>It was an incredible week of extremely tight competition.  I\'m very proud of my performance and I\'m looking forward to competing for the globe in the upcoming World Cup Tour series.</p>','','fis world championships 2009','','','683-0.jpg','','','','','','','','','','Philippe wins 2nd place in the FIS World Championships Vars, France 2009','','','','','0','','','','','','','','','','','','','','','0','','0','1233360000','','','','news','philippe',''),
 ('702','vice champion du monde','','blog','','','fis world championships 2009','','','701-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1233744528','','','','news en francais','philippe',''),
 ('696','top 3 men in the world','2009','gallery','','','vars france','','','695-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1233744086','','','','photos','philippe',''),
 ('689','vice world champion','2009','gallery','','','vars france','','','689-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1233619200','','','','photos','philippe',''),
 ('693','vice world champion','2009','gallery','','','vars france','','','693-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1233619200','','','','photos','philippe',''),
 ('698','valaisin in vars','2009','gallery','','','world championships 2009','','','697-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1233727200','','','','photos','philippe',''),
 ('700','valaisin in vars','2009','gallery','','','world championships 2009','','','699-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1233744261','','','','photos','philippe',''),
 ('704','palmares','','blog','<p>&nbsp;</p>\r\n<p><span> <!--StartFragment--> </span></p>\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"33\" valign=\"top\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"549\" valign=\"top\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Vainqueur   du Globe de cristal FIS 2002 </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>9   fois sur le podium du classement final&nbsp;â€¨de la Coupe du Monde FIS&nbsp; </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>4   fois Vice-champion du Monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Champion   du Monde Pro 2007&nbsp; </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>4   fois Vice-champion du Monde Pro </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>10 &nbsp; fois vainqueur de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n<table class=\"MsoNormalTable\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>1999</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Ma   premi&egrave;re grande vitesse aux Arcs 225.847 km/h.</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2000</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Premi&egrave;re   participation &agrave; la Coupe du Monde FIS. </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>8e &agrave; Cervinia (1er podium en Coupe du   Monde) </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>3e des Championnats Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2001</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>7e   des Championnats du Monde FIS &agrave; Cervinia </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>6e du Pro Mondial aux Arcs </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du   classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2002</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er   du classement final de la Coupe du Monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>&nbsp;1er du classement final de   la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2003</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>3e   du classement final de la Coupe du Monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Champion Suisse</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span> Une chute &agrave;   Cervinia m&rsquo;a tenu &eacute;loign&eacute; des pistesâ€¨durant plusieurs semaines.</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2004</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>3e   du classement final de la Coupe du Monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Vice-champion du monde Pro</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2005</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>2e   du classement final de la Coupe du Monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Vice-champion du monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Vice-champion   du monde Pro</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span> Champion Suisse</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2006</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>2e   du classement final de la Coupe du Monde FIS</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span> Vice-champion du monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>5e   meilleure vitesse avec 250,00 km/h&nbsp; </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Champion Suisse</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2007</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>2e   du classement final de la Coupe du Monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Vice-champion   du monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Champion   du monde Pro </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Champion   Suisse</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2008</span></strong></p>\r\n</td>\r\n<td colspan=\"2\" width=\"664\">\r\n<p class=\"MsoNormal\"><strong>&nbsp;</strong><em><strong>2e   du classement final de la Coupe du Monde FIS</strong></em></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span> Vice-champion   du monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Champion Suisse</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2009</span></strong></p>\r\n</td>\r\n<td colspan=\"2\" width=\"664\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>2e   du classement final de la Coupe du Monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Vice-champion   du monde FIS </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Vice   Champion du monde Pro </span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>Champion   suisse</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2010</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>3e   du classement final de la Coupe du Monde FIS</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span> Champion Suisse</span></em></strong></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>1er du classement final de la Coupe Suisse</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span>2011</span></strong></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><strong><em><span>World   Championships ???</span></em></strong></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"80\">\r\n<p class=\"MsoNormal\" align=\"center\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"652\">\r\n<p class=\"MsoNormal\" align=\"center\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n<td width=\"12\">\r\n<p class=\"MsoNormal\"><span>&nbsp;</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<!--EndFragment-->\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1233640800','','','','palmares','philippe',''),
 ('706','2009','2009','blog','<p>&nbsp;</p>\r\n<h3>2009 - Vice World Champion</h3>\r\n<p align=\"center\">&nbsp;</p>\r\n<div>\r\n<table style=\"height: 262px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"122\">World Championships</td>\r\n<td width=\"110\">Vars, France</td>\r\n<td width=\"67\"><span style=\"font-weight: normal;\">2nd place</span></td>\r\n<td width=\"54\">224.57</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 1</span></td>\r\n<td>Sun Peaks, Canada</td>\r\n<td>2nd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 2</span></td>\r\n<td><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></td>\r\n<td>cancelled</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Velocity Challenge</td>\r\n<td><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></td>\r\n<td>2nd place</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 3</td>\r\n<td>Salla, Finland</td>\r\n<td>2nd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 4</span></td>\r\n<td>Salla, Finland</td>\r\n<td>3rd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">World Cup 5</span></td>\r\n<td>Idre, Sweden</td>\r\n<td>2nd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">W</span><span style=\"font-weight: normal;\">orld Cup 6</span></td>\r\n<td><span style=\"font-weight: normal;\">Hundfjallet, Sweden</span></td>\r\n<td>5th place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 7</td>\r\n<td>Cervinia, Italy</td>\r\n<td>cancelled</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td>World Cup 8</td>\r\n<td>Verbier, Switzerland</td>\r\n<td>3rd place</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>World Cup Finals</td>\r\n<td><br /></td>\r\n<td>2nd place</td>\r\n<td><br /></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">XSpeedSki</span></td>\r\n<td><span style=\"font-weight: normal;\">Verbier- Nendaz, Mont-Fort</span></td>\r\n<td>2nd place</td>\r\n<td>216.13</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-weight: normal;\">Swiss Championships</span></td>\r\n<td><span style=\"font-weight: normal;\">Verbier- Nendaz, Mont-Fort</span></td>\r\n<td>1st place</td>\r\n<td><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1258844316','2009','11','21','results','philippe',''),
 ('712','february 25, 2009','','blog','<p><!--StartFragment-->\r\n<p class=\"MsoNormal\" align=\"center\">L&rsquo;ouverture de la saison 2009 de ski de vitesse a eu lieu &agrave; Vars (FRA). Ces</p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">Championnats du Monde m&rsquo;ont apport&eacute; ma 3&egrave;me m&eacute;daille d&rsquo;argent en 3 Championnats du Monde cons&eacute;cutifs. Sur les 6 runs de cette comp&eacute;tition, j&rsquo;en ai gagn&eacute; 5, seule la finale m&rsquo;&eacute;chappe pour moins de 5 dixi&egrave;mes.</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">Malgr&eacute; mes incertitudes du d&eacute;but de saison, cette course me prouve que je suis au top de ma forme et me motive pour le second objectif de cette saison qui est le gain de la coupe du monde 2009.</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" align=\"center\"><strong><span style=\"text-decoration: underline;\"><span lang=\"FR-CH\">R&eacute;sultats officiels des Championnats du Monde de Ski de Vitesse &agrave; Vars (FRA)</span></span></strong></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-GB\">1. Origone Simone (ITA)<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>225.000 Km/h </span></p>\r\n<p class=\"MsoNormal\"><span lang=\"EN-GB\">2. May Philippe (SUI)<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>224.578 Km/h</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">3. Moret Jonathan (SUI)<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>221.130 Km/h</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">4. Montes Bastien (FRA)<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>220.994 Km/h</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">4. Vitasaari Jukka (FIN)<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>220.994 Km/h</span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">Cette ann&eacute;e, l&rsquo;ouverture de la coupe du monde aura lieu &agrave; Sun Peaks (Can) au d&eacute;but mars. Gr&acirc;ce &agrave; mes r&eacute;sultats de Vars, je pars l&agrave;-bas plus d&eacute;termin&eacute; que jamais. La piste canadienne me convient tout particuli&egrave;rement, elle est tr&egrave;s difficile &agrave; skier, et en g&eacute;n&eacute;ral, les &eacute;carts y sont importants ! Je me r&eacute;jouis d&rsquo;y &ecirc;tre&hellip; et de pouvoir reprendre le duel qui m&rsquo;oppose &agrave; Simone Origone qui, je pense, va cette ann&eacute;e encore &ecirc;tre un de mes \"adversaires\" principaux !!!</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\"><br /></span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">Merci &agrave; tous pour vos mots de f&eacute;licitations apr&egrave;s les mondiaux de Vars&hellip; et </span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">j&rsquo;esp&egrave;re &agrave; bient&ocirc;t !</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">Vous pourrez suivre le d&eacute;roulement de la saison sur le site de la f&eacute;d&eacute;ration suisse &agrave; <a href=\"http://www.swiss-kl.com/\">www.swiss-kl.com</a> ou sur le site des comp&eacute;titions respectives.</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"FR-CH\">&nbsp;<br /></span></p>\r\n<!--EndFragment--></p>','','world cup tour begins','','','','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1235590302','','','','news en francais','philippe',''),
 ('714','philippe 2nd in sunpeaks','press','blog','','','nouvelliste mar 11, 2009','','','713-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1236729600','','','','press','philippe',''),
 ('718','march 11, 2009','news','blog','<p>&nbsp;</p>\r\n<div>\r\n<p>I\'m very happy to report that I came in 2nd place in the first FIS World Cup of the season in Sun Peaks Canada. &nbsp;</p>\r\n<p>It was a difficult race with threats of bad weather. &nbsp;I was experimenting with new skis during the training day. &nbsp;They were pretty good and enabled me to achieve 3rd place in all of the training runs. &nbsp;On the race day, I switched to my race skis and came in 1st place in the semi-finals. &nbsp;Unfortunately in the finals when I landed after the jump, my skis were not flat and it cost me some speed. &nbsp;I\'m still very happy with my second place finish despite my large fault. &nbsp;Simone Origone came in first, with Bastien Montes and Kenny Dale tied for 3rd. &nbsp;</p>\r\n<p>Tomorrow I will leave for Sweden, where we will rent a car and continue to drive 17 hours north to the Russian border of Finland where we have 2 races. &nbsp;Then we will drive back to Sweden for 2 more races before returning to the Swiss Alps.</p>\r\n<p>I\'m confident that I will have good news to report in the next few weeks.</p>\r\n<p>Stay fast!</p>\r\n<p>Philippe</p>\r\n</div>\r\n<p>&nbsp;</p>','','photo john cleaver','','','718-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1236729600','','','','news','philippe',''),
 ('720','sun peaks','2009','gallery','','','1st place semi final','','','719-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1236729600','','','','photos','philippe',''),
 ('723','flying fifi','2009','gallery','','','photo john cleaver','','','722-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1236792999','','','','photos','philippe',''),
 ('725','flying fifi','2009','gallery','','','photo john cleaver','','','724-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1236793048','','','','photos','philippe',''),
 ('727','philippe 2nd in sunpeaks','2009','gallery','','','','','','726-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1236793242','','','','photos','philippe',''),
 ('729','2 swiss in the top 20...','press','blog','','','nouvelliste mar 20, 2009','','','729-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1239426000','','','','press','philippe',''),
 ('733','behind by 1000th !!!','press','blog','','','nouvelliste mar 25, 2009','','','732-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1239447286','','','','press','philippe',''),
 ('737','hundfjallet','press','blog','','','nouvelliste mar 28, 2009','','','736-0.jpg','','','','','','','','','','Click on image and scroll around to read the full clear article.','','','','','0','','','','','','','','','','','','','','','0','','0','1239426000','','','','press','philippe',''),
 ('740','l\'illustre april 8, 2009','press','blog','','','swiss people magazine','','','739-0.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1238969460','2009','4','5','press','philippe',''),
 ('746','fall update 2009','news','blog','<p>I had a wonderful season and I\'m proud to announce that I came in 2nd place in the overall fight for the World Cup Globe. &nbsp;It was tough competition this year, but for the 8th season consecutively I placed in the top 3 in the world overall! &nbsp;</p>\r\n<p>I also won the Swiss Cup, and Swiss Championships. &nbsp;I was lucky to be in many newspaper articles this season, which are posted on my press page. &nbsp;</p>\r\n<p>I\'ve been training hard all summer and I\'m looking forward to another great season!</p>','','','','','746-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1254978000','','','','news','philippe',''),
 ('748','alp dhuez','2009','gallery','','','','','','747-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1263755973','','','','photos','philippe',''),
 ('750','alp dhuez','2009','gallery','','','','','','749-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1263756026','','','','photos','philippe',''),
 ('752','finland 2nd place','2009','gallery','','','','','','751-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1263756159','','','','photos','philippe',''),
 ('756','2010','2010','blog','<p>\r\n<table style=\"height: 262px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"122\">\r\n<p>World Cup 1</p>\r\n</td>\r\n<td width=\"110\">\r\n<p>Vars, France</p>\r\n</td>\r\n<td width=\"67\">\r\n<p><span style=\"font-weight: normal;\">3rd place</span></p>\r\n</td>\r\n<td width=\"54\">\r\n<p>217.78</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">World Cup 2</span></p>\r\n</td>\r\n<td>\r\n<p>Sun Peaks, Canada</p>\r\n</td>\r\n<td>\r\n<p>4th Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">World Cup 3</span></p>\r\n</td>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></p>\r\n</td>\r\n<td>\r\n<p>3rd Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Velocity Challenge</p>\r\n</td>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">Sun Peaks, Canada</span></p>\r\n</td>\r\n<td>\r\n<p>3rd Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>World Cup 4</p>\r\n</td>\r\n<td>\r\n<p>Salla, Finland</p>\r\n</td>\r\n<td>\r\n<p>3rd Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">World Cup 5</span></p>\r\n</td>\r\n<td>\r\n<p>Salla, Finland</p>\r\n</td>\r\n<td>\r\n<p>4th Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">World Cup 6</span></p>\r\n</td>\r\n<td>\r\n<p>Idre, Sweden</p>\r\n</td>\r\n<td>\r\n<p>5th Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">W</span><span style=\"font-weight: normal;\">orld Cup 7<br /></span></p>\r\n</td>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">Hundfjallet, Sweden</span></p>\r\n</td>\r\n<td>\r\n<p>2nd Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>World Cup 8</p>\r\n</td>\r\n<td>\r\n<p>Verbier, Switzerland</p>\r\n</td>\r\n<td>\r\n<p>3rd Place</p>\r\n</td>\r\n<td>\r\n<p>192.31</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>World Cup Overall</p>\r\n</td>\r\n<td>\r\n<p>Verbier, Switzerland</p>\r\n</td>\r\n<td>\r\n<p>3rd Place</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">XSpeedSki</span></p>\r\n</td>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">Verbier- Nendaz, Mont-Fort</span></p>\r\n</td>\r\n<td>\r\n<p>2nd Place</p>\r\n</td>\r\n<td>\r\n<p>218.65</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">Swiss Championships</span></p>\r\n</td>\r\n<td>\r\n<p><span style=\"font-weight: normal;\">Verbier- Nendaz, Mont-Fort</span></p>\r\n</td>\r\n<td>\r\n<p>1st Place</p>\r\n</td>\r\n<td>\r\n<p>212.06</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</p>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1267138467','2010','2','25','results','philippe',''),
 ('758','2010 mid-winter update','news','blog','<p><!--[if gte mso 9]><xml> <o:DocumentProperties> <o:Template>Normal.dotm</o:Template> <o:Revision>0</o:Revision> <o:TotalTime>0</o:TotalTime> <o:Pages>1</o:Pages> <o:Words>109</o:Words> <o:Characters>625</o:Characters> <o:Company>quickchick</o:Company> <o:Lines>5</o:Lines> <o:Paragraphs>1</o:Paragraphs> <o:CharactersWithSpaces>767</o:CharactersWithSpaces> <o:Version>12.0</o:Version> </o:DocumentProperties> <o:OfficeDocumentSettings> <o:AllowPNG /> </o:OfficeDocumentSettings> </xml><![endif]--><!--[if gte mso 9]><xml> <w:WordDocument> <w:Zoom>0</w:Zoom> <w:TrackMoves>false</w:TrackMoves> <w:TrackFormatting /> <w:PunctuationKerning /> <w:DrawingGridHorizontalSpacing>18 pt</w:DrawingGridHorizontalSpacing> <w:DrawingGridVerticalSpacing>18 pt</w:DrawingGridVerticalSpacing> <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery> <w:DisplayVerticalDrawingGridEvery>0</w:DisplayVerticalDrawingGridEvery> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:Compatibility> <w:BreakWrappedTables /> <w:DontGrowAutofit /> <w:DontAutofitConstrainedTables /> <w:DontVertAlignInTxbx /> </w:Compatibility> </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" LatentStyleCount=\"276\"> </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */ @font-face 	{font-family:Cambria; 	panose-1:2 4 5 3 5 4 6 3 2 4; 	mso-font-charset:0; 	mso-generic-font-family:auto; 	mso-font-pitch:variable; 	mso-font-signature:3 0 0 0 1 0;}  /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:\"\"; 	margin-top:0in; 	margin-right:0in; 	margin-bottom:10.0pt; 	margin-left:0in; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:Cambria; 	mso-fareast-theme-font:minor-latin; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin; 	mso-bidi-font-family:\"Times New Roman\"; 	mso-bidi-theme-font:minor-bidi;} @page Section1 	{size:8.5in 11.0in; 	margin:1.0in 1.25in 1.0in 1.25in; 	mso-header-margin:.5in; 	mso-footer-margin:.5in; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <mce:style><!   /* Style Definitions */ table.MsoNormalTable 	{mso-style-name:\"Table Normal\"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:\"\"; 	mso-padding-alt:0in 5.4pt 0in 5.4pt; 	mso-para-margin-top:0in; 	mso-para-margin-right:0in; 	mso-para-margin-bottom:10.0pt; 	mso-para-margin-left:0in; 	mso-pagination:widow-orphan; 	font-size:12.0pt; 	font-family:\"Times New Roman\"; 	mso-ascii-font-family:Cambria; 	mso-ascii-theme-font:minor-latin; 	mso-fareast-font-family:\"Times New Roman\"; 	mso-fareast-theme-font:minor-fareast; 	mso-hansi-font-family:Cambria; 	mso-hansi-theme-font:minor-latin;} --> <!--[endif]--> <!--StartFragment--></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: comic sans ms,sans-serif;\"><span style=\"font-size: large;\">I&rsquo;ve had a great start to the season.&nbsp; All of my summer training has paid off and I&rsquo;m happy to announce that I came in 3<sup>rd</sup> place at the first World Cup event in Vars France.&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: comic sans ms,sans-serif;\"><span style=\"font-size: large;\">The conditions were very difficult.&nbsp; With air temperatures at minus 24 plus the wind chill factor, and snow temps at -18, it was difficult for my wax technician Tracie Sachs to find the right wax combo.&nbsp; As for me, I found it hard to race in extreme cold weather, wearing nothing but a rubber suit with minimal insulation.&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: comic sans ms,sans-serif;\"><span style=\"font-size: large;\">I put up a good fight and was able to overcome these adverse conditions and landed myself on the podium.&nbsp; This makes over 30 World Cup podiums in my career.&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: comic sans ms,sans-serif;\"><span style=\"font-size: large;\">I hope to have many more podiums this season.&nbsp; Thank you for your support!</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: comic sans ms,sans-serif;\"><span style=\"font-size: large;\">Stay Fast &ndash; </span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: comic sans ms,sans-serif;\"><span style=\"font-size: medium;\"><span style=\"font-size: large;\">Philippe</span></span></span></p>\r\n<!--EndFragment-->\r\n<p>&nbsp;</p>','','','','','757-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1267077600','','','','news','philippe',''),
 ('760','racing in vars','2010','gallery','','','','','','760-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1267077600','','','','photos','philippe',''),
 ('762','vars podium','2010','gallery','','','','','','761-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1267107640','','','','photos','philippe',''),
 ('764','les valaisins','2010','gallery','','','','','','763-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1267107691','','','','photos','philippe',''),
 ('766','philippe in vars','2010','gallery','','','','','','765-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1267107747','','','','photos','philippe',''),
 ('768','vars podium','2010','gallery','','','','','','767-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1267107829','','','','photos','philippe',''),
 ('772','preparation ','2010','gallery','','','sun peaks canada','','','771-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270124888','','','','photos','philippe',''),
 ('774','training day','2010','gallery','','','at the start','','','773-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270124954','','','','photos','philippe',''),
 ('776','top of sun peaks ca','2010','gallery','','','','','','775-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270098000','','','','photos','philippe',''),
 ('778','top of sun peaks ca','2010','gallery','','','','','','777-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270098000','','','','photos','philippe',''),
 ('780','start in sun peaks ca','2010','gallery','','','','','','779-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270125217','','','','photos','philippe',''),
 ('782','start in sun peaks ca','2010','gallery','','','','','','781-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270125281','','','','photos','philippe',''),
 ('784','velocity challenge','2010','gallery','','','','','','783-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270125329','','','','photos','philippe',''),
 ('786','salla finland podium','2010','gallery','','','','','','785-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270125417','','','','photos','philippe',''),
 ('788','sweden 2nd place','2010','gallery','','','','','','787-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270125522','','','','photos','philippe',''),
 ('790','sweden 2nd place','2010','gallery','','','','','','789-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1270125589','','','','photos','philippe',''),
 ('792','march 10, update 2010','news','blog','<p><!--StartFragment--></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">In the wake of the Olympics, we flew into Vancouver, seeing many Olympic athletes at the airport on their way home.&nbsp; All of whom had smiles, weather their dreams came true or not.&nbsp; There is no doubt that participation in the Olympics is a wonderful experience.</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">After renting our minivan, we drove 5 hours north in terrible weather.&nbsp; Sleet, Rain, Snow, Slush, no dry roads were to be found.</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">We arrived at 1 am and had training the next morning.&nbsp; Thankfully it was delayed a little so I could rest before taking runs at 160 kph.&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">I had excellent results in training on the wet conditions.&nbsp; The races moved forward and I placed 3</span></span><sup><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">rd</span></span></sup><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\"> and 4</span></span><sup><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">th</span></span></sup><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">, in each event.&nbsp; I was quite happy with these results and managed an additional 3</span></span><sup><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">rd</span></span></sup><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\"> place in the Velocity Challenge.</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">Being on the podium in a Speed Ski World Cup is quite the challenge.&nbsp; There is often only 1 thousand of a second between racers.&nbsp; The competition is fierce and I&rsquo;m proud to be among the top competitors in every event.</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">Stay Fast,</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: mceinline;\"><span style=\"font-family: mceinline;\">Philippe</span></span></p>\r\n<!--EndFragment-->\r\n<p>&nbsp;</p>','','sun peaks canada','','','791-0.jpg','','','','','','','','','','','','','','','0','','','','','','','','','','','','','','','0','','0','1268200800','','','','news','philippe',''),
 ('794','march 30, update 2010','news','blog','<p><!--StartFragment--></p>\r\n<p class=\"MsoNormal\">After a whirlwind trip to Canada, I had 3 days of work in Switzerland and then got on a plane to Sweden.<span>&nbsp; </span>Six of us arrived in Stockholm and rented a large van, which we then drove 17 hours North to the Arctic circle of Salla Finland.<span>&nbsp; </span>We drove through the night and arrived the morning before the first race day of the World Cup.<span>&nbsp; </span>Though we were all exhausted we were excited to race in this unique event where the weather is hard to predict and the snow is difficult to wax for.</p>\r\n<p class=\"MsoNormal\"><span>I had some excellent training runs, and I came in 3<sup>rd</sup> place in the first event.<span>&nbsp; </span>Unfortunately the weather took a turn for the worse and so did I.<span>&nbsp; </span>I did not deal well with the frigid temperatures of minus 22 and high winds.<span>&nbsp; </span>I&rsquo;m afraid I came in 4<sup>th</sup> in the second race.</span></p>\r\n<p class=\"MsoNormal\"><span>After another 17 hour drive in treacherous conditions, we arrived in Idre Sweden.<span>&nbsp; </span>The track went from very wet and soft on the training day to extremely hard and very cold on the race day.<span>&nbsp; </span>Because of the hard conditions and a bad line choice, I got bumped up in the timing zone on the semifinal run.<span>&nbsp; </span>I felt I could overcome this, but my start position as a result of that fault left me starting well before the top guys, which gave them an advantage.<span>&nbsp; </span>I ended up in 5<sup>th</sup> place, only .1 off the podium, and the guys behind me were more than 2 kph slower than me.<span>&nbsp; </span>It was a disappointment, but the competition was really fierce and I&rsquo;m proud of how I skied.<span>&nbsp; </span></span></p>\r\n<p class=\"MsoNormal\"><span>Moving on to the final race in Sweden, I knew I had to keep my act together and redeem myself. <span>&nbsp;</span>I wanted a good podium finish before returning home.<span>&nbsp; </span>Hundfjallet is a notoriously difficult track to ski.<span>&nbsp; </span>I had consistently fast runs, and I finally performed well in the final.<span>&nbsp; </span>I came in 2<sup>nd</sup> place and I was truly happy with my performance.</span></p>\r\n<p class=\"MsoNormal\"><span>I have one more World Cup and 2 other fun races in Verbier.<span>&nbsp; </span>(The Swiss Championships and Speed Masters).<span>&nbsp; </span>I&rsquo;m really looking forward to racing at home and enjoying the support of my friends and family.</span></p>\r\n<p class=\"MsoNormal\"><span>Stay fast!</span></p>\r\n<p class=\"MsoNormal\"><span>Philippe</span></p>\r\n<!--EndFragment-->\r\n<p>&nbsp;</p>','','scandinavia','','','793-0.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1270159539','2010','4','1','news','philippe',''),
 ('799','Test','test','blog','<p>This is just a test. Just replace the title, description, image and video with your own. An important note, if you are adding a video, you must also upload an image to be shown before the video starts playing.</p>\r\n<p>Need more tips? When you are making changes to your posts, mouse-over the titles for a more indepth explanation.</p>\r\n<p>Want nice graphic titles for your Youtube videos below? Click to edit the \"Text1\" below, and copy the entire text into a new blog entry. (Create a new blog entry by clicking the pencil above and \"new\").</p>','','test','','','image799-1.jpg','','','','','video799-1.flv','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1274386154','2010','5','20','video','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `philippem_pages` 
-- 

INSERT INTO `philippem_pages` (`id`, `name`, `placement`, `orderby`, `type`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('20','contact','0','date desc','contact','2','','<p style=\"text-align: left;\"><span style=\"color: #800000;\">Email: </span><a style=\"color: #800000;\" href=\"mailto:philippe.may@dransnet.ch\"><br />philippe.may@dransnet.ch</a></p>','','contact','','','','1'),
 ('17','bio','1','date desc','blog','1','','<p><span style=\"color: #800000;\"><img src=\"images/biopic.jpg\" alt=\"\" width=\"183\" height=\"295\" /></span></p>\r\n<p><span style=\"color: #800000;\"> Email:</span><a style=\"color: #800000;\" href=\"mailto:philippe.may@dransnet.ch\"><br />philippe.may@dransnet.ch</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h3>Sponsors:</h3>\r\n<p><span style=\"text-decoration: underline;\"><br /></span></p>\r\n<p><span style=\"text-decoration: underline; color: #216088;\"><a href=\"http://www.garagestchristophe.ch/\" target=\"_blank\"><img src=\"images/LogoSub09sm.jpg\" alt=\"\" width=\"200\" height=\"138\" /></a></span></p>\r\n<p><a style=\"color: #800000;\" href=\"mailto:philippe.may@dransnet.ch\"><br /></a></p>\r\n<p><span style=\"text-decoration: underline;\"><a href=\"http://tokous.com/\" target=\"_blank\"><img src=\"images/sponsor-toko.gif\" alt=\"\" width=\"143\" height=\"64\" /></a></span></p>\r\n<p><span style=\"text-decoration: underline;\"><br /></span></p>\r\n<p><a href=\"http://www.verbierbooking.com/\" target=\"_blank\"><img src=\"images/VERBIERlogo-1web.jpg\" alt=\"\" width=\"200\" height=\"50\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"text-decoration: underline; color: #216088;\"><br /></span></p>\r\n<p><a></a></p>','','bio','','','','1'),
 ('18','photos','5','date desc','photos','1','<p>Please enjoy my photo gallery. &nbsp;If you would like to use one of my images for publicity, please inquire with me first. &nbsp;Thank you.</p>','<p>Click to view image.</p>','','photos','','','','5'),
 ('19','links','0','date desc','text','2','<p><span style=\"font-size: x-large;\"><strong>Sponsors</strong></span></p>\r\n<p><a href=\"http://www.verbierbooking.com/\" target=\"_blank\">Verbier</a></p>\r\n<p><a href=\"http://www.subaru.ch\" target=\"_blank\">Subaru</a></p>\r\n<p><a href=\"http://www.garagestchristophe.ch\" target=\"_blank\">Garage St. Christophe</a></p>\r\n<p><a href=\"http://www.tokous.com\" target=\"_blank\">TokoUS</a></p>\r\n<p><a href=\"http://jewelrybytracie.com/home/\" target=\"_blank\">Jewelry by Tracie</a></p>\r\n<p><span style=\"font-size: x-large;\"><strong>Other Speed Ski Sites</strong></span></p>\r\n<p><a href=\"http://www.quickchick.com\" target=\"_blank\">Tracie Max Sachs</a></p>\r\n<p><a href=\"http://www.swiss-kl.com/\" target=\"_blank\">FSSV -- F&eacute;d&eacute;ration Suisse de Ski de Vitesse</a></p>\r\n<p><a href=\"http://montes.bastien.free.fr/\" target=\"_blank\">Bastien Montes</a></p>\r\n<p><a href=\"http://www.speedski.nl/\" target=\"_blank\">Merijn Vunderink/ Dutch Speed Ski Team</a></p>\r\n<p><a href=\"http://www.usaspeedskiers.com/\" target=\"_blank\">Team USA Speed Skiers</a></p>\r\n<p><a href=\"http://www.jukkaviitasaari.net/\" target=\"_blank\">Jukka Viitasaari</a></p>\r\n<p><a href=\"http://www.kl-france.com/\" target=\"_blank\">France</a></p>\r\n<p><a href=\"http://www.kilometrolanzado.net/html/spanish_speed_ski__philippem_.html\" target=\"_blank\">Spain</a></p>\r\n<p><a href=\"http://www.skidor.com/speedski/\" target=\"_blank\">Sweden</a></p>\r\n<p><a href=\"http://www.speedski-cz.com/\" target=\"_blank\">Czech Republic</a></p>\r\n<p><a href=\"http://www.velocitychallenge.com/\" target=\"_blank\">Canada</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','<p><img src=\"../_images/linkspict.jpg\" alt=\"\" width=\"180\" height=\"249\" /></p>','','links','','','','0'),
 ('16','home','0','date desc','home','1','<p>This is your homepage</p>','<p>Login to change this text</p>','','home','','','','0'),
 ('24','news','2','date desc','blog','1','','<p><strong><em> News from professional Swiss speed skiier Philippe May</em></strong></p>','','news','','','','2'),
 ('25','results','3','date desc','blog','1','','<p><img src=\"http://www.philippemay.com/_images/minififi.jpg\" alt=\"\" width=\"108\" height=\"144\" /></p>\r\n<p>(official results:<a href=\"http://www.swiss-kl.com/\" target=\"_blank\"> F.S.S.V. Federation Suisse de Ski de Vitesse</a>)</p>','','results','','','','3'),
 ('26','press','4','date desc','blog','1','','<p><a href=\"http://www.youtube.com/watch?v=Ez1K5BmIhMs\" target=\"_blank\"><em><strong>Click here to view Philippe In an Interview With Mike Falcon From Adventure Zone<br /></strong></em></a></p>\r\n<p>&nbsp;</p>','','press','','','','4'),
 ('27','schedule','6','date desc','blog','1','','<p><img src=\"images/Verbier.jpg\" alt=\"\" width=\"200\" height=\"300\" /></p>\r\n<p><span class=\"color1\">Email:</span><a class=\"color1\" style=\"color: #800000;\" href=\"mailto:philippe.may@dransnet.ch\"><br />philippe.may@dransnet.ch</a></p>','','schedule','','','','6'),
 ('30','video','7','date desc','blog','1','<p>&nbsp;</p>\r\n<p><a href=\"http://www.tsr.ch/tsr/index.html?siteSect=500000&amp;channel=sport#program=148444;tab=loadprogram;vid=11990060\" target=\"_parent\">Click here to see footage from the World Cup in Verbier on TSR.</a></p>\r\n<p><a href=\"http://www.tsr.ch/tsr/index.html?siteSect=500000&amp;bcid=738530#vid=11833197\" target=\"_parent\">Double click here to see a video link of Philippe in the news.</a></p>\r\n<p>&nbsp;</p>\r\n<p>\r\n<script src=\"_editorscripts/tiny_mce/themes/advanced/langs/en.js\" type=\"text/javascript\"></script>\r\n</p>\r\n<p>\r\n<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" width=\"425\" height=\"350\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\">\r\n<param name=\"src\" value=\"http://www.youtube.com/v/zmtvmT6BT00\" /><embed type=\"application/x-shockwave-flash\" width=\"425\" height=\"350\" src=\"http://www.youtube.com/v/zmtvmT6BT00\"></embed>\r\n</object>\r\n</p>\r\n<p>&nbsp;</p>\r\n<p>\r\n<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" width=\"425\" height=\"350\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\">\r\n<param name=\"src\" value=\"http://www.youtube.com/v/b1JWOzRx61g\" /><embed type=\"application/x-shockwave-flash\" width=\"425\" height=\"350\" src=\"http://www.youtube.com/v/b1JWOzRx61g\"></embed>\r\n</object>\r\n</p>\r\n<p>\r\n<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" width=\"425\" height=\"350\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\">\r\n<param name=\"src\" value=\"http://www.youtube.com/v/V-ix8PDaG9E&amp;feature\" /><embed type=\"application/x-shockwave-flash\" width=\"425\" height=\"350\" src=\"http://www.youtube.com/v/V-ix8PDaG9E&amp;feature\"></embed>\r\n</object>\r\n</p>\r\n<p>\r\n<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" width=\"425\" height=\"350\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\">\r\n<param name=\"src\" value=\"http://www.youtube.com/v/Ez1K5BmIhMs\" /><embed type=\"application/x-shockwave-flash\" width=\"425\" height=\"350\" src=\"http://www.youtube.com/v/Ez1K5BmIhMs\"></embed>\r\n</object>\r\n</p>\r\n<p>&nbsp;</p>','<p><a rel=\"lightbox\" href=\"http://www.philippemay.com/_images/biopic.jpg\"><img src=\"http://www.philippemay.com/_images/biopic.jpg\" alt=\"\" width=\"183\" height=\"295\" /></a></p>','','video','','','','615445084'),
 ('31','test','0','date desc','text','3','<p><a rel=\"lightbox\" href=\"http://philippemay.com/_images/biopic.jpg\"><img src=\"http://philippemay.com/_images/biopic.jpg\" alt=\"\" width=\"183\" height=\"295\" /></a></p>\r\n<p>Just a space filler!</p>','','','test','','','','615606030'),
 ('32','news en francais','0','date desc','blog','2','<p>Bienvenue sur mon nouveau site. &nbsp;Je fais un update toute de suite! &nbsp;Merci pour votre patience.</p>','<p><a rel=\"lightbox\" href=\"http://www.philippemay.com/_images/fifibikemedalsmall.jpg\"><img src=\"http://www.philippemay.com/_images/fifibikemedalsmall.jpg\" alt=\"\" width=\"162\" height=\"216\" /></a></p>','','news en francais','','','','615889686'),
 ('34','biographie','0','date desc','text','2','<p><!--StartFragment--></p>\r\n<p class=\"MsoNormal\"><strong><span>In French</span></strong></p>\r\n<p class=\"MsoNormal\"><span>Philippe May est n&eacute; le 8 octobre 1970. Il a grandit dans un petit village des alpes Suisse nomm&eacute; Verseg&egrave;res.Verseg&egrave;res se situe dans la vall&eacute;e de Bagnes tout pr&egrave;s de la fameuse station de ski de Verbier.Ne venant pas d\' une famille de grands skieurs Philippe a cependant d&egrave;s son plus jeune age &eacute;t&eacute; attir&eacute; par les pentes enneig&eacute;es.</span></p>\r\n<p class=\"MsoNormal\"><span>Comme beaucoup de jeunes de son age, Philippe a d\'abord r&ecirc;v&eacute; de devenir une rock star. Dans les ann&eacute;e 80, Kiss et Metallica furent ses idoles. Philippe et son fr&egrave;re Michel form&egrave;rent alors un groupe dont Philippe fut le batteur. Apr&egrave;s plusieurs ann&eacute;es de r&eacute;p&eacute;titions et de concerts, Philippe d&eacute;cida de se concentrer sur sa plus grande passion, le SKI.</span></p>\r\n<p class=\"MsoNormal\"><span>Philippe a suivi les &eacute;tapes de la fili&egrave;re de ski alpin. Sa passion pour la vitesse &eacute;tant d&eacute;j&agrave; pr&eacute;sente, la descente &eacute;tait sa discipline favorite. Apr&egrave;s une grave blessure au genou et une interruption forc&eacute;e de tout activit&eacute; sportive pour 4 ans. Philippe &eacute;tait d&eacute;termin&eacute; a revenir dans le monde du ski. Gr&acirc;ce a beaucoup de travail et de motivation, il recoupera physiquement et fit son retour en passant son brevet de professeur de ski et en entra&icirc;nant les jeunes de son ski club.</span></p>\r\n<p class=\"MsoNormal\"><span>Durant ces 4 derni&egrave;re ann&eacute;e, Philippe s\'est de plus en plus impliqu&eacute; en ski de vitesse en participant aux manches de coupe du monde dans plusieurs pays se mesurant ainsi aux meilleurs athl&egrave;tes mondiaux de la sp&eacute;cialit&eacute;. Apr&egrave;s quelque temps d\'adaptation, Philippe s\'est am&eacute;lior&eacute; physiquement,techniquement et mentalement. Ces 2 derni&egrave;res ann&eacute;e, il a r&eacute;ussi a pleinement s\'exprim&eacute; dans ce sport exaltent qu\'est le ski de vitesse.</span></p>\r\n<p class=\"MsoNormal\"><span>L\'ann&eacute;e dernier,Philippe a atteint plusieurs de ses buts. Il a gagn&eacute; le classement a points de la coupe de Suisse et a r&eacute;ussi a se class&eacute; dans le top 10 mondial a toutes les courses de la saison.</span></p>\r\n<p class=\"MsoNormal\"><span>Philippe continue sa pr&eacute;paration durant l\'entre saison. En plus des s&eacute;ances de musculation et de r&eacute;sistance et d\'endurance, Philippe entra&icirc;ne aussi les jeunes comp&eacute;titeurs alpins. Le reste de son temps est consacr&eacute; a son m&eacute;tier de menuisier et a son poste au sein du golf club de Verbier.</span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<!--EndFragment-->\r\n<p>&nbsp;</p>','<p><a rel=\"lightbox\" href=\"../_images/linkspict.jpg\"><img src=\"../_images/linkspict.jpg\" alt=\"\" width=\"206\" height=\"284\" /></a></p>\r\n<div>\r\n<p><span style=\"color: #800000;\">Email:</span><a style=\"color: #800000;\" href=\"mailto:philippe.may@dransnet.ch\"><br />philippe.may@dransnet.ch</a></p>\r\n<p>&nbsp;</p>\r\n<h3>Sponsors:</h3>\r\n<p><span style=\"text-decoration: underline;\"><br /></span></p>\r\n<p><span style=\"color: #216088; text-decoration: underline;\"><a rel=\"lightbox\" href=\"../_images/subaru.gif\"></a><a href=\"http://www.garagestchristophe.ch/\" target=\"_blank\"><img src=\"http://www.philippemay.com/_images/LogoSub09sm.jpg\" alt=\"\" width=\"217\" height=\"150\" /></a></span></p>\r\n<p><a style=\"color: #800000;\" href=\"mailto:philippe.may@dransnet.ch\"><br /></a></p>\r\n<p><span style=\"text-decoration: underline;\"><a href=\"http://tokous.com/\" target=\"_blank\"><img src=\"../_images/sponsor-toko.gif\" alt=\"\" width=\"143\" height=\"64\" /></a></span></p>\r\n<p><span style=\"text-decoration: underline;\"><br /></span></p>\r\n<p><a href=\"http://www.verbierbooking.com/\" target=\"_blank\"><img src=\"../_images/VERBIERlogo-1web.jpg\" alt=\"\" width=\"216\" height=\"54\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p><a href=\"http://www.newwork-hr.ch/page/index.php\" target=\"_blank\"><img src=\"../_images/logo.jpg\" alt=\"\" width=\"200\" height=\"53\" /></a></p>\r\n<p><span style=\"color: #216088; text-decoration: underline;\"><br /></span></p>\r\n</div>','','biographie','','','','615970001'),
 ('35','new page','0','date desc','blog','3','<p>asffdfdfdf</p>','','','new page','','','','616712705'),
 ('37','palmares','0','date desc','blog','2','','<p><a rel=\"lightbox\" href=\"http://www.philippemay.com/_images/fifismalla.jpg\"><img src=\"http://www.philippemay.com/_images/fifismalla.jpg\" alt=\"\" width=\"181\" height=\"216\" /></a></p>','','palmares','','','','616872276'),
 ('38','join','0','','join','hidden','<p>Join and stay updated on Philippe May\'s news and results.</p>','','','Join the mailinglist','','','','1274154187'),
 ('39','account','0','','account','hidden','<p>Here you can edit your account details.</p>','','','Manage your preferences','','','','1274200142'),
 ('40','login','0','','login','hidden','<p>Login to manage your account and contribute to the site.</p>','','','Login contribute to the site','','','','1274204134');

-- --------------------------------------------------------

-- 
-- Dumping data for table `philippem_users` 
-- 

INSERT INTO `philippem_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('1','admin','ms[-;r-m','philippe','may','','pshorey@artspaces.net','0','','editor',''),
 ('4','philippe','speedski','Philippe','May','','pshorey@gmail.com','1234567890','','',''),
 ('12','julia','hawaii','Julia','Forrest','','jforrest@artspaces.net','0','','','yes');

-- --------------------------------------------------------

-- 
-- Dumping data for table `purplelan_items` 
-- 

INSERT INTO `purplelan_items` (`id`, `name`, `category`, `type`, `text1`, `text2`, `text3`, `image1`, `image2`, `image3`, `image4`, `image5`, `video1`, `video2`, `video3`, `video4`, `video5`, `caption1`, `caption2`, `caption3`, `caption4`, `caption5`, `price1`, `price2`, `price3`, `price4`, `price5`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `shp1`, `shp2`, `shp3`, `shp4`, `shp5`, `item`, `link`, `placement`, `date`, `year`, `month`, `day`, `page`, `user`, `postedby`) VALUES ('739','...it could stay that way.','portfolio','gallery','','','','image739-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','7','1276309499','2010','6','11','gallery','',''),
 ('738','Silly mermaid...','portfolio','gallery','','','','image738-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','8','1276309581','2010','6','11','gallery','',''),
 ('740','The Lumine`an Rooster','portfolio','gallery','','','','image740-1.png','','','','','','','','','','Lumine` land of the lost series.','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','10','1276309724','2010','6','11','gallery','',''),
 ('737','Ollie-ollie oxen free!','portfolio','gallery','','','','image737-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','9','1276309654','2010','6','11','gallery','',''),
 ('736','I want a coming of age ceremony!','portfolio','gallery','','','','image736-1.png','','','','','','','','','','','','','','','15','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','5','1276309195','2010','6','11','gallery','',''),
 ('735','Grooming Dekker','portfolio','gallery','','','','image735-1.png','','','','','','','','','','','','','','','15','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','6','1276309400','2010','6','11','gallery','',''),
 ('721','And here we are...','thoughts','blog','<p>I couldn\'t be more pleased to post in my new site blog.</p>\r\n<p>Welcome everyone!&nbsp;</p>\r\n<p>It is my intention to make this a multi-purpose space. Some days, there will be sketches, some days there will be projects in process and of course, some days there will be posts about things that interest me.</p>\r\n<p>Warning: some content of this site may contain any number of items:</p>\r\n<p>Reviews and reminiscences about old children\'s books. Fun!</p>\r\n<p>Books and Comic books, both American and otherwise.</p>\r\n<p>Movies, movies, movies.</p>\r\n<p>Cosplays in progress, my ball-jointed doll, Lena Vesper, convention photos, city trips and yummy restaurants.&nbsp;</p>\r\n<p>Plugs about the works/goings on about Illuminatingly Awesome people that I know. (If you have something you want to share and you want me to plug it in my blog, see my contact page.)</p>\r\n<p>I\'d like to thank Paul Shorey as my official first Illuminatingly Awesome person of the blog. He made my site here. His communication is terrific, and he\'s a fine artist besides; he brings that aesthetic to his site design. His website, artspaces, allows you to edit your own content whenever you like, without having to know how to code. Not only that, he\'ll tailor a website to your specifications. It\'s the best of both worlds. Thanks Paul!</p>\r\n<p>I hope everyone enjoys the site. There are still some tweeks in order, (such as pricings on the commissions page) but all in all, I plan to blog as much as I can while all that is going on.</p>\r\n<p>/digital illumination complete.//&nbsp;</p>\r\n<p>&nbsp;</p>','','what this blog will be used for','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1275072946','2010','5','28','blog','',''),
 ('720','my studio, my world','bio','blog','','','','image720-1.jpg','image720-2.jpg','image720-3.jpg','image720-4.jpg','image720-5.jpg','','','','','','studio.','creativity altar.','Lumine (my trilogy that I am working on) books and homemade Lena doll. Kanji written by me. It says: artist.','Giant paintbrush and anime buddha made by me.','mermaid painted on the wall of the Hartford Art School illustration studio.','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1274925525','2010','5','26','bio','',''),
 ('730','Lumine` Sol-Name Day','portfolio','gallery','','','','image730-1.png','','','','','','','','','','Lumine` land of the lost series.','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','0','1276309054','2010','6','11','gallery','',''),
 ('731','Lumine` Star Festival Day','portfolio','gallery','','','','image731-1.png','','','','','','','','','','Lumine` land of the lost series.','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','1','1276308467','2010','6','11','gallery','',''),
 ('732','The Storyteller','portfolio','gallery','','','','image732-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','2','1276308508','2010','6','11','gallery','',''),
 ('733','Splashy summer','portfolio','gallery','','','','image733-1.png','','','','','','','','','','','','','','','15','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','3','1276309296','2010','6','11','gallery','',''),
 ('734','Circus of dreams','portfolio','gallery','','','','image734-1.png','','','','','','','','','','','','','','','15','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','4','1276309217','2010','6','11','gallery','',''),
 ('709','Welcome to Purple Lantern Studio!','thought bubble','home','<p><strong></strong></p>\r\n<p><strong>Welcome to Purple Lantern Studio!<br /></strong></p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1274825482','2010','5','25','home','',''),
 ('710','What am I working on?','thought bubble','home','<p><strong>What am I working on?</strong> : Making Lolita-style illustrations for potential dresses and skirts, Ned\'s b-day card.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1274815911','2010','5','25','home','',''),
 ('711','Blog posts','thought bubble','home','<p><strong>Blog post of the day:</strong>&nbsp;Order of the Lanterns first Monthly Motivation Challenge.</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1274815797','2010','5','25','home','',''),
 ('712','site update','thought bubble','home','<p><span style=\"font-family: Arial, Helvetica, sans-serif; font-size: xx-small;\">\"Oh,Sara. It is like a story.\" \"It is a story...everything is a story. You are a story-I am a story. Miss Minchin is a story.\" - <span style=\"text-decoration: underline;\">A Little Princess</span>, Francis Hodgson Burnett</span></p>\r\n<div><span style=\"font-family: Arial, Helvetica, sans-serif;\"><span><br /></span></span></div>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1274825363','2010','5','25','home','',''),
 ('748','fan-art: Ragnarok','commissions','gallery','<p>This was made for my friend Rachel Russell. She requested her character from Ragnarok online in a \'quiet scene.\'</p>','','','image748-1.jpg','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1276310627','2010','6','11','gallery','',''),
 ('741','Maridian, guardian of lost time','portfolio','gallery','','','','image741-1.png','','','','','','','','','','Lumine` land of the lost series.','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','11','1276309774','2010','6','11','gallery','',''),
 ('742','Scribe of Lumine`','portfolio','gallery','','','','image742-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','12','1276309921','2010','6','11','gallery','',''),
 ('743','Darby ram series 1','portfolio','gallery','','','','image743-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','14','1276310058','2010','6','11','gallery','',''),
 ('744','Darby ram series 2','portfolio','gallery','','','','image744-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','15','1276310157','2010','6','11','gallery','',''),
 ('745','Scavengin\' Susie','portfolio','gallery','','','','image745-1.png','','','','','','','','','','','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','16','1276310247','2010','6','11','gallery','',''),
 ('746','Lena Vesper in Lumine`','portfolio','gallery','','','','image746-1.png','','','','','','','','','','Lumine` land of the lost series.','','','','','25','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','','13','1276309973','2010','6','11','gallery','',''),
 ('750','Facing their own darkness- Bruce Coville\'s finishes the Unicorn Chronicles','thoughts','blog','<p>&nbsp;</p>\r\n<p><img src=\"images/uploads/thumbs/images.jpeg\" alt=\"bruce coville book\" width=\"97\" height=\"143\" /></p>\r\n<p>The Unicorn Chronicles: I loved it as a child, and I guess I am feeling a little wistful that the series is finished. It took my childhood and beyond for Bruce Coville to finish, but it is interesting to think that the series grew up with me and many others that enjoyed reading about the unicorns of Luster.</p>\r\n<p>I would have wanted to finish this book the second I bought it (two weeks ago) but for those who know me, once I get my nose in a book it is hard to pull myself out of it. So I waited until the site was finished- and&nbsp;read it in a day and a half.</p>\r\n<p>So, yes, it is a book for younger readers, but I would say that it is an original&nbsp;fantasy series that stands the test of time, is original, infused with a storytellers wit, strongly bolstered with myths and&nbsp;legends from many different cultures. Cara Diana&nbsp;Hunter is a well-rounded character&nbsp;with feelings that go far beyond: \'Oooh, sparkly ponies with horns!\' Not that&nbsp;these don\'t have their place.&nbsp;Many know that&nbsp;I do enjoy a sparkly pony now and then. You won\'t find that here, however.</p>\r\n<p>For unicorns of that sort, you may want to check out&nbsp;<span style=\"text-decoration: underline;\">The Secret of the Unicorn Queen</span>&nbsp;series.&nbsp;Firmly rooted in the eighties with a mad scientist plot,&nbsp;Bruce Springsteen, and tape decks that scare away monsters, it\'s an amusing enough&nbsp;read. Google it if you dare and look for the older covers.</p>\r\n<p>Throughout the series, a history of the unicorns and their world is woven throughout the central story, with fresh ideas about what a unicorn is, and its function in the world. One of my personal favorites is the idea that a \'Guardian of Memory\' is chosen to travel to Earth to fill the hole that the unicorns left behind when they were forced to&nbsp;emigrate to Luster, a world that was created just for them.&nbsp;I also really enjoy the character Grimwold, who wrote the Chronicles, his cantankerous attitude at having to put himself in the stories&nbsp;I believe might be Coville&nbsp;poking fun at the fact of how authors feel about intentionally or accidentally&nbsp;revealing themselves in their literature. &nbsp;</p>\r\n<p>I don\'t want to spoil it for you, but for a children\'s series, this book is filled with wonderful dialogue and reveals&nbsp;that I think that some adults might not even guess as they are reading.</p>\r\n<p>If you want to reminisce about Bruce Coville or are new to his books, I invite you&nbsp;to check out his website:&nbsp;<a href=\"http://www.brucecoville.com/\" target=\"_blank\">www.brucecoville.com</a>&nbsp;You may even realize that you had read one of his books when you were younger, as he has written many. He is the Illuminatingly Awesome person of this week.</p>\r\n<p>Stay tuned for next&nbsp;time, when&nbsp;I&nbsp;discuss and explore the hobby of&nbsp;the care, keeping, painting and customization of asian ball-jointed dolls. Pictures galore of my homemade clothes and accessories await!</p>\r\n<p>//digital illumination complete//&nbsp;</p>\r\n<div></div>\r\n<p>&nbsp;</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1277080427','2010','6','20','blog','',''),
 ('751','Order of the Lanterns Monthly Motivation Challenge #1 ~superhero or villain~','thoughts','blog','<p><img src=\"images/uploads/thumbs/orderoflanterns.jpg\" alt=\"Order of the lanterns graphic\" width=\"300\" height=\"232\" /></p>\r\n<p>Alright everyone! I\'ve got almost everyone I need to begin, so let\'s get rolling with the first challenge. Stragglers who said they wanted to do it and don\'t check facebook will be contacted by the management personnel/Illustration Gestapo. This is about all of you, my talented friends. I want to keep us motivated, and I want us to get down in the trenches and pull out something awesome.&nbsp;</p>\r\n<p>So: on with the challenge!&nbsp;</p>\r\n<p>Our first assignment is to draw/write about/sculpt a superhero or villain. It can be male, female or Other.</p>\r\n<p>For the writers, either a character profile or small vignette about your hero/villain will do. A short story is also encouraged.</p>\r\n<p>For the artists: a character profile, action shot, or even a comic! Take your pick.</p>\r\n<p>If you want to write and draw, by all means, I would keel over from the&nbsp;amazing-ness that would be your combined work. Seriously, go for it.</p>\r\n<p>If you are really feeling special and wish to combine on projects, go ahead, but pull your own weight and work hard.&nbsp;</p>\r\n<p>Since this is in the middle of the month: you have until the end of July to do this. Plenty of time. All work must be submitted in web-friendly form through the following email:</p>\r\n<p>raynasas@gmail.com</p>\r\n<p>Good luck, ingest lots of caffeine, and lets see what we are made of!</p>\r\n<p>//digital illumination complete//&nbsp;</p>','','','','','','','','','','','','','','','','','','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','1277175570','2010','6','21','blog','','');

-- --------------------------------------------------------

-- 
-- Dumping data for table `purplelan_pages` 
-- 

INSERT INTO `purplelan_pages` (`id`, `name`, `type`, `placement`, `orderby`, `menu`, `text1`, `text2`, `text3`, `title1`, `title2`, `title3`, `style`, `date`) VALUES ('1','home','home','0','placement asc','1','<p>Welcome to the site! Please add this page to your bookmarks and take a look around.</p>','','','home','','','	#body-inner {}\r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    ','0'),
 ('57','blog','blog','3','date desc','1','<h1>illuminations and interests</h1>\r\n<p>(Official home of the Order of the Lanterns, a writers and artists collective)</p>','<p>&nbsp;</p>\r\n<div>\r\n<p>I am an illustrator who lives in Westchester County, NY.</p>\r\n<p><strong>Order of the Lanterns information: &nbsp;</strong></p>\r\n<p>Do you like to write? Do you like to draw, paint, sculpt, combine things together in an interesting way? Do you want to be part of a community of people who will support you and encourage you to do what you love?  If you answered yes to all, then this may be the collective for you! &nbsp;Both artists and writers are allowed to join. Each month we will have a Monthly Motivation Challenge, in which a topic or motivating idea will be selected, and both the writers and artists will interpret it in any way they wish.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>If you are submitting works for the Monthly Motivation Challenges in the Order of the Lanterns sub-community of this blog, please visit my contact page for more information.</p>\r\n<p>&nbsp;</p>\r\n&nbsp;</div>\r\n<p>&nbsp;</p>','','My Blog','profile and order of the lanterns','','','1250887383'),
 ('52','join','interactive','0','name asc','hidden','','','','Join','','','','1245027739'),
 ('55','bio','blog','1','date desc','1','','<p><img src=\"images/uploads/thumbs/about1.jpg\" alt=\"\" width=\"204\" height=\"300\" /></p>\r\n<p><!--StartFragment--><span>Nurtured by parents who didn&rsquo;t care whether she hoisted a pool on top of the swing set, made massive tents in the living room, and taped leaves from the hosta bushes to the monkey bars in the back yard, Rayna Sassano had plenty of room to develop her love for stories and adventure. Somewhere along the way, with the encouragement of family, friends, teachers, and her stuffed childhood companion Primrose the mouse, she eventually realized that her dream was to become a children&rsquo;s illustrator and author. She graduated Magma Cum Laude from the University of Hartford with a BFA in Illustration, and she hopes to spread positive messages to children through her work. Drawing round-headed kids and fantasy worlds is just one of the perks of this job.</span><!--EndFragment--></p>','','bio','Rayna Sassano','','','1246893299'),
 ('33','contact','interactive','4','name asc','1','','<p>For questions, and commissions, send me an email using this form.&nbsp;Or&nbsp;<a href=\"mailinglist\">sign up for my mailing list</a>.&nbsp;If you are submitting for the Monthly Motivation Challenges, please note that in your title.&nbsp;</p>\r\n<p><img title=\"email me\" src=\"images/uploads/thumbs/primrosemailf.jpg\" alt=\"contact page graphic\" width=\"200\" height=\"275\" /></p>','','contact me','','','','1236058349'),
 ('59','gallery','gallery','2','placement asc','1','<p><strong>Commissions:</strong> I am available for a variety of different commissions including; fan-art, tattoos, wall murals, and requests. All fan-art is considered a parody and belongs to their respected owners. All works on my portfolio page are original.</p>','<p><strong>Print info:</strong> Prints are made on my Epson R1900 13x19 printer on high-quality matte paper. Buy two prints and get a \'mystery item\'! This could be a sketch or craft made especially for you!&nbsp;</p>','','Commissions','','','','1274854516'),
 ('60','checkout','interactive','0','placement asc','1','<p>This is the checkout page! Buy my artwork using your trusted Paypal account.</p>','<p>dfsfaddfas d fasd fassd fad fasd fasd fsasd fad fsa fda f f a</p>','<p>dfd ad fas sdfa sdfasd fasd fa sdfsd fsd fasd fasd fasd fasd fasd fasd fa sdfa</p>','Checkout','','','','1274980961');

-- --------------------------------------------------------

-- 
-- Dumping data for table `purplelan_users` 
-- 

INSERT INTO `purplelan_users` (`id`, `username`, `password`, `firstname`, `lastname`, `middlename`, `email`, `phone`, `date`, `role`, `mail`) VALUES ('2','pshorey','ms[-;r-m','paul','shorey','','pshorey@artspaces.net','2147483647','0','editor',''),
 ('3','visitor','demo','visitor','visitor','','visitor@purplelanternstudio.com','0','0','editor',''),
 ('6','paul','hawaii','paul','shorey','','pshorey@gmail.com','','','',''),
 ('7','rayna','lantern','rayna','sassano','','raynasas@gmail.com','','','editor','yes'),
 ('8','ps','43yj0cm1','','','','ps@artspaces.net','','','','');

-- --------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 1;

