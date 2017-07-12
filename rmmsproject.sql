-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2016 at 01:27 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rmmsproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_assets`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `bak_rmms_assets`
--

INSERT INTO `bak_rmms_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 95, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 10, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 11, 12, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 13, 14, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 15, 16, 1, 'com_config', 'com_config', '{}'),
(7, 1, 17, 20, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 21, 44, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 45, 46, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 47, 48, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 49, 50, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 51, 52, 1, 'com_login', 'com_login', '{}'),
(13, 1, 53, 54, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 55, 56, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 57, 58, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 59, 60, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 61, 62, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 63, 64, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 65, 68, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 69, 70, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 71, 72, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 73, 74, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 75, 76, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 77, 80, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 81, 84, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 85, 86, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 22, 39, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 18, 19, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 66, 67, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 82, 83, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 78, 79, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 87, 88, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 89, 90, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 27, 23, 24, 3, 'com_content.article.1', 'Regional Mixed Migration Summaries', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(36, 27, 25, 26, 3, 'com_content.article.2', 'First Page', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 27, 28, 3, 'com_content.article.3', 'Font Page', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 27, 29, 30, 3, 'com_content.article.4', 'First', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 27, 31, 32, 3, 'com_content.article.5', 'A Certain Catalyst', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(41, 8, 40, 43, 2, 'com_content.category.8', 'Cat1', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(42, 41, 41, 42, 3, 'com_content.article.6', 'TestArt', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 3, 6, 7, 2, 'com_banners.category.9', 'Banners', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 3, 8, 9, 2, 'com_banners.category.10', 'Banners2', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 27, 33, 34, 3, 'com_content.article.7', 'TestImage', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 27, 35, 36, 3, 'com_content.article.8', 'TestImage2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 1, 91, 94, 1, 'com_djimageslider', 'com_djimageslider', '{}'),
(50, 49, 92, 93, 2, 'com_djimageslider.category.11', 'FrontPage', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(51, 27, 37, 38, 3, 'com_content.article.9', 'Slider', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_associations`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_banners`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bak_rmms_banners`
--

INSERT INTO `bak_rmms_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `version`) VALUES
(1, 0, 0, 'Banner1', 'banner1', 0, 2, 0, '', -2, 9, '', '', 0, 0, '', '{"imageurl":"images\\/banners\\/shop-ad-books.jpg","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-02-26 05:31:39', '*', 0, '', '0000-00-00 00:00:00', 0, 1),
(2, 0, 0, 'Banner1', 'banner1', 0, 80, 0, '', 0, 10, '', '', 0, 1, '', '{"imageurl":"images\\/banners\\/shop-ad-books.jpg","width":1349,"height":123,"alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-02-26 05:42:08', '*', 0, '', '2016-02-27 06:32:53', 602, 9);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_categories`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bak_rmms_categories`
--

INSERT INTO `bak_rmms_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 23, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 602, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 602, '2011-01-01 00:00:01', 602, '2016-03-20 07:10:01', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 602, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 602, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 602, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 602, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 602, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 41, 1, 13, 14, 1, 'cat1', 'com_content', 'Cat1', 'cat1', '', '<p><img src="images/homepageslideshow/gallaries/poster1.jpg" alt="This is poster one image from the site" /></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 602, '2016-02-25 08:04:10', 602, '2016-02-25 08:04:42', 0, '*', 1),
(9, 43, 1, 15, 16, 1, 'banners', 'com_banners', 'Banners', 'banners', '', '<p>This test the banner</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/banners\\/shop-ad.jpg"}', '', '', '{"author":"","robots":""}', 602, '2016-02-26 05:30:22', 602, '2016-02-26 05:30:51', 0, '*', 1),
(10, 44, 1, 17, 18, 1, 'banner2', 'com_banners', 'Banners2', 'banner2', '', '<p>banner2</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/banners\\/shop-ad-books.jpg"}', '', '', '{"author":"","robots":""}', 602, '2016-02-26 05:39:47', 602, '2016-02-26 05:40:09', 0, '*', 1),
(11, 50, 1, 21, 22, 1, 'frontpage', 'com_djimageslider', 'FrontPage', 'frontpage', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 602, '2016-03-14 13:21:33', 602, '2016-03-14 13:23:06', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_contact_details`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_content`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bak_rmms_content`
--

INSERT INTO `bak_rmms_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 35, 'Regional Mixed Migration Summaries', 'regional-mixed-migration-summaries', '<p>The RMMS compiles a summary each month of all relevant movement with statistics, where known, as well as descriptions of political events and policy changes affecting mixed migration in the region. Monthly summaries are available from 2011.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<ul>\r\n<li><span style="color: #535353; font-family: ArialMT; font-size: large;"><span style="color: #535353; font-family: ArialMT; font-size: large;"><span style="color: #535353; font-family: ArialMT; font-size: large;"> </span></span></span><a href="http://regionalmms.org/fileadmin/content/monthly%20summaries/RMMS_Monthly_Summary_December_2015.pdf"><span style="text-decoration: underline;"><span style="color: #2e2e2e; font-family: ArialMT; font-size: large;"><span style="color: #2e2e2e; font-family: ArialMT; font-size: large;"><span style="color: #2e2e2e; font-family: ArialMT; font-size: large;">RMMS Monthly Summary December 2015</span></span></span></span></a></li>\r\n</ul>\r\n<p> </p>\r\n<p style="text-align: center;"><a href="http://regionalmms.org/indexd5e8.html?id=34"><strong><span style="color: #9d0017; font-family: ArialMT; font-size: medium;"><span style="color: #9d0017; font-family: ArialMT; font-size: medium;"><span style="color: #9d0017; font-family: ArialMT; font-size: medium;"><span style="text-decoration: underline;">View all Mixed Migration Monthly Summaries</span></span></span></span></strong></a></p>\r\n<p> </p>\r\n<p> </p>\r\n<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "User Menu" menu (visible once you login) or by adding /administrator to the end of your domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "Submit Article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Template and modules</h3>\r\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template options. In the administrator go to the Template Styles and click on My Default Template (Protostar). Most changes will be made on the Options tab.</p>\r\n<p>The boxes around the main content of the site are called modules. You can change the image at the top of the page by editing the Image Module module in the Module Manager.</p>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', 1, 2, '2011-01-01 10:01:00', 602, '', '2016-02-04 12:40:33', 602, 0, '0000-00-00 00:00:00', '2012-09-23 10:01:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"0","show_intro":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"0","show_article_options":"0","show_urls_images_backend":"","show_urls_images_frontend":""}', 28, 5, '', '', 1, 169, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 36, 'First Page', 'first-page', '<p>Regional Mixed Migration Summaries</p>\r\n<p>The RMMS....</p>', '', -2, 2, '2016-02-04 09:32:57', 602, '', '2016-02-04 11:09:51', 602, 0, '0000-00-00 00:00:00', '2016-02-04 09:32:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 37, 'Font Page', 'font-page', '<p><img src="images/lines/line.gif" width="2426" height="5" /></p>\r\n<h4>Regional Mixed Migration Monthly Summaries</h4>\r\n<hr />\r\n<p>The RMMS compiles a summary each month of all relevant movement with statistics, where known, as well as descriptions of political events and policy changes affecting mixed migration in the region. Monthly summaries are available from 2011</p>\r\n<ul>\r\n<li><a href="http://localhost/" target="_self">RMMS Monthly Summary December 2015</a></li>\r\n</ul>\r\n<hr />\r\n<p style="text-align: center;">View all Mixed Migration Monthly Summaries</p>\r\n<hr />\r\n<p><img src="images/lines/line.gif" width="2426" height="5" /></p>\r\n<h4> Trend Analysis</h4>\r\n<hr />\r\n<p>The RMMS tracks the latest trends in terms of political context, national policy and data that have an impact on mixed migration flows within and out of the region. This section offers quarterly trend analysis as well as end of year summaries.</p>\r\n<ul>\r\n<li><a href="images/line/line.gif" target="_self">Regional Mixed Migration 3rd Quarter Trend Analysis 2015</a></li>\r\n</ul>\r\n<hr />\r\n<p style="text-align: center;">View all Latest Trends Analyses</p>\r\n<hr />\r\n<p><img src="images/lines/line.gif" width="2426" height="5" /></p>\r\n<h4> Mediawatch</h4>\r\n<hr />\r\n<p>National, regional and international press cover different aspects of news relating to smuggling, trafficking, refugees and economic migrants in the region. This section offers a monthly review of all articles relevant to mixed migration in the news with easy links to the original presentation.</p>\r\n<ul>\r\n<li><a href="images/lines/line.gif" target="_self">Monthly Press Listing December 2015</a></li>\r\n</ul>\r\n<hr />\r\n<p style="text-align: center;">View all Mediawatch articles</p>\r\n<hr />\r\n<p><img src="images/lines/line.gif" width="2426" height="5" /></p>\r\n<h4> RMMS Research Initiatives</h4>\r\n<hr />\r\n<p>Research is one of the central pillars of the work of RMMS. This section lists the current and anticipated areas of research as well as past publications. RMMS research projects are also reported under the Publications section of this website.</p>\r\n<ul>\r\n<li><a href="images/lines/line.gif" target="_self">A Certain Catalyst: an overview of the (mixed) migration and development debate with special focus on the Horn of Africa region: Extended Summary  (Printed November 2015/ 36 pages)</a></li>\r\n</ul>\r\n<hr />\r\n<p style="text-align: center;">View all RMMS Research Initiatives</p>\r\n<hr />\r\n<p><img src="images/lines/line.gif" width="2426" height="5" /></p>\r\n<h4> Featured Articles</h4>\r\n<hr />\r\n<p>As part of its analysis and advocacy work the RMMS regularly offers featured articles on important contemporary mixed migration issues. This section presents the archives of past and present articles relating to mixed migration in the region and beyond.</p>\r\n<ul>\r\n<li><a href="images/lines/line.gif" target="_self">Smuggling of migrants and refugees: a multi-million dollar industry</a></li>\r\n<li><a href="images/lines/line.gif" target="_self">A Certain Catalyst: towards the link between migration and development</a></li>\r\n<li><a href="images/lines/line.gif" target="_self">Refocusing on Yemen: the Regional Refugee and Migration Response Plan</a></li>\r\n</ul>\r\n<hr />\r\n<p style="text-align: center;">View all Featured Articles</p>\r\n<hr />\r\n<p><img src="images/lines/line.gif" width="2426" height="5" /></p>\r\n<h4> Film &amp; Documentaries</h4>\r\n<hr />\r\n<p>Any film record, news clip or documentary relating to mixed migration relevant to the Horn of Africa and Yemen region is listed in this section, offering the viewer an archive listing (with links) of past and present films.</p>\r\n<ul>\r\n<li><a href="https://www.youtube.com/watch?v=XWrGSndkf6U" target="_blank" title="Libya''s Migrant Trade">Libya''s Migrant Trade: Europe or Die (September 2015).</a> A gripping piece on the commodification of migrants and refugees in Libya. Held by militia groups in desert prisons, the migrants and refugees are used as pawn in the fighters'' quest for power.</li>\r\n<li><a href="https://www.youtube.com/watch?v=ZbjRujnxK0Y" target="_blank" title="People Smuggler">People Smuggler: World''s Most Wanted (July 2015).</a> Sky News travels follows the key human trafficking routes through Libya and onto the Mediterranean Sea, meeting the migrants willing to risk everything in search of a better life.</li>\r\n<li><a href="http://video.aljazeera.com/channels/eng/videos/yemen-refugees-flock-to-overcrowded-camps-in-djibouti/4252982197001" target="_blank" title="Yemen refugees">Yemen refugees flock to overcrowded camps in Djibouti (May 2015).</a> Al Jazeera interviews refugees who fled Yemen to Djibouti, finding conditions they describe as ''unbearable''</li>\r\n<li><a href="https://www.youtube.com/watch?v=1AAc23OO-wM" target="_blank" title="Ethiopian migrants">Ethiopian migrants drawn to dangerous journey despite risks (April 2015).</a> In this Al Jazeera news feature, it looks at the dangers faced by Ethiopian migrants across Libya on their way to the Mediterranean Sea including the recent attack by ISIL fighters.</li>\r\n<li><a href="https://news.vice.com/video/escaping-hell-libyas-migrant-jails-part-3" target="_blank" title="Escaping Hell">Escaping Hell: Libya''s migrant jails (March 2015).</a> In the final part of the series, VICE News speaks with a survivor of the journey to Europe across the Mediterranean Sea. </li>\r\n</ul>\r\n<p style="text-align: left;">View all Films &amp; Documentaries</p>\r\n<p><img src="images/lines/line.gif" width="2426" height="5" /></p>\r\n<h4>Statistics at a Glance</h4>\r\n<table class="MsoNormalTable" style="margin: auto auto auto -6.05pt; border: currentColor; border-collapse: collapse; mso-table-layout-alt: fixed; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;" width="767" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes;">\r\n<td style="background: #9d0017; padding: 0cm 5.4pt; border: 1.5pt solid #d9d9d9; width: 554pt;" colspan="5" valign="top" width="739">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: white; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">New Arrivals along Yemen’s coast*</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Red Sea and the Gulf of Aden</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Total arrival in 2014</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">91,592</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Total arrival in 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">92,446</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 2;">\r\n<td style="background: #9d0017; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 554pt; mso-border-top-alt: solid #D9D9D9 1.5pt;" colspan="5" valign="top" width="739">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: white; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Yemen Displacements</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 3;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Arrivals in the Horn of Africa (Djibouti, Ethiopia, Sudan and Somalia (Somaliland, Puntland and South Central))</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Total refugees, asylum seekers and migrants as at 31 December 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">78, 983</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">IDPs as at 31 December 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">2,509,068</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 4;">\r\n<td style="background: #9d0017; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 554pt;" colspan="5" valign="top" width="739">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: white; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Refugees and asylum seekers in Kenya**</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 5;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Somali</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Nairobi Population as at 15 December 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">33,842</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Total population in Kenya as of</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">15 December </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">419,342</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 6;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Ethiopian</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Nairobi population as at 15 December 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">8,642</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Total population in Kenya as of 15 December 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> 30,660</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 7;">\r\n<td style="background: #9d0017; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 554pt;" colspan="5" valign="top" width="739">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: white; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Refugees in Djibouti</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 8;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Somali</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Ethiopian</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">March 2015</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">March 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">19,782</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">3,275</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Total population in Djibouti as of March</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">2015 </span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">24,362</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 9;">\r\n<td style="background: #9d0017; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 554pt;" colspan="5" valign="top" width="739">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: white; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Refugees in Ethiopia</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 10;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Somali</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Ethiopian</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">December 2015</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">December 2015</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">251,797</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;"> </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">282,033</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Total population in Djibouti as of December</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">2015 </span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">733,644</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 11;">\r\n<td style="background: #9d0017; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 554pt; mso-border-top-alt: solid #D9D9D9 1.5pt;" colspan="5" valign="top" width="739">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: white; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">IDPs in Somalia***</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 12;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''ArialMT'',''serif''; font-size: 12pt; mso-bidi-font-family: ArialMT;"> </span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Displaced</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">-</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">Estimated total</span></p>\r\n</td>\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt 0px; border-style: none solid solid none; border-color: #000000 #d9d9d9 #d9d9d9 #000000; padding: 0cm 5.4pt; width: 94pt;" valign="top" width="125">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">1,106,000</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 13; mso-yfti-lastrow: yes;">\r\n<td style="background: white; border-width: 0px 1.5pt 1.5pt; border-style: none solid solid; border-color: #000000 #d9d9d9 #d9d9d9; padding: 0cm 5.4pt; width: 554pt;" colspan="5" valign="top" width="739">\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">*Source <a href="http://www.unhcr.org/569e3b19530.html"><span style="color: #2e2e2e;"><span style="text-decoration: underline;">UNHCR</span></span></a>. Arrival figures are between the months of January and December 2015. An analysis of arrival data reveals a shift in landing sites in Yemen, with majority (85%) of arrivals in 2015 being recorded on Arabian Sea shores. Since the outbreak of conflict in Yemen on 23rd March 2015, some of the intense conflict has been registered along the Red Sea coast which may give some insight into the declining number of arrivals on that route. </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">**Source <a href="http://reliefweb.int/sites/reliefweb.int/files/resources/KenyaFactsheet-November2015.pdf"><span style="color: #2e2e2e;"><span style="text-decoration: underline;">UNHCR</span></span></a> . As at 15 December 2015, there were officially 62,892 refugees and asylum seekers in Nairobi (including Somali, Sudanese, South Sudanese, Ethiopia, Eritrean, Ugandan, Rwandan, Burundian and Congolese nationals). Unofficially the figure is estimated to be much higher.</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: normal; mso-layout-grid-align: none;"><span style="color: #585858; font-family: ''Times-Roman'',''serif''; font-size: 12pt; mso-bidi-font-family: Times-Roman;">***Source  <a href="http://reliefweb.int/sites/reliefweb.int/files/resources/Factsheet_SOMALIA_November-December_2015%5B1%5D.pdf"><span style="color: #2e2e2e;"><span style="text-decoration: underline;">UNHCR</span></span></a>. As at December 2015, it is estimated that over 1.1 million persons were displaced in Somalia (Somaliland, Puntland and South Central Somalia). </span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span><span style="color: #000000; font-family: ''Times New Roman''; font-size: medium;"> </span></span></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', '', 1, 2, '2016-02-04 12:40:08', 602, '', '2016-03-17 12:38:56', 602, 0, '0000-00-00 00:00:00', '2016-02-04 12:40:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 46, 4, '', '', 1, 2260, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 38, 'First', 'first', '', '', 1, 2, '2016-02-04 12:42:03', 602, '', '2016-03-20 06:39:24', 602, 0, '0000-00-00 00:00:00', '2016-02-04 12:42:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 3, '', '', 1, 234, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 39, 'A Certain Catalyst', 'a-certain-catalyst', '<p> <img src="images/homepageslideshow/gallery/Syrian.jpg" alt="Pragmatism versus principle: the ''Dutch Plan''" width="620" height="413" /></p>\r\n<p><span style="line-height: 1.3em;">The controversial debate around migration and development has been gaining momentum in contemporary debates on global affairs in a time sometimes referred to as the ‘age of mobility’. The World Bank estimates that as of 2013, there were 247 million international migrants representing about 3% of total world population. This figure is expected to increase in the future as complex push and pull factors continue to drive migration across the world. This figure also does not include most irregular migrants who move clandestinely and once in their country of destination often remain for years under the radar and work in the informal sectors or as unofficial workers.</span></p>\r\n<p> </p>\r\n<p>More than 1 million refugees and migrants are reported to have entered Europe in 2015 alone and an additional three million are expected by end of 2016. According to UNHCR, 90% of all arrivals to Europe via Mediterranean in 2015 are from the top ten refugee producing countries in the world, raising the question as to whether this is a refugee or migration crisis for Europe and even whether it is a crisis at all when over 86% of the world’s refugees are already hosted in countries in developing regions.</p>\r\n<p> </p>\r\n<p>The issue of migration raises temperatures on all sides of the debate - there are few subject that are as politically sensitive or as taboo. Most mainstream parties tread very carefully around migration policy and in the process often avoid taking clear positions on issues that are of considerable concern to their constituents.</p>\r\n<p> </p>\r\n<p>Media coverage and commentary on migrants’ and refugees’ journeys often generate compassion and sympathy, especially when tragic events occur. At the same time, reporting has had the potential to stir up, evoking anti-migrant sentiments, antipathy and/or fear, obscuring facts and often denying the public and policy makers opportunity to debate migration and development from an informed perspective.</p>\r\n<p> </p>\r\n<p>The United Nations stated in a press release during the International Migrants Day in December 2015. “This new era has […] served to underscore the clear linkage between migration and development, as well as the opportunities it provides for co-development, that is, the concerted improvement of economic and social conditions at both origin and destination”</p>\r\n<p> </p>\r\n<p>Echoing this sentiment, the latest research study by the Regional Mixed Migration Secretariat (RMMS), A Certain Catalyst, seeks to bring balance to the great migration debate by addressing various myths associated with migration and highlighting ways in which migration could or actually does contribute to development. RMMS considers that full public discussion of the central issues is necessary to stimulate forward thinking and rational policy engagement in relation to the migration discourse.</p>\r\n<p> </p>\r\n<p>The report, which also explores the specific linkages between migration and development in the Horn of Africa and Yemen region, examines issues such as diaspora engagement, remittances, labour migration, free movement and refugee economies.</p>\r\n<p> </p>\r\n<p>Even though the relationship between migration and development is not a linear or a causal one, there has been increased global focus in this area. In the recently adopted Sustainable Development Goals (SDGs), the UN recognizes the positive role of migration in lifting people out of poverty and reducing inequalities within and among countries and aims to facilitate orderly, safe, regular and responsible migration and mobility of people, including through the implementation of planned and well managed migration policies.</p>\r\n<p> </p>\r\n<p>Migration and development also features prominently in EU’s engagement and cooperation with Africa at continental, regional and bilateral levels. The Valletta Summit on Migration held in November 2015 and the consequent launch of €1.8 billion Emergency Trust Fund for Africa, adoption of a political declaration and a joint action plan is aimed, among other objectives, at maximising the development benefits of migration, better organizing legal channels for migration and mobility and addressing root causes of irregular migration.</p>', '', 1, 2, '2016-02-24 13:41:04', 602, '', '2016-03-22 12:20:34', 602, 0, '0000-00-00 00:00:00', '2016-02-24 13:41:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"Pragmatism versus principle: the Dutch plan..","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":"Pragmatism versus principle: the Dutch plan.."}', '{"urla":null,"urlatext":"","targeta":"1","urlb":null,"urlbtext":"","targetb":"1","urlc":null,"urlctext":"","targetc":"1"}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"0","show_article_options":"0","show_urls_images_backend":"0","show_urls_images_frontend":"0"}', 33, 2, '', '', 1, 153, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', '');
INSERT INTO `bak_rmms_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(6, 42, 'TestArt', 'testart', '<p><img src="images/homepageslideshow/galleries/poster1.jpg" alt="Thsis is the n" width="552" height="394" /></p>', '', -2, 8, '2016-02-25 08:06:15', 602, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2016-02-25 08:06:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 45, 'TestImage', 'testimage', '<p><span style="line-height: 1.3em;">Theos dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp d</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span><span style="line-height: 1.3em;">dis yksjs wjjf sldskd idf dfjs dhjs dfsjfskp kfo of sjdosjf s[ fjodjf lsdp skfk ijhi fugf dsauhdua skdpsdpsd sdksp</span></p>', '', 1, 2, '2016-02-27 14:13:52', 602, '', '2016-03-14 08:11:52', 602, 0, '0000-00-00 00:00:00', '2016-02-27 14:13:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 1, '', '', 1, 164, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(8, 48, 'TestImage2', 'testimage2', '<p>fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf<span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span></p>\r\n<p><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;">fefefe fv dv vidj  ijdfiehjf iefie jenfueh f eife fiefn iejf</span><span style="line-height: 1.3em;"> </span></p>', '', -2, 2, '2016-03-14 08:25:23', 602, '', '2016-03-14 08:25:29', 602, 0, '0000-00-00 00:00:00', '2016-03-14 08:25:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 51, 'Slider', 'slider', '<p>http://www.regionalmms.org</p>\r\n<p>&lt;a class="external-link-new-window" target="_blank" title="Opend external link in new window" href="http://www.euronews.com"&gt; IMF proposes&lt;/a&gt;</p>', '', -2, 2, '2016-03-16 06:48:42', 602, '', '2016-03-16 06:48:48', 602, 0, '0000-00-00 00:00:00', '2016-03-16 06:48:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_rmms_content_frontpage`
--

INSERT INTO `bak_rmms_content_frontpage` (`content_id`, `ordering`) VALUES
(5, 2),
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_content_rating`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_djimageslider`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_djimageslider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_rmms_djimageslider`
--

INSERT INTO `bak_rmms_djimageslider` (`id`, `catid`, `title`, `alias`, `image`, `description`, `published`, `publish_up`, `publish_down`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(1, 11, 'TestImage2', 'testimage2', 'images/homepageslideshow/gallery/Syrian.jpg', '<p>Pragmatism versus principle: the ''Dutch Plan'' as the new EU migration response?</p>', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '{"link_type":"article","link_menu":"435","link_url":"","link_article":"7","link_target":""}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10023 ;

--
-- Dumping data for table `bak_rmms_extensions`
--

INSERT INTO `bak_rmms_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"target":"1","count_clicks":"1","icons":1,"link_icons":"","float_first":"right","float_second":"right","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_num_links":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_links_cat":"1","show_pagination_limit":"1","show_headings":"0","show_link_description":"1","show_link_hits":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"1","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"1","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"0","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2012, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2.1","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"12.2","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"3.0.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `bak_rmms_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.0.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Lof ArticlesSlideShow Module', 'module', 'mod_lofarticlesslideshow', '', 0, 1, 0, 0, '{"name":"Lof ArticlesSlideShow Module","type":"module","creationDate":"Jan 2012","author":"LandOfCoder","copyright":"GNU \\/ GPL2 http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html","authorEmail":"landofcoder@gmail.com","authorUrl":"http:\\/\\/www.landofcoder.com","version":"3.0","description":"\\n    <div style=\\"font-size:11px;\\">\\n      <i>\\n      The ArticleSlideshow Module is as best choice and \\n      the most eye-catching way to display featured  articles on in a rich\\n      slideshow, usually put in the head position of the main site. \\n      The module supports flexible showing content\\n      of each slider and easy to fit your website with one of themes, \\n      skins.\\n      <\\/i>\\n      <p><img src=\\"..\\/modules\\/mod_lofarticlesslideshow\\/assets\\/lof-articleslideshow.png\\" style=\\"width:100%\\"><h4>Module Information:<\\/h4><ul><li><a href=''http:\\/\\/landofcoder.com\\/joomla\\/f33\\/lof-articlesslideshow-module'' target=''_blank''>+ Detail<\\/a><\\/li>\\n      <li><a href=''http:\\/\\/landofcoder.com\\/forum\\/supports.html'' target=''_blank''>+ Forum Support<\\/a><\\/li><li><a href=\\"http:\\/\\/landofcoder.com\\/submit-request.html\\" target=''_blank''>+ Email Request<\\/a><\\/li>\\n      <\\/ul><\\/p><br><div>@Copyright: <a href=''http:\\/\\/landofcoder.com'' target=''_blank''>LandOfCoder.com<\\/a><\\/div><\\/div>\\n  ","group":""}', '{"moduleclass_sfx":"","theme":"","enable_css3":"1","limit_description_by":"char","title_max_chars":"100","description_max_chars":"100","replacer":"...","module_height":"auto","module_width":"auto","preload":"1","start_item":"0","main_height":"300","main_width":"650","slider_information":"1","enable_image_link":"0","enable_playstop":"1","display_button":"1","desc_opacity":"1","enable_blockdescription":"1","override_links":"","custom_slider_class":"","navigator_pos":"right","navitem_height":"100","navitem_width":"310","max_items_display":"3","thumbnail_width":"60","thumbnail_height":"60","enable_thumbnail":"1","enable_navtitle":"1","enable_navdate":"1","enable_navcate":"0","source":"category","article_ids":"","category":"0","user_id":"0","show_featured":"","ordering":"created-asc","limit_items":"5","layout_style":"vrdown","interval":"5000","duration":"500","effect":"Fx.Transitions.Quad.easeInOut","auto_start":"1","enable_cache":"0","cache_time":"30","auto_renderthumb":"1","auto_strip_tags":"1","open_target":"parent"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'com_djimageslider', 'component', 'com_djimageslider', '', 1, 1, 0, 0, '{"name":"com_djimageslider","type":"component","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.1.0","description":"DJ-ImageSlider component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'DJ-ImageSlider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"name":"DJ-ImageSlider","type":"module","creationDate":"May 2015","author":"DJ-Extensions.com","copyright":"Copyright (C) 2013 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.1.0","description":"DJ-ImageSlider Module","group":""}', '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"0","limit_desc":"","full_width":"0","image_width":"240","image_height":"180","fit_to":"0","image_centering":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"40","arrows_horizontal":"10","idx_style":"0","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'dj-imageslider', 'package', 'pkg_dj-imageslider', '', 0, 1, 1, 0, '{"name":"DJ-ImageSlider Package","type":"package","creationDate":"August 2012","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"3.1.0","description":"\\n\\t\\t<style type=\\"text\\/css\\">\\n\\t\\t\\t.djex-info { padding: 20px 30px 10px; margin: 0 0 20px 0; background: #ac00d4; color: #fff; border: 1px solid #81009f; font-family: Arial, Helvetica, sans-serif; font-size: 13px; font-weight: normal; -webkit-border-radius: 4px; border-radius: 4px; }\\n\\t\\t\\t.djex-title { text-transform: uppercase; font-weight: bold; font-size: 14px; }\\n\\t\\t\\t.djex-info a:link, .djex-info a:visited, .djex-info a:hover { color:#fff; text-decoration:underline; font-weight: 600; }\\t\\n\\t\\t\\t.djex-info img { float: left; margin: 0 30px 10px 0; }\\n\\t\\t<\\/style>\\n\\t\\t<div class=\\"djex-info\\">\\n\\t\\t\\t<a href=\\"index.php?option=com_djimageslider\\"><img src=\\"components\\/com_djimageslider\\/assets\\/ex_slider.png\\" \\/><\\/a>\\n\\t\\t\\t<p class=\\"djex-title\\">Thank you for installing DJ-ImageSlider!<\\/p>\\n\\t\\t\\t<p>The DJ-ImageSlider extension allows you to display slideshows containing slides with title and short description linked to any menu item, article or custom url address. \\n\\t\\t\\tIf you want to learn how to use DJ-ImageSlider please read <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/documentation\\">Documentation<\\/a> and <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\/faq\\">FAQ section<\\/a><\\/p>\\n\\t\\t\\t<p>Check out our other extensions at <a target=\\"_blank\\" href=\\"http:\\/\\/dj-extensions.com\\">DJ-Extensions.com<\\/a><\\/p>\\n\\t\\t\\t<div style=\\"clear:both\\"><\\/div>\\n\\t\\t<\\/div>\\n\\t\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'Helix3 - Ajax', 'plugin', 'helix3', 'ajax', 0, 1, 1, 0, '{"name":"Helix3 - Ajax","type":"plugin","creationDate":"Jan 2015","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.2","description":"Helix3 Framework - Joomla Template Framework by JoomShaper","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'System - Helix3 Framework', 'plugin', 'helix3', 'system', 0, 1, 1, 0, '{"name":"System - Helix3 Framework","type":"plugin","creationDate":"Jan 2015","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.2","description":"Helix3 Framework - Joomla Template Framework by JoomShaper","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'Playlist CK', 'module', 'mod_playlistck', '', 0, 1, 0, 0, '{"name":"Playlist CK","type":"module","creationDate":"Decembre 2013","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"1.1.4","description":"MOD_PLAYLISTCK_XML_DESCRIPTION","group":""}', '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_playlistck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This playlist uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_playlistck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq|This is a Video slide linked to Vimeo|qq|,|qq|imgtitle|qq|:|qq|Video example|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_playlistck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides2\\/shelter.jpg|qq|,|qq|imgcaption|qq|:|qq|Imagine that you are on holidays|qq|,|qq|imgtitle|qq|:|qq|Nice landscape|qq|,|qq|imgthumb|qq|:|qq|..\\/modules\\/mod_playlistck\\/images\\/slides2\\/shelter.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgalignment|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","theme":"elegant","skin":"playlistck_white_skin","loader":"pie","width":"auto","height":"62%","thumbscontwidth":"35%","thumbsposition":"right","navigation":"2","showthumbnails":"imagetext","thumbscaptionwidth":"50%","thumbnailtext":"titledesc","thumbnailtextdesclength":"50","thumbnailwidth":"50%","thumbnailheight":"100%","thumbnailzoom":"120%","effect":"random","time":"7000","transperiod":"1500","captioneffect":"random","autoAdvance":"1","hover":"1","displayorder":"normal","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'Fade in fade out my text', 'module', 'mod_fade_in_fade_out_my_text', '', 0, 1, 0, 0, '{"name":"Fade in fade out my text","type":"module","creationDate":"January 2013","author":"Gopi.R","copyright":"(C) 2010 - 2013 www.gopiplus.com, LLC. All rights reserved.","authorEmail":"gopiplus@gmail.com","authorUrl":"http:\\/\\/www.gopiplus.com\\/extensions\\/2011\\/09\\/fade-in-fade-out-text-joomla-module\\/","version":"3.0","description":"Fade in fade out my text","group":""}', '{"fifotext_title_1":"Fade in fade out my text","fifotext_link_1":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_2":"Fade in fade out my text","fifotext_link_2":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_3":"Fade in fade out my text","fifotext_link_3":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_4":"Fade in fade out my text","fifotext_link_4":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_5":"Fade in fade out my text","fifotext_link_5":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_6":"Fade in fade out my text","fifotext_link_6":"http:\\/\\/www.gopiplus.com\\/extensions\\/","@spacer":"","fifotext_prefix":"Fadein : ","fifotext_fadein":"0","fifotext_fade":"0","fifotext_fadestep":"3","fifotext_fadewait":"3000"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Tabs GK5', 'module', 'mod_tabs_gk5', '', 0, 1, 0, 0, '{"name":"Tabs GK5","type":"module","creationDate":"30\\/06\\/2015","author":"GavickPro","copyright":"Copyright (C) 2011-2015 GavickPro. All rights reserved.","authorEmail":"info@gavick.com","authorUrl":"www.gavickpro.com","version":"1.7.4","description":"\\n\\t\\t<style type=\\"text\\/css\\">\\n\\t\\t\\tspan.readonly { padding: 10px; font-family: Arial; font-size:13px !important; font-weight: normal !important; text-align: justify; color: #4d4d4d; line-height: 24px; }\\n\\t\\t\\tspan.readonly h1 { clear:both; font-family: Georgia, sans-serif; font-size:38px; margin:30px 20px 23px; padding:0px 0px 24px 10px; color:#333; border-bottom: 1px solid #eee; font-weight: normal; }\\n\\t\\t\\tspan.tooltip-content { display: none; }\\n\\t\\t\\t.tip-text span.readonly { display: none; }\\n\\t\\t\\t.tip-text span.tooltip-content { display: block; }\\n\\t\\t\\tspan.readonly p { margin: 0 26px 10px }\\n\\t\\t\\tspan.readonly p a { color: #2F4C6D }\\n\\t\\t\\tspan.readonly p.homepage { margin-top: 30px }\\n\\t\\t\\tspan.readonly p.license { border-top: 1px solid #eee; font-size: 11px; margin: 30px 26px 0; padding: 6px 0; }\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t\\t<span class=\\"readonly\\"><h1>Tabs GK5<small>ver. 1.7.4<\\/small><\\/h1><p>GK5 is one product of the next generation of GavickPro extensions designed exclusively for Joomla 2.5+.<\\/p><p>With the Tabs GK5 module, you can implement space-saving tabs on websites and incorporate a variety of content types via modules or user-defined custom HTML code.  Thanks to the tab management system we''ve integrated into the module, Tabs GK5 remains easy, intuitive and quick to configure.  With built-in support for external data sources, the possibilities for implementing this new release are unlimited!<\\/p> <p class=''homepage''><a href=''https:\\/\\/www.gavick.com\\/best-free-joomla-tab-module.html'' target=''_blank''>Learn more at the Tabs GK5 project website.<\\/a><\\/p><p class=''license''>Tabs GK5 is released under the <a target=\\"_blank\\" href=\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\">GNU\\/GPL v2 license.<\\/a><\\/p><\\/span>\\n\\t\\t<span class=''tooltip-content''>Advanced tabs module for Joomla! 3.x<\\/span>\\n\\t","group":""}', '{"automatic_module_id":"1","module_id":"gk-tab-1","moduleclass_sfx":"","module_data_source":"tabsmanager","external_source":"","styleCSS":"style1","module_auto_height":"1","module_height":"200","tabs_position":"top","tabs_pre_text":"","tabs_width":"200","tabs_spans":"0","buttons":"1","activator":"click","mobile_swipe":"0","animation":"1","animation_interval":"5000","animation_type":"opacity","initial_tab":"1","url_tab_selection":"1","cookie_tab_selection":"0","parse_plugins":"1","module_wrap":"0","useCSS":"1","useScript":"1","engine_mode":"mootools","include_jquery":"0","rtl":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'Left right image slideshow', 'module', 'mod_left_right_image_slideshow', '', 0, 1, 0, 0, '{"name":"Left right image slideshow","type":"module","creationDate":"December 2012","author":"Gopi.R","copyright":"(C) 2010 - 2013 www.gopiplus.com, LLC. All rights reserved.","authorEmail":"gopiplus@gmail.com","authorUrl":"http:\\/\\/www.gopiplus.com\\/extensions\\/2011\\/07\\/left-right-image-slideshow-joomla-module\\/","version":"3.0","description":"Left right image slideshow","group":""}', '{"slideshow_jquery":"YES","slideshow_type":"jpg","slideshow_folder":"modules\\/mod_left_right_image_slideshow\\/images","slideshow_link":"http:\\/\\/www.gopiplus.com\\/","slideshow_width":"110","slideshow_height":"85","slideshow_pause":"3000","slideshow_cycles":"5","slideshow_persist":"true","slideshow_slideduration":"3000"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'Footer Menu', 'module', 'mod_footermenu', '', 0, 1, 0, 0, '{"name":"Footer Menu","type":"module","creationDate":"January 2015","author":"KMO Design","copyright":"Copyright (C) 2013-2014 KMO Design Pty Ltd. All rights reserved.","authorEmail":"support@kmo.com.au","authorUrl":"www.kmo.com.au","version":"1.0.1","description":"MOD_FOOTERMENU_XML_DESCRIPTION","group":""}', '{"startLevel":"1","endLevel":"0","showAllChildren":"0","use_default_stylesheet":"0","columns":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'Slideshow Pro SP2', 'module', 'mod_slideshow_pro_sp2', '', 0, 1, 0, 0, '{"name":"Slideshow Pro SP2","type":"module","creationDate":"Oct 2010","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2013 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.5.0","description":"SlideShow Pro SP2","group":""}', '{"moduleclass_sfx":"","width":"320","height":"200","content_source":"joomla","catid":"","k2catids":"all","ordering":"a.title","ordering_direction":"ASC","user_id":"0","show_featured":"","max_article":"3","showtitle":"1","titlelinked":"0","showdate":"1","showarticle":"1","showimage":"1","imagelinked":"1","showmore":"1","moretext":"Read More...","titleas":"1","titlelimit":"20","desclimitas":"2","desclimit":"30","thumbratio":"1","thumbwidth":"50","thumbheight":"50","layout":"default","effects":"cover-horizontal-fade","interval":"5000","speed":"1000","transition":"Sine.easeOut","showarrows":"1","itemwidth":"160","itemheight":"160","maxitem":"3","showthumb":"1","mouse_wheel":"1","show_c_title":"1","c_titleas":"0","c_titlelimit":"20","show_c_desc":"1","c_desclimitas":"1","c_desclimit":"30","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_rmms_finder_taxonomy`
--

INSERT INTO `bak_rmms_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_rmms_finder_terms_common`
--

INSERT INTO `bak_rmms_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_finder_types`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_languages`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_rmms_languages`
--

INSERT INTO `bak_rmms_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_menu`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=469 ;

--
-- Dumping data for table `bak_rmms_menu`
--

INSERT INTO `bak_rmms_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 229, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 5, 14, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 6, 7, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 8, 9, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 10, 11, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 12, 13, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 15, 20, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 16, 17, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 18, 19, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 21, 26, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 22, 23, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 24, 25, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 27, 32, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 28, 29, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 30, 31, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 45, 46, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 35, 36, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 39, 44, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 40, 41, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 42, 43, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(201, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 215, 216, 0, '*', 0),
(207, 'top', 'Joomla.org', 'joomlaorg', '', 'joomlaorg', 'http://joomla.org', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 213, 214, 0, '*', 0),
(435, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"menulayout":"","megamenu":"0","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"#000000","page_title_bg_image":""}', 1, 4, 1, '*', 0),
(448, 'usermenu', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 221, 222, 0, '*', 0),
(449, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 217, 218, 0, '*', 0),
(450, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 219, 220, 0, '*', 0),
(464, 'top', 'Home', 'home', '', 'home', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 207, 208, 0, '*', 0),
(465, 'main', 'COM_DJIMAGESLIDER', 'com-djimageslider', '', 'com-djimageslider', 'index.php?option=com_djimageslider', 'component', 0, 1, 1, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-djimageslider.png', 0, '', 223, 228, 0, '', 1),
(466, 'main', 'COM_DJIMAGESLIDER_SLIDES', 'com-djimageslider-slides', '', 'com-djimageslider/com-djimageslider-slides', 'index.php?option=com_djimageslider&view=items', 'component', 0, 465, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_djimageslider/assets/icon-16-menu-slides.png', 0, '', 224, 225, 0, '', 1),
(467, 'main', 'COM_DJIMAGESLIDER_CATEGORIES', 'com-djimageslider-categories', '', 'com-djimageslider/com-djimageslider-categories', 'index.php?option=com_categories&extension=com_djimageslider', 'component', 0, 465, 2, 10006, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '', 226, 227, 0, '', 1),
(468, 'mainmenu', 'Dummy', 'http-localhost', '', 'homepage/http-localhost', 'index.php?Itemid=', 'alias', -2, 435, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"dropdown_position":"right","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"#000000","page_title_bg_image":""}', 2, 3, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_menu_types`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bak_rmms_menu_types`
--

INSERT INTO `bak_rmms_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_messages`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_modules`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `bak_rmms_modules`
--

INSERT INTO `bak_rmms_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 'My Recently Added Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 2, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"by_me","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 2, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(9, 'Quick Links', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 2, 1, '{"context":"mod_quickicon","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","automatic_title":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 2, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 2, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 2, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 2, 1, '', 1, '*'),
(16, 'Login Form', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"System-table"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(19, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(27, 'Archived Articles', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Latest Article', '', '', 1, 'position-3', 602, '2016-03-20 09:54:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_articles_latest', 1, 1, '{"catid":[""],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"System-table"}', 0, '*'),
(29, 'Articles Most Read', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"catid":["26","29"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Feed Display', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'News Flash', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Random Image', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 0, '{"type":"jpg","folder":"images\\/headers","link":"","width":"","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(34, 'Articles Related Items', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Search', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 'Statistics', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 'Users Latest', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Who''s Online', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_whosonline', 1, 1, '{"showmode":"2","layout":"_:default","moduleclass_sfx":"","cache":"0","filter_groups":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(40, 'Wrapper', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 'Footer', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(48, 'Image Module', '', '<p><img src="images/headers/blue-flower.jpg" alt="Blue Flower" /></p>', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"5","header_tag":"h3","header_class":"","style":"System-table"}', 0, '*'),
(49, 'Weblinks', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Breadcrumbs', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(56, 'Banners', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"0","catid":[""],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"System-rounded"}', 0, '*'),
(61, 'Articles Categories', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(62, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(64, 'Language Switcher', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(69, 'Articles Category', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":[""],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(84, 'Smart Search Module', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 2, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Lof ArticlesSlideShow Module', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_lofarticlesslideshow', 1, 1, '{"moduleclass_sfx":"","theme":"red","enable_css3":"1","limit_description_by":"char","title_max_chars":"100","description_max_chars":"100","replacer":"...","module_height":"auto","module_width":"auto","preload":"1","start_item":"0","main_height":"349","main_width":"620","slider_information":"description","enable_image_link":"1","enable_playstop":"0","display_button":"0","desc_opacity":"1","enable_blockdescription":"1","navigator_pos":"right","navitem_height":"105","navitem_width":"251","max_items_display":"3","thumbnail_width":"60%","thumbnail_height":"60%","enable_thumbnail":"1","enable_navtitle":"1","enable_navdate":"0","enable_navcate":"0","source":"article_ids","article_ids":"","category":["0"],"user_id":"0","show_featured":"2","ordering":"created-asc","limit_items":"5","layout_style":"vrdown","interval":"5000","duration":"500","effect":"Fx.Transitions.Quad.easeInOut","auto_start":"1","enable_cache":"0","cache_time":"30","auto_renderthumb":"1","auto_strip_tags":"1","open_target":"parent","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 'DJ-ImageSlider', '', '', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djimageslider', 1, 0, '{"slider_source":"0","slider_type":"0","theme":"default","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","category":"11","show_title":"1","show_desc":"1","show_readmore":"0","readmore_text":"","link_title":"1","link_desc":"1","limit_desc":"","full_width":"1","image_width":"480px","image_height":"360px","fit_to":"0","image_centering":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","css3":"1","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","wcag":"1","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"70","arrows_horizontal":"10","idx_style":"1","effect":"Expo","effect_type":"0","duration":"","delay":"","preload":"800","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"System-none"}', 0, '*'),
(94, 'Playlist CK', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_playlistck', 1, 0, '{"slidesssource":"slidesmanager","slides":"[{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imgcaption|qq|:|qq|This bridge is very long|qq|,|qq|imgtitle|qq|:|qq|This is a bridge|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/modules\\/mod_playlistck\\/images\\/slides\\/bridge.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides\\/road.jpg|qq|,|qq|imgcaption|qq|:|qq|This playlist uses a JQuery script adapted from <a href=|dq|http:\\/\\/www.pixedelic.com\\/plugins\\/camera\\/|dq|>Pixedelic<\\/a>|qq|,|qq|imgtitle|qq|:|qq|On the road again|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/modules\\/mod_playlistck\\/images\\/slides\\/road.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imgcaption|qq|:|qq|This is a Video slide linked to Vimeo|qq|,|qq|imgtitle|qq|:|qq|Video example|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/modules\\/mod_playlistck\\/images\\/slides\\/big_bunny_fake.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|_parent|qq|,|qq|imgvideo|qq|:|qq|http:\\/\\/player.vimeo.com\\/video\\/2203727|qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|},{|qq|imgname|qq|:|qq|modules\\/mod_playlistck\\/images\\/slides2\\/shelter.jpg|qq|,|qq|imgcaption|qq|:|qq|Imagine that you are on holidays|qq|,|qq|imgtitle|qq|:|qq|Nice landscape|qq|,|qq|imgthumb|qq|:|qq|http:\\/\\/localhost\\/modules\\/mod_playlistck\\/images\\/slides2\\/shelter.jpg|qq|,|qq|imglink|qq|:|qq||qq|,|qq|imgtarget|qq|:|qq|default|qq|,|qq|imgvideo|qq|:|qq||qq|,|qq|slidearticleid|qq|:|qq||qq|,|qq|slidearticlename|qq|:|qq||qq|,|qq|imgtime|qq|:|qq||qq|}]","theme":"elegant","skin":"playlistck_red_skin","loader":"pie","width":"auto","height":"55%","thumbscontwidth":"35%","thumbsposition":"right","navigation":"2","showthumbnails":"imagetext","thumbscaptionwidth":"50%","thumbnailtext":"titledesc","thumbnailtextdesclength":"50","thumbnailwidth":"50%","thumbnailheight":"100%","thumbnailzoom":"120%","effect":["random"],"time":"7000","transperiod":"1500","captioneffect":"moveFromLeft","autoAdvance":"1","hover":"1","displayorder":"normal","loadjquery":"1","loadjqueryeasing":"1","loadjquerymobile":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","articlelength":"150","articlelink":"readmore","showarticletitle":"1","captionstylesusefont":"1","captionstylestextgfont":"Droid Sans","captionstylesfontsize":"12px","captionstylesfontcolor":"","captionstylesfontweight":"normal","captionstylesdescfontsize":"10px","captionstylesdescfontcolor":"","captionstylesusemargin":"1","captionstylesmargintop":"0","captionstylesmarginright":"0","captionstylesmarginbottom":"0","captionstylesmarginleft":"0","captionstylespaddingtop":"0","captionstylespaddingright":"0","captionstylespaddingbottom":"0","captionstylespaddingleft":"0","captionstylesusebackground":"1","captionstylesbgcolor1":"","captionstylesbgimage":"","captionstylesbgpositionx":"left","captionstylesbgpositiony":"top","captionstylesbgimagerepeat":"repeat","captionstylesusegradient":"1","captionstylesbgcolor2":"","captionstylesuseroundedcorners":"1","captionstylesroundedcornerstl":"5","captionstylesroundedcornerstr":"5","captionstylesroundedcornersbr":"5","captionstylesroundedcornersbl":"5","captionstylesuseshadow":"1","captionstylesshadowcolor":"","captionstylesshadowblur":"3","captionstylesshadowspread":"0","captionstylesshadowoffsetx":"0","captionstylesshadowoffsety":"0","captionstylesshadowinset":"0","captionstylesuseborders":"1","captionstylesbordercolor":"","captionstylesborderwidth":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 'Fade in fade out my text', '', '', 2, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_fade_in_fade_out_my_text', 1, 0, '{"fifotext_title_1":"UNHCR warns against perilous Horn of Africa sea crossings","fifotext_link_1":"http:\\/\\/www.unhcr.org\\/569e3b19530.html\\/","fifotext_title_2":"UNHCR warns against perilous Horn of Africa sea crossings","fifotext_link_2":"http:\\/\\/www.unhcr.org\\/569e3b19530.html\\/","fifotext_title_3":"UNHCR warns against perilous Horn of Africa sea crossings","fifotext_link_3":"http:\\/\\/www.unhcr.org\\/569e3b19530.html\\/","fifotext_title_4":"IMF proposes prickly solutions for Europes refugee challenges","fifotext_link_4":"http:\\/\\/www.euronews.com\\/2016\\/01\\/21\\/imf-proposes-prickly-solutions-for-europe-s-refugee-challenges\\/","fifotext_title_5":"IMF proposes prickly solutions for Europes refugee challenges","fifotext_link_5":"http:\\/\\/www.euronews.com\\/2016\\/01\\/21\\/imf-proposes-prickly-solutions-for-europe-s-refugee-challenges\\/","fifotext_title_6":"IMF proposes prickly solutions for Europes refugee challenges","fifotext_link_6":"http:\\/\\/www.euronews.com\\/2016\\/01\\/21\\/imf-proposes-prickly-solutions-for-europe-s-refugee-challenges\\/","fifotext_prefix":"LATEST NEWS: ","fifotext_fadein":"0","fifotext_fade":"0","fifotext_fadestep":"3","fifotext_fadewait":"3000","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 'Tabs GK5', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tabs_gk5', 1, 0, '{"automatic_module_id":"1","module_id":"gk-tab-1","moduleclass_sfx":"","module_data_source":"tabsmanager","tabs_data":"[{\\"name\\":\\"Monthly Summaries\\",\\"type\\":\\"xhtml\\",\\"content\\":\\"[leftbracket]b[rightbracket]Regional Mixed Migration Monthly Summaries[leftbracket]\\/b[rightbracket]\\\\n[leftbracket]p\\/[rightbracket]\\\\n[leftbracket]p[rightbracket]The RMMS compiles a summary each month of all relevant movement with statistics, where known, as well as descriptions of political events and policy changes affecting mixed migration in the region. Monthly summaries are available from 2011.\\\\n[leftbracket]\\/p[rightbracket]\\\\n\\\\n[leftbracket]li[rightbracket][ampersand]nbsp;[leftbracket]a href=\\\\\\"fileadmin\\/content\\/monthly summaries\\/MonthlySummaryJan2016.pdf\\\\\\" title=\\\\\\"Initiates file download\\\\\\" class=\\\\\\"download\\\\\\" [rightbracket]RMMS Monthly Summary January  2016[leftbracket]\\/a[rightbracket][leftbracket]\\/li[rightbracket]\\\\n[leftbracket]p[rightbracket]\\\\n[leftbracket]p[rightbracket][leftbracket]a href=\\\\\\"indexd5e8.html?id=34\\\\\\" title=\\\\\\"Opens internal link in current window\\\\\\" target=\\\\\\"_self\\\\\\" class=\\\\\\"internal-link\\\\\\" [rightbracket]View all Mixed Migration Monthly Summaries[leftbracket]\\/a[rightbracket][leftbracket]\\/p[rightbracket]\\",\\"published\\":\\"1\\",\\"access\\":\\"1\\",\\"id\\":\\"\\",\\"animation\\":\\"default\\"},{\\"name\\":\\"Trend Analysis\\",\\"type\\":\\"xhtml\\",\\"content\\":\\"[leftbracket]b[rightbracket]Trend Analysis[leftbracket]\\/b[rightbracket]\\\\n[leftbracket]p\\/[rightbracket]\\\\n[leftbracket]p[rightbracket]The RMMS tracks the latest trends in terms of political context, national policy and data that have an impact on mixed migration flows within and out of the region. This section offers quarterly trend analysis as well as end of year summaries.\\\\n[leftbracket]\\/p[rightbracket]\\\\n\\\\n[leftbracket]li[rightbracket][leftbracket]a href=\\\\\\"indexQ4.html?id=2\\\\\\" title=\\\\\\"Regional Mixed Migration 4th Quarter Trend Analysis 2015\\\\\\"[rightbracket][leftbracket]\\/a[rightbracket][leftbracket]a href=\\\\\\"fileadmin\\/content\\/monthly summaries\\/AnnualReport2015.pdf\\\\\\" title=\\\\\\"Initiates file download\\\\\\" class=\\\\\\"download\\\\\\" [rightbracket]Regional Mixed Migration Annual Trend Analysis 2015[leftbracket]\\/a[rightbracket][leftbracket]\\/li[rightbracket]\\\\n\\\\t\\\\t\\\\t\\\\t    [leftbracket]li[rightbracket][leftbracket]a href=\\\\\\"indexQ4.html?id=2\\\\\\" title=\\\\\\"Regional Mixed Migration 4th Quarter Trend Analysis 2015\\\\\\"[rightbracket]Regional Mixed Migration 4th Quarter Trend Analysis 2015[leftbracket]\\/a[rightbracket][leftbracket]\\/li[rightbracket]\\\\n[leftbracket]\\/p[rightbracket]\\\\n[leftbracket]a href=\\\\\\"indexef73.html?id=33\\\\\\" title=\\\\\\"Opens internal link in current window\\\\\\" target=\\\\\\"_self\\\\\\" class=\\\\\\"internal-link\\\\\\"[rightbracket]View all Latest Trends Analyses[leftbracket]\\/a[rightbracket]\\\\t\\\\t\\\\t\\",\\"published\\":\\"1\\",\\"access\\":\\"1\\",\\"id\\":\\"\\",\\"animation\\":\\"default\\"},{\\"name\\":\\"Mediawatch\\",\\"type\\":\\"xhtml\\",\\"content\\":\\"[leftbracket]p[rightbracket][leftbracket]b[rightbracket]Mediawatch[rightbracket][leftbracket]\\/p[rightbracket][leftbracket]\\/b[rightbracket]\\\\n[leftbracket]p\\/[rightbracket]\\\\n[leftbracket]p[rightbracket]National, regional and international press cover different aspects of news relating to smuggling, trafficking, refugees and economic migrants in the region. This section offers a monthly review of all articles relevant to mixed migration in the news with easy links to the original presentation.[leftbracket]\\/p[rightbracket]\\\\n\\\\n[leftbracket]li[rightbracket][leftbracket]a href=\\\\\\"indexmediapress.html\\\\\\" title=\\\\\\"Monthly Press Listing January 2016\\\\\\"[rightbracket]Monthly Press Listing January 2016[leftbracket]\\/a[rightbracket][leftbracket]\\/li[rightbracket]\\\\n\\\\n[leftbracket]p\\/[rightbracket]\\\\n[leftbracket]div class=\\\\\\"view-all\\\\\\"[rightbracket][leftbracket]a href=\\\\\\"indexf62c.html?id=36\\\\\\" title=\\\\\\"Opens internal link in current window\\\\\\" target=\\\\\\"_self\\\\\\" class=\\\\\\"internal-link\\\\\\"[rightbracket]View all Mediawatch articles[leftbracket]\\/a[rightbracket][leftbracket]\\/div[rightbracket]\\",\\"published\\":\\"1\\",\\"access\\":\\"1\\",\\"id\\":\\"\\",\\"animation\\":\\"default\\"},{\\"name\\":\\"Research Initiatives\\",\\"type\\":\\"xhtml\\",\\"content\\":\\"[leftbracket]p[rightbracket][leftbracket]b[rightbracket]RMMS Research Initiatives[leftbracket]\\/p[rightbracket][leftbracket]\\/b[rightbracket]\\\\n[leftbracket]p[rightbracket]Research is one of the central pillars of the work of RMMS. This section lists the current and anticipated areas of research as well as past publications. RMMS research projects are also reported under the Publications section of this website.[leftbracket]\\/p[rightbracket]\\\\n\\\\n[leftbracket]li[rightbracket][leftbracket]a href=\\\\\\"indexb91e.html?id=61[ampersand]amp;tx_ttnews%5Btt_news%5D=370[ampersand]amp;cHash=415e5cd3b4f23c47ea4c1a1bfe993672\\\\\\" title=\\\\\\"A Certain Catalyst: an overview of the (mixed) migration and development debate with special focus on the Horn of Africa region: Extended Summary (Printed November 2015\\/ 36 pages)\\\\\\"[rightbracket]A Certain Catalyst: an overview of the (mixed) migration and development debate with special focus on the Horn of Africa region: Extended Summary (Printed November 2015\\/ 36 pages)[leftbracket]\\/a[rightbracket][leftbracket]\\/li[rightbracket]\\\\n\\\\n[leftbracket]\\/p[rightbracket]\\\\n[leftbracket]a href=\\\\\\"index3773.html?id=27\\\\\\" title=\\\\\\"Opens internal link in current window\\\\\\" target=\\\\\\"_self\\\\\\" class=\\\\\\"internal-link\\\\\\"[rightbracket]View all RMMS Research Initiatives[leftbracket]\\/a[rightbracket]\\\\n\\",\\"published\\":\\"1\\",\\"access\\":\\"1\\",\\"id\\":\\"\\",\\"animation\\":\\"default\\"}]","external_source":"-1","styleCSS":"style1","module_auto_height":"1","module_height":"200","tabs_position":"top","tabs_pre_text":"","tabs_width":"200","tabs_spans":"0","buttons":"0","activator":"click","mobile_swipe":"0","animation":"0","animation_interval":"5000","animation_type":"opacity","initial_tab":"1","url_tab_selection":"1","cookie_tab_selection":"0","parse_plugins":"1","module_wrap":"0","useCSS":"1","useScript":"1","engine_mode":"mootools","include_jquery":"0","rtl":"0","layout":"_:default","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"System-table"}', 0, '*'),
(100, 'Left right image slideshow', '', '', 1, 'debug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_left_right_image_slideshow', 1, 1, '{"slideshow_jquery":"YES","slideshow_type":"jpg","slideshow_folder":"modules\\/mod_left_right_image_slideshow\\/images","slideshow_link":"http:\\/\\/www.gopiplus.com\\/","slideshow_width":"110","slideshow_height":"85","slideshow_pause":"3000","slideshow_cycles":"5","slideshow_persist":"true","slideshow_slideduration":"3000","moduleclass_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 'Footer Menu', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footermenu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","use_default_stylesheet":"0","columns":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 'Slideshow Pro SP2', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slideshow_pro_sp2', 1, 1, '{"moduleclass_sfx":"","width":"900","height":"380","content_source":"joomla","catid":["2"],"ordering":"a.title","ordering_direction":"ASC","user_id":"0","show_featured":"","max_article":"3","showtitle":"1","titlelinked":"1","showdate":"1","showarticle":"0","showimage":"1","imagelinked":"0","showmore":"1","moretext":"Read More..","titleas":"1","titlelimit":"20","desclimitas":"2","desclimit":"30","thumbratio":"1","thumbwidth":"50","thumbheight":"50","layout":"movie","effects":"cover-horizontal-fade","interval":"5000","speed":"1000","transition":"Sine.easeOut","showarrows":"1","itemwidth":"270","itemheight":"99","maxitem":"3","showthumb":"1","mouse_wheel":"1","show_c_title":"1","c_titleas":"0","c_titlelimit":"20","show_c_desc":"1","c_desclimitas":"1","c_desclimit":"30","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_rmms_modules_menu`
--

INSERT INTO `bak_rmms_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(19, 0),
(28, 0),
(33, 0),
(48, 0),
(56, 0),
(79, 0),
(86, 0),
(87, 435),
(93, 0),
(94, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 201),
(102, 435),
(102, 448),
(102, 449),
(102, 450);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_overrider`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bak_rmms_redirect_links`
--

INSERT INTO `bak_rmms_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/', '', '', '', 7, 0, '2016-02-04 09:36:50', '0000-00-00 00:00:00'),
(2, 'http://localhost/index.php', '', 'http://localhost/', '', 1, 0, '2016-03-22 13:02:20', '0000-00-00 00:00:00'),
(3, 'http://localhost/index.php/homepage', '', 'http://localhost/index.php/', '', 1, 0, '2016-03-22 13:13:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_schemas`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_rmms_schemas`
--

INSERT INTO `bak_rmms_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.0.1'),
(10006, '2.0');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_session`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_rmms_session`
--

INSERT INTO `bak_rmms_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('dv9kj12r5of957o8oohbi8efh1', 1, 1, '1458655164', '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1458655164;s:18:"session.timer.last";i:1458655164;s:17:"session.timer.now";i:1458655164;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";N;s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"91e30258899c8e7f6622cf255a6986bf";}', 0, ''),
('peotdhedsa259a4k4jfcau5kh2', 0, 1, '1458655147', '__default|a:8:{s:15:"session.counter";i:281;s:19:"session.timer.start";i:1458636320;s:18:"session.timer.last";i:1458655112;s:17:"session.timer.now";i:1458655146;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"cec9e9981224e7246f0e5010b2763a5c";}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_template_styles`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bak_rmms_template_styles`
--

INSERT INTO `bak_rmms_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '1', 'Beez3 - Default', '{"wrapperSmall":23,"wrapperLarge":35,"logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","bootstrap":"","templatecolor":"personal","headerImage":"","backgroundcolor":"#eee"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"#b0262c","templateBackgroundColor":"#ecf8d5","logoFile":"","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_updates`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_update_sites`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bak_rmms_update_sites`
--

INSERT INTO `bak_rmms_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0),
(5, 'DJ-ImageSlider Package', 'extension', 'http://dj-extensions.com/updates/djimageslider.xml', 1, 0),
(6, 'Helix3 - Ajax', 'extension', 'http://www.joomshaper.com/updates/plg-ajax-helix3.xml', 1, 0),
(7, 'System - Helix3 Framework', 'extension', 'http://www.joomshaper.com/updates/plg-system-helix3.xml', 1, 0),
(9, 'Playlist CK Update', 'extension', 'http://update.joomlack.fr/mod_playlistck_update.xml', 1, 0),
(11, 'Tabs GK5 Updates', 'extension', 'https://www.gavick.com/update_server/joomla30/tabs_gk5.xml', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `bak_rmms_update_sites_extensions`
--

INSERT INTO `bak_rmms_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(5, 10008),
(6, 10010),
(7, 10011),
(9, 10013),
(11, 10019);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_usergroups`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bak_rmms_usergroups`
--

INSERT INTO `bak_rmms_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_users`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=603 ;

--
-- Dumping data for table `bak_rmms_users`
--

INSERT INTO `bak_rmms_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(602, 'Super User', 'admin', 'eryket@gmail.com', '962d52d3326b180747c0dc1aab81b431:u1M0wpQe1mIzBDR7MSJy6ZMysUCJ0rH2', 0, 1, '2016-02-04 06:08:25', '2016-03-22 13:59:24', '0', '', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_user_notes`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_rmms_user_usergroup_map`
--

INSERT INTO `bak_rmms_user_usergroup_map` (`user_id`, `group_id`) VALUES
(602, 8);

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `bak_rmms_viewlevels`
--

INSERT INTO `bak_rmms_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Table structure for table `bak_rmms_weblinks`
--

CREATE TABLE IF NOT EXISTS `bak_rmms_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bak_rmms_weblinks`
--

INSERT INTO `bak_rmms_weblinks` (`id`, `catid`, `title`, `alias`, `url`, `description`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `images`) VALUES
(1, 6, 'Testlink', 'testlink', 'http://www.test.org', '<p>hfhf djfid <span style="line-height: 1.3em;">hfhf djfid</span><span style="line-height: 1.3em;"> </span><span style="line-height: 1.3em;">hfhf djfid</span><span style="line-height: 1.3em;">hfhf djfid bv</span><span style="line-height: 1.3em;">hfhf djfid</span><span style="line-height: 1.3em;">hfhf djfid </span><span style="line-height: 1.3em;">hfhf djfid</span></p>', 0, -2, 0, '0000-00-00 00:00:00', 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', '*', '2016-03-22 09:08:22', 602, '', '2016-03-22 09:08:51', 602, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '{"image_first":"","float_first":"","image_first_alt":"","image_first_caption":"","image_second":"","float_second":"","image_second_alt":"","image_second_caption":""}');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_assets`
--

CREATE TABLE IF NOT EXISTS `rmms_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `rmms_assets`
--

INSERT INTO `rmms_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 95, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1,"4":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"4":1,"5":1},"core.edit.own":{"6":1,"3":1,"4":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 44, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 45, 46, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 47, 48, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 49, 50, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 51, 52, 1, 'com_login', 'com_login', '{}'),
(13, 1, 53, 54, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 55, 56, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 57, 58, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 59, 60, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 61, 62, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 63, 64, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 65, 68, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 69, 70, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 71, 72, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 73, 74, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 75, 76, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 77, 80, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 81, 84, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 85, 86, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 27, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 66, 67, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 82, 83, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 78, 79, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":{"3":1},"core.delete":[],"core.edit":{"3":1},"core.edit.state":[],"core.edit.own":[]}'),
(33, 1, 87, 88, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 89, 90, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 27, 19, 20, 3, 'com_content.article.1', 'Getting Started', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(36, 27, 21, 22, 3, 'com_content.article.2', 'Smuggling of migrants and refugees: a multi-million dollar industry', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 23, 24, 3, 'com_content.article.3', 'A Certain Catalyst: towards the link between migration and development', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 27, 25, 26, 3, 'com_content.article.4', 'Pragmatism versus principle: the ''Dutch Plan'' as the new EU migration response?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 40, 31, 32, 3, 'com_content.article.5', 'Monthly RMMS Dashboard Maps', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 8, 28, 37, 2, 'com_content.category.8', 'Front', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(41, 40, 29, 30, 3, 'com_content.article.6', 'Trend Analysis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 40, 33, 34, 3, 'com_content.article.7', 'Mediawatch', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 40, 35, 36, 3, 'com_content.article.8', 'RMMS Research Initiatives', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 1, 91, 92, 1, 'com_tz_portfolio', 'com_tz_portfolio', '{}'),
(46, 8, 38, 39, 2, 'com_content.category.9', 'Posters', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(47, 8, 40, 41, 2, 'com_content.category.10', 'PostersLoad', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(48, 8, 42, 43, 2, 'com_content.category.11', 'Imagery', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(49, 1, 93, 94, 1, 'com_verticalgallery', 'verticalgallery', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_associations`
--

CREATE TABLE IF NOT EXISTS `rmms_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_banners`
--

CREATE TABLE IF NOT EXISTS `rmms_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_banner_clients`
--

CREATE TABLE IF NOT EXISTS `rmms_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `rmms_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_categories`
--

CREATE TABLE IF NOT EXISTS `rmms_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `rmms_categories`
--

INSERT INTO `rmms_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 21, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 524, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 524, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 524, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 524, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 524, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 524, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 524, '2011-01-01 00:00:01', 524, '2016-04-22 05:44:55', 0, '*', 1),
(8, 40, 1, 13, 14, 1, 'font', 'com_content', 'Front', 'font', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 524, '2016-04-04 12:06:14', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 46, 1, 15, 16, 1, '', 'com_content', 'Posters', 'posters', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"show_extra_fields":"","field_show_type":"","category_layout":"","image":"","detail_article_image_size":"","portfolio_image_size":"","portfolio_image_featured_size":"","article_leading_image_size":"","article_secondary_image_size":"","detail_article_image_gallery_size":"","article_leading_image_gallery_size":"","article_secondary_image_gallery_size":""}', '', '', '{"author":"","robots":""}', 524, '2016-04-20 12:52:58', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 47, 1, 17, 18, 1, '', 'com_content', 'PostersLoad', 'postersload', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"show_extra_fields":"","field_show_type":"","category_layout":"","image":"","detail_article_image_size":"","portfolio_image_size":"","portfolio_image_featured_size":"","article_leading_image_size":"","article_secondary_image_size":"","detail_article_image_gallery_size":"","article_leading_image_gallery_size":"","article_secondary_image_gallery_size":""}', '', '', '{"author":"","robots":""}', 524, '2016-04-20 12:53:51', 524, '2016-04-20 13:00:50', 0, '*', 1),
(11, 48, 1, 19, 20, 1, '', 'com_content', 'Imagery', 'imagery', '', '<p><img src="images/posters/poster1.jpg" width="552" height="394" /></p>\r\n<p><img src="images/posters/poster2.jpg" width="552" height="391" /></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"show_extra_fields":"","field_show_type":"","category_layout":"","image":"","detail_article_image_size":"","portfolio_image_size":"","portfolio_image_featured_size":"","article_leading_image_size":"","article_secondary_image_size":"","detail_article_image_gallery_size":"","article_leading_image_gallery_size":"","article_secondary_image_gallery_size":""}', '', '', '{"author":"","robots":""}', 524, '2016-04-20 13:08:07', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_contact_details`
--

CREATE TABLE IF NOT EXISTS `rmms_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_content`
--

CREATE TABLE IF NOT EXISTS `rmms_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rmms_content`
--

INSERT INTO `rmms_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 35, 'Getting Started', 'getting-started', '<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;">\r\n \r\n \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n  \r\n \r\n \r\n \r\n\r\n \r\n<img src="images/line.gif" width="670" height="5" /></span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Regional Mixed Migration Monthly Summaries</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;">The RMMS compiles a summary each month of all relevant movement with statistics, where known, as well as descriptions of political events and policy changes affecting mixed migration in the region. Monthly summaries are available from 2011. </span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l3 level1 lfo1; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"> <a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/fileadmin/content/monthly%20summaries/RMMS_Monthly_Summary_December_2015.pdf" title="Initiates file download"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">RMMS Monthly Summary December 2015</span></a></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexd5e8.html?id=34" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all Mixed Migration Monthly Summaries</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15pt; vertical-align: baseline; border: none; padding: 0cm; text-align: left;"> </p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Trend Analysis</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="line-height: 19px;">The RMMS tracks the latest trends in terms of political context, national policy and data that have an impact on mixed migration flows within and out of the region. This section offers quarterly trend analysis as well as end of year summaries.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l0 level1 lfo2; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexQ4.html?id=2" title="Regional Mixed Migration 4th Quarter Trend Analysis 2015"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Regional Mixed Migration 4th Quarter Trend Analysis 2015</span></a></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexef73.html?id=33" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all Latest Trends Analyses</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;"> </span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Mediawatch</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="line-height: 19px;">National, regional and international press cover different aspects of news relating to smuggling, trafficking, refugees and economic migrants in the region. This section offers a monthly review of all articles relevant to mixed migration in the news with easy links to the original presentation.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l5 level1 lfo3; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexmw12.html?id=36&amp;tx_ttnews%5Btt_news%5D=367&amp;cHash=5f6822c3843287a94b0bf04891c415ae" title="Monthly Press Listing December 2015"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Monthly Press Listing December 2015</span></a></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexf62c.html?id=36" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all Mediawatch articles</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;"> </span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">RMMS Research Initiatives</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="line-height: 19px;">Research is one of the central pillars of the work of RMMS. This section lists the current and anticipated areas of research as well as past publications. RMMS research projects are also reported under the Publications section of this website.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l2 level1 lfo4; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexb91e.html?id=61&amp;tx_ttnews%5Btt_news%5D=370&amp;cHash=415e5cd3b4f23c47ea4c1a1bfe993672" title="A Certain Catalyst: an overview of the (mixed) migration and development debate with special focus on the Horn of Africa region: Extended Summary (Printed November 2015/ 36 pages)"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">A Certain Catalyst: an overview of the (mixed) migration and development debate with special focus on the Horn of Africa region: Extended Summary (Printed November 2015/ 36 pages)</span></a></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/index3773.html?id=27" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all RMMS Research Initiatives</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;"> </span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Featured Articles</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="line-height: 19px;">As part of its analysis and advocacy work the RMMS regularly offers featured articles on important contemporary mixed migration issues. This section presents the archives of past and present articles relating to mixed migration in the region and beyond.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l4 level1 lfo5; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexd58f.html?id=44&amp;tx_ttnews%5Btt_news%5D=375&amp;cHash=b2dcc7c87966fe3bbebaafa6a5a20a8b" title="Refocusing on Yemen: the Regional Refugee and Migration Response Plan"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Refocusing on Yemen: the Regional Refugee and Migration Response Plan</span></a></span></li>\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l4 level1 lfo5; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/index6514.html?id=44&amp;tx_ttnews%5Btt_news%5D=368&amp;cHash=e31e59e9ab8d630152ca18c333115ab6" title="Seeking safe harbor:  three-region comparative analysis of protection at sea"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Seeking safe harbor: three-region comparative analysis of protection at sea</span></a></span></li>\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l4 level1 lfo5; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/index4acc.html?id=44&amp;tx_ttnews%5Btt_news%5D=365&amp;cHash=1a56df046a39f08097a965dbad33369e" title="Protecting refugees in transit">Protecting refugees in transit</a>.</span></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/index9e43.html?id=25" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all Featured Articles</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;"> </span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Film &amp; Documentaries</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;">Any film record, news clip or documentary relating to mixed migration relevant to the Horn of Africa and Yemen region is listed in this section, offering the viewer an archive listing (with links) of past and present films.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l1 level1 lfo6; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="https://www.youtube.com/watch?v=XWrGSndkf6U" target="_blank" title="Opens external link in new window"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Libya''s Migrant Trade: Europe or Die (September 2015)</span></a>. A gripping piece on the commodification of migrants and refugees in Libya. Held by militia groups in desert prisons, the migrants and refugees are used as pawn in the fighters'' quest for power. </span></li>\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l1 level1 lfo6; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="https://www.youtube.com/watch?v=ZbjRujnxK0Y" target="_blank" title="Opens external link in new window"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">People Smuggler: World''s Most Wanted (July 2015)</span></a>. Sky News travels follows the key human trafficking routes through Libya and onto the Mediterranean Sea, meeting the migrants willing to risk everything in search of a better life.</span></li>\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l1 level1 lfo6; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="http://video.aljazeera.com/channels/eng/videos/yemen-refugees-flock-to-overcrowded-camps-in-djibouti/4252982197001" target="_blank" title="Opens external link in new window"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Yemen refugees flock to overcrowded camps in Djibouti (May 2015)</span></a>. Al Jazeera interviews refugees who fled Yemen to Djibouti, finding conditions they describe as ''unbearable''</span></li>\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l1 level1 lfo6; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="https://www.youtube.com/watch?v=1AAc23OO-wM" target="_blank" title="Opens external link in new window"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Ethiopian migrants drawn to dangerous journey despite risks (April 2015).</span></a> In this Al Jazeera news feature, it looks at the dangers faced by Ethiopian migrants across Libya on their way to the Mediterranean Sea including the recent attack by ISIL fighters.</span></li>\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l1 level1 lfo6; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="https://news.vice.com/video/escaping-hell-libyas-migrant-jails-part-3" target="_blank" title="Opens external link in new window"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Escaping Hell: Libya''s migrant jails (March 2015).</span></a> In the final part of the series, VICE News speaks with a survivor of the journey to Europe across the Mediterranean Sea.  </span></li>\r\n</ul>\r\n<p class="MsoNormal" style="line-height: 14.25pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/index95dc.html?id=29" target="_self" title="Opens internal link in current window"><span style="font-family: ''Helvetica'',''sans-serif''; color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">View all Films &amp; Documentarie</span><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">s</span></a></span></p>\r\n<p class="MsoNormal" style="line-height: 14.25pt; vertical-align: baseline;"><strong style="line-height: 20px;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Statistics at a Glance</span></strong></p>\r\n</div>\r\n<table class="MsoNormalTable" style="width: 667px; border-collapse: collapse; height: 1026px;" width="555" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 10.45pt;">\r\n<td style="width: 416.45pt; border: solid #E0E0E0 1.0pt; background: #AF151E; padding: 6.75pt 7.5pt 6.75pt 7.5pt; height: 10.45pt;" colspan="5" valign="bottom" width="555">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 11.25pt; vertical-align: baseline;"><strong><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">New Arrivals along Yemen’s coast*</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1; height: 27.85pt;">\r\n<td style="width: 71.7pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 27.85pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Red Sea and the Gulf of Aden</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 27.85pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Total arrival in 2014</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 27.85pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">37,971</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 27.85pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Total arrival in 2015</span></p>\r\n</td>\r\n<td style="width: 129.8pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 27.85pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="173">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">31,512</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 2; height: 10.45pt;">\r\n<td style="width: 416.45pt; border: solid #E0E0E0 1.0pt; border-top: none; background: #AF151E; padding: 6.75pt 7.5pt 6.75pt 7.5pt; height: 10.45pt;" colspan="5" valign="bottom" width="555">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 11.25pt; vertical-align: baseline;"><strong><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Yemen Displacements</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 3; height: 19.5pt;">\r\n<td style="width: 71.7pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 19.5pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Arrivals in the Horn of Africa (Djibouti and Somalia (Somaliland, Puntland and South Central))</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 19.5pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Total refugees, asylum seekers and migrants as at 14 September 2015</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 19.5pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">53,823</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 19.5pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">IDPs as at 10 September 2015</span></p>\r\n</td>\r\n<td style="width: 129.8pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 19.5pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="173">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">1,439,118</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 4; height: 10.45pt;">\r\n<td style="width: 416.45pt; border: solid #E0E0E0 1.0pt; border-top: none; background: #AF151E; padding: 6.75pt 7.5pt 6.75pt 7.5pt; height: 10.45pt;" colspan="5" valign="bottom" width="555">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 11.25pt; vertical-align: baseline;"><strong><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Refugees and asylum seekers in Kenya**</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 5; height: 38.3pt;">\r\n<td style="width: 71.7pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Somali</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Nairobi Population as at 1 August 2015</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">32,930</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Total population in Kenya as of</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">31 August </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">2015</span></p>\r\n</td>\r\n<td style="width: 129.8pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="173">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">420,711</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 6; height: 28.55pt;">\r\n<td style="width: 71.7pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 28.55pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Ethiopian</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 28.55pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Nairobi population as at 1 August 2015</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 28.55pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">8,375</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 28.55pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Total population in Kenya as of August 2015</span></p>\r\n</td>\r\n<td style="width: 129.8pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 28.55pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="173">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> 30,832</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 7; height: 10.45pt;">\r\n<td style="width: 416.45pt; border: solid #E0E0E0 1.0pt; border-top: none; background: #AF151E; padding: 6.75pt 7.5pt 6.75pt 7.5pt; height: 10.45pt;" colspan="5" valign="bottom" width="555">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 11.25pt; vertical-align: baseline;"><strong><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Refugees in Djibouti</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 8; height: 38.3pt;">\r\n<td style="width: 71.7pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Somali</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Ethiopian</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">2015 February</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">2015 February</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">11,700</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">479</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Total population in Djibouti as of February</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">2015 </span></p>\r\n</td>\r\n<td style="width: 129.8pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 38.3pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="173">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">12,431</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 9; height: 15.6pt;">\r\n<td style="width: 416.45pt; border: solid #E0E0E0 1.0pt; border-top: none; background: #AF151E; padding: 5.25pt 7.5pt 5.25pt 7.5pt; height: 15.6pt;" colspan="5" valign="bottom" width="555">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><strong><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Refugees in Ethiopia</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 10; height: 39.0pt;">\r\n<td style="width: 71.7pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 39pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Somali</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">South Sudanese</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 39pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">2015 July</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">2015 July</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 39pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">247,706</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">281,514</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 39pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Total population in Ethiopia as of July</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">2015 </span></p>\r\n</td>\r\n<td style="width: 129.8pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 39pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="173">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">705,122</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 11; height: 10.45pt;">\r\n<td style="width: 416.45pt; border: solid #E0E0E0 1.0pt; border-top: none; background: #AF151E; padding: 6.75pt 7.5pt 6.75pt 7.5pt; height: 10.45pt;" colspan="5" valign="bottom" width="555">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 11.25pt; vertical-align: baseline;"><strong><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: white; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">IDPs in Somalia***</span></strong></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 12; height: 18.8pt;">\r\n<td style="width: 71.7pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 18.8pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96"> </td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 18.8pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Displaced </span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 18.8pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">-</span></p>\r\n</td>\r\n<td style="width: 71.65pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 18.8pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="96">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">Estimated total</span></p>\r\n</td>\r\n<td style="width: 129.8pt; border-style: none solid solid none; border-bottom-color: #e0e0e0; border-bottom-width: 1pt; border-right-color: #e0e0e0; border-right-width: 1pt; padding: 5.25pt 7.5pt; height: 18.8pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" valign="bottom" width="173">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">1,106,000</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 13; mso-yfti-lastrow: yes; height: 77.35pt;">\r\n<td style="width: 416.45pt; border-style: none solid solid; border-right-color: #e0e0e0; border-bottom-color: #e0e0e0; border-left-color: #e0e0e0; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; padding: 5.25pt 7.5pt; height: 77.35pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" colspan="5" valign="bottom" width="555">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">*Arrival figures are between the months of January and July. Following the outbreak of conflict in Yemen on 23rd March 2015, monitoring activities along the Red Sea and Arabian Sea coasts have been considerably affected, with a majority of monitoring exercise suspended. The data presented therefore is not conclusive on the actual number of arrivals during this period. It is likely that the actual number of arrivals are higher.</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">**Source <a href="http://reliefweb.int/sites/reliefweb.int/files/resources/KenyaFactSheet-July2015fv_0.pdf" target="_blank" title="Opens external link in new window"><span style="color: #3d3d3d;">UNHCR</span></a>. As at 1</span><sup><span style="font-size: 7.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">st</span></sup><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;"> August 2015, there were officially 55,351 refugees and asylum seekers in Nairobi (including Somali, Sudanese, South Sudanese, Eritrean, Ugandan, Rwandan, Burundian and Congolese nationals). Unofficially the figure is estimated to be much higher. </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt; vertical-align: baseline;"><span style="font-size: 9.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: ''Times New Roman''; color: #6b6b6b; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm; mso-fareast-language: EN-GB;">***Source <a href="http://reliefweb.int/sites/reliefweb.int/files/resources/June2015SomaliaRefugeesHornofAfrica.pdf" target="_blank" title="Opens external link in new window"><span style="color: #3d3d3d;">UNHCR</span></a>. As at June 2015, it is estimated that over 1.1 million persons were displaced in Somalia. The breakdown was as follows: 84,000 in Somaliland, 129,000 in Puntland and 893,000 in South Central Somalia.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class="MsoNormal"> </p>', '', 1, 2, '2011-01-01 10:01:00', 524, '', '2016-04-22 05:43:04', 525, 0, '0000-00-00 00:00:00', '2012-09-23 10:01:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 27, 4, '', '', 1, 2109, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `rmms_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(2, 36, 'Smuggling of migrants and refugees: a multi-million dollar industry', 'smuggling-of-migrants-and-refugees-a-multi-million-dollar-industry', '<p style="text-align: justify;">As European governments struggle to re-locate some of the 160,000 asylum seekers who have arrived into Greece and Italy in recent months, a much bigger challenge looms with reports showing a surge in the growth of the people smuggling business. Profits from the illicit smuggling of migrants and refugees wereestimated by the IOM Chief, William Swing, at USD 1 billion in 2015 alone. In some locations, such as Libya, groups with a terrorist agenda are also receiving a share in these profits through taxes on smugglers. How governments and policy makers respond to this issue is also the subject of a new report by the Global Initiative Against Transnational Organised Crime and the Institute for Security Studies, entitled “Survive and advance The economics of smuggling refugees and migrants into Europe”.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Smuggling of migrants and refugees, as distinct from trafficking, has been described as the “new normal in irregular migration” by Jorgen Carling, Anne T Gallagher and Christopher Horwood in the latest RMMS Discussion Paper. The paper describes a range of actors who can broadly be defined as ‘smugglers’, and sets out a number of conditions dependent on facilitation and exploitation, which they suggest are the primary variables all persons succumb to when seeking to reach a country through illicit smuggling networks where they can find protection (in the case of asylum seekers and refugees) or a better future (as is most often the case for many migrants). Noting that prospective migrants and asylum seekers are aware of the risks they take on, Carling et al implicate the “repressive migration policies [that] have helped create and sustain a robust market for paid facilitators who are able to circumvent all but the most draconian border controls”.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The Global Initiative/ISS report describes various smuggling routes departing from Egypt, Libya and Turkey that involve a network of facilitators, collectors, boat captains, brokers and mediators who share a stake in the profit from every boat trip to Europe. Maximising profit come from increasing economies of scale such that smugglers are forced to send more and more boats (in the case of Turkey) or cram more people into vessels (in the case of Libya). A network of smugglers take over in Eastern Europe to assist people to reach their planned destination which is most often Germany. Europol figures cited in the report suggest that there are 30,000 individuals involved in human smuggling alone.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Smugglers, and migrants and refugees, are well aware of changing admission policies which are quickly communicated via social media. They simply re-direct their movements in light of new circumstances. However it is wider EU policies that create the need for smugglers in the first place. The report notes “as EU policy on asylum and migration currently stands, … applications can only be made once the applicant has landed on EU soil – which means that the vast majority of applicants must first enter the EU illegally, thereby creating a demand for smugglers”. Annual profits for smugglers in Libya alone are estimated at 325 million USD per year. At the height of the smuggling season from Turkey last year where up to 100 boats crossed daily, researchers from the Global Initiative/ISS gauged profits to be close to 1 million USD per day.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">While low-level and small scale smugglers, such as fishermen and taxi drivers, may be tempted by the lure of profits, there is evidence in the Global Initiative/ISS report of smuggling groups being linked to violent groups seeking to destabilise states and threaten communities especially in the Horn of Africa and East Africa.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Many of the nodes on the smuggling chain are situated in some of the poorest and most remote parts of the world where the actual value of the illicit economy is even greater as it constitutes a significant source of income for local populations and, in many instance, officials who collude with smugglers. Highlighting another dimension to groups who profit from smuggling, in Libya it has been shown that the so-called Islamic State group and other local militias are receiving funds by exacting a tax on existing smugglers.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Data from the United States Institute for Peace has shown how the illicit economy in Libya rests on four interconnected markets: weapons, migrants, drugs, and smuggled goods and it is well known that the Rashaida, a tribal group in Eastern Sudan, have been involved in smuggling and trafficking people out of Eritrea as well as taking them ransom until large sums of money are paid by family members.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The vast amounts of money changing hands are being transacted outside of the formal banking system and most often in cash. A new ICMPD report from Syria shows how families are even going into debt to pay smugglers or becoming subject to debt bondage to repay sums borrowed to pay for journeys to Europe. This places incredible pressure on new arrivals into Europe but, as the report found, may lead to trafficking or sexual abuse and exploitation of women and girls who are unable to pay off the money they have borrowed.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Joining the dots between mismatched European Union policies, conditions in countries of origin and transit, and the availability of smuggler networks should be high on the EU’s agenda for 2016. Figures for January 2016 show that 36,528 migrants and refugees have arrived into Europe by sea so far this year, already arecord high in the traditionally quieter winter season. As the volume of people being smuggled grows, and profits increase, the stakes become higher in this multi-million dollar illicit industry.</p>', '', 1, 2, '2016-03-22 18:28:37', 524, '', '2016-03-23 06:36:17', 524, 0, '0000-00-00 00:00:00', '2016-03-22 18:28:37', '0000-00-00 00:00:00', '{"image_intro":"images\\/Jason_Florio.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 3, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(3, 37, 'A Certain Catalyst: towards the link between migration and development', 'a-certain-catalyst-towards-the-link-between-migration-and-development', '<p style="text-align: justify;">The controversial debate around migration and development has been gaining momentum in contemporary debates on global affairs in a time sometimes referred to as the ‘age of mobility’. The World Bank estimates that as of 2013, there were 247 million international migrants representing about 3% of total world population. This figure is expected to increase in the future as complex push and pull factors continue to drive migration across the world. This figure also does not include most irregular migrants who move clandestinely and once in their country of destination often remain for years under the radar and work in the informal sectors or as unofficial workers.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">More than 1 million refugees and migrants are reported to have entered Europe in 2015 alone and an additional three million are expected by end of 2016. According to UNHCR, 90% of all arrivals to Europe via Mediterranean in 2015 are from the top ten refugee producing countries in the world, raising the question as to whether this is a refugee or migration crisis for Europe and even whether it is a crisis at all when over 86% of the world’s refugees are already hosted in countries in developing regions.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The issue of migration raises temperatures on all sides of the debate - there are few subject that are as politically sensitive or as taboo. Most mainstream parties tread very carefully around migration policy and in the process often avoid taking clear positions on issues that are of considerable concern to their constituents.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Media coverage and commentary on migrants’ and refugees’ journeys often generate compassion and sympathy, especially when tragic events occur. At the same time, reporting has had the potential to stir up, evoking anti-migrant sentiments, antipathy and/or fear, obscuring facts and often denying the public and policy makers opportunity to debate migration and development from an informed perspective.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The United Nations stated in a press release during the International Migrants Day in December 2015. “This new era has […] served to underscore the clear linkage between migration and development, as well as the opportunities it provides for co-development, that is, the concerted improvement of economic and social conditions at both origin and destination”</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Echoing this sentiment, the latest research study by the Regional Mixed Migration Secretariat (RMMS), A Certain Catalyst, seeks to bring balance to the great migration debate by addressing various myths associated with migration and highlighting ways in which migration could or actually does contribute to development. RMMS considers that full public discussion of the central issues is necessary to stimulate forward thinking and rational policy engagement in relation to the migration discourse.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The report, which also explores the specific linkages between migration and development in the Horn of Africa and Yemen region, examines issues such as diaspora engagement, remittances, labour migration, free movement and refugee economies.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Even though the relationship between migration and development is not a linear or a causal one, there has been increased global focus in this area. In the recently adopted Sustainable Development Goals (SDGs), the UN recognizes the positive role of migration in lifting people out of poverty and reducing inequalities within and among countries and aims to facilitate orderly, safe, regular and responsible migration and mobility of people, including through the implementation of planned and well managed migration policies.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Migration and development also features prominently in EU’s engagement and cooperation with Africa at continental, regional and bilateral levels. The Valletta Summit on Migration held in November 2015 and the consequent launch of €1.8 billion Emergency Trust Fund for Africa, adoption of a political declaration and a joint action plan is aimed, among other objectives, at maximising the development benefits of migration, better organizing legal channels for migration and mobility and addressing root causes of irregular migration.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">While migration within and from Horn of Africa is considered to be relatively low compared to countries with higher levels of development, such as in coastal West Africa, it is expected that migration flows in the region will increase in coming decades. Africa’s booming youth population , rising economic growth, regional integration initiatives aimed at easing citizens’ movement and climate change are some of the factors likely to contribute to increased migration and labour mobility within and from Sub-Saharan Africa in future.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Despite mixed reactions - compassion, fears and objections - towards migrants and refugees, there are positive ways in which migration can contribute to development not only in origin countries in Horn of Africa but also in destination countries.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Africa’s diaspora members are contributing to development in their origin countries through transfer of skills, innovative ideas and technologies from countries of residence. In addition, the diaspora community facilitates trade and investment flows between destination and origin countries contributing to poverty reduction and economic growth in Africa. As the report explains, developing countries will need to take appropriate actions to improve business climate, address governance and corruption concerns in the continent to maximise the benefits of migration and mobility.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Remittances from migrant workers abroad can contribute to socio-economic development in developing countries. According to World Bank figures remittances reached USD 414 billion in 2013, three times the amount of foreign aid. Remittances constituted 2.4% of GDP in Djibouti, 9.3% in Yemen and 1.3% in Ethiopia. Studies have shown a positive impact of remittances on poverty reduction, education and human development however according to the report, this impact has to be complemented by deliberate structural reforms by governments in developing countries for sustainable development.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The UN, in recognition of the contribution of migration to development, sets a target as part of SDGs, to reduce by 2030 the transaction costs of migrant remittances to less than 3% and eliminate corridors with costs higher than 5%. Remittance corridors in East Africa are among those with the highest remittance costs in the world.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Labour migration both South-North and South-South can have many economic benefits for destination and origin countries as well as for migrants and their families. International Labour Organization (ILO) estimates that 64.8% of the 232 million international migrants in the world today are economically active. Economists argue that the economic contribution of migrants in Europe is greater than their cost to EU governments with benefits expected to outweigh the costs in 5-10 years in countries such as Germany.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">At a regional level, the impact of labour migration on development can further be maximised especially in developing countries through facilitation of free movement of persons between countries. Regional integration initiatives in Sub-Saharan Africa such as South African Development Community (SADC), Common Market for East and Southern Africa (COMESA) and East Africa Community (EAC) have protocols on free movement of persons between member states.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Opportunities for legal or regular migration may lead to better management of migration in the region and reduce irregular migration. However successful implementation of the protocols on free movement of persons in the regional economic communities above has been hampered by insufficient political support as well as restrictive policies and practices by member states.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Countries in the East and the Horn of Africa are initiating policies and programs to tap potential development benefits from their diaspora communities. Kenya and Ethiopia launched Diaspora Policies in 2015 and 2013 respectively. Diaspora agencies and/or departments have been established by Kenya, Ethiopia, Somaliland, Puntland and Federal Government in Mogadishu aimed at linking diaspora and migrants abroad to investment opportunities and development processes in their origin countries.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Many specialists agree that migration flows are set to increase in future and this trend will remain a global phenomenon for decades to come. While migration is not a panacea for development challenges in poor countries, if well managed, there are strong arguments supporting the notion that migration can have positive impacts on development for both destination and origin countries as well as on the welfare of migrants and their families. As the RMMS report recommends, there is need for full public discussion and debate on migration and development which should not be informed by myths and constrained by taboos but established on facts and a balanced perspective of the issues at hand.</p>', '', 1, 2, '2016-03-22 18:41:29', 524, '', '2016-03-23 13:26:34', 524, 0, '0000-00-00 00:00:00', '2016-03-22 18:41:29', '0000-00-00 00:00:00', '{"image_intro":"images\\/training_Germ.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 2, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(4, 38, 'Pragmatism versus principle: the ''Dutch Plan'' as the new EU migration response?', 'pragmatism-versus-principle-the-dutch-plan-as-the-new-eu-migration-response', '<p style="text-align: justify;">On 28th January 2016, Dutch Labour Party leader Samson, in an interview with a Dutch newspaper, outlined a proposal on how to solve Europe’s migrant and refugee crisis. The proposal is reportedly backed by the Dutch Prime Minister Rutte. The Government of the Netherlands - currently holding the European Union’s (EU) presidency and determined to book progress in the EUs dealing with the refugee crisis – is currently gathering support among like-minded EU member states, such as Germany, Sweden and Austria.</p>\r\n<p style="text-align: justify;">According to this plan, migrants and refugees who arrive in Greece would be returned to Turkey almost immediately (within a few days) by ferry. In exchange, EU member states each year would accept between 150,000 and 250,000 refugees who are residing in Turkey. The idea is to discourage refugees and migrants from taking the dangerous route by sea, and instead organize safe and legal migration in an orderly manner (by plane) for up to 250,000 refugees per year. These refugees would be redistributed among a core-group of like-minded European countries on a voluntary basis. Countries not participating would have to contribute financially. The current relocation scheme of 160,000 refugees residing in Greece and Italy seems to be failing though; only 272 refugees have been relocated to other European countries. However, Samson argues that if the total number will be brought down to 250,000, it means the number of refugees coming to each of the major destination countries in Europe will end up to be lower than the numbers they are currently receiving.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The plan is similar to proposals first made by the think tank European Stability Initiative (ESI) in September 2015, and in October 2015, German Chancellor Angela Merkel reportedly embraced a proposal very similar to this plan.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The plan immediately elicited strong criticism from some commentators. Amnesty International, for example, in a press release, called these ideas “morally bankrupt” and “tantamount to bartering in human lives” and claimed it would represent “blatant violations of both European and international law.” The European Commission was also quick to denounce the plan in an initial response, saying that anyone requesting asylum on arrival in the EU would never be turned away and that the EU will not engage in so-called push-backs.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">However, according Gerald Knaus, founding chairmen of ESI, human rights organizations are acting too legalistically. In an interview with the Dutch newspaper NRC on 13 February 2016, he warned that, if this plan fails, “no one in Europe will try to solve it anymore, borders will be closed and the UN Refugee Convention will be dead” and argued for a “combination of empathy and control”.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">To start with the legal objections, the plan draws on the concept that Turkey is a safe third country for refugees, and that Greece can therefore legitimately return them to Turkey. Yet, observers have argued Turkey is currently not a safe third country and that the implementation of the plan would thus be illegal. Samson indeed argued that the plan depends on Turkey having the status of a safe third country for refugees and that, to reach that status, Turkey would have to adopt several laws and improve the situation for asylum seekers. According to ESI, it is not against international law to return refugees to Turkey, as EU legislation permits the return of asylum seekers to a third country if they can receive international protection in that country. Turkey retains a geographic limitation to its ratification of the 1951 UN Convention on the Status of Refugees (i.e. only recognizing refugees from Europe). However, Turkey does have a temporary protection regime for Syrian refugees and has a new asylum law since 2013, which UNHCR welcomed as “an important advancement for international protection.” However other groups coming to Europe from Turkey, such as Afghans (29%) and Iraqis (17%) can apply for registration and refugee status determination but their only available durable solution at present is resettlement.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Despite the protection regime for Syrian refugees, there are shortcomings with regard to the prospects to local integration. Syrians are granted temporary protection, but until recently could not apply for work permits. However, in what UNHCR called a major shift of policy, in January 2016 the Turkish Government published new regulations which will allow many of the 2.5 million registered Syrians refugees in the country to apply for work permits. Syrians with permits would have to be paid at least minimum wage, while currently many refugees work illegally and are often paid very low wages, which undermines the Turkish labour market. The regulations will apply both to refugees living in cities and to the 10 per cent housed in Turkish refugee camps. However, the effects of this new regulation are yet to be seen in practice.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Another major issue is access to education. According to Human Rights Watch, more than 400,000 Syrian refugee children living in Turkey are not attending school. Major barriers are the language of instruction, social integration issues, economic hardship and lack of information about the Turkish policy (adopted in September 2014) that formally grants Syrian children access to public schools.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">The EU 3 billion aid package for Turkey, announced at a summit in Brussels on November 29th 2015, could go some way in addressing these issues and improve the lives of refugees in Turkey. The European Commission announced that humanitarian aid, education, labour market integration, health care access, social inclusion and infrastructure projects will be the priority areas for action.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">In the absence of other feasible policy options, the ‘Samson plan’ could at least be considered though. While sending back refugees to Turkey under the current circumstances is far from ideal, it could be argued that the current status quo is even worse.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">First, despite the cold weather and dangerous sea conditions, migrants and refugees continue to arrive in Europe, with almost 83,000 arrivals and over 400 deaths in the first 40 days of 2016. Thousands who survive, face harsh conditions while crossing South-Eastern Europe in winter conditions. As argued by ESI, the present prospect of obtaining protection in Germany is encouraging refugees to take boats and risk their lives on the Aegean Sea. The present plan suggests replacing this situation with an orderly process that would enable refugees to reach Europe without risking their lives and to render the hazardous journey unnecessary. Those supporting this deterrent approach argue that refugees and migrants need to know there is nothing to gain from getting on flimsy boats in tough sea conditions or crossing South-Eastern Europe in winter, before they will stop putting the lives of themselves and their children at risk.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Second, amidst the current, uncontrolled and chaotic influx in Greece of thousands of refugees on a daily basis, there are reports of a disturbing crossover between organised gangs helping to smuggle refugees into the EU and human trafficking gangs exploiting them for sex and slavery. According to Europol at least 10,000 unaccompanied children have disappeared after arriving in Europe. Many are feared to have fallen into the hands of organised trafficking syndicates and there is evidence that some have been sexually exploited. This points to blurring distinctions between migrant smuggling and human trafficking and almost reminds of similar crossovers between the two in other regions in the world, such as Ethiopians in Yemen and Rohingya in Thailand and Malaysia.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Third, throughout the EU, far-right political parties and movements, are on the rise and fuelling anti-migrant and refugee rhetoric, likely as a direct result of the current situation and the way it is handled by European countries. Many of these parties are outspoken anti-Islam and anti-EU. Protests against refugees and migrants are becoming increasingly common in many European countries. In Germany, over 200 refugee homes have been burned or attacked. In the Netherlands, protests against proposed refugee centres turned violent. The European cooperation itself is under strong pressure, with more and more countries questioning free movement, introducing border controls and building fences, pleas for a mini-Schengen zone in North-Western Europe and threats to expel Greece from the Schengen zone.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Finally, the very future of the asylum system is at stake. It is increasingly being argued that the Refugee Convention should be revised, an argument also echoed by the Danish prime minister in January. Senior UNHCR officials quickly warned against this proposal, saying it risks the destruction of ‘a milestone of humanity’. Yet, some voices are even advocating doing away with refugee law and asylum altogether.  </p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Although sending refugees back is far from an ideal solution, the alternative – the current status quo – might thus be even worse. The current status quo and the lack of real solutions actually threaten the asylum system and solidarity with refugees and continue to put the lives of thousands of migrants, including many children, at risk. Opening up the possibility of legal migration for up to 250,000 refugees residing in Turkey on an annual basis through regular channels (resettlement program) could change this situation. However, this will only work when the irregular route is closed.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">At the short term, it might be the least worst option for now. As Germany’s president, Joachim Gauck, said recently: “A limitation strategy may even be both morally and politically necessary in order to preserve the state’s ability to function. If democrats refuse to talk about limits, they leave the field open to populists and xenophobes.” It is, however, essential that sufficient safeguards are put in place, improving the lives of refugees in Turkey, as well as ensuring access to safety for Syrians who are still inside the country and are fleeing the conflict.</p>\r\n<p style="text-align: justify;"> </p>\r\n<p style="text-align: justify;">Although the plan could still be far away from actual implementation, according to Migrant Report, news of the plan might already trigger more arrivals. There is a sensation among many refugees and migrants currently residing in Turkey that European states may shut the gates or at the very minimum change the rules of the game, which could be one of the reasons why an unprecedented number continue to cross the sea in the early months of 2016, despite the winter conditions. The expectation of future tightening of policies, leads to surges of ‘now or never migration’, with a relatively high number of deaths at sea in January and February 2016. If the EU backs the plan, one way to avoid more deaths at sea could be to implement the plan as soon as possible.</p>', '', 1, 2, '2016-03-22 18:47:47', 524, '', '2016-03-23 13:27:08', 524, 0, '0000-00-00 00:00:00', '2016-03-22 18:47:47', '0000-00-00 00:00:00', '{"image_intro":"images\\/Syrian.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 1, '', '', 1, 32, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(5, 39, 'Monthly RMMS Dashboard Maps', 'monthly-rmms-dashboard-maps', '<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" /></span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Regional Mixed Migration Monthly Summaries</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;">The RMMS compiles a summary each month of all relevant movement with statistics, where known, as well as descriptions of political events and policy changes affecting mixed migration in the region. Monthly summaries are available from 2011.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l3 level1 lfo1; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"> <a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/fileadmin/content/monthly%20summaries/RMMS_Monthly_Summary_December_2015.pdf" title="Initiates file download"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">RMMS Monthly Summary December 2015</span></a></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexd5e8.html?id=34" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all Mixed Migration Monthly Summaries</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15pt; vertical-align: baseline; border: none; padding: 0cm; text-align: left;"> </p>\r\n</div>', '', -2, 8, '2016-04-04 12:05:41', 524, '', '2016-04-04 12:13:22', 524, 0, '0000-00-00 00:00:00', '2016-04-04 12:05:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 41, 'Trend Analysis', 'trend-analysis', '<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15pt; vertical-align: baseline; border: none; padding: 0cm; text-align: left;"> </p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15pt; vertical-align: baseline; border: none; padding: 0cm; text-align: left;"><strong style="line-height: 15pt;"><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Tren</span></strong><strong style="line-height: 15pt;"><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">d Analysis</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="font-size: 10.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;">The RMMS tracks the latest trends in terms of political context, national policy and data that have an impact on mixed migration flows within and out of the region. This section offers quarterly trend analysis as well as end of year summaries.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l0 level1 lfo2; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexQ4.html?id=2" title="Regional Mixed Migration 4th Quarter Trend Analysis 2015"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Regional Mixed Migration 4th Quarter Trend Analysis 2015</span></a></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexef73.html?id=33" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all Latest Trends Analyses</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;"> </span></strong></p>\r\n</div>', '', -2, 8, '2016-04-04 12:12:50', 524, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2016-04-04 12:12:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 42, 'Mediawatch', 'mediawatch', '<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;"> </span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">Mediawatch</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="font-size: 10.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;">National, regional and international press cover different aspects of news relating to smuggling, trafficking, refugees and economic migrants in the region. This section offers a monthly review of all articles relevant to mixed migration in the news with easy links to the original presentation.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l5 level1 lfo3; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexmw12.html?id=36&amp;tx_ttnews%5Btt_news%5D=367&amp;cHash=5f6822c3843287a94b0bf04891c415ae" title="Monthly Press Listing December 2015"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;">Monthly Press Listing December 2015</span></a></span></li>\r\n</ul>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><span style="font-size: 8.5pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexf62c.html?id=36" target="_self" title="Opens internal link in current window"><strong><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;">View all Mediawatch articles</span></strong></a></span></p>\r\n<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;"> </div>', '', -2, 8, '2016-04-04 12:18:22', 524, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2016-04-04 12:18:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `rmms_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(8, 43, 'RMMS Research Initiatives', 'rmms-research-initiatives', '<p class="MsoNormal" style="text-align: center; line-height: 12.0pt; vertical-align: baseline;" align="center"><strong style="line-height: 20px; text-align: start;"><span style="font-size: 12.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB; mso-no-proof: yes;"><img src="images/line.gif" width="670" height="5" style="float: left;" /></span></strong></p>\r\n<div style="mso-element: para-border-div; border: none; border-bottom: solid #C5C5C5 1.0pt; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm 0cm 6.0pt 0cm;">\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;"> </span></strong></p>\r\n<p class="MsoNormal" style="margin-bottom: 11.25pt; line-height: 15.0pt; mso-outline-level: 2; vertical-align: baseline; border: none; mso-border-bottom-alt: solid #C5C5C5 .75pt; padding: 0cm; mso-padding-alt: 0cm 0cm 6.0pt 0cm;"><strong><span style="font-size: 12.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #262626; mso-fareast-language: EN-GB;">RMMS Research Initiatives</span></strong></p>\r\n</div>\r\n<p class="MsoNormal" style="margin-bottom: 14.25pt; line-height: 14.25pt; vertical-align: baseline; text-align: justify;"><span style="font-size: 10.0pt; font-family: ''inherit'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; color: #666666; mso-fareast-language: EN-GB;">Research is one of the central pillars of the work of RMMS. This section lists the current and anticipated areas of research as well as past publications. RMMS research projects are also reported under the Publications section of this website.</span></p>\r\n<ul style="margin-top: 0cm;" type="disc">\r\n<li class="MsoNormal" style="color: #666666; margin-bottom: .0001pt; line-height: 14.25pt; mso-list: l2 level1 lfo4; tab-stops: list 36.0pt; vertical-align: baseline;"><span style="font-size: 10.0pt; font-family: ''Helvetica'',''sans-serif''; mso-fareast-font-family: ''Times New Roman''; mso-bidi-font-family: Arial; mso-fareast-language: EN-GB;"><span style="color: #3d3d3d; border: none windowtext 1.0pt; mso-border-alt: none windowtext 0cm; padding: 0cm;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/indexb91e.html?id=61&amp;tx_ttnews%5Btt_news%5D=370&amp;cHash=415e5cd3b4f23c47ea4c1a1bfe993672" title="A Certain Catalyst: an overview of the (mixed) migration and development debate with special focus on the Horn of Africa region: Extended Summary (Printed November 2015/ 36 pages)">A Certain Catalyst: an overview of the (mixed) migration and development debate with special focus on the Horn of Africa region: Extended Summary (Printed November 2015/ 36 page</a></span></span><strong style="font-family: Helvetica, sans-serif; font-size: 8.5pt; line-height: 12pt; text-align: center;"><span style="color: #af151e; border: 1pt none windowtext; padding: 0cm;"><a href="file://vmware-host/Shared%20Folders/Downloads/www.regionalmms.org/index3773.html?id=27" target="_self" title="Opens internal link in current window">View all RMMS Research Initiatives</a></span></strong></li>\r\n</ul>', '', -2, 8, '2016-04-04 12:19:32', 524, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2016-04-04 12:19:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `rmms_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rmms_content_frontpage`
--

INSERT INTO `rmms_content_frontpage` (`content_id`, `ordering`) VALUES
(2, 1),
(3, 3),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_content_rating`
--

CREATE TABLE IF NOT EXISTS `rmms_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `rmms_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_extensions`
--

CREATE TABLE IF NOT EXISTS `rmms_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10048 ;

--
-- Dumping data for table `rmms_extensions`
--

INSERT INTO `rmms_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2012, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2.1","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"12.2","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"3.0.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 0, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 0, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0);
INSERT INTO `rmms_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.0.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Slideshow Pro SP2', 'module', 'mod_slideshow_pro_sp2', '', 0, 1, 0, 0, '{"name":"Slideshow Pro SP2","type":"module","creationDate":"Oct 2010","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2013 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.5.0","description":"SlideShow Pro SP2","group":""}', '{"moduleclass_sfx":"","width":"320","height":"200","content_source":"joomla","catid":"","k2catids":"all","ordering":"a.title","ordering_direction":"ASC","user_id":"0","show_featured":"","max_article":"3","showtitle":"1","titlelinked":"0","showdate":"1","showarticle":"1","showimage":"1","imagelinked":"1","showmore":"1","moretext":"Read More...","titleas":"1","titlelimit":"20","desclimitas":"2","desclimit":"30","thumbratio":"1","thumbwidth":"50","thumbheight":"50","layout":"default","effects":"cover-horizontal-fade","interval":"5000","speed":"1000","transition":"Sine.easeOut","showarrows":"1","itemwidth":"160","itemheight":"160","maxitem":"3","showthumb":"1","mouse_wheel":"1","show_c_title":"1","c_titleas":"0","c_titlelimit":"20","show_c_desc":"1","c_desclimitas":"1","c_desclimit":"30","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'SP Social', 'module', 'mod_sp_social', '', 0, 1, 0, 0, '{"name":"SP Social","type":"module","creationDate":"Oct 2012","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2013 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.0.2","description":"Simple Social Module for joomla 2.5","group":""}', '{"preset":"default","icon_size":"32","rss":"","facebook":"","twitter":"","goggleplus":"","youtube":"","pinterest":"","linkedin":"","flickr":"","picasa":"","myspace":"","digg":"","skype":"","vimeo":"","delicious":"","target":"target=''_blank''","custom_text":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'Content - JExtBOX Social Share Buttons', 'plugin', 'jextboxsocialsharebuttons', 'content', 0, 1, 1, 0, '{"name":"Content - JExtBOX Social Share Buttons","type":"plugin","creationDate":"2011-11-22","author":"Galaa","copyright":"Copyright (C) 2011 Galaa","authorEmail":"contact@galaa.mn","authorUrl":"www.galaa.mn","version":"3.3.0","description":"JExtBOX Social Share Buttons is a plugin that adds social network buttons including Biznetwork.mn (http:\\/\\/biznetwork.mn\\/) on your articles. Copyright (C) 2011 Galaa (www.galaa.mn). All rights reserved. Published by JExtBOX - BOX of Joomla Extensions (www.jextbox.com)","group":""}', '{"categories":["2"],"categories_option":"include","articles":"1,2,3,4,5","articles_option":"include","show_in_full_view":"yes","show_in_featured_view":"no","show_in_category_view":"no","position":"1","main_style":"position:relative; top:-3px;","show_title":"1","title":"Share this post","title_style":"font-weight:bold; color:#999;","displayBiznetworkMN":"1","displayFacebook":"1","displayTwitter":"1","displayGooglePlus":"1","button_style":"border:none; position:relative; top:-7px;","social_tags":"1","social_tag_image":"plugins\\/content\\/jextboxsocialsharebuttons\\/images\\/state_emblem_of_mongolia.png","social_tag_description":"from_metadesc"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'Fade in fade out my text', 'module', 'mod_fade_in_fade_out_my_text', '', 0, 1, 0, 0, '{"name":"Fade in fade out my text","type":"module","creationDate":"January 2013","author":"Gopi.R","copyright":"(C) 2010 - 2013 www.gopiplus.com, LLC. All rights reserved.","authorEmail":"gopiplus@gmail.com","authorUrl":"http:\\/\\/www.gopiplus.com\\/extensions\\/2011\\/09\\/fade-in-fade-out-text-joomla-module\\/","version":"3.0","description":"Fade in fade out my text","group":""}', '{"fifotext_title_1":"Fade in fade out my text","fifotext_link_1":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_2":"Fade in fade out my text","fifotext_link_2":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_3":"Fade in fade out my text","fifotext_link_3":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_4":"Fade in fade out my text","fifotext_link_4":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_5":"Fade in fade out my text","fifotext_link_5":"http:\\/\\/www.gopiplus.com\\/extensions\\/","fifotext_title_6":"Fade in fade out my text","fifotext_link_6":"http:\\/\\/www.gopiplus.com\\/extensions\\/","@spacer":"","fifotext_prefix":"Fadein : ","fifotext_fadein":"0","fifotext_fade":"0","fifotext_fadestep":"3","fifotext_fadewait":"3000"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'SP Tweet', 'module', 'mod_sp_tweet', '', 0, 1, 0, 0, '{"name":"SP Tweet","type":"module","creationDate":"Sep 2012","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2012 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.3.1","description":"Twitter module for Joomla by JoomShaper.com","group":""}', '{"username":"joomshaper","layout_style":"1","tweets":"4","avatar":"1","avatar_width":"48","linked_avatar":"1","linked_search":"1","linked_mention":"1","email_linked":"0","tweet_time":"1","tweet_time_linked":"1","tweet_src":"1","follow_us":"1","target":"_blank","consumer_key":"","consumer_key_secret":"","access_token":"","access_token_secret":"","animation":"none","morph_duration":"300","animation_periodical_time":"8000","moduleclass_sfx":"","cache":"0","module_cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'DJ-Menu', 'module', 'mod_djmenu', '', 0, 1, 0, 0, '{"name":"DJ-Menu","type":"module","creationDate":"April 2014","author":"DJ-Extensions.com","copyright":"Copyright (C) 2012-2014 DJ-Extensions.com, All rights reserved.","authorEmail":"contact@dj-extensions.com","authorUrl":"http:\\/\\/dj-extensions.com","version":"2.0.2","description":"MOD_DJMENU_MODULE_DESC","group":""}', '{"menu":"mainmenu","endLevel":"0","css":"default","select":"0","width":"800","moo":"1","animation_in":"fadeIn","animation_out":"zoomOut","animation_speed":"normal","wrapper":"","delay":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'sigplus', 'package', 'pkg_sigplus', '', 0, 1, 1, 0, '{"name":"sigplus","type":"package","creationDate":"Oct 09, 2015","author":"Levente Hunyadi","copyright":"\\u00a9 2009-2011 Levente Hunyadi. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/hunyadi.info.hu\\/projects\\/sigplus","version":"1.4.3.1","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'Content-TZ Portfolio', 'plugin', 'tz_portfolio', 'content', 0, 0, 1, 0, '{"name":"Content-TZ Portfolio","type":"plugin","creationDate":"November 22th 2012","author":"DuongTVTemPlaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'Content-TZ Portfolio Comment', 'plugin', 'tz_portfolio_comment', 'content', 0, 1, 1, 0, '{"name":"Content-TZ Portfolio Comment","type":"plugin","creationDate":"2012\\/07\\/17","author":"DuongTVTemPlaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 'PLG_TZ_PORTFOLIO_VOTE', 'plugin', 'tz_portfolio_vote', 'content', 0, 1, 1, 0, '{"name":"PLG_TZ_PORTFOLIO_VOTE","type":"plugin","creationDate":"Aug, 09th 2012","author":"DuongTVTemPlaza","copyright":"Copyright (C) 2012 Open Source Matters. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com","version":"2.5.0","description":"PLG_TZ_PORTFOLIO_VOTE_XML_DESCRIPTION","group":""}', '{"display":"0","extra":"1","main":"1","counter":"1","unrated":"1","access":"0","css":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'System-TZ Portfolio', 'plugin', 'tz_portfolio', 'system', 0, 1, 1, 0, '{"name":"System-TZ Portfolio","type":"plugin","creationDate":"November 22th 2012","author":"DuongTVTemPlaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'User-TZ Portfolio', 'plugin', 'tz_portfolio', 'user', 0, 1, 1, 0, '{"name":"User-TZ Portfolio","type":"plugin","creationDate":"November 22th 2012","author":"DuongTVTemPlaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 'plg_search_tz_portfolio_content', 'plugin', 'tz_portfolio_content', 'search', 0, 1, 1, 0, '{"name":"plg_search_tz_portfolio_content","type":"plugin","creationDate":"27th September 2012","author":"DuongTv","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"PLG_SEARCH_TZ_PORTFOLIO_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 'plg_search_tz_portfolio_categories', 'plugin', 'tz_portfolio_categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_tz_portfolio_categories","type":"plugin","creationDate":"27th September 2012","author":"DuongTv","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"PLG_SEARCH_TZ_PORTFOLIO_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'com_tz_portfolio', 'component', 'com_tz_portfolio', '', 1, 1, 0, 0, '{"name":"com_TZ_Portfolio","type":"component","creationDate":"November 22th 2012","author":"DuongTVTemPlaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"TZ Portfolio native for Joomla! 3.0.x","group":""}', '{"tz_portfolio_redirect":"default","layout_type":["masonry","fitRows","straightDown"],"tz_show_filter":"1","tz_article_limit":"10","tz_filter_type":"categories","show_sort":"1","show_layout":"1","tz_column_width":"233","tz_article_intro_limit":"20","tz_timeline_article_limit":"10","show_image":"1","show_image_gallery":"1","show_arrows_image_gallery":"1","image_gallery_slideshow":"1","show_controlNav_image_gallery":"0","image_gallery_pausePlay":"0","image_gallery_pauseOnAction":"1","image_gallery_pauseOnHover":"0","image_gallery_useCSS":"1","image_gallery_slide_direction":"horizontal","image_gallery_amination":"none","image_gallery_animSpeed":"7000","image_gallery_animation_duration":"600","show_video":"1","video_width":"","video_height":"","show_attachments":"1","show_extra_fields":"1","show_comment":"1","show_tags":"1","show_user":"1","show_gender_user":"0","show_email_user":"0","show_url_user":"1","show_description_user":"1","show_limit_box":"0","user_tag_article_limit":"10","show_twitter_button":"1","show_facebook_button":"1","show_google_button":"1","tz_image_xsmall":"100","tz_image_small":"200","tz_image_medium":"400","tz_image_large":"600","tz_image_xlarge":"900","tz_image_gallery_xsmall":"100","tz_image_gallery_small":"200","tz_image_gallery_medium":"400","tz_image_gallery_large":"600","tz_image_gallery_xlarge":"900","tz_catimage_width":"400","tz_user_image_width":"100","article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"1","show_create_date":"1","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"1","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"0","targetb":"0","targetc":"0","float_intro":"right","float_fulltext":"right","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"1","num_links":"0","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"none","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","tz_attach_type":"zip,rar,exe,cab,doc,rtf,xls,ppt,pdf,psd,ai,eps,ps,png,jpe,jpeg,jpg,gif,bmp,ico,tiff,tif,svg,svgz","useCloudZoom":"1","zoomWidth":"","zoomHeight":"","position":"inside","adjustX":"0","adjustY":"0","tint":"","tintOpacity":"0.5","lensOpacity":"0.5","softFocus":"0","smoothMove":"3","showTitle":"1","titleOpacity":"0.5","tz_use_lightbox":"1","tz_lightbox_opacity":"0.1","tz_show_count_comment":"1","tz_use_image_hover":"1","tz_image_timeout":"0.35","tz_timeline_layout":"ajaxButton","tz_timeline_time_type":"month-year","portfolio_image_size":"M","portfolio_image_featured_size":"L","detail_article_image_size":"L","article_leading_image_size":"L","article_secondary_image_size":"M","detail_article_image_gallery_size":"L","article_leading_image_gallery_size":"L","article_secondary_image_gallery_size":"M","article_image_zoom_size":"XL","tz_comment_type":"disqus","tz_show_gmap":"1","tz_gmap_width":"100%","tz_gmap_height":"500","tz_gmap_zoomlevel":"10","tz_gmap_latitude":"20.9815260","tz_gmap_longitude":"105.7890379","tz_gmap_mousewheel_zoom":"0","tz_gallery_item_width":"210px","tz_gallery_item_height":"210px","show_tags_title":"1","disqusSubDomain":"templazatoturials","disqusDevMode":"1","disqusApiSecretKey":"DGBlgtq5QMvrAKQaiLh0yqC9GE82jYIHrF3W43go0rks9UBeiho4sLAYadcMks4x","show_feed_image":"1","feed_image_size":"S","tz_portfolio_layout":"ajaxButton","show_related_article":"1","show_related_heading":"1","show_related_type":"title_image","show_related_featured":"1","related_image_size":"S","related_orderby":"rdate","fields_order":"rid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'mod_tz_portfolio_articles_archive', 'module', 'mod_tz_portfolio_articles_archive', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_archive","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '{"count":"10","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'mod_tz_portfolio_articles_categories', 'module', 'mod_tz_portfolio_articles_categories', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_categories","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '{"show_description":"0","show_children":"0","count":"0","maxlevel":"0","item_heading":"4","owncache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'mod_tz_portfolio_articles_category', 'module', 'mod_tz_portfolio_articles_category', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_category","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","show_child_category_articles":"0","levels":"1","author_filtering_type":"1","author_alias_filtering_type":"1","date_filtering":"off","date_field":"a.created","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","owncache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'mod_tz_portfolio_articles_features', 'module', 'mod_tz_portfolio_articles_features', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_features","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_FEATURES_XML_DESCRIPTION\\n  \\n    <link rel=\\"stylesheet\\" type=\\"text\\/css\\" href=\\"..\\/modules\\/mod_tz_portfolio_articles_features\\/admin\\/stylemodule\\/tz-style-module.css\\" \\/>\\n    \\n  ","group":""}', '{"catid":"","count":"5","tz_show_title":"1","tz_show_introtext":"1","tz_counter":"10","show_tz_image":"1","tz_image_size":"S","readmore":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10039, 'mod_tz_portfolio_articles_latest', 'module', 'mod_tz_portfolio_articles_latest', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_latest","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '{"catid":"","show_title":"1","count":"5","show_featured":"","ordering":"published","user_id":"0","show_image":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'mod_tz_portfolio_articles_news', 'module', 'mod_tz_portfolio_articles_news', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_news","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '{"catid":"","image":"0","item_title":"0","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"5","ordering":"a.publish_up","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'mod_tz_portfolio_articles_popular', 'module', 'mod_tz_portfolio_articles_popular', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_popular","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_POPULAR_XML_DESCRIPTION\\n  \\n    <link rel=\\"stylesheet\\" type=\\"text\\/css\\" href=\\"..\\/modules\\/mod_tz_portfolio_articles_popular\\/admin\\/stylemodule\\/tz-style-module.css\\" \\/>\\n    \\n  ","group":""}', '{"catid":"","count":"5","show_front":"1","tz_show_title":"1","tz_show_introtext":"1","tz_counter":"10","show_tz_image":"1","tz_image_size":"S","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'mod_tz_portfolio_articles_random', 'module', 'mod_tz_portfolio_articles_random', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_articles_random","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"\\n            MOD_TZ_PORTFOLIO_ARTICLES_RANDOM_XML_DESCRIPTION\\n            \\n                <link rel=\\"stylesheet\\" type=\\"text\\/css\\" href=\\"..\\/modules\\/mod_tz_portfolio_articles_popular\\/admin\\/stylemodule\\/tz-style-module.css\\" \\/>\\n            \\n        ","group":""}', '{"catid":"","count":"5","tz_show_title":"1","show_tz_image":"1","tz_image_size":"S","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'mod_tz_portfolio_categories', 'module', 'mod_tz_portfolio_categories', '', 0, 1, 0, 0, '{"name":"mod_tz_portfolio_categories","type":"module","creationDate":"November 22th 2012","author":"DuongTVTemplaza","copyright":"Copyright (C) 2012 TemPlaza. All rights reserved.","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com\\/","version":"3.0.1","description":"MOD_CATEGORIES_XML_DESCRIPTION\\n     \\n    <link rel=\\"stylesheet\\" type=\\"text\\/css\\" href=\\"..\\/modules\\/mod_tz_portfolio_categories\\/admin\\/stylemodule\\/tz-style-module.css\\" \\/>\\n    \\n    ","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'JE LightBox', 'module', 'mod_je_lightbox', '', 0, 1, 0, 0, '{"name":"JE LightBox","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.3","description":"\\n\\t<h1 class=\\"sub-heading\\">JE LightBox Gallery<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/jquery-lightbox-joomla\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<span class=\\"credits\\">Credits: <a href=\\"http:\\/\\/www.jacklmoore.com\\/colorbox\\/\\" target=\\"_blank\\" >ColorBox<\\/a><\\/span>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":""}', '{"jQuery":"1","thumbWidth":"100","thumbHeight":"100","thumbColor":"#999999","thumbBorder":"1px","thumbQuality":"100","thumbAlign":"true"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'Vertical Gallery', 'module', 'mod_vertical_gallery', '', 0, 1, 0, 0, '{"name":"Vertical Gallery","type":"module","creationDate":"2015-03-03","author":"XML\\/SWF","copyright":"All rights reserved by XML\\/SWF 2015","authorEmail":"xmlswf@gmail.com","authorUrl":"http:\\/\\/goresponsive.in","version":"3.2","description":"Vertical Gallery XML component lets you add categories and images under categories","group":""}', '{"@spacer":"","slideshow_width":"700","slideshow_height":"350","showtitle":"1","title_position":"center","title_size":"20","title_color":"FFFFFF","title_background_opacity":"0.5","title_background_color":"682be0","showdesc":"1","desc_size":"18","desc_color":"FFFFFF","desc_background_opacity":"0.5","desc_background_color":"02ad9f","show_image_link":"1","fillmode":"2","action_mode":"1","auto_play":"1","autoplay_interval":"4000","thumbnail_columns":"2","display_thumbs":"4","category_id":"0","includejquery":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'verticalgallery', 'component', 'com_verticalgallery', '', 1, 1, 0, 0, '{"name":"Vertical Gallery","type":"component","creationDate":"March 3rd, 2015","author":"xml\\/swf","copyright":"Copyright (c) 2015 xml\\/swf. All rights reserved.","authorEmail":"info@xmlswf.com","authorUrl":"http:\\/\\/goresponsive.in","version":"3.3","description":"Thank you for installing Vertical Gallery by xml\\/swf.","group":""}', '{"secur_w":"3f79a6ccbd3b29d52b39e9c9c5d93fb4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_filters`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rmms_finder_taxonomy`
--

INSERT INTO `rmms_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_terms`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rmms_finder_terms_common`
--

INSERT INTO `rmms_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_finder_types`
--

CREATE TABLE IF NOT EXISTS `rmms_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_languages`
--

CREATE TABLE IF NOT EXISTS `rmms_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rmms_languages`
--

INSERT INTO `rmms_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_menu`
--

CREATE TABLE IF NOT EXISTS `rmms_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=492 ;

--
-- Dumping data for table `rmms_menu`
--

INSERT INTO `rmms_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 267, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 3, 12, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 4, 5, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 6, 7, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 8, 9, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 10, 11, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 13, 18, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 14, 15, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 16, 17, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 19, 24, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 20, 21, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 22, 23, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 25, 30, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 26, 27, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 28, 29, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 43, 44, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 37, 42, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 38, 39, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 40, 41, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 31, 32, 0, '*', 1),
(201, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 213, 214, 0, '*', 0),
(207, 'top', 'Joomla.org', 'joomlaorg', '', 'joomlaorg', 'http://joomla.org', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 211, 212, 0, '*', 0),
(435, 'mainmenu', 'HOME', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(448, 'usermenu', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 219, 220, 0, '*', 0),
(449, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 215, 216, 0, '*', 0),
(450, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', '', 'submit-a-web-link', 'index.php?option=com_weblinks&view=form&layout=edit', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 217, 218, 0, '*', 0),
(464, 'top', 'Home', 'home', '', 'home', 'index.php?Itemid=', 'alias', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"435","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 205, 206, 0, '*', 0),
(465, 'mainmenu', 'About us', 'about-us', '', 'about-us', '', 'component', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 221, 222, 0, '*', 0),
(466, 'mainmenu', 'About us (2)', 'about-us-2', '', 'about-us-2', 'index.php?option=com_search&view=search&searchword=', 'component', -2, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 223, 224, 0, '*', 0),
(467, 'mainmenu', 'ABOUT US', 'about-us1', '', 'about-us1', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 225, 226, 0, '*', 0),
(468, 'mainmenu', 'COUNTRY/AREA PROFILES', 'country-area-profiles', '', 'country-area-profiles', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 227, 228, 0, '*', 0),
(469, 'mainmenu', 'TRENDS', 'trends', '', 'trends', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 229, 230, 0, '*', 0),
(470, 'mainmenu', 'RESOURCES', 'resources', '', 'resources', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 231, 232, 0, '*', 0),
(471, 'mainmenu', 'MAPS', 'maps', '', 'maps', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 233, 234, 0, '*', 0),
(472, 'mainmenu', 'NEWS', 'news', '', 'news', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 235, 236, 0, '*', 0),
(473, 'mainmenu', 'PUBLICATIONS', 'publications', '', 'publications', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 237, 238, 0, '*', 0),
(474, 'mainmenu', '4MI', '4mi', '', '4mi', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 239, 240, 0, '*', 0),
(475, 'mainmenu', 'LINKS', 'links', '', 'links', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 241, 242, 0, '*', 0),
(476, 'mainmenu', 'CONTACT US', 'contact-us', '', 'contact-us', 'index.php?option=com_search&view=search&searchword=', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"search_areas":"","show_date":"","searchphrase":"0","ordering":"newest","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 243, 244, 0, '*', 0),
(477, 'main', 'TZ_Portfolio', 'tz-portfolio', '', 'tz-portfolio', 'index.php?option=com_tz_portfolio', 'component', 0, 1, 1, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 245, 258, 0, '', 1),
(478, 'main', 'Fields', 'fields', '', 'tz-portfolio/fields', 'index.php?option=com_tz_portfolio&view=fields', 'component', 0, 477, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 246, 247, 0, '', 1),
(479, 'main', 'Fields_Group', 'fields-group', '', 'tz-portfolio/fields-group', 'index.php?option=com_tz_portfolio&view=fieldsgroup', 'component', 0, 477, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 248, 249, 0, '', 1),
(480, 'main', 'Categories', 'categories', '', 'tz-portfolio/categories', 'index.php?option=com_tz_portfolio&view=categories', 'component', 0, 477, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 250, 251, 0, '', 1),
(481, 'main', 'Articles', 'articles', '', 'tz-portfolio/articles', 'index.php?option=com_tz_portfolio&view=articles', 'component', 0, 477, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 252, 253, 0, '', 1),
(482, 'main', 'Tags', 'tags', '', 'tz-portfolio/tags', 'index.php?option=com_tz_portfolio&view=tags', 'component', 0, 477, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 254, 255, 0, '', 1),
(483, 'main', 'Users', 'users', '', 'tz-portfolio/users', 'index.php?option=com_tz_portfolio&view=users', 'component', 0, 477, 2, 10034, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 256, 257, 0, '', 1),
(488, 'main', 'Vertical Gallery', 'vertical-gallery', '', 'vertical-gallery', 'index.php?option=com_verticalgallery', 'component', 0, 1, 1, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 259, 266, 0, '', 1),
(489, 'main', 'Pictures', 'pictures', '', 'vertical-gallery/pictures', 'index.php?option=com_verticalgallery', 'component', 0, 488, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 260, 261, 0, '', 1),
(490, 'main', 'Categories', 'categories', '', 'vertical-gallery/categories', 'index.php?option=com_verticalgallery&controller=categories', 'component', 0, 488, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 262, 263, 0, '', 1),
(491, 'main', 'Multi Upload', 'multi-upload', '', 'vertical-gallery/multi-upload', 'index.php?option=com_verticalgallery&controller=multiup', 'component', 0, 488, 2, 10047, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 264, 265, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_menu_types`
--

CREATE TABLE IF NOT EXISTS `rmms_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rmms_menu_types`
--

INSERT INTO `rmms_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged-in Users');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_messages`
--

CREATE TABLE IF NOT EXISTS `rmms_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `rmms_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_modules`
--

CREATE TABLE IF NOT EXISTS `rmms_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `rmms_modules`
--

INSERT INTO `rmms_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 'My Recently Added Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 2, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"by_me","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 2, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(9, 'Quick Links', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 2, 1, '{"context":"mod_quickicon","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","automatic_title":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 2, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 2, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 2, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 2, 1, '', 1, '*'),
(16, 'Login Form', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Protostar-no"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(19, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"usermenu","active":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(27, 'Archived Articles', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Latest Article', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["2"],"count":"5","show_featured":"1","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"System-table"}', 0, '*'),
(29, 'Articles Most Read', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"catid":["26","29"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Feed Display', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'News Flash', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Random Image', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_random_image', 1, 0, '{"type":"jpg","folder":"images\\/headers","link":"","width":"","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(34, 'Articles Related Items', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Search', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(36, 'Statistics', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 'Users Latest', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Who''s Online', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"2","layout":"_:default","moduleclass_sfx":"","cache":"0","filter_groups":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(40, 'Wrapper', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","frameborder":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(41, 'Footer', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(48, 'Image Module', '', '<table class="MsoTableGrid" style="border-collapse: collapse; border: none; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: none; mso-border-insidev: none;" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 13.75pt;">\r\n<td style="width: 184.25pt; background: #C00000; padding: 0cm 5.4pt 0cm 5.4pt; height: 13.75pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 150%;"><span style="font-size: 10.0pt; line-height: 150%; color: white; mso-themecolor: background1;" lang="EN-US">RMMS DASHBOARD MAPS</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 1; height: 134.8pt;">\r\n<td style="width: 184.25pt; background: #CACCCD; padding: 0cm 5.4pt 0cm 5.4pt; height: 134.8pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"><img src="images/sliding/DashboardMapFeb2016.jpg" width="453" height="638" /></span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 2; height: 12.95pt;">\r\n<td style="width: 184.25pt; padding: 0cm 5.4pt; height: 12.95pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 3; height: 13.75pt;">\r\n<td style="width: 184.25pt; background: #ECF8D5; padding: 0cm 5.4pt 0cm 5.4pt; height: 13.75pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 4; height: 12.95pt;">\r\n<td style="width: 184.25pt; background: #C00000; padding: 0cm 5.4pt 0cm 5.4pt; height: 12.95pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 150%;"><span style="font-size: 10.0pt; line-height: 150%; color: white; mso-themecolor: background1;" lang="EN-US">VOICES ON THE MOVE</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 5; height: 135.1pt;">\r\n<td style="width: 184.25pt; background: #CACCCD; padding: 0cm 5.4pt 0cm 5.4pt; height: 135.1pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> <img src="images/sliding/voicesonmove.jpg" width="272" height="170" /></span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US">"In Ethiopia, I was unable to find a job and feed my family." Click here for more.</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 6; height: 12.95pt;">\r\n<td style="width: 184.25pt; padding: 0cm 5.4pt; height: 12.95pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 7; height: 12.95pt;">\r\n<td style="width: 184.25pt; background: #ECF8D5; padding: 0cm 5.4pt 0cm 5.4pt; height: 12.95pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 8; height: 12.95pt;">\r\n<td style="width: 184.25pt; background: #C00000; padding: 0cm 5.4pt 0cm 5.4pt; height: 12.95pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 150%;"><span style="font-size: 10.0pt; line-height: 150%; color: white; mso-themecolor: background1;" lang="EN-US">LINKS:THINK TANKS &amp; ACADEMIA</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 9; height: 148.75pt;">\r\n<td style="width: 184.25pt; background: #CACCCD; padding: 0cm 5.4pt 0cm 5.4pt; height: 148.75pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span><span style="color: #666666; font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 19px;">Below you can find a short list of think tanks,academic institutions and statistical sources. </span></p>\r\n<ul style="border: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 13px; margin: 0px 0px 1.5em 20px; outline: 0px; padding: 0px; vertical-align: baseline; list-style-position: initial; list-style-image: initial; color: #666666; line-height: 19px;">\r\n<li><a class="external-link-new-window" href="http://www.unhcr.org/pages/49e45a846.html" target="_blank" title="Opens external link in new window" style="border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3d3d3d;">UNHCR: Refugees in the Horn of Africa</a></li>\r\n<li><a class="external-link-new-window" href="http://jrs.oxfordjournals.org/" target="_blank" title="Opens external link in new window" style="border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3d3d3d;">Oxford Journal of Refugees Studies UK</a></li>\r\n<li><a class="external-link-new-window" href="http://www.globaleconomicgovernance.org/research/migration" target="_blank" title="Opens external link in new window" style="border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3d3d3d;">Global Migration Governance project</a></li>\r\n<li><a class="external-link-new-window" href="http://www.imi.ox.ac.uk/" target="_blank" title="Opens external link in new window" style="border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3d3d3d;">International Migration Institute</a></li>\r\n<li><a class="external-link-new-window" href="http://www.humanitarianfutures.org/about" target="_blank" title="Opens external link in new window" style="border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3d3d3d;">The Humanitarian Futures Programme</a></li>\r\n<li><a class="external-link-new-window" href="http://www.fmreview.org/" target="_blank" title="Opens external link in new window" style="border: 0px; font-family: inherit; font-style: inherit; font-weight: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: #3d3d3d;">Forced Migration Review</a><span style="line-height: 1.3em; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px;"> </span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 10; height: 12.95pt;">\r\n<td style="width: 184.25pt; padding: 0cm 5.4pt; height: 12.95pt; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 11; height: 12.95pt;">\r\n<td style="width: 184.25pt; background: #ECF8D5; padding: 0cm 5.4pt 0cm 5.4pt; height: 12.95pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 12; height: 12.95pt;">\r\n<td style="width: 184.25pt; background: #C00000; padding: 0cm 5.4pt 0cm 5.4pt; height: 12.95pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: .0001pt; line-height: 150%;"><span style="font-size: 10.0pt; line-height: 150%; color: white; mso-themecolor: background1;" lang="EN-US">TAKE ACTION!</span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 13; height: 12.95pt;">\r\n<td style="width: 184.25pt; background: #CACCCD; padding: 0cm 5.4pt 0cm 5.4pt; height: 12.95pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> RMMS is a member of the International Detention Coalition and encourages readers to join their global campaign to...</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"><img src="images/sliding/Campaign.jpg" /></span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="mso-yfti-irow: 14; mso-yfti-lastrow: yes; height: 12.95pt;">\r\n<td style="width: 184.25pt; background: #ECF8D5; padding: 0cm 5.4pt 0cm 5.4pt; height: 12.95pt;" width="246">\r\n<p class="MsoNormal" style="margin-bottom: 0.0001pt;"><span lang="EN-US"> </span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"Protostar-no"}', 0, '*'),
(49, 'Weblinks', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Breadcrumbs', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(56, 'Banners', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"0","catid":[""],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(61, 'Articles Categories', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(62, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Search', '', '', 2, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"Search","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(64, 'Language Switcher', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"1","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(69, 'Articles Category', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(84, 'Smart Search Module', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 2, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Slideshow Pro SP2', '', '', 3, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_slideshow_pro_sp2', 1, 1, '{"moduleclass_sfx":"","width":"900","height":"400","content_source":"joomla","ordering":"a.title","ordering_direction":"ASC","user_id":"0","show_featured":"1","max_article":"3","showtitle":"1","titlelinked":"1","showdate":"1","showarticle":"1","showimage":"1","imagelinked":"1","showmore":"1","moretext":"Read More...","titleas":"2","titlelimit":"20","desclimitas":"2","desclimit":"30","thumbratio":"1","thumbwidth":"113","thumbheight":"75","layout":"movie","effects":"cover-inplace-fade","interval":"5000","speed":"1000","transition":"Sine.easeOut","showarrows":"0","itemwidth":"230","itemheight":"99","maxitem":"3","showthumb":"1","mouse_wheel":"1","show_c_title":"1","c_titleas":"1","c_titlelimit":"55","show_c_desc":"0","c_desclimitas":"1","c_desclimit":"30","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 'SP Social', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sp_social', 1, 1, '{"preset":"default","icon_size":"16","rss":"","facebook":"Regional-Mixed-Migration-Secretariat\\/340345125990000","twitter":"Mixed_Migration","goggleplus":"","youtube":"","pinterest":"","linkedin":"","flickr":"","picasa":"","myspace":"","digg":"","skype":"","vimeo":"","delicious":"","target":"target=''_blank''","custom_text":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 'Fade in fade out my text', '', '', 2, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_fade_in_fade_out_my_text', 1, 0, '{"fifotext_title_1":"UNHCR warns against perilous Horn of Africa sea crossings","fifotext_link_1":"http:\\/\\/www.unhcr.org\\/569e3b19530.html","fifotext_title_2":"UNHCR warns against perilous Horn of Africa sea crossings","fifotext_link_2":"http:\\/\\/www.unhcr.org\\/569e3b19530.html","fifotext_title_3":"UNHCR warns against perilous Horn of Africa sea crossings","fifotext_link_3":"http:\\/\\/www.unhcr.org\\/569e3b19530.html","fifotext_title_4":"IMF proposes prickly solutions for Europes refugee challenges","fifotext_link_4":"http:\\/\\/www.euronews.com\\/2016\\/01\\/21\\/imf-proposes-prickly-solutions-for-europe-s-refugee-challenges","fifotext_title_5":"IMF proposes prickly solutions for Europes refugee challenges","fifotext_link_5":"http:\\/\\/www.euronews.com\\/2016\\/01\\/21\\/imf-proposes-prickly-solutions-for-europe-s-refugee-challenges","fifotext_title_6":"IMF proposes prickly solutions for Europes refugee challenges","fifotext_link_6":"http:\\/\\/www.euronews.com\\/2016\\/01\\/21\\/imf-proposes-prickly-solutions-for-europe-s-refugee-challenges","fifotext_prefix":"LATEST NEWS : ","fifotext_fadein":"0","fifotext_fade":"0","fifotext_fadestep":"3","fifotext_fadewait":"3000","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"System-xhtml"}', 0, '*'),
(91, 'SP Tweet', '', '', 1, 'position-14', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sp_tweet', 1, 1, '{"username":"Mixed_Migration","layout_style":"default","tweets":"4","avatar":"1","avatar_width":"48","linked_avatar":"1","linked_search":"1","linked_mention":"1","email_linked":"0","tweet_time":"1","tweet_time_linked":"1","tweet_src":"1","follow_us":"1","target":"_blank","consumer_key":"","consumer_key_secret":"","access_token":"","access_token_secret":"","animation":"none","morph_duration":"300","animation_periodical_time":"8000","moduleclass_sfx":"","cache":"0","module_cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 'DJ-Menu', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djmenu', 1, 1, '{"menu":"mainmenu","endLevel":"0","css":"default","select":"0","width":"900","moo":"1","animation_in":"fadeIn","animation_out":"fadeOut","animation_speed":"normal","wrapper":"","delay":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 'DJ-Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_djmenu', 1, 1, '{"menu":"mainmenu","endLevel":"0","css":"default","select":"0","width":"800","moo":"1","animation_in":"fadeIn","animation_out":"fadeOut","animation_speed":"normal","wrapper":"","delay":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 'mod_tz_portfolio_articles_archive', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_archive', 1, 1, '', 0, '*'),
(106, 'mod_tz_portfolio_articles_categories', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_categories', 1, 1, '', 0, '*'),
(107, 'mod_tz_portfolio_articles_category', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_category', 1, 1, '', 0, '*'),
(108, ' TZ Portfolio Feature Article', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_features', 1, 1, '', 0, '*'),
(109, 'mod_tz_portfolio_articles_latest', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_latest', 1, 1, '', 0, '*'),
(110, 'mod_tz_portfolio_articles_news', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_news', 1, 1, '', 0, '*'),
(111, 'mod_tz_portfolio_articles_popular', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_popular', 1, 1, '', 0, '*'),
(112, 'mod_tz_portfolio_articles_random', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_articles_random', 1, 1, '', 0, '*'),
(113, 'mod_tz_portfolio_categories', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tz_portfolio_categories', 1, 1, '', 0, '*'),
(114, 'JE LightBox', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_je_lightbox', 1, 1, '{"jQuery":"1","imageFolder":"gallery","thumbWidth":"43","thumbHeight":"43","thumbColor":"#999999","thumbBorder":"1px","thumbQuality":"100","thumbAlign":"b","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 'Info', '', '<div style="background-color: #cacccd;">\r\n<p> </p>\r\n<table class="MsoNormalTable" style="width: 947px; border-collapse: collapse; border: none; height: 334px;" width="1075" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 150.25pt; border: dashed #BBBBBB 0pt; mso-border-alt: dashed #BBBBBB 0pt; padding: 0cm 5.4pt 0cm 5.4pt;" valign="top" width="200">\r\n<p class="MsoNormal" style="margin-right: 12pt; margin-left: 12pt; margin-bottom: 0.0001pt;"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif;"> <img src="images/RMMSLOGO.png" width="331" height="100" /><!--[if gte vml 1]><v:shapetype id="_x0000_t75"\r\n   coordsize="21600,21600" o:spt="75" o:preferrelative="t" path="m@4@5l@4@11@9@11@9@5xe"\r\n   filled="f" stroked="f">\r\n   <v:stroke joinstyle="miter"/>\r\n   <v:formulas>\r\n    <v:f eqn="if lineDrawn pixelLineWidth 0"/>\r\n    <v:f eqn="sum @0 1 0"/>\r\n    <v:f eqn="sum 0 0 @1"/>\r\n    <v:f eqn="prod @2 1 2"/>\r\n    <v:f eqn="prod @3 21600 pixelWidth"/>\r\n    <v:f eqn="prod @3 21600 pixelHeight"/>\r\n    <v:f eqn="sum @0 0 1"/>\r\n    <v:f eqn="prod @6 1 2"/>\r\n    <v:f eqn="prod @7 21600 pixelWidth"/>\r\n    <v:f eqn="sum @8 21600 0"/>\r\n    <v:f eqn="prod @7 21600 pixelHeight"/>\r\n    <v:f eqn="sum @10 21600 0"/>\r\n   </v:formulas>\r\n   <v:path o:extrusionok="f" gradientshapeok="t" o:connecttype="rect"/>\r\n   <o:lock v:ext="edit" aspectratio="t"/>\r\n  </v:shapetype><v:shape id="Picture_x0020_3" o:spid="_x0000_i1027" type="#_x0000_t75"\r\n   alt="http://localhost/images/RMMS%20LOGO.gif" style=''width:210.75pt;\r\n   height:63.75pt;visibility:visible;mso-wrap-style:square''>\r\n   <v:imagedata src="file:///C:\\Users\\ERICKO~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.gif"\r\n    o:title="RMMS%20LOGO"/>\r\n  </v:shape><![endif]--><!--[if !vml]--><!--[endif]--></span></p>\r\n</td>\r\n<td style="width: 150.25pt; border: dashed #BBBBBB 0pt; border-left: none; mso-border-left-alt: dashed #BBBBBB 0pt; mso-border-alt: dashed #BBBBBB .75pt; padding: 0cm 5.4pt 0cm 5.4pt;" valign="top" width="200">\r\n<p class="MsoNormal" style="margin-right: 12pt; margin-left: 12pt; margin-bottom: 0.0001pt;"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif;"> <img src="images/EU.png" width="64" height="64" style="display: block; margin-left: auto; margin-right: auto;" /><!--[endif]--></span></p>\r\n</td>\r\n<td style="width: 150.3pt; border: dashed #BBBBBB 0pt; border-left: none; mso-border-left-alt: dashed #BBBBBB 0pt; mso-border-alt: dashed #BBBBBB .75pt; padding: 0cm 5.4pt 0cm 5.4pt;" valign="top" width="200">\r\n<p class="MsoNormal" style="margin-right: 12pt; margin-left: 12pt; margin-bottom: 0.0001pt;"><span style="font-size: 12pt; font-family: ''Times New Roman'', serif;"> <img src="images/SDC.png" width="385" height="64" /><!--[endif]--></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 150.25pt; border: dashed #BBBBBB 0pt; border-top: none; mso-border-top-alt: dashed #BBBBBB .75pt; mso-border-alt: dashed #BBBBBB .75pt; padding: 0cm 5.4pt 0cm 5.4pt;" valign="top" width="200">\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><strong><span style="color: #c00000; font-family: ''Times New Roman'', serif; font-size: 12pt; line-height: 1.3em;">RMMS</span></strong></p>\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; color: #c00000; mso-fareast-language: EN-GB;">DRC Horn of Africa &amp; Yemen</span></p>\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; color: #c00000; mso-fareast-language: EN-GB;">Lower Kabete Road</span></p>\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; color: #c00000; mso-fareast-language: EN-GB;">(Ngecha Road Junction)</span></p>\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; color: #c00000; mso-fareast-language: EN-GB;">P.O.Box 14762, 00800</span></p>\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; color: #c00000; mso-fareast-language: EN-GB;">Westlands, Nairobi, Kenya</span></p>\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; color: #c00000; mso-fareast-language: EN-GB;">Tel: (0)20 418 0403/4/5 (switchboard)</span></p>\r\n<p class="MsoNormal" style="margin-right: 6pt; margin-left: 6pt;"><span style="font-size: 12.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; color: #c00000; mso-fareast-language: EN-GB;">info@regionalmms.org</span></p>\r\n</td>\r\n<td style="width: 300.55pt; border-top: none; border-left: none; border-bottom: dashed #BBBBBB 0pt; border-right: dashed #BBBBBB 0pt; mso-border-top-alt: dashed #BBBBBB .75pt; mso-border-left-alt: dashed #BBBBBB 0pt; mso-border-alt: dashed #BBBBBB 0pt; padding: 0cm 5.4pt 0cm 5.4pt;" colspan="2" valign="top" width="401">\r\n<p class="MsoNormal" style="margin: 6pt;"><span style="font-size: 7.5pt; font-family: Verdana, sans-serif;"><span style="color: #c00000; font-family: ''Times New Roman'', serif; font-size: 16px;">The RMMS is primarily funded by the European Union Commission and the Swiss Agency for Cooperation and Development (SDC) with support from other donors.</span></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 5, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 'Vertical Gallery', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vertical_gallery', 1, 0, '{"slideshow_width":"600","slideshow_height":"350","showtitle":"0","title_position":"center","title_size":"12","title_color":"cacccd","title_background_opacity":"0.5","title_background_color":"bc2f34","showdesc":"0","desc_size":"18","desc_color":"FFFFFF","desc_background_opacity":"0.5","desc_background_color":"02ad9f","show_image_link":"1","fillmode":"2","action_mode":"1","auto_play":"1","autoplay_interval":"4000","thumbnail_columns":"1","display_thumbs":"4","category_id":"0","includejquery":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"Protostar-no"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_modules_menu`
--

CREATE TABLE IF NOT EXISTS `rmms_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rmms_modules_menu`
--

INSERT INTO `rmms_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(19, 0),
(28, 0),
(33, 0),
(48, 0),
(63, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(90, 0),
(91, 0),
(93, 0),
(94, 0),
(114, 0),
(115, 0),
(116, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `rmms_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_overrider`
--

CREATE TABLE IF NOT EXISTS `rmms_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_redirect_links`
--

CREATE TABLE IF NOT EXISTS `rmms_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rmms_redirect_links`
--

INSERT INTO `rmms_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/index.php?Itemid=468', '', 'http://localhost/', '', 2, 0, '2016-04-07 08:01:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_schemas`
--

CREATE TABLE IF NOT EXISTS `rmms_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rmms_schemas`
--

INSERT INTO `rmms_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_session`
--

CREATE TABLE IF NOT EXISTS `rmms_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rmms_session`
--

INSERT INTO `rmms_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('ui3chsrvunk1o8p8hrc7grvro2', 0, 1, '1461324159', '__default|a:8:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1461324131;s:18:"session.timer.last";i:1461324131;s:17:"session.timer.now";i:1461324157;s:22:"session.client.browser";s:102:"Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"4bdb011ded84987ad55eea1c618e476c";}', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_template_styles`
--

CREATE TABLE IF NOT EXISTS `rmms_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rmms_template_styles`
--

INSERT INTO `rmms_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"#bc2f34","templateBackgroundColor":"#ecf8d5","logoFile":"images\\/RMMSLOGO.png","sitetitle":"solid 1px ","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#b0262c","headerColor":"#b0c6a7","logoFile":"images\\/RMMSLOGO.png","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentid` int(11) NOT NULL,
  `fieldsid` int(11) NOT NULL,
  `value` text NOT NULL,
  `images` text NOT NULL,
  `imagetitle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_categories`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `images` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_fields`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `default_value` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_fields_group`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_fields_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_tags`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_tags_xref`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagsid` int(11) NOT NULL,
  `contentid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_users`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usersid` int(11) NOT NULL,
  `images` text NOT NULL,
  `url` text NOT NULL,
  `gender` varchar(3) NOT NULL,
  `twitter` text NOT NULL,
  `facebook` text NOT NULL,
  `google_one` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_vote`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_vote` (
  `content_id` int(11) NOT NULL,
  `extra_id` int(11) NOT NULL,
  `lastip` varchar(50) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_count` int(11) NOT NULL,
  KEY `extravote_idx` (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_xref`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldsid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_tz_portfolio_xref_content`
--

CREATE TABLE IF NOT EXISTS `rmms_tz_portfolio_xref_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contentid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `images` text NOT NULL,
  `images_hover` text NOT NULL,
  `gallery` text NOT NULL,
  `video` text NOT NULL,
  `type` varchar(25) NOT NULL,
  `imagetitle` varchar(255) NOT NULL,
  `gallerytitle` text NOT NULL,
  `videotitle` text NOT NULL,
  `videothumb` text NOT NULL,
  `attachfiles` text NOT NULL,
  `attachtitle` text NOT NULL,
  `attachold` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_updates`
--

CREATE TABLE IF NOT EXISTS `rmms_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_update_sites`
--

CREATE TABLE IF NOT EXISTS `rmms_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rmms_update_sites`
--

INSERT INTO `rmms_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0),
(4, 'SP Tweet', 'extension', 'http://www.joomshaper.com/updates/mod_sp_tweet.xml', 1, 0),
(6, 'DJ-Menu Module', 'extension', 'http://dj-extensions.com/updates/djmenu.xml', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `rmms_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `rmms_update_sites_extensions`
--

INSERT INTO `rmms_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10006),
(6, 10008);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_usergroups`
--

CREATE TABLE IF NOT EXISTS `rmms_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `rmms_usergroups`
--

INSERT INTO `rmms_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_users`
--

CREATE TABLE IF NOT EXISTS `rmms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=526 ;

--
-- Dumping data for table `rmms_users`
--

INSERT INTO `rmms_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(524, 'Super User', 'admin', 'eryket@gmail.com', '1af061622bee9413f306d939a1ee6f1c:qkQJwvHePM5Kqp5HnXJJRRimRTZDZUL9', 0, 1, '2016-03-22 17:55:03', '2016-04-22 06:45:55', '0', '', '0000-00-00 00:00:00', 0),
(525, 'Charles Mulingi', 'charles', 'cmulingi@regionalmms.org', '4ef416ce1ffe05e9fa484c4a8c28fd66:eY2pVLhUqBvpTCmNBGnzm0r046CJFDje', 0, 0, '2016-04-22 05:11:19', '2016-04-22 05:47:11', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_user_notes`
--

CREATE TABLE IF NOT EXISTS `rmms_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rmms_user_profiles`
--

CREATE TABLE IF NOT EXISTS `rmms_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `rmms_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `rmms_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rmms_user_usergroup_map`
--

INSERT INTO `rmms_user_usergroup_map` (`user_id`, `group_id`) VALUES
(524, 8),
(525, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_verticalgallery`
--

CREATE TABLE IF NOT EXISTS `rmms_verticalgallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(8) unsigned NOT NULL,
  `ordnum` int(11) unsigned NOT NULL,
  `publish` int(2) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `altthumb` varchar(255) NOT NULL,
  `altlarge` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `linkname` varchar(255) NOT NULL,
  `linkit` varchar(255) NOT NULL,
  `targetw` varchar(255) NOT NULL,
  `reg_price` varchar(255) NOT NULL,
  `dis_price` varchar(255) NOT NULL,
  `medfld` int(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `rmms_verticalgallery`
--

INSERT INTO `rmms_verticalgallery` (`id`, `catid`, `ordnum`, `publish`, `name`, `descr`, `altthumb`, `altlarge`, `thumb`, `image`, `linkname`, `linkit`, `targetw`, `reg_price`, `dis_price`, `medfld`) VALUES
(17, 1, 5, 1, 'poster5', 'poster5', 'thumb_poster5', 'poster5', 'thumb_poster5.jpg', 'poster5.jpg', '', '', '', '0', '0', 1),
(16, 1, 4, 1, 'poster4', 'poster4', 'thumb_poster4', 'poster4', 'thumb_poster4.jpg', 'poster4.jpg', '', '', '', '0', '0', 1),
(15, 1, 3, 1, 'poster3', 'poster3', 'thumb_poster3', 'poster3', 'thumb_poster3.jpg', 'poster3.jpg', '', '', '', '0', '0', 1),
(13, 1, 1, 1, 'poster1', 'poster1', 'thumb_poster1', 'poster1', 'thumb_poster1.jpg', 'poster1.jpg', '', '', '', '0', '0', 1),
(14, 1, 2, 1, 'poster2', 'poster2', 'thumb_poster2', 'poster2', 'thumb_poster2.jpg', 'poster2.jpg', '', '', '', '0', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rmms_verticalgalleryc`
--

CREATE TABLE IF NOT EXISTS `rmms_verticalgalleryc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordnum` int(11) unsigned NOT NULL,
  `publish` int(2) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `descr` text NOT NULL,
  `altthumb` varchar(255) NOT NULL,
  `altlarge` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `linkname` varchar(255) NOT NULL,
  `linkit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rmms_verticalgalleryc`
--

INSERT INTO `rmms_verticalgalleryc` (`id`, `ordnum`, `publish`, `name`, `descr`, `altthumb`, `altlarge`, `thumb`, `image`, `linkname`, `linkit`) VALUES
(1, 1, 1, 'Test', '', '', '', 'noimage_thumb.jpg', 'noimage.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_viewlevels`
--

CREATE TABLE IF NOT EXISTS `rmms_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rmms_viewlevels`
--

INSERT INTO `rmms_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Table structure for table `rmms_weblinks`
--

CREATE TABLE IF NOT EXISTS `rmms_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
