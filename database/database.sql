-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 09:02 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_delivered`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_recorder`
--

CREATE TABLE `action_recorder` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `success` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(1, 3, NULL, NULL, 'hassan', 'mehboob', 'abc', NULL, '38000', 'fsd', NULL, 162, 0),
(2, 4, NULL, NULL, 'New', 'Test', 'Regent mall', NULL, '38000', 'Faisalabad', NULL, 162, 0);

-- --------------------------------------------------------

--
-- Table structure for table `address_format`
--

CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL,
  `address_format` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address_summary` varchar(48) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `myid` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `adminType` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`myid`, `user_name`, `first_name`, `last_name`, `email`, `password`, `isActive`, `address`, `city`, `state`, `zip`, `country`, `phone`, `image`, `adminType`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '', 'Admin', '', 'demo@ecommerce.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '0312 6545 874', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, '1VzuzKhwAV7HKAblmnv0RTkpFuuvzJsNKEAImJB1OcdxAuhja62nkKBrlaOg', '0000-00-00 00:00:00', '2017-12-18 21:32:50'),
(8, 'Admin', 'Admin', '', 'demo@android.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, '6Dcgvv68EOQ27LdFKia0QOdjWkR0J7F5mu1PaECGDFKG1zSLr96sDEbbGCe4', NULL, NULL),
(9, 'admin2', 'Admin', '', 'demo@ionic.com', '$2y$10$vbQE1Lbu1kXCAILSvaH0uOZ3oA6oZdCf/0kjQB16iGnjc3eTaFBeu', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'c68im2rP1dzUw7guozSqEbxZHY5ebSGGOprcPezzYDo2ZIvxCaGplhjn5rFP', NULL, NULL),
(10, 'vectorcoder', 'Vector', 'Coder', 'vectorcoder@gmail.com', '$2y$10$TKJBNrT7bkFqz49XazJL7.mTa49DI9CeCcZipjuFer1h.OeZWsaHC', 1, 'address', 'Nivada', '12', '38000', '223', '', 'resources/views/admin/images/admin_profile/1513671470.fast.jpg', 1, 'resources/views/admin/images/admin_profile/1505132393.1486628854.fast.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_types`
--

CREATE TABLE `admin_types` (
  `admin_type_id` int(100) NOT NULL,
  `admin_type_name` varchar(255) NOT NULL,
  `created_at` int(30) DEFAULT NULL,
  `updated_at` int(30) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_types`
--

INSERT INTO `admin_types` (`admin_type_id`, `admin_type_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Sub Admin', 1534777027, 1542637734, 1),
(3, 'Data Entry', 1538390209, NULL, 1),
(5, 'Meharzada', 1542965906, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(100) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(100) NOT NULL,
  `nonce` text NOT NULL,
  `url` varchar(64) NOT NULL,
  `device_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `banners_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `banners_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `banners_html_text` mediumtext COLLATE utf8_unicode_ci,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `banners_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`, `banners_slug`) VALUES
(1, '', '', 'resources/assets/images/constant_banners/1538487507.160x600.png', '', NULL, 0, '2018-10-26 00:00:00', NULL, '2018-10-02 13:54:33', '2018-10-02 13:54:33', 1, '3', ''),
(2, 'Banner-2', '12', 'resources/assets/images/banner_images/1502370343.banner_2.jpg', '', NULL, 0, '2020-01-01 00:00:00', NULL, '2017-08-10 13:05:43', NULL, 1, 'category', ''),
(3, 'Banner-3', '23', 'resources/assets/images/banner_images/1502370366.banner_3.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:06', NULL, 1, 'category', ''),
(4, 'Banner-4', '17', 'resources/assets/images/banner_images/1502370387.banner_4.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:27', NULL, 1, 'category', ''),
(5, 'Banner-5', '19', 'resources/assets/images/banner_images/1502370406.banner_5.jpg', '', NULL, 0, '2030-01-01 00:00:00', NULL, '2017-08-10 13:06:46', NULL, 1, 'category', ''),
(6, '1', '7', 'resources/assets/images/constant_banners/1538487432.160x600.png', '', NULL, 0, '2018-10-25 00:00:00', NULL, '2018-11-19 14:23:06', '2018-11-19 14:23:06', 1, 'category', '');

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`) VALUES
(1, 'resources/assets/images/category_images/1502285429.men.jpg', 'resources/assets/images/category_icons/1528806598.shirt.png', 0, NULL, '2017-08-07 10:19:26', '2018-07-06 03:23:37', 'men-s-clothing'),
(2, 'resources/assets/images/category_images/1502285278.women.jpg', 'resources/assets/images/category_icons/1528806661.dress.png', 0, NULL, '2017-08-07 10:24:45', '2018-07-10 12:46:38', 'women-s-clothing'),
(3, 'resources/assets/images/category_images/1502285654.boys.jpg', 'resources/assets/images/category_icons/1502101936.man-standing-up.png', 0, NULL, '2017-08-07 10:32:16', '2018-07-10 12:46:45', 'boy-s-clothing'),
(4, 'resources/assets/images/category_images/1502285903.girls.jpg', 'resources/assets/images/category_icons/1502103958.female-silhouette.png', 0, NULL, '2017-08-07 11:05:58', '2018-07-10 12:46:53', 'girl-s-clothing'),
(5, 'resources/assets/images/category_images/1502285986.babies.jpg', 'resources/assets/images/category_icons/1528806779.dress (1).png', 0, NULL, '2017-08-07 11:07:21', '2018-07-10 12:47:11', 'baby-mother'),
(6, 'resources/assets/images/category_images/1502286030.home.jpg', 'resources/assets/images/category_icons/1528806720.sofa.png', 0, NULL, '2017-08-07 11:10:26', '2018-07-10 12:47:30', 'household-merchandises'),
(7, 'resources/assets/images/category_images/1502286458.polo_shirts.jpg', 'resources/assets/images/category_icons/1502105603.shirt.png', 1, NULL, '2017-08-07 11:33:23', '2018-07-10 12:49:07', 'men-polo-shirts'),
(8, 'resources/assets/images/category_images/1502286584.casual.jpg', 'resources/assets/images/category_icons/1502178863.shirt.png', 1, NULL, '2017-08-08 07:54:23', '2018-07-10 12:49:31', 'men-polo-shirts-1'),
(9, 'resources/assets/images/category_images/1502286701.jeans.jpg', 'resources/assets/images/category_icons/1502179389.jeans.png', 1, NULL, '2017-08-08 08:03:09', '2018-07-10 12:49:37', 'men-jeans'),
(10, 'resources/assets/images/category_images/1502284855.landscape-1482456067-jordan-take-flight.jpg', 'resources/assets/images/category_icons/1502179895.sneaker.png', 1, NULL, '2017-08-08 08:11:35', '2018-07-10 12:49:47', 'men-shoes'),
(11, 'resources/assets/images/category_images/1502284031.glasses.jpg', 'resources/assets/images/category_icons/1502180493.reading-glasses.png', 1, NULL, '2017-08-08 08:21:33', '2018-07-10 12:49:57', 'sunglasses-glasses'),
(12, 'resources/assets/images/category_images/1502287711.wo_dresses.jpg', 'resources/assets/images/category_icons/1502194101.dress.png', 2, NULL, '2017-08-08 12:08:21', '2018-07-10 12:50:04', 'women-dresses'),
(13, 'resources/assets/images/category_images/1502287196.wo_shirts.jpg', 'resources/assets/images/category_icons/1502194198.shirt.png', 2, NULL, '2017-08-08 12:09:58', '2018-07-10 12:50:14', 'women-shirts-tops'),
(14, 'resources/assets/images/category_images/1502287459.wo_jans.jpg', 'resources/assets/images/category_icons/1502194291.jeans.png', 2, NULL, '2017-08-08 12:11:31', '2018-07-10 12:50:20', 'women-jeans'),
(15, 'resources/assets/images/category_images/1502287533.wo_handbags.jpg', 'resources/assets/images/category_icons/1502194427.handbag.png', 2, NULL, '2017-08-08 12:13:47', '2018-07-10 12:50:38', 'women-hand-bags'),
(16, 'resources/assets/images/category_images/1502287793.new_baby.jpg', 'resources/assets/images/category_icons/1502263460.smiling-baby.png', 5, NULL, '2017-08-09 07:24:20', '2018-07-10 12:50:45', 'new-born'),
(17, 'resources/assets/images/category_images/1502287893.baby_dress.jpg', 'resources/assets/images/category_icons/1502267564.dress.png', 5, NULL, '2017-08-09 08:32:44', '2018-07-10 12:50:57', 'baby-dresses'),
(18, 'resources/assets/images/category_images/1502288151.baby_blaket.jpg', 'resources/assets/images/category_icons/1502273393.blanket.png', 5, NULL, '2017-08-09 10:09:53', '2018-07-10 12:51:01', 'baby-blankets-swaddles'),
(19, 'resources/assets/images/category_images/1502288250.bed_col.jpg', 'resources/assets/images/category_icons/1502274677.modern-double-bed.png', 6, NULL, '2017-08-09 10:31:17', '2018-07-10 12:51:05', 'bedding-collections'),
(20, 'resources/assets/images/category_images/1502288368.pillows.jpg', 'resources/assets/images/category_icons/1502278859.pillow.png', 6, NULL, '2017-08-09 11:40:59', '2018-07-10 12:51:09', 'throws-pillows'),
(21, 'resources/assets/images/category_images/1502346394.bath_robe.jpg', 'resources/assets/images/category_icons/1502280642.bath-robe.png', 6, NULL, '2017-08-09 12:10:42', '2018-07-10 12:51:13', 'bath-robes'),
(22, 'resources/assets/images/category_images/1502346623.polo_shirts.jpg', 'resources/assets/images/category_icons/1502283220.shirt2.png', 3, NULL, '2017-08-09 12:53:40', '2018-07-10 12:51:17', 'boy-polo-shirts'),
(23, 'resources/assets/images/category_images/1502346643.casual.jpg', 'resources/assets/images/category_icons/1502283252.shirt.png', 3, NULL, '2017-08-09 12:54:12', '2018-07-10 12:51:21', 'boy-casual-shirts'),
(24, 'resources/assets/images/category_images/1502346665.jeans.jpg', 'resources/assets/images/category_icons/1502283334.jeans.png', 3, NULL, '2017-08-09 12:55:34', '2018-07-10 12:51:26', 'boy-pants-jeans'),
(25, 'resources/assets/images/category_images/1502346742.shoes.jpg', 'resources/assets/images/category_icons/1502283383.sneaker.png', 3, NULL, '2017-08-09 12:56:23', '2018-07-10 12:51:35', 'boy-shoes'),
(26, 'resources/assets/images/category_images/1502346940.rompers.jpg', 'resources/assets/images/category_icons/1502283482.dress.png', 4, NULL, '2017-08-09 12:58:02', '2018-07-10 12:51:39', 'dresses-rompers'),
(27, 'resources/assets/images/category_images/1502347098.skirts.jpg', 'resources/assets/images/category_icons/1502283595.short-skirt.png', 4, NULL, '2017-08-09 12:59:55', '2018-07-10 12:58:53', 'shorts-skirts'),
(28, 'resources/assets/images/category_images/1502347329.sweater.jpg', 'resources/assets/images/category_icons/1502283706.pullover.png', 4, NULL, '2017-08-09 01:01:46', '2018-07-10 12:58:57', 'sweaters'),
(29, 'resources/assets/images/category_images/1531492780.healthandbeauty.jpg', 'resources/assets/images/category_icons/1528806373.heart.png', 0, NULL, '2018-06-12 12:26:13', '2018-07-18 12:38:58', 'health-beauty-hair'),
(30, 'resources/assets/images/category_images/1531492795.automobiles.jpg', 'resources/assets/images/category_icons/1528806436.car.png', 0, NULL, '2018-06-12 12:27:16', '2018-07-18 12:39:22', 'automobiles-motorcycles'),
(31, 'resources/assets/images/category_images/1531492822.watches.jpg', 'resources/assets/images/category_icons/1528806495.wedding-ring.png', 0, NULL, '2018-06-12 12:28:15', '2018-07-18 12:39:35', 'jewelry-watches'),
(32, 'resources/assets/images/category_images/1531492844.mobiles.jpg', 'resources/assets/images/category_icons/1528806529.mobile-phone.png', 0, NULL, '2018-06-12 12:28:49', '2018-07-18 12:39:47', 'cellphones-accessories'),
(33, '', 'resources/assets/images/category_icons/1528806833.computer.png', 0, NULL, '2018-06-12 12:33:53', '2018-07-18 12:40:03', 'computer-office-security'),
(34, '', '', 0, NULL, '2018-10-03 10:58:12', NULL, 'n-a');

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Men\'s Clothing'),
(3, 1, 4, 'رجالي'),
(4, 2, 1, 'Women\'s Clothing'),
(6, 2, 4, 'نساء'),
(7, 3, 1, 'Boy\'s Clothing'),
(9, 3, 4, 'أولاد'),
(10, 4, 1, 'Girl\'s Clothing'),
(12, 4, 4, 'الفتيات'),
(13, 5, 1, 'Baby & Mother'),
(15, 5, 4, 'طفل'),
(16, 6, 1, 'Household Merchandises'),
(18, 6, 4, 'الصفحة الرئيسية'),
(19, 7, 1, 'Men Polo shirts'),
(21, 7, 4, 'الرجال قمصان بولو'),
(22, 8, 1, 'Men Polo shirts'),
(24, 8, 4, 'الرجال قمصان عادية'),
(25, 9, 1, 'Men Jeans'),
(27, 9, 4, 'الرجال جينز'),
(28, 10, 1, 'Men Shoes'),
(30, 10, 4, 'احذية رجالية'),
(31, 11, 1, 'Sunglasses & Glasses'),
(33, 11, 4, 'النظارات الشمسية والنظارات'),
(34, 12, 1, 'Women Dresses'),
(36, 12, 4, 'الفساتين'),
(37, 13, 1, 'Women Shirts & Tops'),
(39, 13, 4, 'النساء قمصان، بلايز'),
(40, 14, 1, 'Women Jeans'),
(42, 14, 4, 'المرأة جينز'),
(43, 15, 1, 'Women Hand Bags'),
(45, 15, 4, 'حقائب اليد للنساء'),
(46, 16, 1, 'New Born'),
(48, 16, 4, 'مولود جديد'),
(49, 17, 1, 'Baby Dresses'),
(51, 17, 4, 'فساتين الطفل'),
(52, 18, 1, 'Baby Blankets & Swaddles'),
(54, 18, 4, 'طفل بطانيات و سوادلز'),
(55, 19, 1, 'Bedding Collections'),
(57, 19, 4, 'مجموعات الفراش'),
(58, 20, 1, 'Throws & Pillows'),
(60, 20, 4, 'رمي ووسائد'),
(61, 21, 1, 'Bath Robes'),
(63, 21, 4, 'حمام الجلباب'),
(64, 22, 1, 'Boy Polo shirts'),
(66, 22, 4, 'بوي، بولو، القمصان'),
(67, 23, 1, 'Boy Casual Shirts'),
(69, 23, 4, 'بوي، عارضة، القمصان'),
(70, 24, 1, 'Boy Pants & Jeans'),
(72, 24, 4, 'الفتيان السراويل والجينز'),
(73, 25, 1, 'Boy Shoes'),
(75, 25, 4, 'أحذية الولد'),
(76, 26, 1, 'Dresses & Rompers'),
(78, 26, 4, 'فساتين والسروال القصير'),
(79, 27, 1, 'Shorts & Skirts'),
(81, 27, 4, 'السراويل والتنانير'),
(82, 28, 1, 'Sweaters'),
(84, 28, 4, 'البلوزات'),
(85, 29, 1, 'Health & Beauty, Hair'),
(87, 29, 4, 'الصحة والجمال ، الشعر'),
(88, 30, 1, 'Automobiles & Motorcycles'),
(90, 30, 4, 'سيارات ودراجات نارية'),
(91, 31, 1, 'Jewelry & Watches'),
(93, 31, 4, 'المجوهرات والساعات'),
(94, 32, 1, 'Cellphones & Accessories'),
(96, 32, 4, 'الهواتف الخلوية والاكسسوارات'),
(97, 33, 1, 'Computer, Office, Security'),
(99, 33, 4, 'الكمبيوتر ، المكتب ، الأمن'),
(100, 35, 1, 'test cat'),
(101, 35, 4, 'test cat'),
(102, 36, 1, 'test cat'),
(103, 36, 4, 'test cat'),
(104, 37, 1, 'test sub'),
(105, 37, 4, 'test sub');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` mediumtext NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(100) NOT NULL,
  `banners_title` varchar(255) NOT NULL,
  `banners_url` mediumtext NOT NULL,
  `banners_image` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, '1', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538490924.side_banner_1_en.jpg', '2018-10-09 14:43:31', 1, 1, '1'),
(2, '1', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492230.side_banner_1_ar.jpg', '2018-10-02 14:57:10', 1, 4, '1'),
(3, '2', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538490871.side_banner_2_en.jpg', '2018-10-02 14:34:31', 1, 1, '2'),
(4, '2', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538490891.side_banner_2_ar.jpg', '2018-10-02 14:34:51', 1, 4, '2'),
(5, '3', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492596.banner_1_en.jpg', '2018-10-02 15:03:16', 1, 1, '3'),
(6, '3', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492609.banner_1_ar.jpg', '2018-10-02 15:03:29', 1, 4, '3'),
(7, '5', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538491160.banner_3_en.jpg', '2018-10-02 14:39:20', 1, 1, '5'),
(8, '5', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538491176.banner_3_ar.jpg', '2018-10-02 14:39:36', 1, 4, '5'),
(9, '4', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492550.banner_2_en.jpg', '2018-10-02 15:02:30', 1, 1, '4'),
(10, '4', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538492571.banner_2_ar.jpg', '2018-10-02 15:02:51', 1, 4, '4'),
(11, '6', 'product-detail/cotton-chino-belted-shirtdress', 'resources/assets/images/constant_banners/1538642636.sale_banners_en.jpg', '2018-11-19 14:20:16', 1, 1, '6'),
(12, '6', 'shop', 'resources/assets/images/constant_banners/1538642686.sale_banners_ar.jpg', '2018-10-04 08:44:46', 1, 4, '6'),
(13, '7', 'shop', 'resources/assets/images/constant_banners/1538642710.large_banner_en.jpg', '2018-10-04 08:45:10', 1, 1, '7'),
(14, '7', 'shop', 'resources/assets/images/constant_banners/1538642734.large_banner_ar.jpg', '2018-10-04 08:45:34', 1, 4, '7');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(100) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(100) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(100) NOT NULL,
  `usage_limit_per_user` int(100) NOT NULL,
  `limit_usage_to_x_items` int(100) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `used_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupans_id`, `code`, `date_created`, `date_modified`, `description`, `discount_type`, `amount`, `expiry_date`, `usage_count`, `individual_use`, `product_ids`, `exclude_product_ids`, `usage_limit`, `usage_limit_per_user`, `limit_usage_to_x_items`, `free_shipping`, `product_categories`, `excluded_product_categories`, `exclude_sale_items`, `minimum_amount`, `maximum_amount`, `email_restrictions`, `used_by`) VALUES
(1, 'cart_discount_fixed', '2018-02-14 11:49:30', '2018-02-19 11:06:04', '', 'fixed_cart', 10, '2018-06-07 00:00:00', 9, 0, '', '', 10, 3, 0, 0, '', '', 0, '5.00', '1000.00', '', ',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1'),
(2, 'cart_discount_percentage', '2018-02-14 11:50:20', '2018-02-16 14:57:19', '', 'percent', 10, '2018-04-04 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '5.00', '0.00', 'test@gmail.com', ',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1'),
(3, 'product_discount_fixed', '2018-02-16 14:52:33', '2018-07-13 15:21:00', '', 'fixed_product', 5, '2021-03-03 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', 'balawalali3387@gmail.com', ',1,41,42,46,46'),
(4, 'product_discount_percentage', '2018-02-16 14:53:08', '2019-03-21 13:18:52', '', 'percent_product', 5, '2031-03-06 00:00:00', 0, 0, '', '', 0, 0, 0, 0, '', '', 0, '0.00', '0.00', '', ',1,1,1,1,1,7,7,7,7,7,7,1,20,30,30,32,32');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(1, 'U.S. Dollar', 'USD', '$', NULL, '.', '.', '2', NULL, '2017-02-09 00:00:00'),
(2, 'Euro', 'EUR', NULL, '€', '.', '.', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `customers_gender` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `customers_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_default_address_id` int(11) DEFAULT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customers_newsletter` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  `fb_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_picture` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(100) NOT NULL,
  `updated_at` int(100) NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(100) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(100) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_id` int(100) NOT NULL DEFAULT '0',
  `device_type` text COLLATE utf8_unicode_ci NOT NULL,
  `register_date` int(100) NOT NULL DEFAULT '0',
  `update_date` int(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `isDesktop` tinyint(1) NOT NULL DEFAULT '0',
  `onesignal` tinyint(1) NOT NULL DEFAULT '0',
  `isEnableMobile` tinyint(1) NOT NULL DEFAULT '1',
  `isEnableDesktop` tinyint(1) NOT NULL DEFAULT '1',
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `fcm` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fedex_shipping`
--

