-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1033.awardspace.net
-- Generation Time: Oct 09, 2025 at 12:44 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4691882_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `invoice_no` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subtotal` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `paid` decimal(10,2) DEFAULT '0.00',
  `due` decimal(10,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `invoice_no`, `customer_name`, `date`, `subtotal`, `discount`, `tax`, `total`, `paid`, `due`, `created_at`) VALUES
(27, 0, 'INV1758993640', NULL, '2025-09-27 17:20:40', 150.00, 0.00, 0.00, 150.00, 250.00, -100.00, '2025-09-27 10:20:40'),
(28, 0, 'INV1759003369', NULL, '2025-09-27 20:02:49', 260.00, 10.00, 0.00, 250.00, 260.00, -10.00, '2025-09-27 13:02:49'),
(29, 0, 'INV1759078611', NULL, '2025-09-28 16:56:52', 100.00, 0.00, 0.00, 100.00, 0.00, 100.00, '2025-09-28 09:56:52'),
(30, 0, 'INV1759091433', NULL, '2025-09-28 20:30:33', 5350.00, 0.00, 0.00, 5350.00, 5350.00, 0.00, '2025-09-28 13:30:33'),
(31, 0, 'INV1759187816', NULL, '2025-09-29 23:16:56', 5100.00, 100.00, 0.00, 5000.00, 4900.00, 100.00, '2025-09-29 16:16:56'),
(32, 0, 'INV1759188346', NULL, '2025-09-29 23:25:46', 4500.00, 0.00, 0.00, 4500.00, 4500.00, 0.00, '2025-09-29 16:25:46'),
(36, 8, 'INV1759223859', NULL, '2025-09-30 09:17:39', 200.00, 0.00, 0.00, 200.00, 100.00, 100.00, '2025-09-30 02:17:39'),
(37, 8, 'INV1759223947', NULL, '2025-09-30 09:19:07', 10000.00, 0.00, 0.00, 10000.00, 7000.00, 3000.00, '2025-09-30 02:19:07'),
(42, 8, 'INV1759266358', NULL, '2025-09-30 21:05:58', 10000.00, 0.00, 0.00, 10000.00, 0.00, 10000.00, '2025-09-30 14:05:58'),
(43, 3, 'INV1759266952', NULL, '2025-09-30 21:15:52', 11000.00, 0.00, 0.00, 11000.00, 0.00, 11000.00, '2025-09-30 14:15:52'),
(44, 3, 'INV1759267755', NULL, '2025-09-30 21:29:15', 1000.00, 0.00, 0.00, 1000.00, 0.00, 1000.00, '2025-09-30 14:29:15'),
(52, 8, 'INV1759386469', NULL, '2025-10-02 06:27:49', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2025-10-01 23:27:49'),
(53, 8, 'INV1759388658', NULL, '2025-10-02 07:04:18', 600.13, 0.00, 0.00, 600.13, 600.13, 0.00, '2025-10-02 00:04:18'),
(54, 8, 'INV1759388866', NULL, '2025-10-02 07:07:46', 300.00, 100.00, 0.00, 200.00, 300.00, -100.00, '2025-10-02 00:07:46'),
(55, 8, 'INV1759389673', NULL, '2025-10-02 07:21:13', 100.00, 10.00, 0.00, 90.00, 90.00, 0.00, '2025-10-02 00:21:13'),
(59, 3, 'INV1759610261', NULL, '2025-10-04 20:37:41', 8810.00, 0.00, 0.00, 8810.00, 8800.00, 10.00, '2025-10-04 13:37:41'),
(68, 16, 'INV1759855610', 'Abdur Rahman', '2025-10-07 16:46:50', 200.00, 5.00, 0.00, 195.00, 0.00, 195.00, '2025-10-07 16:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `quantity`, `price`) VALUES
(76, 54, 39, 1, 100.00),
(77, 54, 40, 1, 200.00),
(78, 55, 39, 1, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `shop_id` int NOT NULL,
  `customer_name` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `unit` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'pcs',
  `min_stock` int DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `quantity`, `price`, `stock`, `created_at`, `unit`, `min_stock`) VALUES
(39, 8, 'product 1', 0, 100.00, 98, '2025-10-02 07:06:27', 'kg', 5),
(40, 8, 'product 2', 0, 200.00, 199, '2025-10-02 07:06:51', 'kg', 5),
(63, 15, 'Tomato', 0, 20.00, 20, '2025-10-06 03:29:00', 'Kg', 5),
(76, 16, 'আলু', 0, 0.02, 2, '2025-10-09 11:34:29', 'kg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci DEFAULT '',
  `access` enum('on','off') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'off',
  `trial_start` datetime DEFAULT NULL,
  `role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `created_at`, `mobile`, `access`, `trial_start`, `role`) VALUES
