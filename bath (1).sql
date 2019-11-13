-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 10 2018 г., 16:32
-- Версия сервера: 5.6.37
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-01 10:05:21', '2018-08-01 10:05:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bath', 'yes'),
(2, 'home', 'http://bath', 'yes'),
(3, 'blogname', 'Наливные ванны', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nlapkovsky@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:214:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"phone_number/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"phone_number/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"phone_number/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"phone_number/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"phone_number/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"phone_number/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"phone_number/([^/]+)/embed/?$\";s:45:\"index.php?phone_number=$matches[1]&embed=true\";s:33:\"phone_number/([^/]+)/trackback/?$\";s:39:\"index.php?phone_number=$matches[1]&tb=1\";s:41:\"phone_number/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?phone_number=$matches[1]&paged=$matches[2]\";s:48:\"phone_number/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?phone_number=$matches[1]&cpage=$matches[2]\";s:37:\"phone_number/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?phone_number=$matches[1]&page=$matches[2]\";s:29:\"phone_number/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"phone_number/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"phone_number/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"phone_number/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"phone_number/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"phone_number/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"main_screen/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"main_screen/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"main_screen/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"main_screen/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"main_screen/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"main_screen/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"main_screen/([^/]+)/embed/?$\";s:44:\"index.php?main_screen=$matches[1]&embed=true\";s:32:\"main_screen/([^/]+)/trackback/?$\";s:38:\"index.php?main_screen=$matches[1]&tb=1\";s:40:\"main_screen/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?main_screen=$matches[1]&paged=$matches[2]\";s:47:\"main_screen/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?main_screen=$matches[1]&cpage=$matches[2]\";s:36:\"main_screen/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?main_screen=$matches[1]&page=$matches[2]\";s:28:\"main_screen/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"main_screen/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"main_screen/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"main_screen/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"main_screen/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"main_screen/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"discount/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"discount/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"discount/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"discount/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"discount/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"discount/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"discount/([^/]+)/embed/?$\";s:41:\"index.php?discount=$matches[1]&embed=true\";s:29:\"discount/([^/]+)/trackback/?$\";s:35:\"index.php?discount=$matches[1]&tb=1\";s:37:\"discount/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?discount=$matches[1]&paged=$matches[2]\";s:44:\"discount/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?discount=$matches[1]&cpage=$matches[2]\";s:33:\"discount/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?discount=$matches[1]&page=$matches[2]\";s:25:\"discount/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"discount/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"discount/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"discount/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"discount/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"discount/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"stock/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"stock/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"stock/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"stock/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"stock/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"stock/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"stock/([^/]+)/embed/?$\";s:38:\"index.php?stock=$matches[1]&embed=true\";s:26:\"stock/([^/]+)/trackback/?$\";s:32:\"index.php?stock=$matches[1]&tb=1\";s:34:\"stock/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?stock=$matches[1]&paged=$matches[2]\";s:41:\"stock/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?stock=$matches[1]&cpage=$matches[2]\";s:30:\"stock/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?stock=$matches[1]&page=$matches[2]\";s:22:\"stock/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"stock/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"stock/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"stock/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"stock/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"stock/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"working_hours/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"working_hours/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"working_hours/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"working_hours/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"working_hours/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"working_hours/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"working_hours/([^/]+)/embed/?$\";s:46:\"index.php?working_hours=$matches[1]&embed=true\";s:34:\"working_hours/([^/]+)/trackback/?$\";s:40:\"index.php?working_hours=$matches[1]&tb=1\";s:42:\"working_hours/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?working_hours=$matches[1]&paged=$matches[2]\";s:49:\"working_hours/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?working_hours=$matches[1]&cpage=$matches[2]\";s:38:\"working_hours/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?working_hours=$matches[1]&page=$matches[2]\";s:30:\"working_hours/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"working_hours/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"working_hours/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"working_hours/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"working_hours/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"working_hours/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"advantages/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"advantages/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"advantages/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"advantages/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"advantages/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"advantages/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"advantages/([^/]+)/embed/?$\";s:43:\"index.php?advantages=$matches[1]&embed=true\";s:31:\"advantages/([^/]+)/trackback/?$\";s:37:\"index.php?advantages=$matches[1]&tb=1\";s:39:\"advantages/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?advantages=$matches[1]&paged=$matches[2]\";s:46:\"advantages/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?advantages=$matches[1]&cpage=$matches[2]\";s:35:\"advantages/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?advantages=$matches[1]&page=$matches[2]\";s:27:\"advantages/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"advantages/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"advantages/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"advantages/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"advantages/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"advantages/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"advantage_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?advantage_type=$matches[1]&feed=$matches[2]\";s:50:\"advantage_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?advantage_type=$matches[1]&feed=$matches[2]\";s:31:\"advantage_type/([^/]+)/embed/?$\";s:47:\"index.php?advantage_type=$matches[1]&embed=true\";s:43:\"advantage_type/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?advantage_type=$matches[1]&paged=$matches[2]\";s:25:\"advantage_type/([^/]+)/?$\";s:36:\"index.php?advantage_type=$matches[1]\";s:34:\"prices/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"prices/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"prices/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"prices/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"prices/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"prices/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"prices/([^/]+)/embed/?$\";s:39:\"index.php?prices=$matches[1]&embed=true\";s:27:\"prices/([^/]+)/trackback/?$\";s:33:\"index.php?prices=$matches[1]&tb=1\";s:35:\"prices/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?prices=$matches[1]&paged=$matches[2]\";s:42:\"prices/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?prices=$matches[1]&cpage=$matches[2]\";s:31:\"prices/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?prices=$matches[1]&page=$matches[2]\";s:23:\"prices/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"prices/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"prices/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"prices/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"prices/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"prices/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:68:\"Radio-Buttons-for-Taxonomies-master/radio-buttons-for-taxonomies.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:56:\"D:\\OSPanel\\domains\\bath/wp-content/themes/bath/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'bath', 'yes'),
(41, 'stylesheet', 'bath', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:68:\"Radio-Buttons-for-Taxonomies-master/radio-buttons-for-taxonomies.php\";a:2:{i:0;s:28:\"Radio_Buttons_for_Taxonomies\";i:1;s:21:\"delete_plugin_options\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:6:\"braaaa\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1533906322;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533938722;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533977263;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533982469;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533289174;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Bath', 'yes'),
(144, 'theme_mods_bath', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533286989;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(172, 'recently_activated', 'a:0:{}', 'yes'),
(190, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533900192;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(193, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"nlapkovsky@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533280528;}', 'no'),
(198, 'category_children', 'a:0:{}', 'yes'),
(261, 'acf_version', '5.6.10', 'yes'),
(317, 'advantage_type_children', 'a:0:{}', 'yes'),
(326, 'radio_button_for_taxonomies_options', 'a:2:{s:10:\"taxonomies\";a:1:{i:0;s:14:\"advantage_type\";}s:6:\"delete\";i:0;}', 'yes'),
(369, '_site_transient_timeout_theme_roots', '1533901999', 'no'),
(370, '_site_transient_theme_roots', 'a:4:{s:4:\"bath\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(371, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533900201;s:7:\"checked\";a:4:{s:4:\"bath\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(372, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533900204;s:7:\"checked\";a:4:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.6.10\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";s:68:\"Radio-Buttons-for-Taxonomies-master/radio-buttons-for-taxonomies.php\";s:5:\"1.8.3\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:68:\"Radio-Buttons-for-Taxonomies-master/radio-buttons-for-taxonomies.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/radio-buttons-for-taxonomies\";s:4:\"slug\";s:28:\"radio-buttons-for-taxonomies\";s:6:\"plugin\";s:68:\"Radio-Buttons-for-Taxonomies-master/radio-buttons-for-taxonomies.php\";s:11:\"new_version\";s:5:\"1.8.3\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/radio-buttons-for-taxonomies/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/radio-buttons-for-taxonomies.1.8.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:72:\"https://s.w.org/plugins/geopattern-icon/radio-buttons-for-taxonomies.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1533544280:1'),
(4, 4, '_edit_last', '1'),
(5, 4, '_edit_lock', '1533282538:1'),
(6, 7, '_menu_item_type', 'custom'),
(7, 7, '_menu_item_menu_item_parent', '0'),
(8, 7, '_menu_item_object_id', '7'),
(9, 7, '_menu_item_object', 'custom'),
(10, 7, '_menu_item_target', ''),
(11, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(12, 7, '_menu_item_xfn', ''),
(13, 7, '_menu_item_url', 'http://bath/'),
(14, 7, '_menu_item_orphaned', '1533199398'),
(15, 8, '_menu_item_type', 'post_type'),
(16, 8, '_menu_item_menu_item_parent', '0'),
(17, 8, '_menu_item_object_id', '2'),
(18, 8, '_menu_item_object', 'page'),
(19, 8, '_menu_item_target', ''),
(20, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 8, '_menu_item_xfn', ''),
(22, 8, '_menu_item_url', ''),
(23, 8, '_menu_item_orphaned', '1533199398'),
(24, 9, '_edit_last', '1'),
(27, 9, '_edit_lock', '1533281374:1'),
(28, 9, '_wp_trash_meta_status', 'publish'),
(29, 9, '_wp_trash_meta_time', '1533281518'),
(30, 9, '_wp_desired_post_slug', '%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b'),
(31, 4, '_wp_trash_meta_status', 'draft'),
(32, 4, '_wp_trash_meta_time', '1533282682'),
(33, 4, '_wp_desired_post_slug', ''),
(35, 25, '_edit_last', '1'),
(36, 25, '_edit_lock', '1533545902:1'),
(38, 25, '_wp_trash_meta_status', 'draft'),
(39, 25, '_wp_trash_meta_time', '1533546406'),
(40, 25, '_wp_desired_post_slug', ''),
(49, 37, '_edit_last', '1'),
(50, 37, '_edit_lock', '1533629835:1'),
(51, 39, '_edit_last', '1'),
(52, 39, 'номер_телефона', '12345'),
(53, 39, '_номер_телефона', 'field_5b68303b4ff6c'),
(54, 39, '_edit_lock', '1533642783:1'),
(55, 39, 'phone_number', '12345'),
(56, 39, '_phone_number', 'field_5b68303b4ff6c'),
(57, 52, '_edit_last', '1'),
(58, 52, '_edit_lock', '1533720101:1'),
(59, 54, '_edit_last', '1'),
(60, 54, '_edit_lock', '1533635403:1'),
(61, 54, 'subtitle', 'За 2 часа. Гарантия 2 года'),
(62, 54, '_subtitle', 'field_5b695a763ca55'),
(63, 55, '_edit_last', '1'),
(64, 55, 'subtitle', '1234567890'),
(65, 55, '_subtitle', 'field_5b695a763ca55'),
(66, 55, '_edit_lock', '1533635390:1'),
(67, 57, '_edit_last', '1'),
(68, 57, '_edit_lock', '1533734287:1'),
(69, 59, '_edit_last', '1'),
(70, 59, 'discount_text', 'Скидка всем'),
(71, 59, '_discount_text', 'field_5b6973e3f67ec'),
(72, 59, '_edit_lock', '1533815442:1'),
(73, 68, '_edit_last', '1'),
(74, 68, '_edit_lock', '1533642141:1'),
(75, 68, '_wp_trash_meta_status', 'publish'),
(76, 68, '_wp_trash_meta_time', '1533642288'),
(77, 68, '_wp_desired_post_slug', '%d0%b0%d0%ba%d1%86%d0%b8%d1%8f-1'),
(78, 69, '_edit_last', '1'),
(79, 69, '_edit_lock', '1533642587:1'),
(80, 37, '_wp_trash_meta_status', 'publish'),
(81, 37, '_wp_trash_meta_time', '1533642964'),
(82, 37, '_wp_desired_post_slug', 'group_5b682f6c56fbf'),
(83, 38, '_wp_trash_meta_status', 'publish'),
(84, 38, '_wp_trash_meta_time', '1533642964'),
(85, 38, '_wp_desired_post_slug', 'field_5b68303b4ff6c'),
(86, 39, '_wp_trash_meta_status', 'publish'),
(87, 39, '_wp_trash_meta_time', '1533642980'),
(88, 39, '_wp_desired_post_slug', 'auto-draft'),
(89, 71, '_edit_last', '1'),
(90, 71, '_edit_lock', '1533643367:1'),
(91, 72, '_edit_last', '1'),
(92, 72, '_edit_lock', '1533648860:1'),
(93, 72, '_wp_trash_meta_status', 'publish'),
(94, 72, '_wp_trash_meta_time', '1533649730'),
(95, 72, '_wp_desired_post_slug', '%d0%b5%d0%b6%d0%b5%d0%b4%d0%bd%d0%b5%d0%b2%d0%bd%d0%be-%d1%81-%d1%87%d0%b0%d1%81%d1%83-%d0%b4%d0%be-2'),
(96, 71, '_wp_trash_meta_status', 'publish'),
(97, 71, '_wp_trash_meta_time', '1533650156'),
(98, 71, '_wp_desired_post_slug', '8-025-7038865'),
(99, 73, '_edit_last', '1'),
(100, 73, '_edit_lock', '1533678293:1'),
(101, 74, '_edit_last', '1'),
(102, 74, '_edit_lock', '1533718614:1'),
(103, 79, '_edit_last', '1'),
(104, 79, '_edit_lock', '1533730007:1'),
(107, 82, '_edit_last', '1'),
(108, 82, '_edit_lock', '1533730030:1'),
(109, 83, '_edit_last', '1'),
(110, 83, '_edit_lock', '1533801912:1'),
(111, 84, '_edit_last', '1'),
(112, 84, '_edit_lock', '1533732725:1'),
(113, 88, '_edit_last', '1'),
(114, 88, '_edit_lock', '1533803320:1'),
(115, 99, '_edit_last', '1'),
(116, 99, '_edit_lock', '1533802829:1'),
(117, 100, '_wp_attached_file', '2018/08/bath-1.jpg'),
(118, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:283;s:4:\"file\";s:18:\"2018/08/bath-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bath-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bath-1-300x237.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 99, '_thumbnail_id', '100'),
(120, 99, 'price', '1$'),
(121, 99, '_price', 'field_5b6aec7f31cfb'),
(122, 102, '_edit_last', '1'),
(123, 102, '_edit_lock', '1533803388:1'),
(124, 103, '_wp_attached_file', '2018/08/bath-2.jpg'),
(125, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:283;s:4:\"file\";s:18:\"2018/08/bath-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bath-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bath-2-300x237.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 102, '_thumbnail_id', '103'),
(127, 102, 'price', '5000$'),
(128, 102, '_price', 'field_5b6aec7f31cfb'),
(129, 104, '_edit_last', '1'),
(130, 104, '_edit_lock', '1533803554:1'),
(131, 105, '_wp_attached_file', '2018/08/bath-3.jpg'),
(132, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:283;s:4:\"file\";s:18:\"2018/08/bath-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bath-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bath-3-300x237.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 104, '_thumbnail_id', '105'),
(134, 104, 'price', '10000$'),
(135, 104, '_price', 'field_5b6aec7f31cfb'),
(136, 106, '_edit_last', '1'),
(137, 106, '_edit_lock', '1533806629:1'),
(138, 107, '_wp_attached_file', '2018/08/big-bath-min.jpg'),
(139, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:898;s:4:\"file\";s:24:\"2018/08/big-bath-min.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"big-bath-min-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"big-bath-min-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"big-bath-min-768x359.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:359;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"big-bath-min-1024x479.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:479;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:24:\"big-bath-min-358x283.jpg\";s:5:\"width\";i:358;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 106, '_thumbnail_id', '107'),
(141, 106, 'price', '1000000'),
(142, 106, '_price', 'field_5b6aec7f31cfb'),
(153, 110, '_edit_last', '1'),
(154, 110, '_edit_lock', '1533818411:1'),
(158, 110, 'price', '1'),
(159, 110, '_price', 'field_5b6aec7f31cfb'),
(163, 119, '_wp_attached_file', '2018/08/poster.jpg'),
(164, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:989;s:4:\"file\";s:18:\"2018/08/poster.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"poster-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"poster-300x155.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"poster-768x396.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:396;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"poster-1024x527.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:527;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"prices_size\";a:4:{s:4:\"file\";s:18:\"poster-358x283.jpg\";s:5:\"width\";i:358;s:6:\"height\";i:283;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 110, '_thumbnail_id', '119'),
(166, 121, '_edit_last', '1'),
(167, 121, '_edit_lock', '1533818664:1'),
(168, 124, '_edit_last', '1'),
(169, 124, 'before', '105'),
(170, 124, '_before', 'field_5b6c36fefd5da'),
(171, 124, 'after', '103'),
(172, 124, '_after', 'field_5b6c378bedd06'),
(173, 124, '_edit_lock', '1533819582:1'),
(180, 127, '_wp_attached_file', '2018/08/logo.png'),
(181, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:77;s:6:\"height\";i:35;s:4:\"file\";s:16:\"2018/08/logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 126, '_edit_last', '1'),
(183, 126, 'before', '127'),
(184, 126, '_before', 'field_5b6c36fefd5da'),
(185, 126, 'after', '100'),
(186, 126, '_after', 'field_5b6c378bedd06'),
(187, 126, '_edit_lock', '1533819728:1'),
(191, 128, '_edit_last', '1'),
(192, 128, '_edit_lock', '1533887883:1'),
(193, 135, '_wp_attached_file', '2018/08/certificate-big.jpg'),
(194, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:281;s:6:\"height\";i:393;s:4:\"file\";s:27:\"2018/08/certificate-big.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"certificate-big-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"certificate-big-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 134, '_edit_last', '1'),
(196, 134, 'review_date', '20180810'),
(197, 134, '_review_date', 'field_5b6c3ebb8257a'),
(198, 134, 'name', 'Иванов Иван'),
(199, 134, '_name', 'field_5b6c3f1a8257b'),
(200, 134, 'place_of_work', 'г. Новополоцк'),
(201, 134, '_place_of_work', 'field_5b6c3f508257c'),
(202, 134, 'review_short_description', 'Отлично все.'),
(203, 134, '_review_short_description', 'field_5b6c3fd78257d'),
(204, 134, 'review_photo', '135'),
(205, 134, '_review_photo', 'field_5b6c40548257e'),
(206, 134, '_edit_lock', '1533904062:1'),
(207, 136, '_edit_last', '1'),
(208, 136, 'review_date', '20180811'),
(209, 136, '_review_date', 'field_5b6c3ebb8257a'),
(210, 136, 'name', 'Николаев Николай'),
(211, 136, '_name', 'field_5b6c3f1a8257b'),
(212, 136, 'place_of_work', 'г. Полоцк'),
(213, 136, '_place_of_work', 'field_5b6c3f508257c'),
(214, 136, 'review_short_description', 'норм'),
(215, 136, '_review_short_description', 'field_5b6c3fd78257d'),
(216, 136, 'review_photo', '119'),
(217, 136, '_review_photo', 'field_5b6c40548257e'),
(218, 136, '_edit_lock', '1533904382:1'),
(219, 137, '_edit_last', '1'),
(220, 137, 'review_date', '20180816'),
(221, 137, '_review_date', 'field_5b6c3ebb8257a'),
(222, 137, 'name', 'ыфвфывфывф'),
(223, 137, '_name', 'field_5b6c3f1a8257b'),
(224, 137, 'place_of_work', 'ывфывфывфы'),
(225, 137, '_place_of_work', 'field_5b6c3f508257c'),
(226, 137, 'review_short_description', 'вфывфывфывфывфывфы'),
(227, 137, '_review_short_description', 'field_5b6c3fd78257d'),
(228, 137, 'review_photo', '107'),
(229, 137, '_review_photo', 'field_5b6c40548257e'),
(230, 137, '_edit_lock', '1533887965:1'),
(231, 138, '_edit_last', '1'),
(232, 138, 'review_date', '20180801'),
(233, 138, '_review_date', 'field_5b6c3ebb8257a'),
(234, 138, 'name', '42423423'),
(235, 138, '_name', 'field_5b6c3f1a8257b'),
(236, 138, 'place_of_work', '423423423'),
(237, 138, '_place_of_work', 'field_5b6c3f508257c'),
(238, 138, 'review_short_description', '423423423423'),
(239, 138, '_review_short_description', 'field_5b6c3fd78257d'),
(240, 138, 'review_photo', '100'),
(241, 138, '_review_photo', 'field_5b6c40548257e'),
(242, 138, '_edit_lock', '1533887982:1'),
(243, 140, '_edit_last', '1'),
(244, 140, '_edit_lock', '1533891476:1'),
(245, 142, '_edit_last', '1'),
(246, 142, 'certificate_image', '135'),
(247, 142, '_certificate_image', 'field_5b6d4a4cf5b2c'),
(248, 142, '_edit_lock', '1533889047:1'),
(249, 144, '_wp_attached_file', '2018/08/sertificate-1-min.jpg'),
(250, 144, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:96;s:4:\"file\";s:29:\"2018/08/sertificate-1-min.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 143, '_edit_last', '1'),
(252, 143, 'certificate_image', '144'),
(253, 143, '_certificate_image', 'field_5b6d4a4cf5b2c'),
(254, 143, '_edit_lock', '1533889062:1'),
(255, 146, '_wp_attached_file', '2018/08/sertificate-3-min.jpg'),
(256, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:96;s:4:\"file\";s:29:\"2018/08/sertificate-3-min.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 145, '_edit_last', '1'),
(258, 145, 'certificate_image', '146'),
(259, 145, '_certificate_image', 'field_5b6d4a4cf5b2c'),
(260, 145, '_edit_lock', '1533889077:1'),
(261, 148, '_wp_attached_file', '2018/08/sertificate-2-min.jpg'),
(262, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:67;s:6:\"height\";i:96;s:4:\"file\";s:29:\"2018/08/sertificate-2-min.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 147, '_edit_last', '1'),
(264, 147, 'certificate_image', '148'),
(265, 147, '_certificate_image', 'field_5b6d4a4cf5b2c'),
(266, 147, '_edit_lock', '1533889211:1'),
(267, 150, '_edit_last', '1'),
(268, 150, '_edit_lock', '1533893755:1'),
(269, 153, '_edit_last', '1'),
(270, 153, 'question_text', 'Курица или яйцо'),
(271, 153, '_question_text', 'field_5b6d549bd1ed1'),
(272, 153, 'answer', 'Яйцо, потом курица'),
(273, 153, '_answer', 'field_5b6d54c7380c7'),
(274, 153, '_edit_lock', '1533893813:1'),
(275, 154, '_edit_last', '1'),
(276, 154, 'question_text', '1213131'),
(277, 154, '_question_text', 'field_5b6d549bd1ed1'),
(278, 154, 'answer', '31313131313131'),
(279, 154, '_answer', 'field_5b6d54c7380c7'),
(280, 154, '_edit_lock', '1533893723:1'),
(281, 155, '_edit_last', '1'),
(282, 155, 'question_text', 'ываываываы'),
(283, 155, '_question_text', 'field_5b6d549bd1ed1'),
(284, 155, 'answer', 'ваываываываываываываыва'),
(285, 155, '_answer', 'field_5b6d54c7380c7'),
(286, 155, '_edit_lock', '1533893765:1'),
(287, 156, '_edit_last', '1'),
(288, 156, 'question_text', 'ываопроптсми'),
(289, 156, '_question_text', 'field_5b6d549bd1ed1'),
(290, 156, 'answer', 'выаывавыпар66крр'),
(291, 156, '_answer', 'field_5b6d54c7380c7'),
(292, 156, '_edit_lock', '1533893698:1'),
(293, 157, '_edit_last', '1'),
(294, 157, 'question_text', '76867орпап'),
(295, 157, '_question_text', 'field_5b6d549bd1ed1'),
(296, 157, 'answer', 'вапвиьрол567842456'),
(297, 157, '_answer', 'field_5b6d54c7380c7'),
(298, 157, '_edit_lock', '1533893776:1'),
(299, 156, 'answer_text', 'dgdfgdfgdfgdfgdfgdfgdfgd'),
(300, 156, '_answer_text', 'field_5b6d54c7380c7'),
(301, 154, 'answer_text', 'dfgdfgdfgdfcvbcvbcvbcvb'),
(302, 154, '_answer_text', 'field_5b6d54c7380c7'),
(303, 155, 'answer_text', 'sdfsdfsdfsdfsdf'),
(304, 155, '_answer_text', 'field_5b6d54c7380c7'),
(305, 157, 'answer_text', 'dsfsdfsdfsdfsdfsdfsd'),
(306, 157, '_answer_text', 'field_5b6d54c7380c7'),
(307, 153, 'answer_text', '1231231123123123123'),
(308, 153, '_answer_text', 'field_5b6d54c7380c7'),
(309, 158, '_edit_last', '1'),
(310, 158, 'question_text', 'qqqqqqqqqqqqqqqqqqqqqqq'),
(311, 158, '_question_text', 'field_5b6d549bd1ed1'),
(312, 158, 'answer_text', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqq'),
(313, 158, '_answer_text', 'field_5b6d54c7380c7'),
(314, 158, '_edit_lock', '1533900498:1'),
(315, 161, '_edit_last', '1'),
(316, 161, '_edit_lock', '1533903786:1'),
(495, 210, 'client_phone_number', '+7 (456) 464-56-46'),
(496, 211, 'client_phone_number', '+7 (111) 111-11-11'),
(497, 212, 'client_phone_number', '+7 (111) 111-11-11'),
(498, 212, '_wp_trash_meta_status', 'draft'),
(499, 212, '_wp_trash_meta_time', '1533904810'),
(500, 212, '_wp_desired_post_slug', ''),
(501, 211, '_wp_trash_meta_status', 'draft'),
(502, 211, '_wp_trash_meta_time', '1533904810'),
(503, 211, '_wp_desired_post_slug', ''),
(504, 210, '_wp_trash_meta_status', 'draft'),
(505, 210, '_wp_trash_meta_time', '1533904810'),
(506, 210, '_wp_desired_post_slug', ''),
(507, 213, 'client_phone_number', '+7 (222) 222-22-22'),
(508, 214, 'client_phone_number', '+7 (333) 333-33-33'),
(509, 215, 'client_phone_number', '+7 (444) 444-44-44'),
(510, 216, 'client_phone_number', '+7 (555) 555-55-55'),
(511, 217, 'client_phone_number', '+7 (666) 666-66-66'),
(512, 218, 'client_phone_number', '+7 (777) 777-77-77'),
(513, 216, '_edit_lock', '1533904746:1'),
(514, 219, 'client_phone_number', '+7 (777) 777-77-77'),
(515, 218, '_wp_trash_meta_status', 'draft'),
(516, 218, '_wp_trash_meta_time', '1533905010'),
(517, 218, '_wp_desired_post_slug', ''),
(518, 217, '_wp_trash_meta_status', 'draft'),
(519, 217, '_wp_trash_meta_time', '1533905010'),
(520, 217, '_wp_desired_post_slug', ''),
(521, 216, '_wp_trash_meta_status', 'draft'),
(522, 216, '_wp_trash_meta_time', '1533905010'),
(523, 216, '_wp_desired_post_slug', ''),
(524, 215, '_wp_trash_meta_status', 'draft'),
(525, 215, '_wp_trash_meta_time', '1533905010'),
(526, 215, '_wp_desired_post_slug', ''),
(527, 214, '_wp_trash_meta_status', 'draft'),
(528, 214, '_wp_trash_meta_time', '1533905010'),
(529, 214, '_wp_desired_post_slug', ''),
(530, 213, '_wp_trash_meta_status', 'draft'),
(531, 213, '_wp_trash_meta_time', '1533905010'),
(532, 213, '_wp_desired_post_slug', ''),
(533, 219, '_wp_trash_meta_status', 'draft'),
(534, 219, '_wp_trash_meta_time', '1533905014'),
(535, 219, '_wp_desired_post_slug', ''),
(536, 220, 'client_phone_number', '+7 (111) 111-11-11'),
(537, 221, 'client_phone_number', '+7 (222) 222-22-22'),
(538, 222, 'client_phone_number', '+7 (333) 333-33-33'),
(539, 223, 'client_phone_number', '+7 (444) 444-44-44'),
(540, 224, 'client_phone_number', '+7 (555) 555-55-55'),
(541, 225, 'client_phone_number', '+7 (666) 666-66-66'),
(542, 225, '_wp_trash_meta_status', 'draft'),
(543, 225, '_wp_trash_meta_time', '1533905078'),
(544, 225, '_wp_desired_post_slug', ''),
(545, 224, '_wp_trash_meta_status', 'draft'),
(546, 224, '_wp_trash_meta_time', '1533905078'),
(547, 224, '_wp_desired_post_slug', ''),
(548, 223, '_wp_trash_meta_status', 'draft'),
(549, 223, '_wp_trash_meta_time', '1533905078'),
(550, 223, '_wp_desired_post_slug', ''),
(551, 222, '_wp_trash_meta_status', 'draft'),
(552, 222, '_wp_trash_meta_time', '1533905078'),
(553, 222, '_wp_desired_post_slug', ''),
(554, 221, '_wp_trash_meta_status', 'draft'),
(555, 221, '_wp_trash_meta_time', '1533905078'),
(556, 221, '_wp_desired_post_slug', ''),
(557, 220, '_wp_trash_meta_status', 'draft'),
(558, 220, '_wp_trash_meta_time', '1533905078'),
(559, 220, '_wp_desired_post_slug', ''),
(560, 226, 'client_phone_number', '+7 (666) 666-66-66');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-01 10:05:21', '2018-08-01 10:05:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-01 10:05:21', '2018-08-01 10:05:21', '', 0, 'http://bath/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-01 10:05:21', '2018-08-01 10:05:21', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://bath/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-01 10:05:21', '2018-08-01 10:05:21', '', 0, 'http://bath/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-01 10:05:21', '2018-08-01 10:05:21', '<h2>Who we are</h2><p>Our website address is: http://bath.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-01 10:05:21', '2018-08-01 10:05:21', '', 0, 'http://bath/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-03 07:51:22', '2018-08-03 07:51:22', 'asdasdacxzcczxcvbvnghkhjkhj', 'adasdas', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-08-03 07:51:22', '2018-08-03 07:51:22', '', 0, 'http://bath/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-02 08:34:25', '2018-08-02 08:34:25', 'asdasdacxzcczxcvbvnghkhjkhj', 'adasdas', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-08-02 08:34:25', '2018-08-02 08:34:25', '', 4, 'http://bath/2018/08/02/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-08-02 08:43:18', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-02 08:43:18', '0000-00-00 00:00:00', '', 0, 'http://bath/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2018-08-02 08:43:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-02 08:43:18', '0000-00-00 00:00:00', '', 0, 'http://bath/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-08-02 08:48:08', '2018-08-02 08:48:08', '', 'Время работы', '', 'trash', 'open', 'open', '', '%d0%b2%d1%80%d0%b5%d0%bc%d1%8f-%d1%80%d0%b0%d0%b1%d0%be%d1%82%d1%8b__trashed', '', '', '2018-08-03 07:31:58', '2018-08-03 07:31:58', '', 0, 'http://bath/?p=9', 0, 'post', '', 0),
(10, 1, '2018-08-02 08:48:08', '2018-08-02 08:48:08', '', 'Время работы', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-08-02 08:48:08', '2018-08-02 08:48:08', '', 9, 'http://bath/2018/08/02/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-08-06 08:41:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:41:46', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=11', 0, 'phone_number', '', 0),
(12, 1, '2018-08-06 08:46:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:46:43', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=12', 0, 'phone_number', '', 0),
(13, 1, '2018-08-06 08:46:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:46:56', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=13', 0, 'phone_number', '', 0),
(14, 1, '2018-08-06 08:47:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:47:20', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=14', 0, 'phone_number', '', 0),
(15, 1, '2018-08-06 08:51:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:51:39', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=15', 0, 'phone_number', '', 0),
(16, 1, '2018-08-06 08:51:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:51:43', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=16', 0, 'phone_number', '', 0),
(17, 1, '2018-08-06 08:52:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:52:02', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=17', 0, 'phone_number', '', 0),
(18, 1, '2018-08-06 08:52:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:52:09', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=18', 0, 'phone_number', '', 0),
(19, 1, '2018-08-06 08:52:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:52:20', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=19', 0, 'phone_number', '', 0),
(20, 1, '2018-08-06 08:52:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:52:23', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=20', 0, 'phone_number', '', 0),
(21, 1, '2018-08-06 08:52:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:52:26', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=21', 0, 'phone_number', '', 0),
(22, 1, '2018-08-06 08:54:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:54:26', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=22', 0, 'phone_number', '', 0),
(23, 1, '2018-08-06 08:55:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:55:23', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=23', 0, 'phone_number', '', 0),
(24, 1, '2018-08-06 08:56:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 08:56:06', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=24', 0, 'phone_number', '', 0),
(25, 1, '2018-08-06 09:06:46', '2018-08-06 09:06:46', '', 'Draft created on August 6, 2018 at 8:59 am', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-08-06 09:06:46', '2018-08-06 09:06:46', '', 0, 'http://bath/?post_type=phone_number&#038;p=25', 0, 'phone_number', '', 0),
(26, 1, '2018-08-06 09:00:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 09:00:28', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=26', 0, 'phone_number', '', 0),
(27, 1, '2018-08-06 09:00:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 09:00:47', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=27', 0, 'phone_number', '', 0),
(28, 1, '2018-08-06 09:01:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 09:01:02', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=28', 0, 'phone_number', '', 0),
(29, 1, '2018-08-06 09:06:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 09:06:48', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=29', 0, 'phone_number', '', 0),
(30, 1, '2018-08-06 09:48:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 09:48:54', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=30', 0, 'phone_number', '', 0),
(31, 1, '2018-08-06 09:53:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 09:53:20', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=31', 0, 'phone_number', '', 0),
(32, 1, '2018-08-06 09:54:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 09:54:31', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=32', 0, 'phone_number', '', 0),
(37, 1, '2018-08-06 11:29:54', '2018-08-06 11:29:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"phone_number\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Номер телефона', '%d0%bd%d0%be%d0%bc%d0%b5%d1%80-%d1%82%d0%b5%d0%bb%d0%b5%d1%84%d0%be%d0%bd%d0%b0', 'trash', 'closed', 'closed', '', 'group_5b682f6c56fbf__trashed', '', '', '2018-08-07 11:56:04', '2018-08-07 11:56:04', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2018-08-06 11:29:54', '2018-08-06 11:29:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Номер телефона', 'phone_number', 'trash', 'closed', 'closed', '', 'field_5b68303b4ff6c__trashed', '', '', '2018-08-07 11:56:04', '2018-08-07 11:56:04', '', 37, 'http://bath/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(39, 1, '2018-08-06 11:31:01', '2018-08-06 11:31:01', '', 'Офис', '', 'trash', 'closed', 'closed', '', 'auto-draft__trashed', '', '', '2018-08-07 11:56:20', '2018-08-07 11:56:20', '', 0, 'http://bath/?post_type=phone_number&#038;p=39', 0, 'phone_number', '', 0),
(40, 1, '2018-08-06 11:34:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 11:34:34', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=40', 0, 'phone_number', '', 0),
(41, 1, '2018-08-06 11:36:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 11:36:08', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=41', 0, 'phone_number', '', 0),
(42, 1, '2018-08-06 11:44:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 11:44:53', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=42', 0, 'phone_number', '', 0),
(43, 1, '2018-08-06 11:55:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 11:55:49', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=working_hours&p=43', 0, 'working_hours', '', 0),
(44, 1, '2018-08-06 11:55:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 11:55:54', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=44', 0, 'phone_number', '', 0),
(45, 1, '2018-08-06 11:56:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-06 11:56:20', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=45', 0, 'phone_number', '', 0),
(46, 1, '2018-08-07 08:33:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 08:33:31', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=main_screen&p=46', 0, 'main_screen', '', 0),
(47, 1, '2018-08-07 08:35:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 08:35:51', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=main_screen&p=47', 0, 'main_screen', '', 0),
(48, 1, '2018-08-07 08:36:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 08:36:09', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=acf-field-group&p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2018-08-07 08:37:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 08:37:40', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=acf-field-group&p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2018-08-07 08:37:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 08:37:45', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=50', 0, 'phone_number', '', 0),
(51, 1, '2018-08-07 08:37:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 08:37:50', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=main_screen&p=51', 0, 'main_screen', '', 0),
(52, 1, '2018-08-07 08:40:24', '2018-08-07 08:40:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"main_screen\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Главный экран', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d1%8b%d0%b9-%d1%8d%d0%ba%d1%80%d0%b0%d0%bd', 'publish', 'closed', 'closed', '', 'group_5b695a6c75db0', '', '', '2018-08-07 08:40:24', '2018-08-07 08:40:24', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2018-08-07 08:40:24', '2018-08-07 08:40:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Подзаголовок', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5b695a763ca55', '', '', '2018-08-07 08:40:24', '2018-08-07 08:40:24', '', 52, 'http://bath/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2018-08-07 09:38:32', '2018-08-07 09:38:32', '', '12345sfsdfsdfsdfsdfsdfsd', '', 'publish', 'closed', 'closed', '', '12345sfsdfsdfsdfsdfsdfsd', '', '', '2018-08-07 09:52:24', '2018-08-07 09:52:24', '', 0, 'http://bath/?post_type=main_screen&#038;p=54', 0, 'main_screen', '', 0),
(55, 1, '2018-08-07 09:49:35', '2018-08-07 09:49:35', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', 'publish', 'closed', 'closed', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '', '', '2018-08-07 09:51:28', '2018-08-07 09:51:28', '', 0, 'http://bath/?post_type=main_screen&#038;p=55', 0, 'main_screen', '', 0),
(56, 1, '2018-08-07 09:50:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 09:50:07', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=main_screen&p=56', 0, 'main_screen', '', 0),
(57, 1, '2018-08-07 10:27:22', '2018-08-07 10:27:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"discount\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Скидка', '%d1%81%d0%ba%d0%b8%d0%b4%d0%ba%d0%b0', 'publish', 'closed', 'closed', '', 'group_5b6973d8211e1', '', '', '2018-08-07 10:27:30', '2018-08-07 10:27:30', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=57', 0, 'acf-field-group', '', 0),
(58, 1, '2018-08-07 10:27:22', '2018-08-07 10:27:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст скидки', 'discount_text', 'publish', 'closed', 'closed', '', 'field_5b6973e3f67ec', '', '', '2018-08-07 10:27:22', '2018-08-07 10:27:22', '', 57, 'http://bath/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2018-08-07 10:31:07', '2018-08-07 10:31:07', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2018-08-07 10:31:07', '2018-08-07 10:31:07', '', 0, 'http://bath/?post_type=discount&#038;p=59', 0, 'discount', '', 0),
(60, 1, '2018-08-07 11:26:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:26:15', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=stock&p=60', 0, 'stock', '', 0),
(61, 1, '2018-08-07 11:26:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:26:49', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=acf-field-group&p=61', 0, 'acf-field-group', '', 0),
(62, 1, '2018-08-07 11:30:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:30:33', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=acf-field-group&p=62', 0, 'acf-field-group', '', 0),
(63, 1, '2018-08-07 11:30:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:30:38', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=stock&p=63', 0, 'stock', '', 0),
(64, 1, '2018-08-07 11:30:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:30:47', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=acf-field-group&p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2018-08-07 11:31:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:31:51', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=stock&p=65', 0, 'stock', '', 0),
(66, 1, '2018-08-07 11:35:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:35:32', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=stock&p=66', 0, 'stock', '', 0),
(67, 1, '2018-08-07 11:36:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:36:01', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=stock&p=67', 0, 'stock', '', 0),
(68, 1, '2018-08-07 11:36:15', '2018-08-07 11:36:15', 'Акция 2', 'Акция 1', '', 'trash', 'closed', 'closed', '', '%d0%b0%d0%ba%d1%86%d0%b8%d1%8f-1__trashed', '', '', '2018-08-07 11:44:48', '2018-08-07 11:44:48', '', 0, 'http://bath/?post_type=stock&#038;p=68', 0, 'stock', '', 0),
(69, 1, '2018-08-07 11:51:33', '2018-08-07 11:51:33', '123', '123', '', 'publish', 'closed', 'closed', '', '123', '', '', '2018-08-07 11:51:33', '2018-08-07 11:51:33', '', 0, 'http://bath/?post_type=stock&#038;p=69', 0, 'stock', '', 0),
(70, 1, '2018-08-07 11:56:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-07 11:56:21', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=phone_number&p=70', 0, 'phone_number', '', 0),
(71, 1, '2018-08-07 12:05:01', '2018-08-07 12:05:01', '', '8 (025) 703-88-65', '', 'trash', 'closed', 'closed', '', '8-025-7038865__trashed', '', '', '2018-08-07 13:55:56', '2018-08-07 13:55:56', '', 0, 'http://bath/?post_type=phone_number&#038;p=71', 0, 'phone_number', '', 0),
(72, 1, '2018-08-07 12:37:11', '2018-08-07 12:37:11', '', 'ежедневно с часу до 2', '', 'trash', 'closed', 'closed', '', '%d0%b5%d0%b6%d0%b5%d0%b4%d0%bd%d0%b5%d0%b2%d0%bd%d0%be-%d1%81-%d1%87%d0%b0%d1%81%d1%83-%d0%b4%d0%be-2__trashed', '', '', '2018-08-07 13:48:50', '2018-08-07 13:48:50', '', 0, 'http://bath/?post_type=working_hours&#038;p=72', 0, 'working_hours', '', 0),
(73, 1, '2018-08-07 21:43:05', '2018-08-07 21:43:05', '', 'номер телефона', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%bc%d0%b5%d1%80-%d1%82%d0%b5%d0%bb%d0%b5%d1%84%d0%be%d0%bd%d0%b0', '', '', '2018-08-07 21:43:05', '2018-08-07 21:43:05', '', 0, 'http://bath/?post_type=phone_number&#038;p=73', 0, 'phone_number', '', 0),
(74, 1, '2018-08-07 21:47:22', '2018-08-07 21:47:22', '', '111111111111', '', 'publish', 'closed', 'closed', '', '111111111111', '', '', '2018-08-07 21:47:22', '2018-08-07 21:47:22', '', 0, 'http://bath/?post_type=phone_number&#038;p=74', 0, 'phone_number', '', 0),
(75, 1, '2018-08-08 08:59:23', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 08:59:23', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=advantages&p=75', 0, 'advantages', '', 0),
(76, 1, '2018-08-08 08:59:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 08:59:48', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=advantages&p=76', 0, 'advantages', '', 0),
(77, 1, '2018-08-08 09:04:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 09:04:43', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=acf-field-group&p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2018-08-08 09:24:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 09:24:05', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=advantages&p=78', 0, 'advantages', '', 0),
(79, 1, '2018-08-08 09:25:20', '2018-08-08 09:25:20', 'Такая дешевая', 'Дешевле, чем купить новую ванну', '', 'publish', 'closed', 'closed', '', '%d0%b4%d0%b5%d1%88%d0%b5%d0%b2%d0%bb%d0%b5-123', '', '', '2018-08-08 12:01:27', '2018-08-08 12:01:27', '', 0, 'http://bath/?post_type=advantages&#038;p=79', 0, 'advantages', '', 0),
(81, 1, '2018-08-08 11:47:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 11:47:09', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=advantages&p=81', 0, 'advantages', '', 0),
(82, 1, '2018-08-08 12:09:20', '2018-08-08 12:09:20', 'fsdfsdfsdfsdfsdfsd', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2018-08-08 12:09:20', '2018-08-08 12:09:20', '', 0, 'http://bath/?post_type=advantages&#038;p=82', 0, 'advantages', '', 0),
(83, 1, '2018-08-08 12:10:03', '2018-08-08 12:10:03', 'Так <strong>просто</strong>', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2018-08-08 12:10:44', '2018-08-08 12:10:44', '', 0, 'http://bath/?post_type=advantages&#038;p=83', 0, 'advantages', '', 0),
(84, 1, '2018-08-08 12:12:09', '2018-08-08 12:12:09', 'Такая старая', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2018-08-08 12:12:09', '2018-08-08 12:12:09', '', 0, 'http://bath/?post_type=advantages&#038;p=84', 0, 'advantages', '', 0),
(85, 1, '2018-08-08 12:54:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 12:54:42', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=85', 0, 'prices', '', 0),
(86, 1, '2018-08-08 13:06:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:06:53', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=86', 0, 'prices', '', 0),
(87, 1, '2018-08-08 13:12:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:12:35', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=87', 0, 'prices', '', 0),
(88, 1, '2018-08-08 13:14:01', '2018-08-08 13:14:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"prices\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Цены', '%d1%86%d0%b5%d0%bd%d1%8b', 'publish', 'closed', 'closed', '', 'group_5b6aec79bf355', '', '', '2018-08-08 13:21:21', '2018-08-08 13:21:21', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2018-08-08 13:14:01', '2018-08-08 13:14:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Цена', 'price', 'publish', 'closed', 'closed', '', 'field_5b6aec7f31cfb', '', '', '2018-08-08 13:14:01', '2018-08-08 13:14:01', '', 88, 'http://bath/?post_type=acf-field&p=89', 0, 'acf-field', '', 0),
(90, 1, '2018-08-08 13:14:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:14:05', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=90', 0, 'prices', '', 0),
(91, 1, '2018-08-08 13:14:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:14:43', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=91', 0, 'prices', '', 0),
(92, 1, '2018-08-08 13:16:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:16:03', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=92', 0, 'prices', '', 0),
(94, 1, '2018-08-08 13:18:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:18:09', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=94', 0, 'prices', '', 0),
(95, 1, '2018-08-08 13:18:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:18:45', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=95', 0, 'prices', '', 0),
(96, 1, '2018-08-08 13:20:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:20:04', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=96', 0, 'prices', '', 0),
(97, 1, '2018-08-08 13:20:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:20:47', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=97', 0, 'prices', '', 0),
(98, 1, '2018-08-08 13:21:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-08 13:21:09', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=98', 0, 'prices', '', 0),
(99, 1, '2018-08-08 13:49:32', '2018-08-08 13:49:32', '', 'Такая ванна', '', 'publish', 'closed', 'closed', '', '%d1%82%d0%b0%d0%ba%d0%b0%d1%8f-%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0', '', '', '2018-08-08 13:49:32', '2018-08-08 13:49:32', '', 0, 'http://bath/?post_type=prices&#038;p=99', 0, 'prices', '', 0),
(100, 1, '2018-08-08 13:48:57', '2018-08-08 13:48:57', '', 'bath-1', '', 'inherit', 'open', 'closed', '', 'bath-1', '', '', '2018-08-10 08:02:00', '2018-08-10 08:02:00', '', 99, 'http://bath/wp-content/uploads/2018/08/bath-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-08-09 08:07:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 08:07:33', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=101', 0, 'prices', '', 0),
(102, 1, '2018-08-09 08:32:09', '2018-08-09 08:32:09', '', 'Средняя ванна', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%80%d0%b5%d0%b4%d0%bd%d1%8f%d1%8f-%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0', '', '', '2018-08-09 08:32:09', '2018-08-09 08:32:09', '', 0, 'http://bath/?post_type=prices&#038;p=102', 0, 'prices', '', 0),
(103, 1, '2018-08-09 08:31:48', '2018-08-09 08:31:48', '', 'bath-2', '', 'inherit', 'open', 'closed', '', 'bath-2', '', '', '2018-08-09 13:01:03', '2018-08-09 13:01:03', '', 102, 'http://bath/wp-content/uploads/2018/08/bath-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-08-09 08:33:11', '2018-08-09 08:33:11', '', 'Большая ванна', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%be%d0%bb%d1%8c%d1%88%d0%b0%d1%8f-%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0', '', '', '2018-08-09 08:33:11', '2018-08-09 08:33:11', '', 0, 'http://bath/?post_type=prices&#038;p=104', 0, 'prices', '', 0),
(105, 1, '2018-08-09 08:33:05', '2018-08-09 08:33:05', '', 'bath-3', '', 'inherit', 'open', 'closed', '', 'bath-3', '', '', '2018-08-09 13:01:00', '2018-08-09 13:01:00', '', 104, 'http://bath/wp-content/uploads/2018/08/bath-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-08-09 09:25:56', '2018-08-09 09:25:56', '', 'Огромная ванна', '', 'publish', 'closed', 'closed', '', '%d0%be%d0%b3%d1%80%d0%be%d0%bc%d0%bd%d0%b0%d1%8f-%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0', '', '', '2018-08-09 09:25:56', '2018-08-09 09:25:56', '', 0, 'http://bath/?post_type=prices&#038;p=106', 0, 'prices', '', 0),
(107, 1, '2018-08-09 09:25:48', '2018-08-09 09:25:48', '', 'big-bath-min', '', 'inherit', 'open', 'closed', '', 'big-bath-min', '', '', '2018-08-10 08:01:42', '2018-08-10 08:01:42', '', 106, 'http://bath/wp-content/uploads/2018/08/big-bath-min.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-08-09 09:27:55', '2018-08-09 09:27:55', '', 'Еще ванна', '', 'publish', 'closed', 'closed', '', '%d0%b5%d1%89%d0%b5-%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0', '', '', '2018-08-09 12:27:28', '2018-08-09 12:27:28', '', 0, 'http://bath/?post_type=prices&#038;p=110', 0, 'prices', '', 0),
(112, 1, '2018-08-09 11:53:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 11:53:11', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=stock&p=112', 0, 'stock', '', 0),
(113, 1, '2018-08-09 11:58:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 11:58:55', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=113', 0, 'prices', '', 0),
(114, 1, '2018-08-09 11:59:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 11:59:11', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=prices&p=114', 0, 'prices', '', 0),
(115, 1, '2018-08-09 11:59:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 11:59:39', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=work_examples&p=115', 0, 'work_examples', '', 0),
(116, 1, '2018-08-09 11:59:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 11:59:51', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=work_examples&p=116', 0, 'work_examples', '', 0),
(117, 1, '2018-08-09 12:00:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 12:00:52', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=work_examples&p=117', 0, 'work_examples', '', 0),
(119, 1, '2018-08-09 12:27:23', '2018-08-09 12:27:23', '', 'poster', '', 'inherit', 'open', 'closed', '', 'poster', '', '', '2018-08-10 08:01:08', '2018-08-10 08:01:08', '', 110, 'http://bath/wp-content/uploads/2018/08/poster.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2018-08-09 12:42:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-09 12:42:37', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=work_examples&p=120', 0, 'work_examples', '', 0),
(121, 1, '2018-08-09 12:45:33', '2018-08-09 12:45:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"work_examples\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Примеры работ', '%d0%bf%d1%80%d0%b8%d0%bc%d0%b5%d1%80%d1%8b-%d1%80%d0%b0%d0%b1%d0%be%d1%82', 'publish', 'closed', 'closed', '', 'group_5b6c36c47ef6d', '', '', '2018-08-09 12:46:29', '2018-08-09 12:46:29', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=121', 0, 'acf-field-group', '', 0),
(122, 1, '2018-08-09 12:45:33', '2018-08-09 12:45:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'До реставрации', 'before', 'publish', 'closed', 'closed', '', 'field_5b6c36fefd5da', '', '', '2018-08-09 12:45:33', '2018-08-09 12:45:33', '', 121, 'http://bath/?post_type=acf-field&p=122', 0, 'acf-field', '', 0),
(123, 1, '2018-08-09 12:46:29', '2018-08-09 12:46:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'После реставрации', 'after', 'publish', 'closed', 'closed', '', 'field_5b6c378bedd06', '', '', '2018-08-09 12:46:29', '2018-08-09 12:46:29', '', 121, 'http://bath/?post_type=acf-field&p=123', 1, 'acf-field', '', 0),
(124, 1, '2018-08-09 13:01:05', '2018-08-09 13:01:05', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2018-08-09 13:01:05', '2018-08-09 13:01:05', '', 0, 'http://bath/?post_type=work_examples&#038;p=124', 0, 'work_examples', '', 0),
(126, 1, '2018-08-09 13:02:36', '2018-08-09 13:02:36', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2018-08-09 13:02:36', '2018-08-09 13:02:36', '', 0, 'http://bath/?post_type=work_examples&#038;p=126', 0, 'work_examples', '', 0),
(127, 1, '2018-08-09 13:02:27', '2018-08-09 13:02:27', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-08-09 13:02:27', '2018-08-09 13:02:27', '', 126, 'http://bath/wp-content/uploads/2018/08/logo.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2018-08-09 13:37:22', '2018-08-09 13:37:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Отзывы', '%d0%be%d1%82%d0%b7%d1%8b%d0%b2%d1%8b', 'publish', 'closed', 'closed', '', 'group_5b6c3eb8de048', '', '', '2018-08-10 07:37:43', '2018-08-10 07:37:43', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=128', 0, 'acf-field-group', '', 0),
(129, 1, '2018-08-09 13:37:22', '2018-08-09 13:37:22', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d.m.Y\";s:13:\"return_format\";s:5:\"d.m.Y\";s:9:\"first_day\";i:1;}', 'Дата отзыва', 'review_date', 'publish', 'closed', 'closed', '', 'field_5b6c3ebb8257a', '', '', '2018-08-09 13:37:22', '2018-08-09 13:37:22', '', 128, 'http://bath/?post_type=acf-field&p=129', 0, 'acf-field', '', 0),
(130, 1, '2018-08-09 13:37:22', '2018-08-09 13:37:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Иванов Иван\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Имя', 'name', 'publish', 'closed', 'closed', '', 'field_5b6c3f1a8257b', '', '', '2018-08-09 13:37:22', '2018-08-09 13:37:22', '', 128, 'http://bath/?post_type=acf-field&p=130', 1, 'acf-field', '', 0),
(131, 1, '2018-08-09 13:37:22', '2018-08-09 13:37:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"г. Пермь\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Место проведения работ', 'place_of_work', 'publish', 'closed', 'closed', '', 'field_5b6c3f508257c', '', '', '2018-08-09 13:37:22', '2018-08-09 13:37:22', '', 128, 'http://bath/?post_type=acf-field&p=131', 2, 'acf-field', '', 0),
(132, 1, '2018-08-09 13:37:22', '2018-08-09 13:37:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Краткое описание отзыва', 'review_short_description', 'publish', 'closed', 'closed', '', 'field_5b6c3fd78257d', '', '', '2018-08-09 13:37:22', '2018-08-09 13:37:22', '', 128, 'http://bath/?post_type=acf-field&p=132', 3, 'acf-field', '', 0),
(133, 1, '2018-08-09 13:37:22', '2018-08-09 13:37:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото отзыва', 'review_photo', 'publish', 'closed', 'closed', '', 'field_5b6c40548257e', '', '', '2018-08-09 13:37:22', '2018-08-09 13:37:22', '', 128, 'http://bath/?post_type=acf-field&p=133', 4, 'acf-field', '', 0),
(134, 1, '2018-08-10 07:42:22', '2018-08-10 07:42:22', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2018-08-10 07:42:22', '2018-08-10 07:42:22', '', 0, 'http://bath/?post_type=reviews&#038;p=134', 0, 'reviews', '', 0),
(135, 1, '2018-08-10 07:42:08', '2018-08-10 07:42:08', '', 'certificate-big', '', 'inherit', 'open', 'closed', '', 'certificate-big', '', '', '2018-08-10 08:19:45', '2018-08-10 08:19:45', '', 134, 'http://bath/wp-content/uploads/2018/08/certificate-big.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2018-08-10 08:01:14', '2018-08-10 08:01:14', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2018-08-10 12:30:21', '2018-08-10 12:30:21', '', 0, 'http://bath/?post_type=reviews&#038;p=136', 0, 'reviews', '', 0),
(137, 1, '2018-08-10 08:01:44', '2018-08-10 08:01:44', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2018-08-10 08:01:44', '2018-08-10 08:01:44', '', 0, 'http://bath/?post_type=reviews&#038;p=137', 0, 'reviews', '', 0),
(138, 1, '2018-08-10 08:02:01', '2018-08-10 08:02:01', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-4', '', '', '2018-08-10 08:02:01', '2018-08-10 08:02:01', '', 0, 'http://bath/?post_type=reviews&#038;p=138', 0, 'reviews', '', 0),
(139, 1, '2018-08-10 08:17:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-10 08:17:43', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=certificates&p=139', 0, 'certificates', '', 0),
(140, 1, '2018-08-10 08:19:34', '2018-08-10 08:19:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"certificates\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Сертификаты', '%d1%81%d0%b5%d1%80%d1%82%d0%b8%d1%84%d0%b8%d0%ba%d0%b0%d1%82%d1%8b', 'publish', 'closed', 'closed', '', 'group_5b6d4a2f944c2', '', '', '2018-08-10 08:19:34', '2018-08-10 08:19:34', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=140', 0, 'acf-field-group', '', 0),
(141, 1, '2018-08-10 08:19:34', '2018-08-10 08:19:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото/скан сертификата', 'certificate_image', 'publish', 'closed', 'closed', '', 'field_5b6d4a4cf5b2c', '', '', '2018-08-10 08:19:34', '2018-08-10 08:19:34', '', 140, 'http://bath/?post_type=acf-field&p=141', 0, 'acf-field', '', 0),
(142, 1, '2018-08-10 08:19:47', '2018-08-10 08:19:47', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2018-08-10 08:19:47', '2018-08-10 08:19:47', '', 0, 'http://bath/?post_type=certificates&#038;p=142', 0, 'certificates', '', 0),
(143, 1, '2018-08-10 08:20:04', '2018-08-10 08:20:04', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2018-08-10 08:20:04', '2018-08-10 08:20:04', '', 0, 'http://bath/?post_type=certificates&#038;p=143', 0, 'certificates', '', 0),
(144, 1, '2018-08-10 08:19:59', '2018-08-10 08:19:59', '', 'sertificate-1-min', '', 'inherit', 'open', 'closed', '', 'sertificate-1-min', '', '', '2018-08-10 08:19:59', '2018-08-10 08:19:59', '', 143, 'http://bath/wp-content/uploads/2018/08/sertificate-1-min.jpg', 0, 'attachment', 'image/jpeg', 0),
(145, 1, '2018-08-10 08:20:20', '2018-08-10 08:20:20', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2018-08-10 08:20:20', '2018-08-10 08:20:20', '', 0, 'http://bath/?post_type=certificates&#038;p=145', 0, 'certificates', '', 0),
(146, 1, '2018-08-10 08:20:15', '2018-08-10 08:20:15', '', 'sertificate-3-min', '', 'inherit', 'open', 'closed', '', 'sertificate-3-min', '', '', '2018-08-10 08:20:15', '2018-08-10 08:20:15', '', 145, 'http://bath/wp-content/uploads/2018/08/sertificate-3-min.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2018-08-10 08:20:35', '2018-08-10 08:20:35', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-4', '', '', '2018-08-10 08:20:35', '2018-08-10 08:20:35', '', 0, 'http://bath/?post_type=certificates&#038;p=147', 0, 'certificates', '', 0),
(148, 1, '2018-08-10 08:20:31', '2018-08-10 08:20:31', '', 'sertificate-2-min', '', 'inherit', 'open', 'closed', '', 'sertificate-2-min', '', '', '2018-08-10 08:20:31', '2018-08-10 08:20:31', '', 147, 'http://bath/wp-content/uploads/2018/08/sertificate-2-min.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-08-10 09:00:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-10 09:00:19', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=acf-field-group&p=149', 0, 'acf-field-group', '', 0),
(150, 1, '2018-08-10 09:03:00', '2018-08-10 09:03:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"questions\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Вопросы', '%d0%b2%d0%be%d0%bf%d1%80%d0%be%d1%81%d1%8b', 'publish', 'closed', 'closed', '', 'group_5b6d5486a66a7', '', '', '2018-08-10 09:38:14', '2018-08-10 09:38:14', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=150', 0, 'acf-field-group', '', 0),
(151, 1, '2018-08-10 09:03:00', '2018-08-10 09:03:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Вопрос', 'question_text', 'publish', 'closed', 'closed', '', 'field_5b6d549bd1ed1', '', '', '2018-08-10 09:03:24', '2018-08-10 09:03:24', '', 150, 'http://bath/?post_type=acf-field&#038;p=151', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(152, 1, '2018-08-10 09:03:24', '2018-08-10 09:03:24', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Ответ', 'answer_text', 'publish', 'closed', 'closed', '', 'field_5b6d54c7380c7', '', '', '2018-08-10 09:38:14', '2018-08-10 09:38:14', '', 150, 'http://bath/?post_type=acf-field&#038;p=152', 1, 'acf-field', '', 0),
(153, 1, '2018-08-10 09:04:49', '2018-08-10 09:04:49', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2018-08-10 09:39:06', '2018-08-10 09:39:06', '', 0, 'http://bath/?post_type=questions&#038;p=153', 0, 'questions', '', 0),
(154, 1, '2018-08-10 09:08:45', '2018-08-10 09:08:45', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-2', '', '', '2018-08-10 09:37:31', '2018-08-10 09:37:31', '', 0, 'http://bath/?post_type=questions&#038;p=154', 0, 'questions', '', 0),
(155, 1, '2018-08-10 09:08:51', '2018-08-10 09:08:51', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-3', '', '', '2018-08-10 09:38:26', '2018-08-10 09:38:26', '', 0, 'http://bath/?post_type=questions&#038;p=155', 0, 'questions', '', 0),
(156, 1, '2018-08-10 09:09:01', '2018-08-10 09:09:01', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-4', '', '', '2018-08-10 09:37:18', '2018-08-10 09:37:18', '', 0, 'http://bath/?post_type=questions&#038;p=156', 0, 'questions', '', 0),
(157, 1, '2018-08-10 09:09:11', '2018-08-10 09:09:11', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-5', '', '', '2018-08-10 09:38:35', '2018-08-10 09:38:35', '', 0, 'http://bath/?post_type=questions&#038;p=157', 0, 'questions', '', 0),
(158, 1, '2018-08-10 09:39:28', '2018-08-10 09:39:28', '', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft-6', '', '', '2018-08-10 09:39:28', '2018-08-10 09:39:28', '', 0, 'http://bath/?post_type=questions&#038;p=158', 0, 'questions', '', 0),
(159, 1, '2018-08-10 11:30:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-10 11:30:43', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=requests&p=159', 0, 'requests', '', 0),
(160, 1, '2018-08-10 11:33:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-10 11:33:17', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=requests&p=160', 0, 'requests', '', 0),
(161, 1, '2018-08-10 12:08:40', '2018-08-10 12:08:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"requests\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Заявки', '%d0%b7%d0%b0%d1%8f%d0%b2%d0%ba%d0%b8', 'publish', 'closed', 'closed', '', 'group_5b6d794c04843', '', '', '2018-08-10 12:08:40', '2018-08-10 12:08:40', '', 0, 'http://bath/?post_type=acf-field-group&#038;p=161', 0, 'acf-field-group', '', 0),
(162, 1, '2018-08-10 12:08:40', '2018-08-10 12:08:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Номер телефона клиента', 'client_phone_number', 'publish', 'closed', 'closed', '', 'field_5b6d795481cd7', '', '', '2018-08-10 12:08:40', '2018-08-10 12:08:40', '', 161, 'http://bath/?post_type=acf-field&p=162', 0, 'acf-field', '', 0),
(163, 1, '2018-08-10 12:08:40', '2018-08-10 12:08:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Имя клиента', 'client_name', 'publish', 'closed', 'closed', '', 'field_5b6d801081cd8', '', '', '2018-08-10 12:08:40', '2018-08-10 12:08:40', '', 161, 'http://bath/?post_type=acf-field&p=163', 1, 'acf-field', '', 0),
(164, 1, '2018-08-10 12:08:40', '2018-08-10 12:08:40', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Адрес клиента', 'client_address', 'publish', 'closed', 'closed', '', 'field_5b6d802581cd9', '', '', '2018-08-10 12:08:40', '2018-08-10 12:08:40', '', 161, 'http://bath/?post_type=acf-field&p=164', 2, 'acf-field', '', 0),
(165, 1, '2018-08-10 12:08:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-10 12:08:57', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=requests&p=165', 0, 'requests', '', 0),
(210, 1, '2018-08-10 12:40:10', '2018-08-10 12:40:10', 'random', '+7 (456) 464-56-46', '', 'trash', 'closed', 'closed', '', '__trashed-3', '', '', '2018-08-10 12:40:10', '2018-08-10 12:40:10', '', 0, 'http://bath/?post_type=requests&#038;p=210', 0, 'requests', '', 0),
(211, 1, '2018-08-10 12:40:10', '2018-08-10 12:40:10', 'random', '+7 (111) 111-11-11', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2018-08-10 12:40:10', '2018-08-10 12:40:10', '', 0, 'http://bath/?post_type=requests&#038;p=211', 0, 'requests', '', 0),
(212, 1, '2018-08-10 12:40:10', '2018-08-10 12:40:10', 'random', '+7 (111) 111-11-11', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-08-10 12:40:10', '2018-08-10 12:40:10', '', 0, 'http://bath/?post_type=requests&#038;p=212', 0, 'requests', '', 0),
(213, 1, '2018-08-10 12:43:30', '2018-08-10 12:43:30', 'random', '+7 (222) 222-22-22', '', 'trash', 'closed', 'closed', '', '__trashed-9', '', '', '2018-08-10 12:43:30', '2018-08-10 12:43:30', '', 0, 'http://bath/?post_type=requests&#038;p=213', 0, 'requests', '', 0),
(214, 1, '2018-08-10 12:43:30', '2018-08-10 12:43:30', 'random', '+7 (333) 333-33-33', '', 'trash', 'closed', 'closed', '', '__trashed-8', '', '', '2018-08-10 12:43:30', '2018-08-10 12:43:30', '', 0, 'http://bath/?post_type=requests&#038;p=214', 0, 'requests', '', 0),
(215, 1, '2018-08-10 12:43:30', '2018-08-10 12:43:30', 'random', '+7 (444) 444-44-44', '', 'trash', 'closed', 'closed', '', '__trashed-7', '', '', '2018-08-10 12:43:30', '2018-08-10 12:43:30', '', 0, 'http://bath/?post_type=requests&#038;p=215', 0, 'requests', '', 0),
(216, 1, '2018-08-10 12:43:30', '2018-08-10 12:43:30', 'random', '+7 (555) 555-55-55', '', 'trash', 'closed', 'closed', '', '__trashed-6', '', '', '2018-08-10 12:43:30', '2018-08-10 12:43:30', '', 0, 'http://bath/?post_type=requests&#038;p=216', 0, 'requests', '', 0),
(217, 1, '2018-08-10 12:43:30', '2018-08-10 12:43:30', 'random', '+7 (666) 666-66-66', '', 'trash', 'closed', 'closed', '', '__trashed-5', '', '', '2018-08-10 12:43:30', '2018-08-10 12:43:30', '', 0, 'http://bath/?post_type=requests&#038;p=217', 0, 'requests', '', 0),
(218, 1, '2018-08-10 12:43:30', '2018-08-10 12:43:30', 'random', '+7 (777) 777-77-77', '', 'trash', 'closed', 'closed', '', '__trashed-4', '', '', '2018-08-10 12:43:30', '2018-08-10 12:43:30', '', 0, 'http://bath/?post_type=requests&#038;p=218', 0, 'requests', '', 0),
(219, 1, '2018-08-10 12:43:34', '2018-08-10 12:43:34', 'random', '+7 (777) 777-77-77', '', 'trash', 'closed', 'closed', '', '__trashed-10', '', '', '2018-08-10 12:43:34', '2018-08-10 12:43:34', '', 0, 'http://bath/?post_type=requests&#038;p=219', 0, 'requests', '', 0),
(220, 1, '2018-08-10 12:44:38', '2018-08-10 12:44:38', 'random', '+7 (111) 111-11-11', '', 'trash', 'closed', 'closed', '', '__trashed-16', '', '', '2018-08-10 12:44:38', '2018-08-10 12:44:38', '', 0, 'http://bath/?post_type=requests&#038;p=220', 0, 'requests', '', 0),
(221, 1, '2018-08-10 12:44:38', '2018-08-10 12:44:38', 'random', '+7 (222) 222-22-22', '', 'trash', 'closed', 'closed', '', '__trashed-15', '', '', '2018-08-10 12:44:38', '2018-08-10 12:44:38', '', 0, 'http://bath/?post_type=requests&#038;p=221', 0, 'requests', '', 0),
(222, 1, '2018-08-10 12:44:38', '2018-08-10 12:44:38', 'random', '+7 (333) 333-33-33', '', 'trash', 'closed', 'closed', '', '__trashed-14', '', '', '2018-08-10 12:44:38', '2018-08-10 12:44:38', '', 0, 'http://bath/?post_type=requests&#038;p=222', 0, 'requests', '', 0),
(223, 1, '2018-08-10 12:44:38', '2018-08-10 12:44:38', 'random', '+7 (444) 444-44-44', '', 'trash', 'closed', 'closed', '', '__trashed-13', '', '', '2018-08-10 12:44:38', '2018-08-10 12:44:38', '', 0, 'http://bath/?post_type=requests&#038;p=223', 0, 'requests', '', 0),
(224, 1, '2018-08-10 12:44:38', '2018-08-10 12:44:38', 'random', '+7 (555) 555-55-55', '', 'trash', 'closed', 'closed', '', '__trashed-12', '', '', '2018-08-10 12:44:38', '2018-08-10 12:44:38', '', 0, 'http://bath/?post_type=requests&#038;p=224', 0, 'requests', '', 0),
(225, 1, '2018-08-10 12:44:38', '2018-08-10 12:44:38', 'random', '+7 (666) 666-66-66', '', 'trash', 'closed', 'closed', '', '__trashed-11', '', '', '2018-08-10 12:44:38', '2018-08-10 12:44:38', '', 0, 'http://bath/?post_type=requests&#038;p=225', 0, 'requests', '', 0),
(226, 1, '2018-08-10 12:52:12', '0000-00-00 00:00:00', 'random', '+7 (666) 666-66-66', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-10 12:52:12', '0000-00-00 00:00:00', '', 0, 'http://bath/?post_type=requests&p=226', 0, 'requests', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Дешевле, чем купить новую ванну', '%d0%b4%d0%b5%d1%88%d0%b5%d0%b2%d0%bb%d0%b5-%d1%87%d0%b5%d0%bc-%d0%ba%d1%83%d0%bf%d0%b8%d1%82%d1%8c-%d0%bd%d0%be%d0%b2%d1%83%d1%8e-%d0%b2%d0%b0%d0%bd%d0%bd%d1%83', 0),
(3, 'Проще и быстрее, чем покупка новой ванны', '%d0%bf%d1%80%d0%be%d1%89%d0%b5-%d0%b8-%d0%b1%d1%8b%d1%81%d1%82%d1%80%d0%b5%d0%b5-%d1%87%d0%b5%d0%bc-%d0%bf%d0%be%d0%ba%d1%83%d0%bf%d0%ba%d0%b0-%d0%bd%d0%be%d0%b2%d0%be%d0%b9-%d0%b2%d0%b0%d0%bd%d0%bd', 0),
(4, 'Старая чугунная ванна надежнее, чем новая', '%d1%81%d1%82%d0%b0%d1%80%d0%b0%d1%8f-%d1%87%d1%83%d0%b3%d1%83%d0%bd%d0%bd%d0%b0%d1%8f-%d0%b2%d0%b0%d0%bd%d0%bd%d0%b0-%d0%bd%d0%b0%d0%b4%d0%b5%d0%b6%d0%bd%d0%b5%d0%b5-%d1%87%d0%b5%d0%bc-%d0%bd%d0%be', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(9, 1, 0),
(79, 2, 0),
(83, 3, 0),
(84, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'advantage_type', '', 0, 1),
(3, 3, 'advantage_type', '', 0, 1),
(4, 4, 'advantage_type', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"4ec55e43b2b954c354f6b7cfeb7dcefcd2075c54fb652fcfdb209bdee9e48e0a\";a:4:{s:10:\"expiration\";i:1534328066;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:109:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36\";s:5:\"login\";i:1533118466;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '6'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'mfold=o&editor=tinymce&libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1533736168'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(24, 1, 'wp_media_library_mode', 'grid'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(27, 1, 'closedpostboxes_phone_number', 'a:0:{}'),
(28, 1, 'metaboxhidden_phone_number', 'a:3:{i:0;s:23:\"acf-group_5b695a6c75db0\";i:1;s:23:\"acf-group_5b6973d8211e1\";i:2;s:7:\"slugdiv\";}'),
(29, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(30, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(31, 1, 'closedpostboxes_main_screen', 'a:0:{}'),
(32, 1, 'metaboxhidden_main_screen', 'a:2:{i:0;s:23:\"acf-group_5b682f6c56fbf\";i:1;s:7:\"slugdiv\";}'),
(33, 1, 'closedpostboxes_prices', 'a:0:{}'),
(34, 1, 'metaboxhidden_prices', 'a:3:{i:0;s:23:\"acf-group_5b695a6c75db0\";i:1;s:23:\"acf-group_5b6973d8211e1\";i:2;s:7:\"slugdiv\";}'),
(35, 1, 'closedpostboxes_requests', 'a:0:{}'),
(36, 1, 'metaboxhidden_requests', 'a:8:{i:0;s:23:\"acf-group_5b6d5486a66a7\";i:1;s:23:\"acf-group_5b695a6c75db0\";i:2;s:23:\"acf-group_5b6c3eb8de048\";i:3;s:23:\"acf-group_5b6c36c47ef6d\";i:4;s:23:\"acf-group_5b6d4a2f944c2\";i:5;s:23:\"acf-group_5b6973d8211e1\";i:6;s:23:\"acf-group_5b6aec79bf355\";i:7;s:7:\"slugdiv\";}'),
(37, 1, 'meta-box-order_requests', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:175:\"acf-group_5b6d5486a66a7,acf-group_5b695a6c75db0,acf-group_5b6c3eb8de048,acf-group_5b6c36c47ef6d,acf-group_5b6d4a2f944c2,acf-group_5b6973d8211e1,acf-group_5b6aec79bf355,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(38, 1, 'screen_layout_requests', '2'),
(39, 1, 'closedpostboxes_reviews', 'a:0:{}'),
(40, 1, 'metaboxhidden_reviews', 'a:8:{i:0;s:23:\"acf-group_5b6d5486a66a7\";i:1;s:23:\"acf-group_5b695a6c75db0\";i:2;s:23:\"acf-group_5b6d794c04843\";i:3;s:23:\"acf-group_5b6c36c47ef6d\";i:4;s:23:\"acf-group_5b6d4a2f944c2\";i:5;s:23:\"acf-group_5b6973d8211e1\";i:6;s:23:\"acf-group_5b6aec79bf355\";i:7;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bgi4vLgpvmR09RtQKZnx2HsNG9uirO1', 'admin', 'nlapkovsky@gmail.com', '', '2018-08-01 10:05:21', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
