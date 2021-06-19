-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2021 at 12:31 PM
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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `score` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `is_approved` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tourist_attraction_id` int(11) DEFAULT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `score`, `comment`, `is_approved`, `user_id`, `created_at`, `updated_at`, `tourist_attraction_id`, `hostel_id`, `review_id`) VALUES
(1, NULL, 'test', NULL, NULL, '2021-06-13 07:39:17', '2021-06-13 07:39:17', NULL, NULL, NULL),
(2, 0, 'test', 0, 1, '2021-06-13 07:41:44', '2021-06-13 07:41:44', NULL, NULL, NULL),
(3, 5, 'ssssss', 0, 1, '2021-06-13 07:42:27', '2021-06-13 07:42:27', NULL, NULL, NULL),
(9, 5, 'test', 0, 1, '2021-06-14 06:35:23', '2021-06-14 06:35:23', 83, NULL, NULL),
(10, 2, 'test2', 0, 1, '2021-06-14 06:35:37', '2021-06-14 06:35:37', 83, NULL, NULL),
(15, 5, 'ssss', 0, 1, '2021-06-14 20:18:45', '2021-06-14 20:18:45', NULL, 3, NULL),
(16, 5, 'แนะนำ', 0, 1, '2021-06-14 20:19:28', '2021-06-14 20:19:28', NULL, 1, NULL),
(19, 0, 'testset', 0, 1, '2021-06-15 06:54:45', '2021-06-15 06:54:45', 82, NULL, NULL),
(20, 4, 'test', 0, 1, '2021-06-16 04:56:00', '2021-06-16 04:56:00', NULL, NULL, 2),
(21, 1, 'yeser', 0, 1, '2021-06-16 04:57:40', '2021-06-16 04:57:40', NULL, NULL, 3),
(22, 4, 'auhter', 0, 1, '2021-06-16 04:58:56', '2021-06-16 04:58:56', NULL, NULL, 3),
(24, 5, 'testestes', 0, 1, '2021-06-16 05:34:14', '2021-06-16 05:34:14', 82, NULL, NULL),
(25, 0, 'ssssss', 0, 1, '2021-06-16 05:34:21', '2021-06-16 05:34:21', 82, NULL, NULL),
(26, 0, 'dsdsddsdsd', 0, 1, '2021-06-16 05:34:25', '2021-06-16 05:34:25', 82, NULL, NULL),
(27, 0, 'ะำหะำหะห', 0, 12, '2021-06-18 07:01:09', '2021-06-18 07:01:09', NULL, NULL, 12),
(28, 4, 'ฟฟฟฟฟฟฟฟฟฟฟฟฟฟฟฟฟฟ', 0, 12, '2021-06-18 07:01:18', '2021-06-18 07:01:18', NULL, NULL, 12);

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
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
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
(61, 8, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 2),
(62, 8, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 3),
(63, 8, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"edit\":{\"rule\":\"nullable\"},\"add\":{\"rule\":\"required\"}}}', 4),
(64, 8, 'location', 'text', 'Location', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 5),
(65, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(66, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(67, 8, 'category_id', 'text', 'Category Id', 0, 0, 0, 1, 1, 0, '{\"validation\":{\"rule\":[\"required\"]}}', 10),
(68, 8, 'tourist_attraction_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(69, 8, 'province_id', 'text', 'Province Id', 0, 0, 0, 1, 1, 0, '{\"validation\":{\"rule\":[\"required\"]}}', 12),
(70, 8, 'tourist_attraction_belongsto_province_relationship', 'relationship', 'provinces', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Province\",\"table\":\"provinces\",\"type\":\"belongsTo\",\"column\":\"province_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(72, 7, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"1920\",\"height\":\"260\"}}],\"validation\":{\"rule\":[\"required\"]}}', 4),
(73, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 3),
(74, 7, 'order', 'text', 'Order', 0, 0, 0, 1, 1, 1, '{}', 7),
(75, 8, 'gallery_images', 'multiple_images', 'Gallery Images', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"edit\":{\"rule\":\"nullable\"},\"add\":{\"rule\":\"required\"}}}', 6),
(76, 8, 'panorama_image', 'image', 'Panorama Image', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"edit\":{\"rule\":\"nullable\"},\"add\":{\"rule\":\"required\"}}}', 7),
(77, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 2),
(79, 9, 'contact', 'text_area', 'Contact', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 3),
(80, 9, 'info', 'rich_text_box', 'Info', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 4),
(81, 9, 'gallery_images', 'multiple_images', 'Gallery Images', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"edit\":{\"rule\":\"nullable\"},\"add\":{\"rule\":\"required\"}}}', 6),
(82, 9, 'province_id', 'text', 'Province Id', 0, 0, 0, 1, 1, 1, '{}', 7),
(83, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(84, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(85, 9, 'hostel_belongsto_province_relationship', 'relationship', 'provinces', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]},\"model\":\"App\\\\Province\",\"table\":\"provinces\",\"type\":\"belongsTo\",\"column\":\"province_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(86, 9, 'cover_image', 'image', 'Cover Image', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"edit\":{\"rule\":\"nullable\"},\"add\":{\"rule\":\"required\"}}}', 5),
(87, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 10, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 2),
(89, 10, 'budget', 'number', 'Budget', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 3),
(90, 10, 'duration', 'number', 'Duration (Date)', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 4),
(91, 10, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 5),
(92, 10, 'cover_image', 'image', 'Cover Image', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 6),
(93, 10, 'province_id', 'text', 'Province Id', 0, 0, 0, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 7),
(94, 10, 'category_id', 'text', 'Category Id', 0, 0, 0, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 8),
(95, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 1, 0, 1, '{}', 9),
(96, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(97, 10, 'review_hasone_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(98, 10, 'review_belongsto_province_relationship', 'relationship', 'provinces', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Province\",\"table\":\"provinces\",\"type\":\"belongsTo\",\"column\":\"province_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(99, 10, 'user_id', 'hidden', 'User Id', 0, 0, 0, 1, 1, 1, '{}', 11),
(100, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 6);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-04-27 20:27:34', '2021-06-18 18:27:16'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-04-27 20:27:34', '2021-04-27 20:27:34'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-04-27 20:27:35', '2021-04-28 18:21:07'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-04-27 20:27:35', '2021-04-27 20:27:35'),
(7, 'provinces', 'provinces', 'Province', 'Provinces', 'voyager-compass', 'App\\Province', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2021-04-27 20:33:41', '2021-04-28 21:28:41'),
(8, 'tourist_attractions', 'tourist-attractions', 'Tourist Attraction', 'Tourist Attractions', 'voyager-location', 'App\\TouristAttraction', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-27 20:43:43', '2021-06-16 08:18:59'),
(9, 'hostels', 'hostels', 'Hostel', 'Hostels', 'voyager-company', 'App\\Hostel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-14 18:44:11', '2021-06-15 06:48:17'),
(10, 'reviews', 'reviews', 'Review', 'Reviews', 'voyager-smile', 'App\\Review', NULL, 'App\\Http\\Controllers\\Voyager\\ReviewController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-06-15 06:43:32', '2021-06-15 08:02:29');

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
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci,
  `info` text COLLATE utf8mb4_unicode_ci,
  `gallery_images` json DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `name`, `contact`, `info`, `gallery_images`, `province_id`, `created_at`, `updated_at`, `cover_image`) VALUES
(1, 'Kimberley Mccall', 'Quo eveniet deserun', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in tempor sem. In consequat nibh molestie, sodales purus vel, mattis diam. Aliquam mauris nibh, volutpat sit amet hendrerit hendrerit, suscipit ut sem. Donec sed dapibus neque, ac tempor justo. Pellentesque ut felis lectus. Maecenas eu suscipit lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Sed ac dignissim risus. Maecenas elementum gravida tortor, luctus feugiat ex posuere vel. Phasellus erat tortor, dictum sed velit id, interdum sollicitudin orci. Cras sed suscipit nisl, vitae facilisis metus. Phasellus vestibulum ex sit amet tellus sodales, a maximus risus bibendum. Morbi vel turpis quis libero efficitur aliquet non in ex. Aenean placerat cursus lorem, nec tincidunt ligula efficitur vitae. Praesent gravida mattis aliquet. Phasellus quis interdum nisi. In augue turpis, placerat non arcu et, semper ornare urna. Etiam tortor nibh, vehicula sed turpis quis, interdum tincidunt leo. Aliquam eu sollicitudin augue. Duis volutpat imperdiet sem eu dapibus. Curabitur eleifend vehicula ultricies. Praesent finibus lacus sed scelerisque tincidunt. Donec non mauris elit.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Phasellus vel elementum metus, ut pellentesque neque. Phasellus aliquam arcu id lectus convallis, eu ultricies erat fermentum. Vestibulum eget felis tortor. Fusce varius, magna non iaculis tempus, lacus est vehicula velit, non consequat magna orci non libero. Curabitur a elit et tortor facilisis dapibus ac et orci. Morbi id urna ac lorem dictum sollicitudin eu dapibus ipsum. Praesent vitae nisi eget eros ornare sagittis. Pellentesque nec sem ac magna tempor ultrices. Sed egestas blandit est, eget pretium eros. Donec hendrerit ligula sed eros faucibus varius. Aenean libero nunc, efficitur non nisl vitae, volutpat tristique nibh. Donec eget dignissim leo. Suspendisse vulputate purus cursus auctor tincidunt. Maecenas id nisl at turpis tincidunt dapibus a sed urna.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Nullam malesuada sapien et felis finibus condimentum. Curabitur quis pulvinar velit, tincidunt aliquet turpis. In eget consectetur tellus, ut efficitur erat. Nullam at commodo odio. Proin vehicula, ligula et consectetur maximus, tellus lectus volutpat justo, nec ornare urna nibh sit amet ipsum. Sed cursus, metus id porttitor semper, ipsum urna sollicitudin mauris, nec rhoncus libero purus non metus. Pellentesque purus lorem, ornare vel condimentum ac, aliquet et lorem. Suspendisse tortor lorem, egestas a aliquam vulputate, tempus vel purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam convallis orci pulvinar, mattis enim quis, fringilla sem. Integer accumsan aliquet feugiat. Suspendisse erat risus, luctus eu consequat eget, cursus sit amet sapien. Nam mattis ultrices placerat. Aenean iaculis dolor vel purus sagittis rutrum. Integer nec sollicitudin velit, non efficitur tortor. Integer quis justo lorem. Maecenas magna augue, tempor vel velit ac, dapibus convallis massa. Pellentesque libero risus, rutrum et convallis ac, consequat ut odio.</p>', '[\"hostels\\\\June2021\\\\M16hHfZmct1s2M8Ze39b.jpg\"]', 1, '2021-06-14 18:57:00', '2021-06-14 19:35:23', 'hostels\\June2021\\aWKgdblpYIRc3lDngTsm.jpg'),
(3, 'Aphrodite Clay', 'Nostrum saepe ullamc', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in tempor sem. In consequat nibh molestie, sodales purus vel, mattis diam. Aliquam mauris nibh, volutpat sit amet hendrerit hendrerit, suscipit ut sem. Donec sed dapibus neque, ac tempor justo. Pellentesque ut felis lectus. Maecenas eu suscipit lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Sed ac dignissim risus. Maecenas elementum gravida tortor, luctus feugiat ex posuere vel. Phasellus erat tortor, dictum sed velit id, interdum sollicitudin orci. Cras sed suscipit nisl, vitae facilisis metus. Phasellus vestibulum ex sit amet tellus sodales, a maximus risus bibendum. Morbi vel turpis quis libero efficitur aliquet non in ex. Aenean placerat cursus lorem, nec tincidunt ligula efficitur vitae. Praesent gravida mattis aliquet. Phasellus quis interdum nisi. In augue turpis, placerat non arcu et, semper ornare urna. Etiam tortor nibh, vehicula sed turpis quis, interdum tincidunt leo. Aliquam eu sollicitudin augue. Duis volutpat imperdiet sem eu dapibus. Curabitur eleifend vehicula ultricies. Praesent finibus lacus sed scelerisque tincidunt. Donec non mauris elit.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Phasellus vel elementum metus, ut pellentesque neque. Phasellus aliquam arcu id lectus convallis, eu ultricies erat fermentum. Vestibulum eget felis tortor. Fusce varius, magna non iaculis tempus, lacus est vehicula velit, non consequat magna orci non libero. Curabitur a elit et tortor facilisis dapibus ac et orci. Morbi id urna ac lorem dictum sollicitudin eu dapibus ipsum. Praesent vitae nisi eget eros ornare sagittis. Pellentesque nec sem ac magna tempor ultrices. Sed egestas blandit est, eget pretium eros. Donec hendrerit ligula sed eros faucibus varius. Aenean libero nunc, efficitur non nisl vitae, volutpat tristique nibh. Donec eget dignissim leo. Suspendisse vulputate purus cursus auctor tincidunt. Maecenas id nisl at turpis tincidunt dapibus a sed urna.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Nullam malesuada sapien et felis finibus condimentum. Curabitur quis pulvinar velit, tincidunt aliquet turpis. In eget consectetur tellus, ut efficitur erat. Nullam at commodo odio. Proin vehicula, ligula et consectetur maximus, tellus lectus volutpat justo, nec ornare urna nibh sit amet ipsum. Sed cursus, metus id porttitor semper, ipsum urna sollicitudin mauris, nec rhoncus libero purus non metus. Pellentesque purus lorem, ornare vel condimentum ac, aliquet et lorem. Suspendisse tortor lorem, egestas a aliquam vulputate, tempus vel purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: #000000; font-family: \'Open Sans\', Arial, sans-serif;\">Aliquam convallis orci pulvinar, mattis enim quis, fringilla sem. Integer accumsan aliquet feugiat. Suspendisse erat risus, luctus eu consequat eget, cursus sit amet sapien. Nam mattis ultrices placerat. Aenean iaculis dolor vel purus sagittis rutrum. Integer nec sollicitudin velit, non efficitur tortor. Integer quis justo lorem. Maecenas magna augue, tempor vel velit ac, dapibus convallis massa. Pellentesque libero risus, rutrum et convallis ac, consequat ut odio.</p>', '[\"hostels\\\\June2021\\\\buxfU9X8HUpZGLbqcJRe.jpg\"]', 3, '2021-06-14 19:10:00', '2021-06-14 19:35:04', 'hostels\\June2021\\cF1tGCluPWNMt6c98afK.jpg');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2021-04-27 20:27:34', '2021-06-15 06:43:42', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2021-04-27 20:27:34', '2021-06-15 06:43:42', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2021-04-27 20:27:34', '2021-06-15 06:43:42', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-04-27 20:27:34', '2021-06-15 06:43:42', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-04-27 20:27:34', '2021-04-27 20:34:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2021-04-27 20:27:34', '2021-06-15 06:43:42', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 17, 2, '2021-04-27 20:27:35', '2021-04-27 21:34:38', 'voyager.categories.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-04-27 20:27:35', '2021-04-27 20:34:39', 'voyager.hooks', NULL),
(15, 1, 'Provinces', '', '_self', 'voyager-compass', NULL, NULL, 2, '2021-04-27 20:33:41', '2021-04-27 20:34:39', 'voyager.provinces.index', NULL),
(16, 1, 'Tourist Attractions', '', '_self', 'voyager-location', '#000000', 17, 1, '2021-04-27 20:43:43', '2021-04-27 21:34:36', 'voyager.tourist-attractions.index', 'null'),
(17, 1, 'Destination', '', '_self', 'voyager-tree', '#000000', NULL, 3, '2021-04-27 21:34:28', '2021-06-14 23:01:02', NULL, ''),
(18, 1, 'Hostels', '', '_self', 'voyager-company', '#000000', NULL, 4, '2021-06-14 18:44:12', '2021-06-14 18:46:00', 'voyager.hostels.index', 'null'),
(19, 1, 'Reviews', '', '_self', 'voyager-smile', NULL, NULL, 5, '2021-06-15 06:43:32', '2021-06-15 06:43:42', 'voyager.reviews.index', NULL);

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
(51, 'delete_tourist_attractions', 'tourist_attractions', '2021-04-27 20:43:43', '2021-04-27 20:43:43'),
(52, 'browse_hostels', 'hostels', '2021-06-14 18:44:11', '2021-06-14 18:44:11'),
(53, 'read_hostels', 'hostels', '2021-06-14 18:44:11', '2021-06-14 18:44:11'),
(54, 'edit_hostels', 'hostels', '2021-06-14 18:44:11', '2021-06-14 18:44:11'),
(55, 'add_hostels', 'hostels', '2021-06-14 18:44:11', '2021-06-14 18:44:11'),
(56, 'delete_hostels', 'hostels', '2021-06-14 18:44:11', '2021-06-14 18:44:11'),
(57, 'browse_reviews', 'reviews', '2021-06-15 06:43:32', '2021-06-15 06:43:32'),
(58, 'read_reviews', 'reviews', '2021-06-15 06:43:32', '2021-06-15 06:43:32'),
(59, 'edit_reviews', 'reviews', '2021-06-15 06:43:32', '2021-06-15 06:43:32'),
(60, 'add_reviews', 'reviews', '2021-06-15 06:43:32', '2021-06-15 06:43:32'),
(61, 'delete_reviews', 'reviews', '2021-06-15 06:43:32', '2021-06-15 06:43:32');

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
(1, 2),
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
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2);

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
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `budget`, `duration`, `body`, `cover_image`, `province_id`, `category_id`, `created_at`, `updated_at`, `user_id`) VALUES
(2, 'Sade Solomon', 12356, 2, '<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">เปปเปอร์มินต์คาวบอยเย้วแคนยอนเอ็นเตอร์เทน ความหมายบร็อกโคลี ซีน รุมบ้าเกรดดราม่า ปักขคณนาโมหจริตตี๋ ไทเฮาโพสต์ วอลซ์ศึกษาศาสตร์เฟอร์นิเจอร์แหววอริยสงฆ์ ฮาร์ดแอ็กชั่นแอร์ ละอ่อนคอนแทคเลคเชอร์ธุหร่ำ คอร์ส ฮองเฮาราเมนจูเนียร์มายองเนส วืดแฟรี่ชะโนดคันยิ เพาเวอร์โกเต็กซ์ไวอะกร้าวานิลลา พาสเจอร์ไรส์จิ๊กโก๋งั้นซังเตเบนโล เวิร์ลด์สามช่าแฟนซี ซิ้มน้องใหม่โปลิศ</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แฟ้บ แอคทีฟ จัมโบ้ เวเฟอร์ซี้ซูเปอร์วอล์ค บลูเบอร์รี่แบ็กโฮเพาเวอร์ ตัวตนแฟร์ ไอซ์แกงค์กาญจน์ อีโรติกโฮป แชมเปี้ยนซูชิภควัมปติ ทริปสต๊อคเกมส์ ชาร์จเฟอร์นิเจอร์ดีพาร์ตเมนต์กัมมันตะ รีสอร์ทพาร์ทเนอร์ ออทิสติกสงบสุขพันธกิจรีดไถระโงก ม้งบรรพชน เดี้ยงเกรดริคเตอร์กษัตริยาธิราช โครนา</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แชมเปี้ยนแคมปัส นิวส์เซาท์แคมปัส นพมาศเซนเซอร์แพลน โปลิศอพาร์ตเมนต์ซานตาคลอส ม้งโปรโมชั่นไบโอกัมมันตะ เมเปิล เซอร์แฟร์มอนสเตอร์เซ็นทรัล บลูเบอร์รี่ซาร์ดีนอิเลียดคาวบอย กรีนอาข่าแฮนด์เทอร์โบโปรเจ็กเตอร์ นิวอาข่าติวเตอร์ ไชน่าจึ๊กมหภาค อินเตอร์เอ็นทรานซ์ทัวร์ดิสเครดิต แฟกซ์แบคโฮแอพพริคอทออร์เดอร์ สแควร์สต็อคครัวซองต์ก๊วนแทงโก้ ซิตีออดิชั่น แบนเนอร์คอมเพล็กซ์ด็อกเตอร์ภควัทคีตาเวิร์กช็อป</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">สต๊อคนรีแพทย์ ซูเอี๋ยก๊วนแอนด์ หยวนมาร์เก็ตม้งครูเสดไนน์ ตี๋ ท็อปบูตเดชานุภาพ วืดแซลมอน ปฏิสัมพันธ์ บอมบ์สังโฆไอเดียวาซาบิวีไอพี เลกเชอร์ยาวีกรอบรูปแคมปัสแตงโม คอนเซปต์ช็อปปิ้งซาบะ อินเตอร์คอนโทรลห่วยควิกเกมส์ คอปเตอร์ ว้าวแฟนซีมินท์คาราโอเกะ ดราม่าเชอร์รี่ ไฮเอนด์ไทเฮาบูติกพรีเซ็นเตอร์ ตนเองสไลด์</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">มิลค์ แพกเกจแครกเกอร์เมเปิลรีสอร์ทสแล็ก วอลนัทคาเฟ่อพาร์ตเมนต์เยลลี่ ออดิทอเรียม ฟีดกาญจนาภิเษกแรงดูดโชว์รูมซังเต ซานตาคลอสบ๋อยติงต๊อง มายาคติกรุ๊ปผู้นำ คาเฟ่ปอดแหกศิลปวัฒนธรรมแทงกั๊ก โอเวอร์ ซูเปอร์ตุ๊ก เจี๊ยวท็อปบู๊ท ซีอีโอวอร์รูมกษัตริยาธิราชซิม เพียวจูนรุสโซ โครนาท็อปบูต เรตเวอร์เฟอร์นิเจอร์บราคอรัปชั่น จูเนียร์ชาร์ตเวณิกาไรเฟิลพุดดิ้ง</p>', 'reviews\\June2021\\g26LyNq2U6FXdYkO31tb.jpg', 2, 5, '2021-06-15 07:06:03', '2021-06-15 07:06:03', 1),
(3, 'Hanae Carpenter', 96, 77, '<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">เปปเปอร์มินต์คาวบอยเย้วแคนยอนเอ็นเตอร์เทน ความหมายบร็อกโคลี ซีน รุมบ้าเกรดดราม่า ปักขคณนาโมหจริตตี๋ ไทเฮาโพสต์ วอลซ์ศึกษาศาสตร์เฟอร์นิเจอร์แหววอริยสงฆ์ ฮาร์ดแอ็กชั่นแอร์ ละอ่อนคอนแทคเลคเชอร์ธุหร่ำ คอร์ส ฮองเฮาราเมนจูเนียร์มายองเนส วืดแฟรี่ชะโนดคันยิ เพาเวอร์โกเต็กซ์ไวอะกร้าวานิลลา พาสเจอร์ไรส์จิ๊กโก๋งั้นซังเตเบนโล เวิร์ลด์สามช่าแฟนซี ซิ้มน้องใหม่โปลิศ</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แฟ้บ แอคทีฟ จัมโบ้ เวเฟอร์ซี้ซูเปอร์วอล์ค บลูเบอร์รี่แบ็กโฮเพาเวอร์ ตัวตนแฟร์ ไอซ์แกงค์กาญจน์ อีโรติกโฮป แชมเปี้ยนซูชิภควัมปติ ทริปสต๊อคเกมส์ ชาร์จเฟอร์นิเจอร์ดีพาร์ตเมนต์กัมมันตะ รีสอร์ทพาร์ทเนอร์ ออทิสติกสงบสุขพันธกิจรีดไถระโงก ม้งบรรพชน เดี้ยงเกรดริคเตอร์กษัตริยาธิราช โครนา</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แชมเปี้ยนแคมปัส นิวส์เซาท์แคมปัส นพมาศเซนเซอร์แพลน โปลิศอพาร์ตเมนต์ซานตาคลอส ม้งโปรโมชั่นไบโอกัมมันตะ เมเปิล เซอร์แฟร์มอนสเตอร์เซ็นทรัล บลูเบอร์รี่ซาร์ดีนอิเลียดคาวบอย กรีนอาข่าแฮนด์เทอร์โบโปรเจ็กเตอร์ นิวอาข่าติวเตอร์ ไชน่าจึ๊กมหภาค อินเตอร์เอ็นทรานซ์ทัวร์ดิสเครดิต แฟกซ์แบคโฮแอพพริคอทออร์เดอร์ สแควร์สต็อคครัวซองต์ก๊วนแทงโก้ ซิตีออดิชั่น แบนเนอร์คอมเพล็กซ์ด็อกเตอร์ภควัทคีตาเวิร์กช็อป</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">สต๊อคนรีแพทย์ ซูเอี๋ยก๊วนแอนด์ หยวนมาร์เก็ตม้งครูเสดไนน์ ตี๋ ท็อปบูตเดชานุภาพ วืดแซลมอน ปฏิสัมพันธ์ บอมบ์สังโฆไอเดียวาซาบิวีไอพี เลกเชอร์ยาวีกรอบรูปแคมปัสแตงโม คอนเซปต์ช็อปปิ้งซาบะ อินเตอร์คอนโทรลห่วยควิกเกมส์ คอปเตอร์ ว้าวแฟนซีมินท์คาราโอเกะ ดราม่าเชอร์รี่ ไฮเอนด์ไทเฮาบูติกพรีเซ็นเตอร์ ตนเองสไลด์</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">มิลค์ แพกเกจแครกเกอร์เมเปิลรีสอร์ทสแล็ก วอลนัทคาเฟ่อพาร์ตเมนต์เยลลี่ ออดิทอเรียม ฟีดกาญจนาภิเษกแรงดูดโชว์รูมซังเต ซานตาคลอสบ๋อยติงต๊อง มายาคติกรุ๊ปผู้นำ คาเฟ่ปอดแหกศิลปวัฒนธรรมแทงกั๊ก โอเวอร์ ซูเปอร์ตุ๊ก เจี๊ยวท็อปบู๊ท ซีอีโอวอร์รูมกษัตริยาธิราชซิม เพียวจูนรุสโซ โครนาท็อปบูต เรตเวอร์เฟอร์นิเจอร์บราคอรัปชั่น จูเนียร์ชาร์ตเวณิกาไรเฟิลพุดดิ้ง</p>', 'reviews\\June2021\\L2FOPeMwNfGK3MhjCqoe.jpg', 3, 3, '2021-06-15 07:08:17', '2021-06-15 07:08:17', NULL),
(4, 'George Nicholson', 5, 8, '<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">เปปเปอร์มินต์คาวบอยเย้วแคนยอนเอ็นเตอร์เทน ความหมายบร็อกโคลี ซีน รุมบ้าเกรดดราม่า ปักขคณนาโมหจริตตี๋ ไทเฮาโพสต์ วอลซ์ศึกษาศาสตร์เฟอร์นิเจอร์แหววอริยสงฆ์ ฮาร์ดแอ็กชั่นแอร์ ละอ่อนคอนแทคเลคเชอร์ธุหร่ำ คอร์ส ฮองเฮาราเมนจูเนียร์มายองเนส วืดแฟรี่ชะโนดคันยิ เพาเวอร์โกเต็กซ์ไวอะกร้าวานิลลา พาสเจอร์ไรส์จิ๊กโก๋งั้นซังเตเบนโล เวิร์ลด์สามช่าแฟนซี ซิ้มน้องใหม่โปลิศ</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แฟ้บ แอคทีฟ จัมโบ้ เวเฟอร์ซี้ซูเปอร์วอล์ค บลูเบอร์รี่แบ็กโฮเพาเวอร์ ตัวตนแฟร์ ไอซ์แกงค์กาญจน์ อีโรติกโฮป แชมเปี้ยนซูชิภควัมปติ ทริปสต๊อคเกมส์ ชาร์จเฟอร์นิเจอร์ดีพาร์ตเมนต์กัมมันตะ รีสอร์ทพาร์ทเนอร์ ออทิสติกสงบสุขพันธกิจรีดไถระโงก ม้งบรรพชน เดี้ยงเกรดริคเตอร์กษัตริยาธิราช โครนา</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แชมเปี้ยนแคมปัส นิวส์เซาท์แคมปัส นพมาศเซนเซอร์แพลน โปลิศอพาร์ตเมนต์ซานตาคลอส ม้งโปรโมชั่นไบโอกัมมันตะ เมเปิล เซอร์แฟร์มอนสเตอร์เซ็นทรัล บลูเบอร์รี่ซาร์ดีนอิเลียดคาวบอย กรีนอาข่าแฮนด์เทอร์โบโปรเจ็กเตอร์ นิวอาข่าติวเตอร์ ไชน่าจึ๊กมหภาค อินเตอร์เอ็นทรานซ์ทัวร์ดิสเครดิต แฟกซ์แบคโฮแอพพริคอทออร์เดอร์ สแควร์สต็อคครัวซองต์ก๊วนแทงโก้ ซิตีออดิชั่น แบนเนอร์คอมเพล็กซ์ด็อกเตอร์ภควัทคีตาเวิร์กช็อป</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">สต๊อคนรีแพทย์ ซูเอี๋ยก๊วนแอนด์ หยวนมาร์เก็ตม้งครูเสดไนน์ ตี๋ ท็อปบูตเดชานุภาพ วืดแซลมอน ปฏิสัมพันธ์ บอมบ์สังโฆไอเดียวาซาบิวีไอพี เลกเชอร์ยาวีกรอบรูปแคมปัสแตงโม คอนเซปต์ช็อปปิ้งซาบะ อินเตอร์คอนโทรลห่วยควิกเกมส์ คอปเตอร์ ว้าวแฟนซีมินท์คาราโอเกะ ดราม่าเชอร์รี่ ไฮเอนด์ไทเฮาบูติกพรีเซ็นเตอร์ ตนเองสไลด์</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">มิลค์ แพกเกจแครกเกอร์เมเปิลรีสอร์ทสแล็ก วอลนัทคาเฟ่อพาร์ตเมนต์เยลลี่ ออดิทอเรียม ฟีดกาญจนาภิเษกแรงดูดโชว์รูมซังเต ซานตาคลอสบ๋อยติงต๊อง มายาคติกรุ๊ปผู้นำ คาเฟ่ปอดแหกศิลปวัฒนธรรมแทงกั๊ก โอเวอร์ ซูเปอร์ตุ๊ก เจี๊ยวท็อปบู๊ท ซีอีโอวอร์รูมกษัตริยาธิราชซิม เพียวจูนรุสโซ โครนาท็อปบูต เรตเวอร์เฟอร์นิเจอร์บราคอรัปชั่น จูเนียร์ชาร์ตเวณิกาไรเฟิลพุดดิ้ง</p>', 'reviews\\June2021\\B9yKbpGBKru8Gfmu6OcV.jpg', 2, 4, '2021-06-15 07:08:53', '2021-06-15 07:08:53', NULL),
(5, 'Erin Figueroa', 91, 95, '<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">เปปเปอร์มินต์คาวบอยเย้วแคนยอนเอ็นเตอร์เทน ความหมายบร็อกโคลี ซีน รุมบ้าเกรดดราม่า ปักขคณนาโมหจริตตี๋ ไทเฮาโพสต์ วอลซ์ศึกษาศาสตร์เฟอร์นิเจอร์แหววอริยสงฆ์ ฮาร์ดแอ็กชั่นแอร์ ละอ่อนคอนแทคเลคเชอร์ธุหร่ำ คอร์ส ฮองเฮาราเมนจูเนียร์มายองเนส วืดแฟรี่ชะโนดคันยิ เพาเวอร์โกเต็กซ์ไวอะกร้าวานิลลา พาสเจอร์ไรส์จิ๊กโก๋งั้นซังเตเบนโล เวิร์ลด์สามช่าแฟนซี ซิ้มน้องใหม่โปลิศ</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แฟ้บ แอคทีฟ จัมโบ้ เวเฟอร์ซี้ซูเปอร์วอล์ค บลูเบอร์รี่แบ็กโฮเพาเวอร์ ตัวตนแฟร์ ไอซ์แกงค์กาญจน์ อีโรติกโฮป แชมเปี้ยนซูชิภควัมปติ ทริปสต๊อคเกมส์ ชาร์จเฟอร์นิเจอร์ดีพาร์ตเมนต์กัมมันตะ รีสอร์ทพาร์ทเนอร์ ออทิสติกสงบสุขพันธกิจรีดไถระโงก ม้งบรรพชน เดี้ยงเกรดริคเตอร์กษัตริยาธิราช โครนา</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">แชมเปี้ยนแคมปัส นิวส์เซาท์แคมปัส นพมาศเซนเซอร์แพลน โปลิศอพาร์ตเมนต์ซานตาคลอส ม้งโปรโมชั่นไบโอกัมมันตะ เมเปิล เซอร์แฟร์มอนสเตอร์เซ็นทรัล บลูเบอร์รี่ซาร์ดีนอิเลียดคาวบอย กรีนอาข่าแฮนด์เทอร์โบโปรเจ็กเตอร์ นิวอาข่าติวเตอร์ ไชน่าจึ๊กมหภาค อินเตอร์เอ็นทรานซ์ทัวร์ดิสเครดิต แฟกซ์แบคโฮแอพพริคอทออร์เดอร์ สแควร์สต็อคครัวซองต์ก๊วนแทงโก้ ซิตีออดิชั่น แบนเนอร์คอมเพล็กซ์ด็อกเตอร์ภควัทคีตาเวิร์กช็อป</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">สต๊อคนรีแพทย์ ซูเอี๋ยก๊วนแอนด์ หยวนมาร์เก็ตม้งครูเสดไนน์ ตี๋ ท็อปบูตเดชานุภาพ วืดแซลมอน ปฏิสัมพันธ์ บอมบ์สังโฆไอเดียวาซาบิวีไอพี เลกเชอร์ยาวีกรอบรูปแคมปัสแตงโม คอนเซปต์ช็อปปิ้งซาบะ อินเตอร์คอนโทรลห่วยควิกเกมส์ คอปเตอร์ ว้าวแฟนซีมินท์คาราโอเกะ ดราม่าเชอร์รี่ ไฮเอนด์ไทเฮาบูติกพรีเซ็นเตอร์ ตนเองสไลด์</p>\r\n<p style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 12.6px; line-height: inherit; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; vertical-align: baseline; color: #333333;\">มิลค์ แพกเกจแครกเกอร์เมเปิลรีสอร์ทสแล็ก วอลนัทคาเฟ่อพาร์ตเมนต์เยลลี่ ออดิทอเรียม ฟีดกาญจนาภิเษกแรงดูดโชว์รูมซังเต ซานตาคลอสบ๋อยติงต๊อง มายาคติกรุ๊ปผู้นำ คาเฟ่ปอดแหกศิลปวัฒนธรรมแทงกั๊ก โอเวอร์ ซูเปอร์ตุ๊ก เจี๊ยวท็อปบู๊ท ซีอีโอวอร์รูมกษัตริยาธิราชซิม เพียวจูนรุสโซ โครนาท็อปบูต เรตเวอร์เฟอร์นิเจอร์บราคอรัปชั่น จูเนียร์ชาร์ตเวณิกาไรเฟิลพุดดิ้ง</p>', 'reviews\\June2021\\nbsv36satCGvEyl7rvCq.jpg', 1, 4, '2021-06-15 07:10:29', '2021-06-15 07:10:29', NULL),
(6, 'Demetrius Bell', 46, 84, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non consectetur a erat nam. Sagittis vitae et leo duis ut diam quam nulla porttitor. Orci dapibus ultrices in iaculis nunc sed augue lacus. Id velit ut tortor pretium viverra suspendisse potenti. Ultricies mi eget mauris pharetra et ultrices neque ornare aenean. In hendrerit gravida rutrum quisque non tellus. Enim facilisis gravida neque convallis a cras semper auctor neque. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Viverra nam libero justo laoreet. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae. Elit sed vulputate mi sit amet mauris commodo. Praesent elementum facilisis leo vel. Gravida arcu ac tortor dignissim. Tortor at auctor urna nunc id cursus metus aliquam. Porta non pulvinar neque laoreet suspendisse. Tempus egestas sed sed risus pretium quam vulputate dignissim suspendisse. Molestie nunc non blandit massa.</p>\r\n<p>&nbsp;</p>\r\n<p>Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Risus pretium quam vulputate dignissim. Nec ultrices dui sapien eget mi proin sed. Tellus orci ac auctor augue mauris augue neque gravida. Amet volutpat consequat mauris nunc congue nisi vitae. Quis hendrerit dolor magna eget est lorem. Bibendum neque egestas congue quisque egestas diam. Nunc sed blandit libero volutpat sed cras. Justo eget magna fermentum iaculis eu. A lacus vestibulum sed arcu non odio euismod lacinia at. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Enim tortor at auctor urna nunc id cursus metus aliquam. Facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris. Adipiscing enim eu turpis egestas pretium. Vulputate enim nulla aliquet porttitor lacus. Nec dui nunc mattis enim. Ornare aenean euismod elementum nisi quis eleifend quam. Quam lacus suspendisse faucibus interdum. Auctor elit sed vulputate mi sit.</p>\r\n<p>&nbsp;</p>\r\n<p>In ornare quam viverra orci sagittis. Consectetur lorem donec massa sapien faucibus. Eu facilisis sed odio morbi quis commodo odio aenean sed. Sodales ut eu sem integer vitae justo eget. Amet massa vitae tortor condimentum lacinia quis. Scelerisque eu ultrices vitae auctor eu. Massa tincidunt dui ut ornare lectus sit amet. Varius quam quisque id diam vel quam elementum pulvinar. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Non enim praesent elementum facilisis leo. Dui id ornare arcu odio ut sem nulla pharetra diam. Nunc id cursus metus aliquam. Enim ut sem viverra aliquet eget sit amet tellus cras. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed.</p>\r\n<p>&nbsp;</p>\r\n<p>Et tortor at risus viverra adipiscing at in tellus. Et magnis dis parturient montes nascetur ridiculus mus. Eu scelerisque felis imperdiet proin fermentum leo. Lacus sed turpis tincidunt id aliquet risus feugiat in. Vitae purus faucibus ornare suspendisse sed nisi lacus sed. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Nisl condimentum id venenatis a condimentum vitae. Risus sed vulputate odio ut enim blandit volutpat maecenas. Risus quis varius quam quisque id diam vel quam elementum. Bibendum est ultricies integer quis auctor elit. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. In hac habitasse platea dictumst vestibulum. Dictum varius duis at consectetur lorem donec massa. Aliquam sem et tortor consequat id porta. Id diam maecenas ultricies mi eget mauris. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut morbi tincidunt augue interdum velit. Sed augue lacus viverra vitae congue. Non enim praesent elementum facilisis leo.</p>\r\n<p>&nbsp;</p>\r\n<p>Pharetra magna ac placerat vestibulum lectus. Sagittis eu volutpat odio facilisis. Blandit massa enim nec dui nunc mattis enim. At erat pellentesque adipiscing commodo elit at. Eu consequat ac felis donec et odio pellentesque. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum a. Facilisis magna etiam tempor orci eu lobortis. Maecenas sed enim ut sem. A diam sollicitudin tempor id eu nisl nunc. Viverra maecenas accumsan lacus vel facilisis volutpat est. Eu nisl nunc mi ipsum faucibus vitae aliquet nec. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. In mollis nunc sed id semper risus in. Blandit massa enim nec dui nunc mattis enim ut. Velit egestas dui id ornare arcu odio ut sem. Ac placerat vestibulum lectus mauris ultrices eros in cursus. Pellentesque elit eget gravida cum sociis natoque penatibus et magnis. Duis tristique sollicitudin nibh sit amet commodo. Lorem ipsum dolor sit amet consectetur. Quis viverra nibh cras pulvinar mattis nunc sed blandit.</p>', 'reviews\\June2021\\zXUf363Y16esm9WAskHd.jpg', 2, 4, '2021-06-15 07:17:27', '2021-06-15 07:17:27', NULL),
(7, 'Jayme Huber', 4, 12, '<p>czxcxzcx</p>', 'reviews\\June2021\\vMsIvP6b5EOlvqhq6baC.jpg', 1, 3, '2021-06-15 07:25:25', '2021-06-15 07:25:25', NULL),
(8, 'Thor Becker', 18, 82, '<p>czcxzcxzczxc</p>', 'reviews\\June2021\\uJMAv1qEYXhT0djuKVrE.jpg', 1, 3, '2021-06-15 07:27:11', '2021-06-15 07:27:11', 1),
(9, 'Hadley Schmidt', 75, 70, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non consectetur a erat nam. Sagittis vitae et leo duis ut diam quam nulla porttitor. Orci dapibus ultrices in iaculis nunc sed augue lacus. Id velit ut tortor pretium viverra suspendisse potenti. Ultricies mi eget mauris pharetra et ultrices neque ornare aenean. In hendrerit gravida rutrum quisque non tellus. Enim facilisis gravida neque convallis a cras semper auctor neque. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Viverra nam libero justo laoreet. Facilisi morbi tempus iaculis urna id volutpat lacus laoreet. Integer enim neque volutpat ac tincidunt vitae. Elit sed vulputate mi sit amet mauris commodo. Praesent elementum facilisis leo vel. Gravida arcu ac tortor dignissim. Tortor at auctor urna nunc id cursus metus aliquam. Porta non pulvinar neque laoreet suspendisse. Tempus egestas sed sed risus pretium quam vulputate dignissim suspendisse. Molestie nunc non blandit massa.</p>\r\n<p>&nbsp;</p>\r\n<p>Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Risus pretium quam vulputate dignissim. Nec ultrices dui sapien eget mi proin sed. Tellus orci ac auctor augue mauris augue neque gravida. Amet volutpat consequat mauris nunc congue nisi vitae. Quis hendrerit dolor magna eget est lorem. Bibendum neque egestas congue quisque egestas diam. Nunc sed blandit libero volutpat sed cras. Justo eget magna fermentum iaculis eu. A lacus vestibulum sed arcu non odio euismod lacinia at. Placerat orci nulla pellentesque dignissim enim sit amet venenatis. Enim tortor at auctor urna nunc id cursus metus aliquam. Facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris. Adipiscing enim eu turpis egestas pretium. Vulputate enim nulla aliquet porttitor lacus. Nec dui nunc mattis enim. Ornare aenean euismod elementum nisi quis eleifend quam. Quam lacus suspendisse faucibus interdum. Auctor elit sed vulputate mi sit.</p>\r\n<p>&nbsp;</p>\r\n<p>In ornare quam viverra orci sagittis. Consectetur lorem donec massa sapien faucibus. Eu facilisis sed odio morbi quis commodo odio aenean sed. Sodales ut eu sem integer vitae justo eget. Amet massa vitae tortor condimentum lacinia quis. Scelerisque eu ultrices vitae auctor eu. Massa tincidunt dui ut ornare lectus sit amet. Varius quam quisque id diam vel quam elementum pulvinar. Mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Non enim praesent elementum facilisis leo. Dui id ornare arcu odio ut sem nulla pharetra diam. Nunc id cursus metus aliquam. Enim ut sem viverra aliquet eget sit amet tellus cras. Tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed.</p>\r\n<p>&nbsp;</p>\r\n<p>Et tortor at risus viverra adipiscing at in tellus. Et magnis dis parturient montes nascetur ridiculus mus. Eu scelerisque felis imperdiet proin fermentum leo. Lacus sed turpis tincidunt id aliquet risus feugiat in. Vitae purus faucibus ornare suspendisse sed nisi lacus sed. Ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. Nisl condimentum id venenatis a condimentum vitae. Risus sed vulputate odio ut enim blandit volutpat maecenas. Risus quis varius quam quisque id diam vel quam elementum. Bibendum est ultricies integer quis auctor elit. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. In hac habitasse platea dictumst vestibulum. Dictum varius duis at consectetur lorem donec massa. Aliquam sem et tortor consequat id porta. Id diam maecenas ultricies mi eget mauris. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Ut morbi tincidunt augue interdum velit. Sed augue lacus viverra vitae congue. Non enim praesent elementum facilisis leo.</p>\r\n<p>&nbsp;</p>\r\n<p>Pharetra magna ac placerat vestibulum lectus. Sagittis eu volutpat odio facilisis. Blandit massa enim nec dui nunc mattis enim. At erat pellentesque adipiscing commodo elit at. Eu consequat ac felis donec et odio pellentesque. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum a. Facilisis magna etiam tempor orci eu lobortis. Maecenas sed enim ut sem. A diam sollicitudin tempor id eu nisl nunc. Viverra maecenas accumsan lacus vel facilisis volutpat est. Eu nisl nunc mi ipsum faucibus vitae aliquet nec. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat. In mollis nunc sed id semper risus in. Blandit massa enim nec dui nunc mattis enim ut. Velit egestas dui id ornare arcu odio ut sem. Ac placerat vestibulum lectus mauris ultrices eros in cursus. Pellentesque elit eget gravida cum sociis natoque penatibus et magnis. Duis tristique sollicitudin nibh sit amet commodo. Lorem ipsum dolor sit amet consectetur. Quis viverra nibh cras pulvinar mattis nunc sed blandit.</p>', 'reviews\\June2021\\Nio6TA0bL9OgJ3paQxYj.jpg', 1, 3, '2021-06-15 07:27:47', '2021-06-15 07:27:47', 7),
(11, 'Wayne Byrd', 73, 58, '<p>cxzczcxzcc</p>', 'reviews\\June2021\\q1lfre8mMiu0P34CMfkY.jpg', 2, 4, '2021-06-15 08:03:01', '2021-06-15 08:03:01', 8);

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
(1, 'site.title', 'Site Title', 'Tourism', '', 'text', 4, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2021\\R8Nnh5saftvkUPJAwgDt.png', '', 'image', 1, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 9, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\June2021\\5T7YtCsV0RFFqpO4Bgo6.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Tourism', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(12, 'site.description', 'Site Description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut tortor sollicitudin, lobortis quam a, semper ante. Sed a lacinia metus. Nullam iaculis sed massa in feugiat. Mauris vitae est vitae odio dictum convallis eu ac justo. Cras sit amet dolor nulla. Cras nec mauris cursus', NULL, 'text_area', 8, 'Site'),
(14, 'site.footer_logo', 'Site Footer Logo', 'settings\\June2021\\0L52ZwMeis7ExCoZL8Bs.png', NULL, 'image', 7, 'Site');

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
(82, 'หาดปะนาเระ', '<p><span style=\"color: #1a1a1a; font-family: THSarabunNew; font-size: 21px; text-align: center;\">เป็นหมู่บ้านชาวประมงหลายร้อยหลังคาเรือน บนหาดทรายมีเรือกอและ และเรือประมงนานาชนิดจอดเรียงรายอยู่ทั่วทั้งหาด หาดทรายไม่เหมาะแก่การเล่นน้ำ เพราะเป็นหมู่บ้านชาวประมงและที่จอดเรือ</span></p>\r\n<p><span style=\"color: #1a1a1a; font-family: THSarabunNew; font-size: 21px; text-align: center;\">อยู่ห่างจากตัวอำเภอ 3 กิโลเมตร ใช้เส้นทางเดียวกับหาดตะโละกาโปร์ เป็นหมู่บ้านชาวประมงหลายร้อยหลังคาเรือน บนหาดทรายมีเรือกอและ และเรือประมงนานาชนิดจอดเรียงรายทั่วทั้งหาดไม่เหมาะแก่การเล่นน้ำ</span></p>\r\n<p><span style=\"color: #1a1a1a; font-family: THSarabunNew; font-size: 21px; text-align: center;\">หมู่บ้านชาวประมงหลายร้อยหลังคาเรือน, หาดทรายที่มีเรือกอและเรือประมงเทียบฝั่งอยู่ทั่วทั้งหาดทราย</span></p>', 'tourist-attractions\\April2021\\me8FiNtZ7ONVkkfNSfq3.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4477.229297572912!2d99.72462848364208!3d7.00205088925188!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x513c232fc856ae4d!2z4LmC4Lij4LiH4LmA4Lij4Li14Lii4LiZ4LiX4LmI4Liy4Lio4Li04Lil4Liy4Lia4Liz4Lij4Li44LiH4Lij4Liy4Lip4LiO4Lij4LmM!5e0!3m2!1sth!2sth!4v1620534302607!5m2!1sth!2sth\" width=\"800\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '2021-04-29 13:44:31', '2021-06-18 07:10:51', 3, 2, '[\"tourist-attractions\\\\June2021\\\\60vD3dbVNuROrMdpFmhk.jpg\", \"tourist-attractions\\\\June2021\\\\0TnSDUmXLGEa1o9BlKih.jpg\", \"tourist-attractions\\\\June2021\\\\bry6Qt3wHjznnjvwK2bs.jpg\", \"tourist-attractions\\\\June2021\\\\O71grF14YJ1ZJUaKADJN.jpg\", \"tourist-attractions\\\\June2021\\\\AWkcklsEE3XLg968TwdR.png\", \"tourist-attractions\\\\June2021\\\\mqMkIC17MvzYPGyrumDF.jpg\", \"tourist-attractions\\\\June2021\\\\MzL92cWOe4hNPhWP1v8U.jpg\", \"tourist-attractions\\\\June2021\\\\goShGaeP9duYEZiTi5aH.jpg\"]', 'tourist-attractions\\June2021\\bkcMszWdPy7AsH9Fc1Jw.jpg'),
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
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$SJ0xN3WmqAdUVCKfhAm7Pu58AE8cT2j9jPQ7/dP3hr/pwx7Y06T0y', 'LeTntJR0nO3WinC8aX35HuHBJyDpPhMKExnXTYGyrQNCCVVn9MVjPSKqQt1R', '{\"locale\":\"en\"}', '2021-04-27 20:27:35', '2021-06-18 18:24:25'),
(2, 2, 'Kato Norman', 'xaro@mailinator.com', 'users/default.png', NULL, '$2y$10$tR/MjUShq.dzhH2bMQAJBeZOwUeuG2NFJ2LIkL.zxeb6FRIiTFica', NULL, NULL, '2021-06-14 22:58:26', '2021-06-14 22:58:26'),
(3, 2, 'Halee Cochran', 'fimy@mailinator.com', 'users/default.png', NULL, '$2y$10$bzNgmv/tTzKcVO1Ash5MSubSVWd/4wTKOgRqB0X5S5DjFvnOCd5UO', NULL, NULL, '2021-06-14 23:07:45', '2021-06-14 23:07:45'),
(4, 2, 'Bradley Huff', 'sopakicini@mailinator.com', 'users/default.png', NULL, '$2y$10$3tLdj2SCCFkHzZFHnAEhBuRrHkjdHbhLUfn2jGD9wYEPHSJNsXbg6', NULL, NULL, '2021-06-15 06:53:15', '2021-06-15 06:53:15'),
(5, 2, 'David Christian', 'xoqi@mailinator.com', 'users/default.png', NULL, '$2y$10$xgbAhEHCX6uNBStLPAYV8OeH2O/EHpJxxP2cd94qTx0HeL8/A966i', NULL, NULL, '2021-06-15 06:57:13', '2021-06-15 06:57:13'),
(6, 2, 'Melissa Mason', 'wajuxafu@mailinator.com', 'users/default.png', NULL, '$2y$10$iqe6Z7MhDnCJu03FgYlEVOHn3pZBtWgCIQYUF.yFmUnAEyMHoND26', NULL, NULL, '2021-06-15 07:08:34', '2021-06-15 07:08:34'),
(7, 2, 'Moses Blackwell', 'qavadefoso@mailinator.com', 'users/default.png', NULL, '$2y$10$EGYcxUeIpBVJFc.pNQEpquwAt.Mp2vrn18rBwJwifh2i6a2HY6L8i', NULL, NULL, '2021-06-15 07:27:28', '2021-06-15 07:27:28'),
(8, 2, 'Emi Huff', 'xacogavi@mailinator.com', 'users/default.png', NULL, '$2y$10$4shnTt9GUTShCcS07ojjRel1hqGDWh3stckyYOw1YDYpaxWihCNqW', NULL, NULL, '2021-06-15 08:02:44', '2021-06-15 08:02:44'),
(9, 2, 'Maggie Tucker', 'fizaru@mailinator.com', 'users/default.png', NULL, '$2y$10$hPjgi5.k/ZR1ILbL3M96MuXYVTbR5UE5hrqMYqEXgGrT4dEYtBJN6', NULL, NULL, '2021-06-16 05:17:12', '2021-06-16 05:17:12'),
(10, 2, 'Barclay Valdez', 'vexizijura@mailinator.com', 'users/default.png', NULL, '$2y$10$ZB42njN0m13OXsvKfhfRmOo8Nz04FbrESPax8k1rDFQRz7jbqs4vK', NULL, NULL, '2021-06-16 05:31:20', '2021-06-16 05:31:20'),
(11, 2, 'Kyle Russo', 'gukav@mailinator.com', 'users/default.png', NULL, '$2y$10$eYQANiORQMrKSv6O/./tt.jDrXoAXW0U1UE8cqNR3G63dsX9xjkxi', NULL, NULL, '2021-06-18 06:54:39', '2021-06-18 06:54:39'),
(12, 2, 'Jelani Watts', 'dyxy@mailinator.com', 'users/default.png', NULL, '$2y$10$B7zU6NlDLYVaBAiUE15ca.5r2ILtClsouciQXhmORNvZrQ7dEiPIO', NULL, NULL, '2021-06-18 06:56:36', '2021-06-18 06:56:36'),
(13, 2, 'Adam Cherry', 'xymufo@mailinator.com', 'users/default.png', NULL, '$2y$10$LwT6DWLDxSMBIu/B.KWnhuKvyBOSXuMdbEdQ/YDC83TaoEWbH32.a', NULL, NULL, '2021-06-18 18:13:00', '2021-06-18 18:13:00');

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
