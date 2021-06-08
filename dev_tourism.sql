-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2021 at 03:15 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'ธรรมชาติ', 'ธรรมชาติ', '2021-04-28 18:12:43', '2021-04-28 18:12:43'),
(4, 'วัฒนธรรม', 'วัฒนธรรม', '2021-04-28 18:12:58', '2021-04-28 18:12:58'),
(5, 'ประวัติศาสตร์', 'ประวัติศาสตร์', '2021-04-28 18:13:11', '2021-04-28 18:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":[\"required\"]}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 2),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(60, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(61, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(62, 8, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 3),
(63, 8, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(64, 8, 'location', 'text', 'Location', 0, 0, 1, 1, 1, 1, '{}', 5),
(65, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(66, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(67, 8, 'category_id', 'text', 'Category Id', 0, 0, 0, 1, 1, 0, '{}', 10),
(68, 8, 'tourist_attraction_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(69, 8, 'province_id', 'text', 'Province Id', 0, 0, 0, 1, 1, 0, '{}', 12),
(70, 8, 'tourist_attraction_belongsto_province_relationship', 'relationship', 'provinces', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Province\",\"table\":\"provinces\",\"type\":\"belongsTo\",\"column\":\"province_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(72, 7, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"1920\",\"height\":\"260\"}}],\"validation\":{\"rule\":[\"required\"]}}', 4),
(73, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 3),
(74, 7, 'order', 'text', 'Order', 0, 0, 0, 1, 1, 1, '{}', 7),
(75, 8, 'gallery_images', 'multiple_images', 'Gallery Images', 0, 0, 1, 1, 1, 1, '{}', 6),
(76, 8, 'panorama_image', 'image', 'Panorama Image', 0, 0, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-04-27 20:27:35', '2021-04-28 18:21:07'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(7, 'provinces', 'provinces', 'Province', 'Provinces', 'voyager-compass', 'App\\Province', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2021-04-27 20:33:41', '2021-04-28 21:28:41'),
(8, 'tourist_attractions', 'tourist-attractions', 'Tourist Attraction', 'Tourist Attractions', 'voyager-location', 'App\\TouristAttraction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-27 20:43:43', '2021-06-08 07:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-04-27 20:27:34', '2021-04-27 20:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-04-27 20:27:34', '2021-04-27 20:27:34', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2021-04-27 20:27:34', '2021-04-27 21:34:36', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2021-04-27 20:27:34', '2021-04-27 21:34:36', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2021-04-27 20:27:34', '2021-04-27 21:34:36', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2021-04-27 20:27:34', '2021-04-27 21:34:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2021-04-27 20:27:34', '2021-04-27 21:34:38', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 17, 2, '2021-04-27 20:27:35', '2021-04-27 21:34:38', 'voyager.categories.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-04-27 20:27:35', '2021-04-27 20:34:39', 'voyager.hooks', NULL),
(15, 1, 'Provinces', '', '_self', 'voyager-compass', NULL, NULL, 2, '2021-04-27 20:33:41', '2021-04-27 20:34:39', 'voyager.provinces.index', NULL),
(16, 1, 'Tourist Attractions', '', '_self', 'voyager-location', '#000000', 17, 1, '2021-04-27 20:43:43', '2021-04-27 21:34:36', 'voyager.tourist-attractions.index', 'null'),
(17, 1, 'Destination', '#', '_self', 'voyager-tree', '#000000', NULL, 3, '2021-04-27 21:34:28', '2021-04-27 21:34:33', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-04-27 20:27:35', '2021-04-27 20:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(2, 'browse_bread', NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(3, 'browse_database', NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(4, 'browse_media', NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(5, 'browse_compass', NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(6, 'browse_menus', 'menus', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(7, 'read_menus', 'menus', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(8, 'edit_menus', 'menus', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(9, 'add_menus', 'menus', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(10, 'delete_menus', 'menus', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(11, 'browse_roles', 'roles', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(12, 'read_roles', 'roles', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(13, 'edit_roles', 'roles', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(14, 'add_roles', 'roles', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(15, 'delete_roles', 'roles', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(16, 'browse_users', 'users', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(17, 'read_users', 'users', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(18, 'edit_users', 'users', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(19, 'add_users', 'users', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(20, 'delete_users', 'users', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(21, 'browse_settings', 'settings', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(22, 'read_settings', 'settings', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(23, 'edit_settings', 'settings', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(24, 'add_settings', 'settings', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(25, 'delete_settings', 'settings', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(26, 'browse_categories', 'categories', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(27, 'read_categories', 'categories', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(28, 'edit_categories', 'categories', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(29, 'add_categories', 'categories', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(30, 'delete_categories', 'categories', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(31, 'browse_posts', 'posts', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(32, 'read_posts', 'posts', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(33, 'edit_posts', 'posts', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(34, 'add_posts', 'posts', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(35, 'delete_posts', 'posts', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(36, 'browse_pages', 'pages', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(37, 'read_pages', 'pages', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(38, 'edit_pages', 'pages', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(39, 'add_pages', 'pages', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(40, 'delete_pages', 'pages', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(41, 'browse_hooks', NULL, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(42, 'browse_provinces', 'provinces', '2021-04-27 20:33:41', '2021-04-27 20:33:41'),
(43, 'read_provinces', 'provinces', '2021-04-27 20:33:41', '2021-04-27 20:33:41'),
(44, 'edit_provinces', 'provinces', '2021-04-27 20:33:41', '2021-04-27 20:33:41'),
(45, 'add_provinces', 'provinces', '2021-04-27 20:33:41', '2021-04-27 20:33:41'),
(46, 'delete_provinces', 'provinces', '2021-04-27 20:33:41', '2021-04-27 20:33:41'),
(47, 'browse_tourist_attractions', 'tourist_attractions', '2021-04-27 20:43:43', '2021-04-27 20:43:43'),
(48, 'read_tourist_attractions', 'tourist_attractions', '2021-04-27 20:43:43', '2021-04-27 20:43:43'),
(49, 'edit_tourist_attractions', 'tourist_attractions', '2021-04-27 20:43:43', '2021-04-27 20:43:43'),
(50, 'add_tourist_attractions', 'tourist_attractions', '2021-04-27 20:43:43', '2021-04-27 20:43:43'),
(51, 'delete_tourist_attractions', 'tourist_attractions', '2021-04-27 20:43:43', '2021-04-27 20:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2021-04-27 20:27:35', '2021-04-27 20:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`, `cover_image`, `description`, `order`) VALUES
(1, 'ยะลา', '2021-04-27 20:34:07', '2021-04-28 17:54:35', 'provinces\\April2021\\7QtjWWpb9iRVT0Zbpc4F.jpg', 'ใต้สุดสยาม เมืองงามชายแดน', 1),
(2, 'ปัตตานี', '2021-04-27 20:34:15', '2021-04-28 18:22:39', 'provinces\\April2021\\6aeHzLkbgV6GdfT0lqqv.jpg', 'เมืองงามสามวัฒนธรรม ศูนย์ฮาลาลเลิศล้ำ ชนน้อมนำศรัทธา ถิ่นธรรมชาติงามตา ปัตตานีสันติสุขแดนใต้', 2),
(3, 'นราธิวาส', '2021-04-27 20:34:23', '2021-04-28 18:22:39', 'provinces\\April2021\\9ZVmXOArvPcxUvYu3EKM.jpg', 'ทักษิณราชตำหนัก ชนรักศาสนา นราทัศน์เพลินตา ปาโจตรึงใจ แหล่งใหญ่แร่ทอง ลองกองหอมหวาน', 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(2, 'user', 'Normal User', '2021-04-27 20:27:34', '2021-04-27 20:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Tourism', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Tourism', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_attractions`
--

CREATE TABLE `tourist_attractions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `gallery_images` json DEFAULT NULL,
  `panorama_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tourist_attractions`
--

INSERT INTO `tourist_attractions` (`id`, `name`, `body`, `cover_image`, `location`, `created_at`, `updated_at`, `category_id`, `province_id`, `gallery_images`, `panorama_image`) VALUES
(82, 'Prof. Bernard Dare', '<p>Perspiciatis in sit blanditiis vero. Quibusdam architecto ut ut rerum consequatur reprehenderit. Voluptatibus est ipsum consectetur quo qui quo accusamus.</p>', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4477.229297572912!2d99.72462848364208!3d7.00205088925188!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x513c232fc856ae4d!2z4LmC4Lij4LiH4LmA4Lij4Li14Lii4LiZ4LiX4LmI4Liy4Lio4Li04Lil4Liy4Lia4Liz4Lij4Li44LiH4Lij4Liy4Lip4LiO4Lij4LmM!5e0!3m2!1sth!2sth!4v1620534302607!5m2!1sth!2sth\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '2021-04-29 13:44:31', '2021-06-08 07:39:53', 5, 2, '[\"tourist-attractions\\\\June2021\\\\60vD3dbVNuROrMdpFmhk.jpg\", \"tourist-attractions\\\\June2021\\\\0TnSDUmXLGEa1o9BlKih.jpg\", \"tourist-attractions\\\\June2021\\\\bry6Qt3wHjznnjvwK2bs.jpg\", \"tourist-attractions\\\\June2021\\\\O71grF14YJ1ZJUaKADJN.jpg\"]', 'tourist-attractions\\June2021\\bkcMszWdPy7AsH9Fc1Jw.jpg'),
(83, 'Laurine Greenfelder DVM', 'Possimus voluptatem nostrum porro. Error ea sit praesentium ad inventore. Possimus enim exercitationem eligendi enim.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.batz.com/', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 3, NULL, NULL),
(84, 'Mr. Conor Heaney', 'Laboriosam ut quidem deleniti voluptatem repellat nihil minus. Ipsa eos sapiente molestiae officia nihil provident nemo. Sapiente at inventore officiis qui optio nihil minus.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://altenwerth.info/est-architecto-animi-quo-quidem', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 4, 2, NULL, NULL),
(85, 'Gwen Green', 'Sequi aliquam quidem recusandae ullam nostrum consequuntur porro. Ut qui delectus libero eaque adipisci est distinctio. Saepe voluptates voluptate omnis sunt sit libero.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.nolan.net/sit-quis-consequatur-explicabo-nemo.html', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 3, NULL, NULL),
(86, 'Ms. Lela Breitenberg', 'Aut impedit amet veritatis in aut aperiam. Commodi minus recusandae aliquam ut iure natus sed illo.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://schroeder.biz/laborum-nostrum-ea-iusto-magni-incidunt', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 3, NULL, NULL),
(87, 'Madge Langosh', 'Qui a molestiae necessitatibus assumenda enim culpa labore suscipit. Error sequi nihil neque dolorem qui. Laborum quisquam accusamus quis laborum. Id saepe ut vitae et dolorum dolorum enim.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://deckow.com/vero-architecto-voluptatum-nihil-totam-ipsa-optio-ducimus', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 4, 2, NULL, NULL),
(88, 'Edward Powlowski', 'Vero ut eveniet tenetur incidunt deserunt natus et. Quo quod minima hic consequuntur ea ut.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.orn.com/est-quae-quia-voluptatibus-et-est-sapiente.html', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 4, 1, NULL, NULL),
(89, 'Jerel McKenzie', 'Est vel beatae ut expedita culpa et. Est ullam veniam consequatur possimus minus quia. Qui occaecati odit quo hic fugiat. Cumque voluptatibus et eveniet illo.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.waelchi.com/magni-quam-adipisci-in-non-aut.html', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 3, NULL, NULL),
(90, 'Dasia Labadie Jr.', 'Corporis officiis voluptatem dicta eveniet rem. Doloremque blanditiis dicta quia impedit ipsam. Iure porro libero maxime possimus quaerat. Sunt impedit quia error similique est placeat labore rerum.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.okeefe.com/', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 1, NULL, NULL),
(91, 'Florida Kemmer', 'Labore exercitationem soluta est magnam et. Sed rem vitae quo necessitatibus sed et. Dolores ex natus sed odio.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'https://mcdermott.org/quo-voluptas-doloribus-aliquid-vel.html', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 4, 3, NULL, NULL),
(92, 'Prof. Allen Kohler', 'Numquam sint adipisci facere eum. Architecto illum molestiae eos incidunt. Sapiente quia quis officiis et. Et expedita aut minus.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.jacobson.com/qui-libero-et-voluptatem-aspernatur-tenetur-praesentium-mollitia.html', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 3, 1, NULL, NULL),
(93, 'Prof. Pauline Kassulke', 'Quibusdam molestiae iste eos iste. Quas in ipsa rem ut nobis quisquam voluptatum. Et nobis et ullam atque ut consequatur.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://runte.com/in-aut-vel-ad-et-rerum-odio', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 3, NULL, NULL),
(94, 'Bridget Little', 'Accusamus veniam ullam perferendis eius minus maxime. Ratione nostrum est laudantium quia rerum necessitatibus.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'https://marvin.com/ducimus-enim-magnam-a.html', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 3, 2, NULL, NULL),
(95, 'Jany D\'Amore', 'Placeat aliquam sit provident repudiandae impedit et. Maiores non autem deserunt corporis. Ut temporibus maiores eos alias pariatur.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://kozey.com/', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 2, NULL, NULL),
(96, 'Duncan White', 'Velit numquam et doloremque. Repudiandae incidunt aut sed rerum. Maiores et rerum ea incidunt id est enim. Suscipit totam nisi voluptatem perferendis.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://lowe.info/nam-eos-maiores-odio-beatae-qui.html', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 4, 3, NULL, NULL),
(97, 'Tressie Cormier MD', 'Dignissimos laudantium iure enim nihil ut. Et eos ipsa et sapiente at. Aliquam ad consectetur sit ullam in dicta.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.stoltenberg.com/sequi-ut-enim-minima-tenetur', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 4, 3, NULL, NULL),
(98, 'Shaniya Schultz', 'Vitae veritatis ut velit eum quia. Ea voluptas qui sit rerum nisi repellendus. Id esse qui dolores impedit numquam.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://willms.info/ducimus-repellendus-et-et-itaque-maiores-ullam', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 1, NULL, NULL),
(99, 'Dr. Maya Pfeffer MD', 'Voluptates odit consequatur ab aliquid voluptas. Tempore autem consequatur tenetur sint ullam. Qui dolores nobis et unde eius fugiat.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://www.bauch.com/corrupti-quo-sed-aut-itaque-natus-iure-et', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 3, 2, NULL, NULL),
(100, 'Emely Reinger', 'Sapiente quo ipsa quia quia porro veniam amet. Nam officiis modi repellendus nostrum doloribus est molestiae.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://jerde.com/laborum-porro-unde-sed-porro-non-nisi', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 3, NULL, NULL),
(101, 'Dan Konopelski', 'Maiores molestias repellendus non beatae quam. Ipsa est corrupti quia ut. Est reprehenderit voluptatum totam in et fugiat.', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', 'http://metz.com/', '2021-04-29 13:44:31', '2021-04-29 13:44:31', 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-04-27 20:27:35', '2021-04-27 20:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$SJ0xN3WmqAdUVCKfhAm7Pu58AE8cT2j9jPQ7/dP3hr/pwx7Y06T0y', 'Y67MoOhKmF925cLbe4eV1vNcuDkrI2BN4N4Ujl5Z2Oo8oRzQI9V4a8H11sNm', NULL, '2021-04-27 20:27:35', '2021-04-27 20:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tourist_attractions`
--
ALTER TABLE `tourist_attractions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tourist_attractions`
--
ALTER TABLE `tourist_attractions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
