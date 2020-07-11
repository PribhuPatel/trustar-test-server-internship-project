-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2020 at 11:03 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trustar`
--
CREATE DATABASE IF NOT EXISTS `trustar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trustar`;

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` int(11) NOT NULL,
  `type` text COLLATE utf8mb4_general_ci NOT NULL,
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `enclave_id` text COLLATE utf8mb4_general_ci NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`id`, `type`, `value`, `enclave_id`, `time_stamp`) VALUES
(1, 'IP', '200.73.128.196', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 12:55:26'),
(2, 'URL', 'mama.cn', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 13:21:22'),
(3, 'URL', 'amazon.co.jp', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 13:29:53'),
(4, 'URL', 'ebay.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 13:39:59'),
(5, 'URL', 'microsoftonline.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 13:51:53'),
(6, 'IP', '203.196.32.61', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 14:06:28'),
(7, 'URL', 'tribunnews.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 14:22:01'),
(8, 'URL', 'twitter.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 14:33:56'),
(9, 'IP', '177.154.224.206', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 14:44:15'),
(10, 'Mobile', '8811123144', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 14:52:51'),
(11, 'Mobile', '6436731257', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 15:09:12'),
(12, 'Mobile', '6647153836', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 15:25:25'),
(13, 'Mobile', '8617264360', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 15:34:41'),
(14, 'URL', 'stackoverflow.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 15:47:43'),
(15, 'IP', '186.56.99.103', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 15:57:23'),
(16, 'URL', 'china.com.cn', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 16:06:46'),
(17, 'Mobile', '6877233743', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 16:18:22'),
(18, 'Mobile', '7712525577', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 16:27:18'),
(19, 'Mobile', '7631278800', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 16:40:08'),
(20, 'Mobile', '6083407863', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 16:54:49'),
(21, 'Mobile', '7671236708', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 17:08:24'),
(22, 'Mobile', '7081485826', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 17:24:17'),
(23, 'URL', 'google.co.in', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 17:35:49'),
(24, 'IP', '189.43.68.168', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 17:50:22'),
(25, 'Mobile', '6804103835', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 18:02:28'),
(26, 'IP', '189.127.106.16', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 18:11:23'),
(27, 'IP', '86.57.177.16', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 18:27:51'),
(28, 'IP', '142.93.147.192', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 18:38:37'),
(29, 'Mobile', '6375810853', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 18:50:19'),
(30, 'IP', '115.42.8.223', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 18:59:08'),
(31, 'Mobile', '7527753174', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 19:14:46'),
(32, 'Mobile', '8723018171', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 19:24:31'),
(33, 'Mobile', '8814723154', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 19:32:51'),
(34, 'IP', '200.89.178.214', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 19:43:06'),
(35, 'URL', 'tianya.cn', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 19:57:00'),
(36, 'URL', 'aliexpress.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 20:08:33'),
(37, 'IP', '138.36.20.43', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 20:25:10'),
(38, 'IP', '200.89.178.229', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 20:34:11'),
(39, 'URL', 'naver.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 20:43:47'),
(40, 'Mobile', '8588201381', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 20:56:31'),
(41, 'Mobile', '7184336608', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 21:08:13'),
(42, 'IP', '200.89.178.231', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 21:19:02'),
(43, 'IP', '186.233.98.173', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 21:30:41'),
(44, 'Mobile', '8475560021', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 21:44:18'),
(45, 'IP', '169.57.157.146', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 21:53:09'),
(46, 'IP', '103.239.255.170', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 22:03:39'),
(47, 'IP', '178.124.194.74', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 22:14:09'),
(48, 'URL', 'panda.tv', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 22:23:29'),
(49, 'Mobile', '7317012316', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 22:39:40'),
(50, 'Mobile', '8137548782', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 22:53:46'),
(51, 'IP', '200.150.86.130', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 23:04:09'),
(52, 'Mobile', '6088588555', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 23:19:50'),
(53, 'IP', '177.92.67.230', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 23:33:01'),
(54, 'Mobile', '6544440111', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 23:43:58'),
(55, 'URL', 'zhanqi.tv', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-27 23:57:03'),
(56, 'IP', '191.37.183.209', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 00:11:55'),
(57, 'Mobile', '7566561776', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 00:20:33'),
(58, 'URL', 'google.com.hk', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 00:28:57'),
(59, 'IP', '200.255.122.170', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 00:43:46'),
(60, 'IP', '92.247.2.26', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 00:57:24'),
(61, 'URL', 'twitch.tv', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 01:08:47'),
(62, 'Mobile', '6665171383', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 01:19:32'),
(63, 'Mobile', '8751107783', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 01:33:09'),
(64, 'IP', '200.89.178.213', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 01:41:48'),
(65, 'IP', '203.19.92.3', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 01:52:52'),
(66, 'URL', 'microsoft.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 02:08:33'),
(67, 'Mobile', '8406850002', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 02:21:24'),
(68, 'Mobile', '8152163210', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 02:30:33'),
(69, 'URL', 'bing.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 02:42:03'),
(70, 'IP', '200.89.178.182', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 02:56:11'),
(71, 'Mobile', '6305538647', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 03:10:10'),
(72, 'URL', 'instagram.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 03:24:17'),
(73, 'Mobile', '8351148345', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 03:34:37'),
(74, 'Mobile', '6628710837', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 03:46:25'),
(75, 'URL', 'yahoo.co.jp', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 04:00:34'),
(76, 'Mobile', '6584864473', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 04:15:43'),
(77, 'URL', 'livejasmin.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 04:32:09'),
(78, 'IP', '201.75.30.250', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 04:46:48'),
(79, 'Mobile', '7587556757', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 04:59:39'),
(80, 'IP', '203.202.245.62', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 05:12:01'),
(81, 'IP', '200.89.178.216', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 05:20:30'),
(82, 'IP', '200.33.152.207', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 05:36:57'),
(83, 'IP', '201.62.56.49', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 05:49:48'),
(84, 'Mobile', '8082566807', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 06:05:42'),
(85, 'Mobile', '7724270123', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 06:14:06'),
(86, 'URL', 'office.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 06:26:39'),
(87, 'Mobile', '8004786388', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 06:42:18'),
(88, 'IP', '181.10.210.99', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 06:58:14'),
(89, 'IP', '189.10.97.147', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 07:11:19'),
(90, 'Mobile', '6212167277', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 07:25:05'),
(91, 'IP', '200.89.178.217', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 07:41:32'),
(92, 'URL', 'csdn.net', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 07:51:49'),
(93, 'IP', '51.79.51.43', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 08:00:56'),
(94, 'Mobile', '6372060212', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 08:13:20'),
(95, 'URL', 'alipay.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 08:24:19'),
(96, 'IP', '103.87.251.146', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 08:36:05'),
(97, 'Mobile', '7627775140', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 08:49:21'),
(98, 'IP', '103.9.134.9', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 09:00:22'),
(99, 'IP', '103.93.233.14', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 09:12:12'),
(100, 'URL', 'blogspot.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 09:25:06'),
(101, 'IP', '203.19.88.59', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 09:39:19'),
(102, 'Mobile', '6110301338', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 09:55:23'),
(103, 'URL', 'bongacams.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 10:11:31'),
(104, 'IP', '132.255.92.34', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 10:19:51'),
(105, 'IP', '200.89.174.64', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 10:32:53'),
(106, 'Mobile', '8558874327', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 10:46:40'),
(107, 'Mobile', '6164104336', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 10:56:35'),
(108, 'Mobile', '7782551255', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 11:11:42'),
(109, 'IP', '138.121.32.133', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 11:20:25'),
(110, 'URL', 'xinhuanet.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 11:32:40'),
(111, 'Mobile', '8764424416', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 11:49:02'),
(112, 'Mobile', '8478032571', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 11:58:29'),
(113, 'IP', '138.197.157.60', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 12:12:03'),
(114, 'URL', 'okezone.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 12:26:03'),
(115, 'IP', '138.197.157.32', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 12:41:12'),
(116, 'URL', 'netflix.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 12:55:15'),
(117, 'Mobile', '8430214828', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 13:06:15'),
(118, 'IP', '193.68.135.123', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 13:19:53'),
(119, 'IP', '24.37.245.42', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 13:36:21'),
(120, 'URL', 'vk.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 13:48:10'),
(121, 'IP', '181.191.4.163', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 13:58:59'),
(122, 'Mobile', '7076754830', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 14:15:13'),
(123, 'IP', '103.221.254.44', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 14:26:52'),
(124, 'URL', 'reddit.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 14:38:51'),
(125, 'IP', '138.197.157.44', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 14:52:28'),
(126, 'URL', 'live.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 15:03:55'),
(127, 'URL', 'pages.tmall.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 15:18:55'),
(128, 'Mobile', '7580135270', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 15:28:54'),
(129, 'IP', '189.43.68.174', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 15:43:36'),
(130, 'URL', 'weibo.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 16:12:20'),
(131, 'IP', '138.197.157.45', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 16:28:35'),
(132, 'IP', '200.152.78.48', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 16:44:27'),
(133, 'IP', '103.58.74.2', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 16:54:04'),
(134, 'URL', 'sina.com.cn', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 17:05:34'),
(135, 'IP', '185.188.218.10', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 17:17:44'),
(136, 'IP', '144.217.85.164', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 17:26:42'),
(137, 'IP', '168.194.122.174', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 17:37:15'),
(138, 'URL', 'amazon.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 17:50:23'),
(139, 'IP', '151.253.165.70', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 17:59:48'),
(140, 'URL', 'wikipedia.org', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 18:13:50'),
(141, 'IP', '80.78.75.59', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 18:30:21'),
(142, 'URL', 'yahoo.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 18:43:09'),
(143, 'URL', 'jd.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 18:57:04'),
(144, 'IP', '138.197.145.103', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 19:07:19'),
(145, 'URL', '360.cn', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 19:21:42'),
(146, 'IP', '147.78.163.38', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 19:30:41'),
(147, 'IP', '130.0.25.46', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 19:39:53'),
(148, 'URL', 'taobao.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 19:53:01'),
(149, 'URL', 'login.tmall.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 20:08:35'),
(150, 'URL', 'sohu.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 20:24:01'),
(151, 'IP', '200.223.86.171', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 20:33:23'),
(152, 'IP', '203.202.245.58', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 20:47:47'),
(153, 'IP', '5.63.165.178', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 21:02:59'),
(154, 'URL', 'qq.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 21:15:58'),
(155, 'URL', 'baidu.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 21:29:24'),
(156, 'URL', 'facebook.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 21:45:25'),
(157, 'IP', '177.92.20.182', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 21:54:34'),
(158, 'IP', '190.186.76.19', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 22:09:56'),
(159, 'IP', '186.219.210.222', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 22:25:15'),
(160, 'IP', '200.89.178.209', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 22:40:13'),
(161, 'IP', '109.75.46.202', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 22:54:05'),
(162, 'IP', '187.45.106.176', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 23:04:38'),
(163, 'URL', 'tmall.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 23:17:54'),
(164, 'IP', '62.201.210.134', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 23:33:56'),
(165, 'URL', 'youtube.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 23:43:24'),
(166, 'IP', '182.53.206.44', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-28 23:52:01'),
(167, 'URL', 'google.com', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-29 00:00:36'),
(168, 'IP', '200.128.62.3', '012858f0-264b-11e8-b467-0ed5f89f718b', '2020-04-29 00:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` text COLLATE utf8mb4_general_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` text COLLATE utf8mb4_general_ci NOT NULL,
  `sector` json NOT NULL,
  `distributionType` text COLLATE utf8mb4_general_ci NOT NULL,
  `timeBegan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reportBody` text COLLATE utf8mb4_general_ci NOT NULL,
  `externalTrackingId` text COLLATE utf8mb4_general_ci NOT NULL,
  `enclaveIds` json NOT NULL,
  `indicators` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `created`, `updated`, `title`, `sector`, `distributionType`, `timeBegan`, `reportBody`, `externalTrackingId`, `enclaveIds`, `indicators`) VALUES
('e5f28231-d0d7-454c-86d6-5eb49daf91d3', '2020-04-27 13:21:43', '2020-04-27 13:21:43', 'Hit by labore', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 13:21:43', 'quis esse reprehenderit magna voluptate sunt officia est quis occaecat', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": \"mama.cn\", \"indicatorType\": \"URL\"}, {\"value\": \"200.73.128.196\", \"indicatorType\": \"IP\"}]'),
('f28f9e44-80ce-4539-a64c-306ab15bcdb4', '2020-04-27 14:00:24', '2020-04-27 14:00:24', 'Hit by officia', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 14:00:24', 'consectetur nisi aliquip mollit laboris ullamco qui laborum nulla mollit', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\", \"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"ebay.com\", \"indicatorType\": \"URL\"}, {\"value\": \"amazon.co.jp\", \"indicatorType\": \"URL\"}, {\"value\": \"microsoftonline.com\", \"indicatorType\": \"URL\"}, {\"value\": \"mama.cn\", \"indicatorType\": \"URL\"}, {\"value\": \"200.73.128.196\", \"indicatorType\": \"IP\"}]'),
('c22a8adf-5259-443d-9341-6421fceb779c', '2020-04-27 14:32:59', '2020-04-27 14:32:59', 'Hit by non', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 14:32:59', 'pariatur officia sunt aliqua labore cillum est id occaecat occaecat', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\", \"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"microsoftonline.com\", \"indicatorType\": \"URL\"}]'),
('8ffb1138-6f26-4d1e-8689-c1b8d014a74a', '2020-04-27 15:06:45', '2020-04-27 15:06:45', 'Hit by dolore', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 15:06:45', 'exercitation occaecat nulla ad laboris culpa exercitation non nostrud est', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\", \"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"microsoftonline.com\", \"indicatorType\": \"URL\"}, {\"value\": \"200.73.128.196\", \"indicatorType\": \"IP\"}, {\"value\": 8811123144, \"indicatorType\": \"Mobile\"}, {\"value\": \"mama.cn\", \"indicatorType\": \"URL\"}]'),
('fe99761c-9e3e-40aa-baac-5dbdc1b87d8b', '2020-04-27 15:45:14', '2020-04-27 15:45:14', 'Hit by nostrud', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 15:45:14', 'irure incididunt sit veniam magna ex esse exercitation ipsum in', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\", \"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"203.196.32.61\", \"indicatorType\": \"IP\"}, {\"value\": 6647153836, \"indicatorType\": \"Mobile\"}, {\"value\": \"ebay.com\", \"indicatorType\": \"URL\"}]'),
('f29cf9e4-7f71-4cb3-a684-6c4cf7e5e716', '2020-04-27 16:17:15', '2020-04-27 16:17:15', 'Hit by labore', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 16:17:15', 'culpa do velit qui proident non Lorem commodo ut et', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": 6647153836, \"indicatorType\": \"Mobile\"}, {\"value\": 8617264360, \"indicatorType\": \"Mobile\"}, {\"value\": \"ebay.com\", \"indicatorType\": \"URL\"}, {\"value\": \"microsoftonline.com\", \"indicatorType\": \"URL\"}]'),
('7ea4125d-6f39-4693-b492-61f2bfaacbf8', '2020-04-27 16:47:50', '2020-04-27 16:47:50', 'Hit by quis', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 16:47:50', 'velit adipisicing voluptate commodo nostrud mollit exercitation in Lorem aliqua', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": \"ebay.com\", \"indicatorType\": \"URL\"}]'),
('3df1271b-6960-441b-8a0c-29a8d0fde602', '2020-04-27 17:27:01', '2020-04-27 17:27:01', 'Hit by velit', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 17:27:01', 'sint nisi adipisicing aliquip incididunt pariatur aliqua non in aliquip', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"203.196.32.61\", \"indicatorType\": \"IP\"}, {\"value\": \"200.73.128.196\", \"indicatorType\": \"IP\"}, {\"value\": 7081485826, \"indicatorType\": \"Mobile\"}, {\"value\": 8811123144, \"indicatorType\": \"Mobile\"}, {\"value\": 6877233743, \"indicatorType\": \"Mobile\"}]'),
('392615c6-b7c5-4059-bc8c-fd0d75467c10', '2020-04-27 17:59:59', '2020-04-27 17:59:59', 'Hit by esse', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 17:59:59', 'fugiat sit ad laboris irure eu magna veniam magna sit', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": 8811123144, \"indicatorType\": \"Mobile\"}, {\"value\": \"203.196.32.61\", \"indicatorType\": \"IP\"}, {\"value\": 6877233743, \"indicatorType\": \"Mobile\"}, {\"value\": \"ebay.com\", \"indicatorType\": \"URL\"}, {\"value\": \"stackoverflow.com\", \"indicatorType\": \"URL\"}]'),
('a16f78fa-2410-4e68-a897-37d3d9936392', '2020-04-27 18:35:02', '2020-04-27 18:35:02', 'Hit by nostrud', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 18:35:02', 'et dolor do incididunt et ipsum aliqua do reprehenderit qui', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\", \"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": 8617264360, \"indicatorType\": \"Mobile\"}, {\"value\": \"ebay.com\", \"indicatorType\": \"URL\"}, {\"value\": 6436731257, \"indicatorType\": \"Mobile\"}, {\"value\": \"tribunnews.com\", \"indicatorType\": \"URL\"}, {\"value\": \"86.57.177.16\", \"indicatorType\": \"IP\"}]'),
('cb28f7a5-69cc-402d-88cf-33f1a49e3551', '2020-04-27 19:09:04', '2020-04-27 19:09:04', 'Hit by ex', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 19:09:04', 'cupidatat sunt incididunt consectetur labore adipisicing occaecat anim eiusmod excepteur', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"189.127.106.16\", \"indicatorType\": \"IP\"}]'),
('c5e3181a-c8cb-4487-b399-083eeaac1e9b', '2020-04-27 19:50:33', '2020-04-27 19:50:33', 'Hit by et', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 19:50:33', 'mollit ipsum laborum minim eu laborum irure exercitation officia id', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": 8814723154, \"indicatorType\": \"Mobile\"}]'),
('c5e4362b-4006-4be2-9062-0848131af359', '2020-04-27 20:28:01', '2020-04-27 20:28:01', 'Hit by sunt', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 20:28:01', 'officia laborum fugiat est irure proident dolor Lorem tempor amet', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\", \"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"mama.cn\", \"indicatorType\": \"URL\"}, {\"value\": \"186.56.99.103\", \"indicatorType\": \"IP\"}, {\"value\": \"twitter.com\", \"indicatorType\": \"URL\"}]'),
('65efa3d9-f001-41ac-8ebb-436b477d0947', '2020-04-27 21:03:01', '2020-04-27 21:03:01', 'Hit by quis', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 21:03:01', 'consequat ad mollit ullamco nulla est ex pariatur velit fugiat', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": \"86.57.177.16\", \"indicatorType\": \"IP\"}]'),
('2c9728c2-71a7-42c9-9bb2-3b36d69e7b97', '2020-04-27 21:44:00', '2020-04-27 21:44:00', 'Hit by ullamco', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 21:44:00', 'qui minim consectetur non amet aliqua qui deserunt aliqua ea', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"microsoftonline.com\", \"indicatorType\": \"URL\"}, {\"value\": 8588201381, \"indicatorType\": \"Mobile\"}, {\"value\": \"189.43.68.168\", \"indicatorType\": \"IP\"}, {\"value\": 7527753174, \"indicatorType\": \"Mobile\"}, {\"value\": \"189.127.106.16\", \"indicatorType\": \"IP\"}]'),
('74d79a2a-7b69-4ce2-a473-12a1e9a8dce9', '2020-04-27 22:22:30', '2020-04-27 22:22:30', 'Hit by occaecat', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 22:22:30', 'officia magna incididunt proident dolor consectetur esse ut labore quis', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": \"stackoverflow.com\", \"indicatorType\": \"URL\"}, {\"value\": \"186.56.99.103\", \"indicatorType\": \"IP\"}, {\"value\": \"189.43.68.168\", \"indicatorType\": \"IP\"}, {\"value\": \"china.com.cn\", \"indicatorType\": \"URL\"}]'),
('3aacc065-554c-4ffc-add2-ecb7722e4dfe', '2020-04-27 23:03:50', '2020-04-27 23:03:50', 'Hit by excepteur', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 23:03:50', 'ea tempor et officia nulla magna nisi non aliqua tempor', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": \"169.57.157.146\", \"indicatorType\": \"IP\"}, {\"value\": \"amazon.co.jp\", \"indicatorType\": \"URL\"}, {\"value\": 8811123144, \"indicatorType\": \"Mobile\"}, {\"value\": \"186.56.99.103\", \"indicatorType\": \"IP\"}, {\"value\": 8617264360, \"indicatorType\": \"Mobile\"}]'),
('aaf8fb6f-43ca-43d2-97c7-bb046237034a', '2020-04-27 23:34:57', '2020-04-27 23:34:57', 'Hit by officia', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-27 23:34:57', 'excepteur consequat cillum esse aute aliqua irure elit culpa eiusmod', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\", \"012858f0-264b-11e8-b467-0ed5f89f718a\"]', '[{\"value\": \"200.89.178.231\", \"indicatorType\": \"IP\"}, {\"value\": \"103.239.255.170\", \"indicatorType\": \"IP\"}, {\"value\": \"200.89.178.229\", \"indicatorType\": \"IP\"}]'),
('34e5476b-ae32-4f19-8971-f4beea2c587b', '2020-04-28 00:01:31', '2020-04-28 00:01:31', 'Hit by amet', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-28 00:01:31', 'mollit enim eu eiusmod velit deserunt elit dolore consectetur mollit', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": \"189.127.106.16\", \"indicatorType\": \"IP\"}, {\"value\": 7081485826, \"indicatorType\": \"Mobile\"}, {\"value\": 8137548782, \"indicatorType\": \"Mobile\"}]'),
('95593a02-f331-422d-b6c0-b6a0c0aff1be', '2020-04-28 00:43:06', '2020-04-28 00:43:06', 'Hit by cupidatat', '{\"id\": 8, \"name\": \"defense\", \"label\": \"Defense Industrial Base\"}', 'ENCLAVE', '2020-04-28 00:43:06', 'ex sunt consectetur officia elit quis ex dolore ex do', 'Malware-192', '[\"012858f0-264b-11e8-b467-0ed5f89f718b\"]', '[{\"value\": \"tianya.cn\", \"indicatorType\": \"URL\"}, {\"value\": \"twitter.com\", \"indicatorType\": \"URL\"}, {\"value\": 7712525577, \"indicatorType\": \"Mobile\"}, {\"value\": \"zhanqi.tv\", \"indicatorType\": \"URL\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` text COLLATE utf8mb4_general_ci NOT NULL,
  `token` text COLLATE utf8mb4_general_ci,
  `time_stamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `time_stamp`) VALUES
(1, 'arjun', 'khunti', '0fd7476dd21833466fcd20ce55068a68', '2020-07-07 02:02:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
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
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
