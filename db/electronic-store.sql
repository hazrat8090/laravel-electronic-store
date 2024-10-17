-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2024 at 10:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronic-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 6, 7, '2023-11-06 14:57:54', '2023-11-06 14:57:54'),
(18, 4, 8, '2024-02-08 07:38:18', '2024-02-08 07:38:18'),
(19, 6, 8, '2024-06-03 07:27:54', '2024-06-03 07:27:54'),
(20, 4, 6, '2024-08-04 03:32:03', '2024-08-04 03:32:03'),
(21, 11, 6, '2024-08-04 03:32:26', '2024-08-04 03:32:26');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_10_25_044411_create_users_table', 1),
(3, '2023_10_25_061058_create_products_table', 2),
(4, '2023_10_25_102654_create_card_table', 3),
(5, '2023_10_26_044818_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `status`, `payment_method`, `payment_status`, `address`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 'pending', 'cash', 'pending', 'Heart', NULL, NULL),
(3, 11, 2, 'pending', 'cash', 'pending', 'cash', NULL, NULL),
(4, 5, 6, 'pending', 'cash', 'pending', 'Herat', NULL, NULL);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `gallery` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Mobile', '5000', 'mobile', 'a Samsung mobile with 4GB ram and 64GB memory', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb-p6RTbjWV65bpZ-sMb09k_sY5TAn0rk6sYQ_VLuXBgQJRnEbHyLR5m1eFQXSgfcoB6I&usqp=CAU', NULL, NULL),
(2, 'iphone 14', '3000', 'mobile', 'an apple mobile with 4GB ram and 64GB memory', 'https://images.hothardware.com/contentimages/article/3143/content/small_hero-2-apple-iphone-13-pro-review.jpg', NULL, NULL),
(4, 'Apple TV', '9000', 'TV', 'an apple TB with 3000px resoloion and 100px quality', 'https://help.apple.com/assets/64026BE13E046A1EEC6C24B3/64026BEA3E046A1EEC6C24E0/en_US/ae685f6e7d3e2235f8488e28a987c8dc.png', NULL, NULL),
(5, 'Samsung TV', '6000', 'TV', 'a Samsung TB with 1500px resolotion and 90px quality', 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6360/6360291_rd.jpg', NULL, NULL),
(6, 'Nokia TV', '1000', 'TV', 'Téléviseur Smart TV NOKIA 32 HD, 80cm, 3 X HDMI et 2 X USB', 'https://www.cdiscount.com/pdt2/6/7/8/1/700x700/nok9120106660678/rw/televiseur-smart-tv-nokia-32-hd-80cm-3-x-hdmi-e.jpg', NULL, NULL),
(7, 'Dell Laptop', '20000', 'Computer', 'Dell introduces XPS and Inspiron laptops with Windows 10 in new colors | Windows Experience Blog', 'https://blogs.windows.com/wp-content/uploads/prod/2016/09/Dell-Sept-14.jpg', NULL, NULL),
(8, 'Apple Laptop', '90000', 'Computer', 'Apple MacBook Pro 14 (2023)', 'https://i.rtings.com/assets/products/3C7dl86s/apple-macbook-pro-14-2023/design-medium.jpg', NULL, NULL),
(9, 'headphone', '1000', 'Device', 'Sony announces WH-1000XM5 headphones with new design and even better noise cancellation', 'https://pro.sony/s3/2021/06/24113119/Headphones_consumer_thumbnail.jpg', NULL, NULL),
(10, 'charger', '200', 'Devices', 'Best Charging Stands For Phones (Review) in 2023 - Sacramento Bee', 'https://m.media-amazon.com/images/S/aplus-media/sc/43e32afb-5ecc-4b97-b8f5-3bdba9fccd6e.__CR0,0,300,300_PT0_SX300_V1___.jpg', NULL, NULL),
(11, 'Mouse', '500', 'Device', 'The best mouse 2023: top computer mice for work and play | TechRadar', 'https://i.rtings.com/assets/pages/B3SMmNOk/best-wireless-gaming-mouse-202106-medium.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(6, 'test', 'test@gmail.com', '$2y$10$sUXmkLdKOGe33y30xHCacu6ZtorF2SyMrG7iVHLQP3lrWM0NcQ/zy', '2023-11-05 11:27:12', '2023-11-05 11:27:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
