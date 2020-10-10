-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 09:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sizzler`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-25 16:49:10', '2020-09-25 16:49:10', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S',
  `id` int(11) NOT NULL,
  `profile` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` int(11) NOT NULL DEFAULT 0,
  `last_activity` int(11) NOT NULL DEFAULT 0,
  `followup_step` tinyint(4) NOT NULL DEFAULT 0,
  `followup_time` bigint(20) NOT NULL DEFAULT 0,
  `followup` tinyint(4) NOT NULL DEFAULT 0,
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `feed_time` bigint(20) NOT NULL DEFAULT 0,
  `feed` tinyint(4) NOT NULL DEFAULT 0,
  `referrer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT 0,
  `http_referer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `geo` tinyint(4) NOT NULL DEFAULT 0,
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `region` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bounce_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bounce_time` int(11) NOT NULL DEFAULT 0,
  `unsub_email_id` int(11) NOT NULL DEFAULT 0,
  `unsub_time` int(11) NOT NULL DEFAULT 0,
  `list_1` tinyint(4) NOT NULL DEFAULT 0,
  `list_2` tinyint(4) NOT NULL DEFAULT 0,
  `list_3` tinyint(4) NOT NULL DEFAULT 0,
  `list_4` tinyint(4) NOT NULL DEFAULT 0,
  `list_5` tinyint(4) NOT NULL DEFAULT 0,
  `list_6` tinyint(4) NOT NULL DEFAULT 0,
  `list_7` tinyint(4) NOT NULL DEFAULT 0,
  `list_8` tinyint(4) NOT NULL DEFAULT 0,
  `list_9` tinyint(4) NOT NULL DEFAULT 0,
  `list_10` tinyint(4) NOT NULL DEFAULT 0,
  `list_11` tinyint(4) NOT NULL DEFAULT 0,
  `list_12` tinyint(4) NOT NULL DEFAULT 0,
  `list_13` tinyint(4) NOT NULL DEFAULT 0,
  `list_14` tinyint(4) NOT NULL DEFAULT 0,
  `list_15` tinyint(4) NOT NULL DEFAULT 0,
  `list_16` tinyint(4) NOT NULL DEFAULT 0,
  `list_17` tinyint(4) NOT NULL DEFAULT 0,
  `list_18` tinyint(4) NOT NULL DEFAULT 0,
  `list_19` tinyint(4) NOT NULL DEFAULT 0,
  `list_20` tinyint(4) NOT NULL DEFAULT 0,
  `list_21` tinyint(4) NOT NULL DEFAULT 0,
  `list_22` tinyint(4) NOT NULL DEFAULT 0,
  `list_23` tinyint(4) NOT NULL DEFAULT 0,
  `list_24` tinyint(4) NOT NULL DEFAULT 0,
  `list_25` tinyint(4) NOT NULL DEFAULT 0,
  `list_26` tinyint(4) NOT NULL DEFAULT 0,
  `list_27` tinyint(4) NOT NULL DEFAULT 0,
  `list_28` tinyint(4) NOT NULL DEFAULT 0,
  `list_29` tinyint(4) NOT NULL DEFAULT 0,
  `list_30` tinyint(4) NOT NULL DEFAULT 0,
  `list_31` tinyint(4) NOT NULL DEFAULT 0,
  `list_32` tinyint(4) NOT NULL DEFAULT 0,
  `list_33` tinyint(4) NOT NULL DEFAULT 0,
  `list_34` tinyint(4) NOT NULL DEFAULT 0,
  `list_35` tinyint(4) NOT NULL DEFAULT 0,
  `list_36` tinyint(4) NOT NULL DEFAULT 0,
  `list_37` tinyint(4) NOT NULL DEFAULT 0,
  `list_38` tinyint(4) NOT NULL DEFAULT 0,
  `list_39` tinyint(4) NOT NULL DEFAULT 0,
  `list_40` tinyint(4) NOT NULL DEFAULT 0,
  `profile_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_9` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_newsletter`
--

