-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 06:22 PM
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
  `status` tinyint(4) NOT NULL,
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
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_discount` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
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
(2, 'Automatic', 'JN0dKxlv', '1,4', 'lekhad19@gmail.com,ade@gmail.com,prymable@gmail.com', 'Multiple Times', 'Fixed', 20.00, '2021-08-08', 1, '2021-04-11 07:01:56', '2021-06-01 09:11:40');

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
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(4, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 0, '2021-04-24 22:11:02', '2021-04-24 22:11:02'),
(7, 5, 'Wale', 'Delhi', 'India', 'Delhi', 'Algeria', '1234', '0816851693', 0, '2021-06-01 08:44:49', '2021-06-01 08:44:49'),
(8, 5, 'Edwin', 'Gubate', 'Mustago', 'Accra', 'Ghana', '1234', '08030009399', 0, '2021-06-01 09:03:41', '2021-06-01 09:03:41'),
(9, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 0, '2021-06-01 14:11:22', '2021-06-01 14:11:22');

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
(21, '2021_05_09_082203_update_orders_table', 19),
(25, '2014_10_12_000000_create_users_table', 1),
(26, '2014_10_12_100000_create_password_resets_table', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2021_02_20_135643_create_admins_table', 1),
(29, '2021_03_04_114203_create_sections_table', 1),
(30, '2021_03_04_151526_create_categories_table', 1),
(31, '2021_03_06_125050_create_products_table', 1),
(32, '2021_03_08_122527_create_products_attributes_table', 1),
(33, '2021_03_09_195917_create_products_images_table', 1),
(34, '2021_03_09_230449_create_brands_table', 1),
(35, '2021_03_11_092337_add_column_to_products', 1),
(36, '2021_03_12_211932_create_banners_table', 1),
(37, '2021_03_20_102632_create_carts_table', 1),
(38, '2021_03_23_171556_add_columns_to_users_table', 1),
(39, '2021_04_09_234419_create_coupons_table', 1),
(40, '2021_04_20_211812_create_delivery_addresses_table', 1),
(41, '2021_04_24_233350_create_orders_table', 1),
(42, '2021_04_24_234002_create_orders_products_table', 1),
(43, '2021_04_29_221741_create_order_statuses_table', 1),
(44, '2021_05_06_213239_create_orders_logs_table', 1),
(45, '2021_05_09_082203_update_orders_table', 1),
(46, '2021_05_23_094332_create_shipping_charges_table', 1),
(47, '2021_05_26_214653_drop_column_from_shipping_charges_table', 1),
(48, '2021_05_26_215229_add_columns_to_shipping_charges_table', 1),
(49, '2021_06_01_033906_drop_column_from_shipping_charges_table', 20),
(50, '2021_06_01_034324_add_column_to_shipping_charges_table', 20);

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
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `coupon_amount` double(8,2) NOT NULL,
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
(5, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 0.00, 'New', 'COD', '', 960.00, '', '', '2021-05-03 06:46:35', '2021-05-03 06:46:35'),
(6, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 0.00, 'New', 'COD', '', 960.00, '', '', '2021-05-04 19:42:24', '2021-05-04 19:42:24'),
(7, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 0.00, 'New', 'COD', '', 960.00, '', '', '2021-05-04 19:43:54', '2021-05-04 19:43:54'),
(8, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 0.00, 'New', 'COD', '', 960.00, '', '', '2021-05-04 19:46:11', '2021-05-04 19:46:11'),
(9, 4, 'Adeleke', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'webxpartt@gmail.com', 0.00, 'test10', 0.00, 'Shipped', 'COD', '', 960.00, 'Dele', '193849030', '2021-05-04 19:47:19', '2021-05-09 09:39:29'),
(10, 5, 'Edwin', 'Gubate', 'Mustago', 'Accra', 'Ghana', '1234', '08030009399', 'prymable@gmail.com', 400.00, 'JN0dKxlv', 20.00, 'New', 'COD', '', 10080.00, '', '', '2021-06-01 09:12:01', '2021-06-01 09:12:01'),
(11, 5, 'Edwin Diaz', 'Gubate', 'Mustago', 'Accra', 'Ghana', '1234', '08030009399', 'prymable@gmail.com', 200.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 1940.00, 'Adeleke', '123456', '2021-06-01 13:31:27', '2021-06-01 13:31:27'),
(12, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 1740.00, 'Adeleke', '123456', '2021-06-01 14:11:35', '2021-06-01 14:11:35'),
(13, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 2620.00, 'Adeleke', '123456', '2021-06-01 14:28:25', '2021-06-01 14:28:25'),
(14, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 2620.00, 'Adeleke', '123456', '2021-06-01 14:33:24', '2021-06-01 14:33:24'),
(15, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 2620.00, 'Adeleke', '123456', '2021-06-01 14:41:46', '2021-06-01 14:41:46'),
(16, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 3500.00, 'Adeleke', '123456', '2021-06-02 09:32:00', '2021-06-02 09:32:00'),
(17, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 3500.00, 'Adeleke', '123456', '2021-06-02 09:38:37', '2021-06-02 09:38:37'),
(18, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'Prepaid', 'Paypal', 3500.00, 'Adeleke', '123456', '2021-06-02 09:40:22', '2021-06-02 09:57:44'),
(19, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'Paid', 'Prepaid', 'Paypal', 3500.00, 'Adeleke', '123456', '2021-06-03 08:45:58', '2021-06-03 09:01:28'),
(20, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'COD', 'COD', 1740.00, 'Adeleke', '123456', '2021-06-09 09:49:09', '2021-06-09 09:49:09'),
(21, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'COD', 'COD', 1740.00, 'Adeleke', '123456', '2021-06-09 10:07:30', '2021-06-09 10:07:30'),
(24, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'COD', 'COD', 1740.00, 'Adeleke', '123456', '2021-06-09 15:02:55', '2021-06-09 15:02:55'),
(25, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'COD', 'COD', 1900.00, 'Adeleke', '123456', '2021-06-09 15:04:53', '2021-06-09 15:04:53'),
(29, 5, 'Edwin Alaroye', 'Delhi', 'India', 'Delhi', 'Bangladesh', '1234', '0816851693', 'prymable@gmail.com', 0.00, 'JN0dKxlv', 20.00, 'New', 'COD', 'COD', 2620.00, 'Adeleke', '123456', '2021-06-09 15:13:11', '2021-06-09 15:13:11');

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
(7, 9, 'Shipped', '2021-05-09 09:39:34', '2021-05-09 09:39:34'),
(8, 18, 'New', '2021-06-02 09:57:49', '2021-06-02 09:57:49'),
(9, 19, 'Paid', '2021-06-03 09:01:42', '2021-06-03 09:01:42');

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
(9, 9, 4, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 1, '2021-05-04 19:47:19', '2021-05-04 19:47:19'),
(10, 10, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 10, '2021-06-01 09:12:01', '2021-06-01 09:12:01'),
(11, 10, 5, 2, 'RC001', 'Gap Red Casual TShirt', 'Red', 'Small', 450.00, 2, '2021-06-01 09:12:01', '2021-06-01 09:12:01'),
(12, 11, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 2, '2021-06-01 13:31:27', '2021-06-01 13:31:27'),
(13, 12, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 2, '2021-06-01 14:11:35', '2021-06-01 14:11:35'),
(14, 13, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-01 14:28:25', '2021-06-01 14:28:25'),
(15, 14, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-01 14:33:24', '2021-06-01 14:33:24'),
(16, 15, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-01 14:41:46', '2021-06-01 14:41:46'),
(17, 16, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-02 09:32:00', '2021-06-02 09:32:00'),
(18, 16, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 1, '2021-06-02 09:32:00', '2021-06-02 09:32:00'),
(19, 17, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-02 09:38:37', '2021-06-02 09:38:37'),
(20, 17, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 1, '2021-06-02 09:38:37', '2021-06-02 09:38:37'),
(21, 18, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-02 09:40:22', '2021-06-02 09:40:22'),
(22, 18, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 1, '2021-06-02 09:40:22', '2021-06-02 09:40:22'),
(23, 19, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-03 08:45:58', '2021-06-03 08:45:58'),
(24, 19, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 1, '2021-06-03 08:45:58', '2021-06-03 08:45:58'),
(25, 20, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 2, '2021-06-09 09:49:09', '2021-06-09 09:49:09'),
(26, 21, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 2, '2021-06-09 10:07:30', '2021-06-09 10:07:30'),
(29, 24, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 2, '2021-06-09 15:02:55', '2021-06-09 15:02:55'),
(30, 25, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Large', 960.00, 2, '2021-06-09 15:04:53', '2021-06-09 15:04:53'),
(34, 29, 5, 1, 'BT001', 'Blue Casual TShirt', 'Blue', 'Medium', 880.00, 3, '2021-06-09 15:13:11', '2021-06-09 15:13:11');

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
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `is_featured` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `section_id`, `brand_id`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_video`, `main_image`, `description`, `wash_care`, `fabric`, `pattern`, `sleeve`, `fit`, `occasion`, `meta_title`, `meta_description`, `meta_keywords`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 2, 'Blue Casual TShirt', 'BT001', 'Blue', 1500.00, 20.00, 10.00, '', 'blue-mens-polo-t-shirt-500x500.jpg-6969.jpg', 'This is the cotton Blue Casual T-Shirt for every person. You can wear in summers', 'It is easy to wash', 'Cotton', 'Plain', 'Full Sleeve', 'Regular', '', '', '', '', 'Yes', 1, '2021-03-07 16:48:11', '2021-03-22 12:49:00'),
(2, 4, 1, 2, 'Gap Red Casual TShirt', 'RC001', 'Red', 1000.00, 10.00, 700.00, 'C:\\xampp\\tmp\\php282D.tmp', 'red casual tshirt.jpg-8283.jpg', '', '', 'Polyseter', 'Self', 'Full Sleeve', 'Regular', '', '', '', '', 'Yes', 1, '2021-03-07 22:35:17', '2021-06-01 09:05:12'),
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
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Small', 1000.00, 5, 'BTS001-S', 0, '2021-03-09 14:17:43', '2021-03-20 12:17:33'),
(2, 1, 'Medium', 1100.00, 5, 'BTS001-M', 1, '2021-03-09 14:17:43', '2021-06-09 15:13:11'),
(3, 1, 'Large', 1200.00, 18, 'BT001-L', 1, '2021-03-09 14:17:43', '2021-06-09 15:04:53'),
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
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `0_500g` double(8,2) NOT NULL,
  `501_1000g` double(8,2) NOT NULL,
  `1001_2000g` double(8,2) NOT NULL,
  `2001_5000g` double(8,2) NOT NULL,
  `above_5000g` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country`, `0_500g`, `501_1000g`, `1001_2000g`, `2001_5000g`, `above_5000g`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Alaska', 400.00, 500.00, 600.00, 700.00, 800.00, 1, '0000-00-00 00:00:00', '2021-06-01 03:37:57'),
(2, 'Albania', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Algeria', 100.00, 200.00, 300.00, 400.00, 500.00, 1, '0000-00-00 00:00:00', '2021-06-01 03:35:00'),
(4, 'American Samoa', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Andorra', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Angola', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Anguilla', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Antarctica', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antigua and Barbuda', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Argentina', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Armenia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Aruba', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Australia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Austria', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Azerbaijan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bahamas', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahrain', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bangladesh', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Barbados', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Belarus', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belgium', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belize', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Benin', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Bermuda', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bhutan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bolivia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bosnia and Herzegovina', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Botswana', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bouvet Island', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Brazil', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'British Indian Ocean Territory', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brunei Darussalam', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Bulgaria', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Burkina Faso', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Burundi', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Cambodia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Cameroon', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Canada', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cape Verde', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cayman Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Central African Republic', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Chad', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Chile', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'China', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Christmas Island', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Cocos (Keeling) Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Colombia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Comoros', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Democratic Republic of the Congo', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Republic of Congo', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Cook Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Costa Rica', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Croatia (Hrvatska)', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Cuba', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Cyprus', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Czech Republic', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Denmark', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Djibouti', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Dominica', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Dominican Republic', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'East Timor', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Ecuador', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Egypt', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'El Salvador', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Equatorial Guinea', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Eritrea', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Estonia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Ethiopia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Falkland Islands (Malvinas)', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Faroe Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Fiji', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Finland', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'France', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'France, Metropolitan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'French Guiana', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'French Polynesia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Southern Territories', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Gabon', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Gambia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Georgia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Germany', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Ghana', 200.00, 400.00, 600.00, 800.00, 1000.00, 1, '0000-00-00 00:00:00', '2021-06-01 09:02:32'),
(83, 'Gibraltar', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Guernsey', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Greece', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greenland', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Grenada', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Guadeloupe', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guam', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guatemala', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guinea', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guinea-Bissau', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guyana', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Haiti', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Heard and Mc Donald Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Honduras', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Hong Kong', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Hungary', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Iceland', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'India', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Isle of Man', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Indonesia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Iran (Islamic Republic of)', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Iraq', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Ireland', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Israel', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Italy', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Ivory Coast', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Jersey', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Jamaica', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Japan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Jordan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Kazakhstan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Kenya', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kiribati', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Korea, Democratic People\'s Republic of', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Korea, Republic of', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Kosovo', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Kuwait', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kyrgyzstan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Lao People\'s Democratic Republic', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Latvia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Lebanon', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lesotho', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Liberia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Libyan Arab Jamahiriya', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Liechtenstein', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Lithuania', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Luxembourg', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Macau', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'North Macedonia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Madagascar', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Malawi', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malaysia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Maldives', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Mali', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Malta', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Marshall Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Martinique', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Mauritania', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritius', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mayotte', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mexico', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Micronesia, Federated States of', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Moldova, Republic of', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Monaco', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Mongolia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Montenegro', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montserrat', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Morocco', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Mozambique', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Myanmar', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Namibia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Nauru', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nepal', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Netherlands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands Antilles', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Reunion', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Kitts and Nevis', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Lucia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Vincent and the Grenadines', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Samoa', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'San Marino', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Sao Tome and Principe', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saudi Arabia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Senegal', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Serbia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Seychelles', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Sierra Leone', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Singapore', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Slovakia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Slovenia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Solomon Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Somalia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'South Africa', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'South Georgia South Sandwich Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'South Sudan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Spain', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Sri Lanka', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'St. Helena', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'St. Pierre and Miquelon', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Sudan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Suriname', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Svalbard and Jan Mayen Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Swaziland', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Sweden', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Switzerland', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Syrian Arab Republic', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Taiwan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Tajikistan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Tanzania, United Republic of', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Thailand', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Togo', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tokelau', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Tonga', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Trinidad and Tobago', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Tunisia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Turkey', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Turkmenistan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Turks and Caicos Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tuvalu', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Uganda', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Ukraine', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'United Arab Emirates', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'United Kingdom', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'United States', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'United States minor outlying islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Uruguay', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Uzbekistan', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Vanuatu', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Vatican City State', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Venezuela', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Vietnam', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Virgin Islands (British)', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Virgin Islands (U.S.)', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Wallis and Futuna Islands', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Western Sahara', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Yemen', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Zambia', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Zimbabwe', 0.00, 0.00, 0.00, 0.00, 0.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(4, 'Adeleke', '', '', '', '', '', '0816851693', 'webxpartt@gmail.com', NULL, '$2y$10$nNfHhgIwvvLazESDAQL2LuRXCyn18vljWhw63M2f6bKSiOwI6Etc2', 1, NULL, '2021-04-12 08:34:47', '2021-04-12 08:38:49'),
(5, 'Adeleke', '', '', '', '', '', '0816851693', 'prymable@gmail.com', NULL, '$2y$10$cpaDF58C2td7cVgnlb4uhevBP.KP8e3033nUftf2sn3vtoxdIgWee', 1, NULL, '2021-06-01 08:39:26', '2021-06-01 08:41:59');

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
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders_logs`
--
ALTER TABLE `orders_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