(1, 'abdur rahman', 'redwanraju75@gmail.com', '$2y$10$.POhtRCWUx1UWm.uoeqaz.H0f7RuTUcsPV3rO6wV1hm6F.6k7Jjfu', '2025-09-27 00:58:31', '', 'on', '2025-10-09 08:28:02', 'admin'),
(3, 'মোঃ সায়েদ আলী', 'redwanraju76@gmail.com', '$2y$10$pYdS2cNRB5P33Ht8S7zMSuqj3oaEJFqxlepPns4SXnxRcii3gKPgG', '2025-09-27 01:18:12', '', 'on', '2025-10-05 07:45:17', 'user'),
(4, 'huzaifa', 'redwanraju77@gmail.com', '$2y$10$pjxgXsaCVnawo9/w0gxWKO5desE6ngBsRYFjiTIBhTbynYih1V1Zq', '2025-09-27 01:38:53', '', 'off', NULL, 'user'),
(6, 'খলিল', 'redwanraju78@gmail.com', '$2y$10$YfIwaOmwJnDXPMHa5d3jyuc0fEEkqgPGHA/jYxmg6I1gUMVV59Tt6', '2025-09-28 19:00:38', '', 'off', NULL, 'user'),
(7, 'chiken', 'redwanraju79@gmail.com', '$2y$10$9slQHnU.hE706o8xiQyNAeC3YRHmqUVZm9mUJU5O0Jt89uhen28zG', '2025-09-29 21:43:04', '', 'off', NULL, 'user'),
(8, 'owner', 'redwanraju80@gmail.com', '$2y$10$Mv3UpwWtIOh9eAJvmT7ZxuVb144kSLGV7npBMCOmoqTmSrrJLV7WS', '2025-09-29 22:21:34', '', 'off', NULL, 'user'),
(9, 'খলিল haque', 'redwanraju81@gmail.com', '$2y$10$RLnpBVCyue80Fa66OyF/ReVeCu0hFA/OJYduftR8ImIIjU2Tetici', '2025-09-30 08:21:21', '', 'off', NULL, 'user'),
(10, 'raju ahmed', 'redwanraju60@gmail.com', '$2y$10$.4cAiqlFgOzFBGSIeyUlPe1jXEOgk9ds8N01o3kapklPonnTwRq5m', '2025-10-03 19:39:41', '01737082431', 'on', '2025-10-09 08:30:03', 'user'),
(11, 'abc', 'redwanraju62@gmail.com', '$2y$10$G1yXrzhopjY1TmyJvTAWaudFaxWp/4hKwdoMQ1mIP7RbQsdJ31aFC', '2025-10-03 20:28:55', '01886438530', 'on', '2025-10-03 13:35:33', 'user'),
(12, 'x', 'redwan1@gmail.com', '$2y$10$dlv0a/ANKwea46TM.aSrOOF5cDT/7CXEuVREIPkPvXIJ8S2qsBh.q', '2025-10-03 20:55:23', '123456789', 'on', '2025-10-06 15:24:28', 'user'),
(13, 'y', 'redwan2@gmail.com', '$2y$10$2C9oKTwuQxbTJX3m4GFDg.g7xGkR1HKGo7S2DY8ofWZHk3dKUrFGG', '2025-10-03 21:05:27', '111111111', 'off', '2025-10-03 14:06:37', 'user'),
(14, 'z', 'abc@gmail.com', '$2y$10$b9CkewvXwnJxEg/.qPspzOoqhSAPS3DeQTRUaEzijo8ihISE9n0vu', '2025-10-04 19:30:22', '01737082431', 'on', '2025-10-04 12:37:42', 'user'),
(15, 'Mr abir', 'abcdef@gmail.com', '$2y$10$HjjL9A35W2mgOqz9OvYMguU4OLbHdnCUVaOhhytxKlFRKPUk1yTP.', '2025-10-06 03:27:02', '01737082431', 'on', '2025-10-06 03:27:34', 'user'),
(16, 'Huzaifa kichen', 'Huzaifa@gmail.com', '$2y$10$qh.cLqMclhv3.RjiZL0tzuo0kRnys/WQejh76jeNH7WkYivicQLWq', '2025-10-07 16:34:20', '01729438530', 'on', '2025-10-07 16:35:24', 'user'),
(17, 'গ্রোসারী আইটেম', 'uttarakhaddovandar@gmail.com', '$2y$10$SIWDFcl0YJOKQW.52Vb.nevyk9eTtH0vXA9OxAGNuijarhjaN80Oe', '2025-10-08 11:50:14', '01799189105', 'off', '2025-10-08 11:50:14', 'user');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
