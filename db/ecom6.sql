-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 04:32 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom6`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `mobile`, `email`, `email_verified_at`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '0830909099', 'lekhad19@gmail.com', NULL, '$2y$10$yDGUizcHMb/TwHAVDQLR9.N0eiQA5nv3HuZAA52koQ3BXCLSLfqA2', '5867.jpg', 1, NULL, NULL, '2021-03-04 10:13:06'),
(2, 'john', 'subadmin', '0830909099', 'john@gmail.com', NULL, '$2y$10$J/3Tbs8.GxTFjQq0kXBY1OkVNFjKrx9JHkP8IHHFUMcFQcrQHlVjy', '', 1, NULL, NULL, NULL),
(3, 'steve', 'admin', '0830909099', 'steve@gmail.com', NULL, '$2y$10$J/3Tbs8.GxTFjQq0kXBY1OkVNFjKrx9JHkP8IHHFUMcFQcrQHlVjy', '', 1, NULL, NULL, NULL),
(4, 'amit', 'subadmin', '0830909099', 'amit@gmail.com', NULL, '$2y$10$J/3Tbs8.GxTFjQq0kXBY1OkVNFjKrx9JHkP8IHHFUMcFQcrQHlVjy', '', 1, NULL, NULL, NULL),
(5, 'mary', 'admin', '0830909099', 'mary@gmail.com', NULL, '$2y$10$J/3Tbs8.GxTFjQq0kXBY1OkVNFjKrx9JHkP8IHHFUMcFQcrQHlVjy', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `link`, `title`, `alt`, `status`, `created_at`, `updated_at`) VALUES
(1, '2.png-6738.png', 'blue-jacket', 'Blue Jacket', 'blue-jacket', 1, '2021-03-14 22:51:48', '2021-03-15 08:34:02'),
(2, '3.png-5662.png', 'test-banner-link-2', 'test-banner-link-2', 'test alts', 1, '2021-03-14 22:52:24', '2021-03-15 08:35:19'),
(3, '1.png-7848.png', 'black-jacket', 'Black Jacket', 'Black Jacket on discount', 1, '2021-03-15 08:06:56', '2021-03-15 08:35:20');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lee Brand', 1, '2021-03-10 12:41:11', '2021-04-09 20:22:34'),
(2, 'Gap', 1, '2021-03-10 12:49:48', '2021-03-11 08:15:49'),
(3, 'Monte Carlo', 1, '2021-03-10 12:49:59', '2021-03-10 13:05:33'),
(7, 'Arrow', 1, '2021-03-10 12:56:21', '2021-03-10 13:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'EK3OFnrvqxCzMZZWjbigDmgI83L1QnpPwh9KTuwQ', 1, 1, 'Medium', 2, '2021-03-24 19:21:41', '2021-03-24 20:09:12'),
(2, 'GWfI13sWdsX3lIEa01s9p6riDLkXBwZDP2fKnA8F', 0, 1, 'Medium', 9, '2021-04-09 20:34:03', '2021-04-09 21:44:12'),
(4, 'GWfI13sWdsX3lIEa01s9p6riDLkXBwZDP2fKnA8F', 0, 3, 'Small', 9, '2021-04-09 20:35:43', '2021-04-09 21:52:38'),
(5, 'Mi2k9S2mx5eQa9SZciIdAC98XpneViP8gVB2xYRu', 1, 1, 'Small', 10, '2021-04-12 08:16:46', '2021-04-12 08:40:40'),
(13, 'YUbZPtTn5mTo6eTET6Og0Rep8G1xhJTFoI4p1PMV', 4, 1, 'Medium', 2, '2021-05-13 13:19:28', '2021-05-13 13:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'example.jpg',
  `category_discount` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_image`, `category_discount`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Tshirts', '', 20.00, 'T-Shirts is having lot of variety', 'tshirts', 'T-Shirts is having lot of variety', 'T-Shirts is having lot of variety', 't-shirts, good quality', 1, NULL, '2021-04-15 14:51:51'),
