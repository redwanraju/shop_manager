-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2025 at 09:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `subtotal` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `tax` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) DEFAULT 0.00,
  `paid` decimal(10,2) DEFAULT 0.00,
  `due` decimal(10,2) DEFAULT 0.00,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `customer_name`, `invoice_no`, `date`, `subtotal`, `discount`, `tax`, `total`, `paid`, `due`, `created_at`) VALUES
(92, 1, 'আব্দুর রহমান -01737-082431 baliyadanga 6300', 'INV1760122720', '2025-10-10 18:58:40', 500.00, 250.00, 0.00, 250.00, 250.00, 0.00, '2025-10-10 11:58:40'),
(93, 1, 'gg', 'INV1760123345', '2025-10-10 19:09:05', 100.00, 0.00, 0.00, 100.00, 0.00, 100.00, '2025-10-10 12:09:05'),
(95, 1, 'mr y', 'INV1760157879', '2025-10-11 04:44:39', 2650.00, 0.00, 0.00, 2650.00, 2650.00, 0.00, '2025-10-11 10:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `quantity`, `price`) VALUES
(122, 92, 69, 5, 100.00),
(123, 93, 69, 1, 100.00),
(125, 95, 71, 53, 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_addr` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `attempt_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `customer_name` varchar(150) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `unit` varchar(50) DEFAULT 'pcs',
  `min_stock` int(11) DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `quantity`, `price`, `stock`, `created_at`, `unit`, `min_stock`) VALUES
(27, 3, 'laptop', 0, 1.00, 1, '2025-09-30 19:46:52', 'pcs', 5),
(39, 8, 'product 1', 0, 100.00, 98, '2025-10-02 07:06:27', 'kg', 5),
(40, 8, 'product 2', 0, 200.00, 199, '2025-10-02 07:06:51', 'kg', 5),
(42, 3, 'mobile', 0, 9000.00, 10, '2025-10-04 20:36:47', 'pcs', 5),
(60, 3, 'আলু', 0, 20.00, 100, '2025-10-05 14:56:17', 'kg', 5),
(69, 1, 'পিয়াজ ', 0, 100.00, 13, '2025-10-10 18:57:28', 'kg', 5),
(70, 1, 'আলু', 0, 30.00, 44, '2025-10-11 04:23:49', '5', 5),
(71, 1, 'bottle', 0, 50.00, 2, '2025-10-11 04:23:49', 'pcs', 5);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `address`, `created_at`) VALUES
(1, 1, 'shop1', 'dhaka', '2025-09-27 03:24:53'),
(2, 3, 'shop1', 'dhaka', '2025-09-27 10:49:38'),
(3, 8, 'my shop 2', 'baliyadanga', '2025-09-29 22:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `mobile` varchar(20) DEFAULT '',
  `access` enum('on','off') NOT NULL DEFAULT 'off',
  `trial_start` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `created_at`, `mobile`, `access`, `trial_start`) VALUES
(1, 'abdur rahman', 'redwanraju75@gmail.com', '$2y$10$.POhtRCWUx1UWm.uoeqaz.H0f7RuTUcsPV3rO6wV1hm6F.6k7Jjfu', '2025-09-27 00:58:31', '', 'on', '2025-10-11 10:19:59'),
(3, 'মোঃ সায়েদ আলী', 'redwanraju76@gmail.com', '$2y$10$pYdS2cNRB5P33Ht8S7zMSuqj3oaEJFqxlepPns4SXnxRcii3gKPgG', '2025-09-27 01:18:12', '', 'on', '2025-10-11 12:58:05'),
(4, 'huzaifa', 'redwanraju77@gmail.com', '$2y$10$pjxgXsaCVnawo9/w0gxWKO5desE6ngBsRYFjiTIBhTbynYih1V1Zq', '2025-09-27 01:38:53', '', 'off', NULL),
(6, 'খলিল', 'redwanraju78@gmail.com', '$2y$10$YfIwaOmwJnDXPMHa5d3jyuc0fEEkqgPGHA/jYxmg6I1gUMVV59Tt6', '2025-09-28 19:00:38', '', 'off', NULL),
(7, 'chiken', 'redwanraju79@gmail.com', '$2y$10$9slQHnU.hE706o8xiQyNAeC3YRHmqUVZm9mUJU5O0Jt89uhen28zG', '2025-09-29 21:43:04', '', 'off', NULL),
(8, 'owner', 'redwanraju80@gmail.com', '$2y$10$Mv3UpwWtIOh9eAJvmT7ZxuVb144kSLGV7npBMCOmoqTmSrrJLV7WS', '2025-09-29 22:21:34', '', 'off', NULL),
(9, 'খলিল haque', 'redwanraju81@gmail.com', '$2y$10$RLnpBVCyue80Fa66OyF/ReVeCu0hFA/OJYduftR8ImIIjU2Tetici', '2025-09-30 08:21:21', '', 'off', NULL),
(10, 'raju ahmed', 'redwanraju60@gmail.com', '$2y$10$.4cAiqlFgOzFBGSIeyUlPe1jXEOgk9ds8N01o3kapklPonnTwRq5m', '2025-10-03 19:39:41', '01737082431', 'on', '2025-10-03 13:36:44'),
(11, 'abc', 'redwanraju62@gmail.com', '$2y$10$G1yXrzhopjY1TmyJvTAWaudFaxWp/4hKwdoMQ1mIP7RbQsdJ31aFC', '2025-10-03 20:28:55', '01886438530', 'on', '2025-10-03 13:35:33'),
(12, 'x', 'redwan1@gmail.com', '$2y$10$dlv0a/ANKwea46TM.aSrOOF5cDT/7CXEuVREIPkPvXIJ8S2qsBh.q', '2025-10-03 20:55:23', '123456789', 'on', '2025-10-03 14:02:24'),
(13, 'y', 'redwan2@gmail.com', '$2y$10$2C9oKTwuQxbTJX3m4GFDg.g7xGkR1HKGo7S2DY8ofWZHk3dKUrFGG', '2025-10-03 21:05:27', '111111111', 'off', '2025-10-03 14:06:37'),
(14, 'z', 'abc@gmail.com', '$2y$10$b9CkewvXwnJxEg/.qPspzOoqhSAPS3DeQTRUaEzijo8ihISE9n0vu', '2025-10-04 19:30:22', '01737082431', 'on', '2025-10-04 12:37:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `invoice_items_ibfk_2` (`product_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_addr` (`ip_addr`),
  ADD KEY `email` (`email`),
  ADD KEY `attempt_time` (`attempt_time`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`user_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `invoice_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
