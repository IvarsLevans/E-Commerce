-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 10:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_product` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quatity` varchar(255) DEFAULT NULL,
  `color` varchar(250) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `coupon` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `id_product` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `id_user`, `id_product`, `user_name`, `email`, `rating`, `feedback`, `created_at`, `updated_at`) VALUES
(12, '1', '52', 'user', 'user@gmail.com', '5', 'Great Product!', '2023-04-20 15:07:59', '2023-04-20 15:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `id_user`, `email`, `message`, `created_at`, `updated_at`) VALUES
(9, '1', 'user@gmail.com', 'Do you offer discounts for repeat customers!', '2023-04-20 15:31:31', '2023-04-20 15:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_27_114522_create_sessions_table', 1),
(7, '2022_05_27_150323_create_products_table', 2),
(8, '2022_05_27_153824_create_products_table', 3),
(9, '2022_05_27_185111_create_carts_table', 4),
(10, '2022_05_28_110550_create_orders_table', 5),
(11, '2022_05_28_153458_create_messages_table', 6),
(12, '2022_05_28_165938_create_carts_table', 7),
(13, '2022_05_28_171609_create_products_table', 8),
(14, '2022_05_28_180941_create_products_table', 9),
(15, '2022_05_28_181720_create_products_table', 10),
(16, '2022_05_28_213925_create_orders_table', 11),
(17, '2022_05_29_075522_create_wishlists_table', 12),
(18, '2022_06_02_102845_create_feedback_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `cc_name` varchar(255) DEFAULT NULL,
  `cc_number` varchar(255) DEFAULT NULL,
  `cc_expiration` varchar(255) DEFAULT NULL,
  `cc_cvv` varchar(255) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `firstname`, `lastname`, `email`, `phone`, `address`, `country`, `state`, `zip`, `method`, `cc_name`, `cc_number`, `cc_expiration`, `cc_cvv`, `items`, `price`, `status`, `created_at`, `updated_at`) VALUES
(15, '1', 'John', 'Smith', 'user@gmail.com', '+371 26424242', 'Maskavas iela 250', 'Latvia', 'Riga', 'LV-1050', 'PayPal', 'John Smith', '5733769840916243898', '10/2027', '341', 'Apple iPhone 14 Pro (128 GB) X 1', '1299', 'Approved', '2023-04-20 15:37:44', '2023-04-20 16:13:02'),
(16, '1', 'John', 'Smith', 'user@gmail.com', '+371 26424242', 'Maskavas iela 250', 'Latvia', 'Riga', 'LV-1050', 'Credit card', 'John Smith', '4929361650819788', '03/2024', '413', 'Huawei Mate 50 Pro X 1', '1099', 'Pending', '2023-04-22 20:41:48', '2023-04-22 20:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `category`, `brand`, `color`, `image1`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(52, 'Apple iPhone 14 Pro, 128 GB', '1299', 'The iPhone 14 Pro has a 6.1-inch display and comes with a triple-lens camera system with telephoto, wide, and ultra-wide lenses.', 'Phone', 'Apple', 'Deep Purple', '168201181162.webp', '168201181129.webp', '168201181193.webp', '2023-04-20 14:30:11', '2023-04-23 16:53:07'),
(53, 'Samsung Galaxy Z Fold 4, 512GB', '1999', 'The Samsung Galaxy Z Fold4 is lighter and more durable than its predecessor. It now boasts the fastest processor in the Samsung Galaxy Z Fold series.', 'Phone', 'Samsung', 'Gray Green', '168201834463.webp', '168201834489.webp', '168201834479.webp', '2023-04-20 16:19:04', '2023-04-23 16:46:17'),
(54, 'Huawei Mate 50 Pro', '1099', 'The Huawei Mate 50 Pro is a new flagship phone with a F1.4 ultra-large aperture, RYYB sensor, 120 Hz OLED display, IP68 water and dust resistance, 4700 mAh battery, 66 W wired HUAWEI Super Charge, 50 W wireless HUAWEI SuperCharge and more', 'Phone', 'Huawei', 'Silver', '168227988747.jpeg', '168227988716.jpeg', '168227988765.jpeg', '2023-04-20 16:23:55', '2023-04-23 16:58:07'),
(55, 'Apple MacBook Air 13.6\" M2 8C CPU, 8C GPU, 256GB', '1329', 'The MacBook Air with M2 chip has an 8-core CPU with 4 performance cores and 4 efficiency cores, an 8-core GPU, and a 16-core Neural Engine.', 'Computer', 'Apple', 'Midnight', '168227913232.webp', '16822791323.png', '168227913296.webp', '2023-04-23 16:45:32', '2023-04-23 16:45:32'),
(56, 'Huawei Honor Magic', '119', 'The Huawei Honor Magic5 has a 6.73-inch display and runs on Android 13 with MagicOS 7.1. It has 256GB storage but no card slot', 'Headphones', 'Huawei', 'White', '168227935492.webp', '168227935477.webp', '168227935421.webp', '2023-04-23 16:49:14', '2023-04-23 16:49:14'),
(57, 'Apple AirPods Pro (2nd Generation)', '279', 'The Apple AirPods Pro (2nd generation) have custom high-excursion Apple drivers and a custom high dynamic range amplifier.', 'Headphones', 'Apple', 'White', '168227950226.webp', '168227950283.webp', '168227950213.webp', '2023-04-23 16:51:42', '2023-04-23 16:51:42'),
(58, 'Apple MacBook Pro 14\" M1 Pro 10C CPU, 16C GPU, 1TB', '2579', 'The MacBook Pro with M1 Pro chip has a 10-core CPU and a 16-core GPU. It has 1TB storage.', 'Computer', 'Apple', 'Space Grey', '168228010110.webp', '168228010129.webp', '16822801013.webp', '2023-04-23 16:56:48', '2023-04-23 17:02:01'),
(59, 'Samsung Galaxy S21 FE 5G, 128GB', '519', 'The Samsung Galaxy S21 FE 5G is a smartphone with a 6.4-inch display, 6GB of RAM, 128GB of internal storage', 'Phone', 'Samsung', 'Gray', '168228032547.webp', '168228032552.jpeg', '16822803251.webp', '2023-04-23 17:05:25', '2023-04-23 17:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('UZ0vKkgKbRCt3zX0llp1rTig8XSvjP4mFSFSZjZz', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidEdwa1dEMjUyU0FCOEFiQUZ4YXBOT3hicE51d3l2QVUzWXV0NEd6VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZWRpcmVjdCI7fXM6NToibG9naW4iO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1682280965);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '26424242', 'Maskavas iela 250, Riga, Latvia', NULL, '$2y$10$iInnBIHtm4tmldFMabRoaO/EvgSNy5iqJurr8Os8c.zS7N6xIwIVe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 05:59:49', '2023-04-16 05:59:49'),
(2, 'admin', 'admin@gmail.com', '1', '25454545', 'Brivibas iela 27, Riga, Latvia', NULL, '$2y$10$3UGIsUwWgPXAqpgXf7IC6OHvnwYY6NPIjPTr312BHX1ltfzoy5mT2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-16 05:32:42', '2023-04-16 05:32:42'),
(8, 'user2', 'user2@gmail.com', '0', '27454545', 'Elizabetes iela 20', NULL, '$2y$10$1O9UeNSxnJ/InoKcVQ7TNeacIotG9WtPRJT9EFNyrvNDM/scbeb.S', 'eyJpdiI6InNUYVppcnNIbmJsY1N2WlJpd0ptN3c9PSIsInZhbHVlIjoiYWxZRW5jYmduNUNIV3kvcVJ1cXZ5T3RIN0x5RFpaYStxR2dxNjV2SHdBST0iLCJtYWMiOiI5YzUyZGM3ZDExOThjOGUyYTg0NWU2OWU0YzQ3YmNkNzcwNWNmYzc5MGEyZmIxNWMyYTFmOTkwZDQ0Mzg4MGYwIiwidGFnIjoiIn0=', 'eyJpdiI6ImtQblpVMmtScXYrRi9lU2owTEVtcVE9PSIsInZhbHVlIjoiRFlCR3lmWmFiUm5EWnRGR3gyOEJBRUtYK3JQQlhGVW1QS3EzR1NPTXZ3bjBzUHBpYUNzUFByVG9yaFZBMGhpQzZ2YXBjeXMvOE1YenRpOHB6cHQ3ZkozeEZjU040WHM3Qk84Z3Y1b2tveEsyZTEyQ2F0d2E4dmNqb1E2NVFGdS9qRXFqVTZJR0FNREp6ZFpTVjlUZVFURTFtdTdsd0x3cHo3N1d4bkdHNHhMMkNXMGdUZXpvclVRTEN5dzFLMmRqbDcyVlFHZVpNZDRXSlE5cnVvaUN4eWI3ZXdOSS90U1RYMTNyWndYejcwb0tNRFhjaUNJWlVNbng4YTVLcFNod2NsZHgrYS9pY0RSZlQrcy90dzhHZlE9PSIsIm1hYyI6IjVlMTNmMDI0ZmVjMThiZDY3OTAwMTMwZDQwMWUzMWJiNGNkNzEwMDc1YzA3Zjk4Njk1NTE1ODdjZjY0MzA3MTUiLCJ0YWciOiIifQ==', '2023-04-23 17:10:53', NULL, NULL, NULL, '2023-04-23 17:07:11', '2023-04-23 17:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `id_product` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