CREATE TABLE `fedex_shipping` (
  `fedex_id` int(100) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fedex_shipping`
--

INSERT INTO `fedex_shipping` (`fedex_id`, `title`, `user_name`, `password`, `parcel_height`, `parcel_width`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`) VALUES
(1, 'FedEx', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(100) NOT NULL,
  `flash_sale_last_modified` int(100) NOT NULL,
  `flash_start_date` int(100) NOT NULL,
  `flash_expires_date` int(100) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(100) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'Florida', 'Florida local sales tax zone', '2017-01-10 00:00:00', '2017-01-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hula_our_infos`
--

CREATE TABLE `hula_our_infos` (
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(100) NOT NULL,
  `admin_id` int(1) NOT NULL,
  `added_date` int(100) NOT NULL,
  `reference_code` varchar(255) NOT NULL,
  `stock` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`) VALUES
(1, 1, 1534415708, '', 30, 81, '15.00', 'in'),
(2, 1, 1534415744, '', 15, 81, '15.00', 'in'),
(4, 1, 1534504561, 'testing', 10, 81, '15.00', 'in'),
(5, 1, 1534504653, '', 20, 81, '15.00', 'in'),
(9, 1, 1534523669, '', 30, 80, '15.00', 'in'),
(10, 9, 1536315486, 'testing', 15, 74, '15.00', 'in'),
(11, 1, 1536657515, '', 25, 81, '15.00', 'in'),
(12, 1, 1536657876, '', 15, 81, '15.00', 'in'),
(13, 1, 1536660316, '', 25, 81, '15.00', 'in'),
(14, 1, 1536660335, '', 40, 81, '15.00', 'in'),
(15, 1, 1536660346, '', 50, 81, '15.00', 'in'),
(23, 8, 1541596208, '', 100, 78, '15.00', 'in'),
(24, 8, 1541606253, '', 100, 73, '15.00', 'in'),
(25, 8, 1541676338, '', 100, 76, '15.00', 'in'),
(26, 8, 1541938765, '', 100, 77, '15.00', 'in'),
(27, 8, 1541938779, '', 20, 77, '15.00', 'in'),
(28, 8, 1541938790, '', 20, 77, '15.00', 'in'),
(29, 8, 1541950369, '', 20, 77, '15.00', 'in'),
(30, 8, 1541950380, '', 30, 77, '15.00', 'in'),
(31, 8, 1541950387, '', 40, 77, '15.00', 'in'),
(32, 8, 1541950395, '', 35, 77, '15.00', 'in'),
(33, 8, 1541950403, '', 40, 77, '15.00', 'in'),
(34, 8, 1541950412, '', 15, 77, '15.00', 'in'),
(35, 8, 1542198916, '', 100, 75, '15.00', 'in'),
(36, 8, 1542198925, '', 10, 75, '15.00', 'in'),
(37, 8, 1542198934, '', 40, 75, '15.00', 'in'),
(38, 8, 1542198960, '', 10, 75, '15.00', 'in'),
(39, 8, 1542615824, '35', 300, 81, '15.00', 'in'),
(40, 8, 1542615915, '35', 300, 80, '15.00', 'in'),
(41, 8, 1542616096, '35', 300, 79, '15.00', 'in'),
(42, 8, 1542616113, '35', 300, 79, '15.00', 'in'),
(43, 8, 1542616124, '35', 300, 79, '15.00', 'in'),
(44, 8, 1542616146, '35', 300, 79, '15.00', 'in'),
(45, 8, 1542616184, '35', 300, 79, '15.00', 'in'),
(46, 8, 1542616251, '35', 300, 78, '15.00', 'in'),
(47, 8, 1542616312, '35', 300, 77, '15.00', 'in'),
(48, 8, 1542616389, '35', 300, 76, '15.00', 'in'),
(49, 8, 1542616447, '35', 300, 75, '15.00', 'in'),
(50, 8, 1542616560, '35', 300, 74, '15.00', 'in'),
(51, 8, 1542616658, '35', 300, 73, '15.00', 'in'),
(52, 8, 1542616689, '35', 300, 72, '15.00', 'in'),
(53, 8, 1542616722, '35', 300, 71, '15.00', 'in'),
(54, 8, 1542616748, '35', 300, 70, '15.00', 'in'),
(55, 8, 1542628641, '35', 300, 69, '15.00', 'in'),
(56, 8, 1542628692, '35', 300, 68, '15.00', 'in'),
(57, 8, 1542628726, '35', 300, 67, '15.00', 'in'),
(58, 8, 1542628773, '35', 300, 66, '15.00', 'in'),
(59, 8, 1542628799, '35', 300, 65, '15.00', 'in'),
(60, 8, 1542628825, '35', 300, 64, '15.00', 'in'),
(61, 8, 1542628883, '35', 300, 63, '15.00', 'in'),
(62, 8, 1542628912, '35', 300, 62, '15.00', 'in'),
(63, 8, 1542628943, '35', 300, 61, '15.00', 'in'),
(64, 8, 1542628994, '35', 300, 60, '15.00', 'in'),
(65, 8, 1542629050, '35', 300, 59, '15.00', 'in'),
(66, 8, 1542629073, '35', 300, 58, '15.00', 'in'),
(67, 8, 1542629135, '35', 300, 57, '15.00', 'in'),
(68, 8, 1542629168, '35', 300, 56, '15.00', 'in'),
(69, 8, 1542629193, '35', 300, 55, '15.00', 'in'),
(70, 8, 1542629303, '35', 300, 54, '15.00', 'in'),
(71, 8, 1542629324, '35', 300, 53, '15.00', 'in'),
(72, 8, 1542629346, '35', 300, 52, '15.00', 'in'),
(73, 8, 1542629370, '35', 300, 51, '15.00', 'in'),
(74, 8, 1542629396, '35', 300, 50, '15.00', 'in'),
(75, 8, 1542629455, '35', 300, 49, '15.00', 'in'),
(76, 8, 1542629478, '35', 300, 48, '15.00', 'in'),
(77, 8, 1542629500, '35', 300, 47, '15.00', 'in'),
(78, 8, 1542629527, '35', 300, 46, '15.00', 'in'),
(79, 8, 1542629556, '35', 300, 45, '15.00', 'in'),
(80, 8, 1542629970, '35', 300, 44, '15.00', 'in'),
(81, 8, 1542629996, '35', 300, 43, '15.00', 'in'),
(82, 8, 1542630019, '35', 300, 42, '15.00', 'in'),
(83, 8, 1542630040, '35', 300, 41, '15.00', 'in'),
(84, 8, 1542630062, '35', 300, 40, '15.00', 'in'),
(85, 8, 1542630116, '35', 300, 39, '15.00', 'in'),
(86, 8, 1542630141, '35', 300, 38, '15.00', 'in'),
(87, 8, 1542630164, '35', 300, 37, '15.00', 'in'),
(88, 8, 1542630194, '35', 300, 36, '15.00', 'in'),
(89, 8, 1542630218, '35', 300, 35, '15.00', 'in'),
(90, 8, 1542632161, '35', 300, 34, '15.00', 'in'),
(91, 8, 1542632264, '35', 300, 33, '15.00', 'in'),
(92, 8, 1542632295, '35', 300, 32, '15.00', 'in'),
(93, 8, 1542632322, '35', 300, 31, '15.00', 'in'),
(94, 8, 1542632471, '35', 300, 30, '15.00', 'in'),
(95, 8, 1542632553, '35', 300, 29, '15.00', 'in'),
(96, 8, 1542632775, '35', 300, 28, '15.00', 'in'),
(97, 8, 1542632817, '35', 300, 27, '15.00', 'in'),
(98, 8, 1542632855, '35', 300, 26, '15.00', 'in'),
(99, 8, 1542632903, '35', 300, 25, '15.00', 'in'),
(100, 8, 1542632956, '35', 300, 24, '15.00', 'in'),
(101, 8, 1542633009, '35', 300, 23, '15.00', 'in'),
(102, 8, 1542633245, '35', 300, 22, '15.00', 'in'),
(103, 8, 1542633278, '35', 300, 21, '15.00', 'in'),
(104, 8, 1542633313, '35', 300, 20, '15.00', 'in'),
(105, 8, 1542633581, '35', 300, 19, '15.00', 'in'),
(106, 8, 1542633608, '35', 300, 18, '15.00', 'in'),
(107, 8, 1542633638, '35', 300, 17, '15.00', 'in'),
(108, 8, 1542633673, '35', 300, 16, '15.00', 'in'),
(109, 8, 1542633713, '35', 300, 15, '15.00', 'in'),
(110, 8, 1542633910, '35', 300, 14, '15.00', 'in'),
(111, 8, 1542633934, '35', 300, 13, '15.00', 'in'),
(112, 8, 1542633970, '35', 300, 12, '15.00', 'in'),
(113, 8, 1542633991, '35', 300, 11, '15.00', 'in'),
(114, 8, 1542634012, '35', 300, 10, '15.00', 'in'),
(115, 8, 1542634082, '35', 300, 9, '15.00', 'in'),
(116, 8, 1542634103, '35', 300, 8, '15.00', 'in'),
(117, 8, 1542634137, '35', 300, 7, '15.00', 'in'),
(118, 8, 1542634160, '35', 300, 6, '15.00', 'in'),
(119, 8, 1542634183, '35', 300, 5, '15.00', 'in'),
(120, 8, 1542634204, '35', 300, 4, '15.00', 'in'),
(121, 8, 1542634242, '35', 300, 2, '15.00', 'in'),
(122, 8, 1542634266, '35', 300, 1, '15.00', 'in'),
(136, 0, 1548169805, '', 1, 3, '0.00', 'out'),
(134, 8, 1547714758, '', 10, 80, '10.00', 'in'),
(133, 0, 1547714691, '', 6, 80, '0.00', 'out'),
(132, 0, 1547714401, '', 1, 81, '0.00', 'out'),
(131, 0, 1547714401, '', 1, 8, '0.00', 'out'),
(130, 0, 1547714401, '', 1, 1, '0.00', 'out'),
(145, 0, 1553262878, '', 1, 73, '0.00', 'out'),
(144, 0, 1553262878, '', 1, 80, '0.00', 'out'),
(143, 8, 1553005396, '', 100, 80, '25.00', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `attribute_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_ref_id`, `products_id`, `attribute_id`) VALUES
(1, 81, 423),
(1, 81, 425),
(1, 81, 426),
(2, 81, 423),
(2, 81, 425),
(4, 81, 424),
(4, 81, 425),
(5, 81, 424),
(5, 81, 425),
(9, 80, 430),
(10, 74, 443),
(11, 81, 424),
(11, 81, 444),
(11, 81, 425),
(13, 81, 1),
(13, 81, 3),
(14, 81, 1),
(14, 81, 4),
(15, 81, 1),
(15, 81, 6),
(144, 80, 4),
(144, 80, 1),
(143, 80, 4),
(143, 80, 1),
(26, 77, 5),
(26, 77, 6),
(27, 77, 5),
(27, 77, 7),
(28, 77, 9),
(28, 77, 6),
(29, 77, 10),
(29, 77, 12),
(30, 77, 10),
(30, 77, 13),
(31, 77, 10),
(31, 77, 14),
(32, 77, 11),
(32, 77, 12),
(33, 77, 11),
(33, 77, 13),
(34, 77, 11),
(34, 77, 14),
(35, 75, 15),
(35, 75, 17),
(36, 75, 15),
(36, 75, 18),
(37, 75, 16),
(37, 75, 17),
(38, 75, 16),
(38, 75, 18),
(40, 80, 1),
(40, 80, 3),
(47, 77, 10),
(47, 77, 12),
(49, 75, 15),
(49, 75, 17),
(134, 80, 3),
(134, 80, 1),
(133, 80, 3),
(133, 80, 1);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(100) NOT NULL,
  `label_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(1031, 'Home'),
(1, 'I\'ve forgotten my password?'),
(1030, 'Menu'),
(1029, 'Clear'),
(1028, 'Apply'),
(1027, 'Close'),
(1026, 'Price Range'),
(1025, 'Filters'),
(1024, 'My Wish List'),
(1023, 'Log Out'),
(1022, 'Please login or create an account for free'),
(1021, 'Login & Register'),
(1020, 'Save Address'),
(1018, 'State'),
(1019, 'Update Address'),
(1017, 'Post code'),
(1016, 'City'),
(1015, 'Zone'),
(1014, 'other'),
(1013, 'Country'),
(1012, 'Shipping Address'),
(1011, 'Proceed'),
(1010, 'Remove'),
(1008, 'by'),
(1009, 'View'),
(1007, 'Quantity'),
(1006, 'Price'),
(1005, 'continue shopping'),
(1004, 'Your cart is empty'),
(1003, 'My Cart'),
(1002, 'Continue'),
(1001, 'Error: invalid cvc number!'),
(1000, 'Error: invalid expiry date!'),
(999, 'Error: invalid card number!'),
(998, 'Expiration'),
(997, 'Expiration Date'),
(996, 'Card Number'),
(995, 'Payment'),
(994, 'Order Notes'),
(993, 'Shipping Cost'),
(992, 'Tax'),
(991, 'Products Price'),
(990, 'SubTotal'),
(989, 'Products'),
(988, 'Shipping Method'),
(987, 'Billing Address'),
(986, 'Order'),
(985, 'Next'),
(984, 'Same as Shipping Address'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(980, 'Already Memeber?'),
(979, 'Last Name'),
(978, 'First Name'),
(977, 'Create an Account'),
(976, 'Add new Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(968, 'Customer Orders'),
(967, 'Change Password'),
(966, 'New Password'),
(965, 'Current Password'),
(964, 'Update'),
(963, 'Date of Birth'),
(962, 'Mobile'),
(961, 'My Account'),
(960, 'Likes'),
(959, 'newest'),
(958, 'top seller'),
(957, 'special'),
(956, 'most liked'),
(955, 'Cancel'),
(954, 'Sort Products'),
(953, 'Special Products'),
(952, 'Price : low - high'),
(951, 'Price : high - low'),
(950, 'Z - A'),
(949, 'A - Z'),
(948, 'All'),
(947, 'Explore More'),
(946, 'Note to the buyer'),
(945, 'Coupon'),
(944, 'coupon code'),
(943, 'Coupon Amount'),
(942, 'Coupon Code'),
(941, 'Food Categories'),
(940, 'Recipe of Day'),
(939, 'Top Dishes'),
(938, 'Skip'),
(937, 'Term and Services'),
(936, 'Privacy Policy'),
(935, 'Refund Policy'),
(934, 'Newest'),
(933, 'OUT OF STOCK'),
(932, 'Select Language'),
(931, 'Reset'),
(930, 'Shop'),
(929, 'Settings'),
(928, 'Enter keyword'),
(927, 'News'),
(926, 'Top Sellers'),
(925, 'Go Back'),
(924, 'Word Press Post Detail'),
(923, 'Explore'),
(922, 'Continue Adding'),
(921, 'Your wish List is empty'),
(920, 'Favourite'),
(919, 'Continue Shopping'),
(918, 'My Orders'),
(917, 'Thank you for shopping with us.'),
(916, 'Thank You'),
(915, 'Shipping method'),
(914, 'Sub Categories'),
(913, 'Main Categories'),
(912, 'Search'),
(911, 'Reset Filters'),
(910, 'No Products Found'),
(909, 'OFF'),
(908, 'Techincal details'),
(907, 'Product Description'),
(906, 'ADD TO CART'),
(905, 'Add to Cart'),
(904, 'In Stock'),
(903, 'Out of Stock'),
(902, 'New'),
(901, 'Product Details'),
(900, 'Shipping'),
(899, 'Sub Total'),
(898, 'Total'),
(897, 'Price Detail'),
(896, 'Order Detail'),
(895, 'Got It!'),
(894, 'Skip Intro'),
(893, 'Intro'),
(892, 'REMOVE'),
(891, 'Deals'),
(890, 'All Categories'),
(889, 'Most Liked'),
(888, 'Special Deals'),
(887, 'Top Seller'),
(886, 'Products are available.'),
(885, 'Recently Viewed'),
(884, 'Please connect to the internet'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(880, 'Categories'),
(879, 'About Us'),
(878, 'Send'),
(877, 'Forgot Password'),
(876, 'Register'),
(875, 'Password'),
(874, 'Email'),
(873, 'or'),
(872, 'Login with'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(100) NOT NULL,
  `label_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(100) DEFAULT NULL,
  `label_id` int(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1372, 'Most Liked', 1, 956),
(1371, 'Special', 1, 957),
(1370, 'Top Seller', 1, 958),
(1369, 'Newest ', 1, 959),
(1368, 'Likes', 1, 960),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1365, 'Date of Birth', 1, 963),
(1364, 'Update', 1, 964),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1354, 'Order Status', 1, 969),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1352, 'Add new Address', 1, 976),
(1351, 'Create an Account', 1, 977),
(1350, 'First Name', 1, 978),
(1349, 'Last Name', 1, 979),
(1348, 'Already Memeber?', 1, 980),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1333, 'Payment', 1, 995),
(1332, 'Card Number', 1, 996),
(1331, 'Expiration Date', 1, 997),
(1330, 'Expiration', 1, 998),
(1329, 'Error: invalid card number!', 1, 999),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1326, 'Continue', 1, 1002),
(1325, 'My Cart', 1, 1003),
(1324, 'Your cart is empty', 1, 1004),
(1323, 'continue shopping', 1, 1005),
(1322, 'Price', 1, 1006),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1317, 'Proceed', 1, 1011),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1306, 'Please login or create an account for free', 1, 1022),
(1305, 'Log Out', 1, 1023),
(1304, 'My Wish List', 1, 1024),
(1303, 'Filters', 1, 1025),
(1302, 'Price Range', 1, 1026),
(1301, 'Close', 1, 1027),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1298, 'Menu', 1, 1030),
(1297, 'Home', 1, 1031),
(1133, 'أو', 4, 873),
(1134, 'تسجيل الدخول مع', 4, 872),
(1131, 'كلمه السر', 4, 875),
(1132, 'البريد الإلكتروني', 4, 874),
(1130, 'تسجيل', 4, 876),
(1128, 'إرسال', 4, 878),
(1129, 'هل نسيت كلمة المرور', 4, 877),
(1127, 'معلومات عنا', 4, 879),
(1126, 'الاقسام', 4, 880),
(1125, 'رسالتك', 4, 883),
(1124, 'اسم', 4, 882),
(1123, 'اتصل بنا', 4, 881),
(1121, 'شوهدت مؤخرا', 4, 885),
(1122, 'يرجى الاتصال بالإنترنت', 4, 884),
(1120, 'المنتجات المتاحة.', 4, 886),
(1119, 'أعلى بائع', 4, 887),
(1118, 'أعلى بائع', 4, 888),
(1116, 'جميع الفئات', 4, 890),
(1117, 'الأكثر إعجابا', 4, 889),
(1114, 'إزالة', 4, 892),
(1115, 'صفقات', 4, 891),
(1112, 'تخطي مقدمة', 4, 894),
(1113, 'مقدمة', 4, 893),
(1111, 'فهمتك!', 4, 895),
(1110, 'تفاصيل الأمر', 4, 896),
(1108, 'مجموع', 4, 898),
(1109, 'السعر التفاصيل', 4, 897),
(1106, 'الشحن', 4, 900),
(1107, 'المجموع الفرعي', 4, 899),
(1105, 'تفاصيل المنتج', 4, 901),
(1104, 'الجديد', 4, 902),
(1099, 'وصف المنتج', 4, 907),
(1100, 'أضف إلى السلة', 4, 906),
(1101, 'أضف إلى السلة', 4, 905),
(1102, 'في المخزن', 4, 904),
(1103, 'إنتهى من المخزن', 4, 903),
(1097, 'إيقاف', 4, 909),
(1098, 'تفاصيل فنية', 4, 908),
(1096, 'لم يتم العثور على منتجات', 4, 910),
(1095, 'إعادة تعيين الفلاتر', 4, 911),
(1094, 'بحث', 4, 912),
(1092, 'الفئات الفرعية', 4, 914),
(1093, 'الفئات الرئيسية', 4, 913),
(1091, 'طريقة الشحن', 4, 915),
(1089, 'شكرا للتسوق معنا.', 4, 917),
(1090, 'شكرا', 4, 916),
(1088, 'طلباتي', 4, 918),
(1086, 'مفضل', 4, 920),
(1087, 'مواصلة التسوق', 4, 919),
(1085, 'قائمة رغباتك فارغة', 4, 921),
(1083, 'إستكشاف', 4, 923),
(1084, 'متابعة إضافة', 4, 922),
(1081, 'عُد', 4, 925),
(1082, 'Word Press Post التفاصيل', 4, 924),
(1078, 'أدخل الكلمة المفتاحية', 4, 928),
(1079, 'أخبار', 4, 927),
(1080, 'أفضل البائعين', 4, 926),
(1076, 'متجر', 4, 930),
(1077, 'إعدادات', 4, 929),
(1075, 'إعادة تعيين', 4, 931),
(1074, 'اختار اللغة', 4, 932),
(1073, 'إنتهى من المخزن', 4, 933),
(1071, 'سياسة الاسترجاع', 4, 935),
(1072, 'الأحدث', 4, 934),
(1069, 'المدة والخدمات', 4, 937),
(1070, 'سياسة الخصوصية', 4, 936),
(1067, 'أفضل الأطباق', 4, 939),
(1068, 'تخطى', 4, 938),
(1064, 'رمز القسيمة', 4, 942),
(1065, 'فئات الغذاء', 4, 941),
(1066, 'وصفة من اليوم', 4, 940),
(1063, 'قيمة القسيمة', 4, 943),
(1061, 'كوبون', 4, 945),
(1062, 'رمز القسيمة', 4, 944),
(1060, 'ملاحظة للمشتري', 4, 946),
(1057, 'ا - ي', 4, 949),
(1058, 'الكل', 4, 948),
(1059, 'استكشاف المزيد', 4, 947),
(1055, 'السعر : متوسط - منخفض', 4, 951),
(1056, 'ي - ا', 4, 950),
(1054, 'السعر : منخفض - متوسط', 4, 952),
(1053, 'المنتجات الخاصة', 4, 953),
(1052, 'فرز المنتجات', 4, 954),
(1051, 'إلغاء', 4, 955),
(1050, 'الأكثر إعجابا', 4, 956),
(1049, 'خاص', 4, 957),
(1047, 'أحدث', 4, 959),
(1048, 'أعلى بائع', 4, 958),
(1046, 'الإعجابات', 4, 960),
(1045, 'حسابي', 4, 961),
(1043, 'تاريخ الولادة', 4, 963),
(1044, 'التليفون المحمول', 4, 962),
(1042, 'تحديث', 4, 964),
(1041, 'كلمة السر الحالية', 4, 965),
(1040, 'كلمة السر الجديدة', 4, 966),
(1039, 'تغيير كلمة السر', 4, 967),
(1035, 'عدد المنتجات', 4, 972),
(1036, 'تاريخ', 4, 973),
(1037, 'عنوان العميل', 4, 974),
(1038, 'طلبات العملاء', 4, 968),
(1034, 'سعر المنتج', 4, 971),
(1033, 'معرف الطلبات', 4, 970),
(1032, 'حالة الطلب', 4, 969),
(1031, 'الرجاء إضافة عنوان الشحن الجديد لمعالجة فوثر من طلبك', 4, 975),
(1030, 'إضافة عنوان جديد', 4, 976),
(1027, 'الكنية', 4, 979),
(1028, 'الاسم الاول', 4, 978),
(1029, 'انشئ حساب', 4, 977),
(1024, 'عنوان', 4, 982),
(1025, 'هاتف', 4, 983),
(1026, 'بالفعل ميميبر؟', 4, 980),
(1023, 'معلومات الفواتير', 4, 981),
(1022, 'نفس عنوان الشحن', 4, 984),
(1021, 'التالى', 4, 985),
(1020, 'طلب', 4, 986),
(1019, 'عنوان وصول الفواتير', 4, 987),
(1018, 'طريقة الشحن', 4, 988),
(1017, 'منتجات', 4, 989),
(1016, 'المجموع الفرعي', 4, 990),
(1015, 'أسعار المنتجات', 4, 991),
(1014, 'ضريبة', 4, 992),
(1013, 'تكلفة الشحن', 4, 993),
(1012, 'ترتيب ملاحظات', 4, 994),
(1011, 'دفع', 4, 995),
(1010, 'رقم البطاقة', 4, 996),
(1009, 'تاريخ إنتهاء الصلاحية', 4, 997),
(1008, 'انتهاء الصلاحية', 4, 998),
(1007, 'خطأ: رقم بطاقة غير صالح!', 4, 999),
(1006, 'خطأ: تاريخ انتهاء الصلاحية غير صالح!', 4, 1000),
(1005, 'خطأ: رقم كفك غير صالح!', 4, 1001),
(1004, 'استمر', 4, 1002),
(1003, 'سلة التسوق', 4, 1003),
(1002, 'عربة التسوق فارغة', 4, 1004),
(1001, 'مواصلة التسوق', 4, 1005),
(1000, 'السعر', 4, 1006),
(999, 'كمية', 4, 1007),
(998, 'رأي', 4, 1009),
(997, 'بواسطة', 4, 1008),
(996, 'إزالة', 4, 1010),
(995, 'تقدم', 4, 1011),
(994, 'عنوان الشحن', 4, 1012),
(993, 'بلد', 4, 1013),
(992, 'آخر', 4, 1014),
(991, 'منطقة', 4, 1015),
(990, 'مدينة', 4, 1016),
(989, 'الرمز البريدي', 4, 1017),
(988, 'تحديث العنوان', 4, 1019),
(987, 'حالة', 4, 1018),
(986, 'حفظ العنوان', 4, 1020),
(985, 'تسجيل الدخول والتسجيل', 4, 1021),
(984, 'الرجاء تسجيل الدخول أو إنشاء حساب مجانا', 4, 1022),
(983, 'الخروج', 4, 1023),
(982, 'قائمة امنياتي', 4, 1024),
(981, 'الفلاتر', 4, 1025),
(980, 'نطاق السعر', 4, 1026),
(979, 'قريب', 4, 1027),
(978, 'تطبيق', 4, 1028),
(977, 'واضح', 4, 1029),
(976, 'قائمة طعام', 4, 1030),
(975, 'بي؟ نسيت كلمة المرور الخاصة', 4, 1),
(974, 'الصفحة الرئيسية', 4, 1031),
(973, 'إنشاء حساب يعني أنك على ما يرام مع شروط خدمة شوبيفي، سياسة الخصوصية', 4, 2),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, NULL, 1, NULL),
(1461, NULL, 4, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1464, 'إنشاء حساب يعني أنك بخير مع شركائنا', 4, 1033),
(1465, 'Login', 1, 1034),
(1467, 'تسجيل الدخول', 4, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1470, 'تشغيل / إيقاف الإخطارات المحلية', 4, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1473, 'تشغيل / إيقاف الإخطارات', 4, 1036),
(1474, 'Change Language', 1, 1037),
(1476, 'غير اللغة', 4, 1037),
(1477, 'Official Website', 1, 1038),
(1479, 'الموقع الرسمي', 4, 1038),
(1480, 'Rate Us', 1, 1039),
(1482, 'قيمنا', 4, 1039),
(1483, 'Share', 1, 1040),
(1485, 'شارك', 4, 1040),
(1486, 'Edit Profile', 1, 1041),
(1488, 'تعديل الملف الشخصي', 4, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1491, 'خصم النسبة المئوية للسلة بأكملها', 4, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1494, 'خصم إجمالي ثابت للسلة بأكملها', 4, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1497, 'خصم إجمالي ثابت للمنتجات المختارة فقط', 4, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1500, 'خصم النسبة المئوية للمنتجات المختارة فقط', 4, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1502, 'شبكة اتصال إعادة تحميل البيانات', 4, 1047),
(1503, 'Sort by', 1, 1048),
(1504, 'ترتيب حسب', 4, 1048),
(1505, 'Flash Sale', 1, 1049),
(1506, 'بيع مفاجئ', 4, 1049),
(1507, 'ok', 1, 1050),
(1508, 'حسنا', 4, 1050),
(1509, 'Number', 1, 1051),
(1510, 'رقم', 4, 1051),
(1511, 'Expire Month', 1, 1052),
(1512, 'انتهاء الشهر', 4, 1052),
(1513, 'Expire Year', 1, 1053),
(1514, 'سنة انتهاء الصلاحية', 4, 1053),
(1515, 'Payment Method', 1, 1054),
(1516, 'طريقة الدفع او السداد', 4, 1054),
(1517, 'Status', 1, 1055),
(1518, 'الحالة', 4, 1055),
(1519, 'And', 1, 1056),
(1520, 'و', 4, 1056);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `directory` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `languages_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`, `languages_status`) VALUES
(1, 'English', 'en', 'resources/assets/images/language_flags/1486556365.503984030_english.jpg', 'english', 1, 'ltr', 1, 1),
(4, 'عربى', 'ar', 'resources/assets/images/language_flags/1502799254.1501241757.uae.jpg', 'arabic', 4, 'rtl', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(100) NOT NULL,
  `liked_customers_id` int(100) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(100) NOT NULL,
  `min_level` int(100) NOT NULL,
  `max_level` int(100) NOT NULL,
  `products_id` int(100) NOT NULL,
  `inventory_ref_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage_min_max`
--

INSERT INTO `manage_min_max` (`min_max_id`, `min_level`, `max_level`, `products_id`, `inventory_ref_id`) VALUES
(1, 10, 50, 81, '4,5'),
(4, 5, 30, 82, '0'),
(5, 55, 100, 83, '0'),
(6, 15, 50, 80, '9'),
(7, 5, 100, 81, '11'),
(8, 5, 25, 81, '13'),
(9, 10, 50, 81, '0'),
(10, 1, 10, 78, '0'),
(11, 1, 10, 77, '29,47'),
(12, 1, 10, 76, '0'),
(13, 1, 10, 75, '35,49'),
(14, 1, 10, 73, '0'),
(15, 1, 10, 72, '0'),
(16, 1, 10, 71, '0'),
(17, 1, 10, 70, '0'),
(18, 1, 10, 69, '0'),
(19, 1, 10, 68, '0'),
(20, 1, 10, 67, '0'),
(21, 1, 10, 66, '0'),
(22, 1, 10, 65, '0'),
(23, 1, 10, 64, '0'),
(24, 1, 10, 63, '0'),
(25, 1, 10, 62, '0'),
(26, 1, 10, 61, '0'),
(27, 1, 10, 60, '0'),
(28, 1, 10, 59, '0'),
(29, 1, 10, 58, '0'),
(30, 1, 10, 57, '0'),
(31, 1, 10, 56, '0'),
(32, 1, 10, 55, '0'),
(33, 1, 10, 54, '0'),
(34, 1, 10, 53, '0'),
(35, 1, 10, 52, '0'),
(36, 1, 10, 51, '0'),
(37, 1, 10, 50, '0'),
(38, 1, 10, 49, '0'),
(39, 1, 10, 48, '0'),
(40, 1, 10, 47, '0'),
(41, 1, 10, 46, '0'),
(42, 1, 10, 45, '0'),
(43, 1, 10, 44, '0'),
(44, 1, 10, 43, '0'),
(45, 1, 10, 42, '0'),
(46, 1, 10, 41, '0'),
(47, 1, 10, 40, '0'),
(48, 1, 10, 39, '0'),
(49, 1, 10, 38, '0'),
(50, 1, 10, 37, '0'),
(51, 1, 10, 36, '0'),
(52, 1, 10, 35, '0'),
(53, 1, 10, 34, '0'),
(54, 1, 10, 33, '0'),
(55, 1, 10, 32, '0'),
(56, 1, 10, 31, '0'),
(57, 1, 10, 30, '0'),
(58, 1, 10, 29, '0'),
(59, 1, 10, 28, '0'),
(60, 1, 10, 27, '0'),
(61, 1, 10, 26, '0'),
(62, 1, 10, 25, '0'),
(63, 1, 10, 24, '0'),
(64, 1, 10, 23, '0'),
(65, 1, 10, 22, '0'),
(66, 1, 10, 21, '0'),
(67, 1, 10, 20, '0'),
(68, 1, 10, 19, '0'),
(69, 1, 10, 18, '0'),
(70, 1, 10, 17, '0'),
(71, 1, 10, 16, '0'),
(72, 1, 10, 15, '0'),
(73, 1, 10, 14, '0'),
(74, 1, 10, 13, '0'),
(75, 1, 10, 12, '0'),
(76, 1, 10, 11, '0'),
(77, 1, 10, 10, '0'),
(78, 1, 10, 9, '0'),
(79, 1, 10, 8, '0'),
(80, 1, 10, 7, '0'),
(81, 1, 10, 6, '0'),
(82, 1, 10, 5, '0'),
(83, 1, 10, 4, '0'),
(84, 1, 10, 2, '0'),
(85, 1, 10, 1, '0'),
(86, 1, 10, 97, '0'),
(87, 0, 0, 98, '125'),
(88, 0, 0, 99, '129'),
(89, 1, 10, 98, '128'),
(90, 0, 0, 99, '129');

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(100) NOT NULL,
  `admin_type_id` tinyint(1) NOT NULL DEFAULT '0',
  `dashboard_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT '0',
  `categories_view` tinyint(1) NOT NULL DEFAULT '0',
  `categories_create` tinyint(1) NOT NULL DEFAULT '0',
  `categories_update` tinyint(1) NOT NULL DEFAULT '0',
  `categories_delete` tinyint(1) NOT NULL DEFAULT '0',
  `products_view` tinyint(1) NOT NULL DEFAULT '0',
  `products_create` tinyint(1) NOT NULL DEFAULT '0',
  `products_update` tinyint(1) NOT NULL DEFAULT '0',
  `products_delete` tinyint(1) NOT NULL DEFAULT '0',
  `news_view` tinyint(1) NOT NULL DEFAULT '0',
  `news_create` tinyint(1) NOT NULL DEFAULT '0',
  `news_update` tinyint(1) NOT NULL DEFAULT '0',
  `news_delete` tinyint(1) NOT NULL DEFAULT '0',
  `customers_view` tinyint(1) NOT NULL DEFAULT '0',
  `customers_create` tinyint(1) NOT NULL DEFAULT '0',
  `customers_update` tinyint(1) NOT NULL DEFAULT '0',
  `customers_delete` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_view` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_create` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_update` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_view` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_create` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_update` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_delete` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_view` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_send` tinyint(1) NOT NULL DEFAULT '0',
  `orders_view` tinyint(1) NOT NULL DEFAULT '0',
  `orders_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `reports_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT '0',
  `language_view` tinyint(1) NOT NULL DEFAULT '0',
  `language_create` tinyint(1) NOT NULL DEFAULT '0',
  `language_update` tinyint(1) NOT NULL DEFAULT '0',
  `language_delete` tinyint(1) NOT NULL DEFAULT '0',
  `profile_view` tinyint(1) NOT NULL DEFAULT '0',
  `profile_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_view` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_create` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_delete` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL,
  `manufacturers_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_image` mediumtext COLLATE utf8_unicode_ci,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `manufacturers_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` mediumtext COLLATE utf8_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `news_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`) VALUES
(6, 'resources/assets/images/news_images/1531930680.blog-img-1.jpg', '2017-08-22 06:36:32', '2018-11-19 01:58:01', 1, 1, 'tools-and-technology'),
(7, 'resources/assets/images/news_images/1531930697.blog-img-3.jpg', '2017-08-22 07:00:29', '2018-07-18 04:18:17', 1, 1, 'why-to-choose-this-app-for-your-project'),
(8, 'resources/assets/images/news_images/1504092360.about.svg', '2017-08-22 07:03:16', '2018-07-10 01:51:31', 1, 0, 'about-us'),
(9, 'resources/assets/images/news_images/1531932512.1504092640.laravel2.svg', '2017-08-22 07:57:33', '2018-07-18 04:48:32', 1, 0, 'laravel'),
(11, 'resources/assets/images/news_images/1504091780.restaurant.svg', '2017-08-22 08:04:29', '2018-07-10 01:52:00', 1, 0, 'resturant'),
(12, 'resources/assets/images/news_images/1504091963.fashion.svg', '2017-08-22 08:06:23', '2018-07-10 01:52:07', 1, 0, 'fashion'),
(13, 'resources/assets/images/news_images/1504092054.electronics.svg', '2017-08-22 08:07:23', '2018-07-10 01:52:17', 1, 0, 'electronics'),
(14, 'resources/assets/images/news_images/1504091642.language.svg', '2017-08-22 08:10:39', '2018-07-10 01:52:25', 1, 0, 'multi-language'),
(15, 'resources/assets/images/news_images/1504091465.payment.svg', '2017-08-22 08:15:16', '2018-07-10 01:52:32', 1, 0, 'multiple-payment-gateways'),
(16, 'resources/assets/images/news_images/1504091072.push_notifications.svg', '2017-08-22 08:17:28', '2018-07-10 01:53:47', 1, 0, 'push-notifications'),
(17, 'resources/assets/images/news_images/1504091049.local_notifications.svg', '2017-08-22 08:18:08', '2018-07-10 01:54:16', 1, 0, 'local-notifications'),
(18, 'resources/assets/images/news_images/1504091024.products.svg', '2017-08-22 08:18:51', '2018-07-10 01:54:23', 1, 0, 'all-types-of-products-friendly'),
(19, 'resources/assets/images/news_images/1504091001.social.svg', '2017-08-22 08:19:35', '2018-07-10 01:54:31', 1, 0, 'log-in-via-social-accounts'),
(20, 'resources/assets/images/news_images/1504090986.shipping_method.svg', '2017-08-22 08:22:33', '2018-07-10 01:54:38', 1, 0, 'multiple-shipping-methods'),
(21, 'resources/assets/images/news_images/1504090941.theme.svg', '2017-08-22 08:23:22', '2018-07-10 01:54:54', 1, 0, 'interactive-theme-easy-customization-with-sass'),
(22, 'resources/assets/images/news_images/1504090926.coupon_support.svg', '2017-08-22 10:52:53', '2018-07-10 01:55:02', 1, 0, 'coupon-support'),
(23, 'resources/assets/images/news_images/1504090906.profile_pic.svg', '2017-08-22 10:53:45', '2018-07-10 01:55:07', 1, 0, 'profile-picture'),
(25, 'resources/assets/images/news_images/1504090868.wishlist.svg', '2017-08-22 10:55:13', '2018-07-10 01:55:16', 1, 0, 'wish-list'),
(28, 'resources/assets/images/news_images/1504088865.price_filter.svg', '2017-08-22 10:59:38', '2018-07-10 01:56:43', 1, 0, 'price-keyword-filters'),
(29, 'resources/assets/images/news_images/1504088836.sorting.svg', '2017-08-22 11:03:06', '2018-07-10 01:56:47', 1, 0, 'product-sorting'),
(30, 'resources/assets/images/news_images/1504088735.product_searching.svg', '2017-08-22 11:03:53', '2018-07-10 01:56:55', 1, 0, 'product-searching'),
(31, 'resources/assets/images/news_images/1504088705.fully_customizable.svg', '2017-08-22 11:04:34', '2018-07-10 01:57:00', 1, 0, 'fully-customizable'),
(32, 'resources/assets/images/news_images/1504087261.horizontal_Slider.svg', '2017-08-22 11:09:25', '2018-07-10 01:57:05', 1, 0, 'horizontal-product-slider'),
(33, 'resources/assets/images/news_images/1504087219.customization.svg', '2017-08-22 11:13:38', '2018-07-10 01:57:09', 1, 0, 'customizable-features-functionalities'),
(34, 'resources/assets/images/news_images/1504087179.grid_list.svg', '2017-08-22 11:14:16', '2018-07-10 01:57:15', 1, 0, 'product-grid-list-view'),
(36, 'resources/assets/images/news_images/1504015398.shop_page.svg', '2017-08-22 11:16:24', '2018-07-10 01:57:24', 1, 0, 'beautiful-single-shop-page-for-complete-catalog'),
(37, 'resources/assets/images/news_images/1504015381.my_orders.svg', '2017-08-22 11:17:04', '2018-07-10 01:57:28', 1, 0, 'my-orders'),
(38, 'resources/assets/images/news_images/1504015363.about_contact_pages.svg', '2017-08-22 11:17:49', '2018-07-10 01:57:33', 1, 0, 'about-contact-pages'),
(39, 'resources/assets/images/news_images/1504083589.Asset 2.svg', '2017-08-22 11:18:14', '2018-07-10 01:57:43', 1, 0, 'laravel-blog-pages'),
(40, 'resources/assets/images/news_images/1504015347.info_pages.svg', '2017-08-22 11:18:53', '2018-07-10 01:57:48', 1, 0, 'info-pages'),
(42, 'resources/assets/images/news_images/1504015307.recently_item.svg', '2017-08-22 11:24:05', '2018-07-10 01:57:57', 1, 0, 'recently-item-viewed-block-on-home-page'),
(43, 'resources/assets/images/news_images/1504015288.move_to_top.svg', '2017-08-22 11:24:47', '2018-07-10 01:58:03', 1, 0, 'move-to-top-slider-button'),
(44, 'resources/assets/images/news_images/1504015272.product_price_discount.svg', '2017-08-22 11:25:49', '2018-07-10 01:58:08', 1, 0, 'product-price-discount'),
(45, 'resources/assets/images/news_images/1504015246.inventory_management.svg', '2017-08-22 11:26:24', '2018-07-10 01:58:13', 1, 0, 'inventory-management'),
(46, 'resources/assets/images/news_images/1504013177.horizontal_Slider.svg', '2017-08-22 11:26:59', '2018-07-18 04:41:59', 1, 0, 'horizontal-slider-on-home-page'),
(48, 'resources/assets/images/news_images/1504013140.product_additional_attributes.svg', '2017-08-22 11:36:02', '2018-07-18 04:42:17', 1, 0, 'product-additional-attributes-commerce-pricing-attributes'),
(49, 'resources/assets/images/news_images/1504012761.multi_product_images.svg', '2017-08-22 11:36:36', '2018-07-18 04:42:35', 1, 0, 'multiple-product-images'),
(50, 'resources/assets/images/news_images/1503928378.cart_page.svg', '2017-08-22 11:37:11', '2018-07-18 04:43:02', 1, 0, 'beautiful-cart-page'),
(51, 'resources/assets/images/news_images/1503928065.shipping_managment.svg', '2017-08-22 11:37:48', '2018-07-18 04:43:17', 1, 0, 'shipping-address-management'),
(53, 'resources/assets/images/news_images/1503927733.animtions.svg', '2017-08-22 11:38:58', '2018-07-18 04:37:38', 1, 0, 'animations'),
(54, 'resources/assets/images/news_images/1531930664.blog-img-2.jpg', '2018-03-30 11:39:20', '2018-07-18 04:17:44', 1, 1, 'fashion-1');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` mediumtext COLLATE utf8_unicode_ci,
  `categories_icon` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`) VALUES
(6, 'resources/assets/images/news_categories_images/1504092793.app_features.svg', '', 0, NULL, '2017-08-22 06:20:50', '2018-07-10 01:14:35', 'app-features'),
(7, 'resources/assets/images/news_categories_images/1504092906.introduction.svg', '', 0, NULL, '2017-08-22 06:22:50', '2018-07-10 01:14:48', 'introduction'),
(8, 'resources/assets/images/news_categories_images/1504092995.platform.svg', '', 0, NULL, '2017-08-22 06:30:31', '2018-07-10 01:14:59', 'platforms'),
(9, 'resources/assets/images/news_categories_images/1504093080.screenshots.svg', '', 0, NULL, '2017-08-22 06:31:50', '2018-07-10 01:15:03', 'screen-shots');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(100) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(16, 6, 1, 'App Features'),
(17, 6, 2, 'App Functies'),
(18, 6, 4, 'ميزات التطبيق'),
(19, 7, 1, 'Introduction'),
(20, 7, 2, 'Invoering'),
(21, 7, 4, 'المقدمة'),
(22, 8, 1, 'Platforms'),
(23, 8, 2, 'Platforms'),
(24, 8, 4, 'منصات'),
(25, 9, 1, 'Screen Shots'),
(26, 9, 2, 'Schermafbeeldingen'),
(27, 9, 4, 'لقطات الشاشة');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `news_description` text COLLATE utf8_unicode_ci,
  `news_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_viewed` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(6, 1, 'Tools and Technology', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(6, 2, 'Gereedschap en technologie', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(6, 4, 'الأدوات والتكنولوجيا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(7, 1, 'Why To choose this App for your Project?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(7, 2, 'Waarom deze applicatie?', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(7, 4, 'لماذا هذا التطبيق؟', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(8, 1, 'About Us', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(8, 2, 'Over ons', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(8, 4, 'معلومات عنا', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(9, 1, 'Laravel', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(9, 2, 'Laravel', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(9, 4, 'Laravel', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(11, 1, 'Resturant', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(11, 2, 'Resturant', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(11, 4, 'المطعم', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(12, 1, 'Fashion', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(12, 2, 'Mode', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(12, 4, 'موضه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(13, 1, 'Electronics', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(13, 2, 'Elektronica', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(13, 4, 'إلكترونيات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(14, 1, 'Multi Language', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(14, 2, 'Multi Language', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(14, 4, 'متعدد اللغات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(15, 1, 'Multiple Payment Gateways', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(15, 2, 'Meerdere betalingsgateways', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(15, 4, 'بوابات الدفع المتعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(16, 1, 'Push Notifications', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(16, 2, 'Push Notifications', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(16, 4, 'دفع الإخطارات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \\"ليتراسيت\\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \\"ألدوس بايج مايكر\\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(17, 1, 'Local Notifications', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(17, 2, 'Lokale meldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(17, 4, 'الإشعارات المحلية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(18, 1, 'All Types of Products Friendly', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(18, 2, 'Alle soorten producten vriendelijk', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(18, 4, 'جميع أنواع المنتجات ودية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(19, 1, 'Log-in via Social Accounts', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(19, 2, 'Inloggen via sociale accounts', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(19, 4, 'تسجيل الدخول عبر الحسابات الاجتماعية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(20, 1, 'Multiple Shipping Methods', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(20, 2, 'Meerdere verzendmethoden', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(20, 4, 'طرق الشحن متعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(21, 1, 'Interactive Theme & Easy Customization with SaSS', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(21, 2, 'Interactief thema en gemakkelijke aanpassing met SaSS', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(21, 4, 'موضوع التفاعلية وسهولة التخصيص مع ساس', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(22, 1, 'Coupon Support', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(22, 2, 'Coupon Ondersteuning', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(22, 4, 'دعم القسيمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(23, 1, 'Profile Picture', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(23, 2, 'Profielfoto', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(23, 4, 'الصوره الشخصيه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(25, 1, 'Wish List', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(25, 2, 'Wenslijst', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(25, 4, 'الأماني', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(28, 1, 'Price & Keyword Filters', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(28, 2, 'Prijs- en sleutelwoordfilters', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(28, 4, 'السعر والكلمات الرئيسية الفلاتر', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(29, 1, 'Product Sorting', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(29, 2, 'Product sorteren', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(29, 4, 'فرز المنتجات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(30, 1, 'Product Searching', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(30, 2, 'Product zoeken', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(30, 4, 'البحث عن المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(31, 1, 'Fully Customizable', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(31, 2, 'Volledig klantgericht', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(31, 4, 'تماما للتخصيص', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(32, 1, 'Horizontal Product Slider', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(32, 2, 'Horizontale Product Slider', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(32, 4, 'أفقي المنتج المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(33, 1, 'Customizable Features & Functionalities', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(33, 2, 'Aanpasbare eigenschappen en functionaliteit', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(33, 4, 'الميزات والتخصيص وظائف', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(34, 1, 'Product Grid & List View', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(34, 2, 'Product Grid & Lijstweergave', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(34, 4, 'شبكة المنتج وعرض القائمة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(36, 1, 'Beautiful Single Shop Page For Complete Catalog', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(36, 2, 'Mooie single shop pagina voor complete catalogus', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(36, 4, 'جميلة صفحة واحدة متجر للكتالوج الكامل', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(37, 1, 'My Orders', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(37, 2, 'mijn bestellingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(37, 4, 'طلباتي', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(38, 1, 'About & Contact Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(38, 2, 'Over & Contactpagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(38, 4, 'حول الصفحات والاتصال', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(39, 1, 'Laravel Blog Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(39, 2, 'Laravel blog pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(39, 4, 'صفحات لارافيل المدونة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(40, 1, 'Info Pages', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(40, 2, 'Info pagina\'s', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(40, 4, 'صفحات المعلومات', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(42, 1, 'Recently Item Viewed Block on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(42, 2, 'Onlangs Item bekeken Blok op Startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(42, 4, 'تم مؤخرا عرض العنصر بلوك أون هوم بادج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(43, 1, 'Move to Top Slider Button', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(43, 2, 'Ga naar de bovenste schuifknop', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(43, 4, 'الانتقال إلى أعلى زر المنزلق', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(44, 1, 'Product Price Discount', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(44, 2, 'Productprijs korting', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(44, 4, 'خصم سعر المنتج', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(45, 1, 'Inventory Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(45, 2, 'ادارة المخزون', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(45, 4, 'Voorraadbeheer', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(46, 1, 'Horizontal Slider on Home Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(46, 2, 'Horizontale schuifregelaar op de startpagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(46, 4, 'أفقي المنزلق على الصفحة الرئيسية', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(48, 1, 'Product Additional Attributes / Commerce Pricing Attributes', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(48, 2, 'Product Aanvullende Attributen / Handelsprijzen Attributen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(48, 4, 'سمات المنتج الإضافية / سمات التسعير التجاري', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(49, 1, 'Multiple Product Images', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(49, 2, 'Meerdere productafbeeldingen', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);
INSERT INTO `news_description` (`news_id`, `language_id`, `news_name`, `news_description`, `news_url`, `news_viewed`) VALUES
(49, 4, 'صور المنتج متعددة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(50, 1, 'Beautiful Cart Page', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(50, 2, 'Mooie winkelwagen pagina', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(50, 4, 'صفحة العربة الجميلة', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(51, 1, 'Shipping Address Management', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(51, 2, 'Verzendadresbeheer', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(51, 4, 'إدارة عنوان الشحن', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(53, 1, 'Animations', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(53, 2, 'animaties', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(53, 4, 'الرسوم المتحركة', '<p>لها أن جنوب أجزاء. ثم وفي اعتداء الجنوبي. تم الشرقي بمعارضة عدم, فقد أن حاول الآلاف إستعمل. مكن لعدم فهرست الخاطفة و, من تعديل لفرنسا الشهير عرض, أم مدينة السيطرة وصل. كان وقبل لعدم لم, جعل معزّزة والمانيا استطاعوا هو, مع بعض ألمانيا الأراضي. تحت وأزيز وفنلندا بـ, دأبوا أعلنت الإنذار، نفس تم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لها أن جنوب أجزاء. ثم وفي اعتداء الجنوبي. تم الشرقي بمعارضة عدم, فقد أن حاول الآلاف إستعمل. مكن لعدم فهرست الخاطفة و, من تعديل لفرنسا الشهير عرض, أم مدينة السيطرة وصل. كان وقبل لعدم لم, جعل معزّزة والمانيا استطاعوا هو, مع بعض ألمانيا الأراضي. تحت وأزيز وفنلندا بـ, دأبوا أعلنت الإنذار، نفس تم.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لها أن جنوب أجزاء. ثم وفي اعتداء الجنوبي. تم الشرقي بمعارضة عدم, فقد أن حاول الآلاف إستعمل. مكن لعدم فهرست الخاطفة و, من تعديل لفرنسا الشهير عرض, أم مدينة السيطرة وصل. كان وقبل لعدم لم, جعل معزّزة والمانيا استطاعوا هو, مع بعض ألمانيا الأراضي. تحت وأزيز وفنلندا بـ, دأبوا أعلنت الإنذار، نفس تم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(54, 1, 'Fashion', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>\r\n\r\n<p>&nbsp;</p>', NULL, 0),
(54, 2, 'Mode', '<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.<br />\r\n<img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, persecuti neglegentur ei sit, assum accusata atomorum duo ne, timeam philosophia ex sea. Pri malorum blandit splendide id, est ea autem docendi interesset. Et vivendo lobortis has, te ius summo epicurei atomorum, an usu novum officiis intellegebat. Ne ridens dicunt eos, vel ad atqui mazim oratio. At vix nisl dolore similique, vidit dicat elitr eum te. Id eum mentitum nominavi, velit oporteat referrentur mei ei, et sea legimus suscipit. Quis augue altera mei et.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0),
(54, 4, 'موضه', '<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ionic\\" src=\\"https://ionicframework.com/img/ionic-meta.jpg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for angularjs\\" src=\\"http://paislee.io/content/images/2014/Aug/angular_js.svg\\" /></p>\r\n\r\n<p>لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق &quot;ليتراسيت&quot; (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل &quot;ألدوس بايج مايكر&quot; (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</p>\r\n\r\n<p><img alt=\\"Image result for ngcordova\\" src=\\"http://ngcordova.com/img/cta-image.png\\" /></p>', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`) VALUES
(6, 7),
(7, 7),
(8, 7),
(9, 8),
(11, 9),
(12, 9),
(13, 9),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(25, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(53, 6),
(54, 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(5) DEFAULT NULL,
  `delivery_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(5) DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(100) DEFAULT NULL,
  `order_information` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(100) NOT NULL,
  `exclude_product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_download`
--

CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `public_flag` int(11) DEFAULT '0',
  `downloads_flag` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`, `public_flag`, `downloads_flag`) VALUES
(1, 1, 'Pending', 1, 0),
(2, 1, 'Completed', 0, 0),
(3, 1, 'Cancel', 0, 0),
(4, 1, 'Return', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(100) NOT NULL,
  `orders_status_id` int(100) NOT NULL,
  `orders_status_name` varchar(255) NOT NULL,
  `language_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(100) NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'privacy-policy', 1, 1),
(2, 'term-services', 1, 1),
(3, 'refund-policy', 1, 1),
(4, 'about-us', 1, 1),
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 2),
(7, 'refund-policy', 1, 2),
(8, 'about-us', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL,
  `page_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 1),
(3, 'سياسة الخصوصية', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 2),
(6, 'الخدمات المدى', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>\r\n', 1, 3),
(9, 'سياسة الاسترجاع', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>\r\n', 4, 3),
(10, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n	<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n	<li>Etiam eleifend ex eu interdum varius.</li>\r\n	<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n	<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n	<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>\r\n\r\n<p>&nbsp;</p>', 1, 4),
(12, 'معلومات عنا', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>', 4, 4),
(13, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 5),
(15, 'سياسة الخصوصية', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>', 4, 5),
(16, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 6),
(18, 'الخدمات المدى', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>', 4, 6),
(19, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 7),
(21, 'سياسة الاسترجاع', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>', 4, 7),
(22, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></p>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n	<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n	<li>Etiam eleifend ex eu interdum varius.</li>\r\n	<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n	<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n	<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>', 1, 8),
(24, 'معلومات عنا', '<p>الجو تحرير السفن مع بين. تعد مع خيار المتّبعة, كلّ غينيا لعملة أن. الشطر الإثنان لم فقد, به، ٣٠ دارت الدول استراليا،. دنو تصفح موالية أي, عن تحرّك باستخدام لبلجيكا، دنو, و عرض هامش الشطر العدّ. حتى في لإعادة العاصمة.</p>\r\n\r\n<p>شعار وبدأت وتتحمّل من بين. ما أوزار أوروبا ويكيبيديا، لها, يكن تم الحكم ضمنها. دون أم الجنود ديسمبر. أحكم الإنذار، هو بعد, ضرب مدينة اعلان للمجهود عل, مدن بقصف العصبة التقليدية كل. لم حول عقبت بلديهما, وبعض أسيا الأعمال بـ بال. كلا الخطّة الشرقية كل, تم كما قبضتهم الحدود المنتصر, كرسي تصرّف ٣٠ دون.</p>\r\n\r\n<p>ولكسمبورغ واندونيسيا، كل لمّ, والتي لبولندا، بـ الى. أضف تم مسارح الثانية اليابان،, تم يكن دارت تصفح المارق, مع حين واحدة الأعمال المتّبعة. بـ على مشارف نهاية, فكان تحرّك الأمريكية في عدم. ٣٠ أملاً والنفيس التغييرات بها. غريمه الحيلولة أخذ ٣٠, قام عل موالية الهادي التكاليف. في مليارات والديون والإتحاد عدم, بـ ونتج استدعى أفريقيا به،.</p>\r\n\r\n<p>المشترك الشرقية تعد أي, وفي و وأكثرها الرئيسية المعاهدات. أي وبدأت المعاهدات نفس, من بلا عجّل الأمور بولندا،. الأمم إنطلاق عل ولم, عشوائية الأثناء، في مما. مقاطعة الوراء وتم تم, وتنصيب مواقعها بل يكن. تم كنقطة الشتاء، ومن, والإتحاد الرئيسية أي كلّ.</p>\r\n\r\n<p>أي انه الأثنان الجديدة،, لان كل مسرح تزامناً. ذات قد بزمام المضي الإحتفاظ, ٣٠ فسقط أعمال التغييرات لان. ليركز السيء مكثّفة هذه مع, بتطويق والديون تم فعل. بل ولم المبرمة واندونيسيا،, بقصف جيما أحكم هو دار. لم فقامت الشهير العسكري تحت, تصفح الستار والعتاد كما ٣٠.</p>\r\n\r\n<p>في بعض تطوير اوروبا أفريقيا. هو أسر وبعض انذار, أحدث إحكام قتيل، أن قام. مع فصل ونتج بخطوط المزيفة. مع النفط والمانيا لان. بـ تطوير بالرّد فقد.</p>\r\n\r\n<p>بالرّد بالرغم الأرواح أم نفس. من أخذ أخرى فاتّبع وانهاء. قد بشرية مساعدة الإقتصادية وتم, ومن ان جديدة المزيفة. أمّا سبتمبر أم بعض, الصفحة العالمية من أما. حيث بقسوة ابتدعها وقدّموا بل, كل الباهضة الخاسرة كما, تحت بشرية المشترك الاندونيسية و.</p>\r\n\r\n<p>العناد مقاطعة العالمي لم تلك. المزيفة الإقتصادية أن ذلك, إذ حاول اتفاق بالرغم كلّ. ثم أخرى المضي الدنمارك دنو, هو قامت قائمة للأراضي بلا. بلا من كنقطة عسكرياً, نتيجة لعملة المبرمة ان قبل.</p>\r\n\r\n<p>٣٠ دار الأخذ بريطانيا, ومن أم أوسع أواخر إستعمل. الى إستيلاء الواقعة لم, بل أدوات المارق وصل. تسمّى فرنسا وتزويده ٣٠ دنو, لغزو التي انتصارهم بـ حيث. ٣٠ قام فهرست الغالي قُدُماً. من بال أحدث وانتهاءً, حالية عسكرياً الموسوعة أن قبل. أدوات الحكومة ذات مع, الجوي بالتوقيع في على, بـ يبق الأعمال الأسيوي.</p>\r\n\r\n<p>إذ العالم، مسؤولية كلا, نفس إذ أراض بينما عسكرياً. أصقاع بقيادة عرض أم, ودول أسيا أراض ما لان. لمّ ان أجزاء وقامت المتّبعة, ونتج شاسعة المدن ان تحت. وقبل إحتار لمّ أي. شمال بالرّغم ٣٠ حين, عدد يطول اتّجة بتحدّي عل, أم وأزيز بأيدي الا. هذه قد بداية العناد.</p>', 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `payments_setting`
--

CREATE TABLE `payments_setting` (
  `payments_id` int(100) NOT NULL,
  `braintree_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `braintree_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brantree_active` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_enviroment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `publishable_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_active` tinyint(1) NOT NULL DEFAULT '0',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '0',
  `cod_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paypal_status` tinyint(1) NOT NULL DEFAULT '0',
  `paypal_enviroment` tinyint(1) DEFAULT '0',
  `payment_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_enviroment` tinyint(1) NOT NULL,
  `instamojo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_auth_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_client_id` text COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_client_secret` text COLLATE utf8_unicode_ci NOT NULL,
  `instamojo_active` tinyint(1) NOT NULL DEFAULT '0',
  `cybersource_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cybersource_status` tinyint(1) NOT NULL DEFAULT '0',
  `cybersource_enviroment` tinyint(1) NOT NULL DEFAULT '0',
  `hyperpay_enviroment` tinyint(1) NOT NULL DEFAULT '0',
  `hyperpay_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hyperpay_active` tinyint(1) NOT NULL DEFAULT '0',
  `hyperpay_userid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hyperpay_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hyperpay_entityid` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments_setting`
--

INSERT INTO `payments_setting` (`payments_id`, `braintree_enviroment`, `braintree_name`, `braintree_merchant_id`, `braintree_public_key`, `braintree_private_key`, `brantree_active`, `stripe_enviroment`, `stripe_name`, `secret_key`, `publishable_key`, `stripe_active`, `cash_on_delivery`, `cod_name`, `paypal_name`, `paypal_id`, `paypal_status`, `paypal_enviroment`, `payment_currency`, `instamojo_enviroment`, `instamojo_name`, `instamojo_api_key`, `instamojo_auth_token`, `instamojo_client_id`, `instamojo_client_secret`, `instamojo_active`, `cybersource_name`, `cybersource_status`, `cybersource_enviroment`, `hyperpay_enviroment`, `hyperpay_name`, `hyperpay_active`, `hyperpay_userid`, `hyperpay_password`, `hyperpay_entityid`) VALUES
(1, '0', 'Braintree', 'wrv3cwbft6n3bg5g', '2bz5kxcj2gs3hdbx', '55ae08cb061e36dca59aaf2a883190bf', 1, '0', 'Stripe', 'sk_test_Gsz7jL4wRikI8YFaNzbwxKOF', 'pk_test_cCAEC6EejawuAvsvR9bhKrGR', 1, 1, 'Cash On Delivery', 'Paypal', 'AULJ0Q_kdXwEbi7PCBunUBJc4Kkg2vvdazF8kJoywAV9_i7iJMQphB9NLwdR0v2BAUlLF974iTrynbys', 1, 0, 'USD', 0, 'Instamojo', 'c5a348bd5fcb4c866074c48e9c77c6c4', '99448897defb4423b921fe47e0851b86', 'test_9l7MW8I7c2bwIw7q0koc6B1j5NrvzyhasQh', 'test_m9Ey3Jqp9AfmyWKmUMktt4K3g1uMIdapledVRRYJha7WinxOsBVV5900QMlwvv3l2zRmzcYDEOKPh1cvnVedkAKtHOFFpJbqcoNCNrjx1FtZhtDMkEJFv9MJuXD', 1, 'cybersource', 0, 0, 0, 'hyperpay', 1, '8a82941865340dc8016537cdac1e0841', 'sXrYy8pnsf', '8a82941865340dc8016537ce08db0845');

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `payment_name` varchar(32) NOT NULL,
  `sub_name_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `name`, `language_id`, `payment_name`, `sub_name_1`, `sub_name_2`) VALUES
(1, 'Braintree', 1, 'Braintree', 'Credit Card', 'Paypal'),
(2, 'Braintree', 2, 'Braintree', 'Kreditkarte', 'Paypal'),
(3, 'برينتر', 4, 'Braintree', 'بطاقة ائتمان', 'باي بال'),
(4, 'Stripe', 1, 'Stripe', '', ''),
(5, 'Paypal', 1, 'Paypal', '', ''),
(6, 'Cash on Delivery', 1, 'Cash On Delivery', '', ''),
(7, 'Stripe', 2, 'Stripe', '', ''),
(8, 'Paypal', 2, 'Paypal', '', ''),
(9, 'Nachnahme', 2, 'Cash On Delivery', '', ''),
(10, 'شريط', 4, 'Stripe', '', ''),
(11, 'باي بال', 4, 'Paypal', '', ''),
(12, 'الدفع عن الاستلام', 4, 'Cash On Delivery', '', ''),
(21, 'انسٹاموجو', 4, 'Instamojo', '', ''),
(20, 'Instamojo', 2, 'Instamojo', '', ''),
(19, 'Instamojo', 1, 'Instamojo', '', ''),
(22, 'Cybersoure', 1, 'cybersource', '', ''),
(23, 'Cybersoure', 4, 'cybersource', '', ''),
(24, 'Hyperpay', 1, 'hyperpay', '', ''),
(25, 'ہائپرپی', 4, 'hyperpay', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_image` mediumtext COLLATE utf8_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_weight_unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(100) NOT NULL,
  `low_limit` int(4) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `products_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `products_type` int(1) NOT NULL DEFAULT '0',
  `products_min_order` int(100) NOT NULL DEFAULT '1',
  `products_max_stock` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`) VALUES
(1, 0, '', 'resources/assets/images/product_images/1502174889.pPOLO2-26314766_standard_v400.jpg', '85.00', '2017-08-07 11:44:10', '2018-11-19 01:30:58', NULL, '0.500', 'Gram', 1, 1, 0, 12, 6, 0, 0, 'classic-fit-soft-touch-polo', 0, 1, 0),
(2, 0, '', 'resources/assets/images/product_images/1502114036.pPOLO2-26316336_standard_v400.jpg', '98.50', '2017-08-07 01:53:56', '2018-11-19 01:30:37', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 5, 0, 0, 'hampton-classic-fit-shirt', 0, 1, 0),
(3, 9999, '', 'resources/assets/images/product_images/1502174346.pPOLO2-26314826_standard_v400.jpg', '85.00', '2017-08-08 06:39:06', NULL, NULL, '0.500', 'Kilogram', 1, 1, NULL, 0, 0, 0, 0, 'classic-fit-cotton-polo-shirt-1', 0, 1, NULL),
(4, -1, '', 'resources/assets/images/product_images/1502174364.pPOLO2-26314826_standard_v400.jpg', '85.00', '2017-08-08 06:39:24', '2018-11-19 01:30:00', NULL, '0.500', 'Kilogram', 1, 1, 0, 5, 4, 0, 0, 'classic-fit-cotton-polo-shirt', 0, 1, 0),
(5, 0, '', 'resources/assets/images/product_images/1502176579.pPOLO2-26316348_standard_v400.jpg', '98.50', '2017-08-08 07:16:19', '2018-11-19 01:29:38', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 3, 0, 0, 'custom-slim-fit-cotton-shirt', 0, 1, 0),
(6, 0, '', 'resources/assets/images/product_images/1502177321.pPOLO2-26314634_standard_v400.jpg', '89.50', '2017-08-08 07:28:41', '2018-11-19 01:29:15', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 2, 0, 0, 'custom-slim-fit-weathered-polo', 0, 1, 0),
(7, 0, '', 'resources/assets/images/product_images/1502180946.pPOLO2-26008917_standard_v400.jpg', '98.50', '2017-08-08 08:29:06', '2018-11-19 01:28:52', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'standard-fit-cotton-shirt', 0, 1, 0),
(8, 0, '', 'resources/assets/images/product_images/1502181584.pPOLO2-26008953_standard_v400.jpg', '125.50', '2017-08-08 08:39:44', '2018-11-19 01:28:19', NULL, '0.500', 'Kilogram', 1, 1, 0, 8, 4, 0, 0, 'standard-fit-cotton-popover', 0, 1, 0),
(9, 0, '', 'resources/assets/images/product_images/1502182426.pPOLO2-26008935_standard_v400.jpg', '89.50', '2017-08-08 08:53:46', '2018-11-19 01:27:58', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 4, 0, 0, 'standard-fit-madras-popover', 0, 1, 0),
(10, 0, '', 'resources/assets/images/product_images/1502186978.pPOLO2-26315018_standard_v400.jpg', '165.00', '2017-08-08 10:09:38', '2018-11-19 01:26:47', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'standard-fit-cotton-workshirt', 0, 1, 0),
(11, 0, '', 'resources/assets/images/product_images/1502187824.pPOLO2-26317497_standard_v400.jpg', '145.00', '2017-08-08 10:23:44', '2018-11-19 01:26:26', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'eldridge-super-slim-jean', 0, 1, 0),
(12, 0, '', 'resources/assets/images/product_images/1502189779.pPOLO2-26316198_standard_v360x480.jpg', '165.00', '2017-08-08 10:56:19', '2018-11-19 01:26:06', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'sullivan-slim-fit-jean', 0, 1, 0),
(13, 0, '', 'resources/assets/images/product_images/1502190187.pPOLO2-26315541_standard_v400.jpg', '125.00', '2017-08-08 11:03:07', '2018-11-19 01:25:29', NULL, '0.500', 'Kilogram', 1, 1, 0, 6, 3, 0, 0, 'hampton-straight-fit-jean', 0, 1, 0),
(14, 0, '', 'resources/assets/images/product_images/1502190590.pPOLO2-26404754_standard_v400.jpg', '90.00', '2017-08-08 11:09:50', '2018-11-19 01:25:04', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'laxman-tech-suede-sneaker-1', 0, 1, 0),
(15, 0, '', 'resources/assets/images/product_images/1502191191.pPOLO2-26256326_standard_v400.jpg', '69.50', '2017-08-08 11:19:51', '2018-11-19 01:21:48', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 2, 0, 0, 'vaughn-suede-slip-on-sneaker', 0, 1, 0),
(16, 0, '', 'resources/assets/images/product_images/1502191373.pPOLO2-21857429_standard_v400.jpg', '175.00', '2017-08-08 11:22:53', '2018-11-19 01:21:04', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'workington-leather-driver', 0, 1, 0),
(17, -1, '', 'resources/assets/images/product_images/1502191568.pPOLO2-26256404_standard_v400.jpg', '275.00', '2017-08-08 11:26:08', '2018-11-19 01:20:33', NULL, '0.500', 'Gram', 1, 1, 0, 1, 6, 0, 1, 'dillian-ii-suede-chelsea-boot', 0, 1, 0),
(18, 0, '', 'resources/assets/images/product_images/1502191856.pPOLO2-24354359_standard_v400.jpg', '559.00', '2017-08-08 11:30:56', '2018-11-19 01:20:03', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'brunel-leather-work-boot', 0, 1, 0),
(19, 0, '', 'resources/assets/images/product_images/1502192066.pPOLO2-25784541_standard_v400.jpg', '89.00', '2017-08-08 11:34:26', '2018-11-19 01:19:35', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'laxman-tech-suede-sneaker', 0, 1, 0),
(20, 0, 'Polo', 'resources/assets/images/product_images/1502192365.pPOLO2-12181663_standard_v400.jpg', '250.00', '2017-08-08 11:39:25', '2018-11-19 01:15:06', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'round-sunglasses', 0, 1, 0),
(21, 0, 'Polo', 'resources/assets/images/product_images/1502193410.pPOLO2-19116009_standard_v400.jpg', '150.00', '2017-08-08 11:56:50', '2018-11-19 01:14:30', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'nautical-striped-sunglasses', 0, 1, 0),
(22, 0, '', 'resources/assets/images/product_images/1502193577.pPOLO2-24933842_standard_v400.jpg', '129.00', '2017-08-08 11:59:37', '2018-11-19 01:13:56', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'polo-square-sunglasses', 0, 1, 0),
(23, 0, '', 'resources/assets/images/product_images/1502193710.pPOLO2-24128696_standard_v400.jpg', '229.00', '2017-08-08 12:01:50', '2018-11-19 01:09:59', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'polo-aviator-sunglasses', 0, 1, 0),
(24, 0, '', 'resources/assets/images/product_images/1502194893.pPOLO2-25759503_alternate1_v400.jpg', '198.00', '2017-08-08 12:21:33', '2018-11-19 01:09:02', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'strapless-jersey-maxidress', 0, 1, 0),
(25, 0, '', 'resources/assets/images/product_images/1502195102.pPOLO2-25759495_alternate1_v400.jpg', '258.00', '2017-08-08 12:25:02', '2018-11-19 01:08:17', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'madras-fit-and-flare-dress', 0, 1, 0),
(26, 0, '', 'resources/assets/images/product_images/1502195452.pPOLO2-26059809_alternate1_v400.jpg', '298.00', '2017-08-08 12:30:52', '2018-11-19 01:07:27', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'silk-crepe-shirtdress', 0, 1, 0),
(27, 0, '', 'resources/assets/images/product_images/1502195642.pPOLO2-25854363_alternate1_v400.jpg', '198.00', '2017-08-08 12:34:02', '2018-11-19 01:06:51', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'beaded-jersey-gown', 0, 1, 0),
(28, 0, '', 'resources/assets/images/product_images/1502196660.pPOLO2-25759710_standard_v400.jpg', '98.00', '2017-08-08 12:51:00', '2018-11-19 01:06:09', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'striped-cotton-crewneck-tee', 0, 1, 0),
(29, 0, '', 'resources/assets/images/product_images/1502197951.pPOLO2-25759868_standard_v400.jpg', '145.00', '2017-08-08 01:12:31', '2018-11-19 01:02:22', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'cotton-blend-crewneck-pullover', 0, 1, 0),
(30, 0, '', 'resources/assets/images/product_images/1502198422.pPOLO2-26060127_standard_v400.jpg', '85.00', '2017-08-08 01:20:22', '2018-11-19 01:01:05', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'crewneck-long-sleeve-top', 0, 1, 0),
(31, 0, '', 'resources/assets/images/product_images/1502199326.pPOLO2-26451235_standard_v400.jpg', '205.00', '2017-08-08 01:35:26', '2018-11-19 12:58:36', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'tompkins-skinny-crop-jean', 0, 1, 0),
(32, 0, '', 'resources/assets/images/product_images/1502200730.pPOLO2-26328182_standard_v400.jpg', '145.00', '2017-08-08 01:58:50', '2018-11-19 12:58:09', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'tompkins-skinny-crop-jeans', 0, 1, 0),
(33, 0, '', 'resources/assets/images/product_images/1502201105.pPOLO2-26328155_standard_v400.jpg', '215.00', '2017-08-08 02:05:05', '2018-11-19 12:57:35', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'tompkins-skinny-jean', 0, 1, 0),
(34, 0, '', 'resources/assets/images/product_images/1502261147.pPOLO2-25480910_alternate2_v360x480.jpg', '468.00', '2017-08-09 06:45:47', '2018-11-19 12:55:54', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'small-sullivan-saddle-bag', 0, 1, 0),
(35, 0, '', 'resources/assets/images/product_images/1502261648.pPOLO2-26161986_standard_v400.jpg', '128.00', '2017-08-09 06:54:08', '2018-11-19 12:23:33', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'patchwork-canvas-big-pony-tote', 0, 1, 0),
(36, 0, '', 'resources/assets/images/product_images/1502261990.pPOLO2-26161985_standard_v400.jpg', '98.00', '2017-08-09 06:59:50', '2018-11-19 12:23:09', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'color-blocked-big-pony-tote', 0, 1, 0),
(37, 0, '', 'resources/assets/images/product_images/1502262425.pPOLO2-25480914_standard_v400.jpg', '398.00', '2017-08-09 07:07:05', '2018-11-19 12:22:40', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'laser-cut-floral-leather-tote', 0, 1, 0),
(38, 0, '', 'resources/assets/images/product_images/1502263616.pPOLO2-11724079_lifestyle_v400.jpg', '29.50', '2017-08-09 07:26:56', '2018-11-19 12:22:16', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'bear-print-cotton-coverall', 0, 1, 0),
(39, 0, '', 'resources/assets/images/product_images/1502264917.pPOLO2-21465903_lifestyle_v400.jpg', '29.50', '2017-08-09 07:48:37', '2018-11-19 12:21:51', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'striped-cotton-henley-coverall', 0, 1, 0),
(40, 0, '', 'resources/assets/images/product_images/1502265209.pPOLO2-21466203_lifestyle_v400.jpg', '29.50', '2017-08-09 07:53:29', '2018-11-19 12:20:56', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'striped-cotton-henley-bodysuit', 0, 1, 0),
(41, 0, '', 'resources/assets/images/product_images/1502265614.pPOLO2-22839467_lifestyle_v400.jpg', '103.50', '2017-08-09 08:00:14', '2018-11-19 12:20:36', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'abc-block-4-piece-gift-basket', 0, 1, 0),
(42, 0, '', 'resources/assets/images/product_images/1502267748.pPOLO2-26397584_standard_v400.jpg', '25.00', '2017-08-09 08:35:48', '2018-11-19 12:20:15', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'cotton-polo-dress-bloomer', 0, 1, 0),
(43, -1, '', 'resources/assets/images/product_images/1502268005.pPOLO2-25655666_standard_v400.jpg', '35.00', '2017-08-09 08:40:05', '2018-11-19 12:19:49', NULL, '0.500', 'Kilogram', 1, 0, 0, 1, 3, 0, 0, 'striped-polo-dress-bloomer', 0, 1, 0),
(44, -1, '', 'resources/assets/images/product_images/1502268706.pPOLO2-25240665_standard_v400.jpg', '55.50', '2017-08-09 08:51:46', '2018-11-19 12:19:24', NULL, '0.500', 'Kilogram', 1, 1, 0, 1, 2, 0, 0, 'ruffled-floral-dress-bloomer', 0, 1, 0),
(45, 0, '', 'resources/assets/images/product_images/1502273498.pPOLO2-26000954_standard_v400.jpg', '29.50', '2017-08-09 10:11:38', '2018-11-19 12:12:31', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'striped-cotton-blanket', 0, 1, 0),
(46, 0, '', 'resources/assets/images/product_images/1502273672.pPOLO2-23450031_lifestyle_v400.jpg', '75.00', '2017-08-09 10:14:32', '2018-11-19 12:12:01', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 0, 0, 0, 'crepe-swaddling-blanket-set', 0, 1, 0),
(47, 0, '', 'resources/assets/images/product_images/1502273766.pPOLO2-23700424_standard_v400.jpg', '45.00', '2017-08-09 10:16:06', '2018-11-19 12:11:35', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'plush-blanket', 0, 1, 0),
(48, 0, '', 'resources/assets/images/product_images/1502274870.pPOLO2-25426585_alternate7_v360x480.jpg', '470.00', '2017-08-09 10:34:30', '2018-11-19 12:11:13', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 3, 0, 0, 'rl-bowery-sateen-duvet-cover', 0, 1, 0),
(49, 0, '', 'resources/assets/images/product_images/1502275397.pPOLO2-23742156_standard_v360x480.jpg', '500.00', '2017-08-09 10:43:17', '2018-11-19 12:10:44', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'bedford-jacquard-duvet-cover', 0, 1, 0),
(50, 0, '', 'resources/assets/images/product_images/1502275538.pPOLO2-25426632_alternate7_v400.jpg', '160.00', '2017-08-09 10:45:38', '2018-11-19 12:09:47', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'monaco-sateen-duvet-cover', 0, 1, 0),
(51, 0, '', 'resources/assets/images/product_images/1502276177.pPOLO2-18063379_mailer_v360x480.jpg', '130.00', '2017-08-09 10:56:17', '2018-11-19 12:09:25', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'pink-palmer-sham', 0, 1, 0),
(52, 0, '', 'resources/assets/images/product_images/1502278983.pPOLO2-16519324_lifestyle_v400.jpg', '255.00', '2017-08-09 11:43:03', '2018-11-19 12:09:01', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'rl-beaded-dylan-pillow', 0, 1, 0),
(53, 0, '', 'resources/assets/images/product_images/1502279135.pPOLO2-13318847_lifestyle_v400.jpg', '595.00', '2017-08-09 11:45:35', '2018-11-19 12:08:39', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'great-basin-throw-pillow', 0, 1, 0),
(54, 0, '', 'resources/assets/images/product_images/1502279578.pPOLO2-18086941_lifestyle_v400.jpg', '395.00', '2017-08-09 11:52:58', '2018-11-19 12:08:18', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'cabled-cashmere-travel-set', 0, 1, 0),
(55, 0, '', 'resources/assets/images/product_images/1502282050.pPOLO2-18177063_lifestyle_v360x480.jpg', '5.00', '2017-08-09 12:34:10', '2018-11-19 12:06:28', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'langdon-embroidered-bathrobe', 0, 1, 0),
(56, 0, '', 'resources/assets/images/product_images/1502347627.pPOLO2-25995642_standard_v400.jpg', '49.50', '2017-08-10 06:47:07', '2018-11-19 12:06:01', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'cotton-mesh-polo-shirt-1', 0, 1, 0),
(57, 0, '', 'resources/assets/images/product_images/1502348404.pPOLO2-23625768_standard_v400.jpg', '29.50', '2017-08-10 07:00:04', '2018-11-19 12:05:29', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'cotton-mesh-polo-shirt', 0, 1, 0),
(58, 0, '', 'resources/assets/images/product_images/1502349078.pPOLO2-25961612_standard_v400.jpg', '55.00', '2017-08-10 07:11:18', '2018-11-19 12:04:28', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'banner-cotton-mesh-polo', 0, 1, 0),
(59, 0, '', 'resources/assets/images/product_images/1502349501.pPOLO2-25563187_standard_v400.jpg', '45.00', '2017-08-10 07:18:21', '2018-11-19 12:04:05', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 2, 0, 0, 'cotton-mesh-long-sleeve-polo', 0, 1, 0),
(60, 0, '', 'resources/assets/images/product_images/1502350673.pPOLO2-25961171_standard_v400.jpg', '45.00', '2017-08-10 07:37:53', '2018-11-19 12:03:09', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'plaid-cotton-twill-workshirt', 0, 1, 0),
(61, 0, '', 'resources/assets/images/product_images/1502351678.pPOLO2-25961083_standard_v400.jpg', '45.00', '2017-08-10 07:54:38', '2018-11-19 12:02:16', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'cotton-oxford-sport-shirt', 0, 1, 0),
(62, -1, '', 'resources/assets/images/product_images/1502351882.pPOLO2-24921004_standard_v400.jpg', '55.00', '2017-08-10 07:58:02', '2018-11-19 12:01:47', NULL, '0.500', 'Kilogram', 1, 1, 0, 1, 4, 0, 0, 'cotton-mesh-workshirt', 0, 1, 0),
(63, 0, '', 'resources/assets/images/product_images/1502352055.pPOLO2-25363631_standard_v400.jpg', '50.00', '2017-08-10 08:00:55', '2018-11-19 12:01:16', NULL, '0.500', 'Kilogram', 1, 0, 0, 0, 1, 0, 0, 'striped-cotton-shirt-1', 0, 1, 0),
(64, 0, '', 'resources/assets/images/product_images/1502352545.pPOLO2-25363631_standard_v400.jpg', '55.00', '2017-08-10 08:09:05', '2018-11-19 12:00:20', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'striped-cotton-shirt', 0, 1, 0),
(65, -1, '', 'resources/assets/images/product_images/1502353123.pPOLO2-10531663_standard_v400.jpg', '45.00', '2017-08-10 08:18:43', '2018-11-19 11:59:52', NULL, '0.500', 'Kilogram', 1, 1, 0, 1, 3, 0, 0, 'slim-mott-wash-jean', 0, 1, 0),
(66, 0, '', 'resources/assets/images/product_images/1502359349.pPOLO2-25961644_lifestyle_v400.jpg', '39.50', '2017-08-10 10:02:29', '2018-11-19 11:59:27', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'eldridge-stretch-skinny-jean', 0, 1, 0),
(67, 0, '', 'resources/assets/images/product_images/1502362089.pPOLO2-14689748_standard_v400.jpg', '550.00', '2017-08-10 10:48:09', '2018-11-19 11:58:39', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 3, 0, 0, 'polo-i-wool-twill-suit', 0, 1, 0),
(68, 0, '', 'resources/assets/images/product_images/1502362408.pPOLO2-24922918_standard_v400.jpg', '49.50', '2017-08-10 10:53:28', '2018-11-19 11:58:04', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'belted-stretch-cotton-chino', 0, 1, 0),
(69, 0, '', 'resources/assets/images/product_images/1502362738.pPOLO2-25464515_lifestyle_v400.jpg', '40.00', '2017-08-10 10:58:58', '2018-11-19 11:57:11', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 0, 0, 0, 'batten-canvas-ez-boat-shoe', 0, 1, 0),
(70, 0, '', 'resources/assets/images/product_images/1502363119.pPOLO2-25464682_standard_v400.jpg', '45.00', '2017-08-10 11:05:19', '2018-11-19 08:39:03', NULL, '0.500', 'Gram', 1, 1, 0, 0, 4, 0, 0, 'propell-ii-sneaker', 0, 1, 0),
(71, 0, '', 'resources/assets/images/product_images/1502363378.pPOLO2-25464575_standard_v400.jpg', '30.00', '2017-08-10 11:09:38', '2018-11-19 08:38:37', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 1, 0, 0, 'banks-sandal', 0, 1, 0),
(72, 0, '', 'resources/assets/images/product_images/1502364150.pPOLO2-26091141_standard_v400.jpg', '59.00', '2017-08-10 11:22:30', '2018-11-19 08:38:03', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 2, 0, 0, 'madras-cotton-shirtdress', 0, 1, 0),
(73, 0, '', 'resources/assets/images/product_images/1502364697.pPOLO2-23643008_standard_v400.jpg', '55.00', '2017-08-10 11:31:37', '2018-11-19 08:37:32', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 5, 0, 0, 'cotton-chino-belted-shirtdress', 0, 1, 0),
(74, 0, '', 'resources/assets/images/product_images/1502364932.pPOLO2-25835439_standard_v400.jpg', '45.00', '2017-08-10 11:35:32', '2018-11-19 08:35:49', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 3, 0, 0, 'striped-off-the-shoulder-dress', 1, 1, 0),
(75, 0, '', 'resources/assets/images/product_images/1502365189.pPOLO2-26091856_standard_v400.jpg', '49.50', '2017-08-10 11:39:49', '2018-11-19 08:33:37', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 3, 0, 0, 'button-front-denim-skirt', 1, 1, 5),
(76, 0, '', 'resources/assets/images/product_images/1502365515.pPOLO2-26091862_alternate1_v400.jpg', '49.50', '2017-08-10 11:45:15', '2018-11-19 08:33:01', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 6, 0, 0, 'floral-skirt', 0, 1, 5),
(77, -16, '', 'resources/assets/images/product_images/1502366105.pPOLO2-26091049_alternate1_v400.jpg', '56.50', '2017-08-10 11:55:05', '2018-11-19 08:31:40', NULL, '0.500', 'Kilogram', 1, 1, 0, 4, 5, 0, 0, 'pleated-madras-skirt', 1, 2, 8),
(78, 0, '', 'resources/assets/images/product_images/1502366342.pPOLO2-26090785_standard_v400.jpg', '195.00', '2017-08-10 11:59:02', '2018-11-19 08:30:45', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 8, 0, 0, 'cable-knit-cashmere-sweater', 0, 1, 0),
(79, 0, '', 'resources/assets/images/product_images/1502366462.pPOLO2-26090829_standard_v400.jpg', '45.00', '2017-08-10 12:01:02', '2018-11-19 08:27:53', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 4, 0, 0, 'fair-isle-hooded-sweater', 1, 1, 0),
(80, 0, '', 'resources/assets/images/product_images/1502366586.pPOLO2-25834797_standard_v400.jpg', '125.00', '2017-08-10 12:03:06', '2019-03-20 08:30:31', NULL, '0.500', 'Kilogram', 1, 1, 0, 0, 4, 0, 0, 'flag-combed-cotton-sweater', 1, 1, 0),
(81, 0, '', 'resources/assets/images/product_images/1502366686.pPOLO2-25207761_standard_v400.jpg', '49.50', '2017-08-10 12:04:46', '2019-01-22 07:53:01', NULL, '0.500', 'Kilogram', 1, 0, 0, 1, 4, 0, 0, 'ruffled-cotton-cardigan', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(1, 80, 1, 1, '0.00', '+', 1),
(2, 80, 1, 2, '10.00', '+', 0),
(3, 80, 3, 155, '10.00', '+', 0),
(4, 80, 3, 154, '0.00', '+', 1),
(10, 77, 1, 3, '0.00', '+', 1),
(11, 77, 1, 1, '10.00', '+', 0),
(12, 77, 3, 154, '0.00', '+', 1),
(13, 77, 3, 155, '10.00', '+', 0),
(14, 77, 3, 156, '10.00', '-', 0),
(15, 75, 1, 1, '0.00', '+', 1),
(16, 75, 1, 2, '10.00', '+', 0),
(17, 75, 3, 154, '0.00', '+', 1),
(18, 75, 3, 155, '5.00', '-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8_unicode_ci,
  `products_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0',
  `products_left_banner` mediumtext COLLATE utf8_unicode_ci,
  `products_left_banner_start_date` int(30) DEFAULT NULL,
  `products_left_banner_expire_date` int(30) DEFAULT NULL,
  `products_right_banner` mediumtext COLLATE utf8_unicode_ci,
  `products_right_banner_start_date` int(30) DEFAULT NULL,
  `products_right_banner_expire_date` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 'CLASSIC FIT SOFT-TOUCH POLO', '<p>- Classic Fit: our roomiest silhouette. Our Polo shirts also come in Slim Fit (our trimmest) and Custom Slim Fit (our second-slimmest). - Size medium has a 29&quot; body length, an 18&quot; shoulder, and a 22&quot; chest. - Ribbed Polo collar. Three-button placket. - Short sleeves with ribbed armbands. - Even vented hem. - Multicolored signature embroidered pony at the left chest. - 100% cotton. - Machine washable. Imported. - Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(1, 4, 'الكلاسيكية تناسب لينة اللمس بولو', '<p>- Classic Fit: our roomiest silhouette. Our Polo shirts also come in Slim Fit (our trimmest) and Custom Slim Fit (our second-slimmest). - Size medium has a 29&quot; body length, an 18&quot; shoulder, and a 22&quot; chest. - Ribbed Polo collar. Three-button placket. - Short sleeves with ribbed armbands. - Even vented hem. - Multicolored signature embroidered pony at the left chest. - 100% cotton. - Machine washable. Imported. - Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(2, 1, 'HAMPTON CLASSIC FIT SHIRT', '<p>Classic Fit. Size medium has a 29&frac12;&quot; body length, an 18&frac12;&quot; shoulder, and a 22&frac12;&quot; chest. Medium-spread collar. Four-button extended placket. Genuine mother-of-pearl buttons. Short sleeves. Left chest patch pocket. Even vented hem. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(2, 4, 'هامبتون كلاسيك فيت شيرت', '<p>كلاسيكي ملائم. حجم المتوسطة لديه 29&frac12; &quot;طول الجسم، و 18 &frac12;&quot; الكتف، و 22 &frac12; &quot;الصدر. طوق متوسط الانتشار. أربعة زر الموسعة بلاكيت. حقيقية أم-- من-- لؤلؤة أزرار. أكمام قصيرة. اليسار التصحيح الصدر جيب. حتى تنفيس تنحنح. 100٪ قطن. آلة قابل للغسل. مستورد. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(3, 1, 'CLASSIC FIT COTTON POLO SHIRT', 'Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow.\r\nOur Polo shirts also come in Slim Fit (3" trimmer at the chest and 2" shorter at the body) and Custom Slim Fit (1½" trimmer at the chest and ½" shorter at the body).\r\nSize medium has a 29" body length, an 18" shoulder, and a 22" chest.\r\nRibbed Polo collar. Three-button placket.\r\nShort sleeves with ribbed armbands.\r\nEven vented hem.\r\nSignature embroidered pony at the left chest.\r\n100% cotton. Machine washable. Imported.\r\nModel is 6\'1"/185 cm and wears a size medium.', NULL, 0, '', NULL, NULL, '', 0, 0),
(3, 4, 'كلاسيك فيت قطن قميص بولو', 'الكلاسيكية تناسب: لدينا روميست خيال. قطع لخفض الذراع وأكمل كم الذي يقع بالقرب من المرفق.\r\nلدينا قميص بولو يأتي أيضا في صالح صالح (3 "الانتهازي في الصدر و 2" أقصر في الجسم) والعرف سليم صالح (1½ "الانتهازي في الصدر و ½" أقصر في الجسم).\r\nحجم المتوسطة لديها 29 "طول الجسم، و 18" الكتف، و 22 "الصدر.\r\nمضلع طوق بولو. ثلاثة زر بلاكيت.\r\nأكمام قصيرة مع رباطات مضلعة.\r\nحتى تنفيس تنحنح.\r\nالتوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.\r\n100٪ قطن. آلة قابل للغسل. مستورد.\r\nالموديل 6\'1 "/ 185 سم ويرتدي مقاس متوسط.', NULL, 0, '', NULL, NULL, '', 0, 0),
(4, 1, 'CLASSIC FIT COTTON POLO SHIRT', '<p>Classic Fit: our roomiest silhouette. Cut for a lower armhole and a fuller sleeve that falls closer to the elbow. Our Polo shirts also come in Slim Fit (3&quot; trimmer at the chest and 2&quot; shorter at the body) and Custom Slim Fit (1&frac12;&quot; trimmer at the chest and &frac12;&quot; shorter at the body). Size medium has a 29&quot; body length, an 18&quot; shoulder, and a 22&quot; chest. Ribbed Polo collar. Three-button placket. Short sleeves with ribbed armbands. Even vented hem. Signature embroidered pony at the left chest. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(4, 4, 'كلاسيك فيت قطن قميص بولو', '<p>الكلاسيكية تناسب: لدينا روميست خيال. قطع لخفض الذراع وأكمل كم الذي يقع بالقرب من المرفق. لدينا قميص بولو يأتي أيضا في صالح صالح (3 &quot;الانتهازي في الصدر و 2&quot; أقصر في الجسم) والعرف سليم صالح (1&frac12; &quot;الانتهازي في الصدر و &frac12;&quot; أقصر في الجسم). حجم المتوسطة لديها 29 &quot;طول الجسم، و 18&quot; الكتف، و 22 &quot;الصدر. مضلع طوق بولو. ثلاثة زر بلاكيت. أكمام قصيرة مع رباطات مضلعة. حتى تنفيس تنحنح. التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست. 100٪ قطن. آلة قابل للغسل. مستورد. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(5, 1, 'CUSTOM SLIM FIT COTTON SHIRT', '<p>Custom Slim Fit: our trimmest silhouette. Previously called Custom Fit. Our T-shirts also come in Classic Fit (our roomiest). Size medium has a 27&frac12;&quot; body length, an 18&frac12;&quot; shoulder, and a 21&quot; chest. Striped baseball collar. Two-button placket. Short sleeves with striped ribbed armbands. Striped ribbed piecing at the armholes. Felt &quot;Polo Ralph Lauren&quot; patch at the left chest. Even vented hem. Shell: 100% cotton. Collar: 99% cotton, 1% elastane. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(5, 4, 'العرف سليم تناسب القطن قميص', '<p>العرف سليم صالح: لدينا تريمست خيال. كانت تسمى سابقا كوستوم فيت. لدينا تي شيرت تأتي أيضا في كلاسيك صالح (لدينا روميست). حجم متوسط لديه 27&frac12; &quot;طول الجسم، و 18&quot; الكتف، و 21 &quot;الصدر. طوق البيسبول مخطط. اثنين زر بلاكيت. أكمام قصيرة مع رباطات مضلعة مخطط. مخطط، بيليسينغ، إلى، ال التعريف، أرمهولز. فيلت &quot;بولو رالف لورين&quot; التصحيح في الصدر الأيسر. حتى تنفيس تنحنح. القشرة: 100٪ قطن. طوق:٪ 99 قطن، 1٪ إلاستان. آلة قابل للغسل. مستورد. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(6, 1, 'CUSTOM SLIM FIT WEATHERED POLO', '<p>Custom Slim Fit: a middle ground between our Classic Fit and Slim Fit. Sleeve hugs the bicep. Tailored through the waist. Previously called Custom Fit. Our Polo shirts also come in Slim Fit (1&frac12;&quot; trimmer at the chest and &frac12;&quot; shorter at the body) and Classic Fit (1&frac12;&quot; wider at the chest and 1&frac12;&quot; longer at the body). Size medium has a 27&frac12;&quot; front body length, a 28&frac12;&quot; back body length, a 17&frac34;&quot; shoulder, a 20&frac34;&quot; chest, and a 34&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck and changes 1&quot; betwe Ribbed Polo collar. Two-button placket. Long sleeves with ribbed cuffs. Tennis tail. Signature embroidered pony at the left chest. 100% cotton. Machine washable. Imported. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(6, 4, 'العرف سليم تناسب بولو الطقس', '<p>العرف سليم صالح: وسطا بين لدينا تناسب الكلاسيكية و سليم صالح. كم العناق في العضلة ذات الرأسين. مصممة من خلال الخصر. كانت تسمى سابقا كوستوم فيت. لدينا قميص بولو يأتي أيضا في صالح صالح (1&frac12; &quot;الانتهازي في الصدر و &frac12;&quot; أقصر في الجسم) و كلاسيك صالح (1&frac12; &quot;على نطاق أوسع في الصدر و 1&frac12;&quot; أطول في الجسم). حجم متوسط لديه 27&frac12; &quot;طول الجسم الأمامي، 28 &#39;&quot; طول الجسم الخلفي، و 17 &frac34; &quot;الكتف، و 20 &frac34;&quot; الصدر، وطول الأكمام 34 ..طول الأكمام مأخوذة من وسط الظهر من الرقبة وتغيير 1 &quot;بيتو مضلع طوق بولو. اثنين زر بلاكيت. أكمام طويلة مع الأصفاد مضلع. ذيل التنس. التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست. 100٪ قطن. آلة قابل للغسل. مستورد. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(7, 1, 'STANDARD FIT COTTON SHIRT', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; body length. Button-down point collar. Buttoned placket. Short sleeves. Left chest buttoned pocket. 100% cotton. Machine washable. Imported. Coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(7, 4, 'قمصان عادية قميص من القطن', '<p>معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث. حجم المتوسطة لديها 30 &quot;طول الجسم. زر أسفل نقطة طوق. زر بلاكيت. أكمام قصيرة. اليسار الصدر جيب زر. 100٪ قطن. آلة قابل للغسل. مستورد. قد تلتصق التلوين على الأقمشة والمفروشات. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(8, 1, 'STANDARD FIT COTTON POPOVER', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; back body length. Button-down point collar. Buttoned half-placket. Short sleeves. Left chest buttoned pocket. Box-pleated back yoke ensures a comfortable fit and a greater range of motion. 100% cotton. Machine washable. Imported. Japanese fabric. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(8, 4, 'ستاندرد فيت القطن بوبوفر', '<p>معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث. حجم المتوسطة لديها 30 &quot;طول الجسم الخلفي. زر أسفل نقطة طوق. زر بلاكيت نصف. أكمام قصيرة. اليسار الصدر جيب زر. مربع مطوي نير نير يضمن تناسب مريح ومجموعة أكبر من الحركة. 100٪ قطن. آلة قابل للغسل. مستورد. النسيج الياباني. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(9, 1, 'STANDARD FIT MADRAS POPOVER', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 30&quot; body length. Button-down point collar. Three-button placket. Genuine mother-of-pearl buttons. Short sleeves. Left chest patch pocket. Split back yoke with a box pleat ensures a comfortable fit and a greater range of motion. Signature embroidered pony at the left chest pocket. 100% cotton. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(9, 4, 'ستاندرد فيت مادراس بوبوفر', '<p>معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث. حجم المتوسطة لديها 30 &quot;طول الجسم. زر أسفل نقطة طوق. ثلاثة زر بلاكيت. حقيقية أم-- من-- لؤلؤة أزرار. أكمام قصيرة. اليسار التصحيح الصدر جيب. انقسام الظهر نير مع مربع الطوى يضمن تناسب مريح ومجموعة أكبر من الحركة. التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، خزانة الدولة، جيب. 100٪ قطن. آلة قابل للغسل. مستورد. نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(10, 1, 'STANDARD FIT COTTON WORKSHIRT', '<p>Standard Fit: a comfortable, relaxed silhouette. If you favored our Classic Fit or Custom Fit, you will like this updated version. Size medium has a 32&quot; body length, an 18&frac12;&quot; shoulder, a 46&frac12;&quot; chest, and a 35&quot; sleeve length. Sleeve length is taken from the center back of the neck and changes 1&quot; between sizes. Point collar. Buttoned placket. Genuine mother-of-pearl buttons. Long sleeves with buttoned barrel cuffs. Two chest buttoned pockets. Split back yoke with a box pleat ensures a comfortable fit and a greater range of motion. 100% cotton. Machine washable. Imported. Italian fabric. Dyed with true indigo, which may rub off onto fabrics, leather, and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size medium.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(10, 4, 'ستاندرد فيت القطن وركشيرت', '<p>معيار صالح: مريحة، صورة ظلية استرخاء. إذا كنت تفضل صالح الكلاسيكية لدينا أو تناسب مخصص، سوف ترغب في هذا الإصدار المحدث. حجم المتوسطة لديه 32 &quot;طول الجسم، و 18&quot; الكتف، و 46 &quot;الصدر، و 35&quot; كم طول. يتم أخذ طول الأكمام من وسط الظهر من الرقبة والتغييرات 1 &quot;بين الأحجام. طوق نقطة. زر بلاكيت. حقيقية أم-- من-- لؤلؤة أزرار. أكمام طويلة مع الأصفاد برميل زرر. اثنين من الصدر جيوب زر. انقسام الظهر نير مع مربع الطوى يضمن تناسب مريح ومجموعة أكبر من الحركة. 100٪ قطن. آلة قابل للغسل. مستورد. النسيج الإيطالي. مصبوغ مع النيلي الحقيقي، والتي قد فرك على الأقمشة والجلود، والمفروشات. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس متوسط.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(11, 1, 'ELDRIDGE SUPER SLIM JEAN', '<p>Eldridge Super Slim: Polo&#39;s skinniest fit. Sits low at the waist. Trim through the thigh and the leg. Tapered leg opening. Size 32W has an 8&frac34;&quot; rise and a 12&frac12;&quot; leg opening. Belt loops. Zip fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot; leather patch at the back right waist. 94% cotton, 4% polyester, 2% elastane. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(11, 4, 'إلدريدج سوبر سليم جين', '<p>إلدريدج سوبر سليم: بولو نحافة تناسب. يجلس منخفضة في وسطه. تقليم من خلال الفخذ والساق. افتتاح الساق مستدق. حجم 32W لديه ارتفاع 8&frac34; &quot;و 12&frac12;&quot; فتح الساق. حلقات الحزام. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب. تصميم خمسة جيب مع المسامير المعدنية التوقيع. &quot;بولو&quot; التسمية في جيب عملة. &quot;بولو رالف لورين&quot; التصحيح الجلود في الخصر الخلفي الخلفي. قطن 94٪، بوليستر 4٪، إلاستين 2٪. آلة قابل للغسل. مستورد. نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس 32 واط &times; 32 لتر.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(12, 1, 'SULLIVAN SLIM FIT JEAN', '<p>Sullivan Slim: sits slightly below the waist. Slim, tapered leg. Size 32W has a 9&quot; rise and a 14&quot; leg opening. Belt loops. Zip fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot;&ndash;debossed leather patch at the back right waist. 97% cotton, 3% elastane. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(12, 4, 'سوليفان سليم فيت جين', '<p>سوليفان سليم: يجلس قليلا تحت الخصر. سليم، الساق مدبب. حجم 32 واط لديه 9 &quot;ارتفاع و 14&quot; افتتاح الساق. حلقات الحزام. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب. تصميم خمسة جيب مع المسامير المعدنية التوقيع. &quot;بولو&quot; التسمية في جيب عملة. &quot;بولو رالف لورين&quot; -دبوسد التصحيح الجلود في الخصر الخلفي الخلفي. قطن 97٪، إلاستين 3٪. آلة قابل للغسل. مستورد. نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس 32 واط &times; 32 لتر.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(13, 1, 'HAMPTON STRAIGHT FIT JEAN', '<p>Hampton Straight: Polo&#39;s most relaxed fit. Sits slightly below the waist. Easy fit through the thigh and slightly tapered at the ankle. Size 32W has a 9&quot; rise and a 16&quot; leg opening. Belt loops. Button fly with our signature shank closure. Five-pocket styling with signature metal rivets. &quot;Polo&quot; label at the coin pocket. &quot;Polo Ralph Lauren&quot;&ndash;debossed leather patch at the back right waist. 100% cotton. Machine washable. Imported. Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery. Model is 6&#39;1&quot;/185 cm and wears a size 32W x 32L.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(13, 4, 'هامبتون مستقيم فيت جين', '<p>هامبتون مستقيم: بولو الأكثر استرخاء صالح. يجلس قليلا تحت الخصر. من السهل تناسب من خلال الفخذ ومدبب قليلا في الكاحل. حجم 32 واط لديه 9 &quot;ارتفاع و 16&quot; افتتاح الساق. حلقات الحزام. زر يطير مع إغلاقنا توقيع عرقوب. تصميم خمسة جيب مع المسامير المعدنية التوقيع. &quot;بولو&quot; التسمية في جيب عملة. &quot;بولو رالف لورين&quot; -دبوسد التصحيح الجلود في الخصر الخلفي الخلفي. 100٪ قطن. آلة قابل للغسل. مستورد. نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات. الموديل 6&#39;1 &quot;/ 185 سم ويرتدي مقاس 32 واط &times; 32 لتر.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(14, 1, 'LAXMAN TECH SUEDE SNEAKER', '<p>Rounded toe. Lace-up front. Woven tag with our signature pony at the tongue. Padded velvet insole. Treaded rubber outsole. &quot;Polo&quot; printed at the outer side. Upper: man-made materials. Mesh panels: 100% nylon. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(14, 4, 'لاكسمان تيش سويد سنيكر', '<p>اصبع القدم مدورة. الدانتيل متابعة. نسج العلامة مع توقيعنا المهر على اللسان. مبطن المخمل نعل. المطاط تسولي المطاط. &quot;بولو&quot; المطبوعة على الجانب الخارجي. العلوي: المواد من صنع الإنسان. شبكة لوحات: 100٪ النايلون. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(15, 1, 'VAUGHN SUEDE SLIP-ON SNEAKER', '<p>Fits true to size. Rounded toe. Slip-on styling. Elasticized side gores. &quot;Polo&quot; tag at the outer side. Padded collar. Signature pony&ndash;debossed suede heel. Padded canvas insole. Treaded rubber outsole. Leather. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(15, 4, 'فوند سويد سليب أون سنيكر', '<p>يناسب حجمها الحقيقي. اصبع القدم مدورة. الانزلاق على التصميم. جوارب جانبية مرنة. &quot;بولو&quot; العلامة في الجانب الخارجي. طوق مبطن. توقيع بوني-ديبوسد جلد الغزال كعب. نعل قماش مبطن. المطاط تسولي المطاط. جلدية. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(16, 1, 'WORKINGTON LEATHER DRIVER', '<p>Penny tab at the vamp. Single-needle stitching at the toe. Padded leather insole. Leather outsole with rubber-nub detailing. Debossed &quot;Polo&quot; tag at the outer side. Leather. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(16, 4, 'وركترتون الجلود دريفر', '<p>بيني علامة التبويب في الرقعة. خياطة إبرة واحدة في أخمص القدمين. نعل جلد مبطن. جلد تسولي مع المطاط-- نوب ديتايلينغ. ديبوسد &quot;بولو&quot; العلامة في الجانب الخارجي. جلدية. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(17, 1, 'DILLIAN II SUEDE CHELSEA BOOT', '<p>Fits true to size. &frac12;&quot;/15 mm heel height. Rounded toe. Elasticized gores at the sides. Pull tab at the heel. Leather insole. Leather outsole with rubber treads. Leather. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(17, 4, 'ديليان الثاني سويد تشلسي بوت', '<p>يناسب حجمها الحقيقي. &frac12; &quot;/ 15 مم ارتفاع كعب. اصبع القدم مدورة. جوارب مرنة على الجانبين. سحب علامة التبويب في كعب. جلد نعل. جلد تسولي مع المطاط معالجتها. جلدية. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(18, 1, 'BRUNEL LEATHER WORK BOOT', '<p>1&quot;/25 mm heel height. 6&quot;/152 mm shaft height. Lace-up front with speed hooks. Sewn-in tongue guard. Pull tab at the heel. Hand-cut leather insole. Vibram rubber outsole. Goodyear welt construction. Leather. Made in the USA.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(18, 4, 'برونيل، جلد، شغل، بوت', '<p>1 &quot;/ 25 مم ارتفاع كعب 6&quot; / 152 مم ارتفاع رمح. الدانتيل متابعة مع خطاف السرعة. مخيط في اللسان حارس. سحب علامة التبويب في كعب. اليد-- قطع الجلود نعل. فيبرام المطاط تسولي. غودير فيلت البناء. جلدية. صنع في الولايات المتحدة الأمريكية.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(19, 1, 'LAXMAN TECH SUEDE SNEAKER', '<p>Rounded toe. Lace-up front. Woven tag with our signature pony at the tongue. Padded insole. Treaded rubber outsole. &quot;Polo&quot; printed at the outer sides. Includes our &quot;Polo Ralph Lauren&quot;&ndash;embossed box. Man-made materials. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(19, 4, 'لاكسمان تيش سويد سنيكر', '<p>اصبع القدم مدورة. الدانتيل متابعة. نسج العلامة مع توقيعنا المهر على اللسان. نعل مبطن. المطاط تسولي المطاط. &quot;بولو&quot; المطبوعة على الجانبين الخارجي. يتضمن لدينا &quot;بولو رالف لورين&quot; - مربع منقوش. مواد من صنع الإنسان. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(20, 1, 'ROUND SUNGLASSES', '<p>Lightweight lenses with 100% UV protection. Molded nose bridge. Curved arms. Our logo is discreetly etched at the left lens and interior right arm. Made in Italy.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(20, 4, 'روند، سونغلاسس', '<p>عدسات خفيفة الوزن مع حماية للأشعة فوق البنفسجية 100٪. مصبوب، جسر الأنف. الأسلحة المنحنية. شعارنا محفور بدقة في العدسة اليسرى والداخلية الذراع اليمنى. صنع في ايطاليا.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(21, 1, 'NAUTICAL-STRIPED SUNGLASSES', '<p>Acetate frame. Metal bars accent the hinges of the arms. Striped pattern accents the interior of each arm. Tinted and polarized lenses offer 100% UV protection and have a scratch-resistant coating. Subtle &quot;Ralph Lauren&quot; text is etched at the left lens. Our metal &quot;RL&quot; monogram accents each temple. Presented in our signature soft leather case with a snapped closure. Our signature-stamped cleaning wipe is included. 55 mm eye size. 20 mm bridge size. 145 mm temple size. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(21, 4, 'النظارات الشمسية ستوتيبد-ستريبد', '<p>إطار خلات. القضبان المعدنية لهجة المفصلات من الأسلحة. نمط مخطط لهجات الداخلية من كل ذراع. توفر العدسات الملونة و المستقطبة حماية للأشعة فوق البنفسجية بنسبة 100٪ ولها طلاء مقاوم للخدش. يتم تحريف النص الرقيق &quot;رالف لورين&quot; في العدسة اليسرى. لدينا المعادن &quot;رل&quot; مشبك لهجات كل معبد. قدمت في توقيعنا حالة من الجلد الناعم مع إغلاق قطعت. يتم تضمين لدينا ختم ختم تنظيف مسح. 55 ملم حجم العين. 20 مم حجم الجسر. 145 ملم حجم المعبد. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(22, 1, 'POLO SQUARE SUNGLASSES', '<p>Metal frame with a double bridge. Metal signature pony at the temples. Lenses offer 100% UV protection. &quot;Polo&quot; etched at the left lens. Presented in our leather &quot;Polo Ralph Lauren&quot;&ndash;debossed case. 60 mm eye size. 17 mm bridge size. 140 mm temple size. Metal. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(22, 4, 'بولو، امين، سونغلاسس', '<p>إطار معدني مع جسر مزدوج. بوني، التوقيع، ترجمة حرفية، إلى، ال التعريف، تيمبلز. العدسات توفر حماية للأشعة فوق البنفسجية 100٪. &quot;بولو&quot;، حفر حفر، إلى، ال التعريف، اليسار، لينس. عرضت في جلدنا &quot;بولو رالف لورين&quot; -debossed القضية. 60 ملم حجم العين. 17 مم حجم الجسر. 140 مم حجم المعبد. فلز. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(23, 1, 'POLO AVIATOR SUNGLASSES', '<p>Metal frame with a double bridge. Metal signature pony at the nylon-fiber temples. Lenses offer 100% UV protection. &quot;Polo&quot; etched at the left lens. Presented in our leather &quot;Polo Ralph Lauren&quot;&ndash;debossed case. 61 mm eye size. 15 mm bridge size. 145 mm temple size. Metal, nylon. Imported.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(23, 4, 'النظارات الشمسية بولو أفياتور', '<p>إطار معدني مع جسر مزدوج. معدن، توقيع، ترجمة حرفية، إلى، ال التعريف، نايلون-فيبر، تيمبلز. العدسات توفر حماية للأشعة فوق البنفسجية 100٪. &quot;بولو&quot;، حفر حفر، إلى، ال التعريف، اليسار، لينس. عرضت في جلدنا &quot;بولو رالف لورين&quot; -debossed القضية. 61 ملم حجم العين. 15 مم حجم الجسر. 145 ملم حجم المعبد. المعادن، النايلون. مستورد.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(24, 1, 'STRAPLESS JERSEY MAXIDRESS', '<p>Strapless maxidress silhouette. Size medium has a 48&frac12;&quot; front body length and a 47&frac14;&quot; back body length. Pull-on styling. Lined at the bodice. Shell and Lining: 95% polyester, 5% elastane. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a size small.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(24, 4, 'بلا حدود جيرسي ماكسيدريس', '<p>حمالة، ماكسيدريس، خيال. حجم المتوسطة لديه 48&frac12; &quot;طول الجسم الأمامي و 47 &frac14;&quot; طول الجسم الخلفي. سحب على التصميم. واصطف في صد. شل وبطانة: 95٪ بوليستر، 5٪ إلاستان. آلة قابل للغسل. مستورد. الموديل هو 5&#39;10 &quot;/ 178 سم ولديه 32&quot; تمثال نصفي، و 24 &quot;الخصر، و 34&quot; الوركين. انها ترتدي حجم صغير.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(25, 1, 'MADRAS FIT-AND-FLARE DRESS', '<p>Sleeveless fit-and-flare silhouette. US size 8 has a 40&frac12;&quot; back body length and a 37&frac14;&quot; bust. Rounded neckline. Concealed center back zipper with a hook-and-eye closure. Side on-seam pockets. Lined at the bodice. Shell and Lining: 100% cotton. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a US size 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(25, 4, 'مادراس فيت-أند-فلير دريس', '<p>صورة ظلية بدون أكمام. حجم الولايات المتحدة 8 لديه 40&frac12; &quot;طول الجسم الخلفي و 37&frac14;&quot; التمثال. خط العنق مدورة. مخفي مركز سحاب خلفي مع إغلاق هوك والعين. جانبية على جيوب التماس. واصطف في صد. القشرة والبطانة: قطن 100٪. تنظيف جاف. مستورد. الموديل هو 5&#39;10 &quot;/ 178 سم ولديه 32&quot; تمثال نصفي، و 24 &quot;الخصر، و 34&quot; الوركين. انها ترتدي حجم الولايات المتحدة 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(26, 1, 'SILK CREPE SHIRTDRESS', '<p>Straight fit. Size 8 has a 51&frac12;&quot; back length, a 40&frac14;&quot; bust, and a 32&frac12;&quot; sleeve length. Point collar. Buttoned placket. Long sleeves with buttoned barrel cuffs. Two chest patch pockets. Comes with a self-belt with a rectangular buckle. 100% silk. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a size 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(26, 4, 'سيلك، تقشد، شيرتدريس', '<p>خطوات ثابتة. حجم 8 لديه 51&frac12; &quot;طول الظهر، و 40&frac14;&quot; التمثال، و 32&frac12; &quot;طول الأكمام. طوق نقطة. زر بلاكيت. أكمام طويلة مع الأصفاد برميل زرر. اثنين من جيوب الصدر التصحيح. يأتي مع حزام ذاتي مع مشبك مستطيلة. 100٪ حرير. تنظيف جاف. مستورد. الموديل هو 5&#39;10 &quot;/ 178 سم ولديه 32&quot; تمثال نصفي، و 24 &quot;الخصر، و 34&quot; الوركين. انها ترتدي حجم 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(27, 1, 'BEADED JERSEY GOWN', '<p>Slim fit. US size 8 has a 58&quot; back length and a 35&quot; bust. Square neckline. Center back zipper with a hook-and-eye closure. Embellished shoulder straps. Sleeveless silhouette. Ruching gathers at the front left waist. Ruffle at the front left skirt. Fully lined. Shell and lining: 95% polyester, 5% elastane. Dry clean. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust, a 24&quot; waist, and 34&quot; hips. She wears a US size 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(27, 4, 'بيدز جيرسي غون', '<p>جسد مثالي. حجم الولايات المتحدة 8 لديها 58 &quot;طول الظهر و 35&quot; تمثال نصفي. خط العنق مربع. مركز سحاب الظهر مع إغلاق هوك والعين. مزين بأشرطة الكتف. صورة ظلية بلا أكمام. روتشينغ يجمع في الجبهة اليسرى الخصر. كشكش في الجبهة اليسرى تنورة. مكتمل الصف. شل وبطانة: 95٪ بوليستر، 5٪ إلاستان. تنظيف جاف. مستورد. الموديل هو 5&#39;10 &quot;/ 178 سم ولديه 32&quot; تمثال نصفي، و 24 &quot;الخصر، و 34&quot; الوركين. انها ترتدي حجم الولايات المتحدة 2.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(28, 1, 'STRIPED COTTON CREWNECK TEE', '<p>Relaxed fit. Size medium has a 24&frac12;&quot; body length and a 38&quot; bust. Crewneck. Short sleeves. &quot;RL&quot; embroidery at the front right hem. 100% cotton. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(28, 4, 'ستريبد، القطن، كريونيك، تي', '<p>تناسب مريح. حجم المتوسطة لديها 24 &quot;طول الجسم و 38&quot; التمثال. ياقة مستديرة. أكمام قصيرة. &quot;رل&quot; التطريز في الجبهة اليمنى تنحنح. 100٪ قطن. آلة قابل للغسل. مستورد. الموديل هو 5&#39;10 &quot;/ 178 سم ولها تمثال نصفي 32 بوصة. انها ترتدي حجم صغير.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(29, 1, 'COTTON-BLEND CREWNECK PULLOVER', '<p>Boxy fit. Intended to hit at the hip. Size medium has a 25&frac12;&quot; front body length, a 27&frac12;&quot; back body length, a 45&frac12;&quot; bust, a 49&quot; shoulder (taken from the dropped shoulder), and a 32&quot; sleeve length. Sleeve length changes &frac34;&quot; between sizes. Crewneck. Long balloon sleeves with ribbed cuffs. Dropped shoulders. Ribbed hem. &quot;Polo&quot; metal plaque at the front right hem. Hem falls longer at the back. Shell: 56% polyester, 44% cotton. Collar and cuffs: 58% cotton, 40% polyester, 2% elastane. Machine washable. Imported. Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(29, 4, 'كوتون-بليند كريونيك قفاز', '<p>بوكسي صالح. تهدف إلى ضرب في الورك. حجم متوسط لديه 25 &quot;طول الجسم الأمامي، 27 &#39;&quot; طول الجسم الخلفي، و 45 &quot;تمثال نصفي، و 49&quot; الكتف (مأخوذة من الكتف انخفض)، و طول الأكمام 32. تغير طول الأكمام &frac34; &quot;بين الأحجام. ياقة مستديرة. طويلة الأكمام بالون مع الأصفاد مضلع. انسحب الكتفين. مضلع تنحنح. &quot;بولو&quot; لوحة معدنية في الجبهة اليمنى تنحنح. هيم يسقط أطول في الظهر. القشرة:٪ 56 بوليستر،٪ 44 قطن. طوق وأصفاد:٪ 58 قطن،٪ 40 بوليستر،٪ 2 إلاستان. آلة قابل للغسل. مستورد. الموديل هو 5&#39;10 &quot;/ 178 سم ولها تمثال نصفي 32 بوصة. انها ترتدي حجم صغير.</p>', '', 0, NULL, 0, 0, NULL, 0, 0),
(30, 1, 'CREWNECK LONG-SLEEVE TOP', '<ul>\r\n	<li>Slim fit. Intended to hit at the hip.</li>\r\n	<li>Size medium has a 26&quot; body length, a 32&quot; bust, a 28&quot; shoulder, a 29&frac12;&quot; waist, and a 24&quot; sleeve length. Sleeve length changes &frac12;&quot; between sizes.</li>\r\n	<li>Crewneck.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>&quot;Polo&quot;-engraved metal plaque at the front right hem.</li>\r\n	<li>Front and back panels.</li>\r\n	<li>96% modal, 4% elastane.</li>\r\n	<li>Machine washable. Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 32&quot; bust. She wears a size small.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(30, 4, 'كريونيك طويلة الأكمام الأعلى', '<ul>\r\n	<li>جسد مثالي. تهدف إلى ضرب في الورك.</li>\r\n	<li>حجم متوسط لديه 26 &quot;طول الجسم، و 32&quot; التمثال، و 28 &quot;الكتف، و 29 wa&quot; الخصر، و طول 24 &quot;كم طول التغييرات &frac12;&quot; بين الأحجام.</li>\r\n	<li>ياقة مستديرة.</li>\r\n	<li>اكمام طويلة.</li>\r\n	<li>&quot;بولو&quot; - نحى لوحة معدنية في الجبهة اليمنى تنحنح.</li>\r\n	<li>الأمامي والخلفي لوحات.</li>\r\n	<li>96٪ مشروط، 4٪ إلاستان.</li>\r\n	<li>آلة قابل للغسل. مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم ولها تمثال نصفي 32 بوصة. انها ترتدي حجم صغير.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(31, 1, 'TOMPKINS SKINNY CROP JEAN', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature skinny fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&frac12;&quot; waist, a 36&quot; hip, and an 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back. Distressing throughout. Rip at the left knee.</li>\r\n	<li>93% cotton, 5% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(31, 4, 'تومكينز سكيني كروب جين', '<ul>\r\n	<li>تومكينز نحيل المحاصيل: منتصف الارتفاع. بولو التوقيع صالح نحيل اقتصاص لضرب الحق فوق الكاحل.</li>\r\n	<li>حجم 28 لديها تقريبا. و ارتفاع بزاوية 7 بوصات، و خصر 30 بوصة، و 36 بوصة، وفتحة ساق 11 بوصة. جميع الأحجام لديها 26 &quot;إنزيم.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاق عرقوب توقيع.</li>\r\n	<li>تصميم خمسة جيب مع توقيع &quot;P.R.L. 67&quot; - المسامير المعدنية المحفورة. &quot;بولو&quot; التصحيح في جيب عملة.</li>\r\n	<li>توقيع جلدية &quot;بولو رالف لورين&quot; التصحيح في الجزء الخلفي. محزن في جميع أنحاء. مزق في الركبة اليسرى.</li>\r\n	<li>قطن 93٪، بوليستر 5٪، إلاستين 2٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم، ولها 24&quot; خصر و 34 &quot;هيبس، وهي ترتدي حجم الولايات المتحدة 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(32, 1, 'TOMPKINS SKINNY CROP JEANS', '<ul>\r\n	<li>Tompkins Skinny Crop: mid-rise. Polo&#39;s signature Skinny Fit cropped to hit right above the ankle.</li>\r\n	<li>Size 28 has an approx. 7&frac14;&quot; rise, 30&frac12;&quot; waist, 36&quot; hip, and 11&quot; leg opening. All sizes have a 26&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a US size 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(32, 4, 'تومكينز سكيني المحاصيل الجينز', '<ul>\r\n	<li>تومكينز نحيل المحاصيل: منتصف الارتفاع. بولو توقيع سكيني صالح اقتصاص لضرب الحق فوق الكاحل.</li>\r\n	<li>حجم 28 لديها تقريبا. 7&frac14; &quot;ارتفاع، 30&frac12;&quot; الخصر، 36 &quot;الورك، و 11&quot; افتتاح الساق. جميع الأحجام لديها 26 &quot;إنزيم.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاق عرقوب توقيع.</li>\r\n	<li>تصميم خمسة جيب مع توقيع &quot;P.R.L. 67&quot; - المسامير المعدنية المحفورة. &quot;بولو&quot; التصحيح في جيب عملة.</li>\r\n	<li>توقيع جلدية &quot;بولو رالف لورين&quot; التصحيح في الجزء الخلفي.</li>\r\n	<li>قطن 92٪، بوليستر 6٪، إلاستين 2٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم، ولها 24&quot; خصر و 34 &quot;هيبس، وهي ترتدي حجم الولايات المتحدة 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(33, 1, 'TOMPKINS SKINNY JEAN', '<ul>\r\n	<li>Tompkins Skinny: mid-rise. Polo&#39;s signature skinny fit with a narrow leg and plenty of stretch for comfort.</li>\r\n	<li>Size 28 has approx. a 7&frac14;&quot; rise, a 30&quot; waist, a 35&frac12;&quot; hip, and an 11&quot; leg opening. All sizes have a 30&quot; inseam.</li>\r\n	<li>Belt loops. Zip fly with a signature shank closure.</li>\r\n	<li>Five-pocket styling with signature &quot;P.R.L. 67&quot;&ndash;engraved metal rivets. &quot;Polo&quot; patch at the coin pocket.</li>\r\n	<li>Signature leather &quot;Polo Ralph Lauren&quot; patch at the back.</li>\r\n	<li>92% cotton, 6% polyester, 2% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n	<li>Model is 5&#39;10&quot;/178 cm and has a 24&quot; waist and 34&quot; hips. She wears a size 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(33, 4, 'تومكينز سكيني جين', '<ul>\r\n	<li>تومكينز نحيل: منتصف الارتفاع. بولو توقيع تناسب نحيل مع الساق الضيقة والكثير من تمتد للراحة.</li>\r\n	<li>حجم 28 لديها تقريبا. و ارتفاع بزاوية 7 بوصات، و خصر 30 بوصة، و 35 &frac12; &quot;، و 11&quot; فتحة الساق. جميع الأحجام لديها 30 &quot;إنزيم.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاق عرقوب توقيع.</li>\r\n	<li>تصميم خمسة جيب مع توقيع &quot;P.R.L. 67&quot; - المسامير المعدنية المحفورة. &quot;بولو&quot; التصحيح في جيب عملة.</li>\r\n	<li>توقيع جلدية &quot;بولو رالف لورين&quot; التصحيح في الجزء الخلفي.</li>\r\n	<li>قطن 92٪، بوليستر 6٪، إلاستين 2٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n	<li>الموديل هو 5&#39;10 &quot;/ 178 سم، ولها 24&quot; خصر و 34 &quot;هيبس، وهي ترتدي مقاس 26.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(34, 1, 'SMALL SULLIVAN SADDLE BAG', '<ul>\r\n	<li>Single top handle with a 4&quot; drop. Removable woven crossbody strap with a 23&quot; drop.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;debossed fold-over flap. Concealed magnetic closure.</li>\r\n	<li>Leather strap with a stud closure at each side.</li>\r\n	<li>Lined with twill.</li>\r\n	<li>Exterior slip pocket at the back. Interior slip pocket.</li>\r\n	<li>8&quot; L x 9&quot; W x 4&quot; D.</li>\r\n	<li>Leather, cotton.</li>\r\n	<li>Italian leather. Imported.</li>\r\n	<li>Comes with a dust bag.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(34, 4, 'صغير، سوليفان، أزعج، باغ', '<ul>\r\n	<li>مقبض علوي مفرد مع قطرة 4 بوصات قابل للإزالة حزام كروسبودي قابل للإزالة مع قطرة 23 بوصة.</li>\r\n	<li>&quot;بولو رالف لورين&quot; - رفرف مطوية أكثر. إغلاق مغناطيسي مخفي.</li>\r\n	<li>حزام من الجلد مع إغلاق مسمار على كل جانب.</li>\r\n	<li>اصطف مع حك.</li>\r\n	<li>جيب زلة الخارجية في الظهر. الداخلية زلة جيب.</li>\r\n	<li>8 &quot;L x 9&quot; W x 4 &quot;D.</li>\r\n	<li>جلد، قطن.</li>\r\n	<li>الجلود الإيطالية. مستورد.</li>\r\n	<li>يأتي مع حقيبة الغبار.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(35, 1, 'PATCHWORK CANVAS BIG PONY TOTE', '<ul>\r\n	<li>Two webbed cotton top handles. each with a 9&frac12;&quot; maximum drop.</li>\r\n	<li>Antiqued metal rivets at the front and the back.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Signature embroidered Big Pony at the front patch pocket.</li>\r\n	<li>Reinforced base.</li>\r\n	<li>Interior slip pocket.</li>\r\n	<li>11&frac14;&quot; H x 19&quot; L x 7&quot; D.</li>\r\n	<li>Shell and lining: cotton. Trim: leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(35, 4, 'قماش باتشورك بيج بوني توت', '<ul>\r\n	<li>اثنين من مقابض القطن مبطن. كل منها مع انخفاض 9&frac12; &quot;الحد الأقصى.</li>\r\n	<li>المسامير المعدنية أنتيكد في الجبهة والظهر.</li>\r\n	<li>أعلى إغلاق الرمز البريدي مع علامة التبويب سحب الجلود.</li>\r\n	<li>التوقيع، مطرز، ضخم، ترجمة حرفية، إلى، ال التعريف، تكتل سياسي، رقعة، جيب.</li>\r\n	<li>قاعدة عززت.</li>\r\n	<li>الداخلية زلة جيب.</li>\r\n	<li>11&frac14; &quot;H x 19&quot; L x 7 &quot;D.</li>\r\n	<li>شل وبطانة: القطن. تقليم: الجلود.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(36, 1, 'COLOR-BLOCKED BIG PONY TOTE', '<ul>\r\n	<li>Two webbed top handles, each with a 9&frac12;&quot; drop.</li>\r\n	<li>Top zip closure with a leather pull tab.</li>\r\n	<li>Patch pocket with our signature embroidered Big Pony at the front.</li>\r\n	<li>Interior slip pocket. Interior leather logo patch.</li>\r\n	<li>Gusseted sides. Reinforced bottom.</li>\r\n	<li>Antiqued rivets at the handles.</li>\r\n	<li>12&frac34;&quot; H x 16&frac12;&quot; L x 1&frac34;&quot; D.</li>\r\n	<li>Cotton, leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(36, 4, 'كولور-بلوكد بيج بوني توت', '<ul>\r\n	<li>اثنين من مقابض أعلى ويبد، ولكل منها 9&frac12; &quot;قطرة.</li>\r\n	<li>أعلى إغلاق الرمز البريدي مع علامة التبويب سحب الجلود.</li>\r\n	<li>جيب التصحيح مع توقيعنا مطرزة المهر الكبير في الجبهة.</li>\r\n	<li>الداخلية زلة جيب. الداخلية الجلود شعار التصحيح.</li>\r\n	<li>غوسيتد الجانبين. القاع المقوى.</li>\r\n	<li>المسامير أنتيكد في مقابض.</li>\r\n	<li>12&frac34; &quot;H &times; 16&frac12;&quot; L &times; 1&frac34; &quot;D.</li>\r\n	<li>القطن والجلود.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(37, 1, 'LASER-CUT FLORAL LEATHER TOTE', '<ul>\r\n	<li>Two leather top handles, each with an 8&quot; drop.</li>\r\n	<li>Lobster-clasp closure at the opening.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot;&ndash;embossed removable leather luggage tag and two ties at the top handles.</li>\r\n	<li>Bonded interior.</li>\r\n	<li>Includes a removable zip pouch.</li>\r\n	<li>Bag: 12&frac14;&quot; H x 17&quot; L x 6&quot; D. Pouch: 3&frac14;&quot; H x 6&frac14;&quot; L.</li>\r\n	<li>Leather.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(37, 4, 'ليسر-كت فلورال ليثر توت', '<ul>\r\n	<li>اثنين من أعلى مقابض من الجلد، مع كل 8 &quot;قطرة.</li>\r\n	<li>إغلاق المشبك جراد البحر في الافتتاح.</li>\r\n	<li>&quot;بولو رالف لورين&quot; - منقوش العلامة الأمتعة الجلدية القابلة للإزالة وعلاقتين في أعلى مقابض.</li>\r\n	<li>المستعبدين الداخلية.</li>\r\n	<li>يتضمن الحقيبة الرمزية القابلة للإزالة.</li>\r\n	<li>كيس: 12&frac14; &quot;H &times; 17&quot; L &times; 6 &quot;D. الحقيبة: 3&frac14;&quot; H &times; 6&frac14; &quot;L.</li>\r\n	<li>جلدية.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(38, 1, 'BEAR-PRINT COTTON COVERALL', '', '', 0, NULL, 0, 0, NULL, 0, 0),
(38, 4, 'بير-برينت كوتن كوفيرال', '', '', 0, NULL, 0, 0, NULL, 0, 0),
(39, 1, 'STRIPED COTTON HENLEY COVERALL', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Long sleeves.</li>\r\n	<li>Ring snaps at the hem ensure easy on and off.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(39, 4, 'ستريبد، القطن، هينلي، كوفيرال', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>خط العنق هينلي.</li>\r\n	<li>ثلاثة زر بلاكيت.</li>\r\n	<li>اكمام طويلة.</li>\r\n	<li>خاتم يستقر في تنحنح ضمان سهولة وإيقاف.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(40, 1, 'STRIPED COTTON HENLEY BODYSUIT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Henley neckline.</li>\r\n	<li>Three-button placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Ring snaps at the hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(40, 4, 'ستريبد، القطن، هنلي، بوديسويت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>خط العنق هينلي.</li>\r\n	<li>ثلاثة زر بلاكيت.</li>\r\n	<li>أكمام قصيرة.</li>\r\n	<li>حلقة يستقر في تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(41, 1, 'ABC BLOCK 4-PIECE GIFT BASKET', '<ul>\r\n	<li>Kimono top, pant, coverall, and printed side of blankie: 100% cotton.</li>\r\n	<li>Blankie&#39;s bear, bear fill, plush side, and plush trim: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Kimono top: wrap silhouette secures with snaps and a tie; long sleeves.</li>\r\n	<li>Pant: elasticized waist; footed silhouette.</li>\r\n	<li>Coverall: crew neckline; snapped front; long sleeves; signature embroidered pony at the left chest; ring snaps at the hem; footed silhouette.</li>\r\n	<li>Blankie: plush bear head and arms at the center; 11&quot; W x 11&quot; L. Imported.</li>\r\n	<li>Elegantly presented in a cotton-lined wicker basket. 10&quot; H x 10&quot; L x 8&quot; D.</li>\r\n	<li>Comes with pre-cut cellophane and a matching ribbon for gift-giving.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(41, 4, 'أبك بلوك 4-بيس غيفت باسكيت', '<ul>\r\n	<li>كيمونو أعلى، بانت، المعطف، والجانب المطبوع من بلانكي: القطن 100٪.</li>\r\n	<li>بلانكي الدب، الدب ملء، أفخم الجانب، و أفخم تقليم: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>كيمونو الأعلى: التفاف خيال يؤمن مع الطقات وربطة عنق؛ اكمام طويلة.</li>\r\n	<li>بانت: إلاستيكيزد ويست؛ فوتد، خيال.</li>\r\n	<li>المعطف: خط الرقبة الطاقم. قطعت الجبهة؛ اكمام طويلة؛ التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، شيست؛ حلقة يستقر في تنحنح. فوتد، خيال.</li>\r\n	<li>بلانكي: أفخم الدب الرأس والذراعين في المركز. 11 &quot;W x 11&quot; L. المستوردة.</li>\r\n	<li>عرضت بشكل أنيق في سلة الخوص اصطف القطن. 10 &quot;H &times; 10&quot; L &times; 8 &quot;D.</li>\r\n	<li>يأتي مع سلفان قبل قطع وشريط مطابقة لتقديم الهدايا.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(42, 1, 'COTTON POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&quot; body length.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Ruffled hem. Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(42, 4, 'القطن بولو اللباس و بومر', '<ul>\r\n	<li>اللباس و البنطلون: 100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>قطرة الخصر خيال.</li>\r\n	<li>حجم 9 أشهر لديه 16 &quot;طول الجسم.</li>\r\n	<li>مضلع طوق بولو. ثلاثة زر بلاكيت.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة.</li>\r\n	<li>تكدرت تنحنح. يأتي مع البنطلون مطابقة.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(43, 1, 'STRIPED POLO DRESS & BLOOMER', '<ul>\r\n	<li>Dress and bloomer: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless drop-waist silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Three-button placket.</li>\r\n	<li>Shirred flounce with lace trim.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(43, 4, 'ستريبد بولو اللباس و بومر', '<ul>\r\n	<li>اللباس و البنطلون: 100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>بلا أكمام قطرة الخصر خيال.</li>\r\n	<li>حجم 9 أشهر لديه 16&frac12; &quot;طول الجسم الأمامي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مضلع طوق بولو. ثلاثة زر بلاكيت.</li>\r\n	<li>شيرد يندرج مع تقليم الدانتيل.</li>\r\n	<li>يأتي مع البنطلون مطابقة.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(44, 1, 'RUFFLED FLORAL DRESS & BLOOMER', '<ul>\r\n	<li>Dress&#39; shell and bloomer: 100% viscose. Dress&#39;s lining: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Sleeveless A-line silhouette.</li>\r\n	<li>Size 9 months has a 16&frac12;&quot; front body length.</li>\r\n	<li>Elasticized ruffled neckline.</li>\r\n	<li>Fully lined.</li>\r\n	<li>Comes with a matching bloomer.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(44, 4, 'روفلد فستان الزهور وبلوم', '<ul>\r\n	<li>اللباس &#39;قذيفة و بلومر: 100٪ فسكوزي. بطانة اللباس: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>بلا أكمام ألف خط صورة ظلية.</li>\r\n	<li>حجم 9 أشهر لديه 16&frac12; &quot;طول الجسم الأمامي.</li>\r\n	<li>مطاطا تكدرت العنق.</li>\r\n	<li>مكتمل الصف.</li>\r\n	<li>يأتي مع البنطلون مطابقة.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(45, 1, 'STRIPED COTTON BLANKET', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Striped side reverses to a solid-hued side.</li>\r\n	<li>Signature embroidered pony at the lower right corner of the striped side.</li>\r\n	<li>Ribbed binding.</li>\r\n	<li>28&quot; L x 32&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(45, 4, 'ستريبد، قطن، بلانكيت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>عكس الجانب مخطط إلى الجانب الصلبة.</li>\r\n	<li>التوقيع مطرزة المهر في الزاوية اليمنى السفلى من الجانب مخطط.</li>\r\n	<li>ملزمة مضلع.</li>\r\n	<li>28 &quot;L x 32&quot; W.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(46, 1, 'CREPE SWADDLING BLANKET SET', '<ul>\r\n	<li>Set of three blankets.</li>\r\n	<li>All items: 100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Signature embroidered pony at the bottom right corner.</li>\r\n	<li>47&quot; L x 47&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(46, 4, 'كريب سوادلينغ بلانكيت سيت', '<ul>\r\n	<li>مجموعة من ثلاث بطانيات.</li>\r\n	<li>جميع البنود: 100٪ القطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>توقيع مطرزة المهر في أسفل الزاوية اليمنى.</li>\r\n	<li>47 &quot;L x 47&quot; W.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(47, 1, 'PLUSH BLANKET', '<ul>\r\n	<li>100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Tonal signature embroidered pony at one corner.</li>\r\n	<li>Grosgrain border.</li>\r\n	<li>28&quot; L x 28&quot; W.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(47, 4, 'بلوش بطانية', '<ul>\r\n	<li>100٪ بوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>تون، توقيع، مطرزة، ترجمة حرفية، إلى، أوحد، كورنر.</li>\r\n	<li>الحدود غروسغراين.</li>\r\n	<li>28 &quot;L x 28&quot; W.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(48, 1, 'RL Bowery Sateen Duvet Cover', '<p>A contrasting border and frame give this 624-thread-count sateen duvet cover a crisp tailored look.</p>\r\n\r\n<ul>\r\n	<li>624-thread-count cotton sateen.</li>\r\n	<li>3&quot; contrasting flange. &frac12;&quot; contrasting frame.</li>\r\n	<li>Concealed buttoned closures.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W.</li>\r\n	<li>King: 96&quot; L x 108&quot; W.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(48, 4, 'غطاء لحاف رولي بويري ساتين', '<p>إن الحدود والأطر المتناقضة تعطي غطاء لحاف ساتين ذو 6 خيط مرصع على شكل خيط مرصع.</p>\r\n\r\n<ul>\r\n	<li>624-ثرياد-كونت قطن ساتين.</li>\r\n	<li>3 &quot;شفة متناقضة. &frac12;&quot; إطار متناقض.</li>\r\n	<li>إخفاء إغلاق زر.</li>\r\n	<li>فول / كوين: 96 &quot;L x 92&quot; W.</li>\r\n	<li>كينغ: 96 &quot;L x 108&quot; W.</li>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(49, 1, 'Bedford Jacquard Duvet Cover', '<p>With an allover jacquard-woven pattern, this 400-thread-count duvet cover will add subtle texture to your bed and is perfect for mixing and matching.</p>\r\n\r\n<ul>\r\n	<li>400-thread-count cotton jacquard.</li>\r\n	<li>2&quot; flange.</li>\r\n	<li>Concealed buttoned closure.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0);
INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(49, 4, 'غطاء لحاف بيدفورد جاكارد', '<p>مع هذا النمط من الجاكار المنسوج، فإن غطاء لحاف 400 خيط من هذا القبيل سيضيف نسيج خفيف إلى سريرك وهو مثالي للخلط والمطابقة.</p>\r\n\r\n<ul>\r\n	<li>400-موضوع-العد القطن الجاكار.</li>\r\n	<li>2 &quot;شفة.</li>\r\n	<li>إغلاق مخفي.</li>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(50, 1, 'MONACO SATEEN DUVET COVER', '<ul>\r\n	<li>286-thread-count cotton sateen.</li>\r\n	<li>Concealed buttoned closures at the bottom.</li>\r\n	<li>Full/queen: 96&quot; L x 92&quot; W; 2&quot; flange.</li>\r\n	<li>King: 96&quot; L x 108&quot; W; 2&quot; flange.</li>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(50, 4, 'موناكو ساتين غطاء دوفيت', '<ul>\r\n	<li>286-موضوع العد القطن ساتين.</li>\r\n	<li>إخفاء إغلاق زر في الأسفل.</li>\r\n	<li>فول / كوين: 96 &quot;L x 92&quot; W؛ 2 &quot;شفة.</li>\r\n	<li>كينغ: 96 &quot;L x 108&quot; W؛ 2 &quot;شفة.</li>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(51, 1, 'Pink Palmer Sham', '<p>Crafted from luxurious 464-thread-count cotton percale, our menswear-inspired Palmer sham is designed with pink contrast taping.</p>\r\n\r\n<ul>\r\n	<li>2&frac12;&quot; flange with &frac14;&quot; of contrast taping.</li>\r\n	<li>Back envelope closure.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(51, 4, 'الوردي بالمر الشام', '<p>صممت من الفخامة القطنية الفاخرة المصنوعة من 464 خيط مرصع بالألوان، تم تصميم شورت بالمر المستوحى من الملابس الرجالية مع ربط التباين الوردي.</p>\r\n\r\n<ul>\r\n	<li>2&frac12; &quot;شفة مع &frac14;&quot; من التباين التسجيل.</li>\r\n	<li>إغلاق المغلف الخلفي.</li>\r\n	<li>100٪ قطن. آلة قابل للغسل. مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(52, 1, 'RL BEADED DYLAN PILLOW', '<ul>\r\n	<li>Vertical rib-knit design with beading at the front. Solid-colored back.</li>\r\n	<li>Concealed zipper at the bottom.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>15&quot; L x 20&quot; W. Shell: 70% wool; 30% cashmere. Insert: 95% feathers; 5% down blend. Dry clean. Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(52, 4, 'RL ديلان BEADED سادة', '<ul>\r\n	<li>عمودي تصميم ضلع متماسكة مع الديكور في الجبهة. الصلبة الملونة الظهر.</li>\r\n	<li>أخفى سستة في القاع.</li>\r\n	<li>يأتي مع إدراج وسادة.</li>\r\n	<li>15 &quot;L &times; 20&quot; W شل: 70٪ من الصوف. 30٪ الكشمير. إدراج: 95٪ الريش. 5٪ مزيج أسفل. نظيفة جافة. المستوردة.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(53, 1, 'GREAT BASIN THROW PILLOW', '<ul>\r\n	<li>Allover embroidery at the face. Solid silk twill back.</li>\r\n	<li>Concealed zip closure at one side.</li>\r\n	<li>Comes with a pillow insert.</li>\r\n	<li>22&quot; L x 22&quot; W. Shell: 100% silk. Insert: 95% feathers; 5% down blend. Dry clean. Made in India.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(53, 4, 'جليل، إصطاد الحيتان،', '<ul>\r\n	<li>كل التطريز على الوجه. الحرير الصلبة حك العودة.</li>\r\n	<li>إغلاق الرمز البريدي مخفي في جانب واحد.</li>\r\n	<li>يأتي مع إدراج وسادة.</li>\r\n	<li>22 &quot;l &times; 22&quot; W. شل: 100٪ الحرير. إدراج: 95٪ الريش. 5٪ أسفل مزيج. تنظيف جاف. المحرز في الهند.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(54, 1, 'CABLED CASHMERE TRAVEL SET', '<ul>\r\n	<li>Eye mask is lined with contrasting woven cotton and has two elastic straps for a secure fit.</li>\r\n	<li>Rectangular cable-knit throw blanket has ribbed edges.</li>\r\n	<li>Zippered cable-knit bag is lined with coordinating cotton fleece.</li>\r\n	<li>Bag: 15&quot; L x 12&quot; W. Blanket: 32&quot; L x 55&quot; W.</li>\r\n	<li>Cashmere and cotton. Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(54, 4, 'كابلد كاشمير ترافيل سيت', '<ul>\r\n	<li>يصف قناع العين مع القطن المنسوج المتناقضة ولها اثنين من الأشرطة المرنة لملاءمة آمنة.</li>\r\n	<li>مستطيلة كابل رمي بطانية متماسكة حواف مضلع.</li>\r\n	<li>انحرفت حقيبة انغلق كابل متماسكة مع المنسوجات القطن الصوف.</li>\r\n	<li>حقيبة: 15 &quot;L &times; 12&quot; W. بطانية: 32 &quot;L &times; 55&quot; W.</li>\r\n	<li>الكشمير والقطن. مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(55, 1, 'Langdon Embroidered Bathrobe', '<p>This relaxed-fitting unisex bathrobe is tailored from plush Turkish cotton, a durable fiber that becomes softer and more absorbent after each washing. The spa-inspired style is embellished with contrasting embroidery along the shawl collar, placket and cuffs for a classic look. Add a monogram at the left chest for a personal touch.</p>\r\n\r\n<ul>\r\n	<li>Relaxed fit. Shawl collar.</li>\r\n	<li>Long sleeves with turn-back cuffs. Pocket at each hip.</li>\r\n	<li>Self-tie belt at the waist.</li>\r\n	<li>100% Turkish cotton. Machine washable. Imported.</li>\r\n	<li>Small: 47&quot; back body length; 44&quot; chest; 24&quot; sleeve length.</li>\r\n	<li>Medium: 48&quot; back body length; 46&quot; chest; 24&frac12;&quot; sleeve length.</li>\r\n	<li>Large: 49&quot; back body length; 49&quot; chest; 25&frac12;&quot; sleeve length.</li>\r\n	<li>Please note, personalized items are non-returnable. A $5 monogramming charge will be added to the retail price.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(55, 4, 'لانغدون البشكير مطرزة', '<p>هذا الحمام المناسب للجنسين مصمم خصيصا من القطن التركي الفاخر، وهو ألياف دائمة تصبح أكثر ليونة وأكثر امتصاصا بعد كل غسل. مزين بأسلوب مستوحى من السبا بالتطريز المتناقض على طول طوق الشال، والأغطية والأصفاد للحصول على مظهر كلاسيكي. إضافة مشبك في الصدر الأيسر لمسة شخصية.</p>\r\n\r\n<ul>\r\n	<li>تناسب مريح. طوق شال.</li>\r\n	<li>أكمام طويلة مع الأصفاد بدوره إلى الوراء. جيب في كل الورك.</li>\r\n	<li>حزام التعادل الذاتي في وسطه.</li>\r\n	<li>100٪ القطن التركي. آلة قابل للغسل. مستورد.</li>\r\n	<li>الصغيرة: 47 &quot;الظهر طول الجسم؛ 44&quot; الصدر؛ 24 &quot;طول الأكمام.</li>\r\n	<li>متوسط: 48 &quot;الظهر طول الجسم؛ 46&quot; الصدر؛ 24&frac12; &quot;طول الأكمام.</li>\r\n	<li>كبير: 49 &quot;الظهر طول الجسم؛ 49&quot; الصدر؛ 25&frac12; &quot;طول الأكمام.</li>\r\n	<li>يرجى ملاحظة أن العناصر الشخصية غير قابلة للإرجاع. سيتم إضافة 5 $ تهمة مونوغرامينغ إلى سعر التجزئة.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(56, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and a 19&quot; back body length.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands.</li>\r\n	<li>Chenille-and-felt &quot;Polo RL Athl.&quot; patch at the left chest. Chain-stitched &quot;RL Athl. Division #5 New York&quot; embroidery at the right chest.</li>\r\n	<li>Chain-stitched &quot;New York 1967 Athletics&quot; embroidery at the center back.</li>\r\n	<li>Tennis tail. &quot;Polo Ralph Lauren MCMLXVII&quot; patch at the front right hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(56, 4, 'قطن ميش بولو شيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم 4 / 4T لديه 17&frac34; &quot;طول الجسم الأمامي و 19&quot; طول الجسم الخلفي.</li>\r\n	<li>مخطط، بولو، طوق. اثنين زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة مخطط.</li>\r\n	<li>الشنيل وشعر &quot;بولو رل أثل&quot;. التصحيح في الصدر الأيسر. سلسلة مخيط &quot;رل أثل شعبة # 5 نيويورك&quot; التطريز في الصدر الأيمن.</li>\r\n	<li>سلسلة مخيط &quot;نيويورك 1967 ألعاب القوى&quot; التطريز في وسط الظهر.</li>\r\n	<li>ذيل التنس. &quot;بولو رالف لورين مكملكسفي&quot; التصحيح في الجبهة اليمنى تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(57, 1, 'COTTON MESH POLO SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size 4/4T has a 17&frac34;&quot; front body length and an 18&frac12;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Ribbed Polo collar.</li>\r\n	<li>Two-button placket.</li>\r\n	<li>Short sleeves with ribbed armbands.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(57, 4, 'قطن ميش بولو شيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم 4 / 4T لديه 17&frac34; &quot;طول الجسم الأمامي و 18 &frac12;&quot; طول الجسم الخلفي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مضلع طوق بولو.</li>\r\n	<li>اثنين زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة.</li>\r\n	<li>ذيل التنس.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(58, 1, 'BANNER COTTON MESH POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; body length.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Striped ribbed Polo collar. Two-button placket.</li>\r\n	<li>Short sleeves with striped ribbed armbands. Chenille &quot;67&quot; patch at the right sleeve.</li>\r\n	<li>&quot;Academy PRL Athl.&quot; crackle-print and a &quot;67&quot; shield patch at the center back.</li>\r\n	<li>Even vented hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(58, 4, 'بانر القطن ميش بولو', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 23&frac34; &quot;طول الجسم.</li>\r\n	<li>إمبروديرد ضخم، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مخطط، بولو، طوق. اثنين زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع رباطات مضلعة مخطط. الشنيل &quot;67&quot; التصحيح في كم الصحيح.</li>\r\n	<li>&quot;أكاديمية برل أثل&quot;. الكراكلة الطباعة و &quot;67&quot; درع التصحيح في وسط الظهر.</li>\r\n	<li>حتى تنفيس تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(59, 1, 'COTTON MESH LONG-SLEEVE POLO', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac34;&quot; front body length, a 25&frac14;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Signature embroidered Big Pony at the left chest.</li>\r\n	<li>Ribbed Polo collar. Two-button placket.</li>\r\n	<li>Long sleeves with ribbed cuffs. Twill &quot;3&quot; patch at the right sleeve.</li>\r\n	<li>Tennis tail.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(59, 4, 'القطن شبكة طويلة الأكمام بولو', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 23&frac34; &quot;طول الجسم الأمامي، و 25 &frac14;&quot; طول الجسم الخلفي، وطول الأكمام 28 ..طول الأكمام مأخوذة من وسط الظهر من الرقبة.</li>\r\n	<li>إمبروديرد ضخم، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>مضلع طوق بولو. اثنين زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد مضلع. حك &quot;3&quot; التصحيح في كم الصحيح.</li>\r\n	<li>ذيل التنس.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(60, 1, 'PLAID COTTON TWILL WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>&quot;Polo&quot; label at the left pocket.</li>\r\n	<li>Point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(60, 4, 'بليد القطن تويل وركشيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 24&frac12; &quot;طول الجسم الأمامي، و 24 &frac34;&quot; طول الجسم الخلفي، وطول الأكمام 28 .. طول الأكمام مأخوذة من وسط الظهر من الرقبة.</li>\r\n	<li>&quot;بولو&quot; التسمية في الجيب الأيسر.</li>\r\n	<li>طوق نقطة.</li>\r\n	<li>زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>اثنين من الصدر جيوب زر.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(61, 1, 'COTTON OXFORD SPORT SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length, a 24&frac34;&quot; back body length, and a 28&frac12;&quot; sleeve length. Back body length and sleeve length are taken from the center back of the neck.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar.</li>\r\n	<li>Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(61, 4, 'كوتن أوكسفورد سبورت شيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم متوسط لديه 24&frac12; &quot;طول الجسم الأمامي، و 24 &frac34;&quot; طول الجسم الخلفي، و 28&frac12; &quot;طول الأكمام.أخذ طول الجسم وطول الأكمام تؤخذ من وسط الظهر من الرقبة.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>زر أسفل نقطة طوق.</li>\r\n	<li>زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>مربع مطوي نير نير.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(62, 1, 'COTTON MESH WORKSHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 23&frac12;&quot; front body length, a 25&quot; back body length, and a 28&frac12;&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Stenciled &quot;PRL67&quot; printed at the left chest.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(62, 4, 'قطن ميش وركشيرت', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 23&frac12; &quot;طول الجسم الأمامي، 25&quot; طول الجسم الخلفي، وطول الأكمام 28 ..طول الأكمام مأخوذة من وسط الظهر من الرقبة.</li>\r\n	<li>طوق نقطة. زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>اثنين من الصدر جيوب زر.</li>\r\n	<li>ستنسيلد &quot;PRL67&quot; المطبوعة في صدره الأيسر.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(63, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(63, 4, 'ستريبد، قطن، قميص', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 24&frac12; &quot;طول الجسم الأمامي و 24 &frac34;&quot; طول الجسم الخلفي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>زر أسفل نقطة طوق. زر بلاكيت.</li>\r\n	<li>أكمام قصيرة.</li>\r\n	<li>مربع مطوي نير نير.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(64, 1, 'STRIPED COTTON SHIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 24&frac12;&quot; front body length and a 24&frac34;&quot; back body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Button-down point collar. Buttoned placket.</li>\r\n	<li>Short sleeves.</li>\r\n	<li>Box-pleated back yoke.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(64, 4, 'ستريبد، قطن، قميص', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 24&frac12; &quot;طول الجسم الأمامي و 24 &frac34;&quot; طول الجسم الخلفي.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>زر أسفل نقطة طوق. زر بلاكيت.</li>\r\n	<li>أكمام قصيرة.</li>\r\n	<li>مربع مطوي نير نير.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(65, 1, 'SLIM MOTT-WASH JEAN', '<ul>\r\n	<li>Belted waistband. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling.</li>\r\n	<li>Fading down the leg with creased markings at the thigh and the knee.</li>\r\n	<li>100% cotton. Machine washable. Imported.</li>\r\n	<li>Belt is not included.</li>\r\n	<li>Size 12 has an average inseam of 27&frac12;&quot;.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(65, 4, 'سليم موت-واش جين', '<ul>\r\n	<li>حزام مربوط. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب.</li>\r\n	<li>خمسة جيب التصميم.</li>\r\n	<li>يتلاشى الساق مع علامات مجعدة في الفخذ والركبة.</li>\r\n	<li>100٪ قطن. آلة قابل للغسل. مستورد.</li>\r\n	<li>الحزام غير مشمول.</li>\r\n	<li>حجم 12 لديه متوسط إنزيم من 27&frac12; &quot;.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(66, 1, 'ELDRIDGE STRETCH SKINNY JEAN', '<ul>\r\n	<li>99% cotton, 1% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Skinny Fit.</li>\r\n	<li>Size 12 has a 7&frac14;&quot; rise, a 26&frac12;&quot; inseam, and a 12&frac14;&quot; leg opening.</li>\r\n	<li>Belt loops. Zip fly with our signature shank closure.</li>\r\n	<li>Five-pocket styling with signature metal rivets.</li>\r\n	<li>&quot;Polo&quot; label at the right coin pocket.</li>\r\n	<li>&quot;Polo Ralph Lauren&quot; faux-suede patch at the back right waist.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(66, 4, 'إلدريدج ستريتش سكيني جين', '<ul>\r\n	<li>قطن 99٪، إلاستين 1٪.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>نحيل صالح.</li>\r\n	<li>حجم 12 لديه ارتفاع 7&frac14; &quot;، إنزيم 26&frac12;&quot;، وفتح الساق 12&frac14; &quot;.</li>\r\n	<li>حلقات الحزام. الرمز البريدي يطير مع إغلاقنا توقيع عرقوب.</li>\r\n	<li>تصميم خمسة جيب مع المسامير المعدنية التوقيع.</li>\r\n	<li>&quot;بولو&quot; التسمية في جيب عملة الصحيح.</li>\r\n	<li>&quot;بولو رالف لورين&quot; التصحيح فو الجلد المدبوغ في الخصر الخلفي الخلفي.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(67, 1, 'POLO I WOOL TWILL SUIT', '<ul>\r\n	<li>Jacket features notched lapels, a two-button silhouette and long sleeves with a four-button detail at each cuff.</li>\r\n	<li>Jacket also features an angled welt pocket at the left chest, interior besom pockets at the left and right chest, flapped besom pockets at the waist and a vented back hem. Jacket is fully lined.</li>\r\n	<li>Trouser features belt loops, a zip fly with a hook-and-bar closure, a finished waistband with interior suspender buttons and a flat front.</li>\r\n	<li>Trouser also features side on-seam pockets, a button-and-loop besom pocket at the back left and a buttoned besom pocket at the back right. Unfinished hems ready for custom-tailoring.</li>\r\n	<li>Jacket and trouser: 100% wool. Jacket lining: 100% viscose. Dry clean. Made in Italy.</li>\r\n	<li>Update this classic style with a bold bow tie and cool sneakers.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(67, 4, 'بولو أنا الصوف حك تناسب', '<ul>\r\n	<li>سترة يتميز التلبيب محفورة، صورة ظلية على زرين وأكمام طويلة مع تفاصيل أربعة زر في كل صفعة.</li>\r\n	<li>كما تحتوي السترة أيضا على جيب مائل في الصدر الأيسر، وجيوب داخلية من الجيب في الصدر الأيمن واليسار، وجيوب ذات حواف في الخصر، وتنحنح الظهر. سترة واصطف تماما.</li>\r\n	<li>بنطلون يتميز الحزام الحلقات، الرمز البريدي يطير مع هوك و بار إغلاق، حزام الانتهاء مع أزرار داخلية الحمالة و جبهة مسطحة.</li>\r\n	<li>كما يتميز بنطلون جيوب جانبية على الجيب، وجيب بيزوم وحلقة في الخلف على اليسار، وجيب بيزوم زرر في الجانب الخلفي الأيمن. لم تنته هويمز جاهزة للخياطة-- مخصص.</li>\r\n	<li>سترة وبنطلون: صوف 100٪. سترة بطانة: 100٪ فسكوزي. تنظيف جاف. صنع في ايطاليا.</li>\r\n	<li>تحديث هذا النمط الكلاسيكي مع التعادل الجريئة القوس وأحذية رياضية باردة.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(68, 1, 'BELTED STRETCH COTTON CHINO', '<ul>\r\n	<li>Pant: 98% cotton, 2% elastane. Belt: 100% viscose.</li>\r\n	<li>Pant: machine washable.</li>\r\n	<li>Pant: Size 12 has a 7&frac14;&quot; rise, a 27&frac12;&quot; inseam, and a 12&frac34;&quot; leg-opening circumference.</li>\r\n	<li>Belt: 1&frac14;&quot; wide.</li>\r\n	<li>Pant: belt loops; zip fly with a buttoned closure; side on-seam pockets; coin pocket; two back buttoned pockets; &quot;Polo&quot; label at the back right pocket.</li>\r\n	<li>Belt: silver-tone double-D-ring closure.</li>\r\n	<li>Imported.</li>\r\n	<li>Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(68, 4, 'محكم تمتد القطن تشينو', '<ul>\r\n	<li>بانت: 98٪ قطن، 2٪ إلاستان. حزام: 100٪ فسكوزي.</li>\r\n	<li>بانت: آلة قابل للغسل.</li>\r\n	<li>بانت: حجم 12 لديه ارتفاع 7&frac14;، و 27&frac12; &quot;إنزيم، و 12&quot; &quot;فتح الساق فتح.</li>\r\n	<li>حزام: 1&frac14; &quot;واسعة.</li>\r\n	<li>بانت: بيلت لوبس؛ الرمز البريدي يطير مع إغلاق زر. الجانب جيوب على التماس. جيب عملة؛ اثنين من جيوب زرر الظهر. &quot;بولو&quot; التسمية في الجيب الأيمن الخلفي.</li>\r\n	<li>حزام: الفضة لهجة مزدوجة-- d-- إغلاق حلقة.</li>\r\n	<li>مستورد.</li>\r\n	<li>نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(69, 1, 'BATTEN CANVAS EZ BOAT SHOE', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Slip-on styling with a hook-and-loop strap closure.</li>\r\n	<li>Deck-shoe laces thread through metal grommets at the sides.</li>\r\n	<li>Rubber \\"Polo\\" tag at the outer side and the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Signature embroidered pony at the strap.</li>\r\n	<li>Cotton.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(69, 4, 'باتن قماش إز قارب حذاء', '<ul>\r\n	<li>اصبع القدم مدورة.</li>\r\n	<li>الانزلاق على التصميم مع ربط حزام وربط حلقة.</li>\r\n	<li>سطح الأحذية الأربطة الصفحات من خلال الحلقات المعدنية على الجانبين.</li>\r\n	<li>المطاط \\"بولو\\" العلامة في الجانب الخارجي وكعب.</li>\r\n	<li>نعل مبطن.</li>\r\n	<li>المطاط تسولي المطاط.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، ستراب.</li>\r\n	<li>القطن.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(70, 1, 'PROPELL II SNEAKER', '<ul>\r\n	<li>Rounded toe.</li>\r\n	<li>Hook-and-loop strap closure at the vamp.</li>\r\n	<li>&quot;Polo&quot; printed at the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Printed signature pony at the strap.</li>\r\n	<li>Man-made materials.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(70, 4, 'بروبيل الثاني سناكر', '<ul>\r\n	<li>اصبع القدم مدورة.</li>\r\n	<li>حزام هوك وحلقة إغلاق في الرقعة.</li>\r\n	<li>&quot;بولو&quot; المطبوعة في كعب.</li>\r\n	<li>نعل مبطن.</li>\r\n	<li>المطاط تسولي المطاط.</li>\r\n	<li>توقيع المهر توقيع على حزام.</li>\r\n	<li>مواد من صنع الإنسان.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(71, 1, 'BANKS SANDAL', '<ul>\r\n	<li>Open toe. Hook-and-loop closure at the vamp.</li>\r\n	<li>Hook-and-loop strap closure at the heel.</li>\r\n	<li>Padded insole.</li>\r\n	<li>Treaded rubber outsole.</li>\r\n	<li>Screen-printed signature pony at the vamp.</li>\r\n	<li>Man-made materials.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(71, 4, 'البنوك ساندال', '<ul>\r\n	<li>فتح اصبع القدم. إغلاق هوك وحلقة في الرقعة.</li>\r\n	<li>حزام هوك وحلقة إغلاق في كعب.</li>\r\n	<li>نعل مبطن.</li>\r\n	<li>المطاط تسولي المطاط.</li>\r\n	<li>يطبع المهر توقيع الشاشة على الرقعة.</li>\r\n	<li>مواد من صنع الإنسان.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(72, 1, 'MADRAS COTTON SHIRTDRESS', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Fit-and-flare silhouette.</li>\r\n	<li>Size 10 has a 30&quot; front body length and a 27&quot; sleeve length. Sleeve length is taken from the center back of the neck.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Long sleeves with buttoned barrel cuffs.</li>\r\n	<li>Comes with a self-belt with a double-D-ring closure. Shirred waist.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(72, 4, 'مادراس كوتن شيرتدريس', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>صالح و مضيئة خيال.</li>\r\n	<li>حجم 10 لديه 30 &quot;الجبهة طول الجسم و 27&quot; كم طول. يؤخذ طول الأكمام من وسط الظهر من الرقبة.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>طوق نقطة. زر بلاكيت.</li>\r\n	<li>أكمام طويلة مع الأصفاد برميل زرر.</li>\r\n	<li>يأتي مع حزام الذاتي مع إغلاق مزدوج D- حلقة. شيريد الخصر.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(73, 1, 'COTTON CHINO BELTED SHIRTDRESS', '<ul>\r\n	<li>Dress: 100% cotton. Belt: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Fit-and-flare silhouette.</li>\r\n	<li>Size 10 has a 30&quot; front body length.</li>\r\n	<li>Point collar. Buttoned placket.</li>\r\n	<li>Short sleeves with buttoned cuffs.</li>\r\n	<li>Two chest buttoned pockets.</li>\r\n	<li>Shirred waist with a removable striped belt.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(73, 4, 'القطن تشينو حزام محكم', '<ul>\r\n	<li>اللباس: 100٪ من القطن. حزام: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>صالح و مضيئة خيال.</li>\r\n	<li>حجم 10 لديه 30 &quot;الجبهة طول الجسم.</li>\r\n	<li>طوق نقطة. زر بلاكيت.</li>\r\n	<li>أكمام قصيرة مع الأصفاد زر.</li>\r\n	<li>اثنين من الصدر جيوب زر.</li>\r\n	<li>شيريد الخصر مع حزام مخطط قابل للإزالة.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(74, 1, 'STRIPED OFF-THE-SHOULDER DRESS', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Off-the-shoulder silhouette.</li>\r\n	<li>Size 10 has a 26&frac14;&quot; front body length.</li>\r\n	<li>Smocked off-the-shoulder neckline with adjustable shoulder straps.</li>\r\n	<li>Short raglan sleeves.</li>\r\n	<li>Two side on-seam pockets at the hips.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(74, 4, 'ستريبد أوف-ذي-شولدر دريس', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>صورة ظلية على الكتف.</li>\r\n	<li>حجم 10 لديه 26&frac14; &quot;طول الجسم الأمامي.</li>\r\n	<li>سموكيد العنق على الكتف مع الأشرطة الكتف قابل للتعديل.</li>\r\n	<li>قصيرة الأكمام راجلان.</li>\r\n	<li>اثنين من الجانب على جيوب التماس في الوركين.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(75, 1, 'BUTTON-FRONT DENIM SKIRT', '<ul>\r\n	<li>96% cotton, 3% polyester, 1% elastane.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Slight A-line silhouette.</li>\r\n	<li>Size 10 has an 11&quot; front body length and a 12&quot; back body length.</li>\r\n	<li>Belt loops. Buttoned front. Signature shank closures</li>\r\n	<li>Five-pocket styling.</li>\r\n	<li>Faux-suede &quot;Polo&quot; patch at the back right waist.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(75, 4, 'بوتون-فرونت دينيم تنورة', '<ul>\r\n	<li>٪ 96 قطن، 3٪ بوليستر، 1٪ إلاستان.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>طفيف ألف خط صورة ظلية.</li>\r\n	<li>حجم 10 لديه 11 &quot;طول الجسم الأمامي و 12&quot; طول الجسم الخلفي.</li>\r\n	<li>حلقات الحزام. جبهة أمامية. إغلاق عرقوب التوقيع</li>\r\n	<li>خمسة جيب التصميم.</li>\r\n	<li>فو الجلد المدبوغ &quot;بولو&quot; التصحيح في الخصر الخلفي الخلفي.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(76, 1, 'FLORAL SKIRT', '<ul>\r\n	<li>Shell: 100% viscose. Lining: 100% polyester.</li>\r\n	<li>Machine washable.</li>\r\n	<li>A-line silhouette.</li>\r\n	<li>Size medium has a 13&frac12;&quot; front body length and a 14&quot; back body length.</li>\r\n	<li>Concealed left-side-seam zipper.</li>\r\n	<li>Fully lined.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(76, 4, 'تنورة الأزهار', '<ul>\r\n	<li>شل: 100٪ فسكوزي. البطانة: 100٪ البوليستر.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>ألف خط صورة ظلية.</li>\r\n	<li>حجم المتوسطة لديه 13&frac12; &quot;طول الجسم الأمامي و 14&quot; طول الجسم الخلفي.</li>\r\n	<li>مخفي سحاب التماس الجانب الأيسر.</li>\r\n	<li>مكتمل الصف.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(77, 1, 'PLEATED MADRAS SKIRT', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>A-line silhouette.</li>\r\n	<li>Size 10 has a 12&frac34;&quot; length.</li>\r\n	<li>Two buckled self-straps at the left side. Buttoned and hook-and-bar closures at the interior waist.</li>\r\n	<li>Pleated sides and back.</li>\r\n	<li>Due to the natural characteristics of this material, the coloring may rub off onto fabrics and upholstery.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(77, 4, 'مطوي تنورة مدراس', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>ألف خط صورة ظلية.</li>\r\n	<li>حجم 10 لديه 12&frac34; &quot;طول.</li>\r\n	<li>اثنين من الأشرطة الذاتي مشبك في الجانب الأيسر. إغلاق وإغلاق وربط في الخصر الداخلي.</li>\r\n	<li>الجانبين مطوي والظهر.</li>\r\n	<li>نظرا للخصائص الطبيعية لهذه المادة، قد تلتصق التلوين على الأقمشة والمفروشات.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(78, 1, 'CABLE-KNIT CASHMERE SWEATER', '<ul>\r\n	<li>100% cashmere.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Size medium has an 18&frac12;&quot; body length and a 20&quot; sleeve length.</li>\r\n	<li>Rib-knit crewneck.</li>\r\n	<li>Long sleeves with rib-knit cuffs.</li>\r\n	<li>Rib-knit hem.</li>\r\n	<li>Imported. Italian cashmere.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(78, 4, 'كابل-كنيت الكشمير', '<ul>\r\n	<li>100٪ الكشمير.</li>\r\n	<li>غسل اليد.</li>\r\n	<li>حجم المتوسطة لديها 18 &quot;طول الجسم و 20&quot; طول الأكمام.</li>\r\n	<li>الضلع متماسكة.</li>\r\n	<li>أكمام طويلة مع الأصفاد متماسكة ضلع.</li>\r\n	<li>الضلع متماسكة.</li>\r\n	<li>مستورد. الكشمير الإيطالي.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(79, 1, 'FAIR ISLE HOODED SWEATER', '<ul>\r\n	<li>Shell: 27% wool, 26% cotton, 23% viscose, 22% nylon, 2% cashmere. Lining: 100% cotton.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Straight fit.</li>\r\n	<li>Size medium has a 19&frac14;&quot; body length and an 18&frac12;&quot; sleeve length. Sleeve length changes 2&quot; between sizes.</li>\r\n	<li>Hood. Three toggle-and-loop closures at the center front.</li>\r\n	<li>Long sleeves with ribbed cuffs.</li>\r\n	<li>Two front waist patch pockets.</li>\r\n	<li>Fully lined. Ribbed hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(79, 4, 'عسل عسلي هودد البلوز', '<ul>\r\n	<li>شل: صوف 27٪، قطن 26٪، فسكوزي 23٪، نايلون 22٪، كشمير 2٪. البطانة: 100٪ القطن.</li>\r\n	<li>غسل اليد.</li>\r\n	<li>خطوات ثابتة.</li>\r\n	<li>حجم المتوسطة لديها 19 &quot;طول الجسم و 18&frac12;&quot; طول الأكمام. طول طول التغييرات 2 &quot;بين الأحجام.</li>\r\n	<li>غطاء محرك السيارة. ثلاثة إغلاق تبديل و حلقة في الجبهة الوسط.</li>\r\n	<li>أكمام طويلة مع الأصفاد مضلع.</li>\r\n	<li>اثنين الجبهة الخصر التصحيح جيوب.</li>\r\n	<li>مكتمل الصف. مضلع تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0),
(80, 1, 'FLAG COMBED COTTON SWEATER', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Hand wash.</li>\r\n	<li>Size medium has an 18&quot; body length and a 19&frac12;&quot; sleeve length.</li>\r\n	<li>Rib-knit crewneck. Buttoned closure at the left shoulder.</li>\r\n	<li>Long sleeves with rib-knit cuffs.</li>\r\n	<li>Intarsia-knit American flag with hand-embroidered stars and &quot;RL&quot; embroidery at the center front.</li>\r\n	<li>Rib-knit hem.</li>\r\n	<li>Dyed with indigo, which may rub off onto fabrics, leather, and upholstery.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, 'resources/assets/images/products_banners/11538581120.160x600.png', 0, 0, NULL, 0, 0),
(80, 4, 'بطة، قطن، البلوز', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>غسل اليد.</li>\r\n	<li>حجم المتوسطة لديها 18 &quot;طول الجسم و 19&frac12;&quot; طول الأكمام.</li>\r\n	<li>الضلع متماسكة. إغلاق زر على الكتف الأيسر.</li>\r\n	<li>أكمام طويلة مع الأصفاد متماسكة ضلع.</li>\r\n	<li>إنتارسيا متماسكة العلم الأمريكي مع اليد-- مطرزة النجوم و &quot;رل&quot; التطريز في وسط الجبهة.</li>\r\n	<li>الضلع متماسكة.</li>\r\n	<li>مصبوغة مع النيلي، والتي قد تفرك على الأقمشة والجلود، والمفروشات.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 1541462400, 1574899200),
(81, 1, 'RUFFLED COTTON CARDIGAN', '<ul>\r\n	<li>100% cotton.</li>\r\n	<li>Machine washable.</li>\r\n	<li>Size medium has a 17&frac34;&quot; body length.</li>\r\n	<li>Signature embroidered pony at the left chest.</li>\r\n	<li>Rib-knit crewneck. Buttoned placket.</li>\r\n	<li>Puffed long sleeves with rib-knit cuffs.</li>\r\n	<li>Ruffled hem.</li>\r\n	<li>Imported.</li>\r\n</ul>', '', 0, NULL, 0, 0, 'resources/assets/images/products_banners/11538580934.160x600.png', 0, 0),
(81, 4, 'روفلد كوتن كارديغان', '<ul>\r\n	<li>100٪ قطن.</li>\r\n	<li>آلة قابل للغسل.</li>\r\n	<li>حجم المتوسطة لديه 17&frac34; &quot;طول الجسم.</li>\r\n	<li>التوقيع، مطرزة، ترجمة حرفية، إلى، ال التعريف، اليسار، تشيست.</li>\r\n	<li>الضلع متماسكة. زر بلاكيت.</li>\r\n	<li>الأكمام الطويلة منتفخة مع الأصفاد متماسكة ضلع.</li>\r\n	<li>تكدرت تنحنح.</li>\r\n	<li>مستورد.</li>\r\n</ul>', '', 0, NULL, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` mediumtext COLLATE utf8_unicode_ci,
  `htmlcontent` mediumtext COLLATE utf8_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, 'resources/assets/images/product_images/1502107398.pPOLO2-26314766_alternate1_v360x480.jpg', '', 1),
(2, 1, 'resources/assets/images/product_images/1502107404.pPOLO2-26314766_alternate2_v360x480.jpg', '', 1),
(3, 1, 'resources/assets/images/product_images/1502107411.pPOLO2-26314766_alternate3_v360x480.jpg', '', 1),
(4, 4, 'resources/assets/images/product_images/1502174861.pPOLO2-26314826_alternate1_v360x480.jpg', '', 1),
(5, 4, 'resources/assets/images/product_images/1502174868.pPOLO2-26314826_alternate2_v360x480.jpg', '', 1),
(6, 4, 'resources/assets/images/product_images/1502174874.pPOLO2-26314826_alternate3_v360x480.jpg', '', 1),
(7, 5, 'resources/assets/images/product_images/1502176795.pPOLO2-26316348_alternate1_v360x480.jpg', '', 1),
(8, 5, 'resources/assets/images/product_images/1502176801.pPOLO2-26316348_alternate2_v360x480.jpg', '', 1),
(9, 5, 'resources/assets/images/product_images/1502176808.pPOLO2-26316348_alternate3_v360x480.jpg', '', 1),
(10, 6, 'resources/assets/images/product_images/1502177811.pPOLO2-26314634_alternate1_v360x480.jpg', '', 1),
(11, 6, 'resources/assets/images/product_images/1502177816.pPOLO2-26314634_alternate2_v360x480.jpg', '', 1),
(12, 6, 'resources/assets/images/product_images/1502177823.pPOLO2-26314634_alternate3_v360x480.jpg', '', 1),
(13, 7, 'resources/assets/images/product_images/1502181296.pPOLO2-26008917_alternate1_v360x480.jpg', '', 1),
(14, 7, 'resources/assets/images/product_images/1502181302.pPOLO2-26008917_alternate2_v360x480.jpg', '', 1),
(15, 7, 'resources/assets/images/product_images/1502181310.pPOLO2-26008917_alternate3_v360x480.jpg', '', 1),
(16, 8, 'resources/assets/images/product_images/1502182266.pPOLO2-26008953_alternate1_v360x480.jpg', '', 1),
(17, 8, 'resources/assets/images/product_images/1502182272.pPOLO2-26008953_alternate2_v360x480.jpg', '', 1),
(18, 8, 'resources/assets/images/product_images/1502182279.pPOLO2-26008953_alternate3_v360x480.jpg', '', 1),
(19, 9, 'resources/assets/images/product_images/1502186424.pPOLO2-26008935_alternate1_v360x480.jpg', '', 1),
(21, 9, 'resources/assets/images/product_images/1502186446.pPOLO2-26008935_alternate2_v360x480.jpg', '', 1),
(23, 9, 'resources/assets/images/product_images/1502186468.pPOLO2-26008935_alternate3_v360x480.jpg', '', 1),
(27, 10, 'resources/assets/images/product_images/1502187573.pPOLO2-26315018_alternate1_v360x480.jpg', '', 1),
(28, 10, 'resources/assets/images/product_images/1502187583.pPOLO2-26315018_alternate2_v360x480.jpg', '', 1),
(29, 10, 'resources/assets/images/product_images/1502187596.pPOLO2-26315018_alternate3_v360x480.jpg', '', 1),
(30, 11, 'resources/assets/images/product_images/1502188797.pPOLO2-26317497_alternate1_v360x480.jpg', '', 1),
(31, 11, 'resources/assets/images/product_images/1502188805.pPOLO2-26317497_alternate2_v360x480.jpg', '', 1),
(32, 11, 'resources/assets/images/product_images/1502188814.pPOLO2-26317497_alternate3_v360x480.jpg', '', 1),
(33, 12, 'resources/assets/images/product_images/1502189793.pPOLO2-26316198_alternate1_v360x480.jpg', '', 1),
(34, 12, 'resources/assets/images/product_images/1502189798.pPOLO2-26316198_alternate2_v360x480.jpg', '', 1),
(35, 12, 'resources/assets/images/product_images/1502189805.pPOLO2-26316198_alternate3_v360x480.jpg', '', 1),
(36, 13, 'resources/assets/images/product_images/1502190279.pPOLO2-26315541_alternate1_v360x480.jpg', '', 1),
(37, 13, 'resources/assets/images/product_images/1502190286.pPOLO2-26315541_alternate2_v360x480.jpg', '', 1),
(38, 13, 'resources/assets/images/product_images/1502190295.pPOLO2-26315541_alternate3_v360x480.jpg', '', 1),
(39, 14, 'resources/assets/images/product_images/1502190650.pPOLO2-26404754_standard_v400.jpg', '', 1),
(40, 14, 'resources/assets/images/product_images/1502190660.pPOLO2-26404754_alternate2_v360x480.jpg', '', 1),
(41, 14, 'resources/assets/images/product_images/1502190665.pPOLO2-26404754_alternate3_v360x480.jpg', '', 1),
(42, 15, 'resources/assets/images/product_images/1502191226.pPOLO2-26256326_alternate1_v360x480.jpg', '', 1),
(43, 15, 'resources/assets/images/product_images/1502191230.pPOLO2-26256326_alternate2_v360x480.jpg', '', 1),
(44, 15, 'resources/assets/images/product_images/1502191234.pPOLO2-26256326_alternate3_v360x480.jpg', '', 1),
(45, 16, 'resources/assets/images/product_images/1502191401.pPOLO2-21857429_alternate2_v360x480.jpg', '', 1),
(46, 16, 'resources/assets/images/product_images/1502191406.pPOLO2-21857429_alternate3_v360x480.jpg', '', 1),
(47, 17, 'resources/assets/images/product_images/1502191619.pPOLO2-26256404_alternate1_v360x480.jpg', '', 1),
(48, 17, 'resources/assets/images/product_images/1502191626.pPOLO2-26256404_alternate2_v360x480.jpg', '', 1),
(49, 17, 'resources/assets/images/product_images/1502191633.pPOLO2-26256404_alternate3_v360x480.jpg', '', 1),
(50, 18, 'resources/assets/images/product_images/1502191918.pPOLO2-24354359_alternate1_v360x480.jpg', '', 1),
(51, 18, 'resources/assets/images/product_images/1502191923.pPOLO2-24354359_alternate2_v360x480.jpg', '', 1),
(52, 18, 'resources/assets/images/product_images/1502191929.pPOLO2-24354359_alternate3_v360x480.jpg', '', 1),
(53, 19, 'resources/assets/images/product_images/1502192102.pPOLO2-25784541_alternate1_v360x480.jpg', '', 1),
(54, 19, 'resources/assets/images/product_images/1502192107.pPOLO2-25784541_alternate2_v360x480.jpg', '', 1),
(55, 19, 'resources/assets/images/product_images/1502192112.pPOLO2-25784541_alternate3_v360x480.jpg', '', 1),
(56, 20, 'resources/assets/images/product_images/1502192380.pPOLO2-12181663_alternate1_v360x480.jpg', '', 1),
(57, 21, 'resources/assets/images/product_images/1502193428.pPOLO2-19116009_alternate5_v360x480.jpg', '', 1),
(58, 22, 'resources/assets/images/product_images/1502193592.pPOLO2-24933842_alternate1_v360x480.jpg', '', 1),
(59, 22, 'resources/assets/images/product_images/1502193608.pPOLO2-24933842_alternate2_v360x480.jpg', '', 1),
(60, 23, 'resources/assets/images/product_images/1502193742.pPOLO2-24128696_alternate1_v360x480.jpg', '', 1),
(61, 23, 'resources/assets/images/product_images/1502193755.pPOLO2-24128696_alternate2_v360x480.jpg', '', 1),
(62, 24, 'resources/assets/images/product_images/1502194983.pPOLO2-25759503_standard_v360x480.jpg', '', 1),
(63, 24, 'resources/assets/images/product_images/1502194989.pPOLO2-25759503_alternate3_v360x480.jpg', '', 1),
(65, 25, 'resources/assets/images/product_images/1502195162.pPOLO2-25759495_alternate8_v360x480.jpg', '', 1),
(66, 25, 'resources/assets/images/product_images/1502195167.pPOLO2-25759495_alternate3_v360x480.jpg', '', 1),
(67, 26, 'resources/assets/images/product_images/1502195500.pPOLO2-26059809_standard_v360x480.jpg', '', 1),
(68, 26, 'resources/assets/images/product_images/1502195504.pPOLO2-26059809_alternate3_v360x480.jpg', '', 1),
(69, 27, 'resources/assets/images/product_images/1502195693.pPOLO2-25854363_standard_v360x480.jpg', '', 1),
(70, 27, 'resources/assets/images/product_images/1502195698.pPOLO2-25854363_alternate3_v360x480.jpg', '', 1),
(71, 28, 'resources/assets/images/product_images/1502196955.pPOLO2-25759710_alternate2_v360x480.jpg', '', 1),
(72, 28, 'resources/assets/images/product_images/1502196961.pPOLO2-25759710_alternate1_v360x480.jpg', '', 1),
(73, 29, 'resources/assets/images/product_images/1502198243.pPOLO2-25759868_alternate1_v360x480.jpg', '', 1),
(74, 29, 'resources/assets/images/product_images/1502198249.pPOLO2-25759868_alternate2_v360x480.jpg', '', 1),
(75, 30, 'resources/assets/images/product_images/1502198485.pPOLO2-26060127_alternate1_v360x480.jpg', '', 1),
(76, 30, 'resources/assets/images/product_images/1502198490.pPOLO2-26060127_alternate2_v360x480.jpg', '', 1),
(77, 31, 'resources/assets/images/product_images/1502199708.pPOLO2-26451235_alternate1_v360x480.jpg', '', 1),
(78, 31, 'resources/assets/images/product_images/1502199722.pPOLO2-26451235_alternate2_v360x480.jpg', '', 1),
(79, 32, 'resources/assets/images/product_images/1502200897.pPOLO2-26328182_alternate1_v360x480.jpg', '', 1),
(80, 32, 'resources/assets/images/product_images/1502200911.pPOLO2-26328182_alternate2_v360x480.jpg', '', 1),
(81, 33, 'resources/assets/images/product_images/1502201134.pPOLO2-26328155_alternate1_v360x480.jpg', '', 1),
(82, 33, 'resources/assets/images/product_images/1502201141.pPOLO2-26328155_alternate2_v360x480.jpg', '', 1),
(83, 34, 'resources/assets/images/product_images/1502261155.pPOLO2-25480910_alternate1_v360x480.jpg', '', 1),
(84, 34, 'resources/assets/images/product_images/1502261161.pPOLO2-25480910_standard_v400.jpg', '', 1),
(85, 35, 'resources/assets/images/product_images/1502261680.pPOLO2-26161986_alternate1_v360x480.jpg', '', 1),
(86, 35, 'resources/assets/images/product_images/1502261688.pPOLO2-26161986_alternate2_v360x480.jpg', '', 1),
(87, 36, 'resources/assets/images/product_images/1502262213.pPOLO2-26161985_alternate1_v360x480.jpg', '', 1),
(88, 36, 'resources/assets/images/product_images/1502262221.pPOLO2-26161985_alternate2_v360x480.jpg', '', 1),
(89, 37, 'resources/assets/images/product_images/1502262505.pPOLO2-25480914_alternate1_v360x480.jpg', '', 1),
(90, 37, 'resources/assets/images/product_images/1502262510.pPOLO2-25480914_alternate2_v360x480.jpg', '', 1),
(91, 41, 'resources/assets/images/product_images/1502265623.pPOLO2-22839467_alternate1_v360x480.jpg', '', 1),
(92, 56, 'resources/assets/images/product_images/1502348047.pPOLO2-25995642_alternate1_v360x480.jpg', '', 1),
(93, 58, 'resources/assets/images/product_images/1502349087.pPOLO2-25961612_alternate1_v360x480.jpg', '', 1),
(94, 61, 'resources/assets/images/product_images/1502351686.pPOLO2-25961083_alternate1_v360x480.jpg', '', 1),
(95, 70, 'resources/assets/images/product_images/1502363144.pPOLO2-25464682_alternate1_v360x480.jpg', '', 1),
(96, 70, 'resources/assets/images/product_images/1502363160.pPOLO2-25464682_alternate2_v360x480.jpg', '', 1),
(97, 72, 'resources/assets/images/product_images/1502364167.pPOLO2-26091141_alternate1_v360x480.jpg', '', 1),
(98, 77, 'resources/assets/images/product_images/1502366133.pPOLO2-26091049_alternate1_v360x480.jpg', '', 1),
(99, 78, 'resources/assets/images/product_images/1502366354.pPOLO2-26090785_alternate1_v360x480.jpg', '', 1),
(100, 79, 'resources/assets/images/product_images/1502366470.pPOLO2-26090829_alternate1_v360x480.jpg', '', 1),
(103, 97, 'resources/assets/images/product_images/1542635255.pexels-photo-236047.jpeg', 'test test', 1),
(104, 98, 'resources/assets/images/product_images/1542638256.pexels-photo-236047.jpeg', 'test', 1),
(105, 99, 'resources/assets/images/product_images/1542638405.pexels-photo-236047.jpeg', 'tset', 1),
(106, 98, 'resources/assets/images/product_images/1542703742.00306.gif', 'tes test etst', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, ''),
(3, 'الألوان'),
(14, 'Waist'),
(15, 'Length');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(100) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'Colors', 1),
(2, 4, 'الألوان', 1),
(8, 4, 'بحجم', 3),
(7, 1, 'Size', 3),
(18, 4, 'الطول', 15),
(15, 1, 'Waist', 14),
(16, 4, 'وسط', 14),
(17, 1, 'Length', 15);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`) VALUES
(1, 1, 'Brown'),
(2, 1, 'Cream'),
(3, 1, 'Blue'),
(154, 3, 'Small'),
(155, 3, 'Large'),
(156, 3, 'XL'),
(160, 1, 'Black'),
(161, 1, 'Blue'),
(162, 1, 'Grey'),
(163, 1, 'White'),
(164, 1, 'Purple'),
(165, 1, 'Navy'),
(166, 1, 'Multi'),
(167, 3, 'Medium'),
(168, 14, '28w'),
(169, 14, '30w'),
(170, 14, '32w'),
(171, 14, '34w'),
(172, 14, '36w'),
(173, 14, '38w'),
(174, 14, '40w'),
(176, 14, '42w'),
(177, 15, '32L'),
(178, 15, '34L'),
(179, 15, '36L'),
(180, 15, '38L'),
(181, 15, '40L');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(100) NOT NULL,
  `language_id` int(100) NOT NULL,
  `options_values_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(1, 1, 'Brown', 1),
(2, 4, 'بنى', 1),
(15, 1, 'Large', 155),
(14, 4, 'صغير', 154),
(8, 4, 'أحمر', 2),
(7, 1, 'Red', 2),
(10, 1, 'Green', 3),
(11, 4, 'أخضر', 3),
(13, 1, 'Small', 154),
(16, 4, 'كبير', 155),
(17, 1, 'XL', 156),
(18, 4, 'كبير جدا', 156),
(60, 4, '32L', 177),
(59, 1, '32L', 177),
(25, 1, 'Black', 160),
(26, 4, 'أسود', 160),
(27, 1, 'Blue', 161),
(28, 4, 'أزرق', 161),
(29, 1, 'Grey', 162),
(30, 4, 'اللون الرمادي', 162),
(31, 1, 'White', 163),
(32, 4, 'أبيض', 163),
(33, 1, 'Purple', 164),
(34, 4, 'أرجواني', 164),
(35, 1, 'Navy', 165),
(36, 4, 'القوات البحرية', 165),
(37, 1, 'Multi', 166),
(38, 4, 'متعدد', 166),
(39, 1, 'Medium', 167),
(40, 4, 'متوسط', 167),
(41, 1, '28w', 168),
(42, 4, '28w', 168),
(43, 1, '30w', 169),
(44, 4, '30w', 169),
(45, 1, '32w', 170),
(46, 4, '32w', 170),
(47, 1, '34w', 171),
(48, 4, '34w', 171),
(49, 1, '36w', 172),
(50, 4, '36w', 172),
(51, 1, '38w', 173),
(52, 4, '38w', 173),
(53, 1, '40w', 174),
(58, 4, '42w', 176),
(57, 1, '42w', 176),
(56, 4, '40w', 174),
(61, 1, '34L', 178),
(62, 4, '34L', 178),
(63, 1, '36L', 179),
(64, 4, '36L', 179),
(65, 1, '38L', 180),
(66, 4, '38L', 180),
(67, 1, '40L', 181),
(68, 4, '40L', 181);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(100) NOT NULL,
  `weight_from` varchar(100) DEFAULT NULL,
  `weight_to` varchar(100) DEFAULT NULL,
  `weight_price` int(100) NOT NULL,
  `unit_id` int(100) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '20', 10, 1, 1),
(2, '21', '40', 20, 1, 1),
(3, '41', '60', 30, 1, 1),
(4, '61', '80', 40, 1, 1),
(5, '81', '100000', 50, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(1, 1),
(1, 7),
(2, 1),
(2, 7),
(4, 1),
(4, 7),
(5, 1),
(5, 7),
(6, 1),
(6, 7),
(7, 1),
(7, 8),
(8, 1),
(8, 8),
(9, 1),
(9, 8),
(10, 1),
(10, 8),
(11, 1),
(11, 9),
(12, 1),
(12, 9),
(13, 1),
(13, 9),
(14, 1),
(14, 10),
(15, 1),
(15, 10),
(16, 1),
(16, 10),
(17, 1),
(17, 10),
(18, 1),
(18, 10),
(19, 1),
(19, 10),
(20, 1),
(20, 11),
(21, 1),
(21, 11),
(22, 1),
(22, 11),
(23, 1),
(23, 11),
(24, 2),
(24, 12),
(25, 2),
(25, 12),
(26, 2),
(26, 12),
(27, 2),
(27, 12),
(28, 2),
(28, 13),
(29, 2),
(29, 13),
(30, 2),
(30, 13),
(31, 2),
(31, 14),
(32, 2),
(32, 14),
(33, 2),
(33, 14),
(34, 2),
(34, 15),
(35, 2),
(35, 15),
(36, 2),
(36, 15),
(37, 2),
(37, 15),
(38, 5),
(38, 16),
(39, 5),
(39, 16),
(40, 5),
(40, 16),
(41, 5),
(41, 16),
(42, 5),
(42, 17),
(43, 5),
(43, 17),
(44, 5),
(44, 17),
(45, 5),
(45, 18),
(46, 5),
(46, 18),
(47, 5),
(47, 18),
(48, 6),
(48, 19),
(49, 6),
(49, 19),
(50, 6),
(50, 19),
(51, 6),
(51, 19),
(52, 6),
(52, 20),
(53, 6),
(53, 20),
(54, 6),
(54, 20),
(55, 6),
(55, 21),
(56, 3),
(56, 22),
(57, 3),
(57, 22),
(58, 3),
(58, 22),
(59, 3),
(59, 22),
(60, 3),
(60, 23),
(61, 3),
(61, 23),
(62, 3),
(62, 23),
(63, 3),
(63, 23),
(64, 3),
(64, 23),
(65, 3),
(65, 24),
(66, 3),
(66, 24),
(67, 3),
(67, 24),
(68, 3),
(68, 24),
(69, 3),
(69, 25),
(70, 3),
(70, 25),
(71, 3),
(71, 25),
(72, 4),
(72, 26),
(73, 1),
(73, 4),
(73, 7),
(73, 26),
(74, 4),
(74, 26),
(75, 4),
(75, 27),
(76, 4),
(76, 27),
(77, 4),
(77, 27),
(78, 4),
(78, 26),
(79, 1),
(79, 4),
(79, 28),
(80, 3),
(80, 4),
(80, 28),
(81, 4),
(81, 28);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sec_directory_whitelist`
--

CREATE TABLE `sec_directory_whitelist` (
  `id` int(11) NOT NULL,
  `directory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(11) UNSIGNED NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'Facebook App ID', '2018-04-26 19:00:00', '2018-11-19 02:25:23'),
(2, 'facebook_secret_id', 'Facebook Secret IDs', '2018-04-26 19:00:00', '2018-11-19 02:25:23'),
(3, 'facebook_login', '1', '2018-04-26 19:00:00', '2018-11-19 02:25:23'),
(4, 'contact_us_email', 'vectorcoder@gmail.com', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(5, 'address', 'address', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(6, 'city', 'City', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(7, 'state', 'State', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(8, 'zip', 'Zip', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(9, 'country', 'Country', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(10, 'latitude', 'Latitude', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(11, 'longitude', 'Longitude', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(12, 'phone_no', '+92 312 1234567', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(13, 'fcm_android', '', '2018-04-26 19:00:00', '2018-11-19 02:25:39'),
(14, 'fcm_ios', NULL, '2018-04-26 19:00:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 19:00:00', NULL),
(16, 'website_logo', NULL, '2018-04-26 19:00:00', '2019-01-22 03:52:36'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 19:00:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-26 19:00:00', '2018-11-19 02:25:39'),
(19, 'app_name', 'Ecommerce', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(20, 'currency_symbol', '$', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(21, 'new_product_duration', '20', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 19:00:00', NULL),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(25, 'footer_button', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(26, 'cart_button', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(27, 'featured_category', NULL, '2018-04-26 19:00:00', NULL),
(28, 'notification_duration', 'year', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(29, 'home_style', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(30, 'wish_list_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(31, 'edit_profile_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(32, 'shipping_address_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(33, 'my_orders_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(34, 'contact_us_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(35, 'about_us_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(36, 'news_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(37, 'intro_page', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(38, 'setting_page', '1', '2018-04-26 19:00:00', NULL),
(39, 'share_app', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(40, 'rate_app', '1', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(41, 'site_url', 'URL', '2018-04-26 19:00:00', '2018-11-19 02:26:01'),
(42, 'admob', '0', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(43, 'admob_id', 'ID', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(46, 'category_style', '4', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(47, 'package_name', 'package name', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(48, 'google_analytic_id', 'test', '2018-04-26 19:00:00', '2018-11-23 01:16:41'),
(49, 'themes', 'themeone', '2018-04-26 19:00:00', NULL),
(50, 'company_name', 'VC', '2018-04-26 19:00:00', NULL),
(51, 'facebook_url', '#', '2018-04-26 19:00:00', '2019-01-23 03:53:44'),
(52, 'google_url', '#', '2018-04-26 19:00:00', '2019-01-23 03:53:44'),
(53, 'twitter_url', '#', '2018-04-26 19:00:00', '2019-01-23 03:53:44'),
(54, 'linked_in', '#', '2018-04-26 19:00:00', '2019-01-23 03:53:44'),
(55, 'default_notification', 'onesignal', '2018-04-26 19:00:00', '2018-11-19 02:25:39'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-26 19:00:00', '2018-11-19 02:25:39'),
(57, 'onesignal_sender_id', '50877237723', '2018-04-26 19:00:00', '2018-11-19 02:25:39'),
(58, 'ios_admob', '1', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 19:00:00', '2018-11-19 02:23:41'),
(62, 'google_login', '1', NULL, '2018-11-19 02:25:31'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '0', NULL, '2018-05-03 22:24:44'),
(68, 'is_desktop_purchased', '1', NULL, '2018-05-03 22:24:44'),
(69, 'consumer_key', '6df56cf915318431043dd7a75d', NULL, '2018-07-17 03:58:24'),
(70, 'consumer_secret', '95032b42153184310488f5fb8f', NULL, '2018-07-17 03:58:24'),
(71, 'order_email', 'orders@gmail.com', NULL, '2018-11-19 02:26:01'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-11-19 02:21:57'),
(74, 'seo_metatag', '', NULL, '2018-11-19 02:21:57'),
(75, 'seo_keyword', '', NULL, '2018-11-19 02:21:57'),
(76, 'seo_description', '', NULL, '2018-11-19 02:21:57'),
(77, 'before_head_tag', '', NULL, '2018-11-19 02:22:15'),
(78, 'end_body_tag', '', NULL, '2018-11-19 02:22:15'),
(79, 'sitename_logo', 'name', NULL, '2019-01-23 03:53:44'),
(80, 'website_name', '<strong>E</strong>COMMERCE', NULL, '2019-01-23 03:53:44'),
(81, 'web_home_pages_style', 'two', NULL, '2019-01-23 03:53:44'),
(82, 'web_color_style', 'app', NULL, '2019-01-23 03:53:44'),
(83, 'free_shipping_limit', '400', NULL, '2018-11-19 02:26:01'),
(84, 'app_icon_image', 'icon', NULL, '2018-11-23 01:16:41'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', '1213213', NULL, NULL),
(87, 'favicon', NULL, NULL, '2019-01-22 03:54:40'),
(89, 'mailchimp_listid', '', NULL, NULL),
(88, 'mailchimp_apikey', NULL, NULL, NULL),
(90, 'mailchimp_status', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_labels` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(3, 'الشحن مجانا', 4, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(6, 'شاحنة محلية', 4, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(9, 'معدل', 4, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{"nextDayAir":"Next Day Air","secondDayAir":"2nd Day Air","ground":"Ground","threeDaySelect":"3 Day Select","nextDayAirSaver":"Next Day AirSaver","nextDayAirEarlyAM":"Next Day Air Early A.M.","secondndDayAirAM":"2nd Day Air A.M."}'),
(12, 'يو بي إس الشحن', 4, 'ups_shipping', '{"nextDayAir":"\\u0627\\u0644\\u0647\\u0648\\u0627\\u0621 \\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a","secondDayAir":"\\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0644\\u0644\\u0637\\u064a\\u0631\\u0627\\u0646","ground":"\\u0623\\u0631\\u0636","threeDaySelect":"\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 3 \\u0623\\u064a\\u0627\\u0645","nextDayAirSaver":"\\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a \\u062a\\u0648\\u0641\\u064a\\u0631 \\u0627\\u0644\\u0647\\u0648\\u0627\\u0621","nextDayAirEarlyAM":"\\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a","secondndDayAirAM":"\\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0644\\u0644\\u0637\\u064a\\u0631\\u0627\\u0646"}'),
(13, 'Shipping Price', 1, 'shipping_by_weight', ''),
(14, 'الشحن عن طريق الوزن', 4, 'shipping_by_weight', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(100) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 1, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(255) NOT NULL,
  `sliders_image` varchar(255) NOT NULL,
  `sliders_group` varchar(64) NOT NULL,
  `sliders_html_text` mediumtext NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` varchar(64) NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'Slider-1', '', 'resources/assets/images/banner_images/1531931372.banner-001.jpg', '', '', '2029-01-03 00:00:00', '2018-07-20 10:29:47', 1, 'special', '2018-07-20 10:29:47', 1),
(2, 'Slider-2', 'ruffled-cotton-cardigan', 'resources/assets/images/banner_images/1542102892.slide_06_1190-Recovered.jpg', '', '', '2019-01-31 00:00:00', '2018-11-13 09:54:52', 1, 'product', '2018-11-13 09:54:52', 1),
(3, 'Slider-3', '', 'resources/assets/images/banner_images/1531842038.SLID5-3.jpg', '', '', '2029-01-01 00:00:00', '2018-07-20 10:30:12', 1, 'special', '2018-07-20 10:30:12', 1),
(6, 'Slider-4', 'ruffled-cotton-cardigan', 'resources/assets/images/banner_images/1531842053.BANNAR_4_5.jpg', '', '', '2029-01-01 00:00:00', '2018-07-20 10:33:07', 1, 'product', '2018-07-20 10:33:07', 1),
(10, 'المنزلق-1', '', 'resources/assets/images/slider_images/1531931450.Slide_1.jpg', '', '', '2030-01-01 00:00:00', '2018-07-20 10:33:23', 1, 'special', '2018-07-20 10:33:23', 4),
(11, 'المنزلق-2', 'ruffled-cotton-cardigan', 'resources/assets/images/banner_images/1542102905.slide_06_arabic.jpg', '', '', '2030-01-01 00:00:00', '2018-11-13 09:55:05', 1, 'product', '2018-11-13 09:55:05', 4),
(12, 'المنزلق-3', '', 'resources/assets/images/slider_images/1531931568.Slide-5_1.jpg', '', '', '2030-01-01 00:00:00', '2018-07-20 10:33:32', 1, 'topsellerr', '2018-07-20 10:33:32', 4),
(13, 'المنزلق-4', 'men-polo-shirts', 'resources/assets/images/banner_images/1531931918.BANNAR_4_1.jpg', '', '', '2030-01-01 00:00:00', '2018-07-20 10:33:37', 1, 'category', '2018-07-20 10:33:37', 4);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(100) NOT NULL,
  `specials_last_modified` int(100) NOT NULL,
  `expires_date` int(100) NOT NULL,
  `date_status_change` int(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 25, '150.00', 1502195102, 1542632897, 1667174400, 1542632897, 0),
(2, 39, '27.85', 1502264917, 1542630111, 1640995200, 1542630111, 0),
(3, 43, '21.99', 1502268005, 1542629989, 1640995200, 1542629989, 0),
(4, 44, '23.55', 1502268706, 1542629964, 1640995200, 1542629964, 0),
(5, 48, '450.00', 1502274870, 1542629473, 1640995200, 1542629473, 0),
(6, 62, '22.20', 1502351882, 1542628907, 1659398400, 1542628907, 0),
(7, 65, '23.50', 1502353123, 1542628792, 1646092800, 1542628792, 0),
(8, 67, '445.00', 1502362089, 1542628719, 1640995200, 1542628719, 0),
(9, 70, '23.99', 1502363119, 1542616743, 1640995200, 1542616743, 0),
(10, 73, '23.50', 1502364697, 1542616652, 1640995200, 1542616652, 0),
(11, 80, '99.99', 1502366586, 1538581121, 1640995200, 1538581121, 0),
(14, 80, '99.99', 1530891416, 1538581121, 1640995200, 1538581121, 0),
(15, 70, '23.99', 1530891969, 1542616743, 1640995200, 1542616743, 0),
(16, 67, '445.00', 1530891985, 1542628719, 1640995200, 1542628719, 0),
(17, 65, '23.50', 1530891995, 1542628792, 1646092800, 1542628792, 0),
(18, 73, '23.50', 1530892005, 1542616652, 1640995200, 1542616652, 0),
(19, 62, '22.20', 1530892080, 1542628907, 1659398400, 1542628907, 0),
(20, 48, '450.00', 1530892200, 1542629473, 1640995200, 1542629473, 0),
(21, 44, '23.55', 1530892229, 1542629964, 1640995200, 1542629964, 0),
(22, 43, '21.99', 1530892260, 1542629989, 1640995200, 1542629989, 0),
(23, 39, '27.85', 1530892284, 1542630111, 1640995200, 1542630111, 0),
(24, 25, '150.00', 1530892400, 1542632897, 1667174400, 1542632897, 0),
(25, 80, '99.99', 1534333261, 1538581121, 1640995200, 1538581121, 0),
(26, 80, '99.99', 1534523652, 1538581121, 1640995200, 1538581121, 0),
(27, 80, '99.99', 1534768057, 1538581121, 1640995200, 1538581121, 0),
(28, 80, '99.99', 1535821730, 1538581121, 1640995200, 1538581121, 0),
(30, 80, '99.99', 1538581121, 0, 1640995200, 0, 0),
(35, 73, '23.50', 1541606249, 1542616652, 1640995200, 1542616652, 0),
(36, 73, '23.50', 1541606303, 1542616652, 1640995200, 1542616652, 0),
(37, 73, '23.50', 1542279378, 1542616652, 1640995200, 1542616652, 0),
(38, 73, '23.50', 1542616652, 0, 1640995200, 0, 1),
(39, 70, '23.99', 1542616743, 0, 1640995200, 0, 1),
(40, 67, '445.00', 1542628719, 0, 1640995200, 0, 1),
(41, 65, '23.50', 1542628792, 0, 1646092800, 0, 1),
(42, 62, '22.20', 1542628907, 0, 1659398400, 0, 1),
(43, 48, '450.00', 1542629473, 0, 1640995200, 0, 1),
(44, 44, '23.55', 1542629964, 0, 1640995200, 0, 1),
(45, 43, '21.99', 1542629989, 0, 1640995200, 0, 1),
(46, 39, '27.85', 1542630111, 0, 1640995200, 0, 1),
(47, 25, '150.00', 1542632897, 0, 1667174400, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `tax_class_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(1, 'Sale Tax', 'This tax apply on products related to USA item.', NULL, '2017-08-07 07:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(1, 43, 1, 1, '7.00', '', NULL, '2017-08-07 07:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(100) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `languages_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `date_added`, `last_modified`, `is_active`, `languages_id`) VALUES
(1, 'Gram', NULL, NULL, 1, 0),
(2, 'Kilogram', NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(100) NOT NULL,
  `pickup_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isDisplayCal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serviceType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `person_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_package` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_height` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parcel_width` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `rememberToken` int(100) NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(1, 'Nasir Ali', '', '', '2018-07-10 16:', '', ''),
(2, 'Nasir Ali', '', '', '2018-11-13 14:', '', ''),
(3, 'hassan mehboob', '', '', '2018-11-23 13:', '', ''),
(4, 'Hassan Mehboob', '', '', '2017-12-13 05:', '', ''),
(5, 'Heggd Hdggd', '', '', '2017-10-25 06:', '', ''),
(8, 'Rosemond Faustin', '', '', '2018-04-05 23:', '', ''),
(10, 'nasir ali', '', '', '2018-11-13 16:', '', ''),
(11, 'Manohar Veera', '', '', '2017-10-14 05:', '', ''),
(13, 'Ali Hassan', '', '', '2018-07-13 14:', '', ''),
(14, 'Hafiz Muneeb', '', '', '2017-10-18 11:', '', ''),
(15, 'Saqib Ali', '', '', '2018-06-01 12:', '', ''),
(16, 'Muzammil Younas', '', '', '2018-06-01 12:', '', ''),
(17, 'Rosemond Faustin', '', '', '2018-06-02 18:', '', ''),
(18, 'Saqib Ali', '', '', '2018-06-04 10:', '', ''),
(21, 'Ruli Setiawan', '', '', '2017-11-01 16:', '', ''),
(22, 'android ecommerce', '', '', '2018-06-20 13:', '', ''),
(23, 'Yazeed Ayyash', '', '', '2017-11-02 19:', '', ''),
(24, 'Abood Ayyash', '', '', '2017-12-16 20:', '', ''),
(29, 'Standard Account', '', '', '2018-07-09 15:', '', ''),
(32, 'Luca Mellano', '', '', '2017-11-29 21:', '', ''),
(34, 'hassan mehboob', '', '', '2018-06-29 13:', '', ''),
(37, 'dfg dfg', '', '', '2017-11-20 14:', '', ''),
(38, 'KISHORE S', '', '', '2018-07-09 15:', '', ''),
(39, 'Amir Hassan', '', '', '2018-07-10 16:', '', ''),
(40, 'Amir Saleem', '', '', '2018-07-09 16:', '', ''),
(41, 'Aseem Kumar', '', '', '2017-11-24 13:', '', ''),
(44, 'Roadsel Roadsel', '', '', '2018-07-18 23:', '', ''),
(45, 'David Moder', '', '', '2018-07-17 13:', '', ''),
(47, 'Saqib Ali', '', '', '2018-07-18 16:', '', ''),
(48, 'hassan mehboob', '', '', '2017-12-11 09:', '', ''),
(49, 'hassan mehboob', '', '', '2017-12-11 10:', '', ''),
(50, 'hassan mehboob', '', '', '2017-12-11 10:', '', ''),
(51, 'H N', '', '', '2017-12-11 10:', '', ''),
(52, 'hassan mehboob', '', '', '2017-12-11 15:', '', ''),
(53, 'Muhammad Muzammel', '', '', '2017-12-12 08:', '', ''),
(55, 'معصوم محمود', '', '', '2017-12-18 07:', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `zone_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_recorder`
--
ALTER TABLE `action_recorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action_recorder_module` (`module`),
  ADD KEY `idx_action_recorder_user_id` (`user_id`),
  ADD KEY `idx_action_recorder_identifier` (`identifier`),
  ADD KEY `idx_action_recorder_date_added` (`date_added`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`customers_id`);

--
-- Indexes for table `address_format`
--
ALTER TABLE `address_format`
  ADD PRIMARY KEY (`address_format_id`);

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`myid`),
  ADD UNIQUE KEY `administrators_user_name_unique` (`user_name`),
  ADD UNIQUE KEY `administrators_email_unique` (`email`);

--
-- Indexes for table `admin_types`
--
ALTER TABLE `admin_types`
  ADD PRIMARY KEY (`admin_type_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`currencies_id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`),
  ADD KEY `idx_customers_email_address` (`email`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  ADD PRIMARY KEY (`fedex_id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`),
  ADD KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`newsletters_id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`),
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  ADD PRIMARY KEY (`orders_products_download_id`),
  ADD KEY `idx_orders_products_download_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`,`language_id`),
  ADD KEY `idx_orders_status_name` (`orders_status_name`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payments_setting`
--
ALTER TABLE `payments_setting`
  ADD PRIMARY KEY (`payments_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`products_id`,`language_id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`,`products_options_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_id`,`categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`reviews_id`,`languages_id`);

--
-- Indexes for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_recorder`
--
ALTER TABLE `action_recorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `address_format`
--
ALTER TABLE `address_format`
  MODIFY `address_format_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `myid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `admin_types`
--
ALTER TABLE `admin_types`
  MODIFY `admin_type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `currencies_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fedex_shipping`
--
ALTER TABLE `fedex_shipping`
  MODIFY `fedex_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1057;
--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1521;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `newsletters_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `news_description`
--
ALTER TABLE `news_description`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products_download`
--
ALTER TABLE `orders_products_download`
  MODIFY `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `payments_setting`
--
ALTER TABLE `payments_setting`
  MODIFY `payments_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sec_directory_whitelist`
--
ALTER TABLE `sec_directory_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
