-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 12:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

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
(1, 'Lee Brand', 1, '2021-03-10 12:41:11', '2021-03-11 07:43:49'),
(2, 'Gap', 1, '2021-03-10 12:49:48', '2021-03-11 08:15:49'),
(3, 'Monte Carlo', 1, '2021-03-10 12:49:59', '2021-03-10 13:05:33'),
(7, 'Arrow', 1, '2021-03-10 12:56:21', '2021-03-10 13:05:34');

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
(1, 0, 1, 'Tshirts', '', 20.00, 'T-Shirts is having lot of variety', 'tshirts', 'T-Shirts is having lot of variety', 'T-Shirts is having lot of variety', 't-shirts, good quality', 1, NULL, '2021-03-11 11:48:54'),
(2, 0, 1, 'Shirts', '', 0.00, '', 'shirts', '', '', '', 1, NULL, '2021-03-15 15:20:33'),
(3, 0, 1, 'Denims', '', 10.00, '', 'denims', '', '', '', 1, NULL, '2021-03-06 09:32:11'),
(4, 1, 1, 'Casual T-Shirts', '92776.jpg', 10.00, '', 'casual-t-shirts', '', '', '', 1, '2021-03-06 12:20:06', '2021-03-06 12:20:06'),
(5, 0, 2, 'Denims', 'example.jpg', 10.00, '', 'denims', '', '', '', 1, '2021-03-07 15:27:25', '2021-03-11 09:20:45'),
(6, 0, 3, 'T-Shirts', 'example.jpg', 0.00, '', 'kids-t-shirt', '', '', '', 1, '2021-03-11 13:04:17', '2021-03-11 17:56:36'),
(7, 1, 1, 'Formal T-Shirts', 'example.jpg', 0.00, '', 'formal-t-shirts', '', '', '', 1, '2021-03-11 13:05:37', '2021-03-11 13:05:37'),
(8, 0, 1, 'test', 'example.jpg', 0.00, '', 'test', '', '', '', 1, '2021-03-11 18:01:34', '2021-03-11 18:01:34'),
(9, 8, 1, 'testa', 'example.jpg', 0.00, '', 'testa', '', '', '', 1, '2021-03-11 18:03:29', '2021-03-11 18:03:29'),
(10, 8, 1, 'testb', 'example.jpg', 0.00, '', 'testb', '', '', '', 1, '2021-03-11 18:04:35', '2021-03-11 18:12:06'),
(11, 8, 1, 'testc', 'example.jpg', 0.00, '', 'testc', '', '', '', 0, '2021-03-11 18:04:55', '2021-03-11 18:12:10');

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
(12, '2021_03_12_211932_create_banners_table', 10);

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
(1, 4, 1, 2, 'Blue Casual TShirt', 'BT001', 'Blue', 1500.00, 10.00, 10.00, '', 'blue-mens-polo-t-shirt-500x500.jpg-6969.jpg', 'This is the cotton Blue Casual T-Shirt for every person. You can wear in summers', '', 'Cotton', 'Plain', 'Full Sleeve', 'Regular', '', '', '', '', 'Yes', 1, '2021-03-07 16:48:11', '2021-03-18 13:57:28'),
(2, 4, 1, 2, 'Gap Red Casual TShirt', 'RC001', 'Red', 1000.00, 10.00, 100.00, 'C:\\xampp\\tmp\\php282D.tmp', 'red casual tshirt.jpg-8283.jpg', '', '', 'Polyseter', 'Self', 'Full Sleeve', 'Regular', 'Casual', '', '', '', 'Yes', 1, '2021-03-07 22:35:17', '2021-03-18 13:57:13'),
(3, 4, 1, 1, 'Red Casual TShirt', 'Red101', 'Red', 1500.00, 10.00, 150.00, 'C:\\xampp\\tmp\\php26E0.tmp', 'red casual shirt.png-5949.png', '', '', 'Wool', 'Checked', 'Full Sleeve', 'Regular', 'Casual', '', '', '', 'Yes', 1, '2021-03-08 07:32:25', '2021-03-18 13:58:09'),
(5, 4, 1, 1, 'Blue Casual TShirt', 'Blue001', 'Green', 1200.00, 10.00, 120.00, 'example.mov', 'blueshirts.jpg-444.jpg', '', '', 'Cotton', 'Plain', 'Half Sleeve', 'Regular', 'Casual', 'test title', 'test keywords', 'test keywords', 'Yes', 1, '2021-03-08 08:21:10', '2021-03-17 21:25:09'),
(6, 4, 1, 2, 'Black Casual Tshirt', 'BL001', 'Black', 1500.00, 10.00, 100.00, '', 'blue tshirt images back.jpg-3780.jpg', '', '', 'Pure Wool', '', '', '', '', '', '', '', 'Yes', 1, '2021-03-08 10:31:35', '2021-03-18 13:40:03'),
(7, 4, 1, 3, 'MC Casual TShirt', 'MCT001', 'Blue', 100.00, 10.00, 10.00, 'example.mov', 'blue tshirt images back.jpg-2903.jpg', 'Test', 'test', 'Cotton', 'Checked', 'Full Sleeve', 'Regular', 'Casual', 'test', 'test', 'test', 'Yes', 1, '2021-03-11 18:54:36', '2021-03-17 21:26:06'),
(8, 7, 1, 2, 'Blue Formal T-Shirt', 'BFT001', 'Blue', 1500.00, 10.00, 10.00, 'example.mov', 'blue tshirt images.jpg-6116.jpg', 'test description', 'test care', 'Polyseter', 'Checked', 'Full Sleeve', 'Slim', '', 'test meta title', 'test meta description', 'test meta keywords', 'Yes', 1, '2021-03-15 16:53:06', '2021-03-17 21:41:36');

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
(1, 1, 'Small', 1000.00, 10, 'BTS001-S', 1, '2021-03-09 14:17:43', '2021-03-09 21:41:18'),
(2, 1, 'Medium', 1100.00, 11, 'BTS001-M', 0, '2021-03-09 14:17:43', '2021-03-09 21:41:22'),
(3, 1, 'Large', 1200.00, 20, 'BT001-L', 0, '2021-03-09 14:17:43', '2021-03-09 14:17:43'),
(4, 1, 'Extra Large', 1300.00, 10, 'BTS001-XL', 0, '2021-03-09 14:37:39', '2021-03-09 14:37:39'),
(5, 2, 'Small', 500.00, 15, 'BL001-S', 1, '2021-03-09 14:39:04', '2021-03-09 18:46:03'),
(6, 2, 'Medium', 600.00, 12, 'BL001-M', 1, '2021-03-09 14:39:04', '2021-03-09 18:47:49'),
(9, 2, 'Large', 800.00, 15, 'BL00-L', 1, '2021-03-09 18:54:34', '2021-03-09 18:54:34');

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
(1, 'Men', 1, NULL, '2021-03-11 18:44:49'),
(2, 'Women', 1, NULL, '2021-03-11 09:17:02'),
(3, 'Kids', 1, NULL, '2021-03-11 09:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adeleke Hammed Lekan', 'lekhad1@gmail.com', NULL, '$2y$10$t9RHklPVi7aWzv8uY6x47.rgtBf78hgWbyp.CCPVUdu/cYRK8l6/m', NULL, '2021-02-19 23:09:55', '2021-02-19 23:09:55');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