INSERT INTO `wp_newsletter` (`name`, `email`, `token`, `language`, `status`, `id`, `profile`, `created`, `updated`, `last_activity`, `followup_step`, `followup_time`, `followup`, `surname`, `sex`, `feed_time`, `feed`, `referrer`, `ip`, `wp_user_id`, `http_referer`, `geo`, `country`, `region`, `city`, `bounce_type`, `bounce_time`, `unsub_email_id`, `unsub_time`, `list_1`, `list_2`, `list_3`, `list_4`, `list_5`, `list_6`, `list_7`, `list_8`, `list_9`, `list_10`, `list_11`, `list_12`, `list_13`, `list_14`, `list_15`, `list_16`, `list_17`, `list_18`, `list_19`, `list_20`, `list_21`, `list_22`, `list_23`, `list_24`, `list_25`, `list_26`, `list_27`, `list_28`, `list_29`, `list_30`, `list_31`, `list_32`, `list_33`, `list_34`, `list_35`, `list_36`, `list_37`, `list_38`, `list_39`, `list_40`, `profile_1`, `profile_2`, `profile_3`, `profile_4`, `profile_5`, `profile_6`, `profile_7`, `profile_8`, `profile_9`, `profile_10`, `profile_11`, `profile_12`, `profile_13`, `profile_14`, `profile_15`, `profile_16`, `profile_17`, `profile_18`, `profile_19`, `profile_20`, `test`) VALUES
('', 'das@gmail.com', '20de35d181', '', 'C', 2, NULL, '2020-10-01 04:54:12', 1601528763, 0, 0, 0, 0, '', 'n', 0, 0, '', '::1', 0, 'http://localhost/wp/sizzlers/newsletter/?nm=confirmed&nk=2-6ad6396b89', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT 0,
  `last_id` int(11) NOT NULL DEFAULT 0,
  `sent` int(11) NOT NULL DEFAULT 0,
  `track` int(11) NOT NULL DEFAULT 1,
  `list` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` tinyint(4) NOT NULL DEFAULT 0,
  `sex` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_on` int(11) NOT NULL DEFAULT 0,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unsub_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `error_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `stats_time` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `error` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `email_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_newsletter_user_logs`
--

CREATE TABLE `wp_newsletter_user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_newsletter_user_logs`
--

INSERT INTO `wp_newsletter_user_logs` (`id`, `user_id`, `ip`, `source`, `data`, `created`) VALUES
(1, 2, '::1', 'subscribe', '{\"status\":\"C\"}', 1601528053),
(2, 2, '::1', 'subscribe', '{\"status\":\"C\"}', 1601528763);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp/sizzlers/', 'yes'),
(2, 'home', 'http://localhost/wp/sizzlers/', 'yes'),
(3, 'blogname', 'sizzler by Fashion Sizzle', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dasbairagyagopal@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '5', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"magazine/?$\";s:28:\"index.php?post_type=magazine\";s:41:\"magazine/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=magazine&feed=$matches[1]\";s:36:\"magazine/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=magazine&feed=$matches[1]\";s:28:\"magazine/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=magazine&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"dflip_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?dflip_category=$matches[1]&feed=$matches[2]\";s:50:\"dflip_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?dflip_category=$matches[1]&feed=$matches[2]\";s:31:\"dflip_category/([^/]+)/embed/?$\";s:47:\"index.php?dflip_category=$matches[1]&embed=true\";s:43:\"dflip_category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?dflip_category=$matches[1]&paged=$matches[2]\";s:25:\"dflip_category/([^/]+)/?$\";s:36:\"index.php?dflip_category=$matches[1]\";s:36:\"magazine/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"magazine/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"magazine/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"magazine/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"magazine/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"magazine/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"magazine/([^/]+)/embed/?$\";s:41:\"index.php?magazine=$matches[1]&embed=true\";s:29:\"magazine/([^/]+)/trackback/?$\";s:35:\"index.php?magazine=$matches[1]&tb=1\";s:49:\"magazine/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?magazine=$matches[1]&feed=$matches[2]\";s:44:\"magazine/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?magazine=$matches[1]&feed=$matches[2]\";s:37:\"magazine/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?magazine=$matches[1]&paged=$matches[2]\";s:44:\"magazine/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?magazine=$matches[1]&cpage=$matches[2]\";s:33:\"magazine/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?magazine=$matches[1]&page=$matches[2]\";s:25:\"magazine/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"magazine/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"magazine/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"magazine/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"magazine/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"magazine/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:49:\"3d-flipbook-dflip-lite/3d-flipbook-dflip-lite.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:33:\"duplicate-post/duplicate-post.php\";i:4;s:21:\"newsletter/plugin.php\";i:5;s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";i:6;s:41:\"wordpress-importer/wordpress-importer.php\";i:7;s:19:\"wp-clean-up/dcl.php\";i:8;s:39:\"wp-file-manager/file_folder_manager.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:71:\"/home/rayenjdr/pre-live.asteeri.com/wp-content/themes/sizzler/style.css\";i:1;s:72:\"/home/rayenjdr/pre-live.asteeri.com/wp-content/themes/sizzler/single.php\";i:3;s:74:\"/home/rayenjdr/pre-live.asteeri.com/wp-content/themes/sizzler/comments.php\";i:4;s:86:\"/home/rayenjdr/pre-live.asteeri.com/wp-content/themes/sizzler/page-templates/about.php\";i:5;s:72:\"/home/rayenjdr/pre-live.asteeri.com/wp-content/themes/sizzler/header.php\";}', 'no'),
(40, 'template', 'sizzler', 'yes'),
(41, 'stylesheet', 'sizzler', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '454', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1616604549', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1602229100;a:1:{s:10:\"newsletter\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"newsletter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1602229750;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1602262150;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1602262162;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602262165;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1602348550;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1602224066;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601052610;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602224069;s:7:\"checked\";a:2:{s:7:\"sizzler\";s:0:\"\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'can_compress_scripts', '0', 'no'),
(141, 'current_theme', 'Sizzler', 'yes'),
(142, 'theme_mods_sizzler', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:14:\"themeslug_logo\";s:85:\"http://pre-live.asteeri.com/wp-content/uploads/2020/10/sizzler-Logo-250920-scaled.jpg\";s:11:\"custom_logo\";i:451;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(144, 'recovery_mode_email_last_sent', '1601523138', 'yes'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, 'recently_activated', 'a:0:{}', 'yes'),
(149, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1601053816;s:7:\"version\";s:5:\"5.2.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(150, 'acf_version', '5.5.7', 'yes'),
(166, 'options_phone_number', '', 'no'),
(167, '_options_phone_number', 'field_5f3824a7a32d2', 'no'),
(168, 'options_email_address', 'https://facebook.com/', 'no'),
(169, '_options_email_address', 'field_5f3824baa32d3', 'no'),
(170, 'options_top_headline', '', 'no'),
(171, '_options_top_headline', 'field_5f3824cca32d4', 'no'),
(172, 'options_phone_number22', 'dfadsf', 'no'),
(173, '_options_phone_number22', 'field_5f3825fd23abb', 'no'),
(174, 'options_fax', '', 'no'),
(175, '_options_fax', 'field_5f38262023abd', 'no'),
(176, 'options_email_address22', '', 'no'),
(177, '_options_email_address22', 'field_5f38261123abc', 'no'),
(178, 'options_footer_section_1_headeing', '', 'no'),
(179, '_options_footer_section_1_headeing', 'field_5f3825b323ab7', 'no'),
(180, 'options_footer_section_2_headeing', '', 'no'),
(181, '_options_footer_section_2_headeing', 'field_5f3825da23ab8', 'no'),
(182, 'options_footer_section_3_headeing', '', 'no'),
(183, '_options_footer_section_3_headeing', 'field_5f3825e523ab9', 'no'),
(184, 'options_footer_section_4_headeing', '', 'no'),
(185, '_options_footer_section_4_headeing', 'field_5f3825f423aba', 'no'),
(186, 'options_copyright_text', '© All rights reserved | by <a href=\"#!\" target=\"_blank\">Sizzler</a>', 'no'),
(187, '_options_copyright_text', 'field_5f38263c23abe', 'no'),
(188, 'options_heading1', '', 'no'),
(189, '_options_heading1', 'field_5f3826b0db2d3', 'no'),
(190, 'options_sub_heading', '', 'no'),
(191, '_options_sub_heading', 'field_5f3826ccdb2d4', 'no'),
(192, 'options_phone_number233', '', 'no'),
(193, '_options_phone_number233', 'field_5f382757bdf14', 'no'),
(194, 'options_fax22', '', 'no'),
(195, '_options_fax22', 'field_5f38276bbdf15', 'no'),
(196, 'options_email_adress223', '', 'no'),
(197, '_options_email_adress223', 'field_5f382772bdf16', 'no'),
(198, 'options_google_map', '', 'no'),
(199, '_options_google_map', 'field_5f382781bdf17', 'no'),
(200, 'options_address', '', 'no'),
(201, '_options_address', 'field_5f382723bdf13', 'no'),
(202, 'options_promotional_banner', '', 'no'),
(203, '_options_promotional_banner', 'field_5f383367f147d', 'no'),
(204, 'options_home_page_description', '', 'no'),
(205, '_options_home_page_description', 'field_5f3833a6f147e', 'no'),
(206, 'options_printerest_url', 'https://printerest.com/', 'no'),
(207, '_options_printerest_url', 'field_5f3824cca32d4', 'no'),
(208, 'options_twitter_url', 'https://twitter.com/', 'no'),
(209, '_options_twitter_url', 'field_5f6e3b28cc77b', 'no'),
(210, 'options_facebook_url', 'https://facebook.com/', 'no'),
(211, '_options_facebook_url', 'field_5f6e3b19cc77a', 'no'),
(256, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"8\",\"critical\":\"2\"}', 'yes'),
(333, 'duplicate_post_copytitle', '1', 'yes'),
(334, 'duplicate_post_copydate', '', 'yes'),
(335, 'duplicate_post_copystatus', '', 'yes'),
(336, 'duplicate_post_copyslug', '', 'yes'),
(337, 'duplicate_post_copyexcerpt', '1', 'yes'),
(338, 'duplicate_post_copycontent', '1', 'yes'),
(339, 'duplicate_post_copythumbnail', '1', 'yes'),
(340, 'duplicate_post_copytemplate', '1', 'yes'),
(341, 'duplicate_post_copyformat', '1', 'yes'),
(342, 'duplicate_post_copyauthor', '', 'yes'),
(343, 'duplicate_post_copypassword', '', 'yes'),
(344, 'duplicate_post_copyattachments', '', 'yes'),
(345, 'duplicate_post_copychildren', '', 'yes'),
(346, 'duplicate_post_copycomments', '', 'yes'),
(347, 'duplicate_post_copymenuorder', '1', 'yes'),
(348, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(349, 'duplicate_post_blacklist', '', 'yes'),
(350, 'duplicate_post_types_enabled', 'a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:15:\"acf-field-group\";i:3;s:8:\"magazine\";}', 'yes'),
(351, 'duplicate_post_show_row', '1', 'yes'),
(352, 'duplicate_post_show_adminbar', '1', 'yes'),
(353, 'duplicate_post_show_submitbox', '1', 'yes'),
(354, 'duplicate_post_show_bulkactions', '1', 'yes'),
(355, 'duplicate_post_show_original_column', '', 'yes'),
(356, 'duplicate_post_show_original_in_post_states', '', 'yes'),
(357, 'duplicate_post_show_original_meta_box', '', 'yes'),
(358, 'duplicate_post_show_notice', '1', 'no'),
(359, 'duplicate_post_version', '3.2.6', 'yes'),
(360, 'duplicate_post_title_prefix', '', 'yes'),
(361, 'duplicate_post_title_suffix', '', 'yes'),
(362, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(363, 'duplicate_post_roles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}', 'yes'),
(447, 'newsletter_logger_secret', '2d810663', 'yes'),
(449, 'newsletter_main_first_install_time', '1601527666', 'no'),
(450, 'newsletter_main', 'a:30:{s:11:\"return_path\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"sender_email\";s:20:\"newsletter@localhost\";s:11:\"sender_name\";s:8:\"sizzlers\";s:6:\"editor\";i:0;s:13:\"scheduler_max\";i:100;s:9:\"phpmailer\";i:0;s:5:\"debug\";i:0;s:5:\"track\";i:1;s:3:\"css\";s:0:\"\";s:12:\"css_disabled\";i:0;s:2:\"ip\";s:0:\"\";s:4:\"page\";i:447;s:19:\"disable_cron_notice\";i:0;s:13:\"do_shortcodes\";i:0;s:11:\"header_logo\";s:0:\"\";s:12:\"header_title\";s:8:\"sizzlers\";s:10:\"header_sub\";s:27:\"Just another WordPress site\";s:12:\"footer_title\";s:0:\"\";s:14:\"footer_contact\";s:0:\"\";s:12:\"footer_legal\";s:0:\"\";s:12:\"facebook_url\";s:0:\"\";s:11:\"twitter_url\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:13:\"pinterest_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:10:\"tumblr_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:9:\"vimeo_url\";s:0:\"\";s:14:\"soundcloud_url\";s:0:\"\";}', 'yes'),
(451, 'newsletter_main_info', 'a:15:{s:11:\"header_logo\";a:1:{s:2:\"id\";i:0;}s:12:\"header_title\";s:8:\"sizzlers\";s:10:\"header_sub\";s:27:\"Just another WordPress site\";s:12:\"footer_title\";s:0:\"\";s:14:\"footer_contact\";s:0:\"\";s:12:\"footer_legal\";s:0:\"\";s:12:\"facebook_url\";s:0:\"\";s:11:\"twitter_url\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:13:\"pinterest_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:10:\"tumblr_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:9:\"vimeo_url\";s:0:\"\";s:14:\"soundcloud_url\";s:0:\"\";}', 'yes'),
(452, 'newsletter_main_smtp', 'a:7:{s:7:\"enabled\";i:0;s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"port\";i:25;s:6:\"secure\";s:0:\"\";s:12:\"ssl_insecure\";i:0;}', 'yes'),
(453, 'newsletter_main_version', '1.6.3', 'yes'),
(454, 'newsletter_subscription_first_install_time', '1601527667', 'no'),
(455, 'newsletter', 'a:17:{s:14:\"noconfirmation\";s:1:\"1\";s:14:\"optin_override\";s:1:\"0\";s:8:\"multiple\";s:1:\"1\";s:6:\"notify\";s:1:\"0\";s:12:\"notify_email\";s:26:\"dasbairagyagopal@gmail.com\";s:17:\"subscription_text\";s:26:\"<p>{subscription_form}</p>\";s:10:\"error_text\";s:102:\"<p>You cannot subscribe with the email address you entered, please contact the site administrator.</p>\";s:17:\"confirmation_text\";s:104:\"<p>A confirmation email is on the way. Follow the instructions and check the spam folder. Thank you.</p>\";s:16:\"confirmation_url\";s:0:\"\";s:20:\"confirmation_subject\";s:32:\"Please confirm your subscription\";s:20:\"confirmation_message\";s:94:\"<p>Please confirm your subscription <a href=\"{subscription_confirm_url}\">clicking here</a></p>\";s:14:\"confirmed_text\";s:46:\"<h2>Your subscription has been confirmed!</h2>\";s:13:\"confirmed_url\";s:0:\"\";s:18:\"confirmed_tracking\";s:0:\"\";s:18:\"confirmed_disabled\";s:1:\"0\";s:17:\"confirmed_subject\";s:7:\"Welcome\";s:17:\"confirmed_message\";s:140:\"<p>This message confirms your subscription to our newsletter. Thank you!</p>\r\n<hr />\r\n<p><a href=\"{profile_url}\">Change your profile</a></p>\";}', 'yes'),
(456, 'newsletter_subscription_lists', 'a:240:{s:6:\"list_1\";s:0:\"\";s:13:\"list_1_status\";i:0;s:14:\"list_1_checked\";i:0;s:13:\"list_1_forced\";i:0;s:19:\"list_1_subscription\";i:0;s:14:\"list_1_profile\";i:0;s:6:\"list_2\";s:0:\"\";s:13:\"list_2_status\";i:0;s:14:\"list_2_checked\";i:0;s:13:\"list_2_forced\";i:0;s:19:\"list_2_subscription\";i:0;s:14:\"list_2_profile\";i:0;s:6:\"list_3\";s:0:\"\";s:13:\"list_3_status\";i:0;s:14:\"list_3_checked\";i:0;s:13:\"list_3_forced\";i:0;s:19:\"list_3_subscription\";i:0;s:14:\"list_3_profile\";i:0;s:6:\"list_4\";s:0:\"\";s:13:\"list_4_status\";i:0;s:14:\"list_4_checked\";i:0;s:13:\"list_4_forced\";i:0;s:19:\"list_4_subscription\";i:0;s:14:\"list_4_profile\";i:0;s:6:\"list_5\";s:0:\"\";s:13:\"list_5_status\";i:0;s:14:\"list_5_checked\";i:0;s:13:\"list_5_forced\";i:0;s:19:\"list_5_subscription\";i:0;s:14:\"list_5_profile\";i:0;s:6:\"list_6\";s:0:\"\";s:13:\"list_6_status\";i:0;s:14:\"list_6_checked\";i:0;s:13:\"list_6_forced\";i:0;s:19:\"list_6_subscription\";i:0;s:14:\"list_6_profile\";i:0;s:6:\"list_7\";s:0:\"\";s:13:\"list_7_status\";i:0;s:14:\"list_7_checked\";i:0;s:13:\"list_7_forced\";i:0;s:19:\"list_7_subscription\";i:0;s:14:\"list_7_profile\";i:0;s:6:\"list_8\";s:0:\"\";s:13:\"list_8_status\";i:0;s:14:\"list_8_checked\";i:0;s:13:\"list_8_forced\";i:0;s:19:\"list_8_subscription\";i:0;s:14:\"list_8_profile\";i:0;s:6:\"list_9\";s:0:\"\";s:13:\"list_9_status\";i:0;s:14:\"list_9_checked\";i:0;s:13:\"list_9_forced\";i:0;s:19:\"list_9_subscription\";i:0;s:14:\"list_9_profile\";i:0;s:7:\"list_10\";s:0:\"\";s:14:\"list_10_status\";i:0;s:15:\"list_10_checked\";i:0;s:14:\"list_10_forced\";i:0;s:20:\"list_10_subscription\";i:0;s:15:\"list_10_profile\";i:0;s:7:\"list_11\";s:0:\"\";s:14:\"list_11_status\";i:0;s:15:\"list_11_checked\";i:0;s:14:\"list_11_forced\";i:0;s:20:\"list_11_subscription\";i:0;s:15:\"list_11_profile\";i:0;s:7:\"list_12\";s:0:\"\";s:14:\"list_12_status\";i:0;s:15:\"list_12_checked\";i:0;s:14:\"list_12_forced\";i:0;s:20:\"list_12_subscription\";i:0;s:15:\"list_12_profile\";i:0;s:7:\"list_13\";s:0:\"\";s:14:\"list_13_status\";i:0;s:15:\"list_13_checked\";i:0;s:14:\"list_13_forced\";i:0;s:20:\"list_13_subscription\";i:0;s:15:\"list_13_profile\";i:0;s:7:\"list_14\";s:0:\"\";s:14:\"list_14_status\";i:0;s:15:\"list_14_checked\";i:0;s:14:\"list_14_forced\";i:0;s:20:\"list_14_subscription\";i:0;s:15:\"list_14_profile\";i:0;s:7:\"list_15\";s:0:\"\";s:14:\"list_15_status\";i:0;s:15:\"list_15_checked\";i:0;s:14:\"list_15_forced\";i:0;s:20:\"list_15_subscription\";i:0;s:15:\"list_15_profile\";i:0;s:7:\"list_16\";s:0:\"\";s:14:\"list_16_status\";i:0;s:15:\"list_16_checked\";i:0;s:14:\"list_16_forced\";i:0;s:20:\"list_16_subscription\";i:0;s:15:\"list_16_profile\";i:0;s:7:\"list_17\";s:0:\"\";s:14:\"list_17_status\";i:0;s:15:\"list_17_checked\";i:0;s:14:\"list_17_forced\";i:0;s:20:\"list_17_subscription\";i:0;s:15:\"list_17_profile\";i:0;s:7:\"list_18\";s:0:\"\";s:14:\"list_18_status\";i:0;s:15:\"list_18_checked\";i:0;s:14:\"list_18_forced\";i:0;s:20:\"list_18_subscription\";i:0;s:15:\"list_18_profile\";i:0;s:7:\"list_19\";s:0:\"\";s:14:\"list_19_status\";i:0;s:15:\"list_19_checked\";i:0;s:14:\"list_19_forced\";i:0;s:20:\"list_19_subscription\";i:0;s:15:\"list_19_profile\";i:0;s:7:\"list_20\";s:0:\"\";s:14:\"list_20_status\";i:0;s:15:\"list_20_checked\";i:0;s:14:\"list_20_forced\";i:0;s:20:\"list_20_subscription\";i:0;s:15:\"list_20_profile\";i:0;s:7:\"list_21\";s:0:\"\";s:14:\"list_21_status\";i:0;s:15:\"list_21_checked\";i:0;s:14:\"list_21_forced\";i:0;s:20:\"list_21_subscription\";i:0;s:15:\"list_21_profile\";i:0;s:7:\"list_22\";s:0:\"\";s:14:\"list_22_status\";i:0;s:15:\"list_22_checked\";i:0;s:14:\"list_22_forced\";i:0;s:20:\"list_22_subscription\";i:0;s:15:\"list_22_profile\";i:0;s:7:\"list_23\";s:0:\"\";s:14:\"list_23_status\";i:0;s:15:\"list_23_checked\";i:0;s:14:\"list_23_forced\";i:0;s:20:\"list_23_subscription\";i:0;s:15:\"list_23_profile\";i:0;s:7:\"list_24\";s:0:\"\";s:14:\"list_24_status\";i:0;s:15:\"list_24_checked\";i:0;s:14:\"list_24_forced\";i:0;s:20:\"list_24_subscription\";i:0;s:15:\"list_24_profile\";i:0;s:7:\"list_25\";s:0:\"\";s:14:\"list_25_status\";i:0;s:15:\"list_25_checked\";i:0;s:14:\"list_25_forced\";i:0;s:20:\"list_25_subscription\";i:0;s:15:\"list_25_profile\";i:0;s:7:\"list_26\";s:0:\"\";s:14:\"list_26_status\";i:0;s:15:\"list_26_checked\";i:0;s:14:\"list_26_forced\";i:0;s:20:\"list_26_subscription\";i:0;s:15:\"list_26_profile\";i:0;s:7:\"list_27\";s:0:\"\";s:14:\"list_27_status\";i:0;s:15:\"list_27_checked\";i:0;s:14:\"list_27_forced\";i:0;s:20:\"list_27_subscription\";i:0;s:15:\"list_27_profile\";i:0;s:7:\"list_28\";s:0:\"\";s:14:\"list_28_status\";i:0;s:15:\"list_28_checked\";i:0;s:14:\"list_28_forced\";i:0;s:20:\"list_28_subscription\";i:0;s:15:\"list_28_profile\";i:0;s:7:\"list_29\";s:0:\"\";s:14:\"list_29_status\";i:0;s:15:\"list_29_checked\";i:0;s:14:\"list_29_forced\";i:0;s:20:\"list_29_subscription\";i:0;s:15:\"list_29_profile\";i:0;s:7:\"list_30\";s:0:\"\";s:14:\"list_30_status\";i:0;s:15:\"list_30_checked\";i:0;s:14:\"list_30_forced\";i:0;s:20:\"list_30_subscription\";i:0;s:15:\"list_30_profile\";i:0;s:7:\"list_31\";s:0:\"\";s:14:\"list_31_status\";i:0;s:15:\"list_31_checked\";i:0;s:14:\"list_31_forced\";i:0;s:20:\"list_31_subscription\";i:0;s:15:\"list_31_profile\";i:0;s:7:\"list_32\";s:0:\"\";s:14:\"list_32_status\";i:0;s:15:\"list_32_checked\";i:0;s:14:\"list_32_forced\";i:0;s:20:\"list_32_subscription\";i:0;s:15:\"list_32_profile\";i:0;s:7:\"list_33\";s:0:\"\";s:14:\"list_33_status\";i:0;s:15:\"list_33_checked\";i:0;s:14:\"list_33_forced\";i:0;s:20:\"list_33_subscription\";i:0;s:15:\"list_33_profile\";i:0;s:7:\"list_34\";s:0:\"\";s:14:\"list_34_status\";i:0;s:15:\"list_34_checked\";i:0;s:14:\"list_34_forced\";i:0;s:20:\"list_34_subscription\";i:0;s:15:\"list_34_profile\";i:0;s:7:\"list_35\";s:0:\"\";s:14:\"list_35_status\";i:0;s:15:\"list_35_checked\";i:0;s:14:\"list_35_forced\";i:0;s:20:\"list_35_subscription\";i:0;s:15:\"list_35_profile\";i:0;s:7:\"list_36\";s:0:\"\";s:14:\"list_36_status\";i:0;s:15:\"list_36_checked\";i:0;s:14:\"list_36_forced\";i:0;s:20:\"list_36_subscription\";i:0;s:15:\"list_36_profile\";i:0;s:7:\"list_37\";s:0:\"\";s:14:\"list_37_status\";i:0;s:15:\"list_37_checked\";i:0;s:14:\"list_37_forced\";i:0;s:20:\"list_37_subscription\";i:0;s:15:\"list_37_profile\";i:0;s:7:\"list_38\";s:0:\"\";s:14:\"list_38_status\";i:0;s:15:\"list_38_checked\";i:0;s:14:\"list_38_forced\";i:0;s:20:\"list_38_subscription\";i:0;s:15:\"list_38_profile\";i:0;s:7:\"list_39\";s:0:\"\";s:14:\"list_39_status\";i:0;s:15:\"list_39_checked\";i:0;s:14:\"list_39_forced\";i:0;s:20:\"list_39_subscription\";i:0;s:15:\"list_39_profile\";i:0;s:7:\"list_40\";s:0:\"\";s:14:\"list_40_status\";i:0;s:15:\"list_40_checked\";i:0;s:14:\"list_40_forced\";i:0;s:20:\"list_40_subscription\";i:0;s:15:\"list_40_profile\";i:0;}', 'yes'),
(457, 'newsletter_subscription_template', 'a:1:{s:8:\"template\";s:2365:\"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type=\"text/css\" media=\"all\">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n            hr {\n                border-top: 1px solid #999;\n            }\n        </style>\n    </head>\n\n    <!-- KEEP THE LAYOUT SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style=\"margin: 0; padding: 0;\">\n\n        <!-- Top title with dark background -->\n        <table style=\"background-color: #444; width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; text-align: center; font-family: sans-serif; color: #fff; font-size: 28px\">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style=\"background-color: #eee; width: 100%;\">\n            <tr>\n                <td align=\"center\" style=\"padding: 15px;\">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style=\"background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;\">\n                        <tr>\n                            <td style=\"padding: 15px; color: #333; font-size: 16px; font-family: sans-serif\">\n                                <!-- The \"message\" tag below is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n\n                                <hr>\n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n                                <p>\n                                    <small>\n                                        <a href=\"{blog_url}\">{blog_url}</a><br>\n                                        {company_name}<br>\n                                        {company_address}\n                                    </small>\n                                </p>\n                                \n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>\";}', 'yes'),
(458, 'newsletter_profile', 'a:184:{s:5:\"email\";s:5:\"Email\";s:11:\"email_error\";s:28:\"Email address is not correct\";s:4:\"name\";s:23:\"First name or full name\";s:10:\"name_error\";s:16:\"Name is required\";s:11:\"name_status\";i:0;s:10:\"name_rules\";i:0;s:7:\"surname\";s:9:\"Last name\";s:13:\"surname_error\";s:21:\"Last name is required\";s:14:\"surname_status\";i:0;s:10:\"sex_status\";i:0;s:3:\"sex\";s:3:\"I\'m\";s:7:\"privacy\";s:44:\"By continuing, you accept the privacy policy\";s:13:\"privacy_error\";s:34:\"You must accept the privacy policy\";s:14:\"privacy_status\";i:0;s:11:\"privacy_url\";s:0:\"\";s:18:\"privacy_use_wp_url\";i:0;s:9:\"subscribe\";s:9:\"Subscribe\";s:12:\"title_female\";s:3:\"Ms.\";s:10:\"title_male\";s:3:\"Mr.\";s:10:\"title_none\";s:4:\"Dear\";s:8:\"sex_male\";s:3:\"Man\";s:10:\"sex_female\";s:5:\"Woman\";s:8:\"sex_none\";s:13:\"Not specified\";s:13:\"profile_error\";s:34:\"A mandatory field is not filled in\";s:16:\"profile_1_status\";i:0;s:9:\"profile_1\";s:0:\"\";s:14:\"profile_1_type\";s:4:\"text\";s:21:\"profile_1_placeholder\";s:0:\"\";s:15:\"profile_1_rules\";i:0;s:17:\"profile_1_options\";s:0:\"\";s:16:\"profile_2_status\";i:0;s:9:\"profile_2\";s:0:\"\";s:14:\"profile_2_type\";s:4:\"text\";s:21:\"profile_2_placeholder\";s:0:\"\";s:15:\"profile_2_rules\";i:0;s:17:\"profile_2_options\";s:0:\"\";s:16:\"profile_3_status\";i:0;s:9:\"profile_3\";s:0:\"\";s:14:\"profile_3_type\";s:4:\"text\";s:21:\"profile_3_placeholder\";s:0:\"\";s:15:\"profile_3_rules\";i:0;s:17:\"profile_3_options\";s:0:\"\";s:16:\"profile_4_status\";i:0;s:9:\"profile_4\";s:0:\"\";s:14:\"profile_4_type\";s:4:\"text\";s:21:\"profile_4_placeholder\";s:0:\"\";s:15:\"profile_4_rules\";i:0;s:17:\"profile_4_options\";s:0:\"\";s:16:\"profile_5_status\";i:0;s:9:\"profile_5\";s:0:\"\";s:14:\"profile_5_type\";s:4:\"text\";s:21:\"profile_5_placeholder\";s:0:\"\";s:15:\"profile_5_rules\";i:0;s:17:\"profile_5_options\";s:0:\"\";s:16:\"profile_6_status\";i:0;s:9:\"profile_6\";s:0:\"\";s:14:\"profile_6_type\";s:4:\"text\";s:21:\"profile_6_placeholder\";s:0:\"\";s:15:\"profile_6_rules\";i:0;s:17:\"profile_6_options\";s:0:\"\";s:16:\"profile_7_status\";i:0;s:9:\"profile_7\";s:0:\"\";s:14:\"profile_7_type\";s:4:\"text\";s:21:\"profile_7_placeholder\";s:0:\"\";s:15:\"profile_7_rules\";i:0;s:17:\"profile_7_options\";s:0:\"\";s:16:\"profile_8_status\";i:0;s:9:\"profile_8\";s:0:\"\";s:14:\"profile_8_type\";s:4:\"text\";s:21:\"profile_8_placeholder\";s:0:\"\";s:15:\"profile_8_rules\";i:0;s:17:\"profile_8_options\";s:0:\"\";s:16:\"profile_9_status\";i:0;s:9:\"profile_9\";s:0:\"\";s:14:\"profile_9_type\";s:4:\"text\";s:21:\"profile_9_placeholder\";s:0:\"\";s:15:\"profile_9_rules\";i:0;s:17:\"profile_9_options\";s:0:\"\";s:17:\"profile_10_status\";i:0;s:10:\"profile_10\";s:0:\"\";s:15:\"profile_10_type\";s:4:\"text\";s:22:\"profile_10_placeholder\";s:0:\"\";s:16:\"profile_10_rules\";i:0;s:18:\"profile_10_options\";s:0:\"\";s:17:\"profile_11_status\";i:0;s:10:\"profile_11\";s:0:\"\";s:15:\"profile_11_type\";s:4:\"text\";s:22:\"profile_11_placeholder\";s:0:\"\";s:16:\"profile_11_rules\";i:0;s:18:\"profile_11_options\";s:0:\"\";s:17:\"profile_12_status\";i:0;s:10:\"profile_12\";s:0:\"\";s:15:\"profile_12_type\";s:4:\"text\";s:22:\"profile_12_placeholder\";s:0:\"\";s:16:\"profile_12_rules\";i:0;s:18:\"profile_12_options\";s:0:\"\";s:17:\"profile_13_status\";i:0;s:10:\"profile_13\";s:0:\"\";s:15:\"profile_13_type\";s:4:\"text\";s:22:\"profile_13_placeholder\";s:0:\"\";s:16:\"profile_13_rules\";i:0;s:18:\"profile_13_options\";s:0:\"\";s:17:\"profile_14_status\";i:0;s:10:\"profile_14\";s:0:\"\";s:15:\"profile_14_type\";s:4:\"text\";s:22:\"profile_14_placeholder\";s:0:\"\";s:16:\"profile_14_rules\";i:0;s:18:\"profile_14_options\";s:0:\"\";s:17:\"profile_15_status\";i:0;s:10:\"profile_15\";s:0:\"\";s:15:\"profile_15_type\";s:4:\"text\";s:22:\"profile_15_placeholder\";s:0:\"\";s:16:\"profile_15_rules\";i:0;s:18:\"profile_15_options\";s:0:\"\";s:17:\"profile_16_status\";i:0;s:10:\"profile_16\";s:0:\"\";s:15:\"profile_16_type\";s:4:\"text\";s:22:\"profile_16_placeholder\";s:0:\"\";s:16:\"profile_16_rules\";i:0;s:18:\"profile_16_options\";s:0:\"\";s:17:\"profile_17_status\";i:0;s:10:\"profile_17\";s:0:\"\";s:15:\"profile_17_type\";s:4:\"text\";s:22:\"profile_17_placeholder\";s:0:\"\";s:16:\"profile_17_rules\";i:0;s:18:\"profile_17_options\";s:0:\"\";s:17:\"profile_18_status\";i:0;s:10:\"profile_18\";s:0:\"\";s:15:\"profile_18_type\";s:4:\"text\";s:22:\"profile_18_placeholder\";s:0:\"\";s:16:\"profile_18_rules\";i:0;s:18:\"profile_18_options\";s:0:\"\";s:17:\"profile_19_status\";i:0;s:10:\"profile_19\";s:0:\"\";s:15:\"profile_19_type\";s:4:\"text\";s:22:\"profile_19_placeholder\";s:0:\"\";s:16:\"profile_19_rules\";i:0;s:18:\"profile_19_options\";s:0:\"\";s:17:\"profile_20_status\";i:0;s:10:\"profile_20\";s:0:\"\";s:15:\"profile_20_type\";s:4:\"text\";s:22:\"profile_20_placeholder\";s:0:\"\";s:16:\"profile_20_rules\";i:0;s:18:\"profile_20_options\";s:0:\"\";s:13:\"list_1_forced\";i:0;s:13:\"list_2_forced\";i:0;s:13:\"list_3_forced\";i:0;s:13:\"list_4_forced\";i:0;s:13:\"list_5_forced\";i:0;s:13:\"list_6_forced\";i:0;s:13:\"list_7_forced\";i:0;s:13:\"list_8_forced\";i:0;s:13:\"list_9_forced\";i:0;s:14:\"list_10_forced\";i:0;s:14:\"list_11_forced\";i:0;s:14:\"list_12_forced\";i:0;s:14:\"list_13_forced\";i:0;s:14:\"list_14_forced\";i:0;s:14:\"list_15_forced\";i:0;s:14:\"list_16_forced\";i:0;s:14:\"list_17_forced\";i:0;s:14:\"list_18_forced\";i:0;s:14:\"list_19_forced\";i:0;s:14:\"list_20_forced\";i:0;s:14:\"list_21_forced\";i:0;s:14:\"list_22_forced\";i:0;s:14:\"list_23_forced\";i:0;s:14:\"list_24_forced\";i:0;s:14:\"list_25_forced\";i:0;s:14:\"list_26_forced\";i:0;s:14:\"list_27_forced\";i:0;s:14:\"list_28_forced\";i:0;s:14:\"list_29_forced\";i:0;s:14:\"list_30_forced\";i:0;s:14:\"list_31_forced\";i:0;s:14:\"list_32_forced\";i:0;s:14:\"list_33_forced\";i:0;s:14:\"list_34_forced\";i:0;s:14:\"list_35_forced\";i:0;s:14:\"list_36_forced\";i:0;s:14:\"list_37_forced\";i:0;s:14:\"list_38_forced\";i:0;s:14:\"list_39_forced\";i:0;s:14:\"list_40_forced\";i:0;}', 'yes'),
(459, 'newsletter_subscription_antibot', 'a:6:{s:12:\"ip_blacklist\";a:0:{}s:17:\"address_blacklist\";a:0:{}s:9:\"antiflood\";i:60;s:7:\"akismet\";i:0;s:7:\"captcha\";i:0;s:8:\"disabled\";i:0;}', 'yes'),
(460, 'newsletter_subscription_version', '2.2.7', 'yes'),
(461, 'newsletter_unsubscription_first_install_time', '1601527668', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(462, 'newsletter_unsubscription', 'a:6:{s:16:\"unsubscribe_text\";s:103:\"<p>Please confirm you want to unsubscribe <a href=\"{unsubscription_confirm_url}\">clicking here</a>.</p>\";s:10:\"error_text\";s:99:\"<p>Subscriber not found, it probably has already been removed. No further actions are required.</p>\";s:17:\"unsubscribed_text\";s:124:\"<p>Your subscription has been deleted. If that was an error you can <a href=\"{reactivate_url}\">subscribe again here</a>.</p>\";s:20:\"unsubscribed_subject\";s:7:\"Goodbye\";s:20:\"unsubscribed_message\";s:87:\"<p>This message confirms that you have unsubscribed from our newsletter. Thank you.</p>\";s:16:\"reactivated_text\";s:46:\"<p>Your subscription has been reactivated.</p>\";}', 'yes'),
(463, 'newsletter_unsubscription_version', '1.0.3', 'yes'),
(464, 'newsletter_profile_first_install_time', '1601527668', 'no'),
(465, 'newsletter_profile_main', 'a:8:{s:4:\"text\";s:188:\"{profile_form}\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    <p><a href=\"{unsubscription_confirm_url}\">Cancel your subscription</a></p>\";s:13:\"email_changed\";s:81:\"Your email has been changed, an activation email has been sent with instructions.\";s:5:\"error\";s:42:\"Your email is not valid or already in use.\";s:10:\"save_label\";s:4:\"Save\";s:13:\"privacy_label\";s:21:\"Read our privacy note\";s:5:\"saved\";s:14:\"Profile saved.\";s:18:\"export_newsletters\";i:0;s:3:\"url\";s:0:\"\";}', 'yes'),
(466, 'newsletter_profile_version', '1.1.0', 'yes'),
(467, 'newsletter_emails_first_install_time', '1601527668', 'no'),
(468, 'newsletter_emails', 'a:1:{s:5:\"theme\";s:7:\"default\";}', 'yes'),
(469, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(470, 'newsletter_emails_version', '1.1.5', 'yes'),
(471, 'newsletter_users_first_install_time', '1601527669', 'no'),
(472, 'newsletter_users', 'a:0:{}', 'yes'),
(473, 'newsletter_users_version', '1.3.0', 'yes'),
(474, 'newsletter_statistics_first_install_time', '1601527669', 'no'),
(475, 'newsletter_statistics', 'a:1:{s:3:\"key\";s:32:\"2ca0cf3387481f4e8b35568e42a56809\";}', 'yes'),
(476, 'newsletter_statistics_version', '1.2.7', 'yes'),
(477, 'newsletter_install_time', '1601527670', 'no'),
(478, 'widget_newsletterwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(479, 'widget_newsletterwidgetminimal', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(484, 'newsletter_page', '447', 'no'),
(486, 'newsletter_diagnostic_cron_calls', 'a:100:{i:0;i:1602006212;i:1;i:1602006520;i:2;i:1602006551;i:3;i:1602006840;i:4;i:1602007107;i:5;i:1602007401;i:6;i:1602007722;i:7;i:1602008021;i:8;i:1602010048;i:9;i:1602057217;i:10;i:1602062309;i:11;i:1602062648;i:12;i:1602062981;i:13;i:1602063223;i:14;i:1602063589;i:15;i:1602063829;i:16;i:1602066037;i:17;i:1602066278;i:18;i:1602066510;i:19;i:1602066872;i:20;i:1602067113;i:21;i:1602067415;i:22;i:1602067765;i:23;i:1602068005;i:24;i:1602068598;i:25;i:1602068623;i:26;i:1602068941;i:27;i:1602069303;i:28;i:1602069542;i:29;i:1602069813;i:30;i:1602070101;i:31;i:1602070462;i:32;i:1602070787;i:33;i:1602071028;i:34;i:1602072064;i:35;i:1602072244;i:36;i:1602075334;i:37;i:1602085214;i:38;i:1602133066;i:39;i:1602133534;i:40;i:1602139767;i:41;i:1602144066;i:42;i:1602144203;i:43;i:1602144565;i:44;i:1602144806;i:45;i:1602153387;i:46;i:1602153545;i:47;i:1602153803;i:48;i:1602154145;i:49;i:1602154217;i:50;i:1602154415;i:51;i:1602154415;i:52;i:1602154415;i:53;i:1602154723;i:54;i:1602155044;i:55;i:1602155349;i:56;i:1602155622;i:57;i:1602155953;i:58;i:1602156205;i:59;i:1602156554;i:60;i:1602156838;i:61;i:1602166528;i:62;i:1602167571;i:63;i:1602168564;i:64;i:1602218215;i:65;i:1602218406;i:66;i:1602218660;i:67;i:1602219040;i:68;i:1602219435;i:69;i:1602219634;i:70;i:1602219860;i:71;i:1602220251;i:72;i:1602220421;i:73;i:1602221333;i:74;i:1602222041;i:75;i:1602222383;i:76;i:1602222504;i:77;i:1602222586;i:78;i:1602222805;i:79;i:1602223115;i:80;i:1602223476;i:81;i:1602223776;i:82;i:1602224017;i:83;i:1602224301;i:84;i:1602224673;i:85;i:1602224899;i:86;i:1602225234;i:87;i:1602225534;i:88;i:1602225837;i:89;i:1602226110;i:90;i:1602226153;i:91;i:1602226407;i:92;i:1602226755;i:93;i:1602227042;i:94;i:1602227402;i:95;i:1602227643;i:96;i:1602227933;i:97;i:1602228246;i:98;i:1602228501;i:99;i:1602228826;}', 'no'),
(487, 'newsletter_diagnostic_cron_data', 'a:3:{s:4:\"mean\";d:2225.14;s:3:\"max\";i:49651;s:3:\"min\";i:43;}', 'no'),
(500, 'newsletter_users_search', 'a:4:{s:11:\"search_text\";s:0:\"\";s:13:\"search_status\";s:0:\"\";s:11:\"search_list\";s:0:\"\";s:11:\"search_page\";i:0;}', 'yes'),
(515, 'secret_key', 'Fu)1pm#xFVqXAGPy<E6Oj&^2^!Rvd]@vbH#<6Mls_%WVn@y30$,(ED.U?iO#6W&`', 'no'),
(568, '_transient_timeout_filemanager_cancel_lk_popup_1', '1604126586', 'no'),
(569, '_transient_filemanager_cancel_lk_popup_1', 'filemanager_cancel_lk_popup_1', 'no'),
(570, 'filemanager_email_verified_1', 'yes', 'yes'),
(663, '_site_transient_timeout_browser_a1123060a8cc6821e13d16ffa39d5d5a', '1602399474', 'no'),
(664, '_site_transient_browser_a1123060a8cc6821e13d16ffa39d5d5a', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"82.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1024, '_transient_timeout_tnp_extensions_json', '1602316420', 'no'),
(1025, '_transient_tnp_extensions_json', '[\n    {\n        \"id\": \"85\",\n        \"children_fileid\": null,\n        \"version\": \"1.1.3\",\n        \"title\": \"Addons Manager\",\n        \"description\": \"\",\n        \"slug\": \"newsletter-extensions\",\n        \"type\": \"manager\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"\",\n        \"status\": \"4\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=85\",\n        \"wp_slug\": \"newsletter-extensions\\/extensions.php\"\n    },\n    {\n        \"id\": \"87\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.0.3\",\n        \"title\": \"Speed and Delivery Hours Control\",\n        \"description\": \"Configure a different delivery speed for each newsletter and the delivery hours window. Only for regular newsletters.\",\n        \"slug\": \"newsletter-speedcontrol\",\n        \"type\": \"legacy\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/12\\/speedcontrol.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=87\",\n        \"wp_slug\": \"newsletter-speedcontrol\\/speedcontrol.php\"\n    },\n    {\n        \"id\": \"90\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.0.1\",\n        \"title\": \"Sendinblue\",\n        \"description\": \"Integration with Sendinblue mailing service.\",\n        \"slug\": \"newsletter-sendinblue\",\n        \"type\": \"delivery\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/documentation\\/?p=198432\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=90\",\n        \"wp_slug\": \"newsletter-sendinblue\\/sendinblue.php\"\n    },\n    {\n        \"id\": \"92\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.0.1\",\n        \"title\": \"Popup Maker Integration (ALPHA version)\",\n        \"description\": \"Use Newsletter forms (via shortcode) with Popup Maker. \",\n        \"slug\": \"newsletter-popupmaker\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2020\\/07\\/popupmaker-32x32-1.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=92\",\n        \"wp_slug\": \"newsletter-popupmaker\\/popupmaker.php\"\n    },\n    {\n        \"id\": \"91\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.0.2\",\n        \"title\": \"Instasend\",\n        \"description\": \"Quickly create a newsletter from a post (free for limited time)\",\n        \"slug\": \"newsletter-instasend\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2020\\/05\\/instasend-32.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=91\",\n        \"wp_slug\": \"newsletter-instasend\\/instasend.php\"\n    },\n    {\n        \"id\": \"61\",\n        \"children_fileid\": \"\",\n        \"version\": \"4.1.6\",\n        \"title\": \"Contact Form 7\",\n        \"description\": \"Adds the newsletter subscription feature to your Contact Form 7 forms.\",\n        \"slug\": \"newsletter-cf7\",\n        \"type\": \"integration\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/contact-form-7-extension\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/users-32px-outline_badge-13.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=61\",\n        \"wp_slug\": \"newsletter-cf7\\/cf7.php\"\n    },\n    {\n        \"id\": \"83\",\n        \"children_fileid\": null,\n        \"version\": \"1.0.3\",\n        \"title\": \"Ninja Forms Integration\",\n        \"description\": \"Integrate Ninja Forms with Newsletter collecting subscription from your contact form.\",\n        \"slug\": \"newsletter-ninjaforms\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/10\\/forms-integration.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=83\",\n        \"wp_slug\": \"newsletter-ninjaforms\\/ninjaforms.php\"\n    },\n    {\n        \"id\": \"84\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.0.3\",\n        \"title\": \"WP Forms Integration\",\n        \"description\": \"Integration with WP-Forms plugin. You can add a subscription option to your contact forms.\",\n        \"slug\": \"newsletter-wpforms\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/10\\/forms-integration.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=84\",\n        \"wp_slug\": \"newsletter-wpforms\\/wpforms.php\"\n    },\n    {\n        \"id\": \"50\",\n        \"children_fileid\": \"\",\n        \"version\": \"4.3.7\",\n        \"title\": \"Reports\",\n        \"description\": \"Shows tables and diagrams of the collected data (opens, clicks, ...).\",\n        \"slug\": \"newsletter-reports\",\n        \"type\": \"extension\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/reports\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/business-32px-outline_chart-bar-33.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=50\",\n        \"wp_slug\": \"newsletter-reports\\/reports.php\"\n    },\n    {\n        \"id\": \"62\",\n        \"children_fileid\": \"\",\n        \"version\": \"4.4.7\",\n        \"title\": \"Automated\",\n        \"description\": \"Automatically creates periodic newsletters with your blog contents. Multichannel.\",\n        \"slug\": \"newsletter-automated\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/automated\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-2_time-countdown.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=62\",\n        \"wp_slug\": \"newsletter-automated\\/automated.php\"\n    },\n    {\n        \"id\": \"63\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.5.1\",\n        \"title\": \"WooCommerce\",\n        \"description\": \"The Newsletter Plugin integration for WooCommerce\\u2122. Unleash your marketing powers.\",\n        \"slug\": \"newsletter-woocommerce\",\n        \"type\": \"integration\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/woocommerce\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/03\\/woocommerce-extension-icon.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=63\",\n        \"wp_slug\": \"newsletter-woocommerce\\/woocommerce.php\"\n    },\n    {\n        \"id\": \"67\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.1.8\",\n        \"title\": \"Leads\",\n        \"description\": \"Add a popup or a fixed subscription bar to your website and offer your visitors a simple way to subscribe.\",\n        \"slug\": \"newsletter-leads\",\n        \"type\": \"extension\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/leads-extension\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=67\",\n        \"wp_slug\": \"newsletter-leads\\/leads.php\"\n    },\n    {\n        \"id\": \"68\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.1.2\",\n        \"title\": \"Google Analytics\",\n        \"description\": \"Automatically add Google Analytics UTM campaign tracking to links\",\n        \"slug\": \"newsletter-analytics\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/google-analytics\",\n        \"image\": \" https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/analytics.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=68\",\n        \"wp_slug\": \"newsletter-analytics\\/analytics.php\"\n    },\n    {\n        \"id\": \"70\",\n        \"children_fileid\": null,\n        \"version\": \"1.0.7\",\n        \"title\": \"Subscribe on Comment\",\n        \"description\": \"Adds the subscription option to your blog comment form\",\n        \"slug\": \"newsletter-comments\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/02\\/comment-notification.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=70\",\n        \"wp_slug\": \"newsletter-comments\\/comments.php\"\n    },\n    {\n        \"id\": \"72\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.2.8\",\n        \"title\": \"Autoresponder\",\n        \"description\": \"Create unlimited email series to follow-up your subscribers. Lessons, up-sells, conversations.\",\n        \"slug\": \"newsletter-autoresponder\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/autoresponder\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/emoticons-32px-outline_robot.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=72\",\n        \"wp_slug\": \"newsletter-autoresponder\\/autoresponder.php\"\n    },\n    {\n        \"id\": \"74\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.2.8\",\n        \"title\": \"Extended Composer Blocks\",\n        \"description\": \"Adds new blocks to the newsletter composer: list, video, gallery, full post.\",\n        \"slug\": \"newsletter-blocks\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/ui-32px-outline-3_widget.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=74\",\n        \"wp_slug\": \"newsletter-blocks\\/blocks.php\"\n    },\n    {\n        \"id\": \"75\",\n        \"children_fileid\": null,\n        \"version\": \"1.1.0\",\n        \"title\": \"Geolocation\",\n        \"description\": \"Geolocate the subscribers and target them by geolocation in your campaign.\",\n        \"slug\": \"newsletter-geo\",\n        \"type\": \"extension\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/03\\/geo-extension-icon.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=75\",\n        \"wp_slug\": \"newsletter-geo\\/geo.php\"\n    },\n    {\n        \"id\": \"77\",\n        \"children_fileid\": \"\",\n        \"version\": \"2.0.3\",\n        \"title\": \"Newsletter API\",\n        \"description\": \"Access programmatically to The Newsletter Plugin via REST calls.\",\n        \"slug\": \"newsletter-api\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/10\\/bold-direction@2x-1.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=77\",\n        \"wp_slug\": \"newsletter-api\\/api.php\"\n    },\n    {\n        \"id\": \"55\",\n        \"children_fileid\": null,\n        \"version\": \"4.0.9\",\n        \"title\": \"Facebook\",\n        \"description\": \"One click subscription and confirmation with Facebook Connect.\",\n        \"slug\": \"newsletter-facebook\",\n        \"type\": \"integration\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/facebook-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/Facebook.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=55\",\n        \"wp_slug\": \"newsletter-facebook\\/facebook.php\"\n    },\n    {\n        \"id\": \"76\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.1.2\",\n        \"title\": \"Bounce Management\",\n        \"description\": \"This experimental extension manages the bounces and keeps the list clean of invalid addresses.\",\n        \"slug\": \"newsletter-bounce\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/10\\/ic_settings_backup_restore_32px.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=76\",\n        \"wp_slug\": \"newsletter-bounce\\/bounce.php\"\n    },\n    {\n        \"id\": \"79\",\n        \"children_fileid\": null,\n        \"version\": \"1.0.9\",\n        \"title\": \"Events Manager Integration\",\n        \"description\": \"Integrates with Events Manager plugin to add events in your regular and automated newsletters.\",\n        \"slug\": \"newsletter-events\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2019\\/02\\/events-manager-icon.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=79\",\n        \"wp_slug\": \"newsletter-events\\/events.php\"\n    },\n    {\n        \"id\": \"82\",\n        \"children_fileid\": null,\n        \"version\": \"1.0.0\",\n        \"title\": \"Translatepress Bridge\",\n        \"description\": \"Enables few multilanguage Newsletter features for who is using Translatepress.\",\n        \"slug\": \"newsletter-translatepress\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2018\\/09\\/translatepress.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=82\",\n        \"wp_slug\": \"newsletter-translatepress\\/translatepress.php\"\n    },\n    {\n        \"id\": \"86\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.0.9\",\n        \"title\": \"Advanced Import\",\n        \"description\": \"An advanced import system with extended profile fields and mapping (beta version).\",\n        \"slug\": \"newsletter-import\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/file-upload-88.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=86\",\n        \"wp_slug\": \"newsletter-import\\/import.php\"\n    },\n    {\n        \"id\": \"88\",\n        \"children_fileid\": null,\n        \"version\": \"1.1.1\",\n        \"title\": \"The Events Calendar (by Tribe)\",\n        \"description\": \"Adds a composer block which extracts the events managed by The Events Calendar plugin.\",\n        \"slug\": \"newsletter-tribeevents\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/documentation\\/tribeevents-extension\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2019\\/02\\/tribe-event-calendar-icon.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=88\",\n        \"wp_slug\": \"newsletter-tribeevents\\/tribeevents.php\"\n    },\n    {\n        \"id\": \"58\",\n        \"children_fileid\": null,\n        \"version\": \"4.0.3\",\n        \"title\": \"Archive\",\n        \"description\": \"Generates a public archive of the sent newsletters for your blog.\",\n        \"slug\": \"newsletter-archive\",\n        \"type\": \"extension\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/newsletter-archive-extension\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/files-32px-outline_archive-3d-content.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=58\",\n        \"wp_slug\": \"newsletter-archive\\/archive.php\"\n    },\n    {\n        \"id\": \"71\",\n        \"children_fileid\": null,\n        \"version\": \"1.0.7\",\n        \"title\": \"Locked Content\",\n        \"description\": \"Boost your subscription rate locking out your premium contents with a subscription form.\",\n        \"slug\": \"newsletter-lock\",\n        \"type\": \"extension\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/ui-32px-outline-1_lock-open.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=71\",\n        \"wp_slug\": \"newsletter-lock\\/lock.php\"\n    },\n    {\n        \"id\": \"73\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.2.4\",\n        \"title\": \"WP Users Integration\",\n        \"description\": \"Connects the WordPress user registration with Newsletter subscription. Optionally imports all WP users as subscribers.\",\n        \"slug\": \"newsletter-wpusers\",\n        \"type\": \"integration\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/account\",\n        \"image\": \"https:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/uploads\\/2017\\/04\\/media-32px-outline-2_speaker-01.png\",\n        \"status\": \"3\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=73\",\n        \"wp_slug\": \"newsletter-wpusers\\/wpusers.php\"\n    },\n    {\n        \"id\": \"51\",\n        \"children_fileid\": null,\n        \"version\": \"4.1.1\",\n        \"title\": \"Feed by Mail\",\n        \"description\": \"Automatically creates and sends newsletters with the latest blog posts.\",\n        \"slug\": \"newsletter-feed\",\n        \"type\": \"legacy\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/feed-by-mail-extension\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_playlist.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=51\",\n        \"wp_slug\": \"newsletter-feed\\/feed.php\"\n    },\n    {\n        \"id\": \"53\",\n        \"children_fileid\": null,\n        \"version\": \"2.2.0\",\n        \"title\": \"Popup\",\n        \"description\": \"Configurable popup system to increase the subscription rate.\",\n        \"slug\": \"newsletter-popup\",\n        \"type\": \"legacy\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/popup-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-3_widget.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=53\",\n        \"wp_slug\": \"newsletter-popup\\/popup.php\"\n    },\n    {\n        \"id\": \"54\",\n        \"children_fileid\": null,\n        \"version\": \"4.1.1\",\n        \"title\": \"Followup\",\n        \"description\": \"Automated email series sent upon subscription at defined intervals.\",\n        \"slug\": \"newsletter-followup\",\n        \"type\": \"legacy\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/follow-up-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/ui-32px-outline-2_time-countdown.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=54\",\n        \"wp_slug\": \"newsletter-followup\\/followup.php\"\n    },\n    {\n        \"id\": \"48\",\n        \"children_fileid\": \"\",\n        \"version\": \"4.1.9\",\n        \"title\": \"SendGrid\",\n        \"description\": \"Integrates the SendGrid delivery system and bounce detection.\",\n        \"slug\": \"newsletter-sendgrid\",\n        \"type\": \"delivery\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/sendgrid-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=48\",\n        \"wp_slug\": \"newsletter-sendgrid\\/sendgrid.php\"\n    },\n    {\n        \"id\": \"49\",\n        \"children_fileid\": \"\",\n        \"version\": \"4.0.0\",\n        \"title\": \"Mandrill\",\n        \"description\": \"Integrates the Mandrill delivery system and bounce detection.\",\n        \"slug\": \"newsletter-mandrill\",\n        \"type\": \"legacy\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mandrill-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=49\",\n        \"wp_slug\": \"newsletter-mandrill\\/mandrill.php\"\n    },\n    {\n        \"id\": \"52\",\n        \"children_fileid\": \"\",\n        \"version\": \"4.0.8\",\n        \"title\": \"Mailjet\",\n        \"description\": \"Integrates the Mailjet delivery system and bounce detection.\",\n        \"slug\": \"newsletter-mailjet\",\n        \"type\": \"delivery\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailjet-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=52\",\n        \"wp_slug\": \"newsletter-mailjet\\/mailjet.php\"\n    },\n    {\n        \"id\": \"60\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.2.8\",\n        \"title\": \"Amazon SES\",\n        \"description\": \"Integrates Newsletter with Amazon SES service for sending emails and processing bounces.\",\n        \"slug\": \"newsletter-amazon\",\n        \"type\": \"delivery\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/amazon-ses-extension\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=60\",\n        \"wp_slug\": \"newsletter-amazon\\/amazon.php\"\n    },\n    {\n        \"id\": \"65\",\n        \"children_fileid\": null,\n        \"version\": \"4.1.0\",\n        \"title\": \"Mailgun\",\n        \"description\": \"Integrates the Mailgun delivery system and bounce detection.\",\n        \"slug\": \"newsletter-mailgun\",\n        \"type\": \"delivery\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/mailgun-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=65\",\n        \"wp_slug\": \"newsletter-mailgun\\/mailgun.php\"\n    },\n    {\n        \"id\": \"66\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.0.9\",\n        \"title\": \"ElasticEmail\",\n        \"description\": \"ElasticEmail integration\",\n        \"slug\": \"newsletter-elasticemail\",\n        \"type\": \"delivery\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=66\",\n        \"wp_slug\": \"newsletter-elasticemail\\/elasticemail.php\"\n    },\n    {\n        \"id\": \"69\",\n        \"children_fileid\": \"\",\n        \"version\": \"1.1.7\",\n        \"title\": \"SparkPost\",\n        \"description\": \"Integrates Newsletter with the SparkPost mail delivery service and bounce detection.\",\n        \"slug\": \"newsletter-sparkpost\",\n        \"type\": \"delivery\",\n        \"url\": \"https:\\/\\/www.thenewsletterplugin.com\\/premium\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/design-32px-outline_newsletter-dev.png\",\n        \"status\": \"2\",\n        \"free\": false,\n        \"downloadable\": false,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=69\",\n        \"wp_slug\": \"newsletter-sparkpost\\/sparkpost.php\"\n    },\n    {\n        \"id\": \"56\",\n        \"children_fileid\": \"\",\n        \"version\": \"2.2.0\",\n        \"title\": \"Grabber\",\n        \"description\": \"Experimental! General subscription grabber from other forms. Requires technical skills.\",\n        \"slug\": \"newsletter-grabber\",\n        \"type\": \"legacy\",\n        \"url\": \"http:\\/\\/www.thenewsletterplugin.com\\/plugins\\/newsletter\\/grabber-module\",\n        \"image\": \"https:\\/\\/cdn.thenewsletterplugin.com\\/extensions\\/placeholder.png\",\n        \"status\": \"4\",\n        \"free\": true,\n        \"downloadable\": true,\n        \"download_url\": \"http:\\/\\/www.thenewsletterplugin.com\\/wp-content\\/plugins\\/file-commerce-pro\\/get.php?f=56\",\n        \"wp_slug\": \"newsletter-grabber\\/grabber.php\"\n    }\n]', 'no'),
(1032, '_site_transient_timeout_php_check_c35af108126e3879ab2f7bb297998072', '1602667125', 'no'),
(1033, '_site_transient_php_check_c35af108126e3879ab2f7bb297998072', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1159, '_site_transient_timeout_browser_ce4e9e986b0fbc713624d54b83c36283', '1602748878', 'no'),
(1160, '_site_transient_browser_ce4e9e986b0fbc713624d54b83c36283', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"85.0.4183.121\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1161, '_site_transient_timeout_php_check_dfc1ea61a768032146a7035f8bd1d77a', '1602748880', 'no'),
(1162, '_site_transient_php_check_dfc1ea61a768032146a7035f8bd1d77a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1270, '_site_transient_timeout_browser_44a5e524f134e3228c7b0b16c2224ffc', '1602827185', 'no'),
(1271, '_site_transient_browser_44a5e524f134e3228c7b0b16c2224ffc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.75\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1272, '_transient_timeout_my_save_post_errors_467', '1602222395', 'no'),
(1273, '_transient_my_save_post_errors_467', 'Security Check Failed', 'no'),
(1274, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1602265587', 'no'),
(1275, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:75:\"Discussion Group: Who am I to be speaking? + Finding a topic for a WP event\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/273798318/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-10-12 07:00:00\";s:8:\"end_date\";s:19:\"2020-10-12 08:00:00\";s:20:\"start_unix_timestamp\";i:1602511200;s:18:\"end_unix_timestamp\";i:1602514800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:19:\"WordCamp Austin, TX\";s:3:\"url\";s:33:\"https://austin.wordcamp.org/2020/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-10-09 08:45:00\";s:8:\"end_date\";s:19:\"2020-10-09 08:45:00\";s:20:\"start_unix_timestamp\";i:1602251100;s:18:\"end_unix_timestamp\";i:1602251100;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:30.267153;s:9:\"longitude\";d:-97.7430608;}}}}', 'no'),
(1313, '_transient_timeout_acf_get_remote_plugin_info', '1602310429', 'no'),
(1314, '_transient_acf_get_remote_plugin_info', 'a:16:{s:4:\"name\";s:26:\"Advanced Custom Fields PRO\";s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"5.9.1\";s:8:\"homepage\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"author\";s:64:\"<a href=\"https://www.advancedcustomfields.com\">Elliot Condon</a>\";s:12:\"contributors\";a:1:{s:12:\"elliotcondon\";a:3:{s:7:\"profile\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"avatar\";s:81:\"https://secure.gravatar.com/avatar/c296f449f92233e8d1102ff01c9bc71e?s=96&d=mm&r=g\";s:12:\"display_name\";s:22:\"Advanced Custom Fields\";}}s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.5.1\";s:5:\"added\";s:10:\"2014-07-11\";s:12:\"last_updated\";s:10:\"2020-09-08\";s:9:\"changelog\";s:658:\"<h4>5.9.1</h4><p><em>Release Date - 8 September 2020</em></p>\n\n<ul>\n<li>Fix - Fixed guten-bug causing \"Preview Post\" button to publish changes.</li>\n<li>Fix - Fixed guten-bug causing JS errors when editing with Elementor or Beaver Builder.</li>\n<li>Fix - Fixed bug in Color Picker field causing JS error on front-end forms.</li>\n<li>Fix - Fixed bug in Post Taxonomy location rule causing incomplete list of rule choices.</li>\n<li>Fix - Reverted Local JSON \"save to source path\" enhancement due to DX feedback. </li>\n<li>i18n - Updated Indonesian translations thanks to Rio Bahtiar.</li>\n<li>i18n - Updated Turkish translation thanks to Emre Erkan.</li>\n</ul>\";s:14:\"upgrade_notice\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"versions\";a:118:{i:0;s:11:\"5.9.0-beta5\";i:1;s:11:\"5.9.0-beta4\";i:2;s:11:\"5.9.0-beta3\";i:3;s:11:\"5.9.0-beta2\";i:4;s:11:\"5.9.0-beta1\";i:5;s:9:\"5.9.0-RC1\";i:6;s:5:\"5.9.0\";i:7;s:5:\"5.8.9\";i:8;s:5:\"5.8.8\";i:9;s:5:\"5.8.7\";i:10;s:5:\"5.8.6\";i:11;s:5:\"5.8.5\";i:12;s:5:\"5.8.4\";i:13;s:5:\"5.8.3\";i:14;s:5:\"5.8.2\";i:15;s:6:\"5.8.14\";i:16;s:6:\"5.8.13\";i:17;s:6:\"5.8.12\";i:18;s:6:\"5.8.11\";i:19;s:5:\"5.8.1\";i:20;s:13:\"5.8.0-beta4.1\";i:21;s:11:\"5.8.0-beta4\";i:22;s:11:\"5.8.0-beta3\";i:23;s:11:\"5.8.0-beta2\";i:24;s:11:\"5.8.0-beta1\";i:25;s:9:\"5.8.0-RC2\";i:26;s:9:\"5.8.0-RC1\";i:27;s:5:\"5.8.0\";i:28;s:5:\"5.7.9\";i:29;s:5:\"5.7.8\";i:30;s:5:\"5.7.7\";i:31;s:5:\"5.7.6\";i:32;s:5:\"5.7.5\";i:33;s:5:\"5.7.4\";i:34;s:5:\"5.7.3\";i:35;s:5:\"5.7.2\";i:36;s:6:\"5.7.13\";i:37;s:6:\"5.7.12\";i:38;s:6:\"5.7.10\";i:39;s:5:\"5.7.1\";i:40;s:5:\"5.7.0\";i:41;s:5:\"5.6.9\";i:42;s:5:\"5.6.8\";i:43;s:5:\"5.6.7\";i:44;s:5:\"5.6.6\";i:45;s:5:\"5.6.5\";i:46;s:5:\"5.6.4\";i:47;s:5:\"5.6.3\";i:48;s:5:\"5.6.2\";i:49;s:6:\"5.6.10\";i:50;s:5:\"5.6.1\";i:51;s:11:\"5.6.0-beta2\";i:52;s:11:\"5.6.0-beta1\";i:53;s:9:\"5.6.0-RC2\";i:54;s:9:\"5.6.0-RC1\";i:55;s:5:\"5.6.0\";i:56;s:5:\"5.5.9\";i:57;s:5:\"5.5.7\";i:58;s:5:\"5.5.5\";i:59;s:5:\"5.5.3\";i:60;s:5:\"5.5.2\";i:61;s:6:\"5.5.14\";i:62;s:6:\"5.5.13\";i:63;s:6:\"5.5.12\";i:64;s:6:\"5.5.11\";i:65;s:6:\"5.5.10\";i:66;s:5:\"5.5.1\";i:67;s:5:\"5.5.0\";i:68;s:5:\"5.4.8\";i:69;s:5:\"5.4.7\";i:70;s:5:\"5.4.6\";i:71;s:5:\"5.4.5\";i:72;s:5:\"5.4.4\";i:73;s:5:\"5.4.3\";i:74;s:5:\"5.4.2\";i:75;s:5:\"5.4.1\";i:76;s:5:\"5.4.0\";i:77;s:5:\"5.3.9\";i:78;s:5:\"5.3.8\";i:79;s:5:\"5.3.7\";i:80;s:5:\"5.3.6\";i:81;s:5:\"5.3.5\";i:82;s:5:\"5.3.4\";i:83;s:5:\"5.3.3\";i:84;s:5:\"5.3.2\";i:85;s:6:\"5.3.10\";i:86;s:5:\"5.3.1\";i:87;s:5:\"5.3.0\";i:88;s:5:\"5.2.9\";i:89;s:5:\"5.2.8\";i:90;s:5:\"5.2.7\";i:91;s:5:\"5.2.6\";i:92;s:5:\"5.2.5\";i:93;s:5:\"5.2.4\";i:94;s:5:\"5.2.3\";i:95;s:5:\"5.2.2\";i:96;s:5:\"5.2.1\";i:97;s:5:\"5.2.0\";i:98;s:5:\"5.1.9\";i:99;s:5:\"5.1.8\";i:100;s:5:\"5.1.7\";i:101;s:5:\"5.1.6\";i:102;s:5:\"5.1.5\";i:103;s:5:\"5.1.4\";i:104;s:5:\"5.1.3\";i:105;s:5:\"5.1.2\";i:106;s:5:\"5.1.1\";i:107;s:5:\"5.1.0\";i:108;s:5:\"5.0.9\";i:109;s:5:\"5.0.8\";i:110;s:5:\"5.0.7\";i:111;s:5:\"5.0.6\";i:112;s:5:\"5.0.5\";i:113;s:5:\"5.0.4\";i:114;s:5:\"5.0.3\";i:115;s:5:\"5.0.2\";i:116;s:5:\"5.0.1\";i:117;s:5:\"5.0.0\";}}', 'no'),
(1315, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1602234843', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1316, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4724;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4398;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2684;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2564;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1977;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1826;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1807;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1491;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1491;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1487;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1459;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1458;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1446;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1306;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1224;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1206;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1161;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1135;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1109;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1016;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:905;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:901;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:882;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:880;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:814;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:803;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:795;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:781;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:779;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:753;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:751;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:726;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:720;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:703;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:703;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:688;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:665;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:663;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:657;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:651;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:636;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:635;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:615;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:605;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:592;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:584;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:582;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:578;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:568;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:563;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:558;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:557;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:552;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:552;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:543;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:533;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:532;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:528;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:522;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:521;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:521;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:507;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:492;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:485;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:481;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:478;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:465;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:459;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:441;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:441;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:440;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:439;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:436;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:433;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:428;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:427;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:426;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:424;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:420;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:416;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:413;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:404;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:399;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:397;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:393;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:388;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:384;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:383;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:378;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:378;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:376;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:372;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:364;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:360;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:358;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:349;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:346;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:345;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:341;}}', 'no'),
(1318, '_site_transient_timeout_theme_roots', '1602225868', 'no'),
(1319, '_site_transient_theme_roots', 'a:2:{s:7:\"sizzler\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1320, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1602224078;s:7:\"checked\";a:12:{s:49:\"3d-flipbook-dflip-lite/3d-flipbook-dflip-lite.php\";s:7:\"1.7.3.8\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.5.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:7:\"1.5.7.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:19:\"wp-clean-up/dcl.php\";s:5:\"1.0.0\";s:39:\"email-subscribers/email-subscribers.php\";s:5:\"4.6.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:21:\"newsletter/plugin.php\";s:5:\"6.8.8\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";s:39:\"wp-file-manager/file_folder_manager.php\";s:3:\"6.9\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.6\";}s:8:\"response\";a:2:{s:19:\"wp-clean-up/dcl.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/wp-clean-up\";s:4:\"slug\";s:11:\"wp-clean-up\";s:6:\"plugin\";s:19:\"wp-clean-up/dcl.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-clean-up/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-clean-up.1.2.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:55:\"https://s.w.org/plugins/geopattern-icon/wp-clean-up.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:6:\"3.9.32\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:7:\"package\";s:0:\"\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:49:\"3d-flipbook-dflip-lite/3d-flipbook-dflip-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/3d-flipbook-dflip-lite\";s:4:\"slug\";s:22:\"3d-flipbook-dflip-lite\";s:6:\"plugin\";s:49:\"3d-flipbook-dflip-lite/3d-flipbook-dflip-lite.php\";s:11:\"new_version\";s:7:\"1.7.3.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/3d-flipbook-dflip-lite/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/3d-flipbook-dflip-lite.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/3d-flipbook-dflip-lite/assets/icon-256x256.gif?rev=2350958\";s:2:\"1x\";s:75:\"https://ps.w.org/3d-flipbook-dflip-lite/assets/icon-128x128.gif?rev=2350958\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/3d-flipbook-dflip-lite/assets/banner-772x250.png?rev=2352324\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/taxonomy-terms-order\";s:4:\"slug\";s:20:\"taxonomy-terms-order\";s:6:\"plugin\";s:45:\"taxonomy-terms-order/taxonomy-terms-order.php\";s:11:\"new_version\";s:7:\"1.5.7.3\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/taxonomy-terms-order/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412\";s:2:\"1x\";s:73:\"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412\";s:2:\"1x\";s:75:\"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"email-subscribers/email-subscribers.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/email-subscribers\";s:4:\"slug\";s:17:\"email-subscribers\";s:6:\"plugin\";s:39:\"email-subscribers/email-subscribers.php\";s:11:\"new_version\";s:5:\"4.6.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/email-subscribers/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/email-subscribers.4.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/email-subscribers/assets/icon-256x256.png?rev=2274172\";s:2:\"1x\";s:70:\"https://ps.w.org/email-subscribers/assets/icon-128x128.png?rev=2274172\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/email-subscribers/assets/banner-1544x500.png?rev=2304804\";s:2:\"1x\";s:72:\"https://ps.w.org/email-subscribers/assets/banner-772x250.png?rev=2304804\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"newsletter/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:6:\"plugin\";s:21:\"newsletter/plugin.php\";s:11:\"new_version\";s:5:\"6.8.8\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/newsletter/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/newsletter.6.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/newsletter/assets/icon-256x256.png?rev=1052028\";s:2:\"1x\";s:63:\"https://ps.w.org/newsletter/assets/icon-128x128.png?rev=1160467\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/newsletter/assets/banner-1544x500.png?rev=1052027\";s:2:\"1x\";s:65:\"https://ps.w.org/newsletter/assets/banner-772x250.png?rev=1052027\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"wp-file-manager/file_folder_manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wp-file-manager\";s:4:\"slug\";s:15:\"wp-file-manager\";s:6:\"plugin\";s:39:\"wp-file-manager/file_folder_manager.php\";s:11:\"new_version\";s:3:\"6.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wp-file-manager/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wp-file-manager.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-file-manager/assets/icon-128x128.png?rev=1846029\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/wp-file-manager/assets/banner-772x250.jpg?rev=1846030\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1322, 'category_children', 'a:4:{i:5;a:4:{i:0;i:41;i:1;i:27;i:2;i:28;i:3;i:29;}i:11;a:4:{i:0;i:40;i:1;i:39;i:2;i:12;i:3;i:13;}i:33;a:4:{i:0;i:34;i:1;i:35;i:2;i:36;i:3;i:37;}i:3;a:8:{i:0;i:18;i:1;i:19;i:2;i:20;i:3;i:21;i:4;i:22;i:5;i:23;i:6;i:24;i:7;i:25;}}', 'yes'),
(1331, '_transient_timeout_my_save_post_errors_468', '1602224908', 'no'),
(1332, '_transient_my_save_post_errors_468', 'Security Check Failed', 'no'),
(1333, '_transient_timeout_my_save_post_errors_469', '1602224908', 'no'),
(1334, '_transient_my_save_post_errors_469', 'Security Check Failed', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1601470486:1'),
(4, 5, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(5, 5, '_mail', 'a:8:{s:7:\"subject\";s:25:\"sizzlers \"[your-subject]\"\";s:6:\"sender\";s:37:\"sizzlers <dasbairagyagopal@gmail.com>\";s:4:\"body\";s:172:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on sizzlers (http://localhost/sizzlers)\";s:9:\"recipient\";s:26:\"dasbairagyagopal@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(6, 5, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"sizzlers \"[your-subject]\"\";s:6:\"sender\";s:37:\"sizzlers <dasbairagyagopal@gmail.com>\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on sizzlers (http://localhost/sizzlers)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:36:\"Reply-To: dasbairagyagopal@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(7, 5, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(8, 5, '_additional_settings', NULL),
(9, 5, '_locale', 'en_US'),
(10, 6, '_edit_last', '1'),
(11, 6, '_edit_lock', '1601055309:1'),
(12, 6, '_wp_page_template', 'page-templates/front-page.php'),
(15, 319, '_edit_last', '1'),
(16, 319, '_edit_lock', '1601057574:1'),
(19, 319, '_wp_trash_meta_status', 'publish'),
(20, 319, '_wp_trash_meta_time', '1601057723'),
(21, 319, '_wp_desired_post_slug', 'group_5f38248014601'),
(22, 355, '_edit_lock', '1601060216:1'),
(23, 355, '_edit_last', '1'),
(24, 384, '_edit_last', '1'),
(25, 384, '_edit_lock', '1602063054:1'),
(26, 384, '_wp_page_template', 'page-templates/about.php'),
(27, 386, '_edit_last', '1'),
(28, 386, '_wp_page_template', 'page-templates/contact.php'),
(29, 386, '_edit_lock', '1601060991:1'),
(30, 388, '_edit_last', '1'),
(31, 388, '_wp_page_template', 'page-templates/blog.php'),
(32, 388, '_edit_lock', '1601062089:1'),
(33, 390, '_edit_last', '1'),
(34, 390, '_wp_page_template', 'page-templates/login.php'),
(35, 390, '_edit_lock', '1601794511:1'),
(36, 392, '_edit_last', '1'),
(37, 392, '_edit_lock', '1602005860:1'),
(38, 393, '_wp_attached_file', '2020/09/single_blog_1.png'),
(39, 393, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2020/09/single_blog_1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"single_blog_1-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"single_blog_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 392, '_thumbnail_id', '393'),
(43, 395, '_wp_attached_file', '2020/09/single_blog_2.png'),
(44, 395, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2020/09/single_blog_2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"single_blog_2-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"single_blog_2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 396, '_wp_attached_file', '2020/09/single_blog_3.png'),
(46, 396, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2020/09/single_blog_3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"single_blog_3-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"single_blog_3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 397, '_wp_attached_file', '2020/09/single_blog_4.png'),
(48, 397, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2020/09/single_blog_4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"single_blog_4-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"single_blog_4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 398, '_wp_attached_file', '2020/09/single_blog_5.png'),
(50, 398, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2020/09/single_blog_5.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"single_blog_5-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"single_blog_5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 399, '_edit_last', '1'),
(52, 399, '_edit_lock', '1601120023:1'),
(53, 399, '_wp_page_template', 'page-templates/register.php'),
(54, 401, '_edit_last', '1'),
(55, 401, '_edit_lock', '1601120683:1'),
(56, 401, '_wp_page_template', 'page-templates/forgot-password.php'),
(57, 403, '_thumbnail_id', '395'),
(58, 403, '_dp_original', '392'),
(59, 403, '_edit_lock', '1602005844:1'),
(60, 403, '_edit_last', '1'),
(63, 405, '_thumbnail_id', '398'),
(65, 405, '_dp_original', '403'),
(66, 405, '_edit_lock', '1602005834:1'),
(67, 405, '_edit_last', '1'),
(70, 407, '_thumbnail_id', '397'),
(72, 407, '_dp_original', '405'),
(73, 407, '_edit_lock', '1602005824:1'),
(74, 407, '_edit_last', '1'),
(77, 1, '_edit_last', '1'),
(78, 1, '_thumbnail_id', '396'),
(119, 421, '_edit_lock', '1601525457:1'),
(120, 421, '_edit_last', '1'),
(121, 423, '_edit_lock', '1601523828:1'),
(122, 423, '_edit_last', '1'),
(123, 423, 'magazine_link', 'https://issuu.com/caribbeanposh/docs/posh_summer_sizzle_issue_2019_final'),
(124, 423, '_magazine_link', 'field_5f754e6017f9b'),
(125, 425, '_wp_attached_file', '2020/10/summer-sizzle-2019-cover-787x1024-1.jpg'),
(126, 425, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:787;s:6:\"height\";i:1024;s:4:\"file\";s:47:\"2020/10/summer-sizzle-2019-cover-787x1024-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"summer-sizzle-2019-cover-787x1024-1-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"summer-sizzle-2019-cover-787x1024-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"summer-sizzle-2019-cover-787x1024-1-768x999.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:999;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 423, '_thumbnail_id', '425'),
(128, 426, 'magazine_link', 'https://issuu.com/caribbeanposh/docs/posh_brunch_issue_2019_-may14_c167f09995f979'),
(129, 426, '_magazine_link', 'field_5f754e6017f9b'),
(130, 426, '_thumbnail_id', '427'),
(131, 426, '_dp_original', '423'),
(132, 426, '_edit_lock', '1601524016:1'),
(133, 427, '_wp_attached_file', '2020/10/img.jpg'),
(134, 427, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:402;s:6:\"height\";i:523;s:4:\"file\";s:15:\"2020/10/img.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"img-231x300.jpg\";s:5:\"width\";i:231;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 428, '_wp_attached_file', '2020/10/Posh-2016-Summer-Issue-Final.jpg'),
(136, 428, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:776;s:4:\"file\";s:40:\"2020/10/Posh-2016-Summer-Issue-Final.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"Posh-2016-Summer-Issue-Final-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"Posh-2016-Summer-Issue-Final-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 429, '_wp_attached_file', '2020/10/Posh-Body-Issue-2015-Final.jpg'),
(138, 429, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:776;s:4:\"file\";s:38:\"2020/10/Posh-Body-Issue-2015-Final.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Posh-Body-Issue-2015-Final-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Posh-Body-Issue-2015-Final-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(139, 430, '_wp_attached_file', '2020/10/Posh-Body-Issue-WEB3-cover.jpg'),
(140, 430, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:776;s:4:\"file\";s:38:\"2020/10/Posh-Body-Issue-WEB3-cover.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"Posh-Body-Issue-WEB3-cover-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"Posh-Body-Issue-WEB3-cover-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 431, '_wp_attached_file', '2020/10/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg'),
(142, 431, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:776;s:4:\"file\";s:50:\"2020/10/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"Posh-Holiday-Issue-2018-SEMI-600x776-1-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"Posh-Holiday-Issue-2018-SEMI-600x776-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 426, '_edit_last', '1'),
(144, 432, 'magazine_link', 'https://issuu.com/caribbeanposh/docs/posh_holiday_issue_2018_final'),
(145, 432, '_magazine_link', 'field_5f754e6017f9b'),
(146, 432, '_thumbnail_id', '431'),
(148, 432, '_dp_original', '426'),
(149, 432, '_edit_lock', '1601524048:1'),
(150, 432, '_edit_last', '1'),
(151, 433, 'magazine_link', 'https://issuu.com/caribbeanposh/docs/posh_2016_summer_issue'),
(152, 433, '_magazine_link', 'field_5f754e6017f9b'),
(153, 433, '_thumbnail_id', '428'),
(155, 433, '_dp_original', '432'),
(156, 433, '_edit_lock', '1601524073:1'),
(157, 433, '_edit_last', '1'),
(158, 434, 'magazine_link', 'https://issuu.com/caribbeanposh/docs/posh_body_issue_2015-final-print'),
(159, 434, '_magazine_link', 'field_5f754e6017f9b'),
(160, 434, '_thumbnail_id', '429'),
(162, 434, '_dp_original', '433'),
(163, 434, '_edit_lock', '1601524099:1'),
(164, 434, '_edit_last', '1'),
(165, 435, 'magazine_link', 'https://issuu.com/caribbeanposh/docs/posh-body-issue-web4'),
(166, 435, '_magazine_link', 'field_5f754e6017f9b'),
(167, 435, '_thumbnail_id', '430'),
(169, 435, '_dp_original', '434'),
(170, 435, '_edit_lock', '1601533242:1'),
(171, 435, '_edit_last', '1'),
(172, 436, '_edit_lock', '1602008149:1'),
(173, 436, '_edit_last', '1'),
(174, 436, '_dflip_data', 'a:29:{s:11:\"source_type\";s:5:\"image\";s:10:\"pdf_source\";s:0:\"\";s:9:\"pdf_thumb\";s:0:\"\";s:5:\"pages\";a:7:{i:0;a:2:{s:3:\"url\";s:97:\"http://pre-live.asteeri.com/wp-content/uploads/2020/10/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg\";s:8:\"hotspots\";a:0:{}}i:1;a:2:{s:3:\"url\";s:85:\"http://pre-live.asteeri.com/wp-content/uploads/2020/10/Posh-Body-Issue-WEB3-cover.jpg\";s:8:\"hotspots\";a:0:{}}i:2;a:2:{s:3:\"url\";s:85:\"http://pre-live.asteeri.com/wp-content/uploads/2020/10/Posh-Body-Issue-2015-Final.jpg\";s:8:\"hotspots\";a:0:{}}i:3;a:2:{s:3:\"url\";s:62:\"http://pre-live.asteeri.com/wp-content/uploads/2020/10/img.jpg\";s:8:\"hotspots\";a:0:{}}i:4;a:2:{s:3:\"url\";s:87:\"http://pre-live.asteeri.com/wp-content/uploads/2020/10/Posh-2016-Summer-Issue-Final.jpg\";s:8:\"hotspots\";a:0:{}}i:5;a:2:{s:3:\"url\";s:94:\"http://pre-live.asteeri.com/wp-content/uploads/2020/10/summer-sizzle-2019-cover-787x1024-1.jpg\";s:8:\"hotspots\";a:0:{}}i:6;a:2:{s:3:\"url\";s:0:\"\";s:8:\"hotspots\";a:0:{}}}s:5:\"webgl\";s:4:\"true\";s:4:\"hard\";s:4:\"none\";s:8:\"bg_color\";s:0:\"\";s:8:\"bg_image\";s:0:\"\";s:8:\"duration\";s:0:\"\";s:6:\"height\";s:0:\"\";s:12:\"texture_size\";s:6:\"global\";s:10:\"auto_sound\";s:6:\"global\";s:15:\"enable_download\";s:6:\"global\";s:9:\"page_mode\";s:6:\"global\";s:16:\"single_page_mode\";s:6:\"global\";s:17:\"controls_position\";s:6:\"global\";s:9:\"direction\";s:1:\"1\";s:9:\"force_fit\";s:4:\"true\";s:8:\"autoplay\";s:6:\"global\";s:17:\"autoplay_duration\";s:0:\"\";s:14:\"autoplay_start\";s:6:\"global\";s:9:\"page_size\";s:1:\"0\";s:12:\"auto_outline\";s:5:\"false\";s:14:\"auto_thumbnail\";s:5:\"false\";s:17:\"overwrite_outline\";s:5:\"false\";s:7:\"outline\";a:0:{}s:5:\"title\";s:4:\"test\";s:4:\"slug\";s:4:\"test\";s:6:\"status\";s:7:\"publish\";}'),
(175, 441, '_edit_lock', '1601527094:1'),
(176, 441, '_edit_last', '1'),
(179, 407, 'video_url', 'https://www.youtube.com/watch?v=D7WNjCBLaU4&ab_channel=SuperTopRanking'),
(180, 407, '_video_url', 'field_5f755ac985e05'),
(185, 405, 'video_url', 'https://www.youtube.com/watch?v=D7WNjCBLaU4&ab_channel=SuperTopRanking'),
(186, 405, '_video_url', 'field_5f755ac985e05'),
(189, 445, '_thumbnail_id', '397'),
(191, 445, 'video_url', 'https://www.youtube.com/watch?v=D7WNjCBLaU4&ab_channel=SuperTopRanking'),
(192, 445, '_video_url', 'field_5f755ac985e05'),
(193, 445, '_dp_original', '407'),
(194, 445, '_edit_lock', '1602005814:1'),
(195, 445, '_edit_last', '1'),
(200, 448, '_form', '<div class=\"row\">\n<div class=\"col-sm-6\">\n<div class=\"form-group\">\n[text* uname id:name class:form-control class:valid placeholder \"Enter your name\"]     \n</div>\n</div>\n<div class=\"col-sm-6\">\n<div class=\"form-group\">\n[email* uemail id:email class:form-control class:valid placeholder \"Your E-mail Address\"]   \n</div>\n</div>\n<div class=\"col-12\">\n<div class=\"form-group\">\n[text sub id:sub class:form-control placeholder \"Enter Subject\"]     \n</div>\n</div>\n<div class=\"col-12\">\n<div class=\"form-group\">\n[textarea*  message id:message class:form-control class:w-100 placeholder \"Your Message\"]  \n</div>\n</div>\n</div>\n<div class=\"form-group mt-3\">\n<button id=\'submit\' class=\'wpcf7-form-control wpcf7-submit button button-contactForm boxed-btn\'>Send</button>\n\n</div>'),
(201, 448, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:16:\"sizzlers \"[sub]\"\";s:6:\"sender\";s:37:\"sizzlers <dasbairagyagopal@gmail.com>\";s:9:\"recipient\";s:26:\"dasbairagyagopal@gmail.com\";s:4:\"body\";s:153:\"From: [uname] <[uemail]>\nSubject: [sub]\n\nMessage Body:\n[message]\n\n-- \nThis e-mail was sent from a contact form on sizzlers (http://localhost/wp/sizzlers)\";s:18:\"additional_headers\";s:18:\"Reply-To: [uemail]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(202, 448, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"sizzlers \"[your-subject]\"\";s:6:\"sender\";s:37:\"sizzlers <dasbairagyagopal@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:117:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on sizzlers (http://localhost/wp/sizzlers)\";s:18:\"additional_headers\";s:36:\"Reply-To: dasbairagyagopal@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(203, 448, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(204, 448, '_additional_settings', ''),
(205, 448, '_locale', 'en_US'),
(207, 451, '_wp_attached_file', '2020/10/sizzler-Logo-250920-scaled.jpg'),
(208, 451, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:853;s:4:\"file\";s:38:\"2020/10/sizzler-Logo-250920-scaled.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"sizzler-Logo-250920-300x100.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"sizzler-Logo-250920-1024x341.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:341;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"sizzler-Logo-250920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"sizzler-Logo-250920-768x256.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:256;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:32:\"sizzler-Logo-250920-1536x512.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:32:\"sizzler-Logo-250920-2048x683.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:32:\"sizzler-Logo-250920-1200x400.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:19:\"sizzler Logo 250920\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:23:\"sizzler-Logo-250920.jpg\";}'),
(209, 452, '_wp_trash_meta_status', 'publish'),
(210, 452, '_wp_trash_meta_time', '1601909328'),
(211, 453, '_wp_trash_meta_status', 'publish'),
(212, 453, '_wp_trash_meta_time', '1601911083'),
(213, 454, '_wp_attached_file', '2020/10/WhatsApp-Image-2020-10-02-at-10.19.30-PM.jpeg'),
(214, 454, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:31;s:6:\"height\";i:30;s:4:\"file\";s:53:\"2020/10/WhatsApp-Image-2020-10-02-at-10.19.30-PM.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 455, '_wp_trash_meta_status', 'publish'),
(216, 455, '_wp_trash_meta_time', '1601912969'),
(227, 464, '_edit_lock', '1602062527:1'),
(228, 464, '_edit_last', '1'),
(229, 464, '_wp_page_template', 'page-templates/digital-megazine.php'),
(230, 468, '_thumbnail_id', '397'),
(231, 468, 'video_url', 'https://www.youtube.com/watch?v=D7WNjCBLaU4&ab_channel=SuperTopRanking'),
(232, 468, '_video_url', 'field_5f755ac985e05'),
(234, 468, '_dp_original', '445'),
(235, 468, '_edit_lock', '1602228728:1'),
(236, 468, '_edit_last', '1'),
(239, 469, 'video_url', 'https://www.youtube.com/watch?v=D7WNjCBLaU4&ab_channel=SuperTopRanking'),
(240, 469, '_video_url', 'field_5f755ac985e05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-25 16:49:10', '2020-09-25 16:49:10', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-30 12:54:45', '2020-09-30 12:54:45', '', 0, 'http://localhost/sizzlers/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-25 16:49:10', '2020-09-25 16:49:10', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/sizzlers/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-25 16:49:10', '2020-09-25 16:49:10', '', 0, 'http://localhost/sizzlers/?page_id=2', 0, 'page', '', 0),
(5, 1, '2020-09-25 17:10:15', '2020-09-25 17:10:15', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nsizzlers \"[your-subject]\"\nsizzlers <dasbairagyagopal@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on sizzlers (http://localhost/sizzlers)\ndasbairagyagopal@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nsizzlers \"[your-subject]\"\nsizzlers <dasbairagyagopal@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on sizzlers (http://localhost/sizzlers)\n[your-email]\nReply-To: dasbairagyagopal@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-25 17:10:15', '2020-09-25 17:10:15', '', 0, 'http://localhost/sizzlers/?post_type=wpcf7_contact_form&p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2020-09-25 17:37:29', '2020-09-25 17:37:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-25 17:37:29', '2020-09-25 17:37:29', '', 0, 'http://localhost/sizzlers/?page_id=6', 0, 'page', '', 0),
(319, 1, '2020-08-15 18:10:25', '2020-08-15 18:10:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"Sizzler-general-settings\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Theme Settings', 'theme-settings', 'trash', 'closed', 'closed', '', 'group_5f38248014601__trashed', '', '', '2020-09-25 18:15:23', '2020-09-25 18:15:23', '', 0, 'http://webinch.com/masonic/?post_type=acf-field-group&#038;p=319', 0, 'acf-field-group', '', 0),
(321, 1, '2020-08-15 18:10:25', '2020-08-15 18:10:25', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Header Options', '', 'publish', 'closed', 'closed', '', 'field_5f382493a32d1', '', '', '2020-08-15 18:10:25', '2020-08-15 18:10:25', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=320', 0, 'acf-field', '', 0),
(322, 1, '2020-08-15 18:10:25', '2020-08-15 18:10:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:12:\"Phone Number\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone Number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5f3824a7a32d2', '', '', '2020-08-15 18:10:25', '2020-08-15 18:10:25', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=321', 1, 'acf-field', '', 0),
(323, 1, '2020-08-15 18:10:25', '2020-08-15 18:10:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Email Address\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email Address', 'email_address', 'publish', 'closed', 'closed', '', 'field_5f3824baa32d3', '', '', '2020-08-15 18:10:25', '2020-08-15 18:10:25', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=322', 2, 'acf-field', '', 0),
(324, 1, '2020-08-15 18:10:25', '2020-08-15 18:10:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Some promotional Text\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Top Headline', 'top_headline', 'publish', 'closed', 'closed', '', 'field_5f3824cca32d4', '', '', '2020-08-15 18:10:25', '2020-08-15 18:10:25', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=323', 3, 'acf-field', '', 0),
(325, 1, '2020-08-15 18:10:25', '2020-08-15 18:10:25', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Footer Options', '', 'publish', 'closed', 'closed', '', 'field_5f3824eda32d5', '', '', '2020-08-15 18:10:25', '2020-08-15 18:10:25', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=324', 4, 'acf-field', '', 0),
(326, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone Number', 'phone_number22', 'publish', 'closed', 'closed', '', 'field_5f3825fd23abb', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=325', 5, 'acf-field', '', 0),
(327, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Fax', 'fax', 'publish', 'closed', 'closed', '', 'field_5f38262023abd', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=326', 6, 'acf-field', '', 0),
(328, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email Address', 'email_address22', 'publish', 'closed', 'closed', '', 'field_5f38261123abc', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=327', 7, 'acf-field', '', 0),
(329, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 1 Headeing', 'footer_section_1_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825b323ab7', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=328', 8, 'acf-field', '', 0),
(330, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 2 Headeing', 'footer_section_2_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825da23ab8', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=329', 9, 'acf-field', '', 0),
(331, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 3 Headeing', 'footer_section_3_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825e523ab9', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=330', 10, 'acf-field', '', 0),
(332, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 4 Headeing', 'footer_section_4_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825f423aba', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=331', 11, 'acf-field', '', 0),
(333, 1, '2020-08-15 18:15:37', '2020-08-15 18:15:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright Text', 'copyright_text', 'publish', 'closed', 'closed', '', 'field_5f38263c23abe', '', '', '2020-08-15 18:15:37', '2020-08-15 18:15:37', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=332', 12, 'acf-field', '', 0),
(334, 1, '2020-08-15 18:18:19', '2020-08-15 18:18:19', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'field_5f3826a0db2d2', '', '', '2020-08-15 18:18:19', '2020-08-15 18:18:19', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=333', 13, 'acf-field', '', 0),
(335, 1, '2020-08-15 18:18:19', '2020-08-15 18:18:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Newsletter Heading\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading1', 'publish', 'closed', 'closed', '', 'field_5f3826b0db2d3', '', '', '2020-08-15 18:18:19', '2020-08-15 18:18:19', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=334', 14, 'acf-field', '', 0),
(336, 1, '2020-08-15 18:18:19', '2020-08-15 18:18:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:11:\"Sub Heading\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Heading', 'sub_heading', 'publish', 'closed', 'closed', '', 'field_5f3826ccdb2d4', '', '', '2020-08-15 18:18:19', '2020-08-15 18:18:19', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=335', 15, 'acf-field', '', 0),
(337, 1, '2020-08-15 18:21:38', '2020-08-15 18:21:38', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'field_5f38270dbdf12', '', '', '2020-08-15 18:21:38', '2020-08-15 18:21:38', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=336', 16, 'acf-field', '', 0),
(338, 1, '2020-08-15 18:21:38', '2020-08-15 18:21:38', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5f382723bdf13', '', '', '2020-08-15 18:21:38', '2020-08-15 18:21:38', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=337', 21, 'acf-field', '', 0),
(339, 1, '2020-08-15 18:21:38', '2020-08-15 18:21:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone Number', 'phone_number233', 'publish', 'closed', 'closed', '', 'field_5f382757bdf14', '', '', '2020-08-15 18:21:38', '2020-08-15 18:21:38', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=338', 17, 'acf-field', '', 0),
(340, 1, '2020-08-15 18:21:38', '2020-08-15 18:21:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Fax', 'fax22', 'publish', 'closed', 'closed', '', 'field_5f38276bbdf15', '', '', '2020-08-15 18:21:38', '2020-08-15 18:21:38', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=339', 18, 'acf-field', '', 0),
(341, 1, '2020-08-15 18:21:38', '2020-08-15 18:21:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email Adress', 'email_adress223', 'publish', 'closed', 'closed', '', 'field_5f382772bdf16', '', '', '2020-08-15 18:21:38', '2020-08-15 18:21:38', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=340', 19, 'acf-field', '', 0),
(342, 1, '2020-08-15 18:21:38', '2020-08-15 18:21:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:11:\"IFrame Code\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Google Map', 'google_map', 'publish', 'closed', 'closed', '', 'field_5f382781bdf17', '', '', '2020-08-15 18:21:38', '2020-08-15 18:21:38', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=341', 20, 'acf-field', '', 0),
(351, 1, '2020-08-15 19:05:53', '2020-08-15 19:05:53', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Home Page Setting', '', 'publish', 'closed', 'closed', '', 'field_5f3831dd453d8', '', '', '2020-08-15 19:05:53', '2020-08-15 19:05:53', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=351', 22, 'acf-field', '', 0),
(353, 1, '2020-08-15 19:13:32', '2020-08-15 19:13:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:7:\"wpautop\";}', 'Promotional Banner', 'promotional_banner', 'publish', 'closed', 'closed', '', 'field_5f383367f147d', '', '', '2020-08-15 19:13:32', '2020-08-15 19:13:32', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=353', 23, 'acf-field', '', 0),
(354, 1, '2020-08-15 19:13:32', '2020-08-15 19:13:32', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Home Page Description', 'home_page_description', 'publish', 'closed', 'closed', '', 'field_5f3833a6f147e', '', '', '2020-08-15 19:13:32', '2020-08-15 19:13:32', '', 0, 'http://webinch.com/masonic/?post_type=acf-field&amp;p=354', 24, 'acf-field', '', 0),
(355, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"Sizzler-general-settings\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Theme Settings', 'theme-settings', 'publish', 'closed', 'closed', '', 'group_5f38248014601', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 0, 'http://localhost/sizzlers/?post_type=acf-field-group&#038;p=355', 0, 'acf-field-group', '', 0),
(356, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Header Options', '', 'publish', 'closed', 'closed', '', 'field_5f382493a32d1', '', '', '2020-09-25 18:17:31', '2020-09-25 18:17:31', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&p=356', 0, 'acf-field', '', 0),
(359, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Printerest Url', 'printerest_url', 'publish', 'closed', 'closed', '', 'field_5f3824cca32d4', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=359', 3, 'acf-field', '', 0),
(360, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Footer Options', '', 'publish', 'closed', 'closed', '', 'field_5f3824eda32d5', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=360', 4, 'acf-field', '', 0),
(361, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone Number', 'phone_number22', 'publish', 'closed', 'closed', '', 'field_5f3825fd23abb', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=361', 5, 'acf-field', '', 0),
(362, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Fax', 'fax', 'publish', 'closed', 'closed', '', 'field_5f38262023abd', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=362', 6, 'acf-field', '', 0),
(363, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email Address', 'email_address22', 'publish', 'closed', 'closed', '', 'field_5f38261123abc', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=363', 7, 'acf-field', '', 0),
(364, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 1 Headeing', 'footer_section_1_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825b323ab7', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=364', 8, 'acf-field', '', 0),
(365, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 2 Headeing', 'footer_section_2_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825da23ab8', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=365', 9, 'acf-field', '', 0),
(366, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 3 Headeing', 'footer_section_3_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825e523ab9', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=366', 10, 'acf-field', '', 0),
(367, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Footer Section 4 Headeing', 'footer_section_4_headeing', 'publish', 'closed', 'closed', '', 'field_5f3825f423aba', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=367', 11, 'acf-field', '', 0),
(368, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Copyright Text', 'copyright_text', 'publish', 'closed', 'closed', '', 'field_5f38263c23abe', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=368', 12, 'acf-field', '', 0),
(369, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'field_5f3826a0db2d2', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=369', 13, 'acf-field', '', 0),
(370, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Newsletter Heading\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Heading', 'heading1', 'publish', 'closed', 'closed', '', 'field_5f3826b0db2d3', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=370', 14, 'acf-field', '', 0),
(371, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:11:\"Sub Heading\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Heading', 'sub_heading', 'publish', 'closed', 'closed', '', 'field_5f3826ccdb2d4', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=371', 15, 'acf-field', '', 0),
(372, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'field_5f38270dbdf12', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=372', 16, 'acf-field', '', 0),
(373, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Phone Number', 'phone_number233', 'publish', 'closed', 'closed', '', 'field_5f382757bdf14', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=373', 17, 'acf-field', '', 0),
(374, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Fax', 'fax22', 'publish', 'closed', 'closed', '', 'field_5f38276bbdf15', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=374', 18, 'acf-field', '', 0),
(375, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Email Adress', 'email_adress223', 'publish', 'closed', 'closed', '', 'field_5f382772bdf16', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=375', 19, 'acf-field', '', 0),
(376, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:11:\"IFrame Code\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Google Map', 'google_map', 'publish', 'closed', 'closed', '', 'field_5f382781bdf17', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=376', 20, 'acf-field', '', 0),
(377, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5f382723bdf13', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=377', 21, 'acf-field', '', 0),
(378, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Home Page Setting', '', 'publish', 'closed', 'closed', '', 'field_5f3831dd453d8', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=378', 22, 'acf-field', '', 0),
(379, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:7:\"wpautop\";}', 'Promotional Banner', 'promotional_banner', 'publish', 'closed', 'closed', '', 'field_5f383367f147d', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=379', 23, 'acf-field', '', 0),
(380, 1, '2020-09-25 18:17:31', '2020-09-25 18:17:31', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Home Page Description', 'home_page_description', 'publish', 'closed', 'closed', '', 'field_5f3833a6f147e', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&#038;p=380', 24, 'acf-field', '', 0),
(381, 1, '2020-09-25 18:47:47', '2020-09-25 18:47:47', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter Url', 'twitter_url', 'publish', 'closed', 'closed', '', 'field_5f6e3b28cc77b', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&p=381', 1, 'acf-field', '', 0),
(382, 1, '2020-09-25 18:47:47', '2020-09-25 18:47:47', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook Url', 'facebook_url', 'publish', 'closed', 'closed', '', 'field_5f6e3b19cc77a', '', '', '2020-09-25 18:47:47', '2020-09-25 18:47:47', '', 355, 'http://localhost/sizzlers/?post_type=acf-field&p=382', 2, 'acf-field', '', 0),
(384, 1, '2020-09-25 18:59:32', '2020-09-25 18:59:32', '<div class=\"col-lg-8\">\r\n<div class=\"about-details-cap\">\r\n<h2>Calling time on irresponsible junk food advertising to children</h2>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"about-details-cap\">\r\n<p class=\"mb-30\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p class=\"mb-30\">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n<p class=\"mb-50\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-lg-12\">\r\n<div class=\"about-details-cap\">\r\n<h3>Calling time on irresponsible junk food advertising to children</h3>\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n<div class=\"details-img\">\r\n\r\n<img class=\"img-fluid mb-15\" src=\"http://localhost/wp/sizzlers/wp-content/themes/sizzler/assets/img/gallery/about2.png\" alt=\"\" />Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n\r\n</div>\r\n</div>\r\n</div>', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-10-07 09:33:13', '2020-10-07 09:33:13', '', 0, 'http://localhost/sizzlers/?page_id=384', 0, 'page', '', 0),
(386, 1, '2020-09-25 19:03:26', '2020-09-25 19:03:26', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-25 19:07:50', '2020-09-25 19:07:50', '', 0, 'http://localhost/sizzlers/?page_id=386', 0, 'page', '', 0),
(388, 1, '2020-09-25 19:03:33', '2020-09-25 19:03:33', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-09-25 19:17:13', '2020-09-25 19:17:13', '', 0, 'http://localhost/sizzlers/?page_id=388', 0, 'page', '', 0),
(390, 1, '2020-09-25 19:03:47', '2020-09-25 19:03:47', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2020-10-04 06:55:09', '2020-10-04 06:55:09', '', 0, 'http://localhost/sizzlers/?page_id=390', 0, 'page', '', 0),
(392, 1, '2020-09-25 19:34:28', '2020-09-25 19:34:28', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.\r\n<blockquote>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</blockquote>\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office', '', '', '2020-10-06 17:37:40', '2020-10-06 17:37:40', '', 0, 'http://localhost/sizzlers/?p=392', 0, 'post', '', 0),
(393, 1, '2020-09-25 19:34:19', '2020-09-25 19:34:19', '', 'single_blog_1', '', 'inherit', 'open', 'closed', '', 'single_blog_1', '', '', '2020-09-25 19:34:19', '2020-09-25 19:34:19', '', 392, 'http://localhost/sizzlers/wp-content/uploads/2020/09/single_blog_1.png', 0, 'attachment', 'image/png', 0),
(395, 1, '2020-09-25 19:34:52', '2020-09-25 19:34:52', '', 'single_blog_2', '', 'inherit', 'open', 'closed', '', 'single_blog_2', '', '', '2020-09-25 19:34:52', '2020-09-25 19:34:52', '', 0, 'http://localhost/sizzlers/wp-content/uploads/2020/09/single_blog_2.png', 0, 'attachment', 'image/png', 0),
(396, 1, '2020-09-25 19:34:53', '2020-09-25 19:34:53', '', 'single_blog_3', '', 'inherit', 'open', 'closed', '', 'single_blog_3', '', '', '2020-09-25 19:34:53', '2020-09-25 19:34:53', '', 0, 'http://localhost/sizzlers/wp-content/uploads/2020/09/single_blog_3.png', 0, 'attachment', 'image/png', 0),
(397, 1, '2020-09-25 19:34:53', '2020-09-25 19:34:53', '', 'single_blog_4', '', 'inherit', 'open', 'closed', '', 'single_blog_4', '', '', '2020-09-25 19:34:53', '2020-09-25 19:34:53', '', 0, 'http://localhost/sizzlers/wp-content/uploads/2020/09/single_blog_4.png', 0, 'attachment', 'image/png', 0),
(398, 1, '2020-09-25 19:34:53', '2020-09-25 19:34:53', '', 'single_blog_5', '', 'inherit', 'open', 'closed', '', 'single_blog_5', '', '', '2020-09-25 19:34:53', '2020-09-25 19:34:53', '', 0, 'http://localhost/sizzlers/wp-content/uploads/2020/09/single_blog_5.png', 0, 'attachment', 'image/png', 0),
(399, 1, '2020-09-26 11:20:47', '2020-09-26 11:20:47', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2020-09-26 11:20:47', '2020-09-26 11:20:47', '', 0, 'http://localhost/sizzlers/?page_id=399', 0, 'page', '', 0),
(401, 1, '2020-09-26 11:36:19', '2020-09-26 11:36:19', '', 'Forgot Password', '', 'publish', 'closed', 'closed', '', 'forgot-password', '', '', '2020-09-26 11:36:19', '2020-09-26 11:36:19', '', 0, 'http://localhost/sizzlers/?page_id=401', 0, 'page', '', 0),
(403, 1, '2020-09-30 08:27:20', '2020-09-30 08:27:20', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n<blockquote>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</blockquote>', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-2', '', '', '2020-10-06 17:37:24', '2020-10-06 17:37:24', '', 0, 'http://localhost/wp/sizzlers/?p=403', 0, 'post', '', 0),
(405, 1, '2020-09-30 08:27:39', '2020-09-30 08:27:39', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n<blockquote>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</blockquote>', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-3', '', '', '2020-10-06 17:37:14', '2020-10-06 17:37:14', '', 0, 'http://localhost/wp/sizzlers/?p=405', 0, 'post', '', 0),
(407, 1, '2020-09-30 08:27:52', '2020-09-30 08:27:52', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n<div class=\"quote-wrapper\">\r\n<div class=\"quotes\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you\r\nshould have to spend money on boot camp when you can get the MCSE study materials yourself at\r\na fraction of the camp price. However, who has the willpower to actually sit through a\r\nself-imposed MCSE training.</div>\r\n</div>\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n<blockquote>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually.</blockquote>', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-4', '', '', '2020-10-06 17:37:04', '2020-10-06 17:37:04', '', 0, 'http://localhost/wp/sizzlers/?p=407', 0, 'post', '', 0),
(421, 1, '2020-10-01 03:36:33', '2020-10-01 03:36:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"magazine\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Magazine Settings', 'magazine-settings', 'publish', 'closed', 'closed', '', 'group_5f754e2c1fd69', '', '', '2020-10-01 03:36:33', '2020-10-01 03:36:33', '', 0, 'http://localhost/wp/sizzlers/?post_type=acf-field-group&#038;p=421', 0, 'acf-field-group', '', 0),
(422, 1, '2020-10-01 03:36:33', '2020-10-01 03:36:33', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Magazine Link', 'magazine_link', 'publish', 'closed', 'closed', '', 'field_5f754e6017f9b', '', '', '2020-10-01 03:36:33', '2020-10-01 03:36:33', '', 421, 'http://localhost/wp/sizzlers/?post_type=acf-field&p=422', 0, 'acf-field', '', 0),
(423, 1, '2020-10-01 03:37:04', '2020-10-01 03:37:04', '', 'POSHgirl Jenna-Monét Queeley', '', 'publish', 'closed', 'closed', '', '423', '', '', '2020-10-01 03:46:08', '2020-10-01 03:46:08', '', 0, 'http://localhost/wp/sizzlers/?post_type=magazine&#038;p=423', 0, 'magazine', '', 0),
(425, 1, '2020-10-01 03:45:44', '2020-10-01 03:45:44', '', 'summer-sizzle-2019-cover-787x1024', '', 'inherit', 'open', 'closed', '', 'summer-sizzle-2019-cover-787x1024', '', '', '2020-10-01 03:45:44', '2020-10-01 03:45:44', '', 423, 'http://localhost/wp/sizzlers/wp-content/uploads/2020/10/summer-sizzle-2019-cover-787x1024-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(426, 1, '2020-10-01 03:49:10', '2020-10-01 03:49:10', '', 'POSHgirl Jenna-Monét Queeley', '', 'publish', 'closed', 'closed', '', 'poshgirl-jenna-monet-queeley', '', '', '2020-10-01 03:49:10', '2020-10-01 03:49:10', '', 0, 'http://localhost/wp/sizzlers/?post_type=magazine&#038;p=426', 0, 'magazine', '', 0),
(427, 1, '2020-10-01 03:48:40', '2020-10-01 03:48:40', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2020-10-01 03:48:40', '2020-10-01 03:48:40', '', 0, 'http://localhost/wp/sizzlers/wp-content/uploads/2020/10/img.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(428, 1, '2020-10-01 03:48:40', '2020-10-01 03:48:40', '', 'Posh-2016-Summer-Issue-Final', '', 'inherit', 'open', 'closed', '', 'posh-2016-summer-issue-final', '', '', '2020-10-01 03:48:40', '2020-10-01 03:48:40', '', 0, 'http://localhost/wp/sizzlers/wp-content/uploads/2020/10/Posh-2016-Summer-Issue-Final.jpg', 0, 'attachment', 'image/jpeg', 0),
(429, 1, '2020-10-01 03:48:41', '2020-10-01 03:48:41', '', 'Posh-Body-Issue-2015-Final', '', 'inherit', 'open', 'closed', '', 'posh-body-issue-2015-final', '', '', '2020-10-01 03:48:41', '2020-10-01 03:48:41', '', 0, 'http://localhost/wp/sizzlers/wp-content/uploads/2020/10/Posh-Body-Issue-2015-Final.jpg', 0, 'attachment', 'image/jpeg', 0),
(430, 1, '2020-10-01 03:48:42', '2020-10-01 03:48:42', '', 'Posh-Body-Issue-WEB3-cover', '', 'inherit', 'open', 'closed', '', 'posh-body-issue-web3-cover', '', '', '2020-10-01 03:48:42', '2020-10-01 03:48:42', '', 0, 'http://localhost/wp/sizzlers/wp-content/uploads/2020/10/Posh-Body-Issue-WEB3-cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(431, 1, '2020-10-01 03:48:44', '2020-10-01 03:48:44', '', 'Posh-Holiday-Issue-2018-SEMI-600x776', '', 'inherit', 'open', 'closed', '', 'posh-holiday-issue-2018-semi-600x776', '', '', '2020-10-01 03:48:44', '2020-10-01 03:48:44', '', 0, 'http://localhost/wp/sizzlers/wp-content/uploads/2020/10/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(432, 1, '2020-10-01 03:49:34', '2020-10-01 03:49:34', '', 'POSHgirl Jenna-Monét Queeley', '', 'publish', 'closed', 'closed', '', 'poshgirl-jenna-monet-queeley-2', '', '', '2020-10-01 03:49:34', '2020-10-01 03:49:34', '', 0, 'http://localhost/wp/sizzlers/?post_type=magazine&#038;p=432', 0, 'magazine', '', 0),
(433, 1, '2020-10-01 03:50:10', '2020-10-01 03:50:10', '', 'POSHgirl Jenna-Monét Queeley', '', 'publish', 'closed', 'closed', '', 'poshgirl-jenna-monet-queeley-3', '', '', '2020-10-01 03:50:10', '2020-10-01 03:50:10', '', 0, 'http://localhost/wp/sizzlers/?post_type=magazine&#038;p=433', 0, 'magazine', '', 0),
(434, 1, '2020-10-01 03:50:28', '2020-10-01 03:50:28', '', 'POSHgirl Jenna-Monét Queeley', '', 'publish', 'closed', 'closed', '', 'poshgirl-jenna-monet-queeley-4', '', '', '2020-10-01 03:50:28', '2020-10-01 03:50:28', '', 0, 'http://localhost/wp/sizzlers/?post_type=magazine&#038;p=434', 0, 'magazine', '', 0),
(435, 1, '2020-10-01 03:51:29', '2020-10-01 03:51:29', '', 'POSHgirl Jenna-Monét Queeley', '', 'publish', 'closed', 'closed', '', 'poshgirl-jenna-monet-queeley-5', '', '', '2020-10-01 03:51:29', '2020-10-01 03:51:29', '', 0, 'http://localhost/wp/sizzlers/?post_type=magazine&#038;p=435', 0, 'magazine', '', 0),
(436, 1, '2020-10-01 04:14:35', '2020-10-01 04:14:35', '[[{\"source_type\":\"image\",\"pdf_source\":\"\",\"pdf_thumb\":\"\",\"pages\":[{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-WEB3-cover.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-2015-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/img.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-2016-Summer-Issue-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/summer-sizzle-2019-cover-787x1024-1.jpg\",\"hotspots\":[]},{\"url\":\"\",\"hotspots\":[]}],\"webgl\":\"true\",\"hard\":\"none\",\"bg_color\":\"\",\"bg_image\":\"\",\"duration\":\"\",\"height\":\"\",\"texture_size\":\"global\",\"auto_sound\":\"global\",\"enable_download\":\"global\",\"page_mode\":\"global\",\"single_page_mode\":\"global\",\"controls_position\":\"global\",\"direction\":\"1\",\"force_fit\":\"true\",\"autoplay\":\"global\",\"autoplay_duration\":\"\",\"autoplay_start\":\"global\",\"page_size\":\"0\",\"auto_outline\":\"false\",\"auto_thumbnail\":\"false\",\"overwrite_outline\":\"false\",\"outline\":[],\"title\":\"test\",\"slug\":\"test\",\"status\":\"publish\"}]]', 'Current Issue', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2020-10-06 17:43:52', '2020-10-06 17:43:52', '', 0, 'http://localhost/wp/sizzlers/?post_type=dflip&#038;p=436', 0, 'dflip', '', 0),
(441, 1, '2020-10-01 04:28:23', '2020-10-01 04:28:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Post Settings', 'post-settings', 'publish', 'closed', 'closed', '', 'group_5f755abcdd330', '', '', '2020-10-01 04:28:23', '2020-10-01 04:28:23', '', 0, 'http://localhost/wp/sizzlers/?post_type=acf-field-group&#038;p=441', 0, 'acf-field-group', '', 0),
(442, 1, '2020-10-01 04:28:23', '2020-10-01 04:28:23', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Video Url', 'video_url', 'publish', 'closed', 'closed', '', 'field_5f755ac985e05', '', '', '2020-10-01 04:28:23', '2020-10-01 04:28:23', '', 441, 'http://localhost/wp/sizzlers/?post_type=acf-field&p=442', 0, 'acf-field', '', 0),
(445, 1, '2020-10-01 04:41:01', '2020-10-01 04:41:01', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n<div class=\"quote-wrapper\">\r\n<div class=\"quotes\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you\r\nshould have to spend money on boot camp when you can get the MCSE study materials yourself at\r\na fraction of the camp price. However, who has the willpower to actually sit through a\r\nself-imposed MCSE training.</div>\r\n</div>\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n<blockquote>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually.</blockquote>', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-5', '', '', '2020-10-06 17:36:54', '2020-10-06 17:36:54', '', 0, 'http://localhost/wp/sizzlers/?p=445', 0, 'post', '', 0),
(447, 1, '2020-10-01 04:47:54', '2020-10-01 04:47:54', '[newsletter]', 'Newsletter', '', 'publish', 'closed', 'closed', '', 'newsletter', '', '', '2020-10-01 04:47:54', '2020-10-01 04:47:54', '', 0, 'http://localhost/wp/sizzlers/newsletter/', 0, 'page', '', 0),
(448, 1, '2020-10-01 05:17:48', '2020-10-01 05:17:48', '<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n<div class=\"form-group\">\r\n[text* uname id:name class:form-control class:valid placeholder \"Enter your name\"]     \r\n</div>\r\n</div>\r\n<div class=\"col-sm-6\">\r\n<div class=\"form-group\">\r\n[email* uemail id:email class:form-control class:valid placeholder \"Your E-mail Address\"]   \r\n</div>\r\n</div>\r\n<div class=\"col-12\">\r\n<div class=\"form-group\">\r\n[text sub id:sub class:form-control placeholder \"Enter Subject\"]     \r\n</div>\r\n</div>\r\n<div class=\"col-12\">\r\n<div class=\"form-group\">\r\n[textarea*  message id:message class:form-control class:w-100 placeholder \"Your Message\"]  \r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"form-group mt-3\">\r\n<button id=\'submit\' class=\'wpcf7-form-control wpcf7-submit button button-contactForm boxed-btn\'>Send</button>\r\n\r\n</div>\n1\nsizzlers \"[sub]\"\nsizzlers <dasbairagyagopal@gmail.com>\ndasbairagyagopal@gmail.com\nFrom: [uname] <[uemail]>\r\nSubject: [sub]\r\n\r\nMessage Body:\r\n[message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on sizzlers (http://localhost/wp/sizzlers)\nReply-To: [uemail]\n\n\n\n\nsizzlers \"[your-subject]\"\nsizzlers <dasbairagyagopal@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on sizzlers (http://localhost/wp/sizzlers)\nReply-To: dasbairagyagopal@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-10-01 05:34:33', '2020-10-01 05:34:33', '', 0, 'http://localhost/wp/sizzlers/?post_type=wpcf7_contact_form&#038;p=448', 0, 'wpcf7_contact_form', '', 0),
(450, 1, '2020-10-04 06:55:09', '2020-10-04 06:55:09', '', 'Login', '', 'inherit', 'closed', 'closed', '', '390-revision-v1', '', '', '2020-10-04 06:55:09', '2020-10-04 06:55:09', '', 390, 'http://pre-live.asteeri.com/390-revision-v1/', 0, 'revision', '', 0),
(451, 1, '2020-10-05 14:48:34', '2020-10-05 14:48:34', '', 'sizzler Logo 250920', '', 'inherit', 'open', 'closed', '', 'sizzler-logo-250920', '', '', '2020-10-05 14:48:34', '2020-10-05 14:48:34', '', 0, 'http://pre-live.asteeri.com/wp-content/uploads/2020/10/sizzler-Logo-250920.jpg', 0, 'attachment', 'image/jpeg', 0),
(452, 1, '2020-10-05 14:48:48', '2020-10-05 14:48:48', '{\n    \"sizzler::themeslug_logo\": {\n        \"value\": \"http://pre-live.asteeri.com/wp-content/uploads/2020/10/sizzler-Logo-250920-scaled.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-05 14:48:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7c6d068-d7cb-4457-bc03-51c8dc35b170', '', '', '2020-10-05 14:48:48', '2020-10-05 14:48:48', '', 0, 'http://pre-live.asteeri.com/b7c6d068-d7cb-4457-bc03-51c8dc35b170/', 0, 'customize_changeset', '', 0),
(453, 1, '2020-10-05 15:18:03', '2020-10-05 15:18:03', '{\n    \"blogname\": {\n        \"value\": \"sizzler by Fashion Sizzle\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-05 15:18:03\"\n    },\n    \"sizzler::custom_logo\": {\n        \"value\": 451,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-05 15:18:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e48e1fa-0027-4b4b-a98c-65a6ade7f7f4', '', '', '2020-10-05 15:18:03', '2020-10-05 15:18:03', '', 0, 'http://pre-live.asteeri.com/2e48e1fa-0027-4b4b-a98c-65a6ade7f7f4/', 0, 'customize_changeset', '', 0),
(454, 1, '2020-10-05 15:49:19', '2020-10-05 15:49:19', '', 'WhatsApp Image 2020-10-02 at 10.19.30 PM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2020-10-02-at-10-19-30-pm', '', '', '2020-10-05 15:49:19', '2020-10-05 15:49:19', '', 0, 'http://pre-live.asteeri.com/wp-content/uploads/2020/10/WhatsApp-Image-2020-10-02-at-10.19.30-PM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(455, 1, '2020-10-05 15:49:29', '2020-10-05 15:49:29', '{\n    \"site_icon\": {\n        \"value\": 454,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-05 15:49:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'df59b304-40d4-479a-a2ef-e0e8a12c9c44', '', '', '2020-10-05 15:49:29', '2020-10-05 15:49:29', '', 0, 'http://pre-live.asteeri.com/df59b304-40d4-479a-a2ef-e0e8a12c9c44/', 0, 'customize_changeset', '', 0),
(456, 1, '2020-10-06 17:18:28', '2020-10-06 17:18:28', '[[{\"source_type\":\"image\",\"pdf_source\":\"\",\"pdf_thumb\":\"\",\"pages\":[{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-WEB3-cover.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-2015-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/img.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-2016-Summer-Issue-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/summer-sizzle-2019-cover-787x1024-1.jpg\",\"hotspots\":[]},{\"url\":\"\",\"hotspots\":[]}],\"webgl\":\"false\",\"hard\":\"global\",\"bg_color\":\"\",\"bg_image\":\"\",\"duration\":\"\",\"height\":\"\",\"texture_size\":\"global\",\"auto_sound\":\"global\",\"enable_download\":\"global\",\"page_mode\":\"global\",\"single_page_mode\":\"global\",\"controls_position\":\"global\",\"direction\":\"1\",\"force_fit\":\"true\",\"autoplay\":\"global\",\"autoplay_duration\":\"\",\"autoplay_start\":\"global\",\"page_size\":\"0\",\"auto_outline\":\"false\",\"auto_thumbnail\":\"false\",\"overwrite_outline\":\"false\",\"outline\":[],\"title\":\"test\",\"slug\":\"test\",\"status\":\"publish\"}]]', 'Current Issue', '', 'inherit', 'closed', 'closed', '', '436-revision-v1', '', '', '2020-10-06 17:18:28', '2020-10-06 17:18:28', '', 436, 'http://pre-live.asteeri.com/436-revision-v1/', 0, 'revision', '', 0),
(457, 1, '2020-10-06 17:36:54', '2020-10-06 17:36:54', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n<div class=\"quote-wrapper\">\r\n<div class=\"quotes\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you\r\nshould have to spend money on boot camp when you can get the MCSE study materials yourself at\r\na fraction of the camp price. However, who has the willpower to actually sit through a\r\nself-imposed MCSE training.</div>\r\n</div>\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n<blockquote>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually.</blockquote>', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '445-revision-v1', '', '', '2020-10-06 17:36:54', '2020-10-06 17:36:54', '', 445, 'http://pre-live.asteeri.com/445-revision-v1/', 0, 'revision', '', 0),
(458, 1, '2020-10-06 17:37:04', '2020-10-06 17:37:04', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n<div class=\"quote-wrapper\">\r\n<div class=\"quotes\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you\r\nshould have to spend money on boot camp when you can get the MCSE study materials yourself at\r\na fraction of the camp price. However, who has the willpower to actually sit through a\r\nself-imposed MCSE training.</div>\r\n</div>\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n<blockquote>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually.</blockquote>', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '407-revision-v1', '', '', '2020-10-06 17:37:04', '2020-10-06 17:37:04', '', 407, 'http://pre-live.asteeri.com/407-revision-v1/', 0, 'revision', '', 0),
(459, 1, '2020-10-06 17:37:14', '2020-10-06 17:37:14', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n<blockquote>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</blockquote>', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '405-revision-v1', '', '', '2020-10-06 17:37:14', '2020-10-06 17:37:14', '', 405, 'http://pre-live.asteeri.com/405-revision-v1/', 0, 'revision', '', 0),
(460, 1, '2020-10-06 17:37:24', '2020-10-06 17:37:24', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\r\n<blockquote>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</blockquote>', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '403-revision-v1', '', '', '2020-10-06 17:37:24', '2020-10-06 17:37:24', '', 403, 'http://pre-live.asteeri.com/403-revision-v1/', 0, 'revision', '', 0),
(461, 1, '2020-10-06 17:37:40', '2020-10-06 17:37:40', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.\r\n\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.\r\n<blockquote>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</blockquote>\r\nStet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '392-revision-v1', '', '', '2020-10-06 17:37:40', '2020-10-06 17:37:40', '', 392, 'http://pre-live.asteeri.com/392-revision-v1/', 0, 'revision', '', 0),
(462, 1, '2020-10-06 17:40:27', '2020-10-06 17:40:27', '[[{\"source_type\":\"image\",\"pdf_source\":\"\",\"pdf_thumb\":\"\",\"pages\":[{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-WEB3-cover.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-2015-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/img.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-2016-Summer-Issue-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/summer-sizzle-2019-cover-787x1024-1.jpg\",\"hotspots\":[]},{\"url\":\"\",\"hotspots\":[]}],\"webgl\":\"global\",\"hard\":\"global\",\"bg_color\":\"\",\"bg_image\":\"\",\"duration\":\"\",\"height\":\"\",\"texture_size\":\"global\",\"auto_sound\":\"global\",\"enable_download\":\"global\",\"page_mode\":\"global\",\"single_page_mode\":\"global\",\"controls_position\":\"global\",\"direction\":\"1\",\"force_fit\":\"true\",\"autoplay\":\"global\",\"autoplay_duration\":\"\",\"autoplay_start\":\"global\",\"page_size\":\"0\",\"auto_outline\":\"false\",\"auto_thumbnail\":\"false\",\"overwrite_outline\":\"false\",\"outline\":[],\"title\":\"test\",\"slug\":\"test\",\"status\":\"publish\"}]]', 'Current Issue', '', 'inherit', 'closed', 'closed', '', '436-revision-v1', '', '', '2020-10-06 17:40:27', '2020-10-06 17:40:27', '', 436, 'http://pre-live.asteeri.com/436-revision-v1/', 0, 'revision', '', 0),
(463, 1, '2020-10-06 17:43:52', '2020-10-06 17:43:52', '[[{\"source_type\":\"image\",\"pdf_source\":\"\",\"pdf_thumb\":\"\",\"pages\":[{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Holiday-Issue-2018-SEMI-600x776-1.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-WEB3-cover.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-Body-Issue-2015-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/img.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/Posh-2016-Summer-Issue-Final.jpg\",\"hotspots\":[]},{\"url\":\"http:\\/\\/localhost\\/wp\\/sizzlers\\/wp-content\\/uploads\\/2020\\/10\\/summer-sizzle-2019-cover-787x1024-1.jpg\",\"hotspots\":[]},{\"url\":\"\",\"hotspots\":[]}],\"webgl\":\"true\",\"hard\":\"none\",\"bg_color\":\"\",\"bg_image\":\"\",\"duration\":\"\",\"height\":\"\",\"texture_size\":\"global\",\"auto_sound\":\"global\",\"enable_download\":\"global\",\"page_mode\":\"global\",\"single_page_mode\":\"global\",\"controls_position\":\"global\",\"direction\":\"1\",\"force_fit\":\"true\",\"autoplay\":\"global\",\"autoplay_duration\":\"\",\"autoplay_start\":\"global\",\"page_size\":\"0\",\"auto_outline\":\"false\",\"auto_thumbnail\":\"false\",\"overwrite_outline\":\"false\",\"outline\":[],\"title\":\"test\",\"slug\":\"test\",\"status\":\"publish\"}]]', 'Current Issue', '', 'inherit', 'closed', 'closed', '', '436-revision-v1', '', '', '2020-10-06 17:43:52', '2020-10-06 17:43:52', '', 436, 'http://pre-live.asteeri.com/436-revision-v1/', 0, 'revision', '', 0),
(464, 1, '2020-10-07 09:24:25', '2020-10-07 09:24:25', '', 'Digital Magazine', '', 'publish', 'closed', 'closed', '', 'digital-magazine', '', '', '2020-10-07 09:24:25', '2020-10-07 09:24:25', '', 0, 'http://pre-live.asteeri.com/?page_id=464', 0, 'page', '', 0),
(465, 1, '2020-10-07 09:24:25', '2020-10-07 09:24:25', '', 'Digital Magazine', '', 'inherit', 'closed', 'closed', '', '464-revision-v1', '', '', '2020-10-07 09:24:25', '2020-10-07 09:24:25', '', 464, 'http://pre-live.asteeri.com/464-revision-v1/', 0, 'revision', '', 0),
(466, 1, '2020-10-07 09:33:13', '2020-10-07 09:33:13', '<div class=\"col-lg-8\">\r\n<div class=\"about-details-cap\">\r\n<h2>Calling time on irresponsible junk food advertising to children</h2>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"about-details-cap\">\r\n<p class=\"mb-30\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p class=\"mb-30\">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>\r\n<p class=\"mb-50\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n\r\n</div>\r\n</div>\r\n<div class=\"col-lg-12\">\r\n<div class=\"about-details-cap\">\r\n<h3>Calling time on irresponsible junk food advertising to children</h3>\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.\r\n<div class=\"details-img\">\r\n\r\n<img class=\"img-fluid mb-15\" src=\"http://localhost/wp/sizzlers/wp-content/themes/sizzler/assets/img/gallery/about2.png\" alt=\"\" />Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.\r\n\r\n</div>\r\n</div>\r\n</div>', 'About', '', 'inherit', 'closed', 'closed', '', '384-revision-v1', '', '', '2020-10-07 09:33:13', '2020-10-07 09:33:13', '', 384, 'http://pre-live.asteeri.com/384-revision-v1/', 0, 'revision', '', 0),
(467, 1, '2020-10-09 05:46:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-10-09 05:46:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp/sizzlers/?p=467', 0, 'post', '', 0),
(468, 1, '2020-10-09 06:28:16', '2020-10-09 06:28:16', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n<div class=\"quote-wrapper\">\r\n<div class=\"quotes\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you\r\nshould have to spend money on boot camp when you can get the MCSE study materials yourself at\r\na fraction of the camp price. However, who has the willpower to actually sit through a\r\nself-imposed MCSE training.</div>\r\n</div>\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n<blockquote>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually.</blockquote>', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-6', '', '', '2020-10-09 06:28:16', '2020-10-09 06:28:16', '', 0, 'http://localhost/wp/sizzlers/?p=468', 0, 'post', '', 0),
(469, 1, '2020-10-09 06:28:16', '2020-10-09 06:28:16', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually\r\n<div class=\"quote-wrapper\">\r\n<div class=\"quotes\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you\r\nshould have to spend money on boot camp when you can get the MCSE study materials yourself at\r\na fraction of the camp price. However, who has the willpower to actually sit through a\r\nself-imposed MCSE training.</div>\r\n</div>\r\nMCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower\r\n<blockquote>MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually.</blockquote>', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '468-revision-v1', '', '', '2020-10-09 06:28:16', '2020-10-09 06:28:16', '', 468, 'http://localhost/wp/sizzlers/468-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  `term_order` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Uncategorized', 'uncategorized', 0, 1),
(3, 'Life', 'life', 0, 6),
(5, 'Fashion', 'fashion', 0, 3),
(11, 'Celebrity', 'celebrity', 0, 2),
(12, 'Movies', 'movies', 0, 3),
(13, 'Music', 'music', 0, 4),
(18, 'Weddings', 'weddings', 0, 1),
(19, 'Travel', 'travel-lifestyle', 0, 2),
(20, 'Carnivals', 'carnivals', 0, 3),
(21, 'Food &amp; Drinks', 'food-drinks', 0, 4),
(22, 'Décor', 'decor', 0, 5),
(23, 'Entrepreneurship', 'entrepreneurship', 0, 6),
(24, 'Love &amp; Relationships', 'love-relationships', 0, 7),
(25, 'Money &amp; Career', 'money-career', 0, 8),
(27, 'Accesories', 'accesories', 0, 2),
(28, 'Runway', 'runway', 0, 3),
(29, 'Designer', 'designer', 0, 4),
(33, 'Beauty', 'beauty', 0, 4),
(34, 'Makeup', 'makeup', 0, 1),
(35, 'Skincare', 'skincare', 0, 2),
(36, 'Fragance', 'fragance', 0, 3),
(37, 'Hair', 'hair', 0, 4),
(39, 'News', 'news', 0, 1),
(40, 'Fashion', 'fashion-celebrity', 0, 2),
(41, 'StreetStyle', 'streetstyle', 0, 1),
(42, 'Digital Fit', 'digital-fit', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(392, 3, 0),
(392, 5, 0),
(392, 11, 0),
(392, 33, 0),
(403, 3, 0),
(403, 5, 0),
(403, 11, 0),
(403, 33, 0),
(405, 3, 0),
(405, 5, 0),
(405, 11, 0),
(405, 33, 0),
(407, 1, 0),
(407, 3, 0),
(407, 5, 0),
(407, 11, 0),
(407, 33, 0),
(445, 1, 0),
(445, 3, 0),
(445, 5, 0),
(445, 11, 0),
(445, 33, 0),
(468, 1, 0),
(468, 3, 0),
(468, 5, 0),
(468, 11, 0),
(468, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(3, 3, 'category', '', 0, 6),
(5, 5, 'category', '', 0, 6),
(11, 11, 'category', '', 0, 6),
(12, 12, 'category', '', 11, 0),
(13, 13, 'category', '', 11, 0),
(18, 18, 'category', '', 3, 0),
(19, 19, 'category', '', 3, 0),
(20, 20, 'category', '', 3, 0),
(21, 21, 'category', '', 3, 0),
(22, 22, 'category', '', 3, 0),
(23, 23, 'category', '', 3, 0),
(24, 24, 'category', '', 3, 0),
(25, 25, 'category', '', 3, 0),
(27, 27, 'category', '', 5, 0),
(28, 28, 'category', '', 5, 0),
(29, 29, 'category', '', 5, 0),
(33, 33, 'category', '', 0, 6),
(34, 34, 'category', '', 33, 0),
(35, 35, 'category', '', 33, 0),
(36, 36, 'category', '', 33, 0),
(37, 37, 'category', '', 33, 0),
(39, 39, 'category', '', 11, 0),
(40, 40, 'category', '', 11, 0),
(41, 41, 'category', '', 5, 0),
(42, 42, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sizzlers'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"f8284cc6d0e9af5103d716fe1a322914e192ee69b8408d2f8de33b57ca573f61\";a:4:{s:10:\"expiration\";i:1602166581;s:2:\"ip\";s:14:\"157.43.218.239\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601993781;}s:64:\"b3eb4c87bce3fefc793711bc246d553110fdb2f7c523b9b129aedd1f0f7097db\";a:4:{s:10:\"expiration\";i:1602316875;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1602144075;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '467'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list'),
(19, 1, 'wp_user-settings-time', '1602144075'),
(20, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(21, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(22, 2, 'nickname', 'test'),
(23, 2, 'first_name', 'test'),
(24, 2, 'last_name', 'test'),
(25, 2, 'description', ''),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'syntax_highlighting', 'true'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(32, 2, 'locale', ''),
(33, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(34, 2, 'wp_user_level', '0'),
(35, 2, 'dismissed_wp_pointers', ''),
(36, 3, 'nickname', 'demo'),
(37, 3, 'first_name', 'demo'),
(38, 3, 'last_name', ''),
(39, 3, 'description', ''),
(40, 3, 'rich_editing', 'true'),
(41, 3, 'syntax_highlighting', 'true'),
(42, 3, 'comment_shortcuts', 'false'),
(43, 3, 'admin_color', 'fresh'),
(44, 3, 'use_ssl', '0'),
(45, 3, 'show_admin_bar_front', 'true'),
(46, 3, 'locale', ''),
(47, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(48, 3, 'wp_user_level', '0'),
(49, 3, 'dismissed_wp_pointers', ''),
(50, 4, 'nickname', 'byjifuri'),
(51, 4, 'first_name', 'Yoshi'),
(52, 4, 'last_name', 'Wise'),
(53, 4, 'description', ''),
(54, 4, 'rich_editing', 'true'),
(55, 4, 'syntax_highlighting', 'true'),
(56, 4, 'comment_shortcuts', 'false'),
(57, 4, 'admin_color', 'fresh'),
(58, 4, 'use_ssl', '0'),
(59, 4, 'show_admin_bar_front', 'true'),
(60, 4, 'locale', ''),
(61, 4, 'wp_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(62, 4, 'wp_user_level', '2'),
(63, 4, 'dismissed_wp_pointers', ''),
(64, 5, 'nickname', 'sdfadsf'),
(65, 5, 'first_name', 'sdfadsf'),
(66, 5, 'last_name', ''),
(67, 5, 'description', ''),
(68, 5, 'rich_editing', 'true'),
(69, 5, 'syntax_highlighting', 'true'),
(70, 5, 'comment_shortcuts', 'false'),
(71, 5, 'admin_color', 'fresh'),
(72, 5, 'use_ssl', '0'),
(73, 5, 'show_admin_bar_front', 'true'),
(74, 5, 'locale', ''),
(75, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(76, 5, 'wp_user_level', '0'),
(77, 5, 'dismissed_wp_pointers', ''),
(78, 2, 'session_tokens', 'a:4:{s:64:\"dd17a0aaf503f70dcd656c7e704e204694b6a84e00e0b2852564b2a1843ae88d\";a:4:{s:10:\"expiration\";i:1602341969;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";s:5:\"login\";i:1601132369;}s:64:\"8c569440ea8b83b211be50991c107a13cefa0a6a7420d92bd251e699bf0e34c1\";a:4:{s:10:\"expiration\";i:1602433308;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";s:5:\"login\";i:1601223708;}s:64:\"20bb305d7541ddfa5a1f2be6f77f9ccacd22d620c964c86714927ea9d52c96e2\";a:4:{s:10:\"expiration\";i:1601489000;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601316200;}s:64:\"cae455f0e498c807e0f46381db5f05e28cbc7802ae2bf9fb6995bc3c44fddc36\";a:4:{s:10:\"expiration\";i:1601577483;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1601404683;}}'),
(79, 2, 'wp_user-settings', 'mfold=o'),
(80, 2, 'wp_user-settings-time', '1601404711'),
(81, 3, 'session_tokens', 'a:1:{s:64:\"0354a980197e5fa2f6a8f0f7a5686290a1c78f8b9707ed6f63f33b850cbc831d\";a:4:{s:10:\"expiration\";i:1601304990;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";s:5:\"login\";i:1601132190;}}'),
(82, 6, 'nickname', 'gopal'),
(83, 6, 'first_name', 'gopal'),
(84, 6, 'last_name', ''),
(85, 6, 'description', ''),
(86, 6, 'rich_editing', 'true'),
(87, 6, 'syntax_highlighting', 'true'),
(88, 6, 'comment_shortcuts', 'false'),
(89, 6, 'admin_color', 'fresh'),
(90, 6, 'use_ssl', '0'),
(91, 6, 'show_admin_bar_front', 'true'),
(92, 6, 'locale', ''),
(93, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(94, 6, 'wp_user_level', '0'),
(95, 7, 'nickname', 'gopal'),
(96, 7, 'first_name', 'gopal'),
(97, 7, 'last_name', ''),
(98, 7, 'description', ''),
(99, 7, 'rich_editing', 'true'),
(100, 7, 'syntax_highlighting', 'true'),
(101, 7, 'comment_shortcuts', 'false'),
(102, 7, 'admin_color', 'fresh'),
(103, 7, 'use_ssl', '0'),
(104, 7, 'show_admin_bar_front', 'true'),
(105, 7, 'locale', ''),
(106, 7, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(107, 7, 'wp_user_level', '0'),
(108, 1, 'closedpostboxes_magazine', 'a:0:{}'),
(109, 1, 'metaboxhidden_magazine', 'a:4:{i:0;s:23:\"acf-group_5f38248014601\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";}'),
(110, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"47.11.148.0\";}'),
(111, 1, 'closedpostboxes_dflip', 'a:0:{}'),
(112, 1, 'metaboxhidden_dflip', 'a:4:{i:0;s:23:\"acf-group_5f38248014601\";i:1;s:23:\"acf-group_5f754e2c1fd69\";i:2;s:23:\"acf-group_5f755abcdd330\";i:3;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sizzlers', '$P$B/TYN2FbfxFGEpWS.orwAps85F7ycy/', 'sizzlers', 'dasbairagyagopal@gmail.com', 'http://localhost/sizzlers', '2020-09-25 16:49:10', '', 1, 'sizzlers'),
(2, 'test', '$P$Bcz/UHxiCVQ3tcrX6R7zuWLHJWjxJW/', 'test', 'test@gmail.com', '', '2020-09-26 14:11:51', '', 1, 'test test'),
(3, 'demo', '$P$BBUFRs0AQicBk/wmjWCBc.pJU2rBOH0', 'demo', 'dev.test@imc.com', '', '2020-09-26 14:16:15', '', 1, 'demo'),
(4, 'byjifuri', '$P$B9dHXkjADHt9VA8hC.7cWa1Th5Ogm51', 'byjifuri', 'zexasebu@mailinator.com', 'https://www.fazebukodoqizo.org.uk', '2020-09-26 14:19:51', '1601129991:$P$B4uKngxP3Ntxm.iSXfKy886bZ10MBZ0', 0, 'Yoshi Wise'),
(5, 'sdfadsf', '$P$BYHTUq26SqD0lRve5fv5yrU/e0eVQa.', 'sdfadsf', 'fdaf@dasf.com', '', '2020-09-26 14:20:17', '', 0, 'sdfadsf'),
(6, 'gopal@gmail.com', '$P$Blv96pyPDTrAjAfbFtgwM4i8gmqNFP.', 'gopalgmail-com', 'gopal@gmail.com', '', '2020-09-26 18:47:30', '', 1, 'gopal'),
(7, 'das@gmail.com', '$P$B2zM3uTzX8gM.QqGvGnxWXG6fx816W.', 'dasgmail-com', 'das@gmail.com', '', '2020-09-29 18:50:53', '', 1, 'gopal');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfm_backup`
--

CREATE TABLE `wp_wpfm_backup` (
  `id` int(11) NOT NULL,
  `backup_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backup_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `wp_user_id` (`wp_user_id`);

--
-- Indexes for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpfm_backup`
--
ALTER TABLE `wp_wpfm_backup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1378;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_wpfm_backup`
--
ALTER TABLE `wp_wpfm_backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