(2, 0, 1, 'Shirts', '', 0.00, '', 'shirts', '', '', '', 1, NULL, '2021-03-15 15:20:33'),
(3, 0, 1, 'Denims', '', 10.00, '', 'denims', '', '', '', 1, NULL, '2021-03-06 09:32:11'),
(4, 1, 1, 'Casual T-Shirts', '92776.jpg', 10.00, '', 'casual-t-shirts', '', '', '', 1, '2021-03-06 12:20:06', '2021-03-22 12:48:44'),
(5, 0, 2, 'Denims', 'example.jpg', 10.00, '', 'denims', '', '', '', 1, '2021-03-07 15:27:25', '2021-03-11 09:20:45'),
(6, 0, 3, 'T-Shirts', 'example.jpg', 0.00, '', 'kids-t-shirt', '', '', '', 1, '2021-03-11 13:04:17', '2021-03-11 17:56:36'),
(7, 1, 1, 'Formal T-Shirts', 'example.jpg', 0.00, '', 'formal-t-shirts', '', '', '', 1, '2021-03-11 13:05:37', '2021-03-11 13:05:37'),
(8, 0, 1, 'test', 'example.jpg', 0.00, '', 'test', '', '', '', 1, '2021-03-11 18:01:34', '2021-03-11 18:01:34'),
(9, 8, 1, 'testa', 'example.jpg', 0.00, '', 'testa', '', '', '', 1, '2021-03-11 18:03:29', '2021-03-11 18:03:29'),
(10, 8, 1, 'testb', 'example.jpg', 0.00, '', 'testb', '', '', '', 1, '2021-03-11 18:04:35', '2021-03-11 18:12:06'),
(11, 8, 1, 'testc', 'example.jpg', 0.00, '', 'testc', '', '', '', 0, '2021-03-11 18:04:55', '2021-03-11 18:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`) VALUES
(1, 'AF', 'Afghanistan', 1),
(2, 'AL', 'Albania', 1),
(3, 'DZ', 'Algeria', 1),
(4, 'DS', 'American Samoa', 1),
(5, 'AD', 'Andorra', 1),
(6, 'AO', 'Angola', 1),
(7, 'AI', 'Anguilla', 1),
(8, 'AQ', 'Antarctica', 1),
(9, 'AG', 'Antigua and Barbuda', 1),
(10, 'AR', 'Argentina', 1),
(11, 'AM', 'Armenia', 1),
(12, 'AW', 'Aruba', 1),
(13, 'AU', 'Australia', 1),
(14, 'AT', 'Austria', 1),
(15, 'AZ', 'Azerbaijan', 1),
(16, 'BS', 'Bahamas', 1),
(17, 'BH', 'Bahrain', 1),
(18, 'BD', 'Bangladesh', 1),
(19, 'BB', 'Barbados', 1),
(20, 'BY', 'Belarus', 1),
(21, 'BE', 'Belgium', 1),
(22, 'BZ', 'Belize', 1),
(23, 'BJ', 'Benin', 1),
(24, 'BM', 'Bermuda', 1),
(25, 'BT', 'Bhutan', 1),
(26, 'BO', 'Bolivia', 1),
(27, 'BA', 'Bosnia and Herzegovina', 1),
(28, 'BW', 'Botswana', 1),
(29, 'BV', 'Bouvet Island', 1),
(30, 'BR', 'Brazil', 1),
(31, 'IO', 'British Indian Ocean Territory', 1),
(32, 'BN', 'Brunei Darussalam', 1),
(33, 'BG', 'Bulgaria', 1),
(34, 'BF', 'Burkina Faso', 1),
(35, 'BI', 'Burundi', 1),
(36, 'KH', 'Cambodia', 1),
(37, 'CM', 'Cameroon', 1),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 1),
(40, 'KY', 'Cayman Islands', 1),
(41, 'CF', 'Central African Republic', 1),
(42, 'TD', 'Chad', 1),
(43, 'CL', 'Chile', 1),
(44, 'CN', 'China', 1),
(45, 'CX', 'Christmas Island', 1),
(46, 'CC', 'Cocos (Keeling) Islands', 1),
(47, 'CO', 'Colombia', 1),
(48, 'KM', 'Comoros', 1),
(49, 'CD', 'Democratic Republic of the Congo', 1),
(50, 'CG', 'Republic of Congo', 1),
(51, 'CK', 'Cook Islands', 1),
(52, 'CR', 'Costa Rica', 1),
(53, 'HR', 'Croatia (Hrvatska)', 1),
(54, 'CU', 'Cuba', 1),
(55, 'CY', 'Cyprus', 1),
(56, 'CZ', 'Czech Republic', 1),
(57, 'DK', 'Denmark', 1),
(58, 'DJ', 'Djibouti', 1),
(59, 'DM', 'Dominica', 1),
(60, 'DO', 'Dominican Republic', 1),
(61, 'TP', 'East Timor', 1),
(62, 'EC', 'Ecuador', 1),
(63, 'EG', 'Egypt', 1),
(64, 'SV', 'El Salvador', 1),
(65, 'GQ', 'Equatorial Guinea', 1),
(66, 'ER', 'Eritrea', 1),
(67, 'EE', 'Estonia', 1),
(68, 'ET', 'Ethiopia', 1),
(69, 'FK', 'Falkland Islands (Malvinas)', 1),
(70, 'FO', 'Faroe Islands', 1),
(71, 'FJ', 'Fiji', 1),
(72, 'FI', 'Finland', 1),
(73, 'FR', 'France', 1),
(74, 'FX', 'France, Metropolitan', 1),
(75, 'GF', 'French Guiana', 1),
(76, 'PF', 'French Polynesia', 1),
(77, 'TF', 'French Southern Territories', 1),
(78, 'GA', 'Gabon', 1),
(79, 'GM', 'Gambia', 1),
(80, 'GE', 'Georgia', 1),
(81, 'DE', 'Germany', 1),
(82, 'GH', 'Ghana', 1),
(83, 'GI', 'Gibraltar', 1),
(84, 'GK', 'Guernsey', 1),
(85, 'GR', 'Greece', 1),
(86, 'GL', 'Greenland', 1),
(87, 'GD', 'Grenada', 1),
(88, 'GP', 'Guadeloupe', 1),
(89, 'GU', 'Guam', 1),
(90, 'GT', 'Guatemala', 1),
(91, 'GN', 'Guinea', 1),
(92, 'GW', 'Guinea-Bissau', 1),
(93, 'GY', 'Guyana', 1),
(94, 'HT', 'Haiti', 1),
(95, 'HM', 'Heard and Mc Donald Islands', 1),
(96, 'HN', 'Honduras', 1),
(97, 'HK', 'Hong Kong', 1),
(98, 'HU', 'Hungary', 1),
(99, 'IS', 'Iceland', 1),
(100, 'IN', 'India', 1),
(101, 'IM', 'Isle of Man', 1),
(102, 'ID', 'Indonesia', 1),
(103, 'IR', 'Iran (Islamic Republic of)', 1),
(104, 'IQ', 'Iraq', 1),
(105, 'IE', 'Ireland', 1),
(106, 'IL', 'Israel', 1),
(107, 'IT', 'Italy', 1),
(108, 'CI', 'Ivory Coast', 1),
(109, 'JE', 'Jersey', 1),
(110, 'JM', 'Jamaica', 1),
(111, 'JP', 'Japan', 1),
(112, 'JO', 'Jordan', 1),
(113, 'KZ', 'Kazakhstan', 1),
(114, 'KE', 'Kenya', 1),
(115, 'KI', 'Kiribati', 1),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 1),
(117, 'KR', 'Korea, Republic of', 1),
(118, 'XK', 'Kosovo', 1),
(119, 'KW', 'Kuwait', 1),
(120, 'KG', 'Kyrgyzstan', 1),
(121, 'LA', 'Lao People\'s Democratic Republic', 1),
(122, 'LV', 'Latvia', 1),
(123, 'LB', 'Lebanon', 1),
(124, 'LS', 'Lesotho', 1),
(125, 'LR', 'Liberia', 1),
(126, 'LY', 'Libyan Arab Jamahiriya', 1),
(127, 'LI', 'Liechtenstein', 1),
(128, 'LT', 'Lithuania', 1),
(129, 'LU', 'Luxembourg', 1),
(130, 'MO', 'Macau', 1),
(131, 'MK', 'North Macedonia', 1),
(132, 'MG', 'Madagascar', 1),
(133, 'MW', 'Malawi', 1),
(134, 'MY', 'Malaysia', 1),
(135, 'MV', 'Maldives', 1),
(136, 'ML', 'Mali', 1),
(137, 'MT', 'Malta', 1),
(138, 'MH', 'Marshall Islands', 1),
(139, 'MQ', 'Martinique', 1),
(140, 'MR', 'Mauritania', 1),
(141, 'MU', 'Mauritius', 1),
(142, 'TY', 'Mayotte', 1),
(143, 'MX', 'Mexico', 1),
(144, 'FM', 'Micronesia, Federated States of', 1),
(145, 'MD', 'Moldova, Republic of', 1),
(146, 'MC', 'Monaco', 1),
(147, 'MN', 'Mongolia', 1),
(148, 'ME', 'Montenegro', 1),
(149, 'MS', 'Montserrat', 1),
(150, 'MA', 'Morocco', 1),
(151, 'MZ', 'Mozambique', 1),
(152, 'MM', 'Myanmar', 1),
(153, 'NA', 'Namibia', 1),
(154, 'NR', 'Nauru', 1),
(155, 'NP', 'Nepal', 1),
(156, 'NL', 'Netherlands', 1),
(157, 'AN', 'Netherlands Antilles', 1),
(158, 'NC', 'New Caledonia', 1),
(159, 'NZ', 'New Zealand', 1),
(160, 'NI', 'Nicaragua', 1),
(161, 'NE', 'Niger', 1),
(162, 'NG', 'Nigeria', 1),
(163, 'NU', 'Niue', 1),
(164, 'NF', 'Norfolk Island', 1),
(165, 'MP', 'Northern Mariana Islands', 1),
(166, 'NO', 'Norway', 1),
(167, 'OM', 'Oman', 1),
(168, 'PK', 'Pakistan', 1),
(169, 'PW', 'Palau', 1),
(170, 'PS', 'Palestine', 1),
(171, 'PA', 'Panama', 1),
(172, 'PG', 'Papua New Guinea', 1),
(173, 'PY', 'Paraguay', 1),
(174, 'PE', 'Peru', 1),
(175, 'PH', 'Philippines', 1),
(176, 'PN', 'Pitcairn', 1),
(177, 'PL', 'Poland', 1),
(178, 'PT', 'Portugal', 1),
(179, 'PR', 'Puerto Rico', 1),
(180, 'QA', 'Qatar', 1),
(181, 'RE', 'Reunion', 1),
(182, 'RO', 'Romania', 1),
(183, 'RU', 'Russian Federation', 1),
(184, 'RW', 'Rwanda', 1),
(185, 'KN', 'Saint Kitts and Nevis', 1),
(186, 'LC', 'Saint Lucia', 1),
(187, 'VC', 'Saint Vincent and the Grenadines', 1),
(188, 'WS', 'Samoa', 1),
(189, 'SM', 'San Marino', 1),
(190, 'ST', 'Sao Tome and Principe', 1),
(191, 'SA', 'Saudi Arabia', 1),
(192, 'SN', 'Senegal', 1),
(193, 'RS', 'Serbia', 1),
(194, 'SC', 'Seychelles', 1),
(195, 'SL', 'Sierra Leone', 1),
(196, 'SG', 'Singapore', 1),
(197, 'SK', 'Slovakia', 1),
(198, 'SI', 'Slovenia', 1),
(199, 'SB', 'Solomon Islands', 1),
(200, 'SO', 'Somalia', 1),
(201, 'ZA', 'South Africa', 1),
(202, 'GS', 'South Georgia South Sandwich Islands', 1),
(203, 'SS', 'South Sudan', 1),
(204, 'ES', 'Spain', 1),
(205, 'LK', 'Sri Lanka', 1),
(206, 'SH', 'St. Helena', 1),
(207, 'PM', 'St. Pierre and Miquelon', 1),
(208, 'SD', 'Sudan', 1),
(209, 'SR', 'Suriname', 1),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 1),
(211, 'SZ', 'Swaziland', 1),
(212, 'SE', 'Sweden', 1),
(213, 'CH', 'Switzerland', 1),
(214, 'SY', 'Syrian Arab Republic', 1),
(215, 'TW', 'Taiwan', 1),
(216, 'TJ', 'Tajikistan', 1),
(217, 'TZ', 'Tanzania, United Republic of', 1),
(218, 'TH', 'Thailand', 1),
(219, 'TG', 'Togo', 1),
(220, 'TK', 'Tokelau', 1),
(221, 'TO', 'Tonga', 1),
(222, 'TT', 'Trinidad and Tobago', 1),
(223, 'TN', 'Tunisia', 1),
(224, 'TR', 'Turkey', 1),
(225, 'TM', 'Turkmenistan', 1),
(226, 'TC', 'Turks and Caicos Islands', 1),
(227, 'TV', 'Tuvalu', 1),
(228, 'UG', 'Uganda', 1),
(229, 'UA', 'Ukraine', 1),
(230, 'AE', 'United Arab Emirates', 1),
(231, 'GB', 'United Kingdom', 1),
(232, 'US', 'United States', 1),
(233, 'UM', 'United States minor outlying islands', 1),
(234, 'UY', 'Uruguay', 1),
(235, 'UZ', 'Uzbekistan', 1),
(236, 'VU', 'Vanuatu', 1),
(237, 'VA', 'Vatican City State', 1),
(238, 'VE', 'Venezuela', 1),
(239, 'VN', 'Vietnam', 1),
(240, 'VG', 'Virgin Islands (British)', 1),
(241, 'VI', 'Virgin Islands (U.S.)', 1),
(242, 'WF', 'Wallis and Futuna Islands', 1),
(243, 'EH', 'Western Sahara', 1),
(244, 'YE', 'Yemen', 1),
(245, 'ZM', 'Zambia', 1),
(246, 'ZW', 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_option`, `coupon_code`, `categories`, `users`, `coupon_type`, `amount_type`, `amount`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Manual', 'test10', '4,7,2', 'lekhad19@gmail.com,webxpartt@gmail.com', 'Single Times', 'Percentage', 10.00, '2021-04-26', 1, NULL, '2021-04-24 21:41:34'),
(2, 'Automatic', 'v7Y6h7xR', '1,4', 'lekhad19@gmail.com,ade@gmail.com', 'Multiple Times', 'Fixed', 20.00, '2020-08-08', 1, '2021-04-11 07:01:56', '2021-04-11 07:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(4, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 0, '2021-04-24 22:11:02', '2021-04-24 22:11:02');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_20_135643_create_admins_table', 2),
(5, '2021_03_04_114203_create_sections_table', 3),
(6, '2021_03_04_151526_create_categories_table', 4),
(7, '2021_03_06_125050_create_products_table', 5),
(8, '2021_03_08_122527_create_products_attributes_table', 6),
(9, '2021_03_09_195917_create_products_images_table', 7),
(10, '2021_03_09_230449_create_brands_table', 8),
(11, '2021_03_11_092337_add_column_to_products', 9),
(12, '2021_03_12_211932_create_banners_table', 10),
(13, '2021_03_20_102632_create_carts_table', 11),
(14, '2021_03_23_171556_add_columns_to_users_table', 12),
(15, '2021_04_09_234419_create_coupons_table', 13),
(16, '2021_04_20_211812_create_delivery_addresses_table', 14),
(17, '2021_04_24_233350_create_orders_table', 15),
(18, '2021_04_24_234002_create_orders_products_table', 16),
(19, '2021_04_29_221741_create_order_statuses_table', 17),
(20, '2021_05_06_213239_create_orders_logs_table', 18),
(21, '2021_05_09_082203_update_orders_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double(8,2) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `payment_gateway`, `grand_total`, `courier_name`, `tracking_number`, `created_at`, `updated_at`) VALUES
(1, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 440.00, 'Delivered', 'COD', '', 3960.00, 'Fedex', '2934u29999', '2021-04-25 11:17:28', '2021-05-09 09:02:40'),
(2, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 352.00, 'New', 'COD', '', 3168.00, '', '', '2021-04-25 11:35:19', '2021-04-25 11:35:19'),
(3, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 352.00, 'Shipped', 'COD', '', -352.00, '', '', '2021-04-25 11:36:56', '2021-05-01 03:30:12'),
(4, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 360.00, 'New', 'COD', '', 3240.00, '', '', '2021-04-25 11:41:58', '2021-04-25 11:41:58'),
(5, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, NULL, NULL, 'New', 'COD', '', 960.00, '', '', '2021-05-03 06:46:35', '2021-05-03 06:46:35'),
(6, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, NULL, NULL, 'New', 'COD', '', 960.00, '', '', '2021-05-04 19:42:24', '2021-05-04 19:42:24'),
(7, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, NULL, NULL, 'New', 'COD', '', 960.00, '', '', '2021-05-04 19:43:54', '2021-05-04 19:43:54'),
(8, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, NULL, NULL, 'New', 'COD', '', 960.00, '', '', '2021-05-04 19:46:11', '2021-05-04 19:46:11'),
(9, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, NULL, NULL, 'Shipped', 'COD', '', 960.00, 'Dele', '193849030', '2021-05-04 19:47:19', '2021-05-09 09:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders_logs`
--

CREATE TABLE `orders_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_logs`
--

INSERT INTO `orders_logs` (`id`, `order_id`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Delivered', '2021-05-09 06:39:25', '2021-05-09 06:39:25'),
(2, 1, 'Shipped', '2021-05-09 07:12:46', '2021-05-09 07:12:46'),
(3, 1, 'Shipped', '2021-05-09 08:06:47', '2021-05-09 08:06:47'),
(4, 1, 'New', '2021-05-09 08:16:54', '2021-05-09 08:16:54'),
(5, 1, 'Shipped', '2021-05-09 08:17:48', '2021-05-09 08:17:48'),
(6, 1, 'Delivered', '2021-05-09 09:03:02', '2021-05-09 09:03:02'),
(7, 9, 'Shipped', '2021-05-09 09:39:34', '2021-05-09 09:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_color`, `product_size`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 5, '2021-04-25 11:17:28', '2021-04-25 11:17:28'),
(2, 2, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 4, '2021-04-25 11:35:19', '2021-04-25 11:35:19'),
(3, 4, 4, 3, 'Red101', 'Red Casual TShirt', 'Red', 'Small', 360.00, 2, '2021-04-25 11:41:58', '2021-04-25 11:41:58'),
(4, 4, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 3, '2021-04-25 11:41:58', '2021-04-25 11:41:58'),
(5, 5, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 1, '2021-05-03 06:46:35', '2021-05-03 06:46:35'),
(6, 6, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 1, '2021-05-04 19:42:24', '2021-05-04 19:42:24'),
(7, 7, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 1, '2021-05-04 19:43:54', '2021-05-04 19:43:54'),
(8, 8, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 1, '2021-05-04 19:46:11', '2021-05-04 19:46:11'),
(9, 9, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 1, '2021-05-04 19:47:19', '2021-05-04 19:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New', 1, NULL, NULL),
(2, 'Pending', 1, NULL, NULL),
(3, 'Hold', 1, NULL, NULL),
(4, 'Cancelled', 1, NULL, NULL),
(5, 'In Process', 1, NULL, NULL),
(6, 'Paid', 1, NULL, NULL),
(7, 'Shipped', 1, NULL, NULL),
(8, 'Delivered', 1, NULL, NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_discount` double(8,2) NOT NULL,
  `product_weight` double(8,2) NOT NULL,
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'example.mov',
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wash_care` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occasion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `section_id`, `brand_id`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_video`, `main_image`, `description`, `wash_care`, `fabric`, `pattern`, `sleeve`, `fit`, `occasion`, `meta_title`, `meta_description`, `meta_keywords`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 2, 'Blue Casual TShirt', 'BT001', 'Blue', 1500.00, 20.00, 10.00, '', 'blue-mens-polo-t-shirt-500x500.jpg-6969.jpg', 'This is the cotton Blue Casual T-Shirt for every person. You can wear in summers', 'It is easy to wash', 'Cotton', 'Plain', 'Full Sleeve', 'Regular', '', '', '', '', 'Yes', 1, '2021-03-07 16:48:11', '2021-03-22 12:49:00'),
(2, 4, 1, 2, 'Gap Red Casual TShirt', 'RC001', 'Red', 1000.00, 10.00, 100.00, 'C:\\xampp\\tmp\\php282D.tmp', 'red casual tshirt.jpg-8283.jpg', '', '', 'Polyseter', 'Self', 'Full Sleeve', 'Regular', 'Casual', '', '', '', 'Yes', 1, '2021-03-07 22:35:17', '2021-03-18 13:57:13'),
(3, 4, 1, 1, 'Red Casual TShirt', 'Red101', 'Red', 1500.00, 10.00, 150.00, 'C:\\xampp\\tmp\\php26E0.tmp', 'red casual shirt.png-5949.png', '', '', 'Wool', 'Checked', 'Full Sleeve', 'Regular', 'Casual', '', '', '', 'Yes', 1, '2021-03-08 07:32:25', '2021-03-18 13:58:09'),
(5, 4, 1, 1, 'Blue Casual TShirt', 'Blue001', 'Green', 1200.00, 10.00, 120.00, 'example.mov', 'blueshirts.jpg-444.jpg', '', '', 'Cotton', 'Plain', 'Half Sleeve', 'Regular', 'Casual', 'test title', 'test keywords', 'test keywords', 'Yes', 1, '2021-03-08 08:21:10', '2021-03-17 21:25:09'),
(6, 4, 1, 2, 'Black Casual Tshirt', 'BL001', 'Black', 1500.00, 10.00, 100.00, '', 'blue tshirt images back.jpg-3780.jpg', '', '', 'Pure Wool', '', '', '', '', '', '', '', 'Yes', 1, '2021-03-08 10:31:35', '2021-03-18 13:40:03'),
(7, 4, 1, 3, 'MC Casual TShirt', 'MCT001', 'Blue', 100.00, 10.00, 10.00, 'example.mov', 'blue tshirt images back.jpg-2903.jpg', 'Test', 'test', 'Cotton', 'Checked', 'Full Sleeve', 'Regular', 'Casual', 'test', 'test', 'test', 'Yes', 1, '2021-03-11 18:54:36', '2021-03-17 21:26:06'),
(8, 7, 1, 2, 'Blue Formal T-Shirt', 'BFT001', 'Blue', 1500.00, 10.00, 10.00, 'example.mov', 'blue tshirt images.jpg-6116.jpg', 'test description', 'test care', 'Polyseter', 'Checked', 'Full Sleeve', 'Slim', '', 'test meta title', 'test meta description', 'test meta keywords', 'Yes', 1, '2021-03-15 16:53:06', '2021-03-17 21:41:36'),
(9, 1, 1, 2, 'Yellow TShirt', 'YTS001', 'Yellow', 200.00, 10.00, 20.00, 'example.mov', 'yellow tshirt.jpg-5161.jpg', 'Yellow Description', 'Yellow and good', 'Wool', 'Checked', 'Short Sleeve', 'Regular', '', 'Yellow Title', 'Yellow Desc', 'Yellow Keyword', 'Yes', 1, '2021-04-09 20:21:17', '2021-04-09 20:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Small', 1000.00, 5, 'BTS001-S', 0, '2021-03-09 14:17:43', '2021-03-20 12:17:33'),
(2, 1, 'Medium', 1100.00, 12, 'BTS001-M', 1, '2021-03-09 14:17:43', '2021-03-20 19:12:25'),
(3, 1, 'Large', 1200.00, 20, 'BT001-L', 1, '2021-03-09 14:17:43', '2021-03-20 19:12:26'),
(4, 1, 'Extra Large', 1300.00, 10, 'BTS001-XL', 0, '2021-03-09 14:37:39', '2021-03-09 14:37:39'),
(5, 2, 'Small', 500.00, 15, 'BL001-S', 1, '2021-03-09 14:39:04', '2021-03-09 18:46:03'),
(6, 2, 'Medium', 600.00, 12, 'BL001-M', 1, '2021-03-09 14:39:04', '2021-03-09 18:47:49'),
(9, 2, 'Large', 800.00, 15, 'BL00-L', 1, '2021-03-09 18:54:34', '2021-03-09 18:54:34'),
(10, 3, 'Small', 400.00, 10, 'RS101-S', 1, '2021-03-21 20:44:27', '2021-03-21 20:44:27'),
(11, 3, 'Medium', 500.00, 15, 'RS102-M', 1, '2021-03-21 20:44:27', '2021-03-21 20:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, '2236921616172121.png', 1, '2021-03-19 15:42:02', '2021-03-19 15:42:02'),
(4, 1, '8570811616172122.jpg', 1, '2021-03-19 15:42:02', '2021-03-19 15:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 1, NULL, '2021-04-10 03:32:53'),
(2, 'Women', 1, NULL, '2021-03-11 09:17:02'),
(3, 'Kids', 1, NULL, '2021-03-11 09:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Olawale Hammed', 'Ogunfayo street', 'Ajah', 'Lagos', 'Netherlands', '102104', '0901090099', 'lekhad19@gmail.com', NULL, '$2y$10$tBjo.nDnG/vLF0nl.KdKK.iIbsWgkua3uZlmfNdhQXyRGNBpXhQY6', 1, NULL, '2021-03-25 12:40:47', '2021-04-12 08:39:49'),
(3, 'amit@gmail.com', 'Ogunfayo Street', 'Ibadan', 'Oyo State', 'Nigeria', '221000', '08390990900', 'ade@gmail.com', '0000-00-00 00:00:00', '827ccb0eea8a706c4c34a16891f84e7b', 1, NULL, NULL, NULL),
(4, 'Adeleke', '', '', '', '', '', '0816851693', 'webxpartt@gmail.com', NULL, '$2y$10$nNfHhgIwvvLazESDAQL2LuRXCyn18vljWhw63M2f6bKSiOwI6Etc2', 1, NULL, '2021-04-12 08:34:47', '2021-04-12 08:38:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_logs`
--
ALTER TABLE `orders_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_logs`
--
ALTER TABLE `orders_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
