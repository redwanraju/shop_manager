-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: fdb1033.awardspace.net
-- Generation Time: Oct 29, 2025 at 06:00 PM
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
CREATE DATABASE IF NOT EXISTS `4691882_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `4691882_shop`;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `invoice_no` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subtotal` decimal(10,2) DEFAULT '0.00',
  `discount` decimal(10,2) DEFAULT '0.00',
  `tax` decimal(10,2) DEFAULT '0.00',
  `total` decimal(10,2) DEFAULT '0.00',
  `paid` decimal(10,2) DEFAULT '0.00',
  `due` decimal(10,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `invoice_no`, `customer_name`, `phone`, `customer_address`, `date`, `subtotal`, `discount`, `tax`, `total`, `paid`, `due`, `created_at`, `delivery_date`) VALUES
(3, 2, 'INV-1760473563', 'x', NULL, 'dhaka', '2025-10-14 20:26:03', 67.00, 0.00, 0.00, 67.00, 67.00, 0.00, '2025-10-14 20:26:03', '2025-10-16'),
(13, 3, 'INV-1760698561', '0 1973-020811', NULL, '', '2025-10-17 10:56:01', 2850.00, 0.00, 0.00, 2850.00, 0.00, 2850.00, '2025-10-17 10:56:01', '2025-10-18'),
(14, 3, 'INV-1760699173', '+60 14-657 7497', NULL, '', '2025-10-17 11:06:13', 3100.00, 0.00, 0.00, 3100.00, 0.00, 3100.00, '2025-10-17 11:06:13', '2025-10-18'),
(15, 3, 'INV-1760730001', '0 1902-281426', NULL, '', '2025-10-17 19:40:01', 7040.00, 0.00, 0.00, 7040.00, 1000.00, 6040.00, '2025-10-17 19:40:01', '2025-10-20'),
(16, 3, 'INV-1760945286', 'Shoraiya Anam Sobah', NULL, '', '2025-10-20 07:28:06', 5850.00, 0.00, 0.00, 5850.00, 0.00, 5850.00, '2025-10-20 07:28:06', '2025-10-20'),
(17, 3, 'INV-1760946146', '0 1830-313131', NULL, '', '2025-10-20 07:42:26', 3750.00, 0.00, 0.00, 3750.00, 0.00, 3750.00, '2025-10-20 07:42:26', '2025-10-20'),
(18, 3, 'INV-1760972011', '0 1764-029824', NULL, '', '2025-10-20 14:53:31', 3000.00, 0.00, 0.00, 3000.00, 0.00, 3000.00, '2025-10-20 14:53:31', '2025-10-21'),
(19, 3, 'INV-1760973088', '+60 14-657 7497', NULL, '', '2025-10-20 15:11:28', 3100.00, 0.00, 0.00, 3100.00, 0.00, 3100.00, '2025-10-20 15:11:28', '2025-10-22'),
(20, 3, 'INV-1760975421', 'Rajia Sikta', NULL, '', '2025-10-20 15:50:21', 3750.00, 0.00, 0.00, 3750.00, 0.00, 3750.00, '2025-10-20 15:50:21', '2025-10-21'),
(21, 3, 'INV-1760979802', '0 1771-598926', NULL, '', '2025-10-20 17:03:22', 2250.00, 0.00, 0.00, 2250.00, 0.00, 2250.00, '2025-10-20 17:03:22', '2025-10-21'),
(23, 3, 'INV-1760992859', 'Md Ariful', NULL, '', '2025-10-20 20:40:59', 2550.00, 0.00, 0.00, 2550.00, 0.00, 2550.00, '2025-10-20 20:40:59', '2025-10-22'),
(33, 3, 'INV-1761216533', 'n', NULL, '', '2025-10-23 10:48:53', 1120.00, 0.00, 0.00, 1120.00, 0.00, 1120.00, '2025-10-23 10:48:53', '2025-10-24'),
(35, 3, 'INV-1761335599', 'Md Ariful', NULL, '', '2025-10-24 19:53:19', 5220.00, 0.00, 0.00, 5220.00, 0.00, 5220.00, '2025-10-24 19:53:19', '2025-10-29'),
(36, 3, 'INV-1761367039', 'Md Ariful', NULL, '', '2025-10-25 04:37:19', 450.00, 0.00, 0.00, 450.00, 0.00, 450.00, '2025-10-25 04:37:19', '2025-11-05'),
(38, 3, 'INV-1761466876', '0 1404-257384', NULL, '', '2025-10-26 08:21:16', 2850.00, 0.00, 0.00, 2850.00, 0.00, 2850.00, '2025-10-26 08:21:16', '2025-10-27'),
(39, 3, 'INV-1761467118', '0 1404-257384', NULL, '', '2025-10-26 08:25:18', 2850.00, 0.00, 0.00, 2850.00, 0.00, 2850.00, '2025-10-26 08:25:18', '2025-10-27'),
(41, 3, 'INV-1761592542', 'Syeda Sabrima', NULL, '', '2025-10-27 19:15:43', 1100.00, 0.00, 0.00, 1100.00, 0.00, 1100.00, '2025-10-27 19:15:43', '2025-10-28'),
(42, 3, 'INV-1761593251', '+44 7425 643432', NULL, '', '2025-10-27 19:27:31', 2240.00, 0.00, 0.00, 2240.00, 0.00, 2240.00, '2025-10-27 19:27:31', '2025-10-28'),
(48, 3, 'INV-1761736997', '0 1632-489426', NULL, '', '2025-10-29 11:23:17', 3850.00, 50.00, 0.00, 3800.00, 1000.00, 2800.00, '2025-10-29 11:23:17', '2025-10-31'),
(49, 3, 'INV-1761746995', '0 1718-421342', NULL, '', '2025-10-29 14:09:55', 5000.00, 0.00, 0.00, 5000.00, 0.00, 5000.00, '2025-10-29 14:09:55', '2025-10-30'),
(50, 3, 'INV-1761748158', '+49 1520 5160420', NULL, '', '2025-10-29 14:29:18', 2900.00, 0.00, 0.00, 2900.00, 1000.00, 1900.00, '2025-10-29 14:29:18', '2025-10-31'),
(58, 1, 'INV-1761758975', 'raju ahmed', '৬৫৪৩৫৫৪৫৫৫', 'et4rgre55y5ry54y\r\ngdrgsrgesge', '2025-10-29 17:29:35', 100.00, 0.00, 0.00, 100.00, 0.00, 100.00, '2025-10-29 17:29:35', '2025-10-30'),
(59, 1, 'INV-1761759519', 'raju ahmed', NULL, 'et4rgre55y5ry54y\r\ngdrgsrgesge', '2025-10-29 17:38:39', 100.00, 0.00, 0.00, 100.00, 0.00, 100.00, '2025-10-29 17:38:39', '2025-10-30'),
(60, 1, 'INV-1761759668', 'kasem', '01729438530', 'vvvvvvv', '2025-10-29 17:41:08', 100.00, 0.00, 0.00, 100.00, 0.00, 100.00, '2025-10-29 17:41:08', '2025-10-30'),
(61, 3, 'INV-1761759976', '01772040706', '01772040706', 'গেন্ডারিয়া ঘুনটিঘড় মসজিদের সামনে', '2025-10-29 17:46:16', 1500.00, 0.00, 0.00, 1500.00, 500.00, 1000.00, '2025-10-29 17:46:16', '2025-10-30'),
(62, 1, 'INV-1761760542', 'raju ahmed', '01886438530', 'baliyadanga, capai nawabganj', '2025-10-29 17:55:42', 5349.00, 349.00, 0.00, 5000.00, 5000.00, 0.00, '2025-10-29 17:55:42', '2025-10-31');

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
(5, 3, 5, 1, 23.00),
(6, 3, 6, 1, 44.00),
(24, 13, 12, 1, 2500.00),
(26, 14, 12, 1, 2500.00),
(27, 14, 49, 1, 250.00),
(29, 15, 10, 1, 5000.00),
(30, 15, 32, 2, 170.00),
(31, 15, 31, 2, 50.00),
(32, 15, 49, 1, 250.00),
(33, 15, 90, 1, 700.00),
(35, 16, 9, 1, 5000.00),
(37, 17, 61, 1, 3400.00),
(39, 18, 18, 9, 300.00),
(40, 18, 93, 1, 300.00),
(41, 19, 12, 1, 2500.00),
(42, 19, 49, 1, 250.00),
(44, 20, 62, 1, 3400.00),
(46, 21, 53, 1, 1600.00),
(47, 21, 21, 1, 400.00),
(48, 21, 100, 1, 250.00),
(51, 23, 44, 1, 2000.00),
(52, 23, 23, 1, 550.00),
(66, 33, 33, 1, 800.00),
(67, 33, 20, 1, 320.00),
(73, 35, 95, 1, 400.00),
(74, 35, 44, 1, 2000.00),
(75, 35, 20, 1, 320.00),
(76, 35, 40, 1, 1000.00),
(77, 35, 35, 1, 1500.00),
(78, 36, 19, 1, 350.00),
(79, 36, 101, 1, 100.00),
(81, 38, 12, 1, 2500.00),
(82, 38, 93, 1, 350.00),
(83, 39, 12, 1, 2500.00),
(84, 39, 93, 1, 350.00),
(86, 41, 22, 2, 450.00),
(87, 41, 99, 1, 200.00),
(88, 42, 32, 12, 170.00),
(89, 42, 99, 1, 200.00),
(97, 48, 12, 1, 2500.00),
(98, 48, 40, 1, 1000.00),
(99, 48, 93, 1, 350.00),
(100, 49, 108, 15, 150.00),
(101, 49, 34, 3, 800.00),
(102, 49, 93, 1, 350.00),
(103, 50, 13, 1, 2500.00),
(104, 50, 95, 1, 400.00),
(112, 58, 1, 1, 100.00),
(113, 59, 4, 1, 100.00),
(114, 60, 1, 1, 100.00),
(115, 61, 21, 2, 400.00),
(116, 61, 109, 1, 400.00),
(117, 61, 94, 1, 300.00),
(118, 62, 107, 1, 33.00),
(119, 62, 2, 1, 50.00),
(120, 62, 3, 1, 5000.00),
(121, 62, 4, 1, 100.00),
(122, 62, 105, 1, 55.00),
(123, 62, 1, 1, 100.00),
(124, 62, 106, 1, 11.00);

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
(1, 1, 'bottle', 0, 100.00, 91, '2025-10-14 20:04:40', 'pcs', 5),
(2, 1, 'আলু', 0, 50.00, 487, '2025-10-14 20:04:40', 'kg', 5),
(3, 1, 'phone', 0, 5000.00, 94, '2025-10-14 20:05:20', 'pcs', 5),
(4, 1, 'fan', 0, 100.00, 492, '2025-10-14 20:10:26', 'pcs', 5),
(5, 2, 'bottle', 0, 23.00, 21, '2025-10-14 20:25:22', 'pcs', 5),
(6, 2, 'আলু', 0, 44.00, 43, '2025-10-14 20:25:22', 'kg', 5),
(7, 3, 'আস্ত খাসির ডালা', 0, 12.00, 95, '2025-10-15 09:29:50', 'pc', 5),
(8, 3, 'আস্ত খাসির ডালা', 0, 15000.00, 97, '2025-10-15 09:39:38', 'pc', 5),
(9, 3, 'ডাবল ডালা-1', 0, 5000.00, 99, '2025-10-16 20:15:20', 'pc', 5),
(10, 3, 'ডাবল ডালা-2 ', 0, 5000.00, 99, '2025-10-16 20:17:42', 'pc', 5),
(11, 3, 'ডাবল ডালা-3', 0, 5000.00, 99, '2025-10-16 20:18:15', 'pc', 5),
(12, 3, 'ডালা-1', 0, 2500.00, 93, '2025-10-16 20:19:13', 'pc', 5),
(13, 3, 'ডালা-2', 0, 2500.00, 98, '2025-10-16 20:19:55', 'pc', 5),
(14, 3, 'ডালা-3', 0, 2500.00, 100, '2025-10-16 20:20:28', 'pc', 5),
(15, 3, 'ভুনা খিচুড়ি ডালা', 0, 2500.00, 100, '2025-10-16 20:22:49', 'pc', 5),
(17, 3, 'চিকেন set menu-1', 0, 250.00, 93, '2025-10-16 20:23:53', 'pc', 5),
(18, 3, 'চিকেন set menu-2', 0, 300.00, 91, '2025-10-16 20:42:53', 'pc', 5),
(19, 3, 'চিকেন set menu-3', 0, 350.00, 98, '2025-10-16 20:42:53', 'pc', 5),
(20, 3, 'কাচ্চি set menu-4', 0, 320.00, 78, '2025-10-16 20:42:53', 'pc', 5),
(21, 3, 'কাচ্চি set menu-5', 0, 400.00, 77, '2025-10-16 20:42:53', 'pc', 5),
(22, 3, 'কাচ্চি set menu-6', 0, 450.00, 98, '2025-10-16 20:42:53', 'pc', 5),
(23, 3, 'কাচ্চি set menu-7', 0, 550.00, 99, '2025-10-16 20:42:53', 'pc', 5),
(24, 3, 'বিফ সেট মেনু-8', 0, 400.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(25, 3, 'সেট মেনু-9', 0, 400.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(26, 3, 'সেট মেনু-10', 0, 650.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(27, 3, 'পোলাও', 0, 100.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(28, 3, ' ভর্তা +বেগুন ভর্তা +ডাল ভর্তা', 0, 300.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(29, 3, 'ঘন ডাল', 0, 350.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(30, 3, 'পাতলা ডাল', 0, 300.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(31, 3, 'চিকেন কাবাব', 0, 50.00, 98, '2025-10-16 20:42:53', 'pc', 5),
(32, 3, 'চিকেন রোস্ট', 0, 170.00, 86, '2025-10-16 20:42:53', 'pc', 5),
(33, 3, 'আস্ত মুরগির রোস্ট', 0, 800.00, 98, '2025-10-16 20:42:53', 'pc', 5),
(34, 3, ' ১ টা ফুল মুরগি ভুনা - (ফ্যামিলি কাট)', 0, 800.00, 96, '2025-10-16 20:42:53', 'pc', 5),
(35, 3, '১ টা ফুল হাঁস ভুনা-(ফ্যামিলি কাট)', 0, 1500.00, 99, '2025-10-16 20:42:53', 'pc', 5),
(36, 3, 'বিফ ভুনা', 0, 1500.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(37, 3, 'বিফ রেজালা', 0, 1500.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(38, 3, 'খাসির রেজালা', 0, 1800.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(39, 3, 'খাসি মাংস ভুনা', 0, 1800.00, 98, '2025-10-16 20:42:53', 'pc', 5),
(40, 3, 'আস্ত খাসির রান', 0, 1000.00, 98, '2025-10-16 20:42:53', 'pc', 5),
(41, 3, 'চিকেন তান্দুরি', 0, 150.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(42, 3, 'চিকেন ফ্রাই', 0, 150.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(43, 3, 'ডিমের কোরমা/ ভুনা', 0, 50.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(44, 3, 'চিংড়ি ভুনা', 0, 2000.00, 96, '2025-10-16 20:42:53', 'pc', 5),
(45, 3, 'রুই মাছ ভুনা/ভাজা', 0, 250.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(46, 3, 'কই মাছ ভুনা', 0, 1000.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(47, 3, 'পাবদা মাছ', 0, 1200.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(48, 3, 'বাটা মাছ ভুনা', 0, 800.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(49, 3, 'বোরহানি-লিটার', 0, 250.00, 97, '2025-10-16 20:42:53', 'pc', 5),
(50, 3, 'ফিরনি ', 0, 800.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(51, 3, 'জর্দা', 0, 800.00, 100, '2025-10-16 20:42:53', 'pc', 5),
(52, 3, '২ জনের ডালা-1', 0, 1600.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(53, 3, '২ জনের ডালা-2', 0, 1600.00, 99, '2025-10-16 21:00:02', 'pc', 5),
(54, 3, '২ জনের ডালা-3', 0, 1600.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(55, 3, '৩ জনের ডালা -1', 0, 2100.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(56, 3, '৩ জনের ডালা -2', 0, 2100.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(57, 3, '৩ জনের ডালা -3', 0, 2100.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(58, 3, '৫ জনের ডালা -1', 0, 2900.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(59, 3, '৫ জনের ডালা -2', 0, 2900.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(60, 3, '৫ জনের ডালা -3', 0, 2900.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(61, 3, '৬ জনের ডালা-1', 0, 3400.00, 99, '2025-10-16 21:00:02', 'pc', 5),
(62, 3, '৬ জনের ডালা-2', 0, 3400.00, 99, '2025-10-16 21:00:02', 'pc', 5),
(63, 3, '৬ জনের ডালা-3', 0, 3400.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(64, 3, '৯ জনের ডালা-1', 0, 5400.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(65, 3, '৯ জনের ডালা-2', 0, 5400.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(66, 3, '৯ জনের ডালা-3', 0, 5400.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(67, 3, '১০ জনের ডালা-1', 0, 5800.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(68, 3, '১০ জনের ডালা-2', 0, 5800.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(69, 3, '১০ জনের ডালা-3', 0, 5800.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(70, 3, '১১ জনের ডালা -1', 0, 6200.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(71, 3, '১১ জনের ডালা -2', 0, 6200.00, 99, '2025-10-16 21:00:02', 'pc', 5),
(72, 3, '১১ জনের ডালা -3', 0, 6200.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(73, 3, '১২ জনের ডালা -1', 0, 6600.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(74, 3, '১২ জনের ডালা -2', 0, 6600.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(75, 3, '১২ জনের ডালা -3', 0, 6600.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(76, 3, '১৩ জনের ডালা-1', 0, 7000.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(77, 3, '১৩ জনের ডালা-2', 0, 7000.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(78, 3, '১৩ জনের ডালা-3', 0, 7000.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(79, 3, '১৪ জনের ডালা -1', 0, 7400.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(80, 3, '১৪ জনের ডালা -2', 0, 7400.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(81, 3, '১৪ জনের ডালা -3', 0, 7400.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(82, 3, '১৫ জনের ডালা -1', 0, 7800.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(83, 3, '১৫ জনের ডালা -2', 0, 7800.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(84, 3, '১৫ জনের ডালা -3', 0, 7800.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(85, 3, '১৬ জনের ডালা-1', 0, 8200.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(86, 3, '১৬ জনের ডালা-2', 0, 8200.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(87, 3, '১৬ জনের ডালা-3', 0, 8200.00, 100, '2025-10-16 21:00:02', 'pc', 5),
(90, 3, 'ডালা সেল,', 0, 700.00, 99, '2025-10-17 19:33:20', 'pc', 5),
(93, 3, 'ডেলিভারি চার্জ tp', 0, 350.00, 94, '2025-10-20 14:46:36', 'pc', 5),
(94, 3, 'ডেলিভারি চার্জ t', 0, 300.00, 99, '2025-10-20 16:05:21', 'pc', 5),
(95, 3, 'ডেলিভারি চার্জ car', 0, 400.00, 97, '2025-10-20 16:10:25', 'pc', 5),
(96, 3, 'ডেলিভারি চার্জ car p', 0, 450.00, 100, '2025-10-20 16:10:25', 'pc', 5),
(97, 3, 'ডেলিভারি চার্জ pac', 0, 500.00, 98, '2025-10-20 16:10:25', 'pc', 5),
(98, 3, 'ডেলিভারি চার্জ pac p', 0, 550.00, 100, '2025-10-20 16:10:25', 'pc', 5),
(99, 3, 'ডেলিভারি চার্জ du', 0, 200.00, 98, '2025-10-20 16:10:25', 'pc', 5),
(100, 3, 'ডেলিভারি চার্জ du p', 0, 250.00, 99, '2025-10-20 16:10:25', 'pc', 5),
(101, 3, 'ডেলিভারি চার্জ ak', 0, 100.00, 98, '2025-10-20 16:10:25', 'pc', 5),
(102, 3, 'ডেলিভারি চার্জ ak p', 0, 150.00, 100, '2025-10-20 16:10:25', 'pc', 5),
(103, 3, 'ডেলিভারি চার্জ যাওয়া-আসা cho', 0, 600.00, 100, '2025-10-20 16:10:25', 'pc', 5),
(104, 3, 'ডেলিভারি চার্জ cho p', 0, 650.00, 100, '2025-10-20 16:10:25', 'pc', 5),
(105, 1, 'cal', 0, 55.00, 64, '2025-10-29 04:40:22', 'kg', 5),
(106, 1, 'begun', 0, 11.00, 10, '2025-10-29 04:41:12', 'kg', 5),
(107, 1, 'পিয়াজ', 0, 33.00, 32, '2025-10-29 04:46:15', 'kg', 5),
(108, 3, 'ভুনা খিচুড়ি', 0, 150.00, 85, '2025-10-29 14:07:03', 'pc', 5),
(109, 3, 'জর্দা- 1/2 Kg', 0, 400.00, 99, '2025-10-29 17:41:38', 'pc', 5);

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
  `role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `logo_path` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whatsapp` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password_hash`, `created_at`, `mobile`, `access`, `trial_start`, `role`, `logo_path`, `whatsapp`, `facebook`) VALUES
(1, 'Redwan Raju', 'redwanraju75@gmail.com', '$2y$10$ILezv451XGjNSGG8pwDG.eUj3xj5Sa5vq2lq0eRUDDAqcWoh1iLJ6', '2025-10-14 19:57:58', '01886438530', 'on', '2025-10-14 19:57:58', 'admin', 'uploads/logos/logo_1760471878.jpg', '01737082431', 'https://web.facebook.com/'),
(2, 'my shop', 'example@gmail.com', '$2y$10$NbO8VqAlL90yBiJbRwVcvOUzx7XFk9jKVS9a6/mQK0DTASC9AN6v2', '2025-10-14 20:24:18', '01737082431', 'on', '2025-10-14 20:24:18', 'user', 'uploads/logos/logo_1760473458.jpg', '01737082431', 'https://web.facebook.com/'),
(3, 'Best Kichen', 'mdarifulislam01866.mai@gmail.com', '$2y$10$HwOdoNMFXKkv8NNYUCyt.uuh5cOFjdztedQdpVtcMYmOGupSCVQ9u', '2025-10-15 09:15:10', '01321660222', 'on', '2025-10-15 09:15:10', 'user', 'uploads/logos/logo_1760519710.png', '01740330444', 'https://www.facebook.com/profile.php?id=100068142874798');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
