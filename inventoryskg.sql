-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2018 at 05:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventoryskg`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_do`
--

CREATE TABLE `active_do` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank` varchar(50) NOT NULL,
  `personal_gpv` int(11) NOT NULL,
  `total_group_pv` int(11) NOT NULL,
  `first_gpv_purchased` int(11) NOT NULL,
  `gen_first_purchased` int(11) NOT NULL,
  `generations_gpv` int(11) NOT NULL,
  `do_group_bonus` float NOT NULL,
  `cto_unit_share` int(11) NOT NULL,
  `cto_value_share` float NOT NULL,
  `branch3` int(11) NOT NULL,
  `branch5` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `active_do`
--

INSERT INTO `active_do` (`id`, `user_id`, `rank`, `personal_gpv`, `total_group_pv`, `first_gpv_purchased`, `gen_first_purchased`, `generations_gpv`, `do_group_bonus`, `cto_unit_share`, `cto_value_share`, `branch3`, `branch5`, `created_at`, `updated_at`) VALUES
(1, 1, 'Senior District Officer', 9935, 180260, 4900, 0, 0, 0, 4, 14.88, 0, 0, '2017-07-17', '2018-05-03'),
(2, 5, 'District Officer', 8400, 40180, 8400, 40180, 40180, 2009, 2, 7.44, 0, 0, '2017-07-17', '2018-05-03'),
(3, 9, 'District Officer', 1680, 2730, 0, 0, 2730, 327.6, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(4, 13, 'District Officer', 1765, 38585, 840, 27580, 28505, 1490, 1, 3.72, 0, 0, '2017-07-17', '2018-05-03'),
(5, 16, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(6, 20, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(7, 23, 'District Officer', 140, 140, 0, 0, 140, 16.8, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(8, 27, 'District Officer', 140, 140, 0, 0, 140, 16.8, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(9, 31, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(10, 35, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(11, 56, 'District Officer', 6580, 6580, 6580, 6580, 6580, 329, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(12, 61, 'District Officer', 770, 770, 0, 0, 770, 92.4, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(13, 66, 'District Officer', 6580, 21700, 6580, 16660, 16660, 833, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(14, 85, 'District Officer', 5040, 15120, 5040, 15120, 15120, 756, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(15, 87, 'District Officer', 5040, 10080, 5040, 10080, 10080, 504, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(16, 88, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(17, 89, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(18, 90, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(19, 91, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(20, 92, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(21, 93, 'District Officer', 140, 140, 0, 0, 140, 16.8, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(22, 94, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(23, 95, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-17', '2018-01-18'),
(24, 96, 'District Officer', 8400, 40180, 8400, 40180, 40180, 2009, 2, 7.44, 0, 0, '2017-07-18', '2018-05-03'),
(25, 100, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(26, 101, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(27, 102, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(28, 103, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(29, 104, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(30, 110, 'District Officer', 6580, 6580, 6580, 6580, 6580, 329, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(31, 119, 'District Officer', 1610, 38430, 840, 27580, 28350, 1471.4, 1, 3.72, 0, 0, '2017-07-18', '2018-05-03'),
(32, 123, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(33, 124, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(34, 125, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(35, 132, 'District Officer', 6580, 21700, 6580, 16660, 16660, 833, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(36, 138, 'District Officer', 5040, 15120, 5040, 15120, 15120, 756, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(37, 140, 'District Officer', 5040, 10080, 5040, 10080, 10080, 504, 0, 0, 0, 0, '2017-07-18', '2018-01-18'),
(38, 141, 'District Officer', 5040, 5040, 5040, 5040, 5040, 252, 0, 0, 0, 0, '2017-07-18', '2018-01-18');

-- --------------------------------------------------------

--
-- Table structure for table `active_sdo`
--

CREATE TABLE `active_sdo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank` varchar(50) NOT NULL,
  `personal_gpv` int(11) NOT NULL,
  `first_gpv_purchased` int(11) NOT NULL,
  `gen_first_purchased` int(11) NOT NULL,
  `generations_gpv` int(11) NOT NULL,
  `do_branch3` int(11) NOT NULL,
  `do_branch5` int(11) NOT NULL,
  `sdo_group_bonus` float NOT NULL,
  `sdo_to_sdo_bonus` float NOT NULL,
  `cto_unit_share` int(11) NOT NULL,
  `cto_value_share` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `security_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_referral` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `mobile_no`, `password`, `security_code`, `remember_token`, `total_referral`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@mail.com', '0179650866', '$2y$10$MoMHY11UVIf/3JF4tW.MquWlK0mBrz7cqVx6jBVuE1riGcJ1NUr1W', '$2y$10$MoMHY11UVIf/3JF4tW.MquWlK0mBrz7cqVx6jBVuE1riGcJ1NUr1W', 'DSnTQQtvpyosfNdlnKB5LM4AtysRMFde7R3hwS5oesz6uxnTlCnOG8zPBIIP', 7, '2017-09-06 19:49:15', '2018-03-02 08:11:38'),
(2, 'moharaz@yahoo.com', 'moharaz@yahoo.com', '0179650855', '$2y$10$Bk1Pbcaak2gLXNqiQiu0huu5agFpKfWdInMs1DgBpeH4jmIB/scn2', '$2y$10$Bk1Pbcaak2gLXNqiQiu0huu5agFpKfWdInMs1DgBpeH4jmIB/scn2', NULL, NULL, '2017-09-11 00:13:59', '2017-09-11 00:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `agent_invoices`
--

CREATE TABLE `agent_invoices` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_cost` int(11) NOT NULL,
  `total` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_invoices`
--

INSERT INTO `agent_invoices` (`id`, `agent_id`, `invoice_no`, `user_id`, `delivery_cost`, `total`, `status`, `balance`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 12, 10, 559.02, 'Fully Paid', 0, '2018-04-20', '2018-04-20'),
(2, 0, 5, 12, 10, 559.02, 'Fully Paid', 0, '2018-04-20', '2018-04-20'),
(3, 0, 5, 13, 10, 559.02, 'Fully Paid', 0, '2018-04-25', '2018-04-25'),
(4, 0, 5, 13, 10, 559.02, 'Fully Paid', 0, '2018-04-25', '2018-04-25'),
(5, 0, 5, 13, 10, 0, 'Partially Paid', 0, '2018-04-25', '2018-04-25'),
(6, 0, 5, 15, 10, 559.02, 'Fully Paid', 0, '2018-04-30', '2018-04-30'),
(7, 0, 5, 15, 10, 559.02, 'Fully Paid', 0, '2018-04-30', '2018-04-30'),
(8, 0, 5, 15, 10, 559.02, 'Fully Paid', 0, '2018-04-30', '2018-04-30'),
(9, 0, 5, 15, 10, 559.02, 'Fully Paid', 0, '2018-04-30', '2018-04-30'),
(10, 0, 5, 16, 10, 559.02, 'Partially Paid', 0, '2018-04-30', '2018-04-30'),
(11, 0, 5, 16, 10, 559.02, 'Partially Paid', 0, '2018-04-30', '2018-04-30'),
(12, 0, 5, 17, 10, 532.4, 'Fully Paid', 0, '2018-05-07', '2018-05-07'),
(13, 0, 5, 2, 10, 550.55, 'Fully Paid', 0, '2018-05-07', '2018-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `agent_orders`
--

CREATE TABLE `agent_orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `do_no` int(11) NOT NULL,
  `total_items` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `order_from` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_orders`
--

INSERT INTO `agent_orders` (`id`, `agent_id`, `user_id`, `invoice_id`, `do_no`, `total_items`, `status`, `order_from`, `created_at`, `updated_at`) VALUES
(1, 0, 13, 4, 100000000, 2, 'New Order', '', '2018-04-25', '2018-04-25'),
(2, 0, 13, 5, 100000000, 0, 'Pending', '', '2018-04-25', '2018-04-25'),
(3, 0, 15, 9, 100000001, 2, 'New Order', '', '2018-04-30', '2018-04-30'),
(4, 0, 16, 10, 100000002, 2, 'Pending', '', '2018-04-30', '2018-04-30'),
(5, 0, 16, 11, 100000002, 2, 'Pending', '', '2018-04-30', '2018-04-30'),
(6, 0, 17, 12, 100000002, 2, 'New Order', '', '2018-05-07', '2018-05-07'),
(7, 0, 2, 13, 100000003, 2, 'New Order', '', '2018-05-07', '2018-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `agent_order_items`
--

CREATE TABLE `agent_order_items` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_no` text NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_order_items`
--

INSERT INTO `agent_order_items` (`id`, `agent_id`, `order_id`, `product_id`, `serial_no`, `qty`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, '', 1, '2018-04-25', '2018-04-25'),
(2, 0, 1, 2, '', 1, '2018-04-25', '2018-04-25'),
(3, 0, 5, 1, '', 1, '2018-04-30', '2018-04-30'),
(4, 0, 5, 2, '', 1, '2018-04-30', '2018-04-30'),
(5, 0, 6, 1, '', 1, '2018-05-07', '2018-05-07'),
(6, 0, 6, 6, '', 1, '2018-05-07', '2018-05-07'),
(7, 0, 7, 1, '', 1, '2018-05-07', '2018-05-07'),
(8, 0, 7, 5, '', 1, '2018-05-07', '2018-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `agent_payments`
--

CREATE TABLE `agent_payments` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cash` float NOT NULL,
  `voucher` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `ewallet` int(11) NOT NULL,
  `credit_debit_card` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_payments`
--

INSERT INTO `agent_payments` (`id`, `agent_id`, `invoice_id`, `amount`, `cash`, `voucher`, `coupon`, `ewallet`, `credit_debit_card`, `online`, `payment_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-20', '2018-04-20'),
(2, 0, 3, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-25', '2018-04-25'),
(3, 0, 4, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-25', '2018-04-25'),
(4, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Partially Paid', '2018-04-25', '2018-04-25'),
(5, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-30', '2018-04-30'),
(6, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-30', '2018-04-30'),
(7, 0, 8, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-30', '2018-04-30'),
(8, 0, 9, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-30', '2018-04-30'),
(9, 0, 10, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Partially Paid', '2018-04-30', '2018-04-30'),
(10, 0, 11, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Partially Paid', '2018-04-30', '2018-04-30'),
(11, 0, 12, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-05-07', '2018-05-07'),
(12, 0, 13, 0, 0, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-05-07', '2018-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `agent_sales`
--

CREATE TABLE `agent_sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `total_amount_excl_gst` float NOT NULL,
  `total_gst` float NOT NULL,
  `delivery` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_shipments`
--

CREATE TABLE `agent_shipments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `consignment_note` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `courier_collect_date` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_shipped_items`
--

CREATE TABLE `agent_shipped_items` (
  `id` int(11) NOT NULL,
  `shipment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_no` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `status` varchar(7) NOT NULL,
  `origin_country` varchar(30) NOT NULL DEFAULT '',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `code`, `status`, `origin_country`, `created_at`, `updated_at`) VALUES
(1, 'Maybank Berhad', 'MBB', 'Local', 'Malaysia', '2018-01-26', '2018-01-26'),
(2, 'Maybank Berhad', 'MBB', 'Local', 'Indonesia', '2018-01-29', '2018-01-29'),
(3, 'HSBC', 'HSBC', 'Foreign', 'China', '2018-01-29', '2018-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bonus_type_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `description` text NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bonuses`
--

INSERT INTO `bonuses` (`id`, `user_id`, `bonus_type_id`, `amount`, `description`, `from_user_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 31.5, 'Personal Retail Profit', 7, '2018-01-18 17:23:39', '2018-01-18 17:23:39'),
(2, 11, 1, 31.5, 'Personal Retail Profit', 11, '2018-01-18 17:23:39', '2018-01-18 17:23:39'),
(3, 3, 2, 31.5, 'Override Retail Price', 14, '2018-01-18 17:23:39', '2018-01-18 17:23:39'),
(4, 5, 2, 42, 'Override Retail Price', 18, '2018-01-18 17:23:39', '2018-01-18 17:23:39'),
(5, 5, 4, 14, 'Override PR Downline Purchase user18 Override Bonus: 20%', 18, '2018-01-18 17:23:39', '2018-01-18 17:23:39'),
(6, 5, 2, 126, 'Override Retail Price', 19, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(7, 5, 4, 42, 'Override PR Downline Purchase user19 Override Bonus: 20%', 19, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(8, 21, 1, 31.5, 'Personal Retail Profit', 21, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(9, 9, 2, 42, 'Override Retail Price', 25, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(10, 9, 4, 14, 'Override PR Downline Purchase user25 Override Bonus: 20%', 25, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(11, 26, 1, 31.5, 'Personal Retail Profit', 26, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(12, 9, 2, 94.5, 'Override Retail Price', 26, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(13, 9, 4, 42, 'Override PR Downline Purchase user26 Override Bonus: 20%', 26, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(14, 11, 2, 31.5, 'Override Retail Price', 29, '2018-01-18 17:23:40', '2018-01-18 17:23:40'),
(15, 13, 2, 42, 'Override Retail Price', 33, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(16, 13, 4, 14, 'Override PR Downline Purchase user33 Override Bonus: 20%', 33, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(17, 13, 2, 126, 'Override Retail Price', 34, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(18, 13, 4, 42, 'Override PR Downline Purchase user34 Override Bonus: 20%', 34, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(19, 15, 2, 126, 'Override Retail Price', 36, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(20, 15, 4, 42, 'Override PR Downline Purchase user36 Override Bonus: 20%', 36, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(21, 17, 2, 42, 'Override Retail Price', 37, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(22, 17, 4, 14, 'Override PR Downline Purchase user37 Override Bonus: 20%', 37, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(23, 17, 2, 126, 'Override Retail Price', 38, '2018-01-18 17:23:41', '2018-01-18 17:23:41'),
(24, 17, 4, 42, 'Override PR Downline Purchase user38 Override Bonus: 20%', 38, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(25, 19, 2, 31.5, 'Override Retail Price', 40, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(26, 5, 2, 94.5, 'Override Retail Price', 40, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(27, 5, 4, 42, 'Override PR Downline Purchase user40 Override Bonus: 20%', 40, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(28, 19, 2, 10.5, 'Override Retail Price', 41, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(29, 5, 2, 31.5, 'Override Retail Price', 41, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(30, 5, 4, 14, 'Override PR Downline Purchase user41 Override Bonus: 20%', 41, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(31, 42, 1, 31.5, 'Personal Retail Profit', 42, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(32, 22, 2, 94.5, 'Override Retail Price', 42, '2018-01-18 17:23:42', '2018-01-18 17:23:42'),
(33, 22, 4, 42, 'Override PR Downline Purchase user42 Override Bonus: 20%', 42, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(34, 24, 2, 42, 'Override Retail Price', 43, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(35, 24, 4, 14, 'Override PR Downline Purchase user43 Override Bonus: 20%', 43, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(36, 44, 1, 31.5, 'Personal Retail Profit', 44, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(37, 24, 2, 94.5, 'Override Retail Price', 44, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(38, 24, 4, 42, 'Override PR Downline Purchase user44 Override Bonus: 20%', 44, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(39, 46, 1, 31.5, 'Personal Retail Profit', 46, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(40, 9, 2, 94.5, 'Override Retail Price', 46, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(41, 9, 4, 42, 'Override PR Downline Purchase user46 Override Bonus: 20%', 46, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(42, 26, 2, 10.5, 'Override Retail Price', 47, '2018-01-18 17:23:43', '2018-01-18 17:23:43'),
(43, 9, 2, 31.5, 'Override Retail Price', 47, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(44, 9, 4, 14, 'Override PR Downline Purchase user47 Override Bonus: 20%', 47, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(45, 30, 2, 126, 'Override Retail Price', 48, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(46, 30, 4, 42, 'Override PR Downline Purchase user48 Override Bonus: 20%', 48, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(47, 32, 2, 42, 'Override Retail Price', 49, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(48, 32, 4, 14, 'Override PR Downline Purchase user49 Override Bonus: 20%', 49, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(49, 50, 1, 31.5, 'Personal Retail Profit', 50, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(50, 32, 2, 94.5, 'Override Retail Price', 50, '2018-01-18 17:23:44', '2018-01-18 17:23:44'),
(51, 32, 4, 42, 'Override PR Downline Purchase user50 Override Bonus: 20%', 50, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(52, 34, 2, 31.5, 'Override Retail Price', 52, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(53, 13, 2, 94.5, 'Override Retail Price', 52, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(54, 13, 4, 42, 'Override PR Downline Purchase user52 Override Bonus: 20%', 52, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(55, 36, 2, 31.5, 'Override Retail Price', 53, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(56, 15, 2, 94.5, 'Override Retail Price', 53, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(57, 15, 4, 42, 'Override PR Downline Purchase user53 Override Bonus: 20%', 53, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(58, 38, 2, 31.5, 'Override Retail Price', 54, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(59, 17, 2, 94.5, 'Override Retail Price', 54, '2018-01-18 17:23:45', '2018-01-18 17:23:45'),
(60, 17, 4, 42, 'Override PR Downline Purchase user54 Override Bonus: 20%', 54, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(61, 38, 2, 10.5, 'Override Retail Price', 55, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(62, 17, 2, 31.5, 'Override Retail Price', 55, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(63, 17, 4, 14, 'Override PR Downline Purchase user55 Override Bonus: 20%', 55, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(64, 40, 2, 10.5, 'Override Retail Price', 57, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(65, 5, 2, 31.5, 'Override Retail Price', 57, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(66, 5, 4, 14, 'Override PR Downline Purchase user57 Override Bonus: 20%', 57, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(67, 58, 1, 31.5, 'Personal Retail Profit', 58, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(68, 22, 2, 94.5, 'Override Retail Price', 58, '2018-01-18 17:23:46', '2018-01-18 17:23:46'),
(69, 22, 4, 42, 'Override PR Downline Purchase user58 Override Bonus: 20%', 58, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(70, 59, 1, 31.5, 'Personal Retail Profit', 59, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(71, 24, 2, 94.5, 'Override Retail Price', 59, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(72, 24, 4, 42, 'Override PR Downline Purchase user59 Override Bonus: 20%', 59, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(73, 44, 2, 10.5, 'Override Retail Price', 60, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(74, 24, 2, 31.5, 'Override Retail Price', 60, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(75, 24, 4, 14, 'Override PR Downline Purchase user60 Override Bonus: 20%', 60, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(76, 46, 2, 10.5, 'Override Retail Price', 62, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(77, 9, 2, 31.5, 'Override Retail Price', 62, '2018-01-18 17:23:47', '2018-01-18 17:23:47'),
(78, 9, 4, 14, 'Override PR Downline Purchase user62 Override Bonus: 20%', 62, '2018-01-18 17:23:48', '2018-01-18 17:23:48'),
(79, 48, 2, 31.5, 'Override Retail Price', 63, '2018-01-18 17:23:48', '2018-01-18 17:23:48'),
(80, 30, 2, 94.5, 'Override Retail Price', 63, '2018-01-18 17:23:48', '2018-01-18 17:23:48'),
(81, 30, 4, 42, 'Override PR Downline Purchase user63 Override Bonus: 20%', 63, '2018-01-18 17:23:48', '2018-01-18 17:23:48'),
(82, 50, 2, 31.5, 'Override Retail Price', 64, '2018-01-18 17:23:48', '2018-01-18 17:23:48'),
(83, 32, 2, 94.5, 'Override Retail Price', 64, '2018-01-18 17:23:48', '2018-01-18 17:23:48'),
(84, 32, 4, 42, 'Override PR Downline Purchase user64 Override Bonus: 20%', 64, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(85, 50, 2, 10.5, 'Override Retail Price', 65, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(86, 32, 2, 31.5, 'Override Retail Price', 65, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(87, 32, 4, 14, 'Override PR Downline Purchase user65 Override Bonus: 20%', 65, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(88, 52, 2, 10.5, 'Override Retail Price', 67, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(89, 13, 2, 31.5, 'Override Retail Price', 67, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(90, 13, 4, 14, 'Override PR Downline Purchase user67 Override Bonus: 20%', 67, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(91, 53, 2, 10.5, 'Override Retail Price', 68, '2018-01-18 17:23:49', '2018-01-18 17:23:49'),
(92, 15, 2, 31.5, 'Override Retail Price', 68, '2018-01-18 17:23:50', '2018-01-18 17:23:50'),
(93, 15, 4, 14, 'Override PR Downline Purchase user68 Override Bonus: 20%', 68, '2018-01-18 17:23:50', '2018-01-18 17:23:50'),
(94, 54, 2, 10.5, 'Override Retail Price', 69, '2018-01-18 17:23:50', '2018-01-18 17:23:50'),
(95, 17, 2, 31.5, 'Override Retail Price', 69, '2018-01-18 17:23:51', '2018-01-18 17:23:51'),
(96, 17, 4, 14, 'Override PR Downline Purchase user69 Override Bonus: 20%', 69, '2018-01-18 17:23:51', '2018-01-18 17:23:51'),
(97, 56, 2, 126, 'Override Retail Price', 71, '2018-01-18 17:23:51', '2018-01-18 17:23:51'),
(98, 56, 4, 42, 'Override PR Downline Purchase user71 Override Bonus: 20%', 71, '2018-01-18 17:23:51', '2018-01-18 17:23:51'),
(99, 58, 2, 10.5, 'Override Retail Price', 72, '2018-01-18 17:23:51', '2018-01-18 17:23:51'),
(100, 22, 2, 31.5, 'Override Retail Price', 72, '2018-01-18 17:23:51', '2018-01-18 17:23:51'),
(101, 22, 4, 14, 'Override PR Downline Purchase user72 Override Bonus: 20%', 72, '2018-01-18 17:23:51', '2018-01-18 17:23:51'),
(102, 59, 2, 10.5, 'Override Retail Price', 73, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(103, 24, 2, 31.5, 'Override Retail Price', 73, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(104, 24, 4, 14, 'Override PR Downline Purchase user73 Override Bonus: 20%', 73, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(105, 75, 1, 31.5, 'Personal Retail Profit', 75, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(106, 61, 2, 94.5, 'Override Retail Price', 75, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(107, 61, 4, 42, 'Override PR Downline Purchase user75 Override Bonus: 20%', 75, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(108, 63, 2, 10.5, 'Override Retail Price', 76, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(109, 30, 2, 31.5, 'Override Retail Price', 76, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(110, 30, 4, 14, 'Override PR Downline Purchase user76 Override Bonus: 20%', 76, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(111, 64, 2, 10.5, 'Override Retail Price', 77, '2018-01-18 17:23:52', '2018-01-18 17:23:52'),
(112, 32, 2, 31.5, 'Override Retail Price', 77, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(113, 32, 4, 14, 'Override PR Downline Purchase user77 Override Bonus: 20%', 77, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(114, 66, 2, 126, 'Override Retail Price', 79, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(115, 66, 4, 42, 'Override PR Downline Purchase user79 Override Bonus: 20%', 79, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(116, 70, 2, 126, 'Override Retail Price', 80, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(117, 70, 4, 42, 'Override PR Downline Purchase user80 Override Bonus: 20%', 80, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(118, 71, 2, 10.5, 'Override Retail Price', 81, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(119, 56, 2, 31.5, 'Override Retail Price', 81, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(120, 56, 4, 14, 'Override PR Downline Purchase user81 Override Bonus: 20%', 81, '2018-01-18 17:23:53', '2018-01-18 17:23:53'),
(121, 82, 1, 31.5, 'Personal Retail Profit', 82, '2018-01-18 17:23:54', '2018-01-18 17:23:54'),
(122, 74, 2, 94.5, 'Override Retail Price', 82, '2018-01-18 17:23:54', '2018-01-18 17:23:54'),
(123, 74, 4, 42, 'Override PR Downline Purchase user82 Override Bonus: 20%', 82, '2018-01-18 17:23:54', '2018-01-18 17:23:54'),
(124, 75, 2, 10.5, 'Override Retail Price', 83, '2018-01-18 17:23:54', '2018-01-18 17:23:54'),
(125, 61, 2, 31.5, 'Override Retail Price', 83, '2018-01-18 17:23:54', '2018-01-18 17:23:54'),
(126, 61, 4, 14, 'Override PR Downline Purchase user83 Override Bonus: 20%', 83, '2018-01-18 17:23:55', '2018-01-18 17:23:55'),
(127, 78, 2, 126, 'Override Retail Price', 84, '2018-01-18 17:23:55', '2018-01-18 17:23:55'),
(128, 78, 4, 42, 'Override PR Downline Purchase user84 Override Bonus: 20%', 84, '2018-01-18 17:23:55', '2018-01-18 17:23:55'),
(129, 79, 2, 10.5, 'Override Retail Price', 86, '2018-01-18 17:23:55', '2018-01-18 17:23:55'),
(130, 66, 2, 31.5, 'Override Retail Price', 86, '2018-01-18 17:23:55', '2018-01-18 17:23:55'),
(131, 66, 4, 14, 'Override PR Downline Purchase user86 Override Bonus: 20%', 86, '2018-01-18 17:23:55', '2018-01-18 17:23:55'),
(132, 96, 2, 42, 'Override Retail Price', 98, '2018-01-18 17:23:55', '2018-01-18 17:23:55'),
(133, 96, 4, 14, 'Override PR Downline Purchase user98 Override Bonus: 20%', 98, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(134, 96, 2, 126, 'Override Retail Price', 99, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(135, 96, 4, 42, 'Override PR Downline Purchase user99 Override Bonus: 20%', 99, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(136, 97, 2, 42, 'Override Retail Price', 105, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(137, 97, 4, 14, 'Override PR Downline Purchase user105 Override Bonus: 20%', 105, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(138, 97, 2, 126, 'Override Retail Price', 106, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(139, 97, 4, 42, 'Override PR Downline Purchase user106 Override Bonus: 20%', 106, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(140, 106, 2, 31.5, 'Override Retail Price', 108, '2018-01-18 17:23:56', '2018-01-18 17:23:56'),
(141, 97, 2, 94.5, 'Override Retail Price', 108, '2018-01-18 17:23:57', '2018-01-18 17:23:57'),
(142, 97, 4, 42, 'Override PR Downline Purchase user108 Override Bonus: 20%', 108, '2018-01-18 17:23:57', '2018-01-18 17:23:57'),
(143, 106, 2, 10.5, 'Override Retail Price', 109, '2018-01-18 17:23:57', '2018-01-18 17:23:57'),
(144, 97, 2, 31.5, 'Override Retail Price', 109, '2018-01-18 17:23:57', '2018-01-18 17:23:57'),
(145, 97, 4, 14, 'Override PR Downline Purchase user109 Override Bonus: 20%', 109, '2018-01-18 17:23:57', '2018-01-18 17:23:57'),
(146, 108, 2, 10.5, 'Override Retail Price', 111, '2018-01-18 17:23:57', '2018-01-18 17:23:57'),
(147, 97, 2, 31.5, 'Override Retail Price', 111, '2018-01-18 17:23:57', '2018-01-18 17:23:57'),
(148, 97, 4, 14, 'Override PR Downline Purchase user111 Override Bonus: 20%', 111, '2018-01-18 17:23:58', '2018-01-18 17:23:58'),
(149, 110, 2, 126, 'Override Retail Price', 113, '2018-01-18 17:23:58', '2018-01-18 17:23:58'),
(150, 110, 4, 42, 'Override PR Downline Purchase user113 Override Bonus: 20%', 113, '2018-01-18 17:23:58', '2018-01-18 17:23:58'),
(151, 112, 2, 126, 'Override Retail Price', 114, '2018-01-18 17:23:58', '2018-01-18 17:23:58'),
(152, 112, 4, 42, 'Override PR Downline Purchase user114 Override Bonus: 20%', 114, '2018-01-18 17:23:58', '2018-01-18 17:23:58'),
(153, 113, 2, 10.5, 'Override Retail Price', 115, '2018-01-18 17:23:58', '2018-01-18 17:23:58'),
(154, 110, 2, 31.5, 'Override Retail Price', 115, '2018-01-18 17:23:59', '2018-01-18 17:23:59'),
(155, 110, 4, 14, 'Override PR Downline Purchase user115 Override Bonus: 20%', 115, '2018-01-18 17:23:59', '2018-01-18 17:23:59'),
(156, 99, 2, 31.5, 'Override Retail Price', 116, '2018-01-18 17:23:59', '2018-01-18 17:23:59'),
(157, 96, 2, 94.5, 'Override Retail Price', 116, '2018-01-18 17:23:59', '2018-01-18 17:23:59'),
(158, 96, 4, 42, 'Override PR Downline Purchase user116 Override Bonus: 20%', 116, '2018-01-18 17:23:59', '2018-01-18 17:23:59'),
(159, 99, 2, 10.5, 'Override Retail Price', 117, '2018-01-18 17:23:59', '2018-01-18 17:23:59'),
(160, 96, 2, 31.5, 'Override Retail Price', 117, '2018-01-18 17:23:59', '2018-01-18 17:23:59'),
(161, 96, 4, 14, 'Override PR Downline Purchase user117 Override Bonus: 20%', 117, '2018-01-18 17:24:00', '2018-01-18 17:24:00'),
(162, 116, 2, 10.5, 'Override Retail Price', 118, '2018-01-18 17:24:00', '2018-01-18 17:24:00'),
(163, 96, 2, 31.5, 'Override Retail Price', 118, '2018-01-18 17:24:00', '2018-01-18 17:24:00'),
(164, 96, 4, 14, 'Override PR Downline Purchase user118 Override Bonus: 20%', 118, '2018-01-18 17:24:00', '2018-01-18 17:24:00'),
(165, 119, 2, 42, 'Override Retail Price', 121, '2018-01-18 17:24:00', '2018-01-18 17:24:00'),
(166, 119, 4, 14, 'Override PR Downline Purchase user121 Override Bonus: 20%', 121, '2018-01-18 17:24:01', '2018-01-18 17:24:01'),
(167, 119, 2, 126, 'Override Retail Price', 122, '2018-01-18 17:24:01', '2018-01-18 17:24:01'),
(168, 119, 4, 42, 'Override PR Downline Purchase user122 Override Bonus: 20%', 122, '2018-01-18 17:24:01', '2018-01-18 17:24:01'),
(169, 120, 2, 42, 'Override Retail Price', 126, '2018-01-18 17:24:01', '2018-01-18 17:24:01'),
(170, 120, 4, 14, 'Override PR Downline Purchase user126 Override Bonus: 20%', 126, '2018-01-18 17:24:01', '2018-01-18 17:24:01'),
(171, 127, 1, 31.5, 'Personal Retail Profit', 127, '2018-01-18 17:24:01', '2018-01-18 17:24:01'),
(172, 120, 2, 94.5, 'Override Retail Price', 127, '2018-01-18 17:24:02', '2018-01-18 17:24:02'),
(173, 120, 4, 42, 'Override PR Downline Purchase user127 Override Bonus: 20%', 127, '2018-01-18 17:24:02', '2018-01-18 17:24:02'),
(174, 122, 2, 31.5, 'Override Retail Price', 129, '2018-01-18 17:24:02', '2018-01-18 17:24:02'),
(175, 119, 2, 94.5, 'Override Retail Price', 129, '2018-01-18 17:24:02', '2018-01-18 17:24:02'),
(176, 119, 4, 42, 'Override PR Downline Purchase user129 Override Bonus: 20%', 129, '2018-01-18 17:24:02', '2018-01-18 17:24:02'),
(177, 127, 2, 31.5, 'Override Retail Price', 130, '2018-01-18 17:24:02', '2018-01-18 17:24:02'),
(178, 120, 2, 94.5, 'Override Retail Price', 130, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(179, 120, 4, 42, 'Override PR Downline Purchase user130 Override Bonus: 20%', 130, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(180, 127, 2, 10.5, 'Override Retail Price', 131, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(181, 120, 2, 31.5, 'Override Retail Price', 131, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(182, 120, 4, 14, 'Override PR Downline Purchase user131 Override Bonus: 20%', 131, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(183, 129, 2, 10.5, 'Override Retail Price', 133, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(184, 119, 2, 31.5, 'Override Retail Price', 133, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(185, 119, 4, 14, 'Override PR Downline Purchase user133 Override Bonus: 20%', 133, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(186, 130, 2, 10.5, 'Override Retail Price', 134, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(187, 120, 2, 31.5, 'Override Retail Price', 134, '2018-01-18 17:24:03', '2018-01-18 17:24:03'),
(188, 120, 4, 14, 'Override PR Downline Purchase user134 Override Bonus: 20%', 134, '2018-01-18 17:24:04', '2018-01-18 17:24:04'),
(189, 132, 2, 126, 'Override Retail Price', 136, '2018-01-18 17:24:04', '2018-01-18 17:24:04'),
(190, 132, 4, 42, 'Override PR Downline Purchase user136 Override Bonus: 20%', 136, '2018-01-18 17:24:04', '2018-01-18 17:24:04'),
(191, 135, 2, 126, 'Override Retail Price', 137, '2018-01-18 17:24:04', '2018-01-18 17:24:04'),
(192, 135, 4, 42, 'Override PR Downline Purchase user137 Override Bonus: 20%', 137, '2018-01-18 17:24:04', '2018-01-18 17:24:04'),
(193, 136, 2, 10.5, 'Override Retail Price', 139, '2018-01-18 17:24:04', '2018-01-18 17:24:04'),
(194, 132, 2, 31.5, 'Override Retail Price', 139, '2018-01-18 17:24:04', '2018-01-18 17:24:04'),
(195, 132, 4, 14, 'Override PR Downline Purchase user139 Override Bonus: 20%', 139, '2018-01-18 17:24:05', '2018-01-18 17:24:05'),
(196, 4, 1, 630, 'Personal Retail Profit', 4, '2018-01-18 17:24:05', '2018-01-18 17:24:05'),
(197, 4, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 4, '2018-01-18 17:24:05', '2018-01-18 17:24:05'),
(198, 5, 1, 3024, 'Personal Retail Profit', 5, '2018-01-18 17:24:05', '2018-01-18 17:24:05'),
(199, 5, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 5, '2018-01-18 17:24:05', '2018-01-18 17:24:05'),
(200, 8, 1, 84, 'Personal Retail Profit', 8, '2018-01-18 17:24:05', '2018-01-18 17:24:05'),
(201, 8, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 8, '2018-01-18 17:24:05', '2018-01-18 17:24:05'),
(202, 9, 1, 84, 'Personal Retail Profit', 9, '2018-01-18 17:24:06', '2018-01-18 17:24:06'),
(203, 9, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 9, '2018-01-18 17:24:06', '2018-01-18 17:24:06'),
(204, 12, 1, 84, 'Personal Retail Profit', 12, '2018-01-18 17:24:06', '2018-01-18 17:24:06'),
(205, 12, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 12, '2018-01-18 17:24:06', '2018-01-18 17:24:06'),
(206, 13, 1, 84, 'Personal Retail Profit', 13, '2018-01-18 17:24:06', '2018-01-18 17:24:06'),
(207, 13, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 13, '2018-01-18 17:24:06', '2018-01-18 17:24:06'),
(208, 15, 1, 630, 'Personal Retail Profit', 15, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(209, 15, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 15, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(210, 16, 1, 3024, 'Personal Retail Profit', 16, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(211, 16, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 16, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(212, 17, 1, 630, 'Personal Retail Profit', 17, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(213, 17, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 17, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(214, 20, 1, 3024, 'Personal Retail Profit', 20, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(215, 20, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 20, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(216, 22, 1, 84, 'Personal Retail Profit', 22, '2018-01-18 17:24:07', '2018-01-18 17:24:07'),
(217, 22, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 22, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(218, 23, 1, 84, 'Personal Retail Profit', 23, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(219, 23, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 23, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(220, 24, 1, 84, 'Personal Retail Profit', 24, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(221, 24, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 24, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(222, 27, 1, 84, 'Personal Retail Profit', 27, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(223, 27, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 27, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(224, 30, 1, 630, 'Personal Retail Profit', 30, '2018-01-18 17:24:08', '2018-01-18 17:24:08'),
(225, 30, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 30, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(226, 31, 1, 3024, 'Personal Retail Profit', 31, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(227, 31, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 31, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(228, 32, 1, 84, 'Personal Retail Profit', 32, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(229, 32, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 32, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(230, 35, 1, 3024, 'Personal Retail Profit', 35, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(231, 35, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 35, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(232, 39, 1, 630, 'Personal Retail Profit', 39, '2018-01-18 17:24:09', '2018-01-18 17:24:09'),
(233, 39, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 39, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(234, 45, 1, 84, 'Personal Retail Profit', 45, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(235, 45, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 45, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(236, 51, 1, 84, 'Personal Retail Profit', 51, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(237, 51, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 51, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(238, 56, 1, 3024, 'Personal Retail Profit', 56, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(239, 56, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 56, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(240, 61, 1, 84, 'Personal Retail Profit', 61, '2018-01-18 17:24:10', '2018-01-18 17:24:10'),
(241, 61, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 61, '2018-01-18 17:24:11', '2018-01-18 17:24:11'),
(242, 66, 1, 3024, 'Personal Retail Profit', 66, '2018-01-18 17:24:11', '2018-01-18 17:24:11'),
(243, 66, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 66, '2018-01-18 17:24:11', '2018-01-18 17:24:11'),
(244, 70, 1, 630, 'Personal Retail Profit', 70, '2018-01-18 17:24:11', '2018-01-18 17:24:11'),
(245, 70, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 70, '2018-01-18 17:24:11', '2018-01-18 17:24:11'),
(246, 74, 1, 84, 'Personal Retail Profit', 74, '2018-01-18 17:24:12', '2018-01-18 17:24:12'),
(247, 74, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 74, '2018-01-18 17:24:12', '2018-01-18 17:24:12'),
(248, 78, 1, 630, 'Personal Retail Profit', 78, '2018-01-18 17:24:12', '2018-01-18 17:24:12'),
(249, 78, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 78, '2018-01-18 17:24:12', '2018-01-18 17:24:12'),
(250, 85, 1, 3024, 'Personal Retail Profit', 85, '2018-01-18 17:24:13', '2018-01-18 17:24:13'),
(251, 85, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 85, '2018-01-18 17:24:13', '2018-01-18 17:24:13'),
(252, 87, 1, 3024, 'Personal Retail Profit', 87, '2018-01-18 17:24:13', '2018-01-18 17:24:13'),
(253, 87, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 87, '2018-01-18 17:24:13', '2018-01-18 17:24:13'),
(254, 88, 1, 3024, 'Personal Retail Profit', 88, '2018-01-18 17:24:13', '2018-01-18 17:24:13'),
(255, 88, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 88, '2018-01-18 17:24:14', '2018-01-18 17:24:14'),
(256, 89, 1, 3024, 'Personal Retail Profit', 89, '2018-01-18 17:24:14', '2018-01-18 17:24:14'),
(257, 89, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 89, '2018-01-18 17:24:14', '2018-01-18 17:24:14'),
(258, 90, 1, 3024, 'Personal Retail Profit', 90, '2018-01-18 17:24:14', '2018-01-18 17:24:14'),
(259, 90, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 90, '2018-01-18 17:24:14', '2018-01-18 17:24:14'),
(260, 91, 1, 3024, 'Personal Retail Profit', 91, '2018-01-18 17:24:14', '2018-01-18 17:24:14'),
(261, 91, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 91, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(262, 92, 1, 3024, 'Personal Retail Profit', 92, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(263, 92, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 92, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(264, 93, 1, 84, 'Personal Retail Profit', 93, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(265, 93, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 93, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(266, 94, 1, 3024, 'Personal Retail Profit', 94, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(267, 94, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 94, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(268, 95, 1, 3024, 'Personal Retail Profit', 95, '2018-01-18 17:24:15', '2018-01-18 17:24:15'),
(269, 95, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 95, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(270, 96, 1, 3024, 'Personal Retail Profit', 96, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(271, 96, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 96, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(272, 97, 1, 630, 'Personal Retail Profit', 97, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(273, 97, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 97, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(274, 100, 1, 3024, 'Personal Retail Profit', 100, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(275, 100, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 100, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(276, 101, 1, 3024, 'Personal Retail Profit', 101, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(277, 101, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 101, '2018-01-18 17:24:16', '2018-01-18 17:24:16'),
(278, 102, 1, 3024, 'Personal Retail Profit', 102, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(279, 102, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 102, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(280, 103, 1, 3024, 'Personal Retail Profit', 103, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(281, 103, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 103, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(282, 104, 1, 3024, 'Personal Retail Profit', 104, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(283, 104, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 104, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(284, 107, 1, 630, 'Personal Retail Profit', 107, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(285, 107, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 107, '2018-01-18 17:24:17', '2018-01-18 17:24:17'),
(286, 110, 1, 3024, 'Personal Retail Profit', 110, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(287, 110, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 110, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(288, 112, 1, 630, 'Personal Retail Profit', 112, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(289, 112, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 112, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(290, 119, 1, 84, 'Personal Retail Profit', 119, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(291, 119, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 119, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(292, 120, 1, 84, 'Personal Retail Profit', 120, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(293, 120, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 120, '2018-01-18 17:24:18', '2018-01-18 17:24:18'),
(294, 123, 1, 3024, 'Personal Retail Profit', 123, '2018-01-18 17:24:19', '2018-01-18 17:24:19'),
(295, 123, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 123, '2018-01-18 17:24:19', '2018-01-18 17:24:19'),
(296, 124, 1, 3024, 'Personal Retail Profit', 124, '2018-01-18 17:24:19', '2018-01-18 17:24:19'),
(297, 124, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 124, '2018-01-18 17:24:19', '2018-01-18 17:24:19'),
(298, 125, 1, 3024, 'Personal Retail Profit', 125, '2018-01-18 17:24:19', '2018-01-18 17:24:19'),
(299, 125, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 125, '2018-01-18 17:24:19', '2018-01-18 17:24:19'),
(300, 128, 1, 84, 'Personal Retail Profit', 128, '2018-01-18 17:24:19', '2018-01-18 17:24:19'),
(301, 128, 3, 28, 'Personal Rebate Purchase For Product: Femalov Bonus: 28%', 128, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(302, 132, 1, 3024, 'Personal Retail Profit', 132, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(303, 132, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 132, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(304, 135, 1, 630, 'Personal Retail Profit', 135, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(305, 135, 3, 210, 'Personal Rebate Purchase For Product: Femalov Bonus: 210%', 135, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(306, 138, 1, 3024, 'Personal Retail Profit', 138, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(307, 138, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 138, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(308, 140, 1, 3024, 'Personal Retail Profit', 140, '2018-01-18 17:24:20', '2018-01-18 17:24:20'),
(309, 140, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 140, '2018-01-18 17:24:21', '2018-01-18 17:24:21'),
(310, 141, 1, 3024, 'Personal Retail Profit', 141, '2018-01-18 17:24:21', '2018-01-18 17:24:21'),
(311, 141, 3, 1008, 'Personal Rebate Purchase For Product: Femalov Bonus: 1008%', 141, '2018-01-18 17:24:21', '2018-01-18 17:24:21'),
(312, 1, 7, 252, 'Do Group Bonus Gen 2', 16, '2018-01-18 17:24:24', '2018-01-18 17:24:24'),
(313, 1, 7, 252, 'Do Group Bonus Gen 3', 125, '2018-01-18 17:24:24', '2018-01-18 17:24:26'),
(314, 5, 7, 252, 'Do Group Bonus Gen 2', 92, '2018-01-18 17:24:26', '2018-01-18 17:24:27'),
(315, 9, 7, 7, 'Do Group Bonus Gen 2', 93, '2018-01-18 17:24:27', '2018-01-18 17:24:27'),
(316, 13, 7, 252, 'Do Group Bonus Gen 2', 95, '2018-01-18 17:24:27', '2018-01-18 17:24:28'),
(317, 66, 7, 252, 'Do Group Bonus Gen 3', 87, '2018-01-18 17:24:29', '2018-01-18 17:24:29'),
(318, 85, 7, 252, 'Do Group Bonus Gen 3', 88, '2018-01-18 17:24:29', '2018-01-18 17:24:29'),
(319, 87, 7, 252, 'Do Group Bonus Gen 2', 88, '2018-01-18 17:24:29', '2018-01-18 17:24:29'),
(320, 96, 7, 252, 'Do Group Bonus Gen 2', 104, '2018-01-18 17:24:30', '2018-01-18 17:24:31'),
(321, 119, 7, 252, 'Do Group Bonus Gen 2', 125, '2018-01-18 17:24:32', '2018-01-18 17:24:32'),
(322, 132, 7, 252, 'Do Group Bonus Gen 3', 140, '2018-01-18 17:24:33', '2018-01-18 17:24:33'),
(323, 138, 7, 252, 'Do Group Bonus Gen 3', 141, '2018-01-18 17:24:33', '2018-01-18 17:24:33'),
(324, 140, 7, 252, 'Do Group Bonus Gen 2', 141, '2018-01-18 17:24:33', '2018-01-18 17:24:33'),
(325, 4, 5, 525, 'Direct Sponsor', 15, '2018-01-18 17:24:34', '2018-01-18 17:24:34'),
(326, 4, 5, 1512, 'Direct Sponsor', 16, '2018-01-18 17:24:35', '2018-01-18 17:24:35'),
(327, 15, 5, 105, 'Direct Sponsor', 36, '2018-01-18 17:24:35', '2018-01-18 17:24:35'),
(328, 15, 6, 105, 'Indirect Sponsor', 53, '2018-01-18 17:24:35', '2018-01-18 17:24:35'),
(329, 15, 6, 35, 'Indirect Sponsor', 68, '2018-01-18 17:24:35', '2018-01-18 17:24:35'),
(330, 5, 5, 525, 'Direct Sponsor', 17, '2018-01-18 17:24:35', '2018-01-18 17:24:35'),
(331, 5, 5, 35, 'Direct Sponsor', 18, '2018-01-18 17:24:35', '2018-01-18 17:24:35'),
(332, 5, 5, 105, 'Direct Sponsor', 19, '2018-01-18 17:24:36', '2018-01-18 17:24:36'),
(333, 5, 5, 2520, 'Direct Sponsor', 20, '2018-01-18 17:24:36', '2018-01-18 17:24:36'),
(334, 17, 5, 35, 'Direct Sponsor', 37, '2018-01-18 17:24:36', '2018-01-18 17:24:36'),
(335, 17, 5, 105, 'Direct Sponsor', 38, '2018-01-18 17:24:36', '2018-01-18 17:24:36'),
(336, 17, 5, 525, 'Direct Sponsor', 39, '2018-01-18 17:24:36', '2018-01-18 17:24:36'),
(337, 5, 6, 105, 'Indirect Sponsor', 40, '2018-01-18 17:24:36', '2018-01-18 17:24:36'),
(338, 5, 6, 35, 'Indirect Sponsor', 41, '2018-01-18 17:24:36', '2018-01-18 17:24:36'),
(339, 17, 6, 105, 'Indirect Sponsor', 54, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(340, 17, 6, 35, 'Indirect Sponsor', 55, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(341, 39, 5, 1512, 'Direct Sponsor', 56, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(342, 5, 6, 1008, 'Indirect Sponsor', 56, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(343, 5, 6, 35, 'Indirect Sponsor', 57, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(344, 17, 6, 35, 'Indirect Sponsor', 69, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(345, 56, 5, 525, 'Direct Sponsor', 70, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(346, 56, 5, 105, 'Direct Sponsor', 71, '2018-01-18 17:24:37', '2018-01-18 17:24:37'),
(347, 70, 5, 105, 'Direct Sponsor', 80, '2018-01-18 17:24:38', '2018-01-18 17:24:38'),
(348, 56, 6, 35, 'Indirect Sponsor', 81, '2018-01-18 17:24:38', '2018-01-18 17:24:38'),
(349, 8, 5, 28, 'Direct Sponsor', 22, '2018-01-18 17:24:38', '2018-01-18 17:24:38'),
(350, 8, 5, 14, 'Direct Sponsor', 23, '2018-01-18 17:24:38', '2018-01-18 17:24:38'),
(351, 22, 5, 42, 'Direct Sponsor', 42, '2018-01-18 17:24:38', '2018-01-18 17:24:38'),
(352, 22, 6, 42, 'Indirect Sponsor', 58, '2018-01-18 17:24:38', '2018-01-18 17:24:38'),
(353, 22, 6, 14, 'Indirect Sponsor', 72, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(354, 9, 5, 28, 'Direct Sponsor', 24, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(355, 9, 5, 14, 'Direct Sponsor', 25, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(356, 9, 5, 42, 'Direct Sponsor', 26, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(357, 9, 5, 28, 'Direct Sponsor', 27, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(358, 9, 5, 28, 'Direct Sponsor', 93, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(359, 5, 5, 2520, 'Direct Sponsor', 89, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(360, 5, 5, 2520, 'Direct Sponsor', 90, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(361, 5, 5, 2520, 'Direct Sponsor', 91, '2018-01-18 17:24:39', '2018-01-18 17:24:39'),
(362, 5, 5, 2520, 'Direct Sponsor', 92, '2018-01-18 17:24:40', '2018-01-18 17:24:40'),
(363, 12, 5, 525, 'Direct Sponsor', 30, '2018-01-18 17:24:40', '2018-01-18 17:24:40'),
(364, 12, 5, 1512, 'Direct Sponsor', 31, '2018-01-18 17:24:40', '2018-01-18 17:24:40'),
(365, 30, 5, 105, 'Direct Sponsor', 48, '2018-01-18 17:24:40', '2018-01-18 17:24:40'),
(366, 30, 6, 105, 'Indirect Sponsor', 63, '2018-01-18 17:24:40', '2018-01-18 17:24:40'),
(367, 30, 6, 35, 'Indirect Sponsor', 76, '2018-01-18 17:24:40', '2018-01-18 17:24:40'),
(368, 13, 5, 28, 'Direct Sponsor', 32, '2018-01-18 17:24:40', '2018-01-18 17:24:40'),
(369, 13, 5, 35, 'Direct Sponsor', 33, '2018-01-18 17:24:41', '2018-01-18 17:24:41'),
(370, 13, 5, 105, 'Direct Sponsor', 34, '2018-01-18 17:24:41', '2018-01-18 17:24:41'),
(371, 13, 5, 2520, 'Direct Sponsor', 35, '2018-01-18 17:24:41', '2018-01-18 17:24:41'),
(372, 13, 5, 2520, 'Direct Sponsor', 94, '2018-01-18 17:24:41', '2018-01-18 17:24:41'),
(373, 13, 5, 2520, 'Direct Sponsor', 95, '2018-01-18 17:24:41', '2018-01-18 17:24:41'),
(374, 32, 5, 14, 'Direct Sponsor', 49, '2018-01-18 17:24:41', '2018-01-18 17:24:41'),
(375, 32, 5, 42, 'Direct Sponsor', 50, '2018-01-18 17:24:41', '2018-01-18 17:24:41'),
(376, 32, 5, 28, 'Direct Sponsor', 51, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(377, 13, 6, 105, 'Indirect Sponsor', 52, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(378, 32, 6, 105, 'Indirect Sponsor', 64, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(379, 32, 6, 14, 'Indirect Sponsor', 65, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(380, 51, 5, 1512, 'Direct Sponsor', 66, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(381, 13, 6, 1008, 'Indirect Sponsor', 66, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(382, 13, 6, 35, 'Indirect Sponsor', 67, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(383, 32, 6, 35, 'Indirect Sponsor', 77, '2018-01-18 17:24:42', '2018-01-18 17:24:42'),
(384, 66, 5, 525, 'Direct Sponsor', 78, '2018-01-18 17:24:43', '2018-01-18 17:24:43'),
(385, 66, 5, 105, 'Direct Sponsor', 79, '2018-01-18 17:24:43', '2018-01-18 17:24:43'),
(386, 78, 5, 105, 'Direct Sponsor', 84, '2018-01-18 17:24:43', '2018-01-18 17:24:43'),
(387, 78, 5, 1512, 'Direct Sponsor', 85, '2018-01-18 17:24:43', '2018-01-18 17:24:43'),
(388, 66, 6, 1008, 'Indirect Sponsor', 85, '2018-01-18 17:24:43', '2018-01-18 17:24:43'),
(389, 66, 6, 35, 'Indirect Sponsor', 86, '2018-01-18 17:24:43', '2018-01-18 17:24:43'),
(390, 85, 5, 2520, 'Direct Sponsor', 87, '2018-01-18 17:24:43', '2018-01-18 17:24:43'),
(391, 87, 5, 2520, 'Direct Sponsor', 88, '2018-01-18 17:24:44', '2018-01-18 17:24:44'),
(392, 96, 5, 525, 'Direct Sponsor', 97, '2018-01-18 17:24:44', '2018-01-18 17:24:44'),
(393, 96, 5, 35, 'Direct Sponsor', 98, '2018-01-18 17:24:44', '2018-01-18 17:24:44'),
(394, 96, 5, 105, 'Direct Sponsor', 99, '2018-01-18 17:24:44', '2018-01-18 17:24:44'),
(395, 96, 5, 2520, 'Direct Sponsor', 100, '2018-01-18 17:24:44', '2018-01-18 17:24:44'),
(396, 96, 5, 2520, 'Direct Sponsor', 101, '2018-01-18 17:24:44', '2018-01-18 17:24:44'),
(397, 96, 5, 2520, 'Direct Sponsor', 102, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(398, 96, 5, 2520, 'Direct Sponsor', 103, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(399, 96, 5, 2520, 'Direct Sponsor', 104, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(400, 97, 5, 35, 'Direct Sponsor', 105, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(401, 97, 5, 105, 'Direct Sponsor', 106, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(402, 97, 5, 525, 'Direct Sponsor', 107, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(403, 97, 6, 105, 'Indirect Sponsor', 108, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(404, 97, 6, 35, 'Indirect Sponsor', 109, '2018-01-18 17:24:45', '2018-01-18 17:24:45'),
(405, 107, 5, 1512, 'Direct Sponsor', 110, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(406, 96, 6, 1008, 'Indirect Sponsor', 110, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(407, 97, 6, 35, 'Indirect Sponsor', 111, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(408, 110, 5, 525, 'Direct Sponsor', 112, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(409, 110, 5, 105, 'Direct Sponsor', 113, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(410, 112, 5, 105, 'Direct Sponsor', 114, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(411, 110, 6, 35, 'Indirect Sponsor', 115, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(412, 96, 6, 105, 'Indirect Sponsor', 116, '2018-01-18 17:24:46', '2018-01-18 17:24:46'),
(413, 96, 6, 35, 'Indirect Sponsor', 117, '2018-01-18 17:24:47', '2018-01-18 17:24:47'),
(414, 96, 6, 35, 'Indirect Sponsor', 118, '2018-01-18 17:24:47', '2018-01-18 17:24:47'),
(415, 119, 5, 28, 'Direct Sponsor', 120, '2018-01-18 17:24:47', '2018-01-18 17:24:47'),
(416, 119, 5, 35, 'Direct Sponsor', 121, '2018-01-18 17:24:47', '2018-01-18 17:24:47'),
(417, 119, 5, 105, 'Direct Sponsor', 122, '2018-01-18 17:24:48', '2018-01-18 17:24:48'),
(418, 119, 5, 2520, 'Direct Sponsor', 123, '2018-01-18 17:24:48', '2018-01-18 17:24:48'),
(419, 119, 5, 2520, 'Direct Sponsor', 124, '2018-01-18 17:24:48', '2018-01-18 17:24:48'),
(420, 119, 5, 2520, 'Direct Sponsor', 125, '2018-01-18 17:24:48', '2018-01-18 17:24:48'),
(421, 120, 5, 14, 'Direct Sponsor', 126, '2018-01-18 17:24:48', '2018-01-18 17:24:48'),
(422, 120, 5, 42, 'Direct Sponsor', 127, '2018-01-18 17:24:49', '2018-01-18 17:24:49'),
(423, 120, 5, 28, 'Direct Sponsor', 128, '2018-01-18 17:24:49', '2018-01-18 17:24:49'),
(424, 119, 6, 105, 'Indirect Sponsor', 129, '2018-01-18 17:24:49', '2018-01-18 17:24:49'),
(425, 120, 6, 105, 'Indirect Sponsor', 130, '2018-01-18 17:24:49', '2018-01-18 17:24:49'),
(426, 120, 6, 14, 'Indirect Sponsor', 131, '2018-01-18 17:24:49', '2018-01-18 17:24:49'),
(427, 128, 5, 1512, 'Direct Sponsor', 132, '2018-01-18 17:24:50', '2018-01-18 17:24:50'),
(428, 119, 6, 1008, 'Indirect Sponsor', 132, '2018-01-18 17:24:50', '2018-01-18 17:24:50'),
(429, 119, 6, 35, 'Indirect Sponsor', 133, '2018-01-18 17:24:50', '2018-01-18 17:24:50'),
(430, 120, 6, 35, 'Indirect Sponsor', 134, '2018-01-18 17:24:50', '2018-01-18 17:24:50'),
(431, 132, 5, 525, 'Direct Sponsor', 135, '2018-01-18 17:24:51', '2018-01-18 17:24:51'),
(432, 132, 5, 105, 'Direct Sponsor', 136, '2018-01-18 17:24:51', '2018-01-18 17:24:51'),
(433, 135, 5, 105, 'Direct Sponsor', 137, '2018-01-18 17:24:52', '2018-01-18 17:24:52'),
(434, 135, 5, 1512, 'Direct Sponsor', 138, '2018-01-18 17:24:52', '2018-01-18 17:24:52'),
(435, 132, 6, 1008, 'Indirect Sponsor', 138, '2018-01-18 17:24:52', '2018-01-18 17:24:52'),
(436, 132, 6, 35, 'Indirect Sponsor', 139, '2018-01-18 17:24:52', '2018-01-18 17:24:52'),
(437, 138, 5, 2520, 'Direct Sponsor', 140, '2018-01-18 17:24:52', '2018-01-18 17:24:52'),
(438, 140, 5, 2520, 'Direct Sponsor', 141, '2018-01-18 17:24:53', '2018-01-18 17:24:53'),
(439, 24, 5, 14, 'Direct Sponsor', 43, '2018-01-18 17:24:53', '2018-01-18 17:24:53'),
(440, 24, 5, 42, 'Direct Sponsor', 44, '2018-01-18 17:24:53', '2018-01-18 17:24:53'),
(441, 24, 5, 28, 'Direct Sponsor', 45, '2018-01-18 17:24:53', '2018-01-18 17:24:53'),
(442, 9, 6, 42, 'Indirect Sponsor', 46, '2018-01-18 17:24:54', '2018-01-18 17:24:54'),
(443, 9, 6, 14, 'Indirect Sponsor', 47, '2018-01-18 17:24:54', '2018-01-18 17:24:54'),
(444, 24, 6, 42, 'Indirect Sponsor', 59, '2018-01-18 17:24:54', '2018-01-18 17:24:54'),
(445, 24, 6, 14, 'Indirect Sponsor', 60, '2018-01-18 17:24:55', '2018-01-18 17:24:55'),
(446, 45, 5, 14, 'Direct Sponsor', 61, '2018-01-18 17:24:55', '2018-01-18 17:24:55'),
(447, 9, 6, 14, 'Indirect Sponsor', 61, '2018-01-18 17:24:56', '2018-01-18 17:24:56'),
(448, 9, 6, 14, 'Indirect Sponsor', 62, '2018-01-18 17:24:56', '2018-01-18 17:24:56'),
(449, 24, 6, 14, 'Indirect Sponsor', 73, '2018-01-18 17:24:56', '2018-01-18 17:24:56'),
(450, 61, 5, 28, 'Direct Sponsor', 74, '2018-01-18 17:24:56', '2018-01-18 17:24:56'),
(451, 61, 5, 42, 'Direct Sponsor', 75, '2018-01-18 17:24:56', '2018-01-18 17:24:56'),
(452, 74, 5, 42, 'Direct Sponsor', 82, '2018-01-18 17:24:57', '2018-01-18 17:24:57'),
(453, 61, 6, 14, 'Indirect Sponsor', 83, '2018-01-18 17:24:57', '2018-01-18 17:24:57'),
(454, 2, 1, 63, 'Personal Retail Profit', 2, '2018-02-05 16:52:19', '2018-02-05 16:52:19'),
(455, 6, 1, 184, 'Personal Retail Profit', 6, '2018-02-05 16:52:19', '2018-02-05 16:52:19'),
(456, 10, 1, 999, 'Personal Retail Profit', 10, '2018-02-05 16:52:19', '2018-02-05 16:52:19'),
(457, 10, 3, 320, 'Personal Rebate Purchase For Product: Fixes Combo Bonus: 320%', 10, '2018-02-05 16:52:19', '2018-02-05 16:52:19'),
(458, 1, 7, 252, 'Do Group Bonus Gen 2', 16, '2018-02-05 16:52:20', '2018-02-05 16:52:20'),
(459, 1, 7, 252, 'Do Group Bonus Gen 3', 125, '2018-02-05 16:52:20', '2018-02-05 16:52:21'),
(460, 5, 7, 252, 'Do Group Bonus Gen 2', 92, '2018-02-05 16:52:21', '2018-02-05 16:52:22'),
(461, 9, 7, 7, 'Do Group Bonus Gen 2', 93, '2018-02-05 16:52:22', '2018-02-05 16:52:22'),
(462, 13, 7, 252, 'Do Group Bonus Gen 2', 95, '2018-02-05 16:52:22', '2018-02-05 16:52:22'),
(463, 66, 7, 252, 'Do Group Bonus Gen 3', 87, '2018-02-05 16:52:22', '2018-02-05 16:52:23'),
(464, 85, 7, 252, 'Do Group Bonus Gen 3', 88, '2018-02-05 16:52:23', '2018-02-05 16:52:23'),
(465, 87, 7, 252, 'Do Group Bonus Gen 2', 88, '2018-02-05 16:52:23', '2018-02-05 16:52:23'),
(466, 96, 7, 252, 'Do Group Bonus Gen 2', 104, '2018-02-05 16:52:23', '2018-02-05 16:52:23'),
(467, 119, 7, 252, 'Do Group Bonus Gen 2', 125, '2018-02-05 16:52:23', '2018-02-05 16:52:23'),
(468, 132, 7, 252, 'Do Group Bonus Gen 3', 140, '2018-02-05 16:52:23', '2018-02-05 16:52:23'),
(469, 138, 7, 252, 'Do Group Bonus Gen 3', 141, '2018-02-05 16:52:23', '2018-02-05 16:52:24'),
(470, 140, 7, 252, 'Do Group Bonus Gen 2', 141, '2018-02-05 16:52:24', '2018-02-05 16:52:24'),
(471, 4, 5, 525, 'Direct Sponsor', 15, '2018-02-05 16:52:24', '2018-02-05 16:52:24'),
(472, 4, 5, 1512, 'Direct Sponsor', 16, '2018-02-05 16:52:24', '2018-02-05 16:52:24'),
(473, 15, 5, 105, 'Direct Sponsor', 36, '2018-02-05 16:52:24', '2018-02-05 16:52:24'),
(474, 15, 6, 105, 'Indirect Sponsor', 53, '2018-02-05 16:52:24', '2018-02-05 16:52:24'),
(475, 15, 6, 35, 'Indirect Sponsor', 68, '2018-02-05 16:52:24', '2018-02-05 16:52:24'),
(476, 5, 5, 525, 'Direct Sponsor', 17, '2018-02-05 16:52:24', '2018-02-05 16:52:24'),
(477, 5, 5, 35, 'Direct Sponsor', 18, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(478, 5, 5, 105, 'Direct Sponsor', 19, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(479, 5, 5, 2520, 'Direct Sponsor', 20, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(480, 17, 5, 35, 'Direct Sponsor', 37, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(481, 17, 5, 105, 'Direct Sponsor', 38, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(482, 17, 5, 525, 'Direct Sponsor', 39, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(483, 5, 6, 105, 'Indirect Sponsor', 40, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(484, 5, 6, 35, 'Indirect Sponsor', 41, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(485, 17, 6, 105, 'Indirect Sponsor', 54, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(486, 17, 6, 35, 'Indirect Sponsor', 55, '2018-02-05 16:52:25', '2018-02-05 16:52:25'),
(487, 39, 5, 1512, 'Direct Sponsor', 56, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(488, 5, 6, 1008, 'Indirect Sponsor', 56, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(489, 5, 6, 35, 'Indirect Sponsor', 57, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(490, 17, 6, 35, 'Indirect Sponsor', 69, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(491, 56, 5, 525, 'Direct Sponsor', 70, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(492, 56, 5, 105, 'Direct Sponsor', 71, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(493, 70, 5, 105, 'Direct Sponsor', 80, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(494, 56, 6, 35, 'Indirect Sponsor', 81, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(495, 8, 5, 28, 'Direct Sponsor', 22, '2018-02-05 16:52:26', '2018-02-05 16:52:26'),
(496, 8, 5, 14, 'Direct Sponsor', 23, '2018-02-05 16:52:27', '2018-02-05 16:52:27'),
(497, 22, 5, 42, 'Direct Sponsor', 42, '2018-02-05 16:52:27', '2018-02-05 16:52:27'),
(498, 22, 6, 42, 'Indirect Sponsor', 58, '2018-02-05 16:52:27', '2018-02-05 16:52:27'),
(499, 22, 6, 14, 'Indirect Sponsor', 72, '2018-02-05 16:52:27', '2018-02-05 16:52:27'),
(500, 9, 5, 28, 'Direct Sponsor', 24, '2018-02-05 16:52:27', '2018-02-05 16:52:27');
INSERT INTO `bonuses` (`id`, `user_id`, `bonus_type_id`, `amount`, `description`, `from_user_id`, `created_at`, `updated_at`) VALUES
(501, 9, 5, 14, 'Direct Sponsor', 25, '2018-02-05 16:52:27', '2018-02-05 16:52:27'),
(502, 9, 5, 42, 'Direct Sponsor', 26, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(503, 9, 5, 28, 'Direct Sponsor', 27, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(504, 9, 5, 28, 'Direct Sponsor', 93, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(505, 5, 5, 2520, 'Direct Sponsor', 89, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(506, 5, 5, 2520, 'Direct Sponsor', 90, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(507, 5, 5, 2520, 'Direct Sponsor', 91, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(508, 5, 5, 2520, 'Direct Sponsor', 92, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(509, 10, 5, 35, 'Direct Sponsor', 28, '2018-02-05 16:52:28', '2018-02-05 16:52:28'),
(510, 12, 5, 525, 'Direct Sponsor', 30, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(511, 12, 5, 1512, 'Direct Sponsor', 31, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(512, 30, 5, 105, 'Direct Sponsor', 48, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(513, 30, 6, 105, 'Indirect Sponsor', 63, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(514, 30, 6, 35, 'Indirect Sponsor', 76, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(515, 13, 5, 28, 'Direct Sponsor', 32, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(516, 13, 5, 35, 'Direct Sponsor', 33, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(517, 13, 5, 105, 'Direct Sponsor', 34, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(518, 13, 5, 2520, 'Direct Sponsor', 35, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(519, 13, 5, 2520, 'Direct Sponsor', 94, '2018-02-05 16:52:29', '2018-02-05 16:52:29'),
(520, 13, 5, 2520, 'Direct Sponsor', 95, '2018-02-05 16:52:30', '2018-02-05 16:52:30'),
(521, 32, 5, 14, 'Direct Sponsor', 49, '2018-02-05 16:52:30', '2018-02-05 16:52:30'),
(522, 32, 5, 42, 'Direct Sponsor', 50, '2018-02-05 16:52:30', '2018-02-05 16:52:30'),
(523, 32, 5, 28, 'Direct Sponsor', 51, '2018-02-05 16:52:30', '2018-02-05 16:52:30'),
(524, 13, 6, 105, 'Indirect Sponsor', 52, '2018-02-05 16:52:30', '2018-02-05 16:52:30'),
(525, 32, 6, 105, 'Indirect Sponsor', 64, '2018-02-05 16:52:30', '2018-02-05 16:52:30'),
(526, 32, 6, 14, 'Indirect Sponsor', 65, '2018-02-05 16:52:32', '2018-02-05 16:52:32'),
(527, 51, 5, 1512, 'Direct Sponsor', 66, '2018-02-05 16:52:33', '2018-02-05 16:52:33'),
(528, 13, 6, 1008, 'Indirect Sponsor', 66, '2018-02-05 16:52:33', '2018-02-05 16:52:33'),
(529, 13, 6, 35, 'Indirect Sponsor', 67, '2018-02-05 16:52:33', '2018-02-05 16:52:33'),
(530, 32, 6, 35, 'Indirect Sponsor', 77, '2018-02-05 16:52:33', '2018-02-05 16:52:33'),
(531, 66, 5, 525, 'Direct Sponsor', 78, '2018-02-05 16:52:33', '2018-02-05 16:52:33'),
(532, 66, 5, 105, 'Direct Sponsor', 79, '2018-02-05 16:52:33', '2018-02-05 16:52:33'),
(533, 78, 5, 105, 'Direct Sponsor', 84, '2018-02-05 16:52:33', '2018-02-05 16:52:33'),
(534, 78, 5, 1512, 'Direct Sponsor', 85, '2018-02-05 16:52:34', '2018-02-05 16:52:34'),
(535, 66, 6, 1008, 'Indirect Sponsor', 85, '2018-02-05 16:52:34', '2018-02-05 16:52:34'),
(536, 66, 6, 35, 'Indirect Sponsor', 86, '2018-02-05 16:52:34', '2018-02-05 16:52:34'),
(537, 85, 5, 2520, 'Direct Sponsor', 87, '2018-02-05 16:52:34', '2018-02-05 16:52:34'),
(538, 87, 5, 2520, 'Direct Sponsor', 88, '2018-02-05 16:52:34', '2018-02-05 16:52:34'),
(539, 96, 5, 525, 'Direct Sponsor', 97, '2018-02-05 16:52:34', '2018-02-05 16:52:34'),
(540, 96, 5, 35, 'Direct Sponsor', 98, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(541, 96, 5, 105, 'Direct Sponsor', 99, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(542, 96, 5, 2520, 'Direct Sponsor', 100, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(543, 96, 5, 2520, 'Direct Sponsor', 101, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(544, 96, 5, 2520, 'Direct Sponsor', 102, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(545, 96, 5, 2520, 'Direct Sponsor', 103, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(546, 96, 5, 2520, 'Direct Sponsor', 104, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(547, 97, 5, 35, 'Direct Sponsor', 105, '2018-02-05 16:52:35', '2018-02-05 16:52:35'),
(548, 97, 5, 105, 'Direct Sponsor', 106, '2018-02-05 16:52:36', '2018-02-05 16:52:36'),
(549, 97, 5, 525, 'Direct Sponsor', 107, '2018-02-05 16:52:36', '2018-02-05 16:52:36'),
(550, 97, 6, 105, 'Indirect Sponsor', 108, '2018-02-05 16:52:36', '2018-02-05 16:52:36'),
(551, 97, 6, 35, 'Indirect Sponsor', 109, '2018-02-05 16:52:36', '2018-02-05 16:52:36'),
(552, 107, 5, 1512, 'Direct Sponsor', 110, '2018-02-05 16:52:36', '2018-02-05 16:52:36'),
(553, 96, 6, 1008, 'Indirect Sponsor', 110, '2018-02-05 16:52:37', '2018-02-05 16:52:37'),
(554, 97, 6, 35, 'Indirect Sponsor', 111, '2018-02-05 16:52:37', '2018-02-05 16:52:37'),
(555, 110, 5, 525, 'Direct Sponsor', 112, '2018-02-05 16:52:37', '2018-02-05 16:52:37'),
(556, 110, 5, 105, 'Direct Sponsor', 113, '2018-02-05 16:52:37', '2018-02-05 16:52:37'),
(557, 112, 5, 105, 'Direct Sponsor', 114, '2018-02-05 16:52:38', '2018-02-05 16:52:38'),
(558, 110, 6, 35, 'Indirect Sponsor', 115, '2018-02-05 16:52:38', '2018-02-05 16:52:38'),
(559, 96, 6, 105, 'Indirect Sponsor', 116, '2018-02-05 16:52:38', '2018-02-05 16:52:38'),
(560, 96, 6, 35, 'Indirect Sponsor', 117, '2018-02-05 16:52:38', '2018-02-05 16:52:38'),
(561, 96, 6, 35, 'Indirect Sponsor', 118, '2018-02-05 16:52:38', '2018-02-05 16:52:38'),
(562, 119, 5, 28, 'Direct Sponsor', 120, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(563, 119, 5, 35, 'Direct Sponsor', 121, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(564, 119, 5, 105, 'Direct Sponsor', 122, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(565, 119, 5, 2520, 'Direct Sponsor', 123, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(566, 119, 5, 2520, 'Direct Sponsor', 124, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(567, 119, 5, 2520, 'Direct Sponsor', 125, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(568, 120, 5, 14, 'Direct Sponsor', 126, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(569, 120, 5, 42, 'Direct Sponsor', 127, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(570, 120, 5, 28, 'Direct Sponsor', 128, '2018-02-05 16:52:39', '2018-02-05 16:52:39'),
(571, 119, 6, 105, 'Indirect Sponsor', 129, '2018-02-05 16:52:40', '2018-02-05 16:52:40'),
(572, 120, 6, 105, 'Indirect Sponsor', 130, '2018-02-05 16:52:40', '2018-02-05 16:52:40'),
(573, 120, 6, 14, 'Indirect Sponsor', 131, '2018-02-05 16:52:40', '2018-02-05 16:52:40'),
(574, 128, 5, 1512, 'Direct Sponsor', 132, '2018-02-05 16:52:40', '2018-02-05 16:52:40'),
(575, 119, 6, 1008, 'Indirect Sponsor', 132, '2018-02-05 16:52:40', '2018-02-05 16:52:40'),
(576, 119, 6, 35, 'Indirect Sponsor', 133, '2018-02-05 16:52:40', '2018-02-05 16:52:40'),
(577, 120, 6, 35, 'Indirect Sponsor', 134, '2018-02-05 16:52:41', '2018-02-05 16:52:41'),
(578, 132, 5, 525, 'Direct Sponsor', 135, '2018-02-05 16:52:41', '2018-02-05 16:52:41'),
(579, 132, 5, 105, 'Direct Sponsor', 136, '2018-02-05 16:52:41', '2018-02-05 16:52:41'),
(580, 135, 5, 105, 'Direct Sponsor', 137, '2018-02-05 16:52:42', '2018-02-05 16:52:42'),
(581, 135, 5, 1512, 'Direct Sponsor', 138, '2018-02-05 16:52:42', '2018-02-05 16:52:42'),
(582, 132, 6, 1008, 'Indirect Sponsor', 138, '2018-02-05 16:52:42', '2018-02-05 16:52:42'),
(583, 132, 6, 35, 'Indirect Sponsor', 139, '2018-02-05 16:52:42', '2018-02-05 16:52:42'),
(584, 138, 5, 2520, 'Direct Sponsor', 140, '2018-02-05 16:52:43', '2018-02-05 16:52:43'),
(585, 140, 5, 2520, 'Direct Sponsor', 141, '2018-02-05 16:52:43', '2018-02-05 16:52:43'),
(586, 24, 5, 14, 'Direct Sponsor', 43, '2018-02-05 16:52:43', '2018-02-05 16:52:43'),
(587, 24, 5, 42, 'Direct Sponsor', 44, '2018-02-05 16:52:43', '2018-02-05 16:52:43'),
(588, 24, 5, 28, 'Direct Sponsor', 45, '2018-02-05 16:52:44', '2018-02-05 16:52:44'),
(589, 9, 6, 42, 'Indirect Sponsor', 46, '2018-02-05 16:52:44', '2018-02-05 16:52:44'),
(590, 9, 6, 14, 'Indirect Sponsor', 47, '2018-02-05 16:52:44', '2018-02-05 16:52:44'),
(591, 24, 6, 42, 'Indirect Sponsor', 59, '2018-02-05 16:52:44', '2018-02-05 16:52:44'),
(592, 24, 6, 14, 'Indirect Sponsor', 60, '2018-02-05 16:52:45', '2018-02-05 16:52:45'),
(593, 45, 5, 14, 'Direct Sponsor', 61, '2018-02-05 16:52:45', '2018-02-05 16:52:45'),
(594, 9, 6, 14, 'Indirect Sponsor', 61, '2018-02-05 16:52:45', '2018-02-05 16:52:45'),
(595, 9, 6, 14, 'Indirect Sponsor', 62, '2018-02-05 16:52:45', '2018-02-05 16:52:45'),
(596, 24, 6, 14, 'Indirect Sponsor', 73, '2018-02-05 16:52:45', '2018-02-05 16:52:45'),
(597, 61, 5, 28, 'Direct Sponsor', 74, '2018-02-05 16:52:45', '2018-02-05 16:52:45'),
(598, 61, 5, 42, 'Direct Sponsor', 75, '2018-02-05 16:52:45', '2018-02-05 16:52:45'),
(599, 74, 5, 42, 'Direct Sponsor', 82, '2018-02-05 16:52:46', '2018-02-05 16:52:46'),
(600, 61, 6, 14, 'Indirect Sponsor', 83, '2018-02-05 16:52:46', '2018-02-05 16:52:46'),
(601, 11, 1, 10.5, 'Personal Retail Profit', 11, '2018-05-03 13:40:31', '2018-05-03 13:40:31'),
(602, 11, 1, 12.6, 'Personal Retail Profit', 11, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(603, 13, 1, 42, 'Personal Retail Profit', 13, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(604, 13, 3, 14, 'Personal Rebate Purchase For Product: Femalov Bonus: 14%', 13, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(605, 13, 1, 50.4, 'Personal Retail Profit', 13, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(606, 13, 3, 17, 'Personal Rebate Purchase For Product: Right Solution Bonus: 17%', 13, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(607, 16, 1, 42, 'Personal Retail Profit', 16, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(608, 16, 3, 14, 'Personal Rebate Purchase For Product: Femalov Bonus: 14%', 16, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(609, 16, 1, 50.4, 'Personal Retail Profit', 16, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(610, 16, 3, 17, 'Personal Rebate Purchase For Product: Right Solution Bonus: 17%', 16, '2018-05-03 13:40:32', '2018-05-03 13:40:32'),
(611, 1, 7, 252, 'Do Group Bonus Gen 2', 16, '2018-05-03 13:40:33', '2018-05-03 13:40:33'),
(612, 1, 7, 252, 'Do Group Bonus Gen 3', 125, '2018-05-03 13:40:33', '2018-05-03 13:40:34'),
(613, 5, 7, 252, 'Do Group Bonus Gen 2', 92, '2018-05-03 13:40:34', '2018-05-03 13:40:34'),
(614, 9, 7, 7, 'Do Group Bonus Gen 2', 93, '2018-05-03 13:40:35', '2018-05-03 13:40:35'),
(615, 13, 7, 252, 'Do Group Bonus Gen 2', 95, '2018-05-03 13:40:35', '2018-05-03 13:40:35'),
(616, 66, 7, 252, 'Do Group Bonus Gen 3', 87, '2018-05-03 13:40:35', '2018-05-03 13:40:35'),
(617, 85, 7, 252, 'Do Group Bonus Gen 3', 88, '2018-05-03 13:40:35', '2018-05-03 13:40:35'),
(618, 87, 7, 252, 'Do Group Bonus Gen 2', 88, '2018-05-03 13:40:36', '2018-05-03 13:40:36'),
(619, 96, 7, 252, 'Do Group Bonus Gen 2', 104, '2018-05-03 13:40:36', '2018-05-03 13:40:36'),
(620, 119, 7, 252, 'Do Group Bonus Gen 2', 125, '2018-05-03 13:40:36', '2018-05-03 13:40:36'),
(621, 132, 7, 252, 'Do Group Bonus Gen 3', 140, '2018-05-03 13:40:36', '2018-05-03 13:40:36'),
(622, 138, 7, 252, 'Do Group Bonus Gen 3', 141, '2018-05-03 13:40:36', '2018-05-03 13:40:37'),
(623, 140, 7, 252, 'Do Group Bonus Gen 2', 141, '2018-05-03 13:40:37', '2018-05-03 13:40:37'),
(624, 4, 5, 525, 'Direct Sponsor', 15, '2018-05-03 13:40:37', '2018-05-03 13:40:37'),
(625, 4, 5, 1512, 'Direct Sponsor', 16, '2018-05-03 13:40:37', '2018-05-03 13:40:37'),
(626, 15, 5, 105, 'Direct Sponsor', 36, '2018-05-03 13:40:37', '2018-05-03 13:40:37'),
(627, 15, 6, 105, 'Indirect Sponsor', 53, '2018-05-03 13:40:37', '2018-05-03 13:40:37'),
(628, 15, 6, 35, 'Indirect Sponsor', 68, '2018-05-03 13:40:37', '2018-05-03 13:40:37'),
(629, 5, 5, 525, 'Direct Sponsor', 17, '2018-05-03 13:40:37', '2018-05-03 13:40:37'),
(630, 5, 5, 35, 'Direct Sponsor', 18, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(631, 5, 5, 105, 'Direct Sponsor', 19, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(632, 5, 5, 2520, 'Direct Sponsor', 20, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(633, 17, 5, 35, 'Direct Sponsor', 37, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(634, 17, 5, 105, 'Direct Sponsor', 38, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(635, 17, 5, 525, 'Direct Sponsor', 39, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(636, 5, 6, 105, 'Indirect Sponsor', 40, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(637, 5, 6, 35, 'Indirect Sponsor', 41, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(638, 17, 6, 105, 'Indirect Sponsor', 54, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(639, 17, 6, 35, 'Indirect Sponsor', 55, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(640, 39, 5, 1512, 'Direct Sponsor', 56, '2018-05-03 13:40:38', '2018-05-03 13:40:38'),
(641, 5, 6, 1008, 'Indirect Sponsor', 56, '2018-05-03 13:40:39', '2018-05-03 13:40:39'),
(642, 5, 6, 35, 'Indirect Sponsor', 57, '2018-05-03 13:40:39', '2018-05-03 13:40:39'),
(643, 17, 6, 35, 'Indirect Sponsor', 69, '2018-05-03 13:40:39', '2018-05-03 13:40:39'),
(644, 56, 5, 525, 'Direct Sponsor', 70, '2018-05-03 13:40:39', '2018-05-03 13:40:39'),
(645, 56, 5, 105, 'Direct Sponsor', 71, '2018-05-03 13:40:39', '2018-05-03 13:40:39'),
(646, 70, 5, 105, 'Direct Sponsor', 80, '2018-05-03 13:40:39', '2018-05-03 13:40:39'),
(647, 56, 6, 35, 'Indirect Sponsor', 81, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(648, 8, 5, 28, 'Direct Sponsor', 22, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(649, 8, 5, 14, 'Direct Sponsor', 23, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(650, 22, 5, 42, 'Direct Sponsor', 42, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(651, 22, 6, 42, 'Indirect Sponsor', 58, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(652, 22, 6, 14, 'Indirect Sponsor', 72, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(653, 9, 5, 28, 'Direct Sponsor', 24, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(654, 9, 5, 14, 'Direct Sponsor', 25, '2018-05-03 13:40:40', '2018-05-03 13:40:40'),
(655, 9, 5, 42, 'Direct Sponsor', 26, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(656, 9, 5, 28, 'Direct Sponsor', 27, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(657, 9, 5, 28, 'Direct Sponsor', 93, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(658, 5, 5, 2520, 'Direct Sponsor', 89, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(659, 5, 5, 2520, 'Direct Sponsor', 90, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(660, 5, 5, 2520, 'Direct Sponsor', 91, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(661, 5, 5, 2520, 'Direct Sponsor', 92, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(662, 10, 5, 35, 'Direct Sponsor', 28, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(663, 12, 5, 525, 'Direct Sponsor', 30, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(664, 12, 5, 1512, 'Direct Sponsor', 31, '2018-05-03 13:40:41', '2018-05-03 13:40:41'),
(665, 30, 5, 105, 'Direct Sponsor', 48, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(666, 30, 6, 105, 'Indirect Sponsor', 63, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(667, 30, 6, 35, 'Indirect Sponsor', 76, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(668, 13, 5, 28, 'Direct Sponsor', 32, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(669, 13, 5, 35, 'Direct Sponsor', 33, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(670, 13, 5, 105, 'Direct Sponsor', 34, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(671, 13, 5, 2520, 'Direct Sponsor', 35, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(672, 13, 5, 2520, 'Direct Sponsor', 94, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(673, 13, 5, 2520, 'Direct Sponsor', 95, '2018-05-03 13:40:42', '2018-05-03 13:40:42'),
(674, 32, 5, 14, 'Direct Sponsor', 49, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(675, 32, 5, 42, 'Direct Sponsor', 50, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(676, 32, 5, 28, 'Direct Sponsor', 51, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(677, 13, 6, 105, 'Indirect Sponsor', 52, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(678, 32, 6, 105, 'Indirect Sponsor', 64, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(679, 32, 6, 14, 'Indirect Sponsor', 65, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(680, 51, 5, 1512, 'Direct Sponsor', 66, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(681, 13, 6, 1008, 'Indirect Sponsor', 66, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(682, 13, 6, 35, 'Indirect Sponsor', 67, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(683, 32, 6, 35, 'Indirect Sponsor', 77, '2018-05-03 13:40:43', '2018-05-03 13:40:43'),
(684, 66, 5, 525, 'Direct Sponsor', 78, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(685, 66, 5, 105, 'Direct Sponsor', 79, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(686, 78, 5, 105, 'Direct Sponsor', 84, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(687, 78, 5, 1512, 'Direct Sponsor', 85, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(688, 66, 6, 1008, 'Indirect Sponsor', 85, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(689, 66, 6, 35, 'Indirect Sponsor', 86, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(690, 85, 5, 2520, 'Direct Sponsor', 87, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(691, 87, 5, 2520, 'Direct Sponsor', 88, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(692, 96, 5, 525, 'Direct Sponsor', 97, '2018-05-03 13:40:44', '2018-05-03 13:40:44'),
(693, 96, 5, 35, 'Direct Sponsor', 98, '2018-05-03 13:40:45', '2018-05-03 13:40:45'),
(694, 96, 5, 105, 'Direct Sponsor', 99, '2018-05-03 13:40:45', '2018-05-03 13:40:45'),
(695, 96, 5, 2520, 'Direct Sponsor', 100, '2018-05-03 13:40:45', '2018-05-03 13:40:45'),
(696, 96, 5, 2520, 'Direct Sponsor', 101, '2018-05-03 13:40:45', '2018-05-03 13:40:45'),
(697, 96, 5, 2520, 'Direct Sponsor', 102, '2018-05-03 13:40:45', '2018-05-03 13:40:45'),
(698, 96, 5, 2520, 'Direct Sponsor', 103, '2018-05-03 13:40:45', '2018-05-03 13:40:45'),
(699, 96, 5, 2520, 'Direct Sponsor', 104, '2018-05-03 13:40:46', '2018-05-03 13:40:46'),
(700, 97, 5, 35, 'Direct Sponsor', 105, '2018-05-03 13:40:46', '2018-05-03 13:40:46'),
(701, 97, 5, 105, 'Direct Sponsor', 106, '2018-05-03 13:40:46', '2018-05-03 13:40:46'),
(702, 97, 5, 525, 'Direct Sponsor', 107, '2018-05-03 13:40:46', '2018-05-03 13:40:46'),
(703, 97, 6, 105, 'Indirect Sponsor', 108, '2018-05-03 13:40:46', '2018-05-03 13:40:46'),
(704, 97, 6, 35, 'Indirect Sponsor', 109, '2018-05-03 13:40:46', '2018-05-03 13:40:46'),
(705, 107, 5, 1512, 'Direct Sponsor', 110, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(706, 96, 6, 1008, 'Indirect Sponsor', 110, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(707, 97, 6, 35, 'Indirect Sponsor', 111, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(708, 110, 5, 525, 'Direct Sponsor', 112, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(709, 110, 5, 105, 'Direct Sponsor', 113, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(710, 112, 5, 105, 'Direct Sponsor', 114, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(711, 110, 6, 35, 'Indirect Sponsor', 115, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(712, 96, 6, 105, 'Indirect Sponsor', 116, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(713, 96, 6, 35, 'Indirect Sponsor', 117, '2018-05-03 13:40:47', '2018-05-03 13:40:47'),
(714, 96, 6, 35, 'Indirect Sponsor', 118, '2018-05-03 13:40:48', '2018-05-03 13:40:48'),
(715, 119, 5, 28, 'Direct Sponsor', 120, '2018-05-03 13:40:48', '2018-05-03 13:40:48'),
(716, 119, 5, 35, 'Direct Sponsor', 121, '2018-05-03 13:40:48', '2018-05-03 13:40:48'),
(717, 119, 5, 105, 'Direct Sponsor', 122, '2018-05-03 13:40:48', '2018-05-03 13:40:48'),
(718, 119, 5, 2520, 'Direct Sponsor', 123, '2018-05-03 13:40:48', '2018-05-03 13:40:48'),
(719, 119, 5, 2520, 'Direct Sponsor', 124, '2018-05-03 13:40:48', '2018-05-03 13:40:48'),
(720, 119, 5, 2520, 'Direct Sponsor', 125, '2018-05-03 13:40:48', '2018-05-03 13:40:48'),
(721, 120, 5, 14, 'Direct Sponsor', 126, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(722, 120, 5, 42, 'Direct Sponsor', 127, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(723, 120, 5, 28, 'Direct Sponsor', 128, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(724, 119, 6, 105, 'Indirect Sponsor', 129, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(725, 120, 6, 105, 'Indirect Sponsor', 130, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(726, 120, 6, 14, 'Indirect Sponsor', 131, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(727, 128, 5, 1512, 'Direct Sponsor', 132, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(728, 119, 6, 1008, 'Indirect Sponsor', 132, '2018-05-03 13:40:49', '2018-05-03 13:40:49'),
(729, 119, 6, 35, 'Indirect Sponsor', 133, '2018-05-03 13:40:50', '2018-05-03 13:40:50'),
(730, 120, 6, 35, 'Indirect Sponsor', 134, '2018-05-03 13:40:50', '2018-05-03 13:40:50'),
(731, 132, 5, 525, 'Direct Sponsor', 135, '2018-05-03 13:40:50', '2018-05-03 13:40:50'),
(732, 132, 5, 105, 'Direct Sponsor', 136, '2018-05-03 13:40:50', '2018-05-03 13:40:50'),
(733, 135, 5, 105, 'Direct Sponsor', 137, '2018-05-03 13:40:51', '2018-05-03 13:40:51'),
(734, 135, 5, 1512, 'Direct Sponsor', 138, '2018-05-03 13:40:51', '2018-05-03 13:40:51'),
(735, 132, 6, 1008, 'Indirect Sponsor', 138, '2018-05-03 13:40:51', '2018-05-03 13:40:51'),
(736, 132, 6, 35, 'Indirect Sponsor', 139, '2018-05-03 13:40:51', '2018-05-03 13:40:51'),
(737, 138, 5, 2520, 'Direct Sponsor', 140, '2018-05-03 13:40:51', '2018-05-03 13:40:51'),
(738, 140, 5, 2520, 'Direct Sponsor', 141, '2018-05-03 13:40:51', '2018-05-03 13:40:51'),
(739, 24, 5, 14, 'Direct Sponsor', 43, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(740, 24, 5, 42, 'Direct Sponsor', 44, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(741, 24, 5, 28, 'Direct Sponsor', 45, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(742, 9, 6, 42, 'Indirect Sponsor', 46, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(743, 9, 6, 14, 'Indirect Sponsor', 47, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(744, 24, 6, 42, 'Indirect Sponsor', 59, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(745, 24, 6, 14, 'Indirect Sponsor', 60, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(746, 45, 5, 14, 'Direct Sponsor', 61, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(747, 9, 6, 14, 'Indirect Sponsor', 61, '2018-05-03 13:40:52', '2018-05-03 13:40:52'),
(748, 9, 6, 14, 'Indirect Sponsor', 62, '2018-05-03 13:40:53', '2018-05-03 13:40:53'),
(749, 24, 6, 14, 'Indirect Sponsor', 73, '2018-05-03 13:40:53', '2018-05-03 13:40:53'),
(750, 61, 5, 28, 'Direct Sponsor', 74, '2018-05-03 13:40:53', '2018-05-03 13:40:53'),
(751, 61, 5, 42, 'Direct Sponsor', 75, '2018-05-03 13:40:53', '2018-05-03 13:40:53'),
(752, 74, 5, 42, 'Direct Sponsor', 82, '2018-05-03 13:40:53', '2018-05-03 13:40:53'),
(753, 61, 6, 14, 'Indirect Sponsor', 83, '2018-05-03 13:40:53', '2018-05-03 13:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `bonus_statements`
--

CREATE TABLE `bonus_statements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bonus_types`
--

CREATE TABLE `bonus_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `value_type` varchar(30) NOT NULL,
  `rank` varchar(150) NOT NULL,
  `term` varchar(30) NOT NULL,
  `duration` int(11) NOT NULL,
  `duration_type` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bonus_types`
--

INSERT INTO `bonus_types` (`id`, `name`, `value`, `value_type`, `rank`, `term`, `duration`, `duration_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Retail Profit', 15, 'percentage', 'LC Above', '', 0, '', 'Min 5% - LC\r\nMax 15% - MO,DO,SDO', '0000-00-00', '0000-00-00'),
(2, 'Override Retail Profit', 15, 'percentage', 'LC Above', '', 0, '', 'LC 5%\r\nMO, DO, SDO - 15%', '0000-00-00', '0000-00-00'),
(3, 'Personal Rebate', 20, 'percentage', 'MO Above', '', 0, '', '', '0000-00-00', '0000-00-00'),
(4, 'Override Perosnal Rebate', 20, 'percentage', 'MO Above', '', 0, '', '20% from own purchase from rank MO and Above, if rank below MO, Personal Rebate goes to upline(first active MO Above)', '0000-00-00', '0000-00-00'),
(5, 'Direct Sponsor', 50, 'percentage', 'MO Above', '', 0, '', 'Firts Purchase\r\nSame or below rank = 50%\r\nAbove Rank         = 30%\r\n\r\nSecond Purchase \r\nSame or below rank = 30%\r\nAbove rank         = 10%  \r\n\r\nBalance for ovveride', '0000-00-00', '0000-00-00'),
(6, 'Indirect Sponsor', 20, 'percentage', 'MO Above', '', 0, '', 'Maximum Indirect Sponsor 20% and Min 10%', '0000-00-00', '0000-00-00'),
(7, 'Do Group Bonus ( 3 Gen S/DO)', 36, 'percentage', 'DO Above', '', 0, '', 'Fisrt Purchase 5%\r\nSecond Purchase 12%', '0000-00-00', '0000-00-00'),
(8, 'DO CTO POOL', 8, 'percentage', 'DO', '', 0, '', '8% From total sale and divide by total DP', '0000-00-00', '0000-00-00'),
(9, 'SDO CTO POOL', 3, 'percentage', 'SDO', '', 0, '', '3% From Total Sale and divide by total DP ', '0000-00-00', '0000-00-00'),
(10, 'SDO Bonus', 4, 'percentage', 'SDO', '', 0, '', 'First Purchase 1%\r\nSecond Purchase 4%', '0000-00-00', '0000-00-00'),
(11, 'SDO To SDO Bonus', 2, 'percentage', 'SDO', '', 0, '', 'First Purchase 1%\r\nSecond Purchase 2%', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cosmetic', '2016-10-28 07:18:33', '2016-10-28 07:18:33'),
(2, 'Nutritions (Drink)', '2016-10-28 07:18:38', '2017-04-13 09:52:20'),
(3, 'Nutritions (Food)', '2016-10-28 07:18:45', '2017-04-13 09:56:12');

-- --------------------------------------------------------

--
-- Table structure for table `config_couriers`
--

CREATE TABLE `config_couriers` (
  `id` int(10) UNSIGNED NOT NULL,
  `courier_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_delivery_types`
--

CREATE TABLE `config_delivery_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_description` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config_productcategories`
--

CREATE TABLE `config_productcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Product Category',
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0: inactive, 1: active',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_productcategories`
--

INSERT INTO `config_productcategories` (`id`, `category`, `remarks`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Health / Nutritious', 'Kesihatan / Berkhasiat', 1, 1, 1, '2018-04-04 07:53:14', '2018-04-04 07:53:14'),
(2, 'Beauty', 'Kecantikan', 1, 1, 1, '2018-04-04 07:53:14', '2018-04-04 07:53:14'),
(3, 'Leaflet', 'Risalah', 1, 1, 1, '2018-04-04 07:53:14', '2018-04-04 07:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `config_quantitytypes`
--

CREATE TABLE `config_quantitytypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Quantity Type',
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0: inactive, 1: active',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_quantitytypes`
--

INSERT INTO `config_quantitytypes` (`id`, `type`, `remarks`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'BOX', 'Kotak', 1, 1, 1, '2018-03-31 02:17:50', '2018-03-31 02:17:50'),
(2, 'UNIT', 'Unit', 1, 1, 1, '2018-03-31 02:17:50', '2018-03-31 02:31:37'),
(3, 'BTL', 'Bottle', 1, 1, 1, '2018-03-31 02:17:50', '2018-03-31 02:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `config_stockadjustments`
--

CREATE TABLE `config_stockadjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Stock Adjustment',
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0: inactive, 1: active',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_stockadjustments`
--

INSERT INTO `config_stockadjustments` (`id`, `adjustment`, `remarks`, `operation`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Damaged', 'Barang rosak', '', 1, 1, '2018-03-04 09:56:33', 1, '2018-03-04 09:56:33'),
(2, 'Expired', 'Bad', '', 1, 1, '2018-03-04 09:56:33', 1, '2018-03-04 09:56:33'),
(3, 'Charge Out - Demo', 'Charge Out - Demo', '-', 1, 1, '2018-03-04 09:56:33', 1, '2018-06-20 21:55:59'),
(4, 'Charge Out - Event', 'Charge Out - Event', '+', 1, 1, '2018-03-04 09:56:33', 1, '2018-06-20 21:55:54'),
(5, 'Charge Out - Sponsor', 'Charge Out - Sponsor', '+', 1, 1, '2018-03-04 09:56:33', 1, '2018-06-10 17:10:43'),
(6, 'Charge Out - Testimony', 'Charge Out - Testimony', '-', 1, 1, '2018-03-04 09:56:33', 1, '2018-06-30 08:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `config_taxes`
--

CREATE TABLE `config_taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Example: GST',
  `percent` int(11) NOT NULL DEFAULT '0' COMMENT 'Percent tax: 6 %',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `config_taxes`
--

INSERT INTO `config_taxes` (`id`, `code`, `percent`, `remarks`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'gst', 6, 'DEFAULT : 6%', 1, '2018-03-04 09:56:33', 1, '2018-06-30 08:42:02');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, '\0n\0a\0m\0e\0'),
(2, '\0A\0f\0g\0h\0a\0n\0i\0s\0t\0a\0n\0'),
(3, '\0A\0l\0b\0a\0n\0i\0a\0'),
(4, '\0A\0l\0g\0e\0r\0i\0a\0'),
(5, '\0A\0m\0e\0r\0i\0c\0a\0'),
(6, '\0A\0n\0d\0o\0r\0r\0a\0'),
(7, '\0A\0n\0g\0o\0l\0a\0'),
(8, '\0A\0n\0t\0i\0g\0u\0a\0'),
(9, '\0A\0r\0g\0e\0n\0t\0i\0n\0a\0'),
(10, '\0A\0r\0m\0e\0n\0i\0a\0'),
(11, '\0A\0u\0s\0t\0r\0a\0l\0i\0a\0'),
(12, '\0A\0u\0s\0t\0r\0i\0a\0'),
(13, '\0A\0z\0e\0r\0b\0a\0i\0j\0a\0n\0'),
(14, '\0B\0a\0h\0a\0m\0a\0s\0'),
(15, '\0B\0a\0h\0r\0a\0i\0n\0'),
(16, '\0B\0a\0n\0g\0l\0a\0d\0e\0s\0h\0'),
(17, '\0B\0a\0r\0b\0a\0d\0o\0s\0'),
(18, '\0B\0e\0l\0a\0r\0u\0s\0'),
(19, '\0B\0e\0l\0g\0i\0u\0m\0'),
(20, '\0B\0e\0l\0i\0z\0e\0'),
(21, '\0B\0e\0n\0i\0n\0'),
(22, '\0B\0h\0u\0t\0a\0n\0'),
(23, '\0B\0i\0s\0s\0a\0u\0'),
(24, '\0B\0o\0l\0i\0v\0i\0a\0'),
(25, '\0B\0o\0s\0n\0i\0a\0'),
(26, '\0B\0o\0t\0s\0w\0a\0n\0a\0'),
(27, '\0B\0r\0a\0z\0i\0l\0'),
(28, '\0B\0r\0i\0t\0i\0s\0h\0'),
(29, '\0B\0r\0u\0n\0e\0i\0'),
(30, '\0B\0u\0l\0g\0a\0r\0i\0a\0'),
(31, '\0B\0u\0r\0k\0i\0n\0a\0'),
(32, '\0B\0u\0r\0m\0a\0'),
(33, '\0B\0u\0r\0u\0n\0d\0i\0'),
(34, '\0C\0a\0m\0b\0o\0d\0i\0a\0'),
(35, '\0C\0a\0m\0e\0r\0o\0o\0n\0'),
(36, '\0C\0a\0n\0a\0d\0a\0'),
(37, '\0C\0a\0p\0e\0 \0V\0e\0r\0d\0e\0'),
(38, '\0C\0e\0n\0t\0r\0a\0l\0 \0A\0f\0r\0i\0c\0a\0n\0 \0R\0e\0p\0u\0b\0l\0i\0c\0'),
(39, '\0C\0h\0a\0d\0'),
(40, '\0C\0h\0i\0l\0e\0'),
(41, '\0C\0h\0i\0n\0a\0'),
(42, '\0C\0o\0l\0o\0m\0b\0i\0a\0'),
(43, '\0C\0o\0m\0o\0r\0o\0s\0'),
(44, '\0C\0o\0n\0g\0o\0'),
(45, '\0C\0o\0s\0t\0a\0 \0R\0i\0c\0a\0'),
(46, '\0c\0o\0u\0n\0t\0r\0y\0 \0d\0e\0b\0t\0'),
(47, '\0C\0r\0o\0a\0t\0i\0a\0'),
(48, '\0C\0u\0b\0a\0'),
(49, '\0C\0y\0p\0r\0u\0s\0'),
(50, '\0C\0z\0e\0c\0h\0'),
(51, '\0D\0e\0n\0m\0a\0r\0k\0'),
(52, '\0D\0j\0i\0b\0o\0u\0t\0i\0'),
(53, '\0D\0o\0m\0i\0n\0i\0c\0a\0'),
(54, '\0E\0a\0s\0t\0 \0T\0i\0m\0o\0r\0'),
(55, '\0E\0c\0u\0a\0d\0o\0r\0'),
(56, '\0E\0g\0y\0p\0t\0'),
(57, '\0E\0l\0 \0S\0a\0l\0v\0a\0d\0o\0r\0'),
(58, '\0E\0m\0i\0r\0a\0t\0e\0'),
(59, '\0E\0n\0g\0l\0a\0n\0d\0'),
(60, '\0E\0r\0i\0t\0r\0e\0a\0'),
(61, '\0E\0s\0t\0o\0n\0i\0a\0'),
(62, '\0E\0t\0h\0i\0o\0p\0i\0a\0'),
(63, '\0F\0i\0j\0i\0'),
(64, '\0F\0i\0n\0l\0a\0n\0d\0'),
(65, '\0F\0r\0a\0n\0c\0e\0'),
(66, '\0G\0a\0b\0o\0n\0'),
(67, '\0G\0a\0m\0b\0i\0a\0'),
(68, '\0G\0e\0o\0r\0g\0i\0a\0'),
(69, '\0G\0e\0r\0m\0a\0n\0y\0'),
(70, '\0G\0h\0a\0n\0a\0'),
(71, '\0G\0r\0e\0a\0t\0 \0B\0r\0i\0t\0a\0i\0n\0'),
(72, '\0G\0r\0e\0e\0c\0e\0'),
(73, '\0G\0r\0e\0n\0a\0d\0a\0'),
(74, '\0G\0r\0e\0n\0a\0d\0i\0n\0e\0s\0'),
(75, '\0G\0u\0a\0t\0e\0m\0a\0l\0a\0'),
(76, '\0G\0u\0i\0n\0e\0a\0'),
(77, '\0G\0u\0y\0a\0n\0a\0'),
(78, '\0H\0a\0i\0t\0i\0'),
(79, '\0H\0e\0r\0z\0e\0g\0o\0v\0i\0n\0a\0'),
(80, '\0H\0o\0n\0d\0u\0r\0a\0s\0'),
(81, '\0H\0u\0n\0g\0a\0r\0y\0'),
(82, '\0I\0c\0e\0l\0a\0n\0d\0'),
(83, '\0i\0n\0 \0u\0s\0a\0'),
(84, '\0I\0n\0d\0i\0a\0'),
(85, '\0I\0n\0d\0o\0n\0e\0s\0i\0a\0'),
(86, '\0I\0r\0a\0n\0'),
(87, '\0I\0r\0a\0q\0'),
(88, '\0I\0r\0e\0l\0a\0n\0d\0'),
(89, '\0I\0s\0r\0a\0e\0l\0'),
(90, '\0I\0t\0a\0l\0y\0'),
(91, '\0I\0v\0o\0r\0y\0 \0C\0o\0a\0s\0t\0'),
(92, '\0J\0a\0m\0a\0i\0c\0a\0'),
(93, '\0J\0a\0p\0a\0n\0'),
(94, '\0J\0o\0r\0d\0a\0n\0'),
(95, '\0K\0a\0z\0a\0k\0h\0s\0t\0a\0n\0'),
(96, '\0K\0e\0n\0y\0a\0'),
(97, '\0K\0i\0r\0i\0b\0a\0t\0i\0'),
(98, '\0K\0o\0r\0e\0a\0'),
(99, '\0K\0o\0s\0o\0v\0o\0'),
(100, '\0K\0u\0w\0a\0i\0t\0'),
(101, '\0K\0y\0r\0g\0y\0z\0s\0t\0a\0n\0'),
(102, '\0L\0a\0o\0s\0'),
(103, '\0L\0a\0t\0v\0i\0a\0'),
(104, '\0L\0e\0b\0a\0n\0o\0n\0'),
(105, '\0L\0e\0s\0o\0t\0h\0o\0'),
(106, '\0L\0i\0b\0e\0r\0i\0a\0'),
(107, '\0L\0i\0b\0y\0a\0'),
(108, '\0L\0i\0e\0c\0h\0t\0e\0n\0s\0t\0e\0i\0n\0'),
(109, '\0L\0i\0t\0h\0u\0a\0n\0i\0a\0'),
(110, '\0L\0u\0x\0e\0m\0b\0o\0u\0r\0g\0'),
(111, '\0M\0a\0c\0e\0d\0o\0n\0i\0a\0'),
(112, '\0M\0a\0d\0a\0g\0a\0s\0c\0a\0r\0'),
(113, '\0M\0a\0l\0a\0w\0i\0'),
(114, '\0M\0a\0l\0a\0y\0s\0i\0a\0'),
(115, '\0M\0a\0l\0d\0i\0v\0e\0s\0'),
(116, '\0M\0a\0l\0i\0'),
(117, '\0M\0a\0l\0t\0a\0'),
(118, '\0M\0a\0r\0s\0h\0a\0l\0l\0'),
(119, '\0M\0a\0u\0r\0i\0t\0a\0n\0i\0a\0'),
(120, '\0M\0a\0u\0r\0i\0t\0i\0u\0s\0'),
(121, '\0M\0e\0x\0i\0c\0o\0'),
(122, '\0M\0i\0c\0r\0o\0n\0e\0s\0i\0a\0'),
(123, '\0M\0o\0l\0d\0o\0v\0a\0'),
(124, '\0M\0o\0n\0a\0c\0o\0'),
(125, '\0M\0o\0n\0g\0o\0l\0i\0a\0'),
(126, '\0M\0o\0n\0t\0e\0n\0e\0g\0r\0o\0'),
(127, '\0M\0o\0r\0o\0c\0c\0o\0'),
(128, '\0M\0o\0z\0a\0m\0b\0i\0q\0u\0e\0'),
(129, '\0M\0y\0a\0n\0m\0a\0r\0'),
(130, '\0N\0a\0m\0i\0b\0i\0a\0'),
(131, '\0N\0a\0u\0r\0u\0'),
(132, '\0N\0e\0p\0a\0l\0'),
(133, '\0N\0e\0t\0h\0e\0r\0l\0a\0n\0d\0s\0'),
(134, '\0N\0e\0w\0 \0Z\0e\0a\0l\0a\0n\0d\0'),
(135, '\0N\0i\0c\0a\0r\0a\0g\0u\0a\0'),
(136, '\0N\0i\0g\0e\0r\0'),
(137, '\0N\0i\0g\0e\0r\0i\0a\0'),
(138, '\0N\0o\0r\0w\0a\0y\0'),
(139, '\0O\0m\0a\0n\0'),
(140, '\0P\0a\0k\0i\0s\0t\0a\0n\0'),
(141, '\0P\0a\0l\0a\0u\0'),
(142, '\0P\0a\0n\0a\0m\0a\0'),
(143, '\0P\0a\0p\0u\0a\0'),
(144, '\0P\0a\0r\0a\0g\0u\0a\0y\0'),
(145, '\0P\0e\0r\0u\0'),
(146, '\0P\0h\0i\0l\0i\0p\0p\0i\0n\0e\0s\0'),
(147, '\0P\0o\0l\0a\0n\0d\0'),
(148, '\0P\0o\0r\0t\0u\0g\0a\0l\0'),
(149, '\0Q\0a\0t\0a\0r\0'),
(150, '\0R\0o\0m\0a\0n\0i\0a\0'),
(151, '\0R\0u\0s\0s\0i\0a\0'),
(152, '\0R\0w\0a\0n\0d\0a\0'),
(153, '\0S\0a\0m\0o\0a\0'),
(154, '\0S\0a\0n\0 \0M\0a\0r\0i\0n\0o\0'),
(155, '\0S\0a\0o\0 \0T\0o\0m\0e\0'),
(156, '\0S\0a\0u\0d\0i\0 \0A\0r\0a\0b\0i\0a\0'),
(157, '\0s\0c\0o\0t\0l\0a\0n\0d\0'),
(158, '\0s\0c\0o\0t\0t\0i\0s\0h\0'),
(159, '\0S\0e\0n\0e\0g\0a\0l\0'),
(160, '\0S\0e\0r\0b\0i\0a\0'),
(161, '\0S\0e\0y\0c\0h\0e\0l\0l\0e\0s\0'),
(162, '\0S\0i\0e\0r\0r\0a\0 \0L\0e\0o\0n\0e\0'),
(163, '\0S\0i\0n\0g\0a\0p\0o\0r\0e\0'),
(164, '\0S\0l\0o\0v\0a\0k\0i\0a\0'),
(165, '\0S\0l\0o\0v\0e\0n\0i\0a\0'),
(166, '\0S\0o\0l\0o\0m\0o\0n\0'),
(167, '\0S\0o\0m\0a\0l\0i\0a\0'),
(168, '\0S\0o\0u\0t\0h\0 \0A\0f\0r\0i\0c\0a\0'),
(169, '\0S\0o\0u\0t\0h\0 \0S\0u\0d\0a\0n\0'),
(170, '\0S\0p\0a\0i\0n\0'),
(171, '\0S\0r\0i\0 \0L\0a\0n\0k\0a\0'),
(172, '\0S\0t\0.\0 \0K\0i\0t\0t\0s\0'),
(173, '\0S\0t\0.\0 \0L\0u\0c\0i\0a\0'),
(174, '\0S\0t\0 \0K\0i\0t\0t\0s\0'),
(175, '\0S\0t\0 \0L\0u\0c\0i\0a\0'),
(176, '\0S\0a\0i\0n\0t\0 \0K\0i\0t\0t\0s\0'),
(177, '\0S\0a\0n\0t\0a\0 \0L\0u\0c\0i\0a\0'),
(178, '\0S\0u\0d\0a\0n\0'),
(179, '\0S\0u\0r\0i\0n\0a\0m\0e\0'),
(180, '\0S\0w\0a\0z\0i\0l\0a\0n\0d\0'),
(181, '\0S\0w\0e\0d\0e\0n\0'),
(182, '\0S\0w\0i\0t\0z\0e\0r\0l\0a\0n\0d\0'),
(183, '\0S\0y\0r\0i\0a\0'),
(184, '\0T\0a\0i\0w\0a\0n\0'),
(185, '\0T\0a\0j\0i\0k\0i\0s\0t\0a\0n\0'),
(186, '\0T\0a\0n\0z\0a\0n\0i\0a\0'),
(187, '\0T\0h\0a\0i\0l\0a\0n\0d\0'),
(188, '\0T\0o\0b\0a\0g\0o\0'),
(189, '\0T\0o\0g\0o\0'),
(190, '\0T\0o\0n\0g\0a\0'),
(191, '\0T\0r\0i\0n\0i\0d\0a\0d\0'),
(192, '\0T\0u\0n\0i\0s\0i\0a\0'),
(193, '\0T\0u\0r\0k\0e\0y\0'),
(194, '\0T\0u\0r\0k\0m\0e\0n\0i\0s\0t\0a\0n\0'),
(195, '\0T\0u\0v\0a\0l\0u\0'),
(196, '\0U\0g\0a\0n\0d\0a\0'),
(197, '\0U\0k\0r\0a\0i\0n\0e\0'),
(198, '\0U\0n\0i\0t\0e\0d\0 \0K\0i\0n\0g\0d\0o\0m\0'),
(199, '\0U\0n\0i\0t\0e\0d\0 \0S\0t\0a\0t\0e\0s\0'),
(200, '\0U\0r\0u\0g\0u\0a\0y\0'),
(201, '\0U\0S\0A\0'),
(202, '\0U\0z\0b\0e\0k\0i\0s\0t\0a\0n\0'),
(203, '\0V\0a\0n\0u\0a\0t\0u\0'),
(204, '\0V\0a\0t\0i\0c\0a\0n\0'),
(205, '\0V\0e\0n\0e\0z\0u\0e\0l\0a\0'),
(206, '\0V\0i\0e\0t\0n\0a\0m\0'),
(207, '\0w\0a\0l\0e\0s\0'),
(208, '\0w\0e\0l\0s\0h\0'),
(209, '\0Y\0e\0m\0e\0n\0'),
(210, '\0Z\0a\0m\0b\0i\0a\0'),
(211, '\0Z\0i\0m\0b\0a\0b\0w\0e\0');

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `telephone_no` varchar(16) NOT NULL,
  `fax_no` varchar(16) NOT NULL,
  `email` varchar(150) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `company_name`, `street`, `postcode`, `city`, `state`, `country`, `telephone_no`, `fax_no`, `email`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'GDEX', 'dsfsdf', 43200, 'Cheras', 'Selangor', 'Malaysia', '0121321', '123123', 'guna@gdex.com', 'logo/logo-gdex.png', '2016-11-02 10:26:08', '2016-11-02 10:26:08'),
(2, 'Ta\'Q\'bin', 'dsfsdf', 43200, 'Cheras', 'Selangor', 'Malaysia', '0121321', '123123', 'adminkl@taqbin.com', '', '2016-11-02 10:42:13', '2016-11-02 10:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_cost` int(11) NOT NULL,
  `total` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `user_id`, `delivery_cost`, `total`, `status`, `balance`, `created_at`, `updated_at`) VALUES
(1, 10000, 2, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(2, 10001, 3, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(3, 10001, 4, 10, 3150, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(4, 10002, 14, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(5, 10003, 15, 10, 3150, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(6, 10004, 16, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(7, 10005, 36, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(8, 10006, 53, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(9, 10007, 68, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(10, 10008, 5, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(11, 10009, 17, 10, 3150, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(12, 10010, 18, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(13, 10011, 19, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(14, 10012, 20, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(15, 10013, 37, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(16, 10014, 38, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(17, 10015, 39, 10, 3150, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(18, 10016, 40, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(19, 10017, 41, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(20, 10018, 54, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(21, 10019, 55, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(22, 10020, 56, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(23, 10021, 57, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(24, 10022, 69, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(25, 10023, 70, 10, 3150, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(26, 10024, 71, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(27, 10025, 80, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(28, 10026, 81, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(33, 10027, 6, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(34, 10028, 7, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(35, 10029, 8, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(36, 10030, 21, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(37, 10031, 22, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(38, 10032, 23, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(39, 10033, 42, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(40, 10034, 58, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(41, 10035, 72, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(42, 10036, 9, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(43, 10037, 24, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(44, 10038, 25, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(45, 10039, 26, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(46, 10040, 27, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(47, 10041, 93, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(48, 10042, 89, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(49, 10043, 90, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(50, 10044, 91, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(51, 10045, 92, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(52, 10046, 10, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(53, 10047, 11, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(54, 10048, 12, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(55, 10049, 28, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(56, 10050, 29, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(57, 10051, 30, 10, 3150, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(58, 10052, 31, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(59, 10053, 48, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(60, 10054, 63, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(61, 10055, 76, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(62, 10056, 13, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(63, 10057, 32, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(64, 10058, 33, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(65, 10059, 34, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(66, 10060, 35, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(67, 10061, 94, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(68, 10062, 95, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(69, 10063, 49, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(70, 10064, 50, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(71, 10065, 51, 10, 420, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(72, 10066, 52, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(73, 10067, 64, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(74, 10068, 65, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(75, 10069, 66, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(76, 10070, 67, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(77, 10071, 77, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(78, 10072, 78, 10, 3150, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(79, 10073, 79, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(80, 10074, 84, 10, 630, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(81, 10075, 85, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(82, 10076, 86, 10, 210, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(83, 10077, 87, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(84, 10078, 88, 10, 15120, 'Fully Paid', 0, '2017-07-19', '2017-07-19'),
(85, 10079, 96, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(86, 10080, 97, 10, 3150, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(87, 10080, 98, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(88, 10080, 99, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(89, 10080, 100, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(90, 10080, 101, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(91, 10080, 102, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(92, 10080, 103, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(93, 10080, 104, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(94, 10080, 105, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(95, 10080, 106, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(96, 10080, 107, 10, 3150, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(97, 10080, 108, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(98, 10080, 109, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(99, 10080, 110, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(100, 10080, 111, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(101, 10080, 112, 10, 3150, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(102, 10080, 113, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(103, 10080, 114, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(104, 10080, 115, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(105, 10080, 116, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(106, 10080, 117, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(107, 10080, 118, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(108, 10080, 119, 10, 420, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(109, 10080, 120, 10, 420, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(110, 10080, 121, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(111, 10080, 122, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(112, 10080, 123, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(113, 10080, 124, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(114, 10080, 125, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(115, 10080, 126, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(116, 10080, 127, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(117, 10080, 128, 10, 420, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(118, 10080, 129, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(119, 10080, 130, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(120, 10080, 131, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(121, 10080, 132, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(122, 10080, 133, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(123, 10080, 134, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(124, 10080, 135, 10, 3150, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(125, 10080, 136, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(126, 10080, 137, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(127, 10080, 138, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(128, 10080, 139, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(129, 10080, 140, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(130, 10080, 141, 10, 15120, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(131, 10080, 43, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(132, 10080, 44, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(133, 10080, 45, 10, 420, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(134, 10080, 46, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(135, 10080, 47, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(136, 10080, 59, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(137, 10080, 60, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(138, 10080, 61, 10, 420, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(139, 10080, 62, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(140, 10080, 73, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(141, 10080, 74, 10, 420, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(142, 10080, 75, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(143, 10080, 82, 10, 630, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(144, 10080, 83, 10, 210, 'Fully Paid', 0, '2017-07-20', '2017-07-20'),
(145, 10080, 2, 10, 630, 'Fully Paid', 0, '2018-01-18', '2018-01-18'),
(146, 10081, 2, 10, 630, 'Fully Paid', 0, '2018-01-18', '2018-01-18'),
(147, 10082, 6, 10, 3680, 'Fully Paid', 0, '2018-01-18', '2018-01-18'),
(148, 10083, 10, 10, 4995, 'Fully Paid', 0, '2018-01-18', '2018-01-18'),
(149, 10084, 10, 10, 559.02, 'Partially Paid', 0, '2018-04-17', '2018-04-17'),
(150, 10085, 11, 10, 559.02, 'Fully Paid', 0, '2018-04-18', '2018-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2017_08_29_104156_create_products_table', 1),
(7, '2017_08_29_112629_create_social_facebook_accounts_table', 1),
(8, '2017_09_13_063332_create_user_trees_table', 2),
(9, '2016_09_13_070520_add_verification_to_user_table', 3),
(10, '2017_10_27_075002_create_notifications_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `new_firstpurchase`
--

CREATE TABLE `new_firstpurchase` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `serial_no` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `pv` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `lock_status` enum('lock','unlock') NOT NULL DEFAULT 'unlock',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `new_profiles`
--

CREATE TABLE `new_profiles` (
  `id` int(11) NOT NULL,
  `newprofileable_id` int(11) NOT NULL,
  `newprofileable_type` varchar(100) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `marital_status` enum('Single','Married','Widowed') NOT NULL,
  `id_type` enum('MyKad','Passport') NOT NULL,
  `id_no` varchar(30) NOT NULL,
  `id_pic` varchar(255) DEFAULT NULL,
  `status_ic` enum('Approved','Pending','Not Valid') NOT NULL,
  `street` varchar(255) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_no` varchar(14) NOT NULL,
  `contact_no2` varchar(14) NOT NULL,
  `beneficiary_name` varchar(150) NOT NULL,
  `relationship` varchar(30) NOT NULL,
  `beneficiary_address` text NOT NULL,
  `beneficiary_mobile_no` varchar(14) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_profiles`
--

INSERT INTO `new_profiles` (`id`, `newprofileable_id`, `newprofileable_type`, `full_name`, `dob`, `gender`, `marital_status`, `id_type`, `id_no`, `id_pic`, `status_ic`, `street`, `postcode`, `city`, `state`, `country`, `contact_no`, `contact_no2`, `beneficiary_name`, `relationship`, `beneficiary_address`, `beneficiary_mobile_no`, `created_at`, `updated_at`) VALUES
(2, 6, 'App\\NewUser', 'qwerqex', '2014-08-04', 'Male', '', '', '12431243124', NULL, 'Approved', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'MALAYSIA', '123123123', '', '', '', '', '', '2018-04-10 16:32:05', '2018-04-10 16:32:05'),
(3, 7, 'App\\NewUser', 'ertert', '2014-08-04', 'Male', '', '', '34345345', NULL, 'Approved', 'asdsfef', '2345234', 'sdferwfe', 'asdasd', 'MALAYSIA', '345345334', '', '', '', '', '', '2018-04-11 13:35:53', '2018-04-11 13:35:53'),
(4, 8, 'App\\NewUser', 'asdasasd asd a', '2014-08-04', 'Male', '', '', '23423432 4', NULL, 'Approved', 'sdfsdfs', 'sdfsdf', 'sdfsdf', 'sdfsdfsd', 'MALAYSIA', '12341231', '', '', '', '', '', '2018-04-12 16:44:31', '2018-04-12 16:44:31'),
(5, 9, 'App\\NewUser', 'hgjkhjkkhjk', '2014-08-04', 'Male', '', '', '456456', NULL, 'Approved', 'fgjhfgnb', 'vbnvn', 'vbnvbn', 'fghfgh', 'MALAYSIA', '45645645', '', '', '', '', '', '2018-04-13 16:45:24', '2018-04-13 16:45:24'),
(6, 10, 'App\\NewUser', 'fghjfgnfgn', '2014-08-04', 'Male', '', '', '43545253', NULL, 'Approved', 'dbsfg deg df', 'dfgdsf', 'sdfs df', 'sdfgsdfg', 'MALAYSIA', '2342342', '', '', '', '', '', '2018-04-17 19:06:15', '2018-04-17 19:06:15'),
(7, 11, 'App\\NewUser', 'gfhbdh dheth', '2014-08-04', 'Male', '', '', '12342453245', NULL, 'Approved', 'sgs sdfg sd', '12312312', 'sdfg sdfg ds', 'sdgr dfg s', 'MALAYSIA', '45362363456', '', '', '', '', '', '2018-04-18 15:06:16', '2018-04-18 15:06:16'),
(8, 12, 'App\\NewUser', 'fghjnryj rt', '2014-08-04', 'Male', '', '', '45674356', NULL, 'Approved', 'sdfgvdsf', 'stevrc', 'dsrsdrve', 'wertcertc', 'MALAYSIA', '345635', '', '', '', '', '', '2018-04-20 17:30:28', '2018-04-20 17:30:28'),
(9, 13, 'App\\NewUser', 'dhghfgf', '2014-08-04', 'Male', '', '', '2435353', NULL, 'Approved', 'asdasdad', '3453245', 'sdfasdf', 'sfsdf', 'MALAYSIA', '23452345', '', '', '', '', '', '2018-04-25 17:20:56', '2018-04-25 17:20:56'),
(10, 14, 'App\\NewUser', 'qweqwe', '2014-08-04', 'Male', '', '', '234234324234', NULL, 'Approved', 'asdacdas ds', '345345', 'asd asd as', 'sdfsdf', 'MALAYSIA', '234234234', '', '', '', '', '', '2018-04-26 18:37:05', '2018-04-26 18:37:05'),
(11, 15, 'App\\NewUser', 'fdg fdsgd', '2014-08-04', 'Male', '', '', '254626 2546', NULL, 'Approved', 'safsagfd sfd sdfg', '12543', 'sdfgsdfg', 'sfdg sdfg', 'MALAYSIA', '24352345', '', '', '', '', '', '2018-04-30 12:46:27', '2018-04-30 12:46:27'),
(12, 16, 'App\\NewUser', 'rt ert rthh', '2014-08-04', 'Male', '', '', '13452345 43 5', NULL, 'Approved', 'asdas dasd', 'asda asd', 'asdasd asd a', 'asdasd', 'MALAYSIA', '345 345 345 34', '', '', '', '', '', '2018-04-30 15:05:25', '2018-04-30 15:05:25'),
(13, 17, 'App\\NewUser', 'vngfgfnfg', '2014-08-04', 'Male', '', '', '4534534535', NULL, 'Approved', 'sdfsdcsdf sdfs sd', '234242', 'sdfsdf sdf s', 'adasddas', 'MALAYSIA', '353453', '', '', '', '', '', '2018-05-07 12:43:49', '2018-05-07 12:43:49'),
(14, 18, 'App\\NewUser', 'member1', '2014-08-04', 'Male', '', '', '123123123123', '/opt/lampp/temp/phpw62dMs', 'Approved', 'asdasda', 'asdads', 'sdferwfe', 'sdfsadf', 'MALAYSIA', '013568984', '', '', '', '', '', '2018-06-22 12:14:27', '2018-06-22 12:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `new_users`
--

CREATE TABLE `new_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `security_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introducer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_referral` int(11) DEFAULT '0',
  `rank_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `new_users`
--

INSERT INTO `new_users` (`id`, `username`, `email`, `password`, `security_code`, `mobile_no`, `remember_token`, `introducer`, `total_referral`, `rank_id`, `created_at`, `updated_at`, `verified`, `email_token`, `status`) VALUES
(6, 'asdasfdasxa', 'adasdasd@mail.com', '$2y$10$QowZWxYKWCu1NV6m2K4MEe9edmlMLTLZZSIHycKE7jSsTkPX6K.VO', '$2y$10$kj7ZB9.woJsOm/5GtQg.YuergBUk57mu4JU4RR9gxoNWtjDg8cWXG', '123123123', NULL, 'superadmin', 0, 1, '2018-04-10 08:32:05', '2018-04-10 08:32:05', 0, 'ff2568e1047111168a19ac7f19af487830fa6b2e2f9b82b2cc49051529a9dd8a', ''),
(7, 'etertret', 'dfgdfg@mail.com', '$2y$10$/F.bfsFK2WKt6.EssHn7x.Tl3J3xrzN2Ztkc1W0gbYhl8ghAokxae', '$2y$10$lfHTUPJSLeNdRFexaePDbeiz9nj2gKyMZ./vB0wLGcLxlWaUdjglG', '345345334', NULL, 'superadmin', 0, 1, '2018-04-11 05:35:53', '2018-04-11 05:35:53', 0, '542b738d5fc98761ff3ee8b96d2de9ba0e7bac6e015ded7edbc58f21ee14ba9a', ''),
(8, 'dfgcvsd', 'adasdasdas@mail.com', '$2y$10$bLi5A8s1OY6eeO.4wdfp0O7.FA2FlsBI.VppUp9jwsT0nUFmBLJOm', '$2y$10$scUIZanmrn2VOgC4L4qtAuSjI8TEpCiMmL.njZhhnnYupQmVv4TPS', '12341231', NULL, 'superadmin', 0, 1, '2018-04-12 08:44:31', '2018-04-12 08:44:31', 0, '14367e296755668b6dd7ee206eed5a29232dd3d8aebccf679553fe1b78085cdc', ''),
(9, 'vbnvbnbv', 'sdfsdfs@mail.com', '$2y$10$NoelbQZzIpF7WTuuf109f.4G//iz2RbdmP2m1mkk4dBB58KGmXGkC', '$2y$10$8pHlbJ33mLndjB/nm8j6xe/C4zXTdijM.G/0rkqn3VmLvDr/P3fcW', '45645645', NULL, 'superadmin', 0, 1, '2018-04-13 08:45:24', '2018-04-13 08:45:24', 0, '05d002d0cc8dd2a8c09b6aa9a1afd88919dbad8e6d79f40a7b8a31472cbd45f2', ''),
(10, 'ghfbfgnd', 'asdasdadasd@mail.com', '$2y$10$Sn/irS5pSETiFMX82g8/OeRvBzvyN2dLjXMsImduJB7lLCrbtRy4W', '$2y$10$0AS/Jwptvs3ma/rYgyM8r.vs9Gio8VbCQ1dHNB/SShuNur/NSUatO', '2342342', NULL, 'superadmin', 0, 1, '2018-04-17 11:06:15', '2018-04-17 11:06:15', 0, '278af71f092f308afdbd80bb2115bd1e70ba883036813fcaa845cf9cc97da774', ''),
(11, 'hjhgjf hfd', 'sdfgsdfgsd@mail.com', '$2y$10$Tmk/SXPxTDwba3pYsrt0a.ejItjaAFbNCg85MFyMH73c9eZ94JQe2', '$2y$10$4a2UqeFC6Eri0ACq33VHUeLRSzJ.7sN9VH27wSwY6YDVHVl5pxuoa', '45362363456', NULL, 'superadmin', 0, 1, '2018-04-18 07:06:16', '2018-04-18 07:06:16', 0, '0467eb0c9d44b30e7a92ea5544128f3f96f7b0eb7b5309e9a1ef130e66df1b6e', ''),
(12, 'bvndhgngfv', 'asdfasd@mail.com', '$2y$10$0Kqm2oymr.wP4k/zQpkvJ.ASixYEkCRyBy.1HSU7KW6X9Hu9BA41m', '$2y$10$BefdERqyLVCagkQoYJ7MrOvuRXURPY6O6UfqPDgNGtq0ozcJzGKGO', '345635', NULL, 'superadmin', 0, 1, '2018-04-20 09:30:28', '2018-04-20 09:30:28', 0, 'aabe3fb64a3e977be2e07da71bf67426272cfe42d4ebcdab53a24810010cac46', ''),
(13, 'dfgngn', 'asdfasdf@mail.com', '$2y$10$qt0lCRfSq.MfimpNcf8JWuf1ZiXoQW9SB5NwzsFaEYMV3jj8PPCIC', '$2y$10$fpbxcIJSlXVgGmKT6fshJ.Y6ShL2T2.qQrOFsmbyvQI1n5yBrrU6y', '23452345', NULL, 'superadmin', 0, 1, '2018-04-25 09:20:56', '2018-04-25 09:20:56', 0, 'f9b37833522e097fcec687572f74a7edf11c112ba484187154d9be69a5c56c4e', ''),
(14, 'ghnmfhnbh', 'asdasd@mail.com', '$2y$10$cepjMolecuG71UY6lRBo1uoo4Lgji7VGNQBZ8CA3hmkOyNFB8sFu2', '$2y$10$U5RC9iGLa7VkEDBmatGOhuo1xq/zN2BZPW7kWHb5OjfDJnaJDh1lm', '234234234', NULL, 'superadmin', 0, 1, '2018-04-26 10:37:04', '2018-04-26 10:37:04', 0, '5c299c75c7e80ee4e9e9e86ce341b4283b46330d828810770e408367ffe510d9', ''),
(15, 'tvgergweg gr', 'sdfasf@mail.com', '$2y$10$hZXzkCkIwPB/aMazDrNU3uGF4Qyht91PZCV4YGz3nJ1Te4c2urSM.', '$2y$10$LTWCudr/jQOKuRtLWwkb7uMOPDsyiCwgRDfi.N4/xVIApLdXkWhie', '24352345', NULL, 'superadmin', 0, 1, '2018-04-30 04:46:27', '2018-04-30 04:46:27', 0, 'ab42b447f81f1e572b11efcd321669d9e00a1075ba7d13d794d6936f90d390a0', ''),
(16, 'cvbnbv xgs', 'asdasdasdasd@mail.com', '$2y$10$fWJZvw3y3HP9j8lo.4xMxOja4C0iJVObCrvE7ExcvB76Rnk/oIm2m', '$2y$10$rvCRryQPui4pWqbrFrW2r.4A03PSrV4r7zA167.pCjHEP3lyZV3Wy', '345 345 345', NULL, 'superadmin', 0, 1, '2018-04-30 07:05:25', '2018-04-30 07:05:25', 0, '074ada4070023e110276cbe033890c318d3be49773c6d1404b147df10bb2677c', ''),
(17, 'vbnvnbnvb', 'vbnvbnvn@mail.com', '$2y$10$il3pvC9eUrjt41Pob6F4V.shKA5MY88I0t8J9NAaJYVxKMQTWZqMq', '$2y$10$bB5hsZr7Bcw4cAGzMawgzeKer8QqdCCJsXQG3qtgqR.5TUIUEY4au', '353453', NULL, 'superadmin', 0, 1, '2018-05-07 04:43:48', '2018-05-07 04:43:48', 0, 'cc854921b4aad4eaad5fa07adc4f679c7783b65d183662415c8e09dfde780714', ''),
(18, 'member1', 'member1@mail.com', '$2y$10$UrANiOS1QxZFbljYYnbdWOMRo3MjjWn5pfhZnNBEHJUXHEbv1Eknm', '$2y$10$9vY2Bz5j3n1ZkD31EBfrUeOPnuXBv2S0sCr5uF/qyB8ntWqdipr3m', '013568984', NULL, 'superadmin', 0, 1, '2018-06-22 04:14:27', '2018-06-22 04:14:27', 0, '752c930f4e9ae25204203be4a5690c6891d11d2a386ef9cdfc991a370a83965b', '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `do_no` int(11) NOT NULL,
  `total_items` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `order_from` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `invoice_id`, `do_no`, `total_items`, `status`, `order_from`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 100000000, 1, 'Shipping', '', '2017-07-19', '2017-10-12'),
(2, 3, 2, 100000001, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(3, 4, 3, 100000001, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(4, 14, 4, 100000002, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(5, 15, 5, 100000003, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(6, 16, 6, 100000004, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(7, 36, 7, 100000005, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(8, 53, 8, 100000006, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(9, 68, 9, 100000007, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(10, 2, 1, 100000008, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(11, 3, 2, 100000009, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(12, 4, 3, 100000010, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(13, 14, 4, 100000011, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(14, 15, 5, 100000012, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(15, 16, 6, 100000013, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(16, 36, 7, 100000014, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(17, 53, 8, 100000015, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(18, 68, 9, 100000016, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(19, 5, 10, 100000017, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(20, 17, 11, 100000018, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(21, 18, 12, 100000019, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(22, 19, 13, 100000020, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(23, 20, 14, 100000021, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(24, 37, 15, 100000022, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(25, 38, 16, 100000023, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(26, 39, 17, 100000024, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(27, 40, 18, 100000025, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(28, 41, 19, 100000026, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(29, 54, 20, 100000027, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(30, 55, 21, 100000028, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(31, 56, 22, 100000029, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(32, 57, 23, 100000030, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(33, 69, 24, 100000031, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(34, 70, 25, 100000032, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(35, 71, 26, 100000033, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(36, 80, 27, 100000034, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(37, 81, 28, 100000035, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(38, 6, 33, 100000036, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(39, 7, 34, 100000037, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(40, 8, 35, 100000038, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(41, 21, 36, 100000039, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(42, 22, 37, 100000040, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(43, 23, 38, 100000041, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(44, 42, 39, 100000042, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(45, 58, 40, 100000043, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(46, 72, 41, 100000044, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(47, 9, 42, 100000045, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(48, 24, 43, 100000046, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(49, 25, 44, 100000047, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(50, 26, 45, 100000048, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(51, 27, 46, 100000049, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(52, 93, 47, 100000050, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(53, 89, 48, 100000051, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(54, 90, 49, 100000052, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(55, 91, 50, 100000053, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(56, 92, 51, 100000054, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(57, 10, 52, 100000055, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(58, 11, 53, 100000056, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(59, 12, 54, 100000057, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(60, 28, 55, 100000058, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(61, 29, 56, 100000059, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(62, 30, 57, 100000060, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(63, 31, 58, 100000061, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(64, 48, 59, 100000062, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(65, 63, 60, 100000063, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(66, 76, 61, 100000064, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(67, 13, 62, 100000065, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(68, 32, 63, 100000066, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(69, 33, 64, 100000067, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(70, 34, 65, 100000068, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(71, 35, 66, 100000069, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(72, 94, 67, 100000070, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(73, 95, 68, 100000071, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(74, 49, 69, 100000072, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(75, 50, 70, 100000073, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(76, 51, 71, 100000074, 2, 'New Order', '', '2017-07-19', '2017-07-19'),
(77, 52, 72, 100000075, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(78, 64, 73, 100000076, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(79, 65, 74, 100000077, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(80, 66, 75, 100000078, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(81, 67, 76, 100000079, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(82, 77, 77, 100000080, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(83, 78, 78, 100000081, 15, 'New Order', '', '2017-07-19', '2017-07-19'),
(84, 79, 79, 100000082, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(85, 84, 80, 100000083, 3, 'New Order', '', '2017-07-19', '2017-07-19'),
(86, 85, 81, 100000084, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(87, 86, 82, 100000085, 1, 'New Order', '', '2017-07-19', '2017-07-19'),
(88, 87, 83, 100000086, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(89, 88, 84, 100000087, 72, 'New Order', '', '2017-07-19', '2017-07-19'),
(90, 96, 85, 100000088, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(91, 97, 86, 100000089, 15, 'New Order', '', '2017-07-20', '2017-07-20'),
(92, 98, 87, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(93, 99, 88, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(94, 100, 89, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(95, 101, 90, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(96, 102, 91, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(97, 103, 92, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(98, 104, 93, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(99, 105, 94, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(100, 106, 95, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(101, 107, 96, 100000089, 15, 'New Order', '', '2017-07-20', '2017-07-20'),
(102, 108, 97, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(103, 109, 98, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(104, 110, 99, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(105, 111, 100, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(106, 112, 101, 100000089, 15, 'New Order', '', '2017-07-20', '2017-07-20'),
(107, 113, 102, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(108, 114, 103, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(109, 115, 104, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(110, 116, 105, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(111, 117, 106, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(112, 118, 107, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(113, 119, 108, 100000089, 2, 'New Order', '', '2017-07-20', '2017-07-20'),
(114, 120, 109, 100000089, 2, 'New Order', '', '2017-07-20', '2017-07-20'),
(115, 121, 110, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(116, 122, 111, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(117, 123, 112, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(118, 124, 113, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(119, 125, 114, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(120, 126, 115, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(121, 127, 116, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(122, 128, 117, 100000089, 2, 'New Order', '', '2017-07-20', '2017-07-20'),
(123, 129, 118, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(124, 130, 119, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(125, 131, 120, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(126, 132, 121, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(127, 133, 122, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(128, 134, 123, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(129, 135, 124, 100000089, 15, 'New Order', '', '2017-07-20', '2017-07-20'),
(130, 136, 125, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(131, 137, 126, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(132, 138, 127, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(133, 139, 128, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(134, 140, 129, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(135, 141, 130, 100000089, 72, 'New Order', '', '2017-07-20', '2017-07-20'),
(136, 43, 131, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(137, 44, 132, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(138, 45, 133, 100000089, 2, 'New Order', '', '2017-07-20', '2017-07-20'),
(139, 46, 134, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(140, 47, 135, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(141, 59, 136, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(142, 60, 137, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(143, 61, 138, 100000089, 2, 'New Order', '', '2017-07-20', '2017-07-20'),
(144, 62, 139, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(145, 73, 140, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(146, 74, 141, 100000089, 2, 'New Order', '', '2017-07-20', '2017-07-20'),
(147, 75, 142, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(148, 82, 143, 100000089, 3, 'New Order', '', '2017-07-20', '2017-07-20'),
(149, 83, 144, 100000089, 1, 'New Order', '', '2017-07-20', '2017-07-20'),
(150, 2, 145, 100000089, 3, 'New Order', '', '2018-01-18', '2018-01-18'),
(151, 2, 146, 100000090, 3, 'New Order', '', '2018-01-18', '2018-01-18'),
(152, 6, 147, 100000091, 10, 'New Order', '', '2018-01-18', '2018-01-18'),
(153, 10, 148, 100000092, 5, 'New Order', '', '2018-01-18', '2018-01-18'),
(154, 10, 149, 100000093, 2, 'Pending', '', '2018-04-17', '2018-04-17'),
(155, 11, 150, 100000094, 2, 'New Order', '', '2018-04-18', '2018-04-18'),
(156, 13, 4, 100000000, 2, 'New Order', '', '2018-04-25', '2018-04-25'),
(157, 13, 5, 100000000, 0, 'Pending', '', '2018-04-25', '2018-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_no` text NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `serial_no`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[\"12312313\"]', 1, '2017-07-19', '2017-10-12'),
(2, 2, 1, '', 3, '2017-07-19', '2017-07-19'),
(3, 3, 1, '', 15, '2017-07-19', '2017-07-19'),
(4, 4, 1, '', 3, '2017-07-19', '2017-07-19'),
(5, 5, 1, '', 15, '2017-07-19', '2017-07-19'),
(6, 6, 1, '', 72, '2017-07-19', '2017-07-19'),
(7, 7, 1, '', 3, '2017-07-19', '2017-07-19'),
(8, 8, 1, '', 3, '2017-07-19', '2017-07-19'),
(9, 9, 1, '', 1, '2017-07-19', '2017-07-19'),
(10, 10, 1, '', 1, '2017-07-19', '2017-07-19'),
(11, 11, 1, '', 3, '2017-07-19', '2017-07-19'),
(12, 12, 1, '', 15, '2017-07-19', '2017-07-19'),
(13, 13, 1, '', 3, '2017-07-19', '2017-07-19'),
(14, 14, 1, '', 15, '2017-07-19', '2017-07-19'),
(15, 15, 1, '', 72, '2017-07-19', '2017-07-19'),
(16, 16, 1, '', 3, '2017-07-19', '2017-07-19'),
(17, 17, 1, '', 3, '2017-07-19', '2017-07-19'),
(18, 18, 1, '', 1, '2017-07-19', '2017-07-19'),
(19, 19, 1, '', 72, '2017-07-19', '2017-07-19'),
(20, 20, 1, '', 15, '2017-07-19', '2017-07-19'),
(21, 21, 1, '', 1, '2017-07-19', '2017-07-19'),
(22, 22, 1, '', 3, '2017-07-19', '2017-07-19'),
(23, 23, 1, '', 72, '2017-07-19', '2017-07-19'),
(24, 24, 1, '', 1, '2017-07-19', '2017-07-19'),
(25, 25, 1, '', 3, '2017-07-19', '2017-07-19'),
(26, 26, 1, '', 15, '2017-07-19', '2017-07-19'),
(27, 27, 1, '', 3, '2017-07-19', '2017-07-19'),
(28, 28, 1, '', 1, '2017-07-19', '2017-07-19'),
(29, 29, 1, '', 3, '2017-07-19', '2017-07-19'),
(30, 30, 1, '', 1, '2017-07-19', '2017-07-19'),
(31, 31, 1, '', 72, '2017-07-19', '2017-07-19'),
(32, 32, 1, '', 1, '2017-07-19', '2017-07-19'),
(33, 33, 1, '', 1, '2017-07-19', '2017-07-19'),
(34, 34, 1, '', 15, '2017-07-19', '2017-07-19'),
(35, 35, 1, '', 3, '2017-07-19', '2017-07-19'),
(36, 36, 1, '', 3, '2017-07-19', '2017-07-19'),
(37, 37, 1, '', 1, '2017-07-19', '2017-07-19'),
(38, 38, 1, '', 1, '2017-07-19', '2017-07-19'),
(39, 39, 1, '', 3, '2017-07-19', '2017-07-19'),
(40, 40, 1, '', 2, '2017-07-19', '2017-07-19'),
(41, 41, 1, '', 3, '2017-07-19', '2017-07-19'),
(42, 42, 1, '', 2, '2017-07-19', '2017-07-19'),
(43, 43, 1, '', 2, '2017-07-19', '2017-07-19'),
(44, 44, 1, '', 3, '2017-07-19', '2017-07-19'),
(45, 45, 1, '', 3, '2017-07-19', '2017-07-19'),
(46, 46, 1, '', 1, '2017-07-19', '2017-07-19'),
(47, 47, 1, '', 2, '2017-07-19', '2017-07-19'),
(48, 48, 1, '', 2, '2017-07-19', '2017-07-19'),
(49, 49, 1, '', 1, '2017-07-19', '2017-07-19'),
(50, 50, 1, '', 3, '2017-07-19', '2017-07-19'),
(51, 51, 1, '', 2, '2017-07-19', '2017-07-19'),
(52, 52, 1, '', 2, '2017-07-19', '2017-07-19'),
(53, 53, 1, '', 72, '2017-07-19', '2017-07-19'),
(54, 54, 1, '', 72, '2017-07-19', '2017-07-19'),
(55, 55, 1, '', 72, '2017-07-19', '2017-07-19'),
(56, 56, 1, '', 72, '2017-07-19', '2017-07-19'),
(57, 57, 1, '', 1, '2017-07-19', '2017-07-19'),
(58, 58, 1, '', 3, '2017-07-19', '2017-07-19'),
(59, 59, 1, '', 2, '2017-07-19', '2017-07-19'),
(60, 60, 1, '', 1, '2017-07-19', '2017-07-19'),
(61, 61, 1, '', 3, '2017-07-19', '2017-07-19'),
(62, 62, 1, '', 15, '2017-07-19', '2017-07-19'),
(63, 63, 1, '', 72, '2017-07-19', '2017-07-19'),
(64, 64, 1, '', 3, '2017-07-19', '2017-07-19'),
(65, 65, 1, '', 3, '2017-07-19', '2017-07-19'),
(66, 66, 1, '', 1, '2017-07-19', '2017-07-19'),
(67, 67, 1, '', 2, '2017-07-19', '2017-07-19'),
(68, 68, 1, '', 2, '2017-07-19', '2017-07-19'),
(69, 69, 1, '', 1, '2017-07-19', '2017-07-19'),
(70, 70, 1, '', 3, '2017-07-19', '2017-07-19'),
(71, 71, 1, '', 72, '2017-07-19', '2017-07-19'),
(72, 72, 1, '', 72, '2017-07-19', '2017-07-19'),
(73, 73, 1, '', 72, '2017-07-19', '2017-07-19'),
(74, 74, 1, '', 1, '2017-07-19', '2017-07-19'),
(75, 75, 1, '', 3, '2017-07-19', '2017-07-19'),
(76, 76, 1, '', 2, '2017-07-19', '2017-07-19'),
(77, 77, 1, '', 3, '2017-07-19', '2017-07-19'),
(78, 78, 1, '', 3, '2017-07-19', '2017-07-19'),
(79, 79, 1, '', 1, '2017-07-19', '2017-07-19'),
(80, 80, 1, '', 72, '2017-07-19', '2017-07-19'),
(81, 81, 1, '', 1, '2017-07-19', '2017-07-19'),
(82, 82, 1, '', 1, '2017-07-19', '2017-07-19'),
(83, 83, 1, '', 15, '2017-07-19', '2017-07-19'),
(84, 84, 1, '', 3, '2017-07-19', '2017-07-19'),
(85, 85, 1, '', 3, '2017-07-19', '2017-07-19'),
(86, 86, 1, '', 72, '2017-07-19', '2017-07-19'),
(87, 87, 1, '', 1, '2017-07-19', '2017-07-19'),
(88, 88, 1, '', 72, '2017-07-19', '2017-07-19'),
(89, 89, 1, '', 72, '2017-07-19', '2017-07-19'),
(90, 90, 1, '', 72, '2017-07-20', '2017-07-20'),
(91, 91, 1, '', 15, '2017-07-20', '2017-07-20'),
(92, 92, 1, '', 1, '2017-07-20', '2017-07-20'),
(93, 93, 1, '', 3, '2017-07-20', '2017-07-20'),
(94, 94, 1, '', 72, '2017-07-20', '2017-07-20'),
(95, 95, 1, '', 72, '2017-07-20', '2017-07-20'),
(96, 96, 1, '', 72, '2017-07-20', '2017-07-20'),
(97, 97, 1, '', 72, '2017-07-20', '2017-07-20'),
(98, 98, 1, '', 72, '2017-07-20', '2017-07-20'),
(99, 99, 1, '', 1, '2017-07-20', '2017-07-20'),
(100, 100, 1, '', 3, '2017-07-20', '2017-07-20'),
(101, 101, 1, '', 15, '2017-07-20', '2017-07-20'),
(102, 102, 1, '', 3, '2017-07-20', '2017-07-20'),
(103, 103, 1, '', 1, '2017-07-20', '2017-07-20'),
(104, 104, 1, '', 72, '2017-07-20', '2017-07-20'),
(105, 105, 1, '', 1, '2017-07-20', '2017-07-20'),
(106, 106, 1, '', 15, '2017-07-20', '2017-07-20'),
(107, 107, 1, '', 3, '2017-07-20', '2017-07-20'),
(108, 108, 1, '', 3, '2017-07-20', '2017-07-20'),
(109, 109, 1, '', 1, '2017-07-20', '2017-07-20'),
(110, 110, 1, '', 3, '2017-07-20', '2017-07-20'),
(111, 111, 1, '', 1, '2017-07-20', '2017-07-20'),
(112, 112, 1, '', 1, '2017-07-20', '2017-07-20'),
(113, 113, 1, '', 2, '2017-07-20', '2017-07-20'),
(114, 114, 1, '', 2, '2017-07-20', '2017-07-20'),
(115, 115, 1, '', 1, '2017-07-20', '2017-07-20'),
(116, 116, 1, '', 3, '2017-07-20', '2017-07-20'),
(117, 117, 1, '', 72, '2017-07-20', '2017-07-20'),
(118, 118, 1, '', 72, '2017-07-20', '2017-07-20'),
(119, 119, 1, '', 72, '2017-07-20', '2017-07-20'),
(120, 120, 1, '', 1, '2017-07-20', '2017-07-20'),
(121, 121, 1, '', 3, '2017-07-20', '2017-07-20'),
(122, 122, 1, '', 2, '2017-07-20', '2017-07-20'),
(123, 123, 1, '', 3, '2017-07-20', '2017-07-20'),
(124, 124, 1, '', 3, '2017-07-20', '2017-07-20'),
(125, 125, 1, '', 1, '2017-07-20', '2017-07-20'),
(126, 126, 1, '', 72, '2017-07-20', '2017-07-20'),
(127, 127, 1, '', 1, '2017-07-20', '2017-07-20'),
(128, 128, 1, '', 1, '2017-07-20', '2017-07-20'),
(129, 129, 1, '', 15, '2017-07-20', '2017-07-20'),
(130, 130, 1, '', 3, '2017-07-20', '2017-07-20'),
(131, 131, 1, '', 3, '2017-07-20', '2017-07-20'),
(132, 132, 1, '', 72, '2017-07-20', '2017-07-20'),
(133, 133, 1, '', 1, '2017-07-20', '2017-07-20'),
(134, 134, 1, '', 72, '2017-07-20', '2017-07-20'),
(135, 135, 1, '', 72, '2017-07-20', '2017-07-20'),
(136, 136, 1, '', 1, '2017-07-20', '2017-07-20'),
(137, 137, 1, '', 3, '2017-07-20', '2017-07-20'),
(138, 138, 1, '', 2, '2017-07-20', '2017-07-20'),
(139, 139, 1, '', 3, '2017-07-20', '2017-07-20'),
(140, 140, 1, '', 1, '2017-07-20', '2017-07-20'),
(141, 141, 1, '', 3, '2017-07-20', '2017-07-20'),
(142, 142, 1, '', 1, '2017-07-20', '2017-07-20'),
(143, 143, 1, '', 2, '2017-07-20', '2017-07-20'),
(144, 144, 1, '', 1, '2017-07-20', '2017-07-20'),
(145, 145, 1, '', 1, '2017-07-20', '2017-07-20'),
(146, 146, 1, '', 2, '2017-07-20', '2017-07-20'),
(147, 147, 1, '', 3, '2017-07-20', '2017-07-20'),
(148, 148, 1, '', 3, '2017-07-20', '2017-07-20'),
(149, 149, 1, '', 1, '2017-07-20', '2017-07-20'),
(150, 150, 1, '', 2, '2017-10-23', '2017-10-23'),
(151, 151, 1, '', 2, '2017-10-23', '2017-10-23'),
(152, 152, 1, '', 2, '2017-10-23', '2017-10-23'),
(153, 153, 1, '', 2, '2017-10-23', '2017-10-23'),
(154, 154, 1, '', 2, '2017-10-23', '2017-10-23'),
(155, 155, 1, '', 2, '2017-10-23', '2017-10-23'),
(156, 156, 1, '', 2, '2017-10-23', '2017-10-23'),
(157, 157, 1, '', 2, '2017-10-23', '2017-10-23'),
(158, 158, 1, '', 3, '2017-10-23', '2017-10-23'),
(159, 150, 1, '', 3, '2018-01-18', '2018-01-18'),
(160, 151, 1, '', 3, '2018-01-18', '2018-01-18'),
(161, 152, 11, '', 10, '2018-01-18', '2018-01-18'),
(162, 153, 9, '', 5, '2018-01-18', '2018-01-18'),
(163, 155, 1, '', 1, '2018-04-18', '2018-04-18'),
(164, 155, 2, '', 1, '2018-04-18', '2018-04-18'),
(165, 156, 1, '', 1, '2018-04-25', '2018-04-25'),
(166, 156, 2, '', 1, '2018-04-25', '2018-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `code` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `cost_price_em` int(11) NOT NULL,
  `cost_price_wm` int(11) NOT NULL,
  `em_price` float NOT NULL,
  `wm_price` int(11) NOT NULL,
  `wm_gst` float NOT NULL,
  `em_gst` float NOT NULL,
  `pv` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `brochure` varchar(255) NOT NULL,
  `instock` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `code`, `category`, `serial_no`, `cost_price_em`, `cost_price_wm`, `em_price`, `wm_price`, `wm_gst`, `em_gst`, `pv`, `description`, `brochure`, `instock`, `created_at`, `updated_at`, `supplier_id`) VALUES
(1, 'Femalov', 'FMLV', 'Category 1', 0, 210, 210, 217, 210, 0, 0, 70, 'For Women', 'brochures/asdasd/1477476927.png', 748, '2016-10-26 10:15:27', '2017-09-26 09:57:17', 1),
(2, 'Right Solution', 'RGTSLTN', 'Category 1', 0, 210, 210, 260, 252, 0, 0, 85, '123as sdfsdf s', 'brochures/asdasd/1477476990.png', 20, '2016-10-26 10:16:30', '2017-05-08 10:06:38', 1),
(3, 'Plus Minus', 'PLSMNS', 'Category 1', 0, 122, 122, 292, 284, 0, 0, 95, 'qwewqdqweq', 'brochures/qweqe/1477477085.png', 300, '2016-10-26 10:18:05', '2017-05-08 10:06:17', 1),
(4, 'Arteristic', 'ARTRTC', 'Category 1', 0, 122, 122, 217, 210, 0, 0, 70, 'qwewqdqweq', 'brochures/qweqe/1477477130.png', 0, '2016-10-26 10:18:50', '2017-05-08 09:57:59', 1),
(5, 'H2 Zeta Micron', 'H2ZTMCRN', 'Category 1', 0, 245, 245, 252, 245, 0, 0, 82, 'RAYA PROMO', 'brochures/Hari Raya Package 1/1477628861.png', 0, '2016-10-28 04:27:41', '2017-05-08 10:07:00', 1),
(6, 'H2 Zeta Mist Spray 150ML', 'HRP12', 'Category 1', 0, 123, 123, 237, 230, 0, 0, 78, 'RAYA PROMO', 'brochures/Hari Raya Package 1/1477628930.png', 0, '2016-10-28 04:28:50', '2017-05-08 09:58:49', 1),
(7, 'H2 Zeta Mist Spray 65ML', 'HZMS65ML', 'Category 1', 0, 284, 284, 113, 107, 0, 0, 36, 'RAYA PROMO 2 2016', 'brochures/Hari Raya Package /1477637300.png', 0, '2016-10-28 06:48:20', '2017-05-08 10:00:11', 1),
(8, 'Fixes Mini Essential', 'FXSMNESS', 'Category 1', 0, 252, 252, 395, 388, 0, 0, 124, 'RAYA PROMO 2 2016', 'brochures/Hari Raya Package /1477637300.png', 0, '2016-10-28 06:48:20', '2017-05-08 10:07:27', 1),
(9, 'Fixes Combo', 'FXSC', 'Category 1', 0, 168, 168, 1006, 999, 0, 0, 320, 'RAYA PROMO 2 2016', 'brochures/Hari Raya Package /1477637300.png', 0, '2016-10-28 06:48:20', '2017-05-08 10:01:29', 1),
(10, 'Pure I', 'PR1', 'Category 1', NULL, 237, 230, 135, 128, 0, 0, 41, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:02:20', NULL),
(11, 'Flawless II', 'FLWSII', 'Category 1', NULL, 237, 230, 375, 368, 0, 0, 118, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:03:27', NULL),
(12, 'Surface III', 'SFCIII', 'Category 1', NULL, 237, 230, 295, 288, 0, 0, 92, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:04:10', NULL),
(13, 'Nourish IV', 'NRSIV', 'Category 1', NULL, 237, 230, 345, 338, 0, 0, 108, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:04:49', NULL),
(14, 'Clarity', 'CLTY', 'Category 1', NULL, 237, 230, 175, 168, 0, 0, 54, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:05:21', NULL),
(15, 'Cover', 'CVR', 'Category 1', NULL, 237, 230, 235, 228, 0, 0, 73, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:05:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user1@mail.com', '$2y$10$8HndFM1a06lYUuFlV0vV6.bkxnF27YNKehbPP9KMzupYpzazUzlvG', '2017-09-14 01:44:23'),
('user2@mail.com', '$2y$10$PlVEZsKCYBzFNl.idh3pyujY.yjuQLK/9xFy2MoVxAS4sGh3MYK/i', '2017-09-14 01:48:37'),
('superadmin@mail.com', '$2y$10$RkReJ3uNXhgsNOt/0GpSNuD8WiskBGZsOo7AmwdJ78tkFP5RUfq/y', '2017-09-14 01:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cash` float NOT NULL,
  `voucher` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `ewallet` int(11) NOT NULL,
  `credit_debit_card` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `amount`, `cash`, `voucher`, `coupon`, `ewallet`, `credit_debit_card`, `online`, `payment_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(2, 2, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(3, 3, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(4, 4, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(5, 5, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(6, 6, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(7, 7, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(8, 8, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(9, 9, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(10, 10, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(11, 11, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(12, 12, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(13, 13, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(14, 14, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(15, 15, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(16, 16, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(17, 17, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(18, 18, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(19, 19, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(20, 20, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(21, 21, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(22, 22, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(23, 23, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(24, 24, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(25, 25, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(26, 26, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(27, 27, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(28, 28, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(29, 29, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(30, 30, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(31, 31, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(32, 32, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(33, 33, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(34, 34, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(35, 35, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(36, 36, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(37, 37, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(38, 38, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(39, 39, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(40, 40, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(41, 41, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(42, 42, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(43, 43, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(44, 44, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(45, 45, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(46, 46, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(47, 47, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(48, 48, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(49, 49, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(50, 50, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(51, 51, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(52, 52, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(53, 53, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(54, 54, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(55, 55, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(56, 56, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(57, 57, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(58, 58, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(59, 59, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(60, 60, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(61, 61, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(62, 62, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(63, 63, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(64, 64, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(65, 65, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(66, 66, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(67, 67, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(68, 68, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(69, 69, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(70, 70, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(71, 71, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(72, 72, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(73, 73, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(74, 74, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(75, 75, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(76, 76, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(77, 77, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(78, 78, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(79, 79, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(80, 80, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(81, 81, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(82, 82, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(83, 83, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(84, 84, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-19', '2017-07-19'),
(85, 85, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(86, 86, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(87, 87, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(88, 88, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(89, 89, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(90, 90, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(91, 91, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(92, 92, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(93, 93, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(94, 94, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(95, 95, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(96, 96, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(97, 97, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(98, 98, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(99, 99, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(100, 100, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(101, 101, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(102, 102, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(103, 103, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(104, 104, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(105, 105, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(106, 106, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(107, 107, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(108, 108, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(109, 109, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(110, 110, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(111, 111, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(112, 112, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(113, 113, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(114, 114, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(115, 115, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(116, 116, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(117, 117, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(118, 118, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(119, 119, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(120, 120, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(121, 121, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(122, 122, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(123, 123, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(124, 124, 0, 3150, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(125, 125, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(126, 126, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(127, 127, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(128, 128, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(129, 129, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(130, 130, 0, 15120, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(131, 131, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(132, 132, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(133, 133, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(134, 134, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(135, 135, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(136, 136, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(137, 137, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(138, 138, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(139, 139, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(140, 140, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(141, 141, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(142, 142, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(143, 143, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(144, 144, 0, 210, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-07-20', '2017-07-20'),
(145, 145, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(146, 146, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(147, 147, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(148, 148, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(149, 149, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(150, 150, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(151, 151, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(152, 152, 0, 420, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(153, 153, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2017-10-23', '2017-10-23'),
(154, 145, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-01-18', '2018-01-18'),
(155, 146, 0, 630, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-01-18', '2018-01-18'),
(156, 147, 0, 3680, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-01-18', '2018-01-18'),
(157, 148, 0, 4995, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-01-18', '2018-01-18'),
(158, 149, 0, 592.02, 0, 0, 0, 0, 0, 'Cash', 'Partially Paid', '2018-04-17', '2018-04-17'),
(159, 150, 0, 559.02, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-04-18', '2018-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT '1: by item, 2: package 3: monthly promotion',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtytype_id` int(11) NOT NULL DEFAULT '1' COMMENT 'Quantity Type',
  `year` int(11) NOT NULL DEFAULT '1900',
  `month` int(11) NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `price_wm` double(12,2) NOT NULL DEFAULT '0.00' COMMENT 'price bfr gst',
  `price_em` double(12,2) NOT NULL DEFAULT '0.00' COMMENT 'price bfr gst',
  `price_staff` double(12,2) NOT NULL DEFAULT '0.00' COMMENT 'price bfr gst',
  `last_purchase` double(12,2) NOT NULL DEFAULT '0.00' COMMENT 'last purchase price',
  `point` int(11) NOT NULL DEFAULT '0',
  `weight` double(8,2) NOT NULL DEFAULT '0.00',
  `notforsale` int(11) NOT NULL DEFAULT '0' COMMENT '0: No, 1: Yes',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0: inactive, 1: active, 2: draft',
  `quantity_min` int(11) NOT NULL DEFAULT '0' COMMENT 'minimum stock (reminder)',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT 'curent stock',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Remarks back end',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_old`
--

CREATE TABLE `products_old` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `code` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `cost_price_em` int(11) NOT NULL,
  `cost_price_wm` int(11) NOT NULL,
  `em_price` float NOT NULL,
  `wm_price` int(11) NOT NULL,
  `wm_gst` float NOT NULL,
  `em_gst` float NOT NULL,
  `pv` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `brochure` varchar(255) NOT NULL,
  `instock` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='x guna';

--
-- Dumping data for table `products_old`
--

INSERT INTO `products_old` (`id`, `name`, `code`, `category`, `serial_no`, `cost_price_em`, `cost_price_wm`, `em_price`, `wm_price`, `wm_gst`, `em_gst`, `pv`, `description`, `brochure`, `instock`, `created_at`, `updated_at`, `supplier_id`) VALUES
(1, 'Femalov', 'FMLV', 'Category 1', 0, 210, 210, 217, 210, 0, 0, 70, 'For Women', 'brochures/asdasd/1477476927.png', 748, '2016-10-26 10:15:27', '2017-09-26 09:57:17', 1),
(2, 'Right Solution', 'RGTSLTN', 'Category 1', 0, 210, 210, 260, 252, 0, 0, 85, '123as sdfsdf s', 'brochures/asdasd/1477476990.png', 20, '2016-10-26 10:16:30', '2017-05-08 10:06:38', 1),
(3, 'Plus Minus', 'PLSMNS', 'Category 1', 0, 122, 122, 292, 284, 0, 0, 95, 'qwewqdqweq', 'brochures/qweqe/1477477085.png', 300, '2016-10-26 10:18:05', '2017-05-08 10:06:17', 1),
(4, 'Arteristic', 'ARTRTC', 'Category 1', 0, 122, 122, 217, 210, 0, 0, 70, 'qwewqdqweq', 'brochures/qweqe/1477477130.png', 0, '2016-10-26 10:18:50', '2017-05-08 09:57:59', 1),
(5, 'H2 Zeta Micron', 'H2ZTMCRN', 'Category 1', 0, 245, 245, 252, 245, 0, 0, 82, 'RAYA PROMO', 'brochures/Hari Raya Package 1/1477628861.png', 0, '2016-10-28 04:27:41', '2017-05-08 10:07:00', 1),
(6, 'H2 Zeta Mist Spray 150ML', 'HRP12', 'Category 1', 0, 123, 123, 237, 230, 0, 0, 78, 'RAYA PROMO', 'brochures/Hari Raya Package 1/1477628930.png', 0, '2016-10-28 04:28:50', '2017-05-08 09:58:49', 1),
(7, 'H2 Zeta Mist Spray 65ML', 'HZMS65ML', 'Category 1', 0, 284, 284, 113, 107, 0, 0, 36, 'RAYA PROMO 2 2016', 'brochures/Hari Raya Package /1477637300.png', 0, '2016-10-28 06:48:20', '2017-05-08 10:00:11', 1),
(8, 'Fixes Mini Essential', 'FXSMNESS', 'Category 1', 0, 252, 252, 395, 388, 0, 0, 124, 'RAYA PROMO 2 2016', 'brochures/Hari Raya Package /1477637300.png', 0, '2016-10-28 06:48:20', '2017-05-08 10:07:27', 1),
(9, 'Fixes Combo', 'FXSC', 'Category 1', 0, 168, 168, 1006, 999, 0, 0, 320, 'RAYA PROMO 2 2016', 'brochures/Hari Raya Package /1477637300.png', 0, '2016-10-28 06:48:20', '2017-05-08 10:01:29', 1),
(10, 'Pure I', 'PR1', 'Category 1', NULL, 237, 230, 135, 128, 0, 0, 41, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:02:20', NULL),
(11, 'Flawless II', 'FLWSII', 'Category 1', NULL, 237, 230, 375, 368, 0, 0, 118, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:03:27', NULL),
(12, 'Surface III', 'SFCIII', 'Category 1', NULL, 237, 230, 295, 288, 0, 0, 92, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:04:10', NULL),
(13, 'Nourish IV', 'NRSIV', 'Category 1', NULL, 237, 230, 345, 338, 0, 0, 108, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:04:49', NULL),
(14, 'Clarity', 'CLTY', 'Category 1', NULL, 237, 230, 175, 168, 0, 0, 54, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:05:21', NULL),
(15, 'Cover', 'CVR', 'Category 1', NULL, 237, 230, 235, 228, 0, 0, 73, 'Spray', 'brochures/H2 Zeta Mist Spray 150ml/1492141861.png', NULL, '2017-04-14 03:51:01', '2017-05-08 10:05:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT 'product id',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'type',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'image name',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url image',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1: profile, 0: none',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_packages`
--

CREATE TABLE `product_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'package product id',
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT 'product id',
  `quantity` int(11) NOT NULL DEFAULT '1' COMMENT 'quantity product',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_promotions`
--

CREATE TABLE `product_promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT 'product id',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'remarks',
  `price_checked` int(11) NOT NULL DEFAULT '0' COMMENT 'promotion price',
  `gift_checked` int(11) NOT NULL DEFAULT '0' COMMENT 'promotion gift',
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `price_wm` double(12,2) NOT NULL DEFAULT '0.00' COMMENT 'promotion bfr gst',
  `price_em` double(12,2) NOT NULL DEFAULT '0.00' COMMENT 'promotion bfr gst',
  `price_staff` double(12,2) NOT NULL DEFAULT '0.00' COMMENT 'promotion bfr gst',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1: On, 0: Off',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_promotion_gifts`
--

CREATE TABLE `product_promotion_gifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `promotion_id` int(11) NOT NULL DEFAULT '0' COMMENT 'promotion id',
  `product_id` int(11) NOT NULL DEFAULT '0' COMMENT 'product id',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT 'quantity',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'remarks',
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` float NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `product_id`, `quantity`, `amount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(2, 1, 3, 630, 9, 2016, '2016-10-23', '2016-10-23'),
(3, 1, 3, 630, 10, 2016, '2016-10-23', '2016-10-23'),
(6, 2, 3, 630, 9, 2016, '2016-10-23', '2016-10-23'),
(7, 2, 3, 630, 10, 2016, '2016-10-23', '2016-10-23'),
(8, 1, 4, 840, 9, 2017, '2017-10-23', '2017-10-23'),
(9, 1, 6, 1260, 10, 2017, '2017-10-23', '2017-10-23'),
(10, 2, 4, 840, 9, 2017, '2017-10-23', '2017-10-23'),
(11, 2, 6, 1260, 10, 2017, '2017-10-23', '2017-10-23'),
(12, 3, 6, 1260, 10, 2017, '2017-10-23', '2017-10-23'),
(13, 0, 3, 630, 1, 2018, '2018-01-18', '2018-01-18'),
(14, 0, 3, 630, 1, 2018, '2018-01-18', '2018-01-18'),
(15, 0, 10, 3680, 1, 2018, '2018-01-18', '2018-01-18'),
(16, 0, 5, 4995, 1, 2018, '2018-01-18', '2018-01-18'),
(17, 0, 1, 210, 4, 2018, '2018-04-18', '2018-04-18'),
(18, 0, 1, 252, 4, 2018, '2018-04-18', '2018-04-18'),
(19, 1, 1, 210, 4, 2018, '2018-04-25', '2018-04-25'),
(20, 2, 1, 252, 4, 2018, '2018-04-25', '2018-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `product_serial_numbers`
--

CREATE TABLE `product_serial_numbers` (
  `id` int(10) UNSIGNED NOT NULL,
  `serial_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_in_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_adjustment_id` int(11) DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `profileable_id` int(11) NOT NULL,
  `profileable_type` varchar(100) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `marital_status` enum('Single','Married','Widowed') NOT NULL,
  `id_type` enum('MyKad','Passport') NOT NULL,
  `id_no` varchar(30) NOT NULL,
  `id_pic` varchar(255) DEFAULT NULL,
  `status_ic` enum('Approved','Pending','Not Valid') NOT NULL,
  `street` varchar(255) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_no` varchar(14) NOT NULL,
  `contact_no2` varchar(14) DEFAULT NULL,
  `beneficiary_name` varchar(150) NOT NULL,
  `relationship` varchar(30) NOT NULL,
  `beneficiary_address` text NOT NULL,
  `beneficiary_mobile_no` varchar(14) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `profileable_id`, `profileable_type`, `full_name`, `dob`, `gender`, `marital_status`, `id_type`, `id_no`, `id_pic`, `status_ic`, `street`, `postcode`, `city`, `state`, `country`, `contact_no`, `contact_no2`, `beneficiary_name`, `relationship`, `beneficiary_address`, `beneficiary_mobile_no`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Admin', 'Administrator', '0000-00-00', 'Male', 'Single', 'MyKad', '111111111111', '', 'Pending', '1111111111', '11111111', '111111', '1111111', 'Malaysia', '11111111111111', '11111111111111', '', '', '', '', '2017-05-02 10:02:08', '2017-05-02 10:02:08'),
(2, 100, 'App\\User', 'user 100 Bin User 99', '0000-00-00', 'Male', 'Single', 'MyKad', '123123123', '', 'Approved', 'weqesdf', '65400', 'sdfasd', 'Sate', 'Malaysia', '123123123', '12312312312', '', '', '', '', '2017-10-12 05:01:47', '2017-10-12 05:01:47'),
(3, 1, 'App\\User', 'Moharaz', '0000-00-00', 'Male', 'Single', 'MyKad', '8546454684621', '', 'Approved', '1351 asd aqweq', '121651', 'awaw', 'wefdss', 'Malaysia', '01351616961', '0651658185', '', '', '', '', '2017-10-30 03:41:37', '2017-10-30 03:41:37'),
(4, 146, 'App\\User', 'jimbara tonceng', '2014-08-04', 'Male', '', '', '12313234234', NULL, 'Approved', 'asdasd', '123546', 'asdasd', 'qweqweqw', 'MALAYSIA', '123123123', '', '', '', '', '', '2018-01-26 15:49:05', '2018-01-26 15:49:05'),
(5, 147, 'App\\User', 'jimbara mata buta', '2014-08-04', 'Male', '', '', '12313234234', NULL, 'Approved', 'asdasd', '123546', 'asdasd', 'qweqweqw', 'MALAYSIA', '123123123', '', '', '', '', '', '2018-01-26 15:58:59', '2018-01-26 15:58:59'),
(6, 148, 'App\\User', 'test1', '2014-08-04', 'Male', '', '', '12313234234', NULL, 'Approved', 'asdasd', '123546', 'asdasd', 'qweqweqw', 'MALAYSIA', '123123123', '', '', '', '', '', '2018-01-26 16:12:53', '2018-01-26 16:12:53'),
(7, 149, 'App\\User', 'asdasda', '2014-08-04', 'Male', '', '', '123123123', NULL, 'Approved', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'MALAYSIA', '123123', '', '', '', '', '', '2018-03-01 19:14:13', '2018-03-01 19:14:13'),
(8, 150, 'App\\User', 'asdasdadsas', '2014-08-04', 'Male', '', '', '123123', NULL, 'Approved', 'asdasd', 'asdasd', 'asdasd', 'asdasd', 'MALAYSIA', '123123', '', '', '', '', '', '2018-03-02 15:55:23', '2018-03-02 15:55:23'),
(9, 151, 'App\\User', 'zxczxczxcz', '2014-08-04', 'Male', '', '', '123123', NULL, 'Approved', 'zxczxc', 'xczxc', 'zxczxc', 'xczxcz', 'MALAYSIA', '123123', '', '', '', '', '', '2018-03-02 16:11:34', '2018-03-02 16:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code_name` varchar(10) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `name`, `code_name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Customer', 'C', 0, '2016-11-21 07:34:33', '2016-11-21 07:34:33'),
(2, 'Loyal Customer', 'LC', 150, '2016-11-21 07:34:44', '2017-01-10 07:34:41'),
(3, 'Marketing Officer', 'MO', 1200, '2016-11-21 07:34:57', '2017-01-10 07:35:02'),
(4, 'District Officer', 'DO', 6800, '2016-11-21 07:35:13', '2017-01-10 07:45:22'),
(5, 'Senior District Officer', 'SDO', 15000, '2017-01-04 10:20:51', '2017-01-10 07:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `user_id`, `username`, `rank`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 282, 0, 1, 'user1', 'SDO', '2017-07-17', '2017-07-18'),
(2, 1, 2, 3, 1, 2, 'user2', 'LC', '2017-07-17', '2018-01-18'),
(3, 1, 4, 7, 1, 3, 'user3', 'LC', '2017-07-17', '2017-07-17'),
(4, 1, 8, 19, 1, 4, 'user4', 'MO', '2017-07-17', '2017-07-17'),
(5, 1, 20, 65, 1, 5, 'user5', 'DO', '2017-07-17', '2017-07-17'),
(6, 1, 66, 67, 1, 6, 'user6', 'LC', '2017-07-17', '2018-01-18'),
(7, 1, 68, 71, 1, 7, 'user7', 'LC', '2017-07-17', '2017-07-17'),
(8, 1, 72, 83, 1, 8, 'user8', 'MO', '2017-07-17', '2017-07-17'),
(9, 1, 84, 123, 1, 9, 'user9', 'DO', '2017-07-17', '2017-07-17'),
(10, 1, 124, 127, 1, 10, 'user10', 'MO', '2017-07-17', '2018-01-18'),
(11, 1, 128, 131, 1, 11, 'user11', 'LC', '2017-07-17', '2017-07-17'),
(12, 1, 132, 143, 1, 12, 'user12', 'MO', '2017-07-17', '2017-07-17'),
(13, 1, 144, 189, 1, 13, 'user13', 'DO', '2017-07-17', '2017-07-17'),
(14, 3, 5, 6, 2, 14, 'user14', 'LC', '2017-07-17', '2017-07-17'),
(15, 4, 9, 16, 2, 15, 'user15', 'MO', '2017-07-17', '2017-07-17'),
(16, 4, 17, 18, 2, 16, 'user16', 'DO', '2017-07-17', '2017-07-17'),
(17, 5, 21, 44, 2, 17, 'user17', 'MO', '2017-07-17', '2017-07-17'),
(18, 5, 45, 46, 2, 18, 'user18', 'C', '2017-07-17', '2017-07-17'),
(19, 5, 47, 54, 2, 19, 'user19', 'LC', '2017-07-17', '2017-07-17'),
(20, 5, 55, 56, 2, 20, 'user20', 'DO', '2017-07-17', '2017-07-17'),
(21, 7, 69, 70, 2, 21, 'user21', 'LC', '2017-07-17', '2017-07-17'),
(22, 8, 73, 80, 2, 22, 'user22', 'MO', '2017-07-17', '2017-07-17'),
(23, 8, 81, 82, 2, 23, 'user23', 'DO', '2017-07-17', '2017-07-17'),
(24, 9, 85, 108, 2, 24, 'user24', 'MO', '2017-07-17', '2017-07-17'),
(25, 9, 109, 110, 2, 25, 'user25', 'C', '2017-07-17', '2017-07-17'),
(26, 9, 111, 118, 2, 26, 'user26', 'LC', '2017-07-17', '2017-07-17'),
(27, 9, 119, 120, 2, 27, 'user27', 'DO', '2017-07-17', '2017-07-17'),
(28, 10, 125, 126, 2, 28, 'user28', 'C', '2017-07-17', '2017-07-17'),
(29, 11, 129, 130, 2, 29, 'user29', 'LC', '2017-07-17', '2017-07-17'),
(30, 12, 133, 140, 2, 30, 'user30', 'MO', '2017-07-17', '2017-07-17'),
(31, 12, 141, 142, 2, 31, 'user31', 'DO', '2017-07-17', '2017-07-17'),
(32, 13, 145, 174, 2, 32, 'user32', 'MO', '2017-07-17', '2017-07-17'),
(33, 13, 175, 176, 2, 33, 'user33', 'C', '2017-07-17', '2017-07-17'),
(34, 13, 177, 182, 2, 34, 'user34', 'LC', '2017-07-17', '2017-07-17'),
(35, 13, 183, 184, 2, 35, 'user35', 'DO', '2017-07-17', '2017-07-17'),
(36, 15, 10, 15, 3, 36, 'user36', 'LC', '2017-07-17', '2017-07-17'),
(37, 17, 22, 23, 3, 37, 'user37', 'C', '2017-07-17', '2017-07-17'),
(38, 17, 24, 31, 3, 38, 'user38', 'LC', '2017-07-17', '2017-07-17'),
(39, 17, 32, 43, 3, 39, 'user39', 'MO', '2017-07-17', '2017-07-17'),
(40, 19, 48, 51, 3, 40, 'user40', 'LC', '2017-07-17', '2017-07-17'),
(41, 19, 52, 53, 3, 41, 'user41', 'C', '2017-07-17', '2017-07-17'),
(42, 22, 74, 79, 3, 42, 'user42', 'LC', '2017-07-17', '2017-07-17'),
(43, 24, 86, 87, 3, 43, 'user43', 'C', '2017-07-17', '2017-07-17'),
(44, 24, 88, 95, 3, 44, 'user44', 'LC', '2017-07-17', '2017-07-17'),
(45, 24, 96, 107, 3, 45, 'user45', 'MO', '2017-07-17', '2017-07-17'),
(46, 26, 112, 115, 3, 46, 'user46', 'LC', '2017-07-17', '2017-07-17'),
(47, 26, 116, 117, 3, 47, 'user47', 'C', '2017-07-17', '2017-07-17'),
(48, 30, 134, 139, 3, 48, 'user48', 'LC', '2017-07-17', '2017-07-17'),
(49, 32, 146, 147, 3, 49, 'user49', 'C', '2017-07-17', '2017-07-17'),
(50, 32, 148, 155, 3, 50, 'user50', 'LC', '2017-07-17', '2017-07-17'),
(51, 32, 156, 173, 3, 51, 'user51', 'MO', '2017-07-17', '2017-07-17'),
(52, 34, 178, 181, 3, 52, 'user52', 'LC', '2017-07-17', '2017-07-17'),
(53, 36, 11, 14, 4, 53, 'user53', 'LC', '2017-07-17', '2017-07-17'),
(54, 38, 25, 28, 4, 54, 'user54', 'LC', '2017-07-17', '2017-07-17'),
(55, 38, 29, 30, 4, 55, 'user55', 'C', '2017-07-17', '2017-07-17'),
(56, 39, 33, 42, 4, 56, 'user56', 'DO', '2017-07-17', '2017-07-17'),
(57, 40, 49, 50, 4, 57, 'user57', 'C', '2017-07-17', '2017-07-17'),
(58, 42, 75, 78, 4, 58, 'user58', 'LC', '2017-07-17', '2017-07-17'),
(59, 44, 89, 92, 4, 59, 'user59', 'LC', '2017-07-17', '2017-07-17'),
(60, 44, 93, 94, 4, 60, 'user60', 'C', '2017-07-17', '2017-07-17'),
(61, 45, 97, 106, 4, 61, 'user61', 'DO', '2017-07-17', '2017-07-17'),
(62, 46, 113, 114, 4, 62, 'user62', 'C', '2017-07-17', '2017-07-17'),
(63, 48, 135, 138, 4, 63, 'user63', 'LC', '2017-07-17', '2017-07-17'),
(64, 50, 149, 152, 4, 64, 'user64', 'LC', '2017-07-17', '2017-07-17'),
(65, 50, 153, 154, 4, 65, 'user65', 'C', '2017-07-17', '2017-07-17'),
(66, 51, 157, 172, 4, 66, 'user66', 'DO', '2017-07-17', '2017-07-17'),
(67, 52, 179, 180, 4, 67, 'user67', 'C', '2017-07-17', '2017-07-17'),
(68, 53, 12, 13, 5, 68, 'user68', 'C', '2017-07-17', '2017-07-17'),
(69, 54, 26, 27, 5, 69, 'user69', 'C', '2017-07-17', '2017-07-17'),
(70, 56, 34, 37, 5, 70, 'user70', 'MO', '2017-07-17', '2017-07-17'),
(71, 56, 38, 41, 5, 71, 'user71', 'LC', '2017-07-17', '2017-07-17'),
(72, 58, 76, 77, 5, 72, 'user72', 'C', '2017-07-17', '2017-07-17'),
(73, 59, 90, 91, 5, 73, 'user73', 'C', '2017-07-17', '2017-07-17'),
(74, 61, 98, 101, 5, 74, 'user74', 'MO', '2017-07-17', '2017-07-17'),
(75, 61, 102, 105, 5, 75, 'user75', 'LC', '2017-07-17', '2017-07-17'),
(76, 63, 136, 137, 5, 76, 'user76', 'C', '2017-07-17', '2017-07-17'),
(77, 64, 150, 151, 5, 77, 'user77', 'C', '2017-07-17', '2017-07-17'),
(78, 66, 158, 167, 5, 78, 'user78', 'MO', '2017-07-17', '2017-07-17'),
(79, 66, 168, 171, 5, 79, 'user79', 'LC', '2017-07-17', '2017-07-17'),
(80, 70, 35, 36, 6, 80, 'user80', 'LC', '2017-07-17', '2017-07-17'),
(81, 71, 39, 40, 6, 81, 'user82', 'C', '2017-07-17', '2017-07-17'),
(82, 74, 99, 100, 6, 82, 'user82', 'LC', '2017-07-17', '2017-07-17'),
(83, 75, 103, 104, 6, 83, 'user83', 'C', '2017-07-17', '2017-07-17'),
(84, 78, 159, 160, 6, 84, 'user84', 'LC', '2017-07-17', '2017-07-17'),
(85, 78, 161, 166, 6, 85, 'user85', 'DO', '2017-07-17', '2017-07-17'),
(86, 79, 169, 170, 6, 86, 'user86', 'C', '2017-07-17', '2017-07-17'),
(87, 85, 162, 165, 7, 87, 'user87', 'DO', '2017-07-17', '2017-07-17'),
(88, 87, 163, 164, 8, 88, 'user88', 'DO', '2017-07-17', '2017-07-17'),
(89, 5, 57, 58, 2, 89, 'user89', 'DO', '2017-07-17', '2017-07-17'),
(90, 5, 59, 60, 2, 90, 'user90', 'DO', '2017-07-17', '2017-07-17'),
(91, 5, 61, 62, 2, 91, 'user91', 'DO', '2017-07-17', '2017-07-17'),
(92, 5, 63, 64, 2, 92, 'user92', 'DO', '2017-07-17', '2017-07-17'),
(93, 9, 121, 122, 2, 93, 'user93', 'DO', '2017-07-17', '2017-07-17'),
(94, 13, 185, 186, 2, 94, 'user94', 'DO', '2017-07-17', '2017-07-17'),
(95, 13, 187, 188, 2, 95, 'user95', 'DO', '2017-07-17', '2017-07-17'),
(96, 1, 190, 235, 1, 96, 'user96', 'DO', '2017-07-18', '2017-07-18'),
(97, 96, 191, 214, 2, 97, 'user97', 'MO', '2017-07-18', '2017-07-18'),
(98, 96, 215, 216, 2, 98, 'user98', 'C', '2017-07-18', '2017-07-18'),
(99, 96, 217, 224, 2, 99, 'user99', 'LC', '2017-07-18', '2017-07-18'),
(100, 96, 225, 226, 2, 100, 'user100', 'DO', '2017-07-18', '2017-07-18'),
(101, 96, 227, 228, 2, 101, 'user101', 'DO', '2017-07-18', '2017-07-18'),
(102, 96, 229, 230, 2, 102, 'user102', 'DO', '2017-07-18', '2017-07-18'),
(103, 96, 231, 232, 2, 103, 'user103', 'DO', '2017-07-18', '2017-07-18'),
(104, 96, 233, 234, 2, 104, 'user104', 'DO', '2017-07-18', '2017-07-18'),
(105, 97, 192, 193, 3, 105, 'user105', 'C', '2017-07-18', '2017-07-18'),
(106, 97, 194, 201, 3, 106, 'user106', 'LC', '2017-07-18', '2017-07-18'),
(107, 97, 202, 213, 3, 107, 'user107', 'MO', '2017-07-18', '2017-07-18'),
(108, 106, 195, 198, 4, 108, 'user108', 'LC', '2017-07-18', '2017-07-18'),
(109, 106, 199, 200, 4, 109, 'user109', 'C', '2017-07-18', '2017-07-18'),
(110, 107, 203, 212, 4, 110, 'user110', 'DO', '2017-07-18', '2017-07-18'),
(111, 108, 196, 197, 5, 111, 'user111', 'C', '2017-07-18', '2017-07-18'),
(112, 110, 204, 207, 5, 112, 'user112', 'MO', '2017-07-18', '2017-07-18'),
(113, 110, 208, 211, 5, 113, 'user113', 'LC', '2017-07-18', '2017-07-18'),
(114, 112, 205, 206, 6, 114, 'user114', 'LC', '2017-07-18', '2017-07-18'),
(115, 113, 209, 210, 6, 115, 'user115', 'C', '2017-07-18', '2017-07-18'),
(116, 99, 218, 221, 3, 116, 'user116', 'LC', '2017-07-18', '2017-07-18'),
(117, 99, 222, 223, 3, 117, 'user117', 'C', '2017-07-18', '2017-07-18'),
(118, 116, 219, 220, 4, 118, 'user118', 'C', '2017-07-18', '2017-07-18'),
(119, 1, 236, 281, 1, 119, 'user119', 'DO', '2017-07-18', '2017-07-18'),
(120, 119, 237, 266, 2, 120, 'user120', 'MO', '2017-07-18', '2017-07-18'),
(121, 119, 267, 268, 2, 121, 'user121', 'C', '2017-07-18', '2017-07-18'),
(122, 119, 269, 274, 2, 122, 'user122', 'LC', '2017-07-18', '2017-07-18'),
(123, 119, 275, 276, 2, 123, 'user123', 'DO', '2017-07-18', '2017-07-18'),
(124, 119, 277, 278, 2, 124, 'user124', 'DO', '2017-07-18', '2017-07-18'),
(125, 119, 279, 280, 2, 125, 'user125', 'DO', '2017-07-18', '2017-07-18'),
(126, 120, 238, 239, 3, 126, 'user126', 'C', '2017-07-18', '2017-07-18'),
(127, 120, 240, 247, 3, 127, 'user127', 'LC', '2017-07-18', '2017-07-18'),
(128, 120, 248, 265, 3, 128, 'user128', 'MO', '2017-07-18', '2017-07-18'),
(129, 122, 270, 273, 3, 129, 'user129', 'LC', '2017-07-18', '2017-07-18'),
(130, 127, 241, 244, 4, 130, 'user130', 'LC', '2017-07-18', '2017-07-18'),
(131, 127, 245, 246, 4, 131, 'user131', 'C', '2017-07-18', '2017-07-18'),
(132, 128, 249, 264, 4, 132, 'user132', 'DO', '2017-07-18', '2017-07-18'),
(133, 129, 271, 272, 4, 133, 'user133', 'C', '2017-07-18', '2017-07-18'),
(134, 130, 242, 243, 5, 134, 'user134', 'C', '2017-07-18', '2017-07-18'),
(135, 132, 250, 259, 5, 135, 'user135', 'MO', '2017-07-18', '2017-07-18'),
(136, 132, 260, 263, 5, 136, 'user136', 'LC', '2017-07-18', '2017-07-18'),
(137, 135, 251, 252, 6, 137, 'user137', 'LC', '2017-07-18', '2017-07-18'),
(138, 135, 253, 258, 6, 138, 'user138', 'DO', '2017-07-18', '2017-07-18'),
(139, 136, 261, 262, 6, 139, 'user139', 'C', '2017-07-18', '2017-07-18'),
(140, 138, 254, 257, 7, 140, 'user140', 'DO', '2017-07-18', '2017-07-18'),
(141, 140, 255, 256, 8, 141, 'user141', 'DO', '2017-07-18', '2017-07-18'),
(142, 0, 283, 284, 0, 148, 'test1', 'C', '2018-01-26', '2018-01-26'),
(143, 0, 285, 286, 0, 149, 'asdasda', 'C', '2018-03-01', '2018-03-01'),
(144, 0, 287, 288, 0, 150, 'asdasasdas', 'C', '2018-03-02', '2018-03-02'),
(145, 0, 289, 290, 0, 151, 'zxczxczxc', 'C', '2018-03-02', '2018-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `return_goods`
--

CREATE TABLE `return_goods` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2016-10-21 10:26:43', '2017-01-12 10:51:10'),
(2, 'Storekeeper', '2016-11-09 03:56:30', '2016-11-09 03:56:30'),
(3, 'Finance', '2016-11-09 03:56:41', '2016-11-09 03:56:41'),
(4, 'Management', '2016-11-09 03:57:14', '2016-11-09 03:57:14'),
(5, 'Customer Services', '2016-11-09 03:58:08', '2016-11-09 03:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `total_sale` float NOT NULL,
  `re_total_sale` float NOT NULL,
  `total_pv` int(11) NOT NULL,
  `re_total_pv` int(11) NOT NULL,
  `total_profit` float NOT NULL,
  `do_cto_val_unit` float NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `year`, `month`, `total_sale`, `re_total_sale`, `total_pv`, `re_total_pv`, `total_profit`, `do_cto_val_unit`, `created_at`, `updated_at`) VALUES
(1, 2017, 12, 530460, 530460, 176820, 176820, 0, 1414.56, 2017, 2018),
(2, 2018, 1, 9305, 540395, 2990, 180020, 0, 23.92, 2018, 2018),
(3, 2018, 4, 1677.06, 541781, 465, 180485, 0, 3.72, 2018, 2018),
(4, 2018, 5, 1082.95, 0, 300, 0, 0, 0, 2018, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `sdo_licenses`
--

CREATE TABLE `sdo_licenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active_sdo_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `expired_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sdo_merits`
--

CREATE TABLE `sdo_merits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch3` int(11) NOT NULL,
  `branch5` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sdo_merits`
--

INSERT INTO `sdo_merits` (`id`, `user_id`, `branch3`, `branch5`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 0, 1, '', '2017-09-06', '2017-09-06'),
(2, 13, 1, 0, '', '2017-09-06', '2017-09-06'),
(3, 96, 0, 1, '', '2017-09-06', '2017-09-06'),
(4, 119, 1, 0, '', '2017-09-06', '2017-09-06'),
(5, 5, 0, 1, '', '2017-09-06', '2017-09-06'),
(6, 13, 1, 0, '', '2017-09-06', '2017-09-06'),
(7, 96, 0, 1, '', '2017-09-06', '2017-09-06'),
(8, 119, 1, 0, '', '2017-09-06', '2017-09-06'),
(9, 5, 0, 1, '', '2017-09-06', '2017-09-06'),
(10, 13, 1, 0, '', '2017-09-06', '2017-09-06'),
(11, 96, 0, 1, '', '2017-09-06', '2017-09-06'),
(12, 119, 1, 0, '', '2017-09-06', '2017-09-06'),
(13, 5, 0, 1, '', '2017-09-07', '2017-09-07'),
(14, 13, 1, 0, '', '2017-09-07', '2017-09-07'),
(15, 96, 0, 1, '', '2017-09-07', '2017-09-07'),
(16, 119, 1, 0, '', '2017-09-07', '2017-09-07'),
(17, 5, 0, 1, '', '2017-09-08', '2017-09-08'),
(18, 13, 1, 0, '', '2017-09-08', '2017-09-08'),
(19, 96, 0, 1, '', '2017-09-08', '2017-09-08'),
(20, 119, 1, 0, '', '2017-09-08', '2017-09-08'),
(21, 5, 0, 1, '', '2017-09-12', '2017-09-12'),
(22, 13, 1, 0, '', '2017-09-12', '2017-09-12'),
(23, 96, 0, 1, '', '2017-09-12', '2017-09-12'),
(24, 119, 1, 0, '', '2017-09-12', '2017-09-12'),
(25, 5, 0, 1, '', '2017-09-14', '2017-09-14'),
(26, 13, 1, 0, '', '2017-09-14', '2017-09-14'),
(27, 96, 0, 1, '', '2017-09-14', '2017-09-14'),
(28, 119, 1, 0, '', '2017-09-14', '2017-09-14'),
(29, 5, 0, 1, '', '2017-09-15', '2017-09-15'),
(30, 13, 1, 0, '', '2017-09-15', '2017-09-15'),
(31, 96, 0, 1, '', '2017-09-15', '2017-09-15'),
(32, 119, 1, 0, '', '2017-09-15', '2017-09-15'),
(33, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(34, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(35, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(36, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(37, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(38, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(39, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(40, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(41, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(42, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(43, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(44, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(45, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(46, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(47, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(48, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(49, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(50, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(51, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(52, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(53, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(54, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(55, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(56, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(57, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(58, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(59, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(60, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(61, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(62, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(63, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(64, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(65, 5, 0, 1, '', '2017-09-19', '2017-09-19'),
(66, 13, 1, 0, '', '2017-09-19', '2017-09-19'),
(67, 96, 0, 1, '', '2017-09-19', '2017-09-19'),
(68, 119, 1, 0, '', '2017-09-19', '2017-09-19'),
(69, 5, 0, 1, '', '2017-09-20', '2017-09-20'),
(70, 13, 1, 0, '', '2017-09-20', '2017-09-20'),
(71, 96, 0, 1, '', '2017-09-20', '2017-09-20'),
(72, 119, 1, 0, '', '2017-09-20', '2017-09-20'),
(73, 5, 0, 1, '', '2017-09-20', '2017-09-20'),
(74, 13, 1, 0, '', '2017-09-20', '2017-09-20'),
(75, 96, 0, 1, '', '2017-09-20', '2017-09-20'),
(76, 119, 1, 0, '', '2017-09-20', '2017-09-20'),
(77, 5, 0, 1, '', '2017-09-20', '2017-09-20'),
(78, 13, 1, 0, '', '2017-09-20', '2017-09-20'),
(79, 96, 0, 1, '', '2017-09-20', '2017-09-20'),
(80, 119, 1, 0, '', '2017-09-20', '2017-09-20'),
(81, 5, 0, 1, '', '2017-09-20', '2017-09-20'),
(82, 13, 1, 0, '', '2017-09-20', '2017-09-20'),
(83, 96, 0, 1, '', '2017-09-20', '2017-09-20'),
(84, 119, 1, 0, '', '2017-09-20', '2017-09-20'),
(85, 5, 0, 1, '', '2017-11-03', '2017-11-03'),
(86, 13, 1, 0, '', '2017-11-03', '2017-11-03'),
(87, 96, 0, 1, '', '2017-11-03', '2017-11-03'),
(88, 119, 1, 0, '', '2017-11-03', '2017-11-03'),
(89, 5, 0, 1, '', '2017-11-03', '2017-11-03'),
(90, 13, 1, 0, '', '2017-11-03', '2017-11-03'),
(91, 96, 0, 1, '', '2017-11-03', '2017-11-03'),
(92, 119, 1, 0, '', '2017-11-03', '2017-11-03'),
(93, 5, 0, 1, '', '2017-11-03', '2017-11-03'),
(94, 13, 1, 0, '', '2017-11-03', '2017-11-03'),
(95, 96, 0, 1, '', '2017-11-03', '2017-11-03'),
(96, 119, 1, 0, '', '2017-11-03', '2017-11-03'),
(97, 5, 0, 1, '', '2017-11-03', '2017-11-03'),
(98, 13, 1, 0, '', '2017-11-03', '2017-11-03'),
(99, 96, 0, 1, '', '2017-11-03', '2017-11-03'),
(100, 119, 1, 0, '', '2017-11-03', '2017-11-03'),
(101, 5, 0, 1, '', '2017-11-06', '2017-11-06'),
(102, 13, 1, 0, '', '2017-11-06', '2017-11-06'),
(103, 96, 0, 1, '', '2017-11-06', '2017-11-06'),
(104, 119, 1, 0, '', '2017-11-06', '2017-11-06'),
(105, 5, 0, 1, '', '2017-11-06', '2017-11-06'),
(106, 13, 1, 0, '', '2017-11-06', '2017-11-06'),
(107, 96, 0, 1, '', '2017-11-06', '2017-11-06'),
(108, 119, 1, 0, '', '2017-11-06', '2017-11-06'),
(109, 5, 0, 1, '', '2017-11-07', '2017-11-07'),
(110, 13, 1, 0, '', '2017-11-07', '2017-11-07'),
(111, 96, 0, 1, '', '2017-11-07', '2017-11-07'),
(112, 119, 1, 0, '', '2017-11-07', '2017-11-07'),
(113, 5, 0, 1, '', '2017-11-08', '2017-11-08'),
(114, 13, 1, 0, '', '2017-11-08', '2017-11-08'),
(115, 96, 0, 1, '', '2017-11-08', '2017-11-08'),
(116, 119, 1, 0, '', '2017-11-08', '2017-11-08'),
(117, 5, 0, 1, '', '2017-11-29', '2017-11-29'),
(118, 13, 1, 0, '', '2017-11-29', '2017-11-29'),
(119, 96, 0, 1, '', '2017-11-29', '2017-11-29'),
(120, 119, 1, 0, '', '2017-11-29', '2017-11-29'),
(121, 5, 0, 1, '', '2017-11-29', '2017-11-29'),
(122, 13, 1, 0, '', '2017-11-29', '2017-11-29'),
(123, 96, 0, 1, '', '2017-11-29', '2017-11-29'),
(124, 119, 1, 0, '', '2017-11-29', '2017-11-29'),
(125, 5, 0, 1, '', '2017-11-29', '2017-11-29'),
(126, 13, 1, 0, '', '2017-11-29', '2017-11-29'),
(127, 96, 0, 1, '', '2017-11-29', '2017-11-29'),
(128, 119, 1, 0, '', '2017-11-29', '2017-11-29'),
(129, 5, 0, 1, '', '2017-11-30', '2017-11-30'),
(130, 13, 1, 0, '', '2017-11-30', '2017-11-30'),
(131, 96, 0, 1, '', '2017-11-30', '2017-11-30'),
(132, 119, 1, 0, '', '2017-11-30', '2017-11-30'),
(133, 5, 0, 1, '', '2017-12-06', '2017-12-06'),
(134, 13, 1, 0, '', '2017-12-06', '2017-12-06'),
(135, 96, 0, 1, '', '2017-12-06', '2017-12-06'),
(136, 119, 1, 0, '', '2017-12-06', '2017-12-06'),
(137, 5, 0, 1, '', '2017-12-06', '2017-12-06'),
(138, 13, 1, 0, '', '2017-12-06', '2017-12-06'),
(139, 96, 0, 1, '', '2017-12-06', '2017-12-06'),
(140, 119, 1, 0, '', '2017-12-06', '2017-12-06'),
(141, 5, 0, 1, '', '2017-12-29', '2017-12-29'),
(142, 13, 1, 0, '', '2017-12-29', '2017-12-29'),
(143, 96, 0, 1, '', '2017-12-29', '2017-12-29'),
(144, 119, 1, 0, '', '2017-12-29', '2017-12-29'),
(145, 5, 0, 1, '', '2018-01-08', '2018-01-08'),
(146, 13, 1, 0, '', '2018-01-08', '2018-01-08'),
(147, 96, 0, 1, '', '2018-01-08', '2018-01-08'),
(148, 119, 1, 0, '', '2018-01-08', '2018-01-08'),
(149, 5, 0, 1, '', '2018-01-08', '2018-01-08'),
(150, 13, 1, 0, '', '2018-01-08', '2018-01-08'),
(151, 96, 0, 1, '', '2018-01-08', '2018-01-08'),
(152, 119, 1, 0, '', '2018-01-08', '2018-01-08'),
(153, 5, 0, 1, '', '2018-01-11', '2018-01-11'),
(154, 13, 1, 0, '', '2018-01-11', '2018-01-11'),
(155, 96, 0, 1, '', '2018-01-11', '2018-01-11'),
(156, 119, 1, 0, '', '2018-01-11', '2018-01-11'),
(157, 5, 0, 1, '', '2018-01-15', '2018-01-15'),
(158, 13, 1, 0, '', '2018-01-15', '2018-01-15'),
(159, 96, 0, 1, '', '2018-01-15', '2018-01-15'),
(160, 119, 1, 0, '', '2018-01-15', '2018-01-15'),
(161, 5, 0, 1, '', '2018-01-15', '2018-01-15'),
(162, 13, 1, 0, '', '2018-01-15', '2018-01-15'),
(163, 96, 0, 1, '', '2018-01-15', '2018-01-15'),
(164, 119, 1, 0, '', '2018-01-15', '2018-01-15'),
(165, 5, 0, 1, '', '2018-01-15', '2018-01-15'),
(166, 13, 1, 0, '', '2018-01-15', '2018-01-15'),
(167, 96, 0, 1, '', '2018-01-15', '2018-01-15'),
(168, 119, 1, 0, '', '2018-01-15', '2018-01-15'),
(169, 5, 0, 1, '', '2018-01-18', '2018-01-18'),
(170, 13, 1, 0, '', '2018-01-18', '2018-01-18'),
(171, 96, 0, 1, '', '2018-01-18', '2018-01-18'),
(172, 119, 1, 0, '', '2018-01-18', '2018-01-18'),
(173, 5, 0, 1, '', '2018-01-18', '2018-01-18'),
(174, 13, 1, 0, '', '2018-01-18', '2018-01-18'),
(175, 96, 0, 1, '', '2018-01-18', '2018-01-18'),
(176, 119, 1, 0, '', '2018-01-18', '2018-01-18'),
(177, 5, 0, 1, '', '2018-01-18', '2018-01-18'),
(178, 13, 1, 0, '', '2018-01-18', '2018-01-18'),
(179, 96, 0, 1, '', '2018-01-18', '2018-01-18'),
(180, 119, 1, 0, '', '2018-01-18', '2018-01-18'),
(181, 5, 0, 1, '', '2018-02-05', '2018-02-05'),
(182, 13, 1, 0, '', '2018-02-05', '2018-02-05'),
(183, 96, 0, 1, '', '2018-02-05', '2018-02-05'),
(184, 119, 1, 0, '', '2018-02-05', '2018-02-05'),
(185, 5, 0, 1, '', '2018-05-03', '2018-05-03'),
(186, 13, 1, 0, '', '2018-05-03', '2018-05-03'),
(187, 96, 0, 1, '', '2018-05-03', '2018-05-03'),
(188, 119, 1, 0, '', '2018-05-03', '2018-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `consignment_note` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `courier_collect_date` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `user_id`, `order_id`, `courier_id`, `consignment_note`, `status`, `courier_collect_date`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '123121232312', 'Shipping', '0000-00-00', '2017-10-12', '2017-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `shipped_items`
--

CREATE TABLE `shipped_items` (
  `id` int(11) NOT NULL,
  `shipment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_no` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipped_items`
--

INSERT INTO `shipped_items` (`id`, `shipment_id`, `product_id`, `serial_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '12312313', '', '2017-10-12', '2017-10-12');

-- --------------------------------------------------------

--
-- Table structure for table `social_facebook_accounts`
--

CREATE TABLE `social_facebook_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_facebook_accounts`
--

INSERT INTO `social_facebook_accounts` (`user_id`, `provider_user_id`, `provider`, `created_at`, `updated_at`) VALUES
(1, '1671365229564877', 'facebook', '2017-11-09 09:39:47', '2017-11-09 09:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `status` enum('Instock','Sold','Returned') NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `remarks` text NOT NULL,
  `rtd_id` int(11) NOT NULL,
  `rtv_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `serial_no`, `status`, `customer_name`, `remarks`, `rtd_id`, `rtv_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1200, 'Instock', '', '', 0, 0, '2016-11-16 05:01:29', '2016-11-16 05:01:29'),
(2, 1, 1201, 'Instock', '', '', 0, 0, '2016-11-16 05:01:29', '2016-11-16 05:01:29'),
(3, 1, 1202, 'Instock', '', '', 0, 0, '2016-11-16 05:01:29', '2016-11-16 05:01:29'),
(4, 1, 1203, 'Instock', '', '', 0, 0, '2016-11-16 05:01:29', '2016-11-16 05:01:29'),
(5, 1, 1204, 'Instock', '', '', 0, 0, '2016-11-16 05:01:29', '2016-11-16 05:01:29'),
(6, 1, 1205, 'Instock', '', '', 0, 0, '2016-11-16 05:01:29', '2016-11-16 05:01:29'),
(7, 1, 1206, 'Instock', '', '', 0, 0, '2016-11-16 05:01:29', '2016-11-16 05:01:29'),
(8, 1, 1207, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(9, 1, 1208, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(10, 1, 1209, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(11, 1, 1210, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(12, 1, 1211, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(13, 1, 1212, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(14, 1, 1213, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(15, 1, 1214, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(16, 1, 1215, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(17, 1, 1216, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(18, 1, 1217, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(19, 1, 1218, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(20, 1, 1219, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(21, 1, 1220, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(22, 1, 1221, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(23, 1, 1222, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(24, 1, 1223, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(25, 1, 1224, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(26, 1, 1225, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(27, 1, 1226, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(28, 1, 1227, 'Instock', '', '', 0, 0, '2016-11-16 05:01:30', '2016-11-16 05:01:30'),
(29, 1, 1228, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(30, 1, 1229, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(31, 1, 1230, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(32, 1, 1231, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(33, 1, 1232, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(34, 1, 1233, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(35, 1, 1234, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(36, 1, 1235, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(37, 1, 1236, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(38, 1, 1237, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(39, 1, 1238, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(40, 1, 1239, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(41, 1, 1240, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(42, 1, 1241, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(43, 1, 1242, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(44, 1, 1243, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(45, 1, 1244, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(46, 1, 1245, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(47, 1, 1246, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(48, 1, 1247, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(49, 1, 1248, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(50, 1, 1249, 'Instock', '', '', 0, 0, '2016-11-16 05:01:31', '2016-11-16 05:01:31'),
(51, 1, 1250, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(52, 1, 1251, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(53, 1, 1252, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(54, 1, 1253, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(55, 1, 1254, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(56, 1, 1255, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(57, 1, 1256, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(58, 1, 1257, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(59, 1, 1258, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(60, 1, 1259, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(61, 1, 1260, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(62, 1, 1261, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(63, 1, 1262, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(64, 1, 1263, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(65, 1, 1264, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(66, 1, 1265, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(67, 1, 1266, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(68, 1, 1267, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(69, 1, 1268, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(70, 1, 1269, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(71, 1, 1270, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(72, 1, 1271, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(73, 1, 1272, 'Instock', '', '', 0, 0, '2016-11-16 05:01:32', '2016-11-16 05:01:32'),
(74, 1, 1273, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(75, 1, 1274, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(76, 1, 1275, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(77, 1, 1276, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(78, 1, 1277, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(79, 1, 1278, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(80, 1, 1279, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(81, 1, 1280, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(82, 1, 1281, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(83, 1, 1282, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(84, 1, 1283, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(85, 1, 1284, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(86, 1, 1285, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(87, 1, 1286, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(88, 1, 1287, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(89, 1, 1288, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(90, 1, 1289, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(91, 1, 1290, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(92, 1, 1291, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(93, 1, 1292, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(94, 1, 1293, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(95, 1, 1294, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(96, 1, 1295, 'Instock', '', '', 0, 0, '2016-11-16 05:01:33', '2016-11-16 05:01:33'),
(97, 1, 1296, 'Instock', '', '', 0, 0, '2016-11-16 05:01:34', '2016-11-16 05:01:34'),
(98, 1, 1297, 'Instock', '', '', 0, 0, '2016-11-16 05:01:34', '2016-11-16 05:01:34'),
(99, 1, 1298, 'Instock', '', '', 0, 0, '2016-11-16 05:01:34', '2016-11-16 05:01:34'),
(100, 1, 1299, 'Instock', '', '', 0, 0, '2016-11-16 05:01:34', '2016-11-16 05:01:34'),
(101, 3, 5000, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(102, 3, 5001, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(103, 3, 5002, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(104, 3, 5003, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(105, 3, 5004, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(106, 3, 5005, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(107, 3, 5006, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(108, 3, 5007, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(109, 3, 5008, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(110, 3, 5009, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(111, 3, 5010, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(112, 3, 5011, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(113, 3, 5012, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(114, 3, 5013, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(115, 3, 5014, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(116, 3, 5015, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(117, 3, 5016, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(118, 3, 5017, 'Instock', '', '', 0, 0, '2016-11-16 07:21:32', '2016-11-16 07:21:32'),
(119, 3, 5018, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(120, 3, 5019, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(121, 3, 5020, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(122, 3, 5021, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(123, 3, 5022, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(124, 3, 5023, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(125, 3, 5024, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(126, 3, 5025, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(127, 3, 5026, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(128, 3, 5027, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(129, 3, 5028, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(130, 3, 5029, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(131, 3, 5030, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(132, 3, 5031, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(133, 3, 5032, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(134, 3, 5033, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(135, 3, 5034, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(136, 3, 5035, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(137, 3, 5036, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(138, 3, 5037, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(139, 3, 5038, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(140, 3, 5039, 'Instock', '', '', 0, 0, '2016-11-16 07:21:33', '2016-11-16 07:21:33'),
(141, 3, 5040, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(142, 3, 5041, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(143, 3, 5042, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(144, 3, 5043, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(145, 3, 5044, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(146, 3, 5045, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(147, 3, 5046, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(148, 3, 5047, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(149, 3, 5048, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(150, 3, 5049, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(151, 3, 5050, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(152, 3, 5051, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(153, 3, 5052, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(154, 3, 5053, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(155, 3, 5054, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(156, 3, 5055, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(157, 3, 5056, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(158, 3, 5057, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(159, 3, 5058, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(160, 3, 5059, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(161, 3, 5060, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(162, 3, 5061, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(163, 3, 5062, 'Instock', '', '', 0, 0, '2016-11-16 07:21:34', '2016-11-16 07:21:34'),
(164, 3, 5063, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(165, 3, 5064, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(166, 3, 5065, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(167, 3, 5066, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(168, 3, 5067, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(169, 3, 5068, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(170, 3, 5069, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(171, 3, 5070, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(172, 3, 5071, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(173, 3, 5072, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(174, 3, 5073, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(175, 3, 5074, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(176, 3, 5075, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(177, 3, 5076, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(178, 3, 5077, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(179, 3, 5078, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(180, 3, 5079, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(181, 3, 5080, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(182, 3, 5081, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(183, 3, 5082, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(184, 3, 5083, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(185, 3, 5084, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(186, 3, 5085, 'Instock', '', '', 0, 0, '2016-11-16 07:21:35', '2016-11-16 07:21:35'),
(187, 3, 5086, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(188, 3, 5087, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(189, 3, 5088, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(190, 3, 5089, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(191, 3, 5090, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(192, 3, 5091, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(193, 3, 5092, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(194, 3, 5093, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(195, 3, 5094, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(196, 3, 5095, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(197, 3, 5096, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(198, 3, 5097, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(199, 3, 5098, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(200, 3, 5099, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(201, 3, 5100, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(202, 3, 5101, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(203, 3, 5102, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(204, 3, 5103, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(205, 3, 5104, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(206, 3, 5105, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(207, 3, 5106, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(208, 3, 5107, 'Instock', '', '', 0, 0, '2016-11-16 07:21:36', '2016-11-16 07:21:36'),
(209, 3, 5108, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(210, 3, 5109, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(211, 3, 5110, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(212, 3, 5111, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(213, 3, 5112, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(214, 3, 5113, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(215, 3, 5114, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(216, 3, 5115, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(217, 3, 5116, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(218, 3, 5117, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(219, 3, 5118, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(220, 3, 5119, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(221, 3, 5120, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(222, 3, 5121, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(223, 3, 5122, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(224, 3, 5123, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(225, 3, 5124, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(226, 3, 5125, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(227, 3, 5126, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(228, 3, 5127, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(229, 3, 5128, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(230, 3, 5129, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(231, 3, 5130, 'Instock', '', '', 0, 0, '2016-11-16 07:21:37', '2016-11-16 07:21:37'),
(232, 3, 5131, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(233, 3, 5132, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(234, 3, 5133, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(235, 3, 5134, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(236, 3, 5135, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(237, 3, 5136, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(238, 3, 5137, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(239, 3, 5138, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(240, 3, 5139, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(241, 3, 5140, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(242, 3, 5141, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(243, 3, 5142, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(244, 3, 5143, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(245, 3, 5144, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(246, 3, 5145, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(247, 3, 5146, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(248, 3, 5147, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(249, 3, 5148, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(250, 3, 5149, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(251, 3, 5150, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(252, 3, 5151, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(253, 3, 5152, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(254, 3, 5153, 'Instock', '', '', 0, 0, '2016-11-16 07:21:38', '2016-11-16 07:21:38'),
(255, 3, 5154, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(256, 3, 5155, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(257, 3, 5156, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(258, 3, 5157, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(259, 3, 5158, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(260, 3, 5159, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(261, 3, 5160, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(262, 3, 5161, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(263, 3, 5162, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(264, 3, 5163, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(265, 3, 5164, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(266, 3, 5165, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(267, 3, 5166, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(268, 3, 5167, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(269, 3, 5168, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(270, 3, 5169, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(271, 3, 5170, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(272, 3, 5171, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(273, 3, 5172, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(274, 3, 5173, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(275, 3, 5174, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(276, 3, 5175, 'Instock', '', '', 0, 0, '2016-11-16 07:21:39', '2016-11-16 07:21:39'),
(277, 3, 5176, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(278, 3, 5177, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(279, 3, 5178, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(280, 3, 5179, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(281, 3, 5180, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(282, 3, 5181, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(283, 3, 5182, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(284, 3, 5183, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(285, 3, 5184, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(286, 3, 5185, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(287, 3, 5186, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(288, 3, 5187, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(289, 3, 5188, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(290, 3, 5189, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(291, 3, 5190, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(292, 3, 5191, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(293, 3, 5192, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(294, 3, 5193, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(295, 3, 5194, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(296, 3, 5195, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(297, 3, 5196, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(298, 3, 5197, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(299, 3, 5198, 'Instock', '', '', 0, 0, '2016-11-16 07:21:40', '2016-11-16 07:21:40'),
(300, 3, 5199, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(301, 3, 5200, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(302, 3, 5201, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(303, 3, 5202, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(304, 3, 5203, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(305, 3, 5204, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(306, 3, 5205, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(307, 3, 5206, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(308, 3, 5207, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(309, 3, 5208, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(310, 3, 5209, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(311, 3, 5210, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(312, 3, 5211, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(313, 3, 5212, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(314, 3, 5213, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(315, 3, 5214, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(316, 3, 5215, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(317, 3, 5216, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(318, 3, 5217, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(319, 3, 5218, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(320, 3, 5219, 'Instock', '', '', 0, 0, '2016-11-16 07:21:41', '2016-11-16 07:21:41'),
(321, 3, 5220, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(322, 3, 5221, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(323, 3, 5222, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(324, 3, 5223, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(325, 3, 5224, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(326, 3, 5225, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(327, 3, 5226, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(328, 3, 5227, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(329, 3, 5228, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(330, 3, 5229, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(331, 3, 5230, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(332, 3, 5231, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(333, 3, 5232, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(334, 3, 5233, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(335, 3, 5234, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(336, 3, 5235, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(337, 3, 5236, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(338, 3, 5237, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(339, 3, 5238, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(340, 3, 5239, 'Instock', '', '', 0, 0, '2016-11-16 07:21:42', '2016-11-16 07:21:42'),
(341, 3, 5240, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(342, 3, 5241, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(343, 3, 5242, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(344, 3, 5243, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(345, 3, 5244, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(346, 3, 5245, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(347, 3, 5246, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(348, 3, 5247, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(349, 3, 5248, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(350, 3, 5249, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(351, 3, 5250, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(352, 3, 5251, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(353, 3, 5252, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(354, 3, 5253, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(355, 3, 5254, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(356, 3, 5255, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(357, 3, 5256, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(358, 3, 5257, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(359, 3, 5258, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(360, 3, 5259, 'Instock', '', '', 0, 0, '2016-11-16 07:21:43', '2016-11-16 07:21:43'),
(361, 3, 5260, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(362, 3, 5261, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(363, 3, 5262, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(364, 3, 5263, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(365, 3, 5264, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(366, 3, 5265, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(367, 3, 5266, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(368, 3, 5267, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(369, 3, 5268, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(370, 3, 5269, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(371, 3, 5270, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(372, 3, 5271, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(373, 3, 5272, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(374, 3, 5273, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(375, 3, 5274, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(376, 3, 5275, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(377, 3, 5276, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(378, 3, 5277, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(379, 3, 5278, 'Instock', '', '', 0, 0, '2016-11-16 07:21:44', '2016-11-16 07:21:44'),
(380, 3, 5279, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(381, 3, 5280, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(382, 3, 5281, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(383, 3, 5282, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(384, 3, 5283, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(385, 3, 5284, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(386, 3, 5285, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(387, 3, 5286, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(388, 3, 5287, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(389, 3, 5288, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(390, 3, 5289, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(391, 3, 5290, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(392, 3, 5291, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(393, 3, 5292, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(394, 3, 5293, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(395, 3, 5294, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(396, 3, 5295, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(397, 3, 5296, 'Instock', '', '', 0, 0, '2016-11-16 07:21:45', '2016-11-16 07:21:45'),
(398, 3, 5297, 'Instock', '', '', 0, 0, '2016-11-16 07:21:46', '2016-11-16 07:21:46'),
(399, 3, 5298, 'Instock', '', '', 0, 0, '2016-11-16 07:21:46', '2016-11-16 07:21:46'),
(400, 3, 5299, 'Instock', '', '', 0, 0, '2016-11-16 07:21:46', '2016-11-16 07:21:46'),
(401, 1, 2112112, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(402, 1, 2112113, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(403, 1, 2112114, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(404, 1, 2112115, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(405, 1, 2112116, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(406, 1, 2112117, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(407, 1, 2112118, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(408, 1, 2112119, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(409, 1, 2112120, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(410, 1, 2112121, 'Instock', '', '', 0, 0, '2016-12-06 07:52:42', '2016-12-06 07:52:42'),
(411, 1, 0, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(412, 1, 1, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(413, 1, 2, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(414, 1, 3, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(415, 1, 4, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(416, 1, 5, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(417, 1, 6, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(418, 1, 7, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(419, 1, 8, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(420, 1, 9, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(421, 1, 10, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(422, 1, 11, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(423, 1, 12, 'Instock', '', '', 0, 0, '2017-06-19 18:22:29', '2017-06-19 18:22:29'),
(424, 1, 13, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(425, 1, 14, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(426, 1, 15, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(427, 1, 16, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(428, 1, 17, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(429, 1, 18, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(430, 1, 19, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(431, 1, 20, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(432, 1, 21, 'Instock', '', '', 0, 0, '2017-06-19 18:22:30', '2017-06-19 18:22:30'),
(433, 1, 0, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(434, 1, 1, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(435, 1, 2, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(436, 1, 3, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(437, 1, 4, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(438, 1, 5, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(439, 1, 6, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(440, 1, 7, 'Instock', '', '', 0, 0, '2017-06-21 12:43:30', '2017-06-21 12:43:30'),
(441, 1, 8, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(442, 1, 9, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(443, 1, 10, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(444, 1, 11, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(445, 1, 12, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(446, 1, 13, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(447, 1, 14, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(448, 1, 15, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(449, 1, 16, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(450, 1, 17, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(451, 1, 18, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(452, 1, 19, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(453, 1, 20, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31'),
(454, 1, 21, 'Instock', '', '', 0, 0, '2017-06-21 12:43:31', '2017-06-21 12:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `serial_no` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `pv` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `lock_status` enum('lock','unlock') NOT NULL DEFAULT 'unlock',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `product_id`, `product_name`, `serial_no`, `price`, `pv`, `status`, `lock_status`, `updated_at`, `created_at`) VALUES
(1, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:32', '2017-12-12 09:29:46'),
(2, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(3, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(4, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(5, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(6, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(7, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(8, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(9, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(10, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(11, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(12, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(13, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(14, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(15, 4, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:13:33', '2017-12-12 09:29:46'),
(16, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(17, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(18, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(19, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(20, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(21, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(22, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(23, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(24, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(25, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(26, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(27, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(28, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(29, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(30, 15, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:20:41', '2017-12-12 09:29:46'),
(31, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(32, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(33, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(34, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(35, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(36, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(37, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(38, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(39, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(40, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(41, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(42, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(43, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:11', '2017-12-12 09:29:46'),
(44, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(45, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(46, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(47, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(48, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(49, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(50, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(51, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(52, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(53, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(54, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(55, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(56, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(57, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(58, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(59, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(60, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(61, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(62, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(63, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:12', '2017-12-12 09:29:46'),
(64, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(65, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(66, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(67, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(68, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(69, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(70, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(71, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(72, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(73, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(74, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(75, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(76, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(77, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(78, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(79, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(80, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(81, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(82, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:13', '2017-12-12 09:29:46'),
(83, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(84, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(85, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(86, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(87, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(88, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(89, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(90, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(91, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(92, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(93, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(94, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(95, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(96, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(97, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(98, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(99, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(100, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(101, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(102, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 12:22:14', '2017-12-12 09:29:46'),
(277, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(278, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(279, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(280, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(281, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(282, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(283, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(284, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(285, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(286, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(287, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(288, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(289, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(290, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:01', '2017-12-12 09:29:46'),
(291, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(292, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(293, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(294, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(295, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(296, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(297, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(298, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(299, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(300, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(301, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(302, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(303, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(304, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(305, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(306, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(307, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(308, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:02', '2017-12-12 09:29:46'),
(309, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(310, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(311, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(312, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(313, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(314, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(315, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(316, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(317, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(318, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(319, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(320, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(321, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(322, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(323, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(324, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(325, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:03', '2017-12-12 09:29:46'),
(326, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(327, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(328, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(329, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(330, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(331, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(332, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(333, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(334, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(335, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(336, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(337, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(338, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(339, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(340, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(341, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(342, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(343, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(344, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(345, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:04', '2017-12-12 09:29:46'),
(346, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:05', '2017-12-12 09:29:46'),
(347, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:05', '2017-12-12 09:29:46'),
(348, 5, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:05', '2017-12-12 09:29:46'),
(349, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:58', '2017-12-12 09:29:46'),
(350, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(351, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(352, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(353, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(354, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(355, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(356, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(357, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(358, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(359, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(360, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(361, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(362, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(363, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:54:59', '2017-12-12 09:29:46'),
(364, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(365, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(366, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(367, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(368, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(369, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(370, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(371, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(372, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(373, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(374, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(375, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(376, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(377, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(378, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:43', '2017-12-12 09:29:46'),
(379, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(380, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(381, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(382, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(383, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(384, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(385, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(386, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(387, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(388, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(389, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(390, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(391, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(392, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(393, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(394, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(395, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:44', '2017-12-12 09:29:46'),
(396, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(397, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(398, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(399, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(400, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(401, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(402, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(403, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(404, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(405, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(406, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(407, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(408, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(409, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(410, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(411, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(412, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(413, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(414, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(415, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:45', '2017-12-12 09:29:46'),
(416, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(417, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(418, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(419, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(420, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(421, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(422, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(423, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(424, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(425, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(426, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(427, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(428, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(429, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(430, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(431, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(432, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(433, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(434, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:46', '2017-12-12 09:29:46'),
(435, 20, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 14:57:47', '2017-12-12 09:29:46'),
(436, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(437, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(438, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(439, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(440, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(441, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(442, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(443, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(444, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:14', '2017-12-12 09:29:46'),
(445, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:15', '2017-12-12 09:29:46'),
(446, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:15', '2017-12-12 09:29:46'),
(447, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:15', '2017-12-12 09:29:46'),
(448, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:15', '2017-12-12 09:29:46'),
(449, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:15', '2017-12-12 09:29:46'),
(450, 39, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:00:15', '2017-12-12 09:29:46'),
(451, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(452, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(453, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(454, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(455, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(456, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(457, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(458, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(459, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(460, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(461, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(462, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(463, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(464, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(465, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(466, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(467, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(468, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(469, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:05', '2017-12-12 09:29:46'),
(470, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(471, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(472, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(473, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(474, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(475, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(476, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(477, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(478, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(479, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(480, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(481, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(482, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(483, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(484, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(485, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(486, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(487, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(488, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:06', '2017-12-12 09:29:46'),
(489, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(490, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(491, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(492, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(493, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(494, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(495, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(496, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(497, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(498, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(499, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(500, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(501, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(502, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(503, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(504, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(505, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(506, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:07', '2017-12-12 09:29:46'),
(507, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(508, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(509, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(510, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(511, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(512, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(513, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(514, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(515, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(516, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(517, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(518, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(519, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(520, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(521, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(522, 56, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:14:08', '2017-12-12 09:29:46'),
(523, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(524, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(525, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(526, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(527, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(528, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(529, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(530, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(531, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(532, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(533, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:00', '2017-12-12 09:29:46'),
(534, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:01', '2017-12-12 09:29:46'),
(535, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:01', '2017-12-12 09:29:46'),
(536, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:01', '2017-12-12 09:29:46'),
(537, 70, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:17:01', '2017-12-12 09:29:46'),
(553, 8, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:52:38', '2017-12-12 09:29:46'),
(554, 8, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:52:38', '2017-12-12 09:29:46'),
(555, 22, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:55:55', '2017-12-12 09:29:46'),
(556, 22, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:55:55', '2017-12-12 09:29:46'),
(557, 23, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:57:18', '2017-12-12 09:29:46'),
(558, 23, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 15:57:19', '2017-12-12 09:29:46'),
(559, 9, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:03:18', '2017-12-12 09:29:46'),
(560, 9, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:03:18', '2017-12-12 09:29:46'),
(561, 24, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:06:36', '2017-12-12 09:29:46'),
(562, 24, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:06:36', '2017-12-12 09:29:46'),
(563, 27, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:16:48', '2017-12-12 09:29:46'),
(564, 27, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:16:48', '2017-12-12 09:29:46'),
(565, 93, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:18:05', '2017-12-12 09:29:46'),
(566, 93, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:18:05', '2017-12-12 09:29:46'),
(567, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:35', '2017-12-12 09:29:46'),
(568, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:35', '2017-12-12 09:29:46'),
(569, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:35', '2017-12-12 09:29:46'),
(570, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:35', '2017-12-12 09:29:46'),
(571, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(572, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(573, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(574, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(575, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(576, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(577, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(578, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(579, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(580, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(581, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(582, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(583, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(584, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(585, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(586, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(587, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(588, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(589, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(590, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:36', '2017-12-12 09:29:46'),
(591, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(592, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(593, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(594, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(595, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(596, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(597, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(598, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(599, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(600, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(601, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(602, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(603, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(604, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(605, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(606, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(607, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(608, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:37', '2017-12-12 09:29:46'),
(609, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(610, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(611, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(612, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(613, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(614, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(615, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(616, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(617, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(618, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(619, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(620, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(621, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(622, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(623, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(624, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(625, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(626, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(627, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:38', '2017-12-12 09:29:46'),
(628, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(629, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(630, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(631, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46');
INSERT INTO `stores` (`id`, `user_id`, `product_id`, `product_name`, `serial_no`, `price`, `pv`, `status`, `lock_status`, `updated_at`, `created_at`) VALUES
(632, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(633, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(634, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(635, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(636, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(637, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(638, 89, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:19:39', '2017-12-12 09:29:46'),
(639, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(640, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(641, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(642, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(643, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(644, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(645, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(646, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(647, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(648, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(649, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(650, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(651, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(652, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(653, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(654, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(655, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(656, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(657, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(658, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(659, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:34', '2017-12-12 09:29:46'),
(660, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(661, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(662, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(663, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(664, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(665, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(666, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(667, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(668, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(669, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(670, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(671, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(672, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(673, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(674, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(675, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(676, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(677, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:35', '2017-12-12 09:29:46'),
(678, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(679, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(680, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(681, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(682, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(683, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(684, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(685, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(686, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(687, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(688, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(689, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(690, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(691, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(692, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(693, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(694, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(695, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(696, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:36', '2017-12-12 09:29:46'),
(697, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(698, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(699, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(700, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(701, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(702, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(703, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(704, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(705, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(706, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(707, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(708, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(709, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(710, 90, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:20:37', '2017-12-12 09:29:46'),
(711, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(712, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(713, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(714, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(715, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(716, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(717, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(718, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(719, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(720, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:23', '2017-12-12 09:29:46'),
(721, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(722, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(723, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(724, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(725, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(726, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(727, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(728, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(729, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(730, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(731, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(732, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(733, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(734, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(735, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(736, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(737, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(738, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(739, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(740, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:24', '2017-12-12 09:29:46'),
(741, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(742, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(743, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(744, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(745, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(746, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(747, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(748, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(749, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(750, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(751, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(752, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(753, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(754, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(755, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(756, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(757, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:25', '2017-12-12 09:29:46'),
(758, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(759, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(760, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(761, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(762, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(763, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(764, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(765, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(766, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(767, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(768, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(769, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(770, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(771, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(772, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(773, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(774, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(775, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(776, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(777, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:26', '2017-12-12 09:29:46'),
(778, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:27', '2017-12-12 09:29:46'),
(779, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:27', '2017-12-12 09:29:46'),
(780, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:27', '2017-12-12 09:29:46'),
(781, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:27', '2017-12-12 09:29:46'),
(782, 91, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:21:27', '2017-12-12 09:29:46'),
(783, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(784, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(785, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(786, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(787, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(788, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(789, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(790, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:36', '2017-12-12 09:29:46'),
(791, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(792, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(793, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(794, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(795, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(796, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(797, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(798, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(799, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(800, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(801, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(802, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(803, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(804, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(805, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(806, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(807, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(808, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(809, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(810, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:37', '2017-12-12 09:29:46'),
(811, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(812, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(813, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(814, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(815, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(816, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(817, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(818, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(819, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(820, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(821, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(822, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(823, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(824, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(825, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(826, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(827, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(828, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(829, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(830, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(831, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:38', '2017-12-12 09:29:46'),
(832, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(833, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(834, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(835, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(836, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(837, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(838, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(839, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(840, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(841, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(842, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:39', '2017-12-12 09:29:46'),
(843, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(844, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(845, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(846, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(847, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(848, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(849, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(850, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(851, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(852, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(853, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(854, 92, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 16:22:40', '2017-12-12 09:29:46'),
(855, 12, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:33:49', '2017-12-12 09:29:46'),
(856, 12, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:33:49', '2017-12-12 09:29:46'),
(857, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(858, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(859, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(860, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(861, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(862, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(863, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(864, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(865, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(866, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(867, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(868, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(869, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(870, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(871, 30, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:37:37', '2017-12-12 09:29:46'),
(872, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:25', '2017-12-12 09:29:46'),
(873, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:25', '2017-12-12 09:29:46'),
(874, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:25', '2017-12-12 09:29:46'),
(875, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:25', '2017-12-12 09:29:46'),
(876, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:25', '2017-12-12 09:29:46'),
(877, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(878, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(879, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(880, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(881, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(882, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(883, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(884, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(885, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(886, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(887, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(888, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(889, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(890, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(891, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(892, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(893, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(894, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(895, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(896, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:26', '2017-12-12 09:29:46'),
(897, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(898, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(899, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(900, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(901, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(902, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(903, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(904, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(905, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(906, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(907, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(908, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(909, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(910, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(911, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(912, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(913, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(914, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(915, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:27', '2017-12-12 09:29:46'),
(916, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(917, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(918, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(919, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(920, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(921, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(922, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(923, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(924, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(925, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(926, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(927, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(928, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(929, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(930, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(931, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(932, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(933, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(934, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(935, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:28', '2017-12-12 09:29:46'),
(936, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(937, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(938, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(939, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(940, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(941, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(942, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(943, 31, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:40:29', '2017-12-12 09:29:46'),
(944, 13, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:53:04', '2017-12-12 09:29:46'),
(945, 13, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:53:04', '2017-12-12 09:29:46'),
(946, 32, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:58:10', '2017-12-12 09:29:46'),
(947, 32, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 17:58:10', '2017-12-12 09:29:46'),
(948, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(949, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(950, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(951, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(952, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(953, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(954, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(955, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(956, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(957, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(958, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:09', '2017-12-12 09:29:46'),
(959, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(960, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(961, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(962, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(963, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(964, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(965, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(966, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(967, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(968, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(969, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(970, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(971, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(972, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(973, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(974, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(975, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(976, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(977, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:10', '2017-12-12 09:29:46'),
(978, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(979, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(980, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(981, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(982, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(983, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(984, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(985, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(986, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(987, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(988, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(989, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(990, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(991, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(992, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(993, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(994, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(995, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(996, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:11', '2017-12-12 09:29:46'),
(997, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(998, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(999, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1000, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1001, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1002, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1003, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1004, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1005, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1006, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1007, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1008, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1009, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1010, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1011, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1012, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1013, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1014, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1015, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:12', '2017-12-12 09:29:46'),
(1016, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:13', '2017-12-12 09:29:46'),
(1017, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:13', '2017-12-12 09:29:46'),
(1018, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:13', '2017-12-12 09:29:46'),
(1019, 35, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:04:13', '2017-12-12 09:29:46'),
(1020, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1021, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1022, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1023, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1024, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1025, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1026, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1027, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1028, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1029, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1030, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:13', '2017-12-12 09:29:46'),
(1031, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1032, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1033, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1034, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1035, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1036, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1037, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1038, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1039, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1040, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1041, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1042, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1043, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1044, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1045, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1046, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1047, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1048, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1049, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1050, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:14', '2017-12-12 09:29:46'),
(1051, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1052, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1053, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1054, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1055, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1056, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1057, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1058, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1059, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1060, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1061, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1062, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1063, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1064, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1065, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1066, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1067, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1068, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1069, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:15', '2017-12-12 09:29:46'),
(1070, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1071, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46');
INSERT INTO `stores` (`id`, `user_id`, `product_id`, `product_name`, `serial_no`, `price`, `pv`, `status`, `lock_status`, `updated_at`, `created_at`) VALUES
(1072, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1073, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1074, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1075, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1076, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1077, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1078, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1079, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1080, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1081, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1082, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1083, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1084, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1085, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1086, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:16', '2017-12-12 09:29:46'),
(1087, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:17', '2017-12-12 09:29:46'),
(1088, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:17', '2017-12-12 09:29:46'),
(1089, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:17', '2017-12-12 09:29:46'),
(1090, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:17', '2017-12-12 09:29:46'),
(1091, 94, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:05:17', '2017-12-12 09:29:46'),
(1092, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1093, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1094, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1095, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1096, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1097, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1098, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1099, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1100, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1101, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1102, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1103, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1104, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1105, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1106, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:01', '2017-12-12 09:29:46'),
(1107, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1108, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1109, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1110, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1111, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1112, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1113, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1114, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1115, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1116, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1117, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1118, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1119, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1120, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1121, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1122, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1123, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1124, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1125, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:02', '2017-12-12 09:29:46'),
(1126, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1127, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1128, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1129, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1130, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1131, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1132, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1133, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1134, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1135, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1136, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1137, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1138, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1139, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1140, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1141, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1142, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1143, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1144, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:03', '2017-12-12 09:29:46'),
(1145, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1146, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1147, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1148, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1149, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1150, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1151, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1152, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1153, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1154, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1155, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1156, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1157, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1158, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1159, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1160, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1161, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1162, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1163, 95, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:06:04', '2017-12-12 09:29:46'),
(1164, 51, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:15:16', '2017-12-12 09:29:46'),
(1165, 51, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:15:16', '2017-12-12 09:29:46'),
(1166, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:22', '2017-12-12 09:29:46'),
(1167, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:22', '2017-12-12 09:29:46'),
(1168, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:22', '2017-12-12 09:29:46'),
(1169, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:22', '2017-12-12 09:29:46'),
(1170, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:22', '2017-12-12 09:29:46'),
(1171, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1172, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1173, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1174, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1175, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1176, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1177, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1178, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1179, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1180, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1181, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1182, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1183, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1184, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1185, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1186, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1187, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1188, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1189, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1190, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1191, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:23', '2017-12-12 09:29:46'),
(1192, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1193, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1194, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1195, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1196, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1197, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1198, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1199, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1200, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1201, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1202, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1203, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1204, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1205, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1206, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1207, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1208, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1209, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1210, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1211, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:24', '2017-12-12 09:29:46'),
(1212, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1213, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1214, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1215, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1216, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1217, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1218, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1219, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1220, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1221, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1222, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1223, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1224, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1225, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1226, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1227, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:25', '2017-12-12 09:29:46'),
(1228, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1229, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1230, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1231, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1232, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1233, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1234, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1235, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1236, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1237, 66, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:20:26', '2017-12-12 09:29:46'),
(1238, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1239, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1240, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1241, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1242, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1243, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1244, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1245, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1246, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1247, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:43', '2017-12-12 09:29:46'),
(1248, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:44', '2017-12-12 09:29:46'),
(1249, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:44', '2017-12-12 09:29:46'),
(1250, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:44', '2017-12-12 09:29:46'),
(1251, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:44', '2017-12-12 09:29:46'),
(1252, 78, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:22:44', '2017-12-12 09:29:46'),
(1253, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1254, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1255, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1256, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1257, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1258, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1259, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1260, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1261, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1262, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1263, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1264, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1265, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1266, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1267, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1268, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1269, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1270, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1271, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:26', '2017-12-12 09:29:46'),
(1272, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1273, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1274, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1275, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1276, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1277, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1278, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1279, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1280, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1281, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1282, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1283, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1284, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1285, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1286, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1287, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1288, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1289, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1290, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1291, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:27', '2017-12-12 09:29:46'),
(1292, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1293, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1294, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1295, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1296, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1297, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1298, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1299, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1300, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1301, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1302, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1303, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1304, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1305, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1306, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1307, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1308, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:28', '2017-12-12 09:29:46'),
(1309, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1310, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1311, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1312, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1313, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1314, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1315, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1316, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1317, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1318, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1319, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1320, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1321, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1322, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1323, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1324, 85, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:28:29', '2017-12-12 09:29:46'),
(1325, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1326, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1327, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1328, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1329, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1330, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1331, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1332, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1333, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1334, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1335, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1336, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1337, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1338, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:31', '2017-12-12 09:29:46'),
(1339, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1340, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1341, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1342, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1343, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1344, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1345, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1346, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1347, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1348, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1349, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1350, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1351, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1352, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1353, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1354, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1355, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1356, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:32', '2017-12-12 09:29:46'),
(1357, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1358, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1359, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1360, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1361, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1362, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1363, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1364, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1365, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1366, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1367, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1368, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1369, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1370, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1371, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1372, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1373, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1374, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1375, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1376, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:33', '2017-12-12 09:29:46'),
(1377, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1378, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1379, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1380, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1381, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1382, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1383, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1384, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1385, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1386, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1387, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1388, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1389, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1390, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1391, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1392, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1393, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1394, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1395, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1396, 87, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:31:34', '2017-12-12 09:29:46'),
(1397, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:19', '2017-12-12 09:29:46'),
(1398, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:19', '2017-12-12 09:29:46'),
(1399, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:19', '2017-12-12 09:29:46'),
(1400, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:19', '2017-12-12 09:29:46'),
(1401, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:19', '2017-12-12 09:29:46'),
(1402, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:19', '2017-12-12 09:29:46'),
(1403, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1404, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1405, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1406, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1407, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1408, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1409, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1410, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1411, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1412, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1413, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1414, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1415, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1416, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1417, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1418, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1419, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1420, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1421, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1422, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:20', '2017-12-12 09:29:46'),
(1423, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1424, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1425, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1426, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1427, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1428, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1429, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1430, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1431, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1432, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1433, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1434, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1435, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1436, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1437, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1438, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1439, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1440, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1441, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1442, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:21', '2017-12-12 09:29:46'),
(1443, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1444, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1445, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1446, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1447, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1448, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1449, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1450, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1451, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1452, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1453, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1454, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1455, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1456, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1457, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1458, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1459, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1460, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1461, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1462, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:22', '2017-12-12 09:29:46'),
(1463, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:23', '2017-12-12 09:29:46'),
(1464, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:23', '2017-12-12 09:29:46'),
(1465, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:23', '2017-12-12 09:29:46'),
(1466, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:23', '2017-12-12 09:29:46'),
(1467, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:23', '2017-12-12 09:29:46'),
(1468, 88, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-19 18:32:23', '2017-12-12 09:29:46'),
(1469, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1470, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1471, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1472, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1473, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1474, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1475, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1476, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1477, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1478, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1479, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1480, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1481, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1482, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1483, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1484, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1485, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1486, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1487, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:50', '2017-12-12 09:29:46'),
(1488, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1489, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1490, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1491, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1492, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1493, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1494, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1495, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1496, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1497, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1498, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1499, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1500, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1501, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1502, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1503, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1504, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1505, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1506, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1507, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46'),
(1508, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:51', '2017-12-12 09:29:46');
INSERT INTO `stores` (`id`, `user_id`, `product_id`, `product_name`, `serial_no`, `price`, `pv`, `status`, `lock_status`, `updated_at`, `created_at`) VALUES
(1509, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1510, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1511, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1512, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1513, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1514, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1515, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1516, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1517, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1518, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1519, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1520, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1521, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1522, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1523, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1524, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1525, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1526, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1527, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1528, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1529, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1530, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1531, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:52', '2017-12-12 09:29:46'),
(1532, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1533, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1534, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1535, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1536, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1537, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1538, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1539, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1540, 96, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:00:53', '2017-12-12 09:29:46'),
(1541, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1542, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1543, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1544, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1545, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1546, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1547, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1548, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1549, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1550, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1551, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1552, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1553, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1554, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1555, 97, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:07:25', '2017-12-12 09:29:46'),
(1556, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1557, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1558, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1559, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1560, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1561, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1562, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1563, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1564, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1565, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1566, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1567, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1568, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1569, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:34', '2017-12-12 09:29:46'),
(1570, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1571, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1572, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1573, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1574, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1575, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1576, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1577, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1578, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1579, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1580, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1581, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1582, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1583, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1584, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1585, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1586, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1587, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1588, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1589, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:35', '2017-12-12 09:29:46'),
(1590, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1591, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1592, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1593, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1594, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1595, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1596, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1597, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1598, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1599, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1600, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1601, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1602, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1603, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1604, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1605, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1606, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1607, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1608, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1609, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1610, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1611, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:36', '2017-12-12 09:29:46'),
(1612, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1613, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1614, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1615, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1616, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1617, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1618, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1619, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1620, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1621, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1622, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1623, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1624, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1625, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1626, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1627, 100, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:11:37', '2017-12-12 09:29:46'),
(1628, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:12', '2017-12-12 09:29:46'),
(1629, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:12', '2017-12-12 09:29:46'),
(1630, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:12', '2017-12-12 09:29:46'),
(1631, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:12', '2017-12-12 09:29:46'),
(1632, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:12', '2017-12-12 09:29:46'),
(1633, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:12', '2017-12-12 09:29:46'),
(1634, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:12', '2017-12-12 09:29:46'),
(1635, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1636, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1637, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1638, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1639, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1640, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1641, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1642, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1643, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1644, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1645, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1646, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1647, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1648, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1649, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1650, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1651, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1652, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1653, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1654, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1655, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:13', '2017-12-12 09:29:46'),
(1656, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1657, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1658, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1659, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1660, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1661, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1662, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1663, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1664, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1665, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1666, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1667, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1668, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1669, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1670, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1671, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1672, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1673, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1674, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1675, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1676, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1677, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:14', '2017-12-12 09:29:46'),
(1678, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1679, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1680, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1681, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1682, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1683, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1684, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1685, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1686, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1687, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1688, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1689, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1690, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1691, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1692, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1693, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1694, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1695, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1696, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1697, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1698, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1699, 101, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:12:15', '2017-12-12 09:29:46'),
(1700, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:01', '2017-12-12 09:29:46'),
(1701, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:01', '2017-12-12 09:29:46'),
(1702, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:01', '2017-12-12 09:29:46'),
(1703, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:01', '2017-12-12 09:29:46'),
(1704, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:01', '2017-12-12 09:29:46'),
(1705, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:01', '2017-12-12 09:29:46'),
(1706, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:01', '2017-12-12 09:29:46'),
(1707, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1708, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1709, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1710, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1711, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1712, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1713, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1714, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1715, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1716, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1717, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1718, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1719, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1720, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1721, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1722, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1723, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1724, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1725, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1726, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1727, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1728, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:02', '2017-12-12 09:29:46'),
(1729, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1730, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1731, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1732, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1733, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1734, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1735, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1736, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1737, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1738, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1739, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1740, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1741, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1742, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1743, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1744, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1745, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1746, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1747, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:03', '2017-12-12 09:29:46'),
(1748, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1749, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1750, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1751, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1752, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1753, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1754, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1755, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1756, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1757, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1758, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1759, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1760, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1761, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1762, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1763, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1764, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1765, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1766, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1767, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:04', '2017-12-12 09:29:46'),
(1768, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:05', '2017-12-12 09:29:46'),
(1769, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:05', '2017-12-12 09:29:46'),
(1770, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:05', '2017-12-12 09:29:46'),
(1771, 102, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:13:05', '2017-12-12 09:29:46'),
(1772, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1773, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1774, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1775, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1776, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1777, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1778, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1779, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1780, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1781, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1782, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1783, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1784, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1785, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1786, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1787, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:35', '2017-12-12 09:29:46'),
(1788, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1789, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1790, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1791, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1792, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1793, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1794, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1795, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1796, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1797, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1798, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1799, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1800, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1801, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1802, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1803, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1804, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:36', '2017-12-12 09:29:46'),
(1805, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1806, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1807, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1808, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1809, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1810, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1811, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1812, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1813, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1814, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1815, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1816, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1817, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1818, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1819, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1820, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1821, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1822, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:37', '2017-12-12 09:29:46'),
(1823, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1824, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1825, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1826, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1827, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1828, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1829, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1830, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1831, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1832, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1833, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1834, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1835, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1836, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1837, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1838, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1839, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1840, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1841, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1842, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1843, 103, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:14:38', '2017-12-12 09:29:46'),
(1844, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1845, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1846, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1847, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1848, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1849, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1850, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1851, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1852, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1853, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1854, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1855, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1856, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1857, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1858, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1859, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1860, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:40', '2017-12-12 09:29:46'),
(1861, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1862, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1863, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1864, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1865, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1866, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1867, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1868, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1869, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1870, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1871, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1872, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1873, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1874, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1875, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1876, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1877, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1878, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1879, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1880, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:41', '2017-12-12 09:29:46'),
(1881, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1882, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1883, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1884, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1885, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1886, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1887, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1888, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1889, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1890, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1891, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1892, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1893, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1894, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1895, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1896, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1897, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1898, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1899, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:42', '2017-12-12 09:29:46'),
(1900, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1901, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1902, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1903, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1904, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1905, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1906, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1907, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1908, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1909, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1910, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1911, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1912, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1913, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1914, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1915, 104, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:17:43', '2017-12-12 09:29:46'),
(1916, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1917, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1918, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1919, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1920, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1921, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1922, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1923, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1924, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1925, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1926, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:32', '2017-12-12 09:29:46'),
(1927, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:33', '2017-12-12 09:29:46'),
(1928, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:33', '2017-12-12 09:29:46'),
(1929, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:33', '2017-12-12 09:29:46'),
(1930, 107, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:20:33', '2017-12-12 09:29:46'),
(1931, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1932, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1933, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1934, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1935, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1936, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1937, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1938, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1939, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1940, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46'),
(1941, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:09', '2017-12-12 09:29:46');
INSERT INTO `stores` (`id`, `user_id`, `product_id`, `product_name`, `serial_no`, `price`, `pv`, `status`, `lock_status`, `updated_at`, `created_at`) VALUES
(1942, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1943, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1944, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1945, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1946, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1947, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1948, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1949, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1950, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1951, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1952, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1953, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1954, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1955, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1956, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1957, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1958, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1959, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1960, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1961, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:10', '2017-12-12 09:29:46'),
(1962, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1963, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1964, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1965, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1966, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1967, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1968, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1969, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1970, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1971, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1972, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1973, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1974, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1975, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1976, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1977, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1978, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1979, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1980, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:11', '2017-12-12 09:29:46'),
(1981, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1982, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1983, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1984, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1985, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1986, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1987, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1988, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1989, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1990, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1991, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1992, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1993, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1994, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1995, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1996, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1997, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1998, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(1999, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(2000, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:12', '2017-12-12 09:29:46'),
(2001, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:13', '2017-12-12 09:29:46'),
(2002, 110, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:23:13', '2017-12-12 09:29:46'),
(2003, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:16', '2017-12-12 09:29:46'),
(2004, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2005, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2006, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2007, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2008, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2009, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2010, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2011, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2012, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2013, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2014, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2015, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2016, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2017, 112, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:25:17', '2017-12-12 09:29:46'),
(2018, 119, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:31:36', '2017-12-12 09:29:46'),
(2019, 119, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:31:36', '2017-12-12 09:29:46'),
(2020, 120, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:32:46', '2017-12-12 09:29:46'),
(2021, 120, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:32:46', '2017-12-12 09:29:46'),
(2022, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:15', '2017-12-12 09:29:46'),
(2023, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:15', '2017-12-12 09:29:46'),
(2024, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2025, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2026, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2027, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2028, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2029, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2030, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2031, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2032, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2033, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2034, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2035, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2036, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2037, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2038, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2039, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2040, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2041, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2042, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2043, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:16', '2017-12-12 09:29:46'),
(2044, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2045, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2046, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2047, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2048, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2049, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2050, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2051, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2052, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2053, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2054, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2055, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2056, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2057, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2058, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2059, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2060, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2061, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2062, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2063, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:17', '2017-12-12 09:29:46'),
(2064, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2065, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2066, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2067, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2068, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2069, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2070, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2071, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2072, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2073, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2074, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2075, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2076, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2077, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2078, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2079, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2080, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2081, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2082, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:18', '2017-12-12 09:29:46'),
(2083, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2084, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2085, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2086, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2087, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2088, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2089, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2090, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2091, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2092, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2093, 123, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:37:19', '2017-12-12 09:29:46'),
(2094, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2095, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2096, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2097, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2098, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2099, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2100, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2101, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2102, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2103, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:30', '2017-12-12 09:29:46'),
(2104, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2105, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2106, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2107, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2108, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2109, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2110, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2111, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2112, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2113, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2114, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2115, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2116, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2117, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2118, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2119, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2120, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:31', '2017-12-12 09:29:46'),
(2121, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2122, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2123, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2124, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2125, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2126, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2127, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2128, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2129, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2130, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2131, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2132, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2133, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2134, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2135, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2136, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2137, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2138, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2139, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2140, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2141, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:32', '2017-12-12 09:29:46'),
(2142, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2143, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2144, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2145, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2146, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2147, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2148, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2149, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2150, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2151, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2152, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2153, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2154, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2155, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2156, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2157, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2158, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2159, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2160, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:33', '2017-12-12 09:29:46'),
(2161, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:34', '2017-12-12 09:29:46'),
(2162, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:34', '2017-12-12 09:29:46'),
(2163, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:34', '2017-12-12 09:29:46'),
(2164, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:34', '2017-12-12 09:29:46'),
(2165, 124, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:38:34', '2017-12-12 09:29:46'),
(2166, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:14', '2017-12-12 09:29:46'),
(2167, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:14', '2017-12-12 09:29:46'),
(2168, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:14', '2017-12-12 09:29:46'),
(2169, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2170, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2171, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2172, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2173, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2174, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2175, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2176, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2177, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2178, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2179, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2180, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2181, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2182, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2183, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2184, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2185, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2186, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2187, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2188, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:15', '2017-12-12 09:29:46'),
(2189, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2190, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2191, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2192, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2193, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2194, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2195, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2196, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2197, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2198, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2199, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2200, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2201, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2202, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2203, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2204, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2205, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2206, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2207, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2208, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:16', '2017-12-12 09:29:46'),
(2209, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2210, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2211, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2212, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2213, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2214, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2215, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2216, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2217, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2218, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2219, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2220, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2221, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2222, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2223, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2224, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2225, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2226, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2227, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2228, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2229, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:17', '2017-12-12 09:29:46'),
(2230, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2231, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2232, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2233, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2234, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2235, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2236, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2237, 125, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:39:18', '2017-12-12 09:29:46'),
(2238, 128, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:45:32', '2017-12-12 09:29:46'),
(2239, 128, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:45:32', '2017-12-12 09:29:46'),
(2240, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2241, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2242, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2243, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2244, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2245, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2246, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2247, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2248, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2249, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:53', '2017-12-12 09:29:46'),
(2250, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2251, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2252, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2253, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2254, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2255, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2256, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2257, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2258, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2259, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2260, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2261, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2262, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2263, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2264, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2265, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2266, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2267, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2268, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:54', '2017-12-12 09:29:46'),
(2269, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2270, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2271, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2272, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2273, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2274, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2275, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2276, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2277, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2278, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2279, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2280, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2281, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2282, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2283, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2284, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2285, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2286, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2287, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:55', '2017-12-12 09:29:46'),
(2288, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2289, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2290, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2291, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2292, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2293, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2294, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2295, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2296, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2297, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2298, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2299, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2300, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2301, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2302, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2303, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2304, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2305, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2306, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2307, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:56', '2017-12-12 09:29:46'),
(2308, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:57', '2017-12-12 09:29:46'),
(2309, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:57', '2017-12-12 09:29:46'),
(2310, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:57', '2017-12-12 09:29:46'),
(2311, 132, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 12:52:57', '2017-12-12 09:29:46'),
(2312, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:10', '2017-12-12 09:29:46'),
(2313, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:10', '2017-12-12 09:29:46'),
(2314, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:10', '2017-12-12 09:29:46'),
(2315, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2316, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2317, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2318, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2319, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2320, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2321, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2322, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2323, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2324, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2325, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2326, 135, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:09:11', '2017-12-12 09:29:46'),
(2327, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:57', '2017-12-12 09:29:46'),
(2328, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:57', '2017-12-12 09:29:46'),
(2329, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:57', '2017-12-12 09:29:46'),
(2330, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:57', '2017-12-12 09:29:46'),
(2331, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:57', '2017-12-12 09:29:46'),
(2332, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:57', '2017-12-12 09:29:46'),
(2333, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2334, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2335, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2336, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2337, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2338, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2339, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2340, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2341, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2342, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2343, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2344, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2345, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2346, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2347, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:58', '2017-12-12 09:29:46'),
(2348, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2349, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2350, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2351, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2352, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2353, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2354, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2355, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2356, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2357, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2358, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2359, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2360, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2361, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2362, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2363, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2364, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2365, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2366, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2367, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:11:59', '2017-12-12 09:29:46'),
(2368, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2369, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2370, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2371, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2372, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2373, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2374, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46');
INSERT INTO `stores` (`id`, `user_id`, `product_id`, `product_name`, `serial_no`, `price`, `pv`, `status`, `lock_status`, `updated_at`, `created_at`) VALUES
(2375, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2376, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2377, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2378, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2379, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2380, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2381, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2382, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2383, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2384, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2385, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2386, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2387, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2388, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:00', '2017-12-12 09:29:46'),
(2389, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2390, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2391, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2392, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2393, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2394, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2395, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2396, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2397, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2398, 138, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:12:01', '2017-12-12 09:29:46'),
(2399, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2400, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2401, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2402, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2403, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2404, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2405, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2406, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2407, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2408, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2409, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2410, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2411, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2412, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:45', '2017-12-12 09:29:46'),
(2413, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2414, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2415, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2416, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2417, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2418, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2419, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2420, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2421, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2422, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2423, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2424, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2425, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2426, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2427, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2428, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2429, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2430, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2431, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2432, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:46', '2017-12-12 09:29:46'),
(2433, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2434, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2435, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2436, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2437, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2438, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2439, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2440, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2441, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2442, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2443, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2444, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2445, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2446, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2447, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2448, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2449, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2450, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2451, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:47', '2017-12-12 09:29:46'),
(2452, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2453, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2454, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2455, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2456, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2457, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2458, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2459, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2460, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2461, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2462, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2463, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2464, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2465, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2466, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2467, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2468, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2469, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2470, 140, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:14:48', '2017-12-12 09:29:46'),
(2471, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:34', '2017-12-12 09:29:46'),
(2472, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:34', '2017-12-12 09:29:46'),
(2473, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:34', '2017-12-12 09:29:46'),
(2474, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:34', '2017-12-12 09:29:46'),
(2475, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2476, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2477, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2478, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2479, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2480, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2481, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2482, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2483, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2484, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2485, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2486, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2487, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2488, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2489, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2490, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2491, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2492, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:35', '2017-12-12 09:29:46'),
(2493, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2494, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2495, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2496, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2497, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2498, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2499, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2500, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2501, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2502, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2503, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2504, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2505, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2506, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2507, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2508, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2509, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2510, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2511, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:36', '2017-12-12 09:29:46'),
(2512, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2513, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2514, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2515, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2516, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2517, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2518, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2519, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2520, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2521, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2522, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2523, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2524, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2525, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2526, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2527, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2528, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2529, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2530, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:37', '2017-12-12 09:29:46'),
(2531, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2532, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2533, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2534, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2535, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2536, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2537, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2538, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2539, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2540, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2541, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2542, 141, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:15:38', '2017-12-12 09:29:46'),
(2543, 45, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:32:39', '2017-12-12 09:29:46'),
(2544, 45, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:32:39', '2017-12-12 09:29:46'),
(2545, 61, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:37:54', '2017-12-12 09:29:46'),
(2546, 61, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:37:54', '2017-12-12 09:29:46'),
(2547, 74, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:41:16', '2017-12-12 09:29:46'),
(2548, 74, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2017-07-20 13:41:16', '2017-12-12 09:29:46'),
(2549, 13, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2018-04-25 17:34:00', '2018-04-25 17:34:00'),
(2550, 13, 2, 'Product: Right Solution', '', 252, 85, 'Stocking', 'unlock', '2018-04-25 17:34:00', '2018-04-25 17:34:00'),
(2551, 16, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2018-04-30 15:06:44', '2018-04-30 15:06:44'),
(2552, 16, 2, 'Product: Right Solution', '', 252, 85, 'Stocking', 'unlock', '2018-04-30 15:06:44', '2018-04-30 15:06:44'),
(2553, 17, 1, 'Product: Femalov', '', 210, 70, 'Stocking', 'unlock', '2018-05-07 12:44:50', '2018-05-07 12:44:50'),
(2554, 17, 6, 'Product: H2 Zeta Mist Spray 150ML', '', 230, 78, 'Stocking', 'unlock', '2018-05-07 12:44:51', '2018-05-07 12:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `street` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `telephone_no` varchar(16) NOT NULL,
  `fax_no` varchar(16) NOT NULL,
  `email` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company_name`, `street`, `postcode`, `city`, `state`, `country`, `telephone_no`, `fax_no`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ABC SDN BHD', 'asdasdas', 2147483647, 'asdasd', 'asdasdas', 'Malaysia', '123123', '123123', 'admin@abc.com', '2016-10-28 09:30:12', '2016-10-28 09:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `security_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introducer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total_referral` int(11) DEFAULT '0',
  `rank_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `security_code`, `mobile_no`, `remember_token`, `introducer`, `total_referral`, `rank_id`, `created_at`, `updated_at`, `verified`, `email_token`) VALUES
(1, 'user1', 'user1@mail.com', '$2y$10$/BZ1d8b.31zi1tsx.t9j.eqTQjqpe4Z/n.AMH.YrcPEbZ0/eLdfnK', '$2y$10$/BZ1d8b.31zi1tsx.t9j.eqTQjqpe4Z/n.AMH.YrcPEbZ0/eLdfnK', '01688648', 'TO1x2ooYKFEd9kJVD7zcKyUPTcTZ9w9u9wbZAUJ7MGjPXmsC67ZFdX7rPg5L', 'admin', 14, 5, '2017-07-17 06:59:25', '2017-10-04 22:59:07', 0, NULL),
(2, 'user2', 'user2@mail.com', '$2y$10$zn8z9yg/f8EDkCQ7qb7wD.fvjFDO52h5qXnVJ52tA5wCz13NMPvze', '$2y$10$zn8z9yg/f8EDkCQ7qb7wD.fvjFDO52h5qXnVJ52tA5wCz13NMPvze', '01386849', 'zSFFeHTcHNKYI6TSPm5i6nx6FG7ytdgSF4C82pbm4kp8OUZ9ed1CGdy15nDN', 'user1', 0, 2, '2017-07-17 07:05:02', '2018-01-18 14:54:38', 0, NULL),
(3, 'user3', 'user3@mail.com', '$2y$10$qPZlbYYlJ1bKfdcONm/xauVXNzPyTth0oayZRYfV.YXaUe1ld/i5W', '$2y$10$qPZlbYYlJ1bKfdcONm/xauVXNzPyTth0oayZRYfV.YXaUe1ld/i5W', '01398498', 'PZVdj1mCZiFKnVeGRF3rQYpO9RDAlYXG79EDKgieVf3oydztZbf88LMLBtm7', 'user1', 1, 2, '2017-07-17 07:06:30', '2017-07-17 07:34:25', 0, NULL),
(4, 'user4', 'user4@mail.com', '$2y$10$Yd.GAtUsBnpfB/vOHUSJzO8wZe4LVu9YLK2zUMKqXndWHexNVCZwO', '$2y$10$Yd.GAtUsBnpfB/vOHUSJzO8wZe4LVu9YLK2zUMKqXndWHexNVCZwO', '01689848', 'q2rfXmZDUb0xS0qYA6qw21t7glMmi5T8j236nTVJqFez7ft7ULPCwwfvUVM9', 'user1', 2, 3, '2017-07-17 07:07:35', '2017-07-17 07:36:13', 0, NULL),
(5, 'user5', 'user5@mail.com', '$2y$10$HIXYdmbgELhbQWl34auioOO8NhwHiPddaPq/vT.c9h76iqj9CMiie', '$2y$10$HIXYdmbgELhbQWl34auioOO8NhwHiPddaPq/vT.c9h76iqj9CMiie', '013846848', 'U1rECsW8F2MnY8Rqk5e1YbjPD5EghJK5R4Vz2mTdWzXQ4s2iFsILCrDCG0Yh', 'user1', 8, 4, '2017-07-17 07:11:11', '2017-07-17 11:01:22', 0, NULL),
(6, 'user6', 'user6@mail.com', '$2y$10$Czm.VLEgbenB6Hr50Hb7Eu0QgTrzZMA6oJgNojoHqxmxJ5igtwDsG', '$2y$10$Czm.VLEgbenB6Hr50Hb7Eu0QgTrzZMA6oJgNojoHqxmxJ5igtwDsG', '013684684', 'gTmVDguY0pn7jRnQYdsyaN2OmnyaxssCl9BHp4lYwo3WJrQAxOR0KEMQmM5Y', 'user1', 0, 2, '2017-07-17 07:24:02', '2018-01-18 14:59:06', 0, NULL),
(7, 'user7', 'user7@mail.com', '$2y$10$jRtP2MTkyoRMQeA6Y7BOUes0H54CohJlPofdP3RZWe900sxWB6Bui', '$2y$10$jRtP2MTkyoRMQeA6Y7BOUes0H54CohJlPofdP3RZWe900sxWB6Bui', '035846161', 'qmQLRyEvMZewybCSJRuKSzaDCPiEnnGgKjYupcZCyMs0MFwYCwbyuqByPyRY', 'user1', 1, 2, '2017-07-17 07:24:41', '2017-07-17 07:48:12', 0, NULL),
(8, 'user8', 'user8@mail.com', '$2y$10$hizBT2PW3QDOJO1/o7RmfOtefkK6rlbYuI2qjYgW9kXyZkzzMcoAS', '$2y$10$hizBT2PW3QDOJO1/o7RmfOtefkK6rlbYuI2qjYgW9kXyZkzzMcoAS', '018498984', 'xSrIl85jFXt6Oxzl9yZLnS2D1dANBkEo2kh0oONm8Js8kMup65FLP1geetN9', 'user1', 2, 3, '2017-07-17 07:25:21', '2017-07-17 07:50:36', 0, NULL),
(9, 'user9', 'user9@mail.com', '$2y$10$wDVhTaMQyk1CSrd.8QgKxe17Ric3baKuFxpNw6SFGZNlzeVOyo2Um', '$2y$10$wDVhTaMQyk1CSrd.8QgKxe17Ric3baKuFxpNw6SFGZNlzeVOyo2Um', '01686848964', 'AJhC3tvNYvKIWxseEN8mtb3jS02otGz773asTEVVwfyuYHXRsvwjP8WVCzK6', 'user1', 5, 4, '2017-07-17 07:26:03', '2017-07-17 11:19:15', 0, NULL),
(10, 'user10', 'user10@mail.com', '$2y$10$wsKZMp3OXpwnIH0Sl7CwauKDKEqEznttvq0hShJ5t6IkVJXZXUjkq', '$2y$10$wsKZMp3OXpwnIH0Sl7CwauKDKEqEznttvq0hShJ5t6IkVJXZXUjkq', '0168494', 'nkPGKP11wTzI9f0x0rasHzOjZBHyVF8O1e1EZvXfDvmJC0G6ssYXebrrDYeh', 'user1', 1, 3, '2017-07-17 07:26:56', '2018-01-18 15:01:59', 0, NULL),
(11, 'user11', 'user11@mail.com', '$2y$10$2VHrf7afCpcbm2pGOwmaMuRKe.JU/05Q/hbIYNOcv/GikUrnKnGBi', '$2y$10$2VHrf7afCpcbm2pGOwmaMuRKe.JU/05Q/hbIYNOcv/GikUrnKnGBi', '01684894', 'BKUsNBFKit43QAsyHFYEwuIbUmcTVO2YqKafF3K7syxXwuj80i4pNUZ2BfKo', 'user1', 1, 2, '2017-07-17 07:27:38', '2017-07-17 07:56:01', 0, NULL),
(12, 'user12', 'user12@mail.com', '$2y$10$Yv0qsQ/P.hokR8roB/EtxetqmshQW0Y8/B7LBac52VuTpJ0AEdvte', '$2y$10$Yv0qsQ/P.hokR8roB/EtxetqmshQW0Y8/B7LBac52VuTpJ0AEdvte', '0168948', 'jMLhel9JrECpOJE64J3P3j5v0l6U6u53gorjkIR1Ohzu7sNdmBuYkLMcrpZO', 'user1', 2, 3, '2017-07-17 07:30:14', '2017-07-17 07:57:36', 0, NULL),
(13, 'user13', 'user13@mail.com', '$2y$10$UPsnGGRW3us3AzgmvPVKaOYOTs7PGPaTupHqRvK5grkYlONvo3Sp6', '$2y$10$UPsnGGRW3us3AzgmvPVKaOYOTs7PGPaTupHqRvK5grkYlONvo3Sp6', '01689484', 'a94AjShxoPTuB9t8AfWh6yM6P0OAHrj3uDYIH6aYBy74tmgxZSOFDcvKTE5r', 'user1', 6, 4, '2017-07-17 07:31:17', '2017-07-17 11:24:41', 0, NULL),
(14, 'user14', 'user14@mail.com', '$2y$10$if1uOdYFDoDzN8Jsoonuc.YfGA/tiaWSx3Mtx1zXsyrpJYGqH0t56', '$2y$10$if1uOdYFDoDzN8Jsoonuc.YfGA/tiaWSx3Mtx1zXsyrpJYGqH0t56', '01688888849', 'Z6dib1XvcdSOad0PQgKqRBXNn75Z2UjDSVoJjdGptyvZiTk7KilTh6a5LARA', 'user3', 0, 2, '2017-07-17 07:34:25', '2017-07-17 07:34:37', 0, NULL),
(15, 'user15', 'user15@mail.com', '$2y$10$2wdi9S6eIB.7/Jup9FSYJOvRyrvwut30O9S9o5Gq8MBoGu.WsdE1u', '$2y$10$2wdi9S6eIB.7/Jup9FSYJOvRyrvwut30O9S9o5Gq8MBoGu.WsdE1u', '0123894894', 'tf6Cs8ofd2uGgRXPn5eOGy349Iz1R574JT0DVSflVdYXul6Ok75oWPB0jCuc', 'user4', 1, 3, '2017-07-17 07:35:19', '2017-07-17 08:03:11', 0, NULL),
(16, 'user16', 'user16@mail.com', '$2y$10$5DGNGddysjSYvEtw0HxfD.pDhannGzVt6R/E.fbRY2H8URIEZoolq', '$2y$10$5DGNGddysjSYvEtw0HxfD.pDhannGzVt6R/E.fbRY2H8URIEZoolq', '01568949', 'Nzs7yhFkCSyXLC6Nqh0dy2TaVxRj13q6px1VtsKzAj3CDDzyBAOnEMKl0d0u', 'user4', 0, 4, '2017-07-17 07:36:13', '2017-07-17 07:36:27', 0, NULL),
(17, 'user17', 'user17@mail.com', '$2y$10$xkFP6p2eSDpChXIq1VnX0uom3lldFbrHmCOgun8sDSPNC1akR.JX2', '$2y$10$xkFP6p2eSDpChXIq1VnX0uom3lldFbrHmCOgun8sDSPNC1akR.JX2', '015849998', 'mUJt8wzzt6MH2L1OY3jIbg1izfIGNoRIfdYT6zNG9uQdTPo2gppKykInCi18', 'user5', 3, 3, '2017-07-17 07:38:02', '2017-07-17 08:05:29', 0, NULL),
(18, 'user18', 'user18@mail.com', '$2y$10$yTx.pRNGk6iiymy6aFyurOYk1p4gIXi/GaRxCOJm2zJQsMjvWJEOi', '$2y$10$yTx.pRNGk6iiymy6aFyurOYk1p4gIXi/GaRxCOJm2zJQsMjvWJEOi', '014569849', 'PssVoORjibUNMDrCv5P1nc46QqRNbm696KEyHadieoQJ8J9lolGYaVys46ek', 'user5', 0, 1, '2017-07-17 07:38:42', '2017-07-17 07:38:42', 0, NULL),
(19, 'user19', 'user19@mail.com', '$2y$10$U13P0gfWeB4u8WqwkFAue.JXx5j8aN50kx2wFQL09T4B.7iDf79C2', '$2y$10$U13P0gfWeB4u8WqwkFAue.JXx5j8aN50kx2wFQL09T4B.7iDf79C2', '01689849', 'q9iPOO7wLsbkgl8MyyKQlN3Jt5BHVz5PdX9RzWTD6swUUhLlaRDAcisDlgBE', 'user5', 2, 2, '2017-07-17 07:39:17', '2017-07-17 08:07:23', 0, NULL),
(20, 'user20', 'user20@mail.com', '$2y$10$n3vKoSiTpV9Szo1EYIa9xex9zJB8JwZyHJXsOg69R9ka6tNHUoGpW', '$2y$10$n3vKoSiTpV9Szo1EYIa9xex9zJB8JwZyHJXsOg69R9ka6tNHUoGpW', '01798984984', 'MI7NIcGmkkes2z7neuU3cUi7tOIgAZ6keYS7KsAH0ErOGbxb1FeYpxmI1V0t', 'user5', 0, 4, '2017-07-17 07:47:00', '2017-07-17 07:47:14', 0, NULL),
(21, 'user21', 'user21@mail.com', '$2y$10$gAB.hh5r0WemB02Mfx6zYu6Rto08EVs/JW8mxiPaUwmUcDu2VC/Jq', '$2y$10$gAB.hh5r0WemB02Mfx6zYu6Rto08EVs/JW8mxiPaUwmUcDu2VC/Jq', '018984994', 'nW0c1UrVwjZRkWnqOnCwjtECYxGS8xTPq4xRJR7kl3SIxMnlUEsiqKk6rc3n', 'user7', 0, 2, '2017-07-17 07:48:12', '2017-07-17 07:48:36', 0, NULL),
(22, 'user22', 'user22@mail.com', '$2y$10$TD4SoBSD6L/Sp6OWNAQop.AxD0D5hKxCXZX0mtXFc61ikDd7vKsvu', '$2y$10$TD4SoBSD6L/Sp6OWNAQop.AxD0D5hKxCXZX0mtXFc61ikDd7vKsvu', '01487849489', 'r2GytHEVBHUT9R97egJJnc1PFfF1603NJquhish1b7An15bp3rTJdc3S8rP3', 'user8', 1, 3, '2017-07-17 07:49:44', '2017-07-17 08:08:04', 0, NULL),
(23, 'user23', 'user23@mail.com', '$2y$10$gsvD7qmmaLRz7WGWiEqmzOn51eo.twDAe7/7dRIDDJ2PskJyjaWvG', '$2y$10$gsvD7qmmaLRz7WGWiEqmzOn51eo.twDAe7/7dRIDDJ2PskJyjaWvG', '018984955', 'bNBpvXfySJoRyTBWWQKgBLGz8OsNNOruT5ZDxZ7tT5LW1GwrKzR4OIFpspFF', 'user8', 0, 4, '2017-07-17 07:50:36', '2017-07-17 07:50:47', 0, NULL),
(24, 'user24', 'user24@mail.com', '$2y$10$3I9W/6Y3qFGo.nd3UMkJaeOxbkG7lWkU3yT7tAdEHRUB2ERBHS7Qy', '$2y$10$3I9W/6Y3qFGo.nd3UMkJaeOxbkG7lWkU3yT7tAdEHRUB2ERBHS7Qy', '0123854984', 'M3UZK3rhnwg4pgp0tVrOj25MEgUTYGxc1nwTfSRHzd8NnN45RW86ikCfMaVY', 'user9', 3, 3, '2017-07-17 07:51:29', '2017-07-17 08:11:37', 0, NULL),
(25, 'user25', 'user25@mail.com', '$2y$10$FquXPto3lgGBZXKl3BGH8eNxQ8RyRlmzrJIkcKfNQCEIg4g0D9lvO', '$2y$10$FquXPto3lgGBZXKl3BGH8eNxQ8RyRlmzrJIkcKfNQCEIg4g0D9lvO', '016584984', 'Y0nzkIVfiE1RVUU02pbZsj2XcUCokfGGG37rs8S2g47MV1yJGpGL7ueh0uzd', 'user9', 0, 1, '2017-07-17 07:52:14', '2017-07-17 07:52:14', 0, NULL),
(26, 'user26', 'user26@mail.com', '$2y$10$q.ERPbrYOozOPmtTtLUIA.CGcshkdeY48ESMvmJ525JWR9E0D2cBy', '$2y$10$q.ERPbrYOozOPmtTtLUIA.CGcshkdeY48ESMvmJ525JWR9E0D2cBy', '0135984', 'PWjEDvvXhWZSmDzARjVZ05E4WxxJ5sb8e88zutwPhuY0OqSQt71y1yJtuvCM', 'user9', 2, 2, '2017-07-17 07:53:03', '2017-07-17 08:13:38', 0, NULL),
(27, 'user27', 'user27@mail.com', '$2y$10$YsmpLuwEhN0NHuiG.vPMxuxk0haHns6qECf7B3oVgFXnVAwqWnnhO', '$2y$10$YsmpLuwEhN0NHuiG.vPMxuxk0haHns6qECf7B3oVgFXnVAwqWnnhO', '014684984', 'nYSoJwbF21CpWk2FOogA5bjropd2hMFEyZBtdx3SvpsDoAP1fScy6twvWxSI', 'user9', 0, 4, '2017-07-17 07:54:00', '2017-07-17 07:54:20', 0, NULL),
(28, 'user28', 'user28@mail.com', '$2y$10$9hg6YuimRren1sZqdWrZ3.lW40Xtt6tcgHCwuCqdff4jZE76msUBm', '$2y$10$9hg6YuimRren1sZqdWrZ3.lW40Xtt6tcgHCwuCqdff4jZE76msUBm', '01654849', '6YmjjkZbDT7XrOxsqlDtOI2xta6zzqTPTM3ywLD7TGGo2zyFSvNFKowBM0Zg', 'user10', 0, 1, '2017-07-17 07:55:12', '2017-07-17 07:55:12', 0, NULL),
(29, 'user29', 'user29@mail.com', '$2y$10$quVq6N0YOmw6t/VsgeDxmevZ89BoDedIdmHR6N58uN.4nmEICybnS', '$2y$10$quVq6N0YOmw6t/VsgeDxmevZ89BoDedIdmHR6N58uN.4nmEICybnS', '014849849', 'pPzsGJZ4AsgpKyGLI7aIYWzx6kZ2sdUGEAE5lwKhFsCyEGN1omyG06CIi9xV', 'user11', 0, 2, '2017-07-17 07:56:01', '2017-07-17 07:56:12', 0, NULL),
(30, 'user30', 'user30@mail.com', '$2y$10$d3pyUL9SkEhMgYUutdU3R.UtlPltx9h7MKhoH37H9dTLo13KMm2fa', '$2y$10$d3pyUL9SkEhMgYUutdU3R.UtlPltx9h7MKhoH37H9dTLo13KMm2fa', '014984984', '27cwCbGllfvuHfaFosXp9YAL8jNpzMytImjZWQd4VNQWYl066s5AMLSfCnCn', 'user12', 1, 3, '2017-07-17 07:56:48', '2017-07-17 08:14:22', 0, NULL),
(31, 'user31', 'user31@mail.com', '$2y$10$QhpAdhNjsyv0zmRjrp49jeWPR4rQ7gbJy2hxd8dHTDPv4q73gCyCi', '$2y$10$QhpAdhNjsyv0zmRjrp49jeWPR4rQ7gbJy2hxd8dHTDPv4q73gCyCi', '016589848', 'wddX8CcxD3Fzcrbgel7swcHm9flRe9oWRLJxWHeJJXZrSXvVXOgQlLwpRyph', 'user12', 0, 4, '2017-07-17 07:57:36', '2017-07-17 07:57:47', 0, NULL),
(32, 'user32', 'user32@mail.com', '$2y$10$O/ADnaO3TpPIfa29ATVPjuXrqQz7d7U4z7lbh25D4fk0Hq9.Kgd8a', '$2y$10$O/ADnaO3TpPIfa29ATVPjuXrqQz7d7U4z7lbh25D4fk0Hq9.Kgd8a', '013594849', 'NMZRf9sZLFtaGQvKd86XQ4lROf4X6pSJRRIoE7aQ8Uf4QrwBDkNoQwf1xrkR', 'user13', 3, 3, '2017-07-17 07:58:28', '2017-07-17 08:16:58', 0, NULL),
(33, 'user33', 'user33@mail.com', '$2y$10$UfdevDyRG/SyqzknirQmAec8Xn/p11MKGaAbU8kzaQUhmgXGXB3oy', '$2y$10$UfdevDyRG/SyqzknirQmAec8Xn/p11MKGaAbU8kzaQUhmgXGXB3oy', '01254948', 'hAw1GcxTDfa6VAKbwTf3QNkR2B8CEifacZ5jEkzSRfl059moHfUkxevi5mTw', 'user13', 0, 1, '2017-07-17 07:59:21', '2017-07-17 07:59:21', 0, NULL),
(34, 'user34', 'user34@mail.com', '$2y$10$sE9fCuDo25Td/j4AClP2Gu4VmI5T5oo1D8Jvi0VdjRS6gGn1c95Fi', '$2y$10$sE9fCuDo25Td/j4AClP2Gu4VmI5T5oo1D8Jvi0VdjRS6gGn1c95Fi', '015649849', '6YzZvdtZzcaDvWVtcy0Ib7p17eUcb4Hizde60FCFtUKNKH2IGdFAJvsS30dQ', 'user13', 1, 2, '2017-07-17 07:59:52', '2017-07-17 08:17:50', 0, NULL),
(35, 'user35', 'user35@mail.com', '$2y$10$quGwfDXwruwXhirZZ8siUutL6P9oscviNS.Z5QaTiqeOMeDm4FlYu', '$2y$10$quGwfDXwruwXhirZZ8siUutL6P9oscviNS.Z5QaTiqeOMeDm4FlYu', '01884989498', 'oKwp6fAx8S6UyReK1le9voYdhf6DdEyp3HUCRt2hQQjNgUkEd49fZ7xpY3yl', 'user13', 0, 4, '2017-07-17 08:00:40', '2017-07-17 08:00:50', 0, NULL),
(36, 'user36', 'user36@mail.com', '$2y$10$t.R2fqxVSuQ4ksx2HFAXh.2V4M4HWDvAjydJMCwmW7/DdcwPt8FMm', '$2y$10$t.R2fqxVSuQ4ksx2HFAXh.2V4M4HWDvAjydJMCwmW7/DdcwPt8FMm', '01765464894', 'NQA3Ain8u353subSYqD5Gpc5hG6z9MDlgJcmpuWcGrvhWikeJjWA6KgmmP8z', 'user15', 1, 2, '2017-07-17 08:03:11', '2017-07-17 08:20:04', 0, NULL),
(37, 'user37', 'user37@mail.com', '$2y$10$MXda5Kbs/OkAtQ2F0NgBF./EWXtLG4aT9rMovleidUUJ0ApiympDi', '$2y$10$MXda5Kbs/OkAtQ2F0NgBF./EWXtLG4aT9rMovleidUUJ0ApiympDi', '019894849', 'WSHSOR8uSkyXzcUGJa1IwqOCW2hX7Jnw1XKmi0SKH9FntVtexhtD3JVulCiZ', 'user17', 0, 1, '2017-07-17 08:03:56', '2017-07-17 08:03:56', 0, NULL),
(38, 'user38', 'user38@mail.com', '$2y$10$BntsTAsPQbLul9Y93BQas.AlnjAutN4lVbXWOgJPLcGCYIhd2Fu6y', '$2y$10$BntsTAsPQbLul9Y93BQas.AlnjAutN4lVbXWOgJPLcGCYIhd2Fu6y', '019898654', 'RXWKNDBq8vBoA0GvyuuWGotMLwADQvMwHkzKsJ34tareEqBmIl8fM6mLYz7g', 'user17', 2, 2, '2017-07-17 08:04:41', '2017-07-17 08:21:38', 0, NULL),
(39, 'user39', 'user39@mail.com', '$2y$10$NzzTk7k/eM.FrQW7lyp0CebeTl/QcFzi.MMWYHbbmcog7BUEKCkh6', '$2y$10$NzzTk7k/eM.FrQW7lyp0CebeTl/QcFzi.MMWYHbbmcog7BUEKCkh6', '016585468', 'mOoBRasHa0uHtrACiVOZwbqpSNOvj1gvzWNZjU5hySwm1OTDiPdzjJ2CLxQ7', 'user17', 1, 3, '2017-07-17 08:05:29', '2017-07-17 08:22:26', 0, NULL),
(40, 'user40', 'user40@mail.com', '$2y$10$4I6.G29MtB2/qgikUiJflOv/ItMHUKoT3Wf6tKfywNXi.5Oo0jj3S', '$2y$10$4I6.G29MtB2/qgikUiJflOv/ItMHUKoT3Wf6tKfywNXi.5Oo0jj3S', '016846868', 'FOdFlGp1mALbbRT8ycRq3EqBdRRpb63JN93NzNEDA5PU9VPJwLj4nFNRgj69', 'user19', 1, 2, '2017-07-17 08:06:21', '2017-07-17 08:23:12', 0, NULL),
(41, 'user41', 'user41@mail.com', '$2y$10$eT5IIzAbSTRl0mUnIdj5ye2a0bOCEzT5l5MMdDOLlWS3H99L0tDbq', '$2y$10$eT5IIzAbSTRl0mUnIdj5ye2a0bOCEzT5l5MMdDOLlWS3H99L0tDbq', '0189798798', 'RRWKUIclCW0MP5rpAhQ1L6hZOeW9IMOEZFJXileZXaxAKuvT6BNNCKlRAheP', 'user19', 0, 1, '2017-07-17 08:07:23', '2017-07-17 08:07:23', 0, NULL),
(42, 'user42', 'user42@mail.com', '$2y$10$v94wKsufIr97Tdfk./hQV.5XHRhOdzTHp.Tc./xajg5/a3w3eR2py', '$2y$10$v94wKsufIr97Tdfk./hQV.5XHRhOdzTHp.Tc./xajg5/a3w3eR2py', '01587987', 'ApjNeCehmG6VqcsinVKJmXXELwgUFvfayViV5STJnpK3JJST09amQbPbiKBF', 'user22', 1, 2, '2017-07-17 08:08:04', '2017-07-17 08:23:52', 0, NULL),
(43, 'user43', 'user43@mail.com', '$2y$10$88TWRtOnQW.raGwxbVGkled..O8AHgihwtA8CiW3c6.b5CkQomMA2', '$2y$10$88TWRtOnQW.raGwxbVGkled..O8AHgihwtA8CiW3c6.b5CkQomMA2', '016846878', 'ASW2e6elJBYkn3ZQDOQEr1q9AGhYA7VmaEsoDn1yOgj0bNgDeD5FOCUa2HH2', 'user24', 0, 1, '2017-07-17 08:08:57', '2017-07-17 08:08:57', 0, NULL),
(44, 'user44', 'user44@mail.com', '$2y$10$fW/J1iGl10s2rOXSape1Z.Kf9k44A9RqSi9NJNpyxjqmwI/nVJZrK', '$2y$10$fW/J1iGl10s2rOXSape1Z.Kf9k44A9RqSi9NJNpyxjqmwI/nVJZrK', '01686849', 'YqKikUXUIjAASpxfpYZWqDNBLlT8kUZeEoZS0V1TR23FVB3GBL8IXahj6ddB', 'user24', 2, 2, '2017-07-17 08:10:31', '2017-07-17 08:25:48', 0, NULL),
(45, 'user45', 'user45@mail.com', '$2y$10$wXg0d5.nGiLnOlybgjdzdOlZlU4deMDC7EcEgeWwbyYtehtdX4tdy', '$2y$10$wXg0d5.nGiLnOlybgjdzdOlZlU4deMDC7EcEgeWwbyYtehtdX4tdy', '017468494', 'taHWmCSpJyhc4qKP2M4600EybuKkNh7CCRwX5M5swl3076Am8c1HkNhtbNO1', 'user24', 1, 3, '2017-07-17 08:11:37', '2017-07-17 08:26:32', 0, NULL),
(46, 'user46', 'user46@mail.com', '$2y$10$PPhhmMM9759gUZrXK9KE5.F7yw3opQ4pL7Upd6Z9v0QXH.3fhXzVK', '$2y$10$PPhhmMM9759gUZrXK9KE5.F7yw3opQ4pL7Upd6Z9v0QXH.3fhXzVK', '014846849', 'A1fRMlkKuYit2ZzC8odTsLUiIArOHxdtlxiv3U3LjRkj0AHFEHgAPzqHhbXC', 'user26', 1, 2, '2017-07-17 08:12:42', '2017-07-17 08:27:30', 0, NULL),
(47, 'user47', 'user47@mail.com', '$2y$10$EW8zVJVBE.Z.28zMBjH.VuIXnWadtYeGa.YWssw1Pgx7UKJwcfk02', '$2y$10$EW8zVJVBE.Z.28zMBjH.VuIXnWadtYeGa.YWssw1Pgx7UKJwcfk02', '0166489849', 'UJDCIyVHXGYPaMgi0IA9Xo8c94Kp5jSMHjFxirXHRMgU9yhSvnaydAjGppj5', 'user26', 0, 1, '2017-07-17 08:13:38', '2017-07-17 08:13:38', 0, NULL),
(48, 'user48', 'user48@mail.com', '$2y$10$P05i8DzGKfc84DvWuB8UGekd5HMOlvZy6RIuN.3WLbfUOGDQgKQJ2', '$2y$10$P05i8DzGKfc84DvWuB8UGekd5HMOlvZy6RIuN.3WLbfUOGDQgKQJ2', '016848949', 'seXYcTvcg9Ls9sji1nIVMB3HkjWh0rkYdNNDi0IX6x6aDHg3mcfptqKRMusB', 'user30', 1, 2, '2017-07-17 08:14:22', '2017-07-17 08:28:18', 0, NULL),
(49, 'user49', 'user49@mail.com', '$2y$10$b/0yxRiXEf7FVJobvZKQoebeVfoRE3YAfq7gNk7YasNnj6uYM4UQ2', '$2y$10$b/0yxRiXEf7FVJobvZKQoebeVfoRE3YAfq7gNk7YasNnj6uYM4UQ2', '016489499', 'zhuulEXIQuwmll7KLPScg146vboYuNWNrRmcH5HQRmGdX0qsHvVYJ58vMDV0', 'user32', 0, 1, '2017-07-17 08:15:27', '2017-07-17 08:15:27', 0, NULL),
(50, 'user50', 'user50@mail.com', '$2y$10$KIkxhVSbhcOHSISPZgDrfetMwmp9mpWTIqq5xZmWR6Nc5dxjE/W3a', '$2y$10$KIkxhVSbhcOHSISPZgDrfetMwmp9mpWTIqq5xZmWR6Nc5dxjE/W3a', '01235649849', 'p8oCMflB6tFyGgBEhWx1j1bQJZCaiHsAzHfivP3pBF2hFoaMxYyhkJyEw5lG', 'user32', 2, 2, '2017-07-17 08:16:05', '2017-07-17 08:30:13', 0, NULL),
(51, 'user51', 'user51@mail.com', '$2y$10$832v4zXuoKpC87SfV8QYn.1ZMW49IdvClzhKEG9G0LHnZO0V5iuDi', '$2y$10$832v4zXuoKpC87SfV8QYn.1ZMW49IdvClzhKEG9G0LHnZO0V5iuDi', '012384989', '1gZ1usqQRe7tyHsLjZFtbcfqd7PED54S68E0VOLa0aZkLoEe1d9YUFBzTcSc', 'user32', 1, 3, '2017-07-17 08:16:58', '2017-07-17 08:31:03', 0, NULL),
(52, 'user52', 'user52@mail.com', '$2y$10$waWU3zlvcig/Jx9B.kVNL.45xZpzi/3QJ.kMxlwGgU2mpljR9Hfni', '$2y$10$waWU3zlvcig/Jx9B.kVNL.45xZpzi/3QJ.kMxlwGgU2mpljR9Hfni', '0149849849', 'bDroJbeT8bR77y4kOOxjOv0zdwiWYQyf7HHnuBVPDWy5iM2EvkKSm8tJYgAK', 'user34', 1, 2, '2017-07-17 08:17:50', '2017-07-17 08:32:05', 0, NULL),
(53, 'user53', 'user53@mail.com', '$2y$10$Ja.GbiylwQDQK95MdBOC8.uW2U3VxXo821iXmtikLztcQDBrNn5YC', '$2y$10$Ja.GbiylwQDQK95MdBOC8.uW2U3VxXo821iXmtikLztcQDBrNn5YC', '0187845', '09njXGvS3x5bqlxo0Amy2b4JNn6WsA5UbZziaEtt0G1GFu26aRsCqxgSiNph', 'user36', 1, 2, '2017-07-17 08:20:04', '2017-07-17 08:33:54', 0, NULL),
(54, 'user54', 'user54@mail.com', '$2y$10$WYDkhp8uRLqN2jATVIpdnO91FE5kRXmVJy5w7taaeZYMw3ZFAFt.6', '$2y$10$WYDkhp8uRLqN2jATVIpdnO91FE5kRXmVJy5w7taaeZYMw3ZFAFt.6', '0135498984', 'wvb8GJNoQBlPWj2FvyVlfAz2V5aqBW1gGdKwmmosly8i6oQWfBUOhnl9mSvD', 'user38', 1, 2, '2017-07-17 08:20:49', '2017-07-17 08:34:31', 0, NULL),
(55, 'user55', 'user55@mail.com', '$2y$10$KwMxbs8ScOBS8QYw0ZTcCOYRaiT/x65.slnF2goSlH6v9ahga.Q9S', '$2y$10$KwMxbs8ScOBS8QYw0ZTcCOYRaiT/x65.slnF2goSlH6v9ahga.Q9S', '016546848', 'ADQ8QQfUynNJEXbHkZsqzlspxglZLOXXzLBXfZrz5hBd3bjmR6Xviat2FobG', 'user38', 0, 1, '2017-07-17 08:21:38', '2017-07-17 08:21:38', 0, NULL),
(56, 'user56', 'user56@mail.com', '$2y$10$KhK6P.zROgbFDibtSrAEdOk6BN/pG1NhLwhYigq/stPFcMuphI7q2', '$2y$10$KhK6P.zROgbFDibtSrAEdOk6BN/pG1NhLwhYigq/stPFcMuphI7q2', '017987979', 'IuxyE86qtIJvp1FXVc5YJnm1yqSG5p7ExkqF6rlATuFd5BqEkqY3cll96QLa', 'user39', 2, 4, '2017-07-17 08:22:26', '2017-07-17 08:36:06', 0, NULL),
(57, 'user57', 'user57@mail.com', '$2y$10$zPeHmpgh4uATfDCaJN4MFudQ21pzTE9MQ8XRcHea3s8AinbVGN1Gi', '$2y$10$zPeHmpgh4uATfDCaJN4MFudQ21pzTE9MQ8XRcHea3s8AinbVGN1Gi', '01454489894', 'D3fYC1sEn1Wj83mErEzVaEAQuPl4qvS4pE3FfFdsxWGeLDLENxevf8zqLdrg', 'user40', 0, 1, '2017-07-17 08:23:12', '2017-07-17 08:23:12', 0, NULL),
(58, 'user58', 'user58@mail.com', '$2y$10$BWCwnDk2UhW85kssLO63cutvywFaPV5r.bLRPkRO9CN5P/.DDXL/q', '$2y$10$BWCwnDk2UhW85kssLO63cutvywFaPV5r.bLRPkRO9CN5P/.DDXL/q', '0166546894', 'KkGcMwZeySoghexhEgQ5CHhGVVoE8s57FLCGQdoDZkrDq63rlO49utHOgalb', 'user42', 1, 2, '2017-07-17 08:23:52', '2017-07-17 08:36:57', 0, NULL),
(59, 'user59', 'user59@mail.com', '$2y$10$5yjPNzTOYkpwie7.iKu51eKOEhDLbxtse8Th3V6Akg/DdUE8rB84W', '$2y$10$5yjPNzTOYkpwie7.iKu51eKOEhDLbxtse8Th3V6Akg/DdUE8rB84W', '016546889', 'VP2nU9d9TdBFizeGGVPwk6piKrwr5buxYwwnX00w7WUq51jl2v2xNYiEoLRR', 'user44', 1, 2, '2017-07-17 08:25:02', '2017-07-17 08:37:32', 0, NULL),
(60, 'user60', 'user60@mail.com', '$2y$10$lZLqAiQoUO05y1pvJclPeeOKLFrYLoOMNcpYVpoX.oO62vU2hbFs.', '$2y$10$lZLqAiQoUO05y1pvJclPeeOKLFrYLoOMNcpYVpoX.oO62vU2hbFs.', '01321565465', 'CyO3LcFd33URYOaIUEDb7PP70vrU7hygED0ZTuWjqLkxhvXflQxLmO1VlWAN', 'user44', 0, 1, '2017-07-17 08:25:48', '2017-07-17 08:25:48', 0, NULL),
(61, 'user61', 'user61@mail.com', '$2y$10$8PmtGSsg01aTiNSLeHpb8e8grx7xp8mB4MxLrv4ewccLFfAHqVN7C', '$2y$10$8PmtGSsg01aTiNSLeHpb8e8grx7xp8mB4MxLrv4ewccLFfAHqVN7C', '015646898', '28Z4MdawdTNYQGJ6PZqTWF7Q4jS4zGDkAQZKvKSF95hx60L9K3vSCtNxvlAK', 'user45', 2, 4, '2017-07-17 08:26:32', '2017-07-17 08:38:56', 0, NULL),
(62, 'user62', 'user62@mail.com', '$2y$10$fRMcHmvqSkv.posdbVCTBOSqzUwJuKY0.IEt.f2HzHXiQGiwwBrJC', '$2y$10$fRMcHmvqSkv.posdbVCTBOSqzUwJuKY0.IEt.f2HzHXiQGiwwBrJC', '01356484', 'SlUlyaHNFQMxBhYwdPBm7EQ6GcK54QyciQ4gRkS4gPhWSBb2SdhEILmQcYOa', 'user46', 0, 1, '2017-07-17 08:27:29', '2017-07-17 08:27:29', 0, NULL),
(63, 'user63', 'user63@mail.com', '$2y$10$J.JoJlleLgVsjwNgkvCaYuY9DaWrhroi08dhVnO3keKRb.AYAqtJW', '$2y$10$J.JoJlleLgVsjwNgkvCaYuY9DaWrhroi08dhVnO3keKRb.AYAqtJW', '016548498', 's1Kc1wfIo6wFTJQwFwlwnwZHWXhDtuJa9b4bKkzLJn20hW1GXeuhRZIUKBx9', 'user48', 1, 2, '2017-07-17 08:28:18', '2017-07-17 08:40:11', 0, NULL),
(64, 'user64', 'user64@mail.com', '$2y$10$JyOheVhx6csk/IKn4FnRceBylFElLree0co9FudxQn0eTdRMn6/IO', '$2y$10$JyOheVhx6csk/IKn4FnRceBylFElLree0co9FudxQn0eTdRMn6/IO', '018949895', 'wO5KrFEX2Uu4VZx4dLrNDCJ2vllVfIenmJKrdyhpS4GKguP4COmEoZe06Uur', 'user50', 1, 2, '2017-07-17 08:29:13', '2017-07-17 08:40:47', 0, NULL),
(65, 'user65', 'user65@mail.com', '$2y$10$v5PRcGuDSne9FmlQaSLQLuJxJSlgkU6EVGG2ugAyNGRTqfrez90DC', '$2y$10$v5PRcGuDSne9FmlQaSLQLuJxJSlgkU6EVGG2ugAyNGRTqfrez90DC', '016546894', 'fs6a5LcJKlHBDx7GcLLD1MVo7xCTUfbyB8HUgtyvGdPz646LNAfW5UR4krsm', 'user50', 0, 1, '2017-07-17 08:30:13', '2017-07-17 08:30:13', 0, NULL),
(66, 'user66', 'user66@mail.com', '$2y$10$jSSPh8IPsF8KGE2NrZpN9O8L6S5j8ZsiiSmH.ABD88i53fWEEIqIW', '$2y$10$jSSPh8IPsF8KGE2NrZpN9O8L6S5j8ZsiiSmH.ABD88i53fWEEIqIW', '0145687989', 'aooo6SbsKkwwUiqLwuxyuD5goQNLzvW1xSijWzKldas2OnKflyyW6LLJjU3L', 'user51', 2, 4, '2017-07-17 08:31:03', '2017-07-17 08:42:05', 0, NULL),
(67, 'user67', 'user67@mail.com', '$2y$10$pvGe63BREOGq.Blddgzydu1BP56DA60seKK42J7wcZdCCWBj6gRni', '$2y$10$pvGe63BREOGq.Blddgzydu1BP56DA60seKK42J7wcZdCCWBj6gRni', '0165468998', 'JmQjXXmu0x4HjJjJDgr406atsIu55hvffeFtugi9kBsy9XpQR9XZ2veuzdN4', 'user52', 0, 1, '2017-07-17 08:32:05', '2017-07-17 08:32:05', 0, NULL),
(68, 'user68', 'user68@mail.com', '$2y$10$MiXIZkoKKbzvArsZX1.r5e/FuoJXruHazRf.xAD0QcH3KWRJ75EEq', '$2y$10$MiXIZkoKKbzvArsZX1.r5e/FuoJXruHazRf.xAD0QcH3KWRJ75EEq', '0168489489', 'UpZ2oq8DVjYZBH5MQ2TMDfcrwLdSLSSZ2E5F80rnLAKYxHVlodilG6wqeHnl', 'user53', 0, 1, '2017-07-17 08:33:54', '2017-07-17 08:33:54', 0, NULL),
(69, 'user69', 'user69@mail.com', '$2y$10$Fs9UxKOeh4QkOJtkCasFcuYDVtqe7uEcLRPI4/YyBK0PWh5J6wor6', '$2y$10$Fs9UxKOeh4QkOJtkCasFcuYDVtqe7uEcLRPI4/YyBK0PWh5J6wor6', '016848466', 'wyBJXFFMBqWdQYGHR8VyR9NOzXQ4YGjoMDf9RWpb2bJAMLtNsiSUEs0qsvrb', 'user54', 0, 1, '2017-07-17 08:34:31', '2017-07-17 08:34:31', 0, NULL),
(70, 'user70', 'user70@mail.com', '$2y$10$qhwioUPlJ6g1xZUid9UwNuKRXdgp0Bs988P3JLXcfgcMt3Vvw85Jy', '$2y$10$qhwioUPlJ6g1xZUid9UwNuKRXdgp0Bs988P3JLXcfgcMt3Vvw85Jy', '01954654646', 'XEpHOVGmxgIk40lIgpfweTXtFjkILqK3UJdyyK7oQpGnQwaSJg7oIXJGhyIq', 'user56', 1, 3, '2017-07-17 08:35:17', '2017-07-17 08:43:58', 0, NULL),
(71, 'user71', 'user71@mail.com', '$2y$10$QwxxtZmho9UIVV9MtYKqRuSJz/z/kQeJ1wxIKz2VIQqpvrh/FZFlO', '$2y$10$QwxxtZmho9UIVV9MtYKqRuSJz/z/kQeJ1wxIKz2VIQqpvrh/FZFlO', '015489949', 'mEtCZbce3oalGAbJZ2ZaDWToACPSoGcQTSruvQaE7tNpIXv8tWoSfeeVnkQI', 'user56', 1, 2, '2017-07-17 08:36:06', '2017-07-17 08:44:54', 0, NULL),
(72, 'user72', 'user72@mail.com', '$2y$10$g0Zgb02DC/wZyCrycni5/eesANVuHMZ2rtXWfFJOZk9cxRHjjrn8m', '$2y$10$g0Zgb02DC/wZyCrycni5/eesANVuHMZ2rtXWfFJOZk9cxRHjjrn8m', '0198486464', 'bUmTtzrOhmBljtwQjtTHLqajmtRvzeKJYhVI39cqDVZPbrEUyNirDVvEC6I0', 'user58', 0, 1, '2017-07-17 08:36:57', '2017-07-17 08:36:57', 0, NULL),
(73, 'user73', 'user73@mail.com', '$2y$10$3mj5TCpFOHq5vv1JPrswzeLq54oUCCY0Ds47eMj3NgWsQ22dY2Hlm', '$2y$10$3mj5TCpFOHq5vv1JPrswzeLq54oUCCY0Ds47eMj3NgWsQ22dY2Hlm', '01698498565', 'dOyCvGhLsRK6nczvESYwT3EvcZDEoFwXtamCFy06vDlzXh1sOolCkg1XNg2z', 'user59', 0, 1, '2017-07-17 08:37:32', '2017-07-17 08:37:32', 0, NULL),
(74, 'user74', 'user74@mail.com', '$2y$10$kLbWogFrDlzb0tRVRTZP9.nSRzWLLO9Xb9bGLzjhKGsPjI0kG7mvi', '$2y$10$kLbWogFrDlzb0tRVRTZP9.nSRzWLLO9Xb9bGLzjhKGsPjI0kG7mvi', '01874646465', 'H5i0Ocx6WAQaW26l37qgDRlWP9Ds9jISgsqbnkHag4aVCH2hPch4zwXAn1AB', 'user61', 1, 3, '2017-07-17 08:38:09', '2017-07-17 08:46:51', 0, NULL),
(75, 'user75', 'user75@mail.com', '$2y$10$YeUu2fWIqNHLpLhSTHZNoeP/BvLEB6IgFIHqnGA1YYBhWlkto5dLy', '$2y$10$YeUu2fWIqNHLpLhSTHZNoeP/BvLEB6IgFIHqnGA1YYBhWlkto5dLy', '01789897979', 'tnTomWSTCORhbrp21jjmwCOOrFu5Xc5A44fO2zDjUAGMrkP8X7A8K4tAfIQl', 'user61', 1, 2, '2017-07-17 08:38:56', '2017-07-17 08:47:49', 0, NULL),
(76, 'user76', 'user76@mail.com', '$2y$10$ZxAFD9gFAVkUwW27jkEL7.tw1dfai0HuSWKM/YEr6d6o9oEPZt90q', '$2y$10$ZxAFD9gFAVkUwW27jkEL7.tw1dfai0HuSWKM/YEr6d6o9oEPZt90q', '016848664', 'dWp1hlQ547CQL4VmX8KZOJSK6e3Y1Py3CkyJDOIcrglAAR2YyXyF31BZJUyW', 'user63', 0, 1, '2017-07-17 08:40:11', '2017-07-17 08:40:11', 0, NULL),
(77, 'user77', 'user77@mail.com', '$2y$10$5DOhAbAxyHvyP6vUkz8gbemtL/CS2cQBxA6gkOfR5lYDRMOHPJBxq', '$2y$10$5DOhAbAxyHvyP6vUkz8gbemtL/CS2cQBxA6gkOfR5lYDRMOHPJBxq', '0198451213', 'zWcqLeMcZavjgaftLTizVDfB7N4C2juE1T9S7cPX3OKqp1pP8YMvqbq6nKAX', 'user64', 0, 1, '2017-07-17 08:40:47', '2017-07-17 08:40:47', 0, NULL),
(78, 'user78', 'user78@mail.com', '$2y$10$l9yJb7l1xj.Z/lODOxJbLu4O61vIXctBjAuC1Gxu3uhIsBeB8RvYy', '$2y$10$l9yJb7l1xj.Z/lODOxJbLu4O61vIXctBjAuC1Gxu3uhIsBeB8RvYy', '0198654656', 'MQxfihIfUc6WWfxgqlkYJzbQF33CL5WxdqmzACj1fuJidhy8ZJiTcJktZP7x', 'user66', 2, 3, '2017-07-17 08:41:23', '2017-07-17 08:49:25', 0, NULL),
(79, 'user79', 'user79@mail.com', '$2y$10$YDAWkNK.z8A3TDyEWhOLZeq1HhRzvDKg6VUA.IDGdfc02dZ5oVAS2', '$2y$10$YDAWkNK.z8A3TDyEWhOLZeq1HhRzvDKg6VUA.IDGdfc02dZ5oVAS2', '01875466898', 'W7cJ1slGNg3x1Xjh9Twzhl9VbnmH3CBMSCYDvce76L59yC6tJGdDEjW9nnGF', 'user66', 1, 2, '2017-07-17 08:42:05', '2017-07-17 08:50:10', 0, NULL),
(80, 'user80', 'user80@mail.com', '$2y$10$NT4WuKnxDVUz7mHbJqD1beboNvJQqjqgxpU8h97SzzxfEWDPh3FJ.', '$2y$10$NT4WuKnxDVUz7mHbJqD1beboNvJQqjqgxpU8h97SzzxfEWDPh3FJ.', '01668468', 'YwrR1nucCZbftqekpnDR7zDgdHlC2a6fkg8TSYXCEzUGaKJGvNZeo3a5Xfwk', 'user70', 0, 2, '2017-07-17 08:43:58', '2017-07-17 08:44:17', 0, NULL),
(81, 'user81', 'user81@mail.com', '$2y$10$REl3jQhDEU6dbUmYLIAAJ.bGgdYNZXUK8jTFLRpLGzjGM/lOehrq2', '$2y$10$REl3jQhDEU6dbUmYLIAAJ.bGgdYNZXUK8jTFLRpLGzjGM/lOehrq2', '01798654656', 'XHRKJnFsf6GgAVe3GferSNv20oddR62IRM0P4JhsmgLH4F0L8eqJItyLmk4q', 'user71', 0, 1, '2017-07-17 08:44:54', '2017-07-17 08:44:54', 0, NULL),
(82, 'user82', 'user82@mail.com', '$2y$10$8RJltQ690Hn091YFFWI4jeGhA8qC7MTGhnIVYuGGKfjtypzRT06KG', '$2y$10$8RJltQ690Hn091YFFWI4jeGhA8qC7MTGhnIVYuGGKfjtypzRT06KG', '0168468484', '6eD7i3JcNXbEGYvlb5VPax0XKRkdpj5xorpPyEL0phrsGKrWCKMGuTouC8tN', 'user74', 0, 2, '2017-07-17 08:46:51', '2017-07-17 08:47:04', 0, NULL),
(83, 'user83', 'user83@mail.com', '$2y$10$zDZeBg1gDEORsX4c.Lr9leYhogGOrcZ5ERl56V7hEAL18/EKx3VUW', '$2y$10$zDZeBg1gDEORsX4c.Lr9leYhogGOrcZ5ERl56V7hEAL18/EKx3VUW', '01986546546', NULL, 'user75', 0, 1, '2017-07-17 08:47:49', '2017-07-17 08:47:49', 0, NULL),
(84, 'user84', 'user84@mail.com', '$2y$10$T49aqxIFrBlx36dwiSvLkOVuMEeGNiLtAllO3r3QNrn.vRBJoHA9a', '$2y$10$T49aqxIFrBlx36dwiSvLkOVuMEeGNiLtAllO3r3QNrn.vRBJoHA9a', '0198654646', 'RFF3JGuzB7WHHJHOQZz5OyfeVqTJaiz1Z810ukssnUTRi8xeYOT38S1bNUdP', 'user78', 0, 2, '2017-07-17 08:48:37', '2017-07-17 08:48:46', 0, NULL),
(85, 'user85', 'user85@mail.com', '$2y$10$LTjEQqUKRJ6u1pOukT7wCuJ0.XSmhL0HF8dj5EucFPMADuKDKdIpm', '$2y$10$LTjEQqUKRJ6u1pOukT7wCuJ0.XSmhL0HF8dj5EucFPMADuKDKdIpm', '019854664', 'c7mH3raxPyrt1Gf91gcomM0TJkPQKOmfp8XTjllGaLjUpAfaswoNUvs7xgj6', 'user78', 1, 4, '2017-07-17 08:49:24', '2017-07-17 08:50:47', 0, NULL),
(86, 'user86', 'user86@mail.com', '$2y$10$Z3J6CrsKlXv0d7bNHMZorOXU9PeOuP8DupNfs/LPTiCTSJ.MYWQm6', '$2y$10$Z3J6CrsKlXv0d7bNHMZorOXU9PeOuP8DupNfs/LPTiCTSJ.MYWQm6', '09879646', 'Hx2LtGu5Iv29jkafhVS4bioGhqYKGohF58Bx6X38zdatdj4StO4jPyQ5I1aG', 'user79', 0, 1, '2017-07-17 08:50:10', '2017-07-17 08:50:10', 0, NULL),
(87, 'user87', 'user87@mail.com', '$2y$10$NwfcICZ7/v1gPJSsvvd2duK1RQo1iOwQqmRmzYg00.2/WqrZ/Yu4W', '$2y$10$NwfcICZ7/v1gPJSsvvd2duK1RQo1iOwQqmRmzYg00.2/WqrZ/Yu4W', '01897986546', 'lP2KsaIQc2t1IMyIZnXgdRrL9l2Nz8uWOCz6NS9W3llt90027seyQNeippiV', 'user85', 1, 4, '2017-07-17 08:50:47', '2017-07-17 08:51:37', 0, NULL),
(88, 'user88', 'user88@mail.com', '$2y$10$EAisOIfvxBK7gfdRgqTqzeCeQ6xhbRFESdIkjQXR1DdrnGe1adEm2', '$2y$10$EAisOIfvxBK7gfdRgqTqzeCeQ6xhbRFESdIkjQXR1DdrnGe1adEm2', '0198456875', 'MXlw0fzkfRtTA5dS7VvS5a6s0w0zYfLhdgNBzg87nsibLpBu4EKIYLWuFnxV', 'user87', 0, 4, '2017-07-17 08:51:37', '2017-07-17 08:51:46', 0, NULL),
(89, 'user89', 'user89@mail.com', '$2y$10$ZKTPEl3atlwRZtjV1dJ0iOuffTJ9ZwRzpHjKnOzDJax4.5l3Eze5a', '$2y$10$ZKTPEl3atlwRZtjV1dJ0iOuffTJ9ZwRzpHjKnOzDJax4.5l3Eze5a', '016589449', 'XNcCo6rA1oWOQkWl5cWnV6j4cRrxBNDZ86Nb4PbZIvOGvjnTfsRALed75GZc', 'user5', 0, 4, '2017-07-17 10:36:26', '2017-07-17 10:50:48', 0, NULL),
(90, 'user90', 'user90@mail.com', '$2y$10$eTwtujj2bDtqrtqJqUQom.ofOmcuUK2lqaQRV6QVbVhUf0VhuxLbq', '$2y$10$eTwtujj2bDtqrtqJqUQom.ofOmcuUK2lqaQRV6QVbVhUf0VhuxLbq', '01656489', '2xeT8cerOhLqAadawBt6EuobL6JgVElAezlQLdgZUnLrd9F3tAgHPvaFLUvt', 'user5', 0, 4, '2017-07-17 10:56:26', '2017-07-17 10:56:41', 0, NULL),
(91, 'user91', 'user91@mail.com', '$2y$10$qhCFpv0KKCQdHLWjE6Ph.eONKSQWCFrj/qNxLfqPQSJBK/RHlfPFm', '$2y$10$qhCFpv0KKCQdHLWjE6Ph.eONKSQWCFrj/qNxLfqPQSJBK/RHlfPFm', '018948', 'iDWWQBzDVuEyszsBnXyBnzOMPz5jgauiFvZujI1kyuaK2i07Cm2KAUJg6nMm', 'user5', 0, 4, '2017-07-17 11:00:35', '2017-07-17 11:00:45', 0, NULL),
(92, 'user92', 'user92@mail.com', '$2y$10$/UUwWuGuvogV7k6HgtAr0OBuG.XXe5GSXopyS27n4UZLBpsSaS9ti', '$2y$10$/UUwWuGuvogV7k6HgtAr0OBuG.XXe5GSXopyS27n4UZLBpsSaS9ti', '0168489495', 'qu5xPNfneoXQljBtkwh7TL1TBzLvY6Tie9IP3o7zRPWkNq5Ll3dw3uJZAc9K', 'user5', 0, 4, '2017-07-17 11:01:22', '2017-07-17 11:05:34', 0, NULL),
(93, 'user93', 'user93@mail.com', '$2y$10$1VlVl.iZPHxEPVCikZErr.cvqmxRDGJL3YEKOEf.7bg1mukcxJWL6', '$2y$10$1VlVl.iZPHxEPVCikZErr.cvqmxRDGJL3YEKOEf.7bg1mukcxJWL6', '0178654664', '27xXP7byGsbM7u7HvhwbBXERx6XEuJPqEKrGJCH24sAT6zna94gkzkiSGHmu', 'user9', 0, 4, '2017-07-17 11:19:15', '2017-07-17 11:19:24', 0, NULL),
(94, 'user94', 'user94@mail.com', '$2y$10$HfxQGwVs3.tNmWxnOUlOOO6QhoQ5w89I6K/D/icoeDResYg51mShC', '$2y$10$HfxQGwVs3.tNmWxnOUlOOO6QhoQ5w89I6K/D/icoeDResYg51mShC', '01932456889', 'XmUuswis5PHL4yCA7lxzlCc2TGdJtVKE4UORKxNJVpSHe3pRX3qmuqVPVH0l', 'user13', 0, 4, '2017-07-17 11:23:53', '2017-07-17 11:24:02', 0, NULL),
(95, 'user95', 'user95@mail.com', '$2y$10$SPqWb/nPkMn1rRij9Da08ONSK0dyMjZf142ge/KhP7jF5Ey3qM6YK', '$2y$10$SPqWb/nPkMn1rRij9Da08ONSK0dyMjZf142ge/KhP7jF5Ey3qM6YK', '01897456213', 'ccIOiGWru1PGiloLhLHHuxBE0uYMNNWcOzR5056g5xCmHN8wT7P6aHNdHOk9', 'user13', 0, 4, '2017-07-17 11:24:41', '2017-07-17 11:24:51', 0, NULL),
(96, 'user96', 'user96@mail.com', '$2y$10$TIF9SLQ2.vZJr5rpDMahROP9z0rVOFv0LiAXTfZoXDVmbkNp2RG6.', '$2y$10$TIF9SLQ2.vZJr5rpDMahROP9z0rVOFv0LiAXTfZoXDVmbkNp2RG6.', '01235984', 'kh9CCb13mP7LU890ey4PPM7Hg4d5Un4kdPYoPyZtgfEfpqkv98rU4JJIrBsn', 'user1', 8, 4, '2017-07-18 07:09:30', '2017-07-18 07:25:32', 0, NULL),
(97, 'user97', 'user97@mail.com', '$2y$10$jx0W.1Ff.2rYxeFdbrOtYOtvJj7aZGF0YJ4Z1KqYj6QSSbWblY3GS', '$2y$10$jx0W.1Ff.2rYxeFdbrOtYOtvJj7aZGF0YJ4Z1KqYj6QSSbWblY3GS', '018754656', '0cYcLfCrUmgCfvMZi8LeNFHpFWsylUoNZMyvqiboKvzJ8MDwdBbOynPnD4Rn', 'user96', 3, 3, '2017-07-18 07:10:11', '2017-07-18 07:28:38', 0, NULL),
(98, 'user98', 'user98@mail.com', '$2y$10$p/o8rcEADFwVp.FwzqLO3u4VQthfT0HYsf/FA8UE2hYs5qOIhORKK', '$2y$10$p/o8rcEADFwVp.FwzqLO3u4VQthfT0HYsf/FA8UE2hYs5qOIhORKK', '01654984', '6bGSvVCvEDbyzziVyV7xYvtyxqUWXcdlqBli4FxelO7FyVVUX3djViUNEjhk', 'user96', 0, 1, '2017-07-18 07:19:03', '2017-07-18 07:19:03', 0, NULL),
(99, 'user99', 'user99@mail.com', '$2y$10$tDmH9zGcPKm4f5BZoxEj..AlKZz7yIaPBd3RKt1pnJ0wKaOjv8jEW', '$2y$10$tDmH9zGcPKm4f5BZoxEj..AlKZz7yIaPBd3RKt1pnJ0wKaOjv8jEW', '01452118644', 'yfnKEc1nf8eQlv3fVmdt2uxyqlqtT7mP0wiQpZKJ06jaHwda6CoVhfd944d6', 'user96', 2, 2, '2017-07-18 07:19:42', '2017-07-18 07:49:16', 0, NULL),
(100, 'user100', 'user100@mail.com', '$2y$10$xk6G80sFF5Y.DeHByNUaQemSs0kC8GAjA8Hd3ExJT6ECCCg6wm49O', '$2y$10$xk6G80sFF5Y.DeHByNUaQemSs0kC8GAjA8Hd3ExJT6ECCCg6wm49O', '0196325411', 'VRT61WUvOBDgbHviFIgY7Top8VPncfHnx7Fn5VVQAvZSUwDFLrlQwcToulGG', 'user96', 0, 4, '2017-07-18 07:21:58', '2017-07-18 07:22:09', 0, NULL),
(101, 'user101', 'user101@mail.com', '$2y$10$Y6ibFE4S8/tcQTNm6SkbkuVY7BBvJi9w9E4hUDtezSDTf0IynTUtO', '$2y$10$Y6ibFE4S8/tcQTNm6SkbkuVY7BBvJi9w9E4hUDtezSDTf0IynTUtO', '015456846', '3vGtzW567iMmTbo1tlMzYZjWXUQMzbLvflBGdhJDwXDsniQrxXeZm08x0DGL', 'user96', 0, 4, '2017-07-18 07:22:52', '2017-07-18 07:23:01', 0, NULL),
(102, 'user102', 'user102@mail.com', '$2y$10$xdxWYkrnVlHCqJx9hnGDtO/UwP0IJbui3v1S7eQ2Npy5.2sRG5EMK', '$2y$10$xdxWYkrnVlHCqJx9hnGDtO/UwP0IJbui3v1S7eQ2Npy5.2sRG5EMK', '015646868', 'urobKRiEP7lnCniztUVhLzJhcqlUt06poPpzYoKFC2w9eU2BsLelFVbbVTJE', 'user96', 0, 4, '2017-07-18 07:23:52', '2017-07-18 07:24:02', 0, NULL),
(103, 'user103', 'user103@mail.com', '$2y$10$joyvvd2Pj8iye0CIqLTVSe/TKlZCBuMgClO38P1UzRU1JdwW4baqq', '$2y$10$joyvvd2Pj8iye0CIqLTVSe/TKlZCBuMgClO38P1UzRU1JdwW4baqq', '0198546548', 'lqcDwFQLAbkPZKUWRtE4K4AeUZ6640jpaaCrW37EyKvT9jU3Psc5Nalgn3bR', 'user96', 0, 4, '2017-07-18 07:24:36', '2017-07-18 07:24:46', 0, NULL),
(104, 'user104', 'user104@mail.com', '$2y$10$yDI2vf4OsImx8vVHxOFM2OkHUlop3RaB3qMSalrMGegpL7R5Loz0u', '$2y$10$yDI2vf4OsImx8vVHxOFM2OkHUlop3RaB3qMSalrMGegpL7R5Loz0u', '0156897954', 'PzJp7Ag4zUlRLnmizBBZ1Bit3KiCm8JRF5pQ6RzEXzzziOuw2okgppvZjthJ', 'user96', 0, 4, '2017-07-18 07:25:32', '2017-07-18 07:25:42', 0, NULL),
(105, 'user105', 'user105@mail.com', '$2y$10$tGTLthleY0YvCiUvNNNXreUmD/W8kIZm7sSqTDeYU.owh/80mSH62', '$2y$10$tGTLthleY0YvCiUvNNNXreUmD/W8kIZm7sSqTDeYU.owh/80mSH62', '013789789', 'VCMAkK4nKeMuKpNArzEV3RqV58xSW3NShFzZ3BQlQyGX8MLMx4QCMFIKnIM6', 'user97', 0, 1, '2017-07-18 07:26:45', '2017-07-18 07:26:45', 0, NULL),
(106, 'user106', 'user106@mail.com', '$2y$10$h/h8hTwZgaG330Zh5G.TsOtdUCBbDjEQcArLj8.jkws2R6QkwMGeG', '$2y$10$h/h8hTwZgaG330Zh5G.TsOtdUCBbDjEQcArLj8.jkws2R6QkwMGeG', '016687899', 'rxQoNOsdtDc6pQOYzC5KcHgS7nqK4rvNYOi9LRFfVzW1W5OXfck9osx8AC4P', 'user97', 2, 2, '2017-07-18 07:27:48', '2017-07-18 07:32:42', 0, NULL),
(107, 'user107', 'user107@mail.com', '$2y$10$4Im4Ec8AnlcSNGL1MmE.MO1AcDqsfAqD7/oADheDBjhVrFb7mawv6', '$2y$10$4Im4Ec8AnlcSNGL1MmE.MO1AcDqsfAqD7/oADheDBjhVrFb7mawv6', '01358879', 'NK9c1DDO9pNpPDajMilCMGGgWNbV2vSP5z0V1v2mxLn7QXYqnGtBL5jItNPl', 'user97', 1, 3, '2017-07-18 07:28:38', '2017-07-18 07:36:37', 0, NULL),
(108, 'user108', 'user108@mail.com', '$2y$10$tZVxXd1IawTv0DriKsAeV..W4Wh3KgVsEmEaWFSVqmo6p2Bgy.tNu', '$2y$10$tZVxXd1IawTv0DriKsAeV..W4Wh3KgVsEmEaWFSVqmo6p2Bgy.tNu', '0138768979', 'eooeU2kMylTyYdbA25rOdYFsbKweWqszOiB2lHDpr7nTLT6FBkCgXjVtqwQC', 'user106', 1, 2, '2017-07-18 07:29:42', '2017-07-18 07:44:10', 0, NULL),
(109, 'user109', 'user109@mail.com', '$2y$10$tLSPFvfKdqtpjO.lkTxGBeFNn1hNDlhAfmaRzplhre5xpKOvybat2', '$2y$10$tLSPFvfKdqtpjO.lkTxGBeFNn1hNDlhAfmaRzplhre5xpKOvybat2', '01654984984', 'FMNwNty8sdbDMJrfqmnht3cgohBUyI1gUHceqnyyx55Z96EuKCqmV4L3vHno', 'user106', 0, 1, '2017-07-18 07:32:41', '2017-07-18 07:32:41', 0, NULL),
(110, 'user110', 'user110@mail.com', '$2y$10$cq6sANQv0foWgLw9KUj1JO2o7fcG3NIACnBg9OFPjlJC2UQKs6qGG', '$2y$10$cq6sANQv0foWgLw9KUj1JO2o7fcG3NIACnBg9OFPjlJC2UQKs6qGG', '0132168797', 'ueasH6OwXI4znINxEwNy70ZauMXnaYPtCcbS5ZW95D0rM9gI1HnBAdNEJTWz', 'user107', 2, 4, '2017-07-18 07:36:37', '2017-07-18 07:45:54', 0, NULL),
(111, 'user111', 'user111@mail.com', '$2y$10$MsxpJMBGoZYkAojQ745sLOImbEKLh749qfoeiX6Hd539rC9eo09HC', '$2y$10$MsxpJMBGoZYkAojQ745sLOImbEKLh749qfoeiX6Hd539rC9eo09HC', '0118788879', 'H3wyII1xSkdbZlc2uiDVgdVoG0n8YYMQRRwqSOO7De7Jyhm12RB7jFT2GkFV', 'user108', 0, 1, '2017-07-18 07:44:10', '2017-07-18 07:44:10', 0, NULL),
(112, 'user112', 'user112@mail.com', '$2y$10$i6JBKegn.OvN409vI9bCq.x1E1/VR.czCAbXsfuDHPB1Ib1L9El7e', '$2y$10$i6JBKegn.OvN409vI9bCq.x1E1/VR.czCAbXsfuDHPB1Ib1L9El7e', '0113654214', 'PYh7lbV3B8yTkkzW7kVoWLdKivRxaMuYrYZlBSm1fG3lI3VcbFbBY7sd0Flp', 'user110', 1, 3, '2017-07-18 07:44:55', '2017-07-18 07:46:43', 0, NULL),
(113, 'user113', 'user113@mail.com', '$2y$10$0.uUlMW27aMR0SKVNOqAsOMmfTm3U84Bl8WpgV7MCdLu96I2auJri', '$2y$10$0.uUlMW27aMR0SKVNOqAsOMmfTm3U84Bl8WpgV7MCdLu96I2auJri', '011254684', 'QZ5pfVv9ub1esIZB1MI7jBPOCqPNjZt6Pb3dOEuSGvRW8zus8beM7JpXSsNT', 'user110', 1, 2, '2017-07-18 07:45:54', '2017-07-18 07:47:32', 0, NULL),
(114, 'user114', 'user114@mail.com', '$2y$10$DR2Dax4lPGvnEWZ9YWONdePMsTo4EInlX4wlvNP/N.KqUtz0CcPNS', '$2y$10$DR2Dax4lPGvnEWZ9YWONdePMsTo4EInlX4wlvNP/N.KqUtz0CcPNS', '011125522', 'DNBAH0bn9ZfpMkhdqH54qtR7TAuCrFeCugePjk5FFkjigfsdsy2jN9Yb4T0I', 'user112', 0, 2, '2017-07-18 07:46:43', '2017-07-18 07:46:55', 0, NULL),
(115, 'user115', 'user115@mail.com', '$2y$10$gGM8dAwrdPblCmbp5m0SQOBu/xhvupuVi0jQIh6BHh6Db9d1aFJl.', '$2y$10$gGM8dAwrdPblCmbp5m0SQOBu/xhvupuVi0jQIh6BHh6Db9d1aFJl.', '01112365214', 'qehJQtyYmJVwSHj8Mztu7fmSEkAdEIWvOPdZ76azcS1KLRyghbptYzLo9DHk', 'user113', 0, 1, '2017-07-18 07:47:31', '2017-07-18 07:47:31', 0, NULL),
(116, 'user116', 'user116@mail.com', '$2y$10$zX/VNmJpXAFLUBDrcYAuDuFRTMuIdiHOXOQwUR0Uk68WgSU9DHnjS', '$2y$10$zX/VNmJpXAFLUBDrcYAuDuFRTMuIdiHOXOQwUR0Uk68WgSU9DHnjS', '011349879', '2UPHSjkZDRKKtxG6VrqXCx415NX64QOGwdA2UEzvaiglv56XToGqh2bvpsXb', 'user99', 1, 2, '2017-07-18 07:48:25', '2017-07-18 07:50:04', 0, NULL),
(117, 'user117', 'user117@mail.com', '$2y$10$oGRUHW3vw3M8mLhhvKPv3evBhT8AItHMEj/II4Y08x5hZuyFKo/iy', '$2y$10$oGRUHW3vw3M8mLhhvKPv3evBhT8AItHMEj/II4Y08x5hZuyFKo/iy', '01145621868', 'fKs2B7EM9oyssQg1jGgQstYF1vte3NO1gGwdwIgNx4oBV42XHdDr9QkjPcHV', 'user99', 0, 1, '2017-07-18 07:49:16', '2017-07-18 07:49:16', 0, NULL),
(118, 'user118', 'user118@mail.com', '$2y$10$Hi06Epb/c7FpIzU20P1Ox.Nv88lF/CJk263lgDGK3T73QZIkjiCGq', '$2y$10$Hi06Epb/c7FpIzU20P1Ox.Nv88lF/CJk263lgDGK3T73QZIkjiCGq', '0156879879', 'g7VoB7YtehFTS4YOmAlC4N8hovaXikRlUT9aENs9NnyI4PqhzbFq9MuvtoSV', 'user116', 0, 1, '2017-07-18 07:50:04', '2017-07-18 07:50:04', 0, NULL),
(119, 'user119', 'user119@mail.com', '$2y$10$Dw2TwKnm4fHSzbisW3KxduC6bAJHvehfVnT/IC.W6yi1xsK4IoaGW', '$2y$10$Dw2TwKnm4fHSzbisW3KxduC6bAJHvehfVnT/IC.W6yi1xsK4IoaGW', '0111254232', 'l9sS5amaEaKKObh0S5Q1JjMXPhKHNg1yhpfYI1BzbEwyYJqGzULY8HsGqqWh', 'user1', 6, 4, '2017-07-18 08:11:33', '2017-07-18 08:16:53', 0, NULL),
(120, 'user120', 'user120@mail.com', '$2y$10$WTJPy4zYPgKRwSf3Bn5wKe7UL.4eFvNIleueTHkbI3KcI0KgMXOqS', '$2y$10$WTJPy4zYPgKRwSf3Bn5wKe7UL.4eFvNIleueTHkbI3KcI0KgMXOqS', '012223555', 'OxxY67Oz9wugKQ6TWQ7hZ7IISIr5Ww6qVvCqeIdXknt40AJ6Kcnpe197Fid9', 'user119', 3, 3, '2017-07-18 08:12:32', '2017-07-18 08:19:09', 0, NULL),
(121, 'user121', 'user121@mail.com', '$2y$10$OtVluEO.WKr./.jzhpZ8TujrjWFLrHZcyzGzBKEWuldx1Sv/OWPAC', '$2y$10$OtVluEO.WKr./.jzhpZ8TujrjWFLrHZcyzGzBKEWuldx1Sv/OWPAC', '0111125548', 'CcZs3Ssd3O9cEckuXkG4thrgRDOWqTJWHCdjR45Npu2DiIL7Umo8ZUsBxneI', 'user119', 0, 1, '2017-07-18 08:13:30', '2017-07-18 08:13:30', 0, NULL),
(122, 'user122', 'user122@mail.com', '$2y$10$9FJBE9yp/7j0hBOrQGJrPuiU2NH7BbwFanutvVNW5GNoIto81fFjG', '$2y$10$9FJBE9yp/7j0hBOrQGJrPuiU2NH7BbwFanutvVNW5GNoIto81fFjG', '0122362541', 'i5ci70uGavGufCSB6SrVYkFO2cKM6GSAOhwpQwRH5tDOECxxOX2uN6CK5CWr', 'user119', 1, 2, '2017-07-18 08:14:19', '2017-07-18 08:19:56', 0, NULL),
(123, 'user123', 'user123@mail.com', '$2y$10$Uznz6Cp3clqIePisf2CfBuMZRWxaYO11MLqsa/CKc0p6/SB661Sca', '$2y$10$Uznz6Cp3clqIePisf2CfBuMZRWxaYO11MLqsa/CKc0p6/SB661Sca', '01999865321', 'axFJqJDoG8uOihm4fUbt3zPYUxGNhEwBGRlbYCT1AxdchN3nXL8IINmPLsfE', 'user119', 0, 4, '2017-07-18 08:15:17', '2017-07-18 08:15:24', 0, NULL),
(124, 'user124', 'user124@mail.com', '$2y$10$b4xQgZ9UC9l42qwLQhi.deK4fzPRcERdgaEXjum/v9f6E30eerPau', '$2y$10$b4xQgZ9UC9l42qwLQhi.deK4fzPRcERdgaEXjum/v9f6E30eerPau', '015554894', 'RDNhr3Xf3Kc5mvhfke8m4GWJf7WJxaXJjPdAQybwG33yRSX0YtcIJp8y2Q5C', 'user119', 0, 4, '2017-07-18 08:15:54', '2017-07-18 08:16:03', 0, NULL),
(125, 'user125', 'user125@mail.com', '$2y$10$qu7NdEY.YbUOVKLO5jqgFOH7csZRdUV428iROvyZtlnkuWSa8Nvke', '$2y$10$qu7NdEY.YbUOVKLO5jqgFOH7csZRdUV428iROvyZtlnkuWSa8Nvke', '0144456321', 'yyYvKXhsvk2ON8kPWOvh5OIoIB7EcBuKz6X0iecit9hj05YG7SLOynZTQ596', 'user119', 0, 4, '2017-07-18 08:16:53', '2017-07-18 08:17:03', 0, NULL),
(126, 'user126', 'user126@mail.com', '$2y$10$m1llum0i4RH.xXss8ka8/OIUqYRwL/5LQPyykOfbh1l19bOkdaEbi', '$2y$10$m1llum0i4RH.xXss8ka8/OIUqYRwL/5LQPyykOfbh1l19bOkdaEbi', '01333659949', 'xVYBqhmoaOR6YA4YTZF4cl5F2aIDnnFnJ6z2mcEeDu7dveFPVaJM5Bq7Pchs', 'user120', 0, 1, '2017-07-18 08:17:44', '2017-07-18 08:17:44', 0, NULL),
(127, 'user127', 'user127@mail.com', '$2y$10$1/2olImFVYSaS9LWMHuspOQVNR9NrOh1nJM4ALCpvYuMZ3Dr9720a', '$2y$10$1/2olImFVYSaS9LWMHuspOQVNR9NrOh1nJM4ALCpvYuMZ3Dr9720a', '01888875544', 'lVejkFHvx0PSSnBjyavUdBdpSEwCpU1I2GpeaIUO315AGlPcpduk1t5dMCCj', 'user120', 2, 2, '2017-07-18 08:18:22', '2017-07-18 08:22:07', 0, NULL),
(128, 'user128', 'user128@mail.com', '$2y$10$QOYWTt31Sj9FM.gHlYPZQuU0.B5NqT2.uDGDuWmNQYKKSyRmdUvha', '$2y$10$QOYWTt31Sj9FM.gHlYPZQuU0.B5NqT2.uDGDuWmNQYKKSyRmdUvha', '0177788544', 'uey16SzhB4PA1QmvfWp1Qh5zzMHUMeOvzgAaGaULejlpfYGJcEeQXMwEcgpy', 'user120', 1, 3, '2017-07-18 08:19:09', '2017-07-18 08:23:01', 0, NULL),
(129, 'user129', 'user129@mail.com', '$2y$10$HH1UqYzWpwzQ.iNI/9ZYk.x/OCYdX0O.SKme7NkFMUDbLNy2k5hhW', '$2y$10$HH1UqYzWpwzQ.iNI/9ZYk.x/OCYdX0O.SKme7NkFMUDbLNy2k5hhW', '01666985542', 'rQOEctFftQkJJEXTxPq7IfiuhdanG1IA8j5Xlhnl1AOrjbfpe6aGgxs5zwuk', 'user122', 1, 2, '2017-07-18 08:19:56', '2017-07-18 08:24:16', 0, NULL),
(130, 'user130', 'user130@mail.com', '$2y$10$VK0CfpOGqnSThpGo3LOplu/DWc/1/84gP8LhlxU5hkOzC1/szTVtC', '$2y$10$VK0CfpOGqnSThpGo3LOplu/DWc/1/84gP8LhlxU5hkOzC1/szTVtC', '01444489797', 'dTkVTDp4yk16qT7ZP3lEq8ACUNjzxKX92nEaBnu9Ulf0xgBOwobtWOtMWoZO', 'user127', 1, 2, '2017-07-18 08:20:55', '2017-07-18 08:25:00', 0, NULL),
(131, 'user131', 'user131@mail.com', '$2y$10$zM3jaejOFIQBGfPhy3PcIOoft3lW.VVw0X.prLPGsMUqfWcqOJBFC', '$2y$10$zM3jaejOFIQBGfPhy3PcIOoft3lW.VVw0X.prLPGsMUqfWcqOJBFC', '0199985654', 'GrRiwGDPoFztAZeosSSZdxtE4sFnlMRHCudoz3ThOMF7HzY2ojKV8d2VTOq3', 'user127', 0, 1, '2017-07-18 08:22:07', '2017-07-18 08:22:07', 0, NULL),
(132, 'user132', 'user132@mail.com', '$2y$10$hBmY3sfEZWXW9oIXMQE4reGIDePqmcPX5YiRpPNm4SmWxuS3Nuteq', '$2y$10$hBmY3sfEZWXW9oIXMQE4reGIDePqmcPX5YiRpPNm4SmWxuS3Nuteq', '01122365214', 'oLP56OPdoovwW9SLkj1oBAVRADzxFUXWLCIDoKYZd82CoP4txIMV8iT3Nn4A', 'user128', 2, 4, '2017-07-18 08:23:01', '2017-07-18 08:27:44', 0, NULL),
(133, 'user133', 'user133@mail.com', '$2y$10$gKYBKec899KLQCRmdW75ZeAUZRHykXMx1qqcJoYc3glhqIuUyFsIS', '$2y$10$gKYBKec899KLQCRmdW75ZeAUZRHykXMx1qqcJoYc3glhqIuUyFsIS', '0155648499', 'eu1zEXlGlGmIvRX105yq43ufjDusRD8I1vEdfOruV5szbqxVWJVg57ZRHUqh', 'user129', 0, 1, '2017-07-18 08:24:16', '2017-07-18 08:24:16', 0, NULL),
(134, 'user134', 'user134@mail.com', '$2y$10$4bI8b0yRwCOWV22CETRyheSUNqtYQKLADxScZMhWgOyZW0f7gy47y', '$2y$10$4bI8b0yRwCOWV22CETRyheSUNqtYQKLADxScZMhWgOyZW0f7gy47y', '0144587452', 'HXUmRoTonA3zeAMZs0eWiAbnQKlgPz7egpAgTzzN7eMsjGXKFVtQLo8jsfSl', 'user130', 0, 1, '2017-07-18 08:24:59', '2017-07-18 08:24:59', 0, NULL),
(135, 'user135', 'user135@mail.com', '$2y$10$Cfz3wtb/nTVodI1fFttjle/OLFUJrbB9f/o06O6eST/EaM.cgK7am', '$2y$10$Cfz3wtb/nTVodI1fFttjle/OLFUJrbB9f/o06O6eST/EaM.cgK7am', '0198878787', 'TPIzjTswfbMqmbJH75MjciSHYUcYGg3qeT1wZoQh4Z4flSu0OFj19fplgYUT', 'user132', 2, 3, '2017-07-18 08:26:29', '2017-07-18 08:30:25', 0, NULL),
(136, 'user136', 'user136@mail.com', '$2y$10$mp8u5J7tYOcbBfTnn6lH6.1txC8mW.6/94ayO4RNSOsGsTWtpaxhu', '$2y$10$mp8u5J7tYOcbBfTnn6lH6.1txC8mW.6/94ayO4RNSOsGsTWtpaxhu', '0198887875', 'm5nP5h0qM2ZmUWEhmpC3eKPf9Kmjyp9HtaQkDFjlCb6vn8rEN4h8OtGKE6rP', 'user132', 1, 2, '2017-07-18 08:27:44', '2017-07-18 08:31:55', 0, NULL),
(137, 'user137', 'user137@mail.com', '$2y$10$rBj1/bYxep8dWBZmP.KRaus2SbphkXHsU55TXfrscKdeZs3C4rsC6', '$2y$10$rBj1/bYxep8dWBZmP.KRaus2SbphkXHsU55TXfrscKdeZs3C4rsC6', '01333362541', 'AHTyv3v7MYzl8t8v9j9c4Y2Tdhr5VOmi7az9W1pihpRqta71gMMmLFZ1GEzz', 'user135', 0, 2, '2017-07-18 08:29:09', '2017-07-18 08:29:21', 0, NULL),
(138, 'user138', 'user138@mail.com', '$2y$10$RX6xf2xfKsaRVqQrijMinOW3qOt./7QWVL/PX0D1IjZOSXmiCjmcS', '$2y$10$RX6xf2xfKsaRVqQrijMinOW3qOt./7QWVL/PX0D1IjZOSXmiCjmcS', '019887656', 'JZM7heaUToUZtWala3xLgG3NsinEzHTyTAxtyRq1sisOWsOlnj1pqYDY4ttm', 'user135', 1, 4, '2017-07-18 08:30:25', '2017-07-18 08:32:48', 0, NULL),
(139, 'user139', 'user139@mail.com', '$2y$10$Oa7LiMouSjaTRP8UwYwcguP.9Cz5byOTD./j56kWTLOFnRonk1k/i', '$2y$10$Oa7LiMouSjaTRP8UwYwcguP.9Cz5byOTD./j56kWTLOFnRonk1k/i', '01555547879', 'l6zuMeJThm8vl3Q6qqkpy91J5mxwgTC7RkM6y5rS1i8EngIZ7s7y1fGsnwkJ', 'user136', 0, 1, '2017-07-18 08:31:55', '2017-07-18 08:31:55', 0, NULL),
(140, 'user140', 'user140@mail.com', '$2y$10$IoXyyVogZHv7OZ/qrDoA5OuQ4SSnDHYPrJHXQy.mm6o3sHIQsdHea', '$2y$10$IoXyyVogZHv7OZ/qrDoA5OuQ4SSnDHYPrJHXQy.mm6o3sHIQsdHea', '011878899', 'Gp1Rw16chID41ClNrvOulY5klPSgIpW7HidW6BE4xSSFKOsN8YQMew8v9qeL', 'user138', 1, 4, '2017-07-18 08:32:47', '2017-07-18 08:34:37', 0, NULL),
(141, 'user141', 'user141@mail.com', '$2y$10$fM8LtKhBXJpYE6Yr1S1UKeJI1dtPzVpNxtBOtkUL7OJT9OQbmtaSu', '$2y$10$fM8LtKhBXJpYE6Yr1S1UKeJI1dtPzVpNxtBOtkUL7OJT9OQbmtaSu', '0188874454', '6fJ84h9zwn4GROei1B6xqFDodqwusbHOq7kYfk2JnlaC9KCPDJeqUZ3S4Ous', 'user140', 0, 4, '2017-07-18 08:34:37', '2017-07-18 08:34:51', 0, NULL),
(142, 'shenryuken', 'shenryuken@yahoo.com', '219e052492f4008818b8adb6366c7ed6', '', '', 'p4bwwdzH4DBdZsxMlcprIUEwuYKGxSFh7vtY82T2ZPOrIh77byQULVFlWb26', '', 0, 1, '2017-11-09 09:39:46', '2017-11-09 09:39:46', 0, NULL),
(143, 'saidallinggi', 'said@mail.com', '$2y$10$tLcpMRMdEgtXd1QgNmcTZ.DArmvXrq.OEK.UPu1DgFMVjKDVlMk6O', '$2y$10$tgjeZKXt0vc4JLZeRwKd2u9si.ByVeE6tBeLKWnf3B8qi0EYgGEyi', '123123123', NULL, 'user5', 0, 1, '2018-01-26 07:36:56', '2018-01-26 07:36:56', 0, '3c4e69ed0bcd2b26e97acad24cab291af62da1d5f301f2985e159cf0f2ca0507'),
(144, 'said al-linggi2', 'said2@mail.com', '$2y$10$Rv2TIJehQQyXSIVv7edXzuxJo7M8MnQstZvFu7unCz5A8v.FfWqEG', '$2y$10$w.bsgm8tYGufKQXZtZ/xc.3M/g5gOcxGKiQ4ywGlORlKN9uF1zWFa', '123123123', NULL, 'superadmin', 0, 1, '2018-01-26 07:38:41', '2018-01-26 07:38:41', 0, '5993228a6011f6a20d39879f20a1458f002a3511ffde1d5248526c82200196ab'),
(145, 'said al-linggi3', 'said3@mail.com', '$2y$10$sLKXr2hZ4q811LzOF.8S2.SBBBIojiqOSYmC.hFWaL7TKpniWldGC', '$2y$10$GtWDtZcMvmdvLiGi.yCvP.iPop.CrQWEANFw9LyNqCjXX/SHpOvgi', '123123123', NULL, 'superadmin', 0, 1, '2018-01-26 07:41:33', '2018-01-26 07:41:33', 0, '559a4a49415e7e28445bfa469082461bb7524284d1aa971ef925433af507acc4'),
(146, 'jimbara', 'jimbara@mail.com', '$2y$10$sV7gdjIFv.FhHZzpWAqr..cT8O71tpZ18X1sXx3cua18p6Y.mplta', '$2y$10$KSAILqxj0Gb8pEeTkJ4aLOp3jBvg1QOzZbAZW3HtLeCyGv.bULRqW', '123123123', NULL, 'superadmin', 0, 1, '2018-01-26 07:49:05', '2018-01-26 07:49:05', 0, 'e3d25f4decf683ec3050e0b84e5bef91938977703cfbf2141330959a0a64da23'),
(147, 'jimbara_buta', 'jimbaramatabuta@mail.com', '$2y$10$3QfqbAzjnq.2HWXedg6Bv.cNGL87hsCp5uQV27sZ1UINwVY9fXlj2', '$2y$10$rMjfbDqmg7wqulEU54W8cuYHCYaXYNVC3pRTKS0ofA8ngagZ08Sdi', '123123123', NULL, 'superadmin', 0, 1, '2018-01-26 07:58:59', '2018-01-26 07:58:59', 0, 'ee73bb531b615182d6ddddb6ee139f616efc230d7c4a7932ca050bd6d318522e'),
(148, 'test1', 'test1@mail.com', '$2y$10$gXASNKg3CBIpBsHCZ7j9qe0k8NS3QYfZP8IsmYkoRJwXjXgoqsbXO', '$2y$10$1tO/BbVpIjuLhejUh6z2YO8A5jPknKo5Z3ScYL7l5caJCkbXfHLPq', '123123123', NULL, 'superadmin', 0, 1, '2018-01-26 08:12:53', '2018-01-26 08:12:53', 0, '5ad5fccdfc1ecd06068cec9a050a7c0d03449e38123d4e424592d259687f85e3'),
(149, 'asdasda', 'asmdkas@mail.com', '$2y$10$XMxKzRvpzPG/a3bY0o9PD.Vs8W7JYtSv2DZrzNw1LRXaGBqsD74CW', '$2y$10$KmjBVoYNsuy9BKpHkEZNv.UIcoIucqROPdckI9jPD75HLw1Qo74Zq', '123123', NULL, 'superadmin', 0, 1, '2018-03-01 11:14:13', '2018-03-01 11:14:13', 0, '9fd275b4153209733a35250a09f0d56c4ea6f929ade3b5e3f33bc5d101c4734c'),
(150, 'asdasasdas', 'asdasd@mail.com', '$2y$10$9vtjKfjKq3j2TsxVOrOr5OWhtCWPFTEcSeRNwTjXMPUXBOeggPLGC', '$2y$10$CwvHRLWHLV.OhGsWoy6h3en5uzIC5vUOH0llrCY89gqhKfFoXEqli', '123123', NULL, 'superadmin', 0, 1, '2018-03-02 07:55:23', '2018-03-02 07:55:23', 0, 'ccd4bdac8059975a924875039f1f1c952854ed47358bafa43a75e6b8d366f639'),
(151, 'zxczxczxc', 'zxcczxc@mail.com', '$2y$10$HTnfoARGrLVqAyF3itNU7.9ZNyTiFUm4oLIa5kkzkWVtZ26m0T2cy', '$2y$10$ka1y.VJjkBmfNQlHa0G74Oifd5qkGxvIqd7KacRSib9MUAbga.u92', '123123', NULL, 'superadmin', 0, 1, '2018-03-02 08:11:34', '2018-03-02 08:11:34', 0, 'e934ced4c768a2036697b0dc3f1e7e4e006ee0c51427b97116c1305b2b511a84');

-- --------------------------------------------------------

--
-- Table structure for table `user_bonuses`
--

CREATE TABLE `user_bonuses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `retail_profit` float NOT NULL,
  `personal_rebate` float NOT NULL,
  `direct_sponsor` float NOT NULL,
  `do_group_bonus` float NOT NULL,
  `sdo_group_bonus` float NOT NULL,
  `do_cto_pool` float NOT NULL,
  `sdo_cto_pool` float NOT NULL,
  `sdo_sdo` float NOT NULL,
  `total_bonus` float NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_bonuses`
--

INSERT INTO `user_bonuses` (`id`, `user_id`, `retail_profit`, `personal_rebate`, `direct_sponsor`, `do_group_bonus`, `sdo_group_bonus`, `do_cto_pool`, `sdo_cto_pool`, `sdo_sdo`, `total_bonus`, `year`, `month`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 0, 5658.24, 0, 0, 5658.24, 2018, 1, '2018-01-18', '2018-01-18'),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(3, 3, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(4, 4, 630, 210, 2037, 0, 0, 0, 0, 0, 2877, 2018, 1, '2018-01-18', '2018-01-18'),
(5, 5, 3349.5, 1134, 14448, 2009, 0, 2829.12, 0, 0, 23769.6, 2018, 1, '2018-01-18', '2018-01-18'),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(7, 7, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(8, 8, 84, 28, 42, 0, 0, 0, 0, 0, 154, 2018, 1, '2018-01-18', '2018-01-18'),
(9, 9, 378, 154, 224, 327.6, 0, 0, 0, 0, 1083.6, 2018, 1, '2018-01-18', '2018-01-18'),
(10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(11, 11, 63, 0, 0, 0, 0, 0, 0, 0, 63, 2018, 1, '2018-01-18', '2018-01-18'),
(12, 12, 84, 28, 2037, 0, 0, 0, 0, 0, 2149, 2018, 1, '2018-01-18', '2018-01-18'),
(13, 13, 378, 140, 8876, 1471.4, 0, 1414.56, 0, 0, 12280, 2018, 1, '2018-01-18', '2018-01-18'),
(14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(15, 15, 882, 308, 245, 0, 0, 0, 0, 0, 1435, 2018, 1, '2018-01-18', '2018-01-18'),
(16, 16, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(17, 17, 955.5, 336, 840, 0, 0, 0, 0, 0, 2131.5, 2018, 1, '2018-01-18', '2018-01-18'),
(18, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(19, 19, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(20, 20, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(21, 21, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(22, 22, 304.5, 126, 98, 0, 0, 0, 0, 0, 528.5, 2018, 1, '2018-01-18', '2018-01-18'),
(23, 23, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 1, '2018-01-18', '2018-01-18'),
(24, 24, 378, 154, 154, 0, 0, 0, 0, 0, 686, 2018, 1, '2018-01-18', '2018-01-18'),
(25, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(26, 26, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(27, 27, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 1, '2018-01-18', '2018-01-18'),
(28, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(29, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(30, 30, 882, 308, 245, 0, 0, 0, 0, 0, 1435, 2018, 1, '2018-01-18', '2018-01-18'),
(31, 31, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(32, 32, 378, 154, 238, 0, 0, 0, 0, 0, 770, 2018, 1, '2018-01-18', '2018-01-18'),
(33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(34, 34, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(35, 35, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(36, 36, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(38, 38, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(39, 39, 630, 210, 1512, 0, 0, 0, 0, 0, 2352, 2018, 1, '2018-01-18', '2018-01-18'),
(40, 40, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(41, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(42, 42, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(43, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(44, 44, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(45, 45, 84, 28, 14, 0, 0, 0, 0, 0, 126, 2018, 1, '2018-01-18', '2018-01-18'),
(46, 46, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(47, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(48, 48, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(49, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(50, 50, 73.5, 0, 0, 0, 0, 0, 0, 0, 73.5, 2018, 1, '2018-01-18', '2018-01-18'),
(51, 51, 84, 28, 1512, 0, 0, 0, 0, 0, 1624, 2018, 1, '2018-01-18', '2018-01-18'),
(52, 52, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(53, 53, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(54, 54, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(55, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(56, 56, 3181.5, 1064, 665, 329, 0, 0, 0, 0, 5239.5, 2018, 1, '2018-01-18', '2018-01-18'),
(57, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(58, 58, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(59, 59, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(61, 61, 210, 84, 84, 92.4, 0, 0, 0, 0, 470.4, 2018, 1, '2018-01-18', '2018-01-18'),
(62, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(63, 63, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(64, 64, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(65, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(66, 66, 3181.5, 1064, 1673, 833, 0, 0, 0, 0, 6751.5, 2018, 1, '2018-01-18', '2018-01-18'),
(67, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(68, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(69, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(70, 70, 756, 252, 105, 0, 0, 0, 0, 0, 1113, 2018, 1, '2018-01-18', '2018-01-18'),
(71, 71, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(72, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(73, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(74, 74, 178.5, 70, 42, 0, 0, 0, 0, 0, 290.5, 2018, 1, '2018-01-18', '2018-01-18'),
(75, 75, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(76, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(77, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(78, 78, 756, 252, 1617, 0, 0, 0, 0, 0, 2625, 2018, 1, '2018-01-18', '2018-01-18'),
(79, 79, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(81, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(82, 82, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(83, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(84, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(85, 85, 3024, 1008, 2520, 756, 0, 0, 0, 0, 7308, 2018, 1, '2018-01-18', '2018-01-18'),
(86, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(87, 87, 3024, 1008, 2520, 504, 0, 0, 0, 0, 7056, 2018, 1, '2018-01-18', '2018-01-18'),
(88, 88, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(89, 89, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(90, 90, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(91, 91, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(92, 92, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(93, 93, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 1, '2018-01-18', '2018-01-18'),
(94, 94, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(95, 95, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(96, 96, 3349.5, 1134, 14448, 2009, 0, 2829.12, 0, 0, 23769.6, 2018, 1, '2018-01-18', '2018-01-18'),
(97, 97, 955.5, 336, 840, 0, 0, 0, 0, 0, 2131.5, 2018, 1, '2018-01-18', '2018-01-18'),
(98, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(99, 99, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(100, 100, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(101, 101, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(102, 102, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(103, 103, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(104, 104, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(106, 106, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 1, '2018-01-18', '2018-01-18'),
(107, 107, 630, 210, 1512, 0, 0, 0, 0, 0, 2352, 2018, 1, '2018-01-18', '2018-01-18'),
(108, 108, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(109, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(110, 110, 3181.5, 1064, 665, 329, 0, 0, 0, 0, 5239.5, 2018, 1, '2018-01-18', '2018-01-18'),
(111, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(112, 112, 756, 252, 105, 0, 0, 0, 0, 0, 1113, 2018, 1, '2018-01-18', '2018-01-18'),
(113, 113, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(114, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(115, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(116, 116, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(117, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(118, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(119, 119, 378, 140, 8876, 1471.4, 0, 1414.56, 0, 0, 12280, 2018, 1, '2018-01-18', '2018-01-18'),
(120, 120, 378, 154, 238, 0, 0, 0, 0, 0, 770, 2018, 1, '2018-01-18', '2018-01-18'),
(121, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(122, 122, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 1, '2018-01-18', '2018-01-18'),
(123, 123, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(124, 124, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(125, 125, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(126, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(127, 127, 73.5, 0, 0, 0, 0, 0, 0, 0, 73.5, 2018, 1, '2018-01-18', '2018-01-18'),
(128, 128, 84, 28, 1512, 0, 0, 0, 0, 0, 1624, 2018, 1, '2018-01-18', '2018-01-18'),
(129, 129, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(130, 130, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(131, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(132, 132, 3181.5, 1064, 1673, 833, 0, 0, 0, 0, 6751.5, 2018, 1, '2018-01-18', '2018-01-18'),
(133, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(134, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(135, 135, 756, 252, 1617, 0, 0, 0, 0, 0, 2625, 2018, 1, '2018-01-18', '2018-01-18'),
(136, 136, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 1, '2018-01-18', '2018-01-18'),
(137, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(138, 138, 3024, 1008, 2520, 756, 0, 0, 0, 0, 7308, 2018, 1, '2018-01-18', '2018-01-18'),
(139, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(140, 140, 3024, 1008, 2520, 504, 0, 0, 0, 0, 7056, 2018, 1, '2018-01-18', '2018-01-18'),
(141, 141, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 1, '2018-01-18', '2018-01-18'),
(142, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 1, '2018-01-18', '2018-01-18'),
(143, 1, 0, 0, 0, 0, 0, 95.68, 0, 0, 95.68, 2018, 2, '2018-02-05', '2018-02-05'),
(144, 2, 63, 0, 0, 0, 0, 0, 0, 0, 63, 2018, 2, '2018-02-05', '2018-02-05'),
(145, 3, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(146, 4, 630, 210, 4074, 0, 0, 0, 0, 0, 4914, 2018, 2, '2018-02-05', '2018-02-05'),
(147, 5, 3349.5, 1134, 28896, 2009, 0, 47.84, 0, 0, 35436.3, 2018, 2, '2018-02-05', '2018-02-05'),
(148, 6, 184, 0, 0, 0, 0, 0, 0, 0, 184, 2018, 2, '2018-02-05', '2018-02-05'),
(149, 7, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(150, 8, 84, 28, 84, 0, 0, 0, 0, 0, 196, 2018, 2, '2018-02-05', '2018-02-05'),
(151, 9, 378, 154, 448, 327.6, 0, 0, 0, 0, 1307.6, 2018, 2, '2018-02-05', '2018-02-05'),
(152, 10, 999, 320, 35, 0, 0, 0, 0, 0, 1354, 2018, 2, '2018-02-05', '2018-02-05'),
(153, 11, 63, 0, 0, 0, 0, 0, 0, 0, 63, 2018, 2, '2018-02-05', '2018-02-05'),
(154, 12, 84, 28, 4074, 0, 0, 0, 0, 0, 4186, 2018, 2, '2018-02-05', '2018-02-05'),
(155, 13, 378, 140, 17752, 1471.4, 0, 23.92, 0, 0, 19765.3, 2018, 2, '2018-02-05', '2018-02-05'),
(156, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(157, 15, 882, 308, 490, 0, 0, 0, 0, 0, 1680, 2018, 2, '2018-02-05', '2018-02-05'),
(158, 16, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(159, 17, 955.5, 336, 1680, 0, 0, 0, 0, 0, 2971.5, 2018, 2, '2018-02-05', '2018-02-05'),
(160, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(161, 19, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(162, 20, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(163, 21, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(164, 22, 304.5, 126, 196, 0, 0, 0, 0, 0, 626.5, 2018, 2, '2018-02-05', '2018-02-05'),
(165, 23, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 2, '2018-02-05', '2018-02-05'),
(166, 24, 378, 154, 308, 0, 0, 0, 0, 0, 840, 2018, 2, '2018-02-05', '2018-02-05'),
(167, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(168, 26, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(169, 27, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 2, '2018-02-05', '2018-02-05'),
(170, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(171, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(172, 30, 882, 308, 490, 0, 0, 0, 0, 0, 1680, 2018, 2, '2018-02-05', '2018-02-05'),
(173, 31, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(174, 32, 378, 154, 476, 0, 0, 0, 0, 0, 1008, 2018, 2, '2018-02-05', '2018-02-05'),
(175, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(176, 34, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(177, 35, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(178, 36, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(179, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(180, 38, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(181, 39, 630, 210, 3024, 0, 0, 0, 0, 0, 3864, 2018, 2, '2018-02-05', '2018-02-05'),
(182, 40, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(183, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(184, 42, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(185, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(186, 44, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(187, 45, 84, 28, 28, 0, 0, 0, 0, 0, 140, 2018, 2, '2018-02-05', '2018-02-05'),
(188, 46, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(189, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(190, 48, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(191, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(192, 50, 73.5, 0, 0, 0, 0, 0, 0, 0, 73.5, 2018, 2, '2018-02-05', '2018-02-05'),
(193, 51, 84, 28, 3024, 0, 0, 0, 0, 0, 3136, 2018, 2, '2018-02-05', '2018-02-05'),
(194, 52, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(195, 53, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(196, 54, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(197, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(198, 56, 3181.5, 1064, 1330, 329, 0, 0, 0, 0, 5904.5, 2018, 2, '2018-02-05', '2018-02-05'),
(199, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(200, 58, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(201, 59, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(202, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(203, 61, 210, 84, 168, 92.4, 0, 0, 0, 0, 554.4, 2018, 2, '2018-02-05', '2018-02-05'),
(204, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(205, 63, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(206, 64, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(207, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(208, 66, 3181.5, 1064, 3346, 833, 0, 0, 0, 0, 8424.5, 2018, 2, '2018-02-05', '2018-02-05'),
(209, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(210, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(211, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(212, 70, 756, 252, 210, 0, 0, 0, 0, 0, 1218, 2018, 2, '2018-02-05', '2018-02-05'),
(213, 71, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(214, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(215, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(216, 74, 178.5, 70, 84, 0, 0, 0, 0, 0, 332.5, 2018, 2, '2018-02-05', '2018-02-05'),
(217, 75, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(218, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(219, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(220, 78, 756, 252, 3234, 0, 0, 0, 0, 0, 4242, 2018, 2, '2018-02-05', '2018-02-05'),
(221, 79, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(222, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(223, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(224, 82, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(225, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(226, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(227, 85, 3024, 1008, 5040, 756, 0, 0, 0, 0, 9828, 2018, 2, '2018-02-05', '2018-02-05'),
(228, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(229, 87, 3024, 1008, 5040, 504, 0, 0, 0, 0, 9576, 2018, 2, '2018-02-05', '2018-02-05'),
(230, 88, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(231, 89, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(232, 90, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(233, 91, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(234, 92, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(235, 93, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 2, '2018-02-05', '2018-02-05'),
(236, 94, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(237, 95, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(238, 96, 3349.5, 1134, 28896, 2009, 0, 47.84, 0, 0, 35436.3, 2018, 2, '2018-02-05', '2018-02-05'),
(239, 97, 955.5, 336, 1680, 0, 0, 0, 0, 0, 2971.5, 2018, 2, '2018-02-05', '2018-02-05'),
(240, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(241, 99, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(242, 100, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(243, 101, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(244, 102, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(245, 103, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(246, 104, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(247, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(248, 106, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 2, '2018-02-05', '2018-02-05'),
(249, 107, 630, 210, 3024, 0, 0, 0, 0, 0, 3864, 2018, 2, '2018-02-05', '2018-02-05'),
(250, 108, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(251, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(252, 110, 3181.5, 1064, 1330, 329, 0, 0, 0, 0, 5904.5, 2018, 2, '2018-02-05', '2018-02-05'),
(253, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(254, 112, 756, 252, 210, 0, 0, 0, 0, 0, 1218, 2018, 2, '2018-02-05', '2018-02-05'),
(255, 113, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(256, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(257, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(258, 116, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(259, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(260, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(261, 119, 378, 140, 17752, 1471.4, 0, 23.92, 0, 0, 19765.3, 2018, 2, '2018-02-05', '2018-02-05'),
(262, 120, 378, 154, 476, 0, 0, 0, 0, 0, 1008, 2018, 2, '2018-02-05', '2018-02-05'),
(263, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(264, 122, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 2, '2018-02-05', '2018-02-05'),
(265, 123, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(266, 124, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(267, 125, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(268, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(269, 127, 73.5, 0, 0, 0, 0, 0, 0, 0, 73.5, 2018, 2, '2018-02-05', '2018-02-05'),
(270, 128, 84, 28, 3024, 0, 0, 0, 0, 0, 3136, 2018, 2, '2018-02-05', '2018-02-05'),
(271, 129, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(272, 130, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(273, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(274, 132, 3181.5, 1064, 3346, 833, 0, 0, 0, 0, 8424.5, 2018, 2, '2018-02-05', '2018-02-05'),
(275, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(276, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(277, 135, 756, 252, 3234, 0, 0, 0, 0, 0, 4242, 2018, 2, '2018-02-05', '2018-02-05'),
(278, 136, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 2, '2018-02-05', '2018-02-05'),
(279, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(280, 138, 3024, 1008, 5040, 756, 0, 0, 0, 0, 9828, 2018, 2, '2018-02-05', '2018-02-05'),
(281, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(282, 140, 3024, 1008, 5040, 504, 0, 0, 0, 0, 9576, 2018, 2, '2018-02-05', '2018-02-05'),
(283, 141, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 2, '2018-02-05', '2018-02-05'),
(284, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(285, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(286, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(287, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(288, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(289, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(290, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 2, '2018-02-05', '2018-02-05'),
(291, 1, 0, 0, 0, 0, 0, 14.88, 0, 0, 14.88, 2018, 5, '2018-05-03', '2018-05-03'),
(292, 2, 63, 0, 0, 0, 0, 0, 0, 0, 63, 2018, 5, '2018-05-03', '2018-05-03'),
(293, 3, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(294, 4, 630, 210, 6111, 0, 0, 0, 0, 0, 6951, 2018, 5, '2018-05-03', '2018-05-03'),
(295, 5, 3349.5, 1134, 43344, 2009, 0, 7.44, 0, 0, 49843.9, 2018, 5, '2018-05-03', '2018-05-03'),
(296, 6, 184, 0, 0, 0, 0, 0, 0, 0, 184, 2018, 5, '2018-05-03', '2018-05-03'),
(297, 7, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(298, 8, 84, 28, 126, 0, 0, 0, 0, 0, 238, 2018, 5, '2018-05-03', '2018-05-03'),
(299, 9, 378, 154, 672, 327.6, 0, 0, 0, 0, 1531.6, 2018, 5, '2018-05-03', '2018-05-03'),
(300, 10, 999, 320, 70, 0, 0, 0, 0, 0, 1389, 2018, 5, '2018-05-03', '2018-05-03'),
(301, 11, 86.1, 0, 0, 0, 0, 0, 0, 0, 86.1, 2018, 5, '2018-05-03', '2018-05-03'),
(302, 12, 84, 28, 6111, 0, 0, 0, 0, 0, 6223, 2018, 5, '2018-05-03', '2018-05-03'),
(303, 13, 470.4, 171, 26628, 1490, 0, 3.72, 0, 0, 28763.1, 2018, 5, '2018-05-03', '2018-05-03'),
(304, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(305, 15, 882, 308, 735, 0, 0, 0, 0, 0, 1925, 2018, 5, '2018-05-03', '2018-05-03'),
(306, 16, 3116.4, 1039, 0, 252, 0, 0, 0, 0, 4407.4, 2018, 5, '2018-05-03', '2018-05-03'),
(307, 17, 955.5, 336, 2520, 0, 0, 0, 0, 0, 3811.5, 2018, 5, '2018-05-03', '2018-05-03'),
(308, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(309, 19, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(310, 20, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(311, 21, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(312, 22, 304.5, 126, 294, 0, 0, 0, 0, 0, 724.5, 2018, 5, '2018-05-03', '2018-05-03'),
(313, 23, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 5, '2018-05-03', '2018-05-03'),
(314, 24, 378, 154, 462, 0, 0, 0, 0, 0, 994, 2018, 5, '2018-05-03', '2018-05-03'),
(315, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(316, 26, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(317, 27, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 5, '2018-05-03', '2018-05-03'),
(318, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(319, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(320, 30, 882, 308, 735, 0, 0, 0, 0, 0, 1925, 2018, 5, '2018-05-03', '2018-05-03'),
(321, 31, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(322, 32, 378, 154, 714, 0, 0, 0, 0, 0, 1246, 2018, 5, '2018-05-03', '2018-05-03'),
(323, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(324, 34, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(325, 35, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(326, 36, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(327, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(328, 38, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(329, 39, 630, 210, 4536, 0, 0, 0, 0, 0, 5376, 2018, 5, '2018-05-03', '2018-05-03'),
(330, 40, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(331, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(332, 42, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(333, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(334, 44, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(335, 45, 84, 28, 42, 0, 0, 0, 0, 0, 154, 2018, 5, '2018-05-03', '2018-05-03'),
(336, 46, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(337, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(338, 48, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(339, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(340, 50, 73.5, 0, 0, 0, 0, 0, 0, 0, 73.5, 2018, 5, '2018-05-03', '2018-05-03'),
(341, 51, 84, 28, 4536, 0, 0, 0, 0, 0, 4648, 2018, 5, '2018-05-03', '2018-05-03'),
(342, 52, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(343, 53, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(344, 54, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(345, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(346, 56, 3181.5, 1064, 1995, 329, 0, 0, 0, 0, 6569.5, 2018, 5, '2018-05-03', '2018-05-03'),
(347, 57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(348, 58, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(349, 59, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(350, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(351, 61, 210, 84, 252, 92.4, 0, 0, 0, 0, 638.4, 2018, 5, '2018-05-03', '2018-05-03'),
(352, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(353, 63, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(354, 64, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(355, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(356, 66, 3181.5, 1064, 5019, 833, 0, 0, 0, 0, 10097.5, 2018, 5, '2018-05-03', '2018-05-03'),
(357, 67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(358, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(359, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(360, 70, 756, 252, 315, 0, 0, 0, 0, 0, 1323, 2018, 5, '2018-05-03', '2018-05-03'),
(361, 71, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(362, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(363, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(364, 74, 178.5, 70, 126, 0, 0, 0, 0, 0, 374.5, 2018, 5, '2018-05-03', '2018-05-03'),
(365, 75, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(366, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(367, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(368, 78, 756, 252, 4851, 0, 0, 0, 0, 0, 5859, 2018, 5, '2018-05-03', '2018-05-03'),
(369, 79, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(370, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(371, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(372, 82, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(373, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(374, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(375, 85, 3024, 1008, 7560, 756, 0, 0, 0, 0, 12348, 2018, 5, '2018-05-03', '2018-05-03'),
(376, 86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(377, 87, 3024, 1008, 7560, 504, 0, 0, 0, 0, 12096, 2018, 5, '2018-05-03', '2018-05-03'),
(378, 88, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(379, 89, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(380, 90, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(381, 91, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(382, 92, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(383, 93, 84, 28, 0, 16.8, 0, 0, 0, 0, 128.8, 2018, 5, '2018-05-03', '2018-05-03'),
(384, 94, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(385, 95, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(386, 96, 3349.5, 1134, 43344, 2009, 0, 7.44, 0, 0, 49843.9, 2018, 5, '2018-05-03', '2018-05-03'),
(387, 97, 955.5, 336, 2520, 0, 0, 0, 0, 0, 3811.5, 2018, 5, '2018-05-03', '2018-05-03'),
(388, 98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(389, 99, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(390, 100, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(391, 101, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(392, 102, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(393, 103, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(394, 104, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(395, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(396, 106, 42, 0, 0, 0, 0, 0, 0, 0, 42, 2018, 5, '2018-05-03', '2018-05-03'),
(397, 107, 630, 210, 4536, 0, 0, 0, 0, 0, 5376, 2018, 5, '2018-05-03', '2018-05-03'),
(398, 108, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(399, 109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(400, 110, 3181.5, 1064, 1995, 329, 0, 0, 0, 0, 6569.5, 2018, 5, '2018-05-03', '2018-05-03'),
(401, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(402, 112, 756, 252, 315, 0, 0, 0, 0, 0, 1323, 2018, 5, '2018-05-03', '2018-05-03'),
(403, 113, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(404, 114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(405, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(406, 116, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(407, 117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(408, 118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(409, 119, 378, 140, 26628, 1471.4, 0, 3.72, 0, 0, 28621.1, 2018, 5, '2018-05-03', '2018-05-03'),
(410, 120, 378, 154, 714, 0, 0, 0, 0, 0, 1246, 2018, 5, '2018-05-03', '2018-05-03'),
(411, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(412, 122, 31.5, 0, 0, 0, 0, 0, 0, 0, 31.5, 2018, 5, '2018-05-03', '2018-05-03'),
(413, 123, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(414, 124, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(415, 125, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(416, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(417, 127, 73.5, 0, 0, 0, 0, 0, 0, 0, 73.5, 2018, 5, '2018-05-03', '2018-05-03'),
(418, 128, 84, 28, 4536, 0, 0, 0, 0, 0, 4648, 2018, 5, '2018-05-03', '2018-05-03'),
(419, 129, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(420, 130, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(421, 131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(422, 132, 3181.5, 1064, 5019, 833, 0, 0, 0, 0, 10097.5, 2018, 5, '2018-05-03', '2018-05-03'),
(423, 133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(424, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(425, 135, 756, 252, 4851, 0, 0, 0, 0, 0, 5859, 2018, 5, '2018-05-03', '2018-05-03'),
(426, 136, 10.5, 0, 0, 0, 0, 0, 0, 0, 10.5, 2018, 5, '2018-05-03', '2018-05-03'),
(427, 137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(428, 138, 3024, 1008, 7560, 756, 0, 0, 0, 0, 12348, 2018, 5, '2018-05-03', '2018-05-03'),
(429, 139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(430, 140, 3024, 1008, 7560, 504, 0, 0, 0, 0, 12096, 2018, 5, '2018-05-03', '2018-05-03'),
(431, 141, 3024, 1008, 0, 252, 0, 0, 0, 0, 4284, 2018, 5, '2018-05-03', '2018-05-03'),
(432, 142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(433, 143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(434, 144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(435, 145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(436, 146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(437, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(438, 148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(439, 149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(440, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03'),
(441, 151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2018, 5, '2018-05-03', '2018-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `user_purchases`
--

CREATE TABLE `user_purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `serial_no` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `pv` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_purchases`
--

INSERT INTO `user_purchases` (`id`, `user_id`, `product_id`, `product_name`, `serial_no`, `price`, `pv`, `status`, `updated_at`, `created_at`) VALUES
(1, 2, 1, 'Product: Femalov', '12312313', 210, 70, 'Shipping', '2017-10-12 09:29:46', '2017-12-12 09:29:46'),
(2, 3, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:12:16', '2017-12-12 09:29:46'),
(3, 3, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:12:16', '2017-12-12 09:29:46'),
(4, 3, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:12:16', '2017-12-12 09:29:46'),
(5, 14, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:13:48', '2017-12-12 09:29:46'),
(6, 14, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:13:48', '2017-12-12 09:29:46'),
(7, 14, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:13:48', '2017-12-12 09:29:46'),
(8, 36, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:21:28', '2017-12-12 09:29:46'),
(9, 36, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:21:28', '2017-12-12 09:29:46'),
(10, 36, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:21:28', '2017-12-12 09:29:46'),
(11, 53, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:22:11', '2017-12-12 09:29:46'),
(12, 53, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:22:11', '2017-12-12 09:29:46'),
(13, 53, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:22:11', '2017-12-12 09:29:46'),
(14, 68, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 13:22:59', '2017-12-12 09:29:46'),
(15, 18, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:55:35', '2017-12-12 09:29:46'),
(16, 19, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:56:22', '2017-12-12 09:29:46'),
(17, 19, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:56:22', '2017-12-12 09:29:46'),
(18, 19, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:56:23', '2017-12-12 09:29:46'),
(19, 37, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:58:37', '2017-12-12 09:29:46'),
(20, 38, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:59:20', '2017-12-12 09:29:46'),
(21, 38, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:59:21', '2017-12-12 09:29:46'),
(22, 38, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 14:59:21', '2017-12-12 09:29:46'),
(23, 40, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:03:51', '2017-12-12 09:29:46'),
(24, 40, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:03:51', '2017-12-12 09:29:46'),
(25, 40, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:03:51', '2017-12-12 09:29:46'),
(26, 41, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:04:54', '2017-12-12 09:29:46'),
(27, 54, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:11:46', '2017-12-12 09:29:46'),
(28, 54, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:11:46', '2017-12-12 09:29:46'),
(29, 54, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:11:46', '2017-12-12 09:29:46'),
(30, 55, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:13:11', '2017-12-12 09:29:46'),
(31, 57, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:14:51', '2017-12-12 09:29:46'),
(32, 69, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:15:51', '2017-12-12 09:29:46'),
(33, 71, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:18:19', '2017-12-12 09:29:46'),
(34, 71, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:18:19', '2017-12-12 09:29:46'),
(35, 71, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:18:19', '2017-12-12 09:29:46'),
(36, 80, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:19:15', '2017-12-12 09:29:46'),
(37, 80, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:19:15', '2017-12-12 09:29:46'),
(38, 80, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:19:16', '2017-12-12 09:29:46'),
(39, 81, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:20:55', '2017-12-12 09:29:46'),
(40, 6, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:26:31', '2017-12-12 09:29:46'),
(41, 7, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:29:09', '2017-12-12 09:29:46'),
(42, 7, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:29:09', '2017-12-12 09:29:46'),
(43, 7, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:29:09', '2017-12-12 09:29:46'),
(44, 21, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:32:41', '2017-12-12 09:29:46'),
(45, 21, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:32:41', '2017-12-12 09:29:46'),
(46, 21, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:32:41', '2017-12-12 09:29:46'),
(47, 6, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:47:21', '2017-12-12 09:29:46'),
(54, 42, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:58:26', '2017-12-12 09:29:46'),
(55, 42, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:58:26', '2017-12-12 09:29:46'),
(56, 42, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:58:26', '2017-12-12 09:29:46'),
(57, 58, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:59:30', '2017-12-12 09:29:46'),
(58, 58, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:59:30', '2017-12-12 09:29:46'),
(59, 58, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 15:59:30', '2017-12-12 09:29:46'),
(60, 72, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 16:00:39', '2017-12-12 09:29:46'),
(61, 25, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 16:07:40', '2017-12-12 09:29:46'),
(62, 26, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 16:14:54', '2017-12-12 09:29:46'),
(63, 26, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 16:14:54', '2017-12-12 09:29:46'),
(64, 26, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 16:14:54', '2017-12-12 09:29:46'),
(65, 10, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:29:07', '2017-12-12 09:29:46'),
(66, 11, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:30:20', '2017-12-12 09:29:46'),
(67, 11, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:30:20', '2017-12-12 09:29:46'),
(68, 11, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:30:21', '2017-12-12 09:29:46'),
(69, 28, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:35:28', '2017-12-12 09:29:46'),
(70, 29, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:36:27', '2017-12-12 09:29:46'),
(71, 29, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:36:27', '2017-12-12 09:29:46'),
(72, 29, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:36:27', '2017-12-12 09:29:46'),
(73, 48, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:42:28', '2017-12-12 09:29:46'),
(74, 48, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:42:28', '2017-12-12 09:29:46'),
(75, 48, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:42:28', '2017-12-12 09:29:46'),
(76, 63, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:43:17', '2017-12-12 09:29:46'),
(77, 63, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:43:17', '2017-12-12 09:29:46'),
(78, 63, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:43:17', '2017-12-12 09:29:46'),
(79, 76, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:44:03', '2017-12-12 09:29:46'),
(80, 33, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 17:59:14', '2017-12-12 09:29:46'),
(81, 34, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:00:42', '2017-12-12 09:29:46'),
(82, 34, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:00:42', '2017-12-12 09:29:46'),
(83, 34, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:00:42', '2017-12-12 09:29:46'),
(84, 49, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:07:48', '2017-12-12 09:29:46'),
(85, 50, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:13:47', '2017-12-12 09:29:46'),
(86, 50, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:13:47', '2017-12-12 09:29:46'),
(87, 50, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:13:47', '2017-12-12 09:29:46'),
(88, 52, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:17:10', '2017-12-12 09:29:46'),
(89, 52, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:17:10', '2017-12-12 09:29:46'),
(90, 52, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:17:10', '2017-12-12 09:29:46'),
(91, 64, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:18:04', '2017-12-12 09:29:46'),
(92, 64, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:18:04', '2017-12-12 09:29:46'),
(93, 64, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:18:04', '2017-12-12 09:29:46'),
(94, 65, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:18:49', '2017-12-12 09:29:46'),
(95, 67, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:21:19', '2017-12-12 09:29:46'),
(96, 77, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:21:58', '2017-12-12 09:29:46'),
(97, 79, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:26:38', '2017-12-12 09:29:46'),
(98, 79, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:26:38', '2017-12-12 09:29:46'),
(99, 79, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:26:38', '2017-12-12 09:29:46'),
(100, 84, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:27:33', '2017-12-12 09:29:46'),
(101, 84, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:27:33', '2017-12-12 09:29:46'),
(102, 84, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:27:33', '2017-12-12 09:29:46'),
(103, 86, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-19 18:29:00', '2017-12-12 09:29:46'),
(104, 98, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:09:58', '2017-12-12 09:29:46'),
(105, 99, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:10:37', '2017-12-12 09:29:46'),
(106, 99, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:10:37', '2017-12-12 09:29:46'),
(107, 99, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:10:37', '2017-12-12 09:29:46'),
(108, 105, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:19:12', '2017-12-12 09:29:46'),
(109, 106, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:19:52', '2017-12-12 09:29:46'),
(110, 106, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:19:52', '2017-12-12 09:29:46'),
(111, 106, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:19:52', '2017-12-12 09:29:46'),
(112, 108, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:21:40', '2017-12-12 09:29:46'),
(113, 108, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:21:40', '2017-12-12 09:29:46'),
(114, 108, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:21:40', '2017-12-12 09:29:46'),
(115, 109, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:22:24', '2017-12-12 09:29:46'),
(116, 111, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:24:10', '2017-12-12 09:29:46'),
(117, 113, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:26:03', '2017-12-12 09:29:46'),
(118, 113, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:26:03', '2017-12-12 09:29:46'),
(119, 113, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:26:03', '2017-12-12 09:29:46'),
(120, 114, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:26:49', '2017-12-12 09:29:46'),
(121, 114, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:26:49', '2017-12-12 09:29:46'),
(122, 114, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:26:49', '2017-12-12 09:29:46'),
(123, 115, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:27:47', '2017-12-12 09:29:46'),
(124, 116, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:28:33', '2017-12-12 09:29:46'),
(125, 116, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:28:33', '2017-12-12 09:29:46'),
(126, 116, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:28:33', '2017-12-12 09:29:46'),
(127, 117, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:29:20', '2017-12-12 09:29:46'),
(128, 118, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:29:58', '2017-12-12 09:29:46'),
(129, 121, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:35:44', '2017-12-12 09:29:46'),
(130, 122, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:36:26', '2017-12-12 09:29:46'),
(131, 122, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:36:26', '2017-12-12 09:29:46'),
(132, 122, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:36:26', '2017-12-12 09:29:46'),
(133, 126, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:41:42', '2017-12-12 09:29:46'),
(134, 127, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:42:51', '2017-12-12 09:29:46'),
(135, 127, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:42:51', '2017-12-12 09:29:46'),
(136, 127, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:42:51', '2017-12-12 09:29:46'),
(137, 129, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:47:36', '2017-12-12 09:29:46'),
(138, 129, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:47:36', '2017-12-12 09:29:46'),
(139, 129, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:47:36', '2017-12-12 09:29:46'),
(140, 130, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:49:47', '2017-12-12 09:29:46'),
(141, 130, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:49:47', '2017-12-12 09:29:46'),
(142, 130, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:49:47', '2017-12-12 09:29:46'),
(143, 131, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 12:50:30', '2017-12-12 09:29:46'),
(144, 133, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:07:27', '2017-12-12 09:29:46'),
(145, 134, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:08:23', '2017-12-12 09:29:46'),
(146, 136, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:10:03', '2017-12-12 09:29:46'),
(147, 136, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:10:03', '2017-12-12 09:29:46'),
(148, 136, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:10:03', '2017-12-12 09:29:46'),
(149, 137, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:11:01', '2017-12-12 09:29:46'),
(150, 137, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:11:01', '2017-12-12 09:29:46'),
(151, 137, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:11:01', '2017-12-12 09:29:46'),
(152, 139, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:14:01', '2017-12-12 09:29:46'),
(153, 43, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:30:12', '2017-12-12 09:29:46'),
(154, 44, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:31:38', '2017-12-12 09:29:46'),
(155, 44, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:31:38', '2017-12-12 09:29:46'),
(156, 44, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:31:38', '2017-12-12 09:29:46'),
(157, 46, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:33:43', '2017-12-12 09:29:46'),
(158, 46, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:33:43', '2017-12-12 09:29:46'),
(159, 46, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:33:43', '2017-12-12 09:29:46'),
(160, 47, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:34:59', '2017-12-12 09:29:46'),
(161, 59, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:36:37', '2017-12-12 09:29:46'),
(162, 59, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:36:37', '2017-12-12 09:29:46'),
(163, 59, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:36:38', '2017-12-12 09:29:46'),
(164, 60, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:37:14', '2017-12-12 09:29:46'),
(165, 62, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:38:28', '2017-12-12 09:29:46'),
(166, 73, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:40:31', '2017-12-12 09:29:46'),
(167, 75, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:42:08', '2017-12-12 09:29:46'),
(168, 75, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:42:08', '2017-12-12 09:29:46'),
(169, 75, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:42:08', '2017-12-12 09:29:46'),
(170, 82, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:43:57', '2017-12-12 09:29:46'),
(171, 82, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:43:57', '2017-12-12 09:29:46'),
(172, 82, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:43:57', '2017-12-12 09:29:46'),
(173, 83, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2017-07-20 13:44:40', '2017-12-12 09:29:46'),
(174, 2, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2018-01-18 22:54:38', '2018-01-18 22:54:38'),
(175, 2, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2018-01-18 22:54:38', '2018-01-18 22:54:38'),
(176, 2, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2018-01-18 22:54:38', '2018-01-18 22:54:38'),
(177, 2, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2018-01-18 22:55:22', '2018-01-18 22:55:22'),
(178, 2, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2018-01-18 22:55:22', '2018-01-18 22:55:22'),
(179, 2, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2018-01-18 22:55:22', '2018-01-18 22:55:22'),
(180, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:05', '2018-01-18 22:59:05'),
(181, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:05', '2018-01-18 22:59:05'),
(182, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:05', '2018-01-18 22:59:05'),
(183, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:05', '2018-01-18 22:59:05'),
(184, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:05', '2018-01-18 22:59:05'),
(185, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:05', '2018-01-18 22:59:05'),
(186, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:05', '2018-01-18 22:59:05'),
(187, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:06', '2018-01-18 22:59:06'),
(188, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:06', '2018-01-18 22:59:06'),
(189, 6, 11, 'Product: Flawless II', '', 368, 118, 'Shipping', '2018-01-18 22:59:06', '2018-01-18 22:59:06'),
(190, 10, 9, 'Product: Fixes Combo', '', 999, 320, 'Shipping', '2018-01-18 23:01:59', '2018-01-18 23:01:59'),
(191, 10, 9, 'Product: Fixes Combo', '', 999, 320, 'Shipping', '2018-01-18 23:01:59', '2018-01-18 23:01:59'),
(192, 10, 9, 'Product: Fixes Combo', '', 999, 320, 'Shipping', '2018-01-18 23:01:59', '2018-01-18 23:01:59'),
(193, 10, 9, 'Product: Fixes Combo', '', 999, 320, 'Shipping', '2018-01-18 23:01:59', '2018-01-18 23:01:59'),
(194, 10, 9, 'Product: Fixes Combo', '', 999, 320, 'Shipping', '2018-01-18 23:01:59', '2018-01-18 23:01:59'),
(195, 11, 1, 'Product: Femalov', '', 210, 70, 'Shipping', '2018-04-18 15:06:47', '2018-04-18 15:06:47'),
(196, 11, 2, 'Product: Right Solution', '', 252, 85, 'Shipping', '2018-04-18 15:06:47', '2018-04-18 15:06:47'),
(197, 2, 1, 'Product: Femalov', '', 210, 70, 'Stocking', '2018-05-07 16:22:28', '2018-05-07 16:22:28'),
(198, 2, 5, 'Product: H2 Zeta Micron', '', 245, 82, 'Stocking', '2018-05-07 16:22:29', '2018-05-07 16:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_wallet` int(11) NOT NULL,
  `rmvp` double NOT NULL,
  `pv` int(11) NOT NULL,
  `current_pv` int(11) NOT NULL,
  `do_pv` int(11) NOT NULL,
  `sdo_pv` int(11) NOT NULL,
  `retail_profit` float NOT NULL,
  `personal_rebate` float NOT NULL,
  `direct_sponsor` float NOT NULL,
  `generations_group` float NOT NULL,
  `do_cto` float NOT NULL,
  `sdo_cto` float NOT NULL,
  `sdo_group` float NOT NULL,
  `sdo_to_sdo` float NOT NULL,
  `first_purchased` int(11) NOT NULL,
  `first_purchased_rmvp` double NOT NULL,
  `purchased` int(11) NOT NULL,
  `total_bonus` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `p_wallet`, `rmvp`, `pv`, `current_pv`, `do_pv`, `sdo_pv`, `retail_profit`, `personal_rebate`, `direct_sponsor`, `generations_group`, `do_cto`, `sdo_cto`, `sdo_group`, `sdo_to_sdo`, `first_purchased`, `first_purchased_rmvp`, `purchased`, `total_bonus`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 1470, 490, 0, 0, 0, 63, 0, 0, 0, 0, 0, 0, 0, 70, 210, 3, 0, '2017-07-19 13:11:36', '2018-02-05 16:52:19'),
(2, 3, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 13:12:16', '2018-01-18 17:23:39'),
(3, 4, 0, 3150, 1050, 0, 0, 0, 630, 210, 6111, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-19 13:13:11', '2018-05-03 13:40:37'),
(4, 14, 0, 630, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 13:13:48', '2017-11-03 17:32:51'),
(5, 15, 0, 3150, 1050, 0, 0, 0, 882, 308, 735, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-19 13:20:04', '2018-05-03 13:40:37'),
(6, 16, 0, 15120, 5040, 0, 0, 0, 3116.4, 1039, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 13:20:49', '2018-05-03 13:40:32'),
(7, 36, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 13:21:28', '2018-01-18 17:23:45'),
(8, 53, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 13:22:11', '2018-01-18 17:23:49'),
(9, 68, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 13:22:59', '2017-07-19 13:22:59'),
(10, 5, 0, 15120, 5040, 0, 0, 0, 3349.5, 1134, 43344, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 14:54:05', '2018-05-03 13:40:41'),
(11, 17, 0, 3150, 1050, 0, 0, 0, 955.5, 336, 2520, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-19 14:54:59', '2018-05-03 13:40:39'),
(12, 18, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 14:55:35', '2017-07-19 14:55:35'),
(13, 19, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 14:56:23', '2018-01-18 17:23:42'),
(14, 20, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 14:57:47', '2018-01-18 17:24:07'),
(15, 37, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 14:58:37', '2017-07-19 14:58:37'),
(16, 38, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 14:59:21', '2018-01-18 17:23:46'),
(17, 39, 0, 3150, 1050, 0, 0, 0, 630, 210, 4536, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-19 15:00:15', '2018-05-03 13:40:38'),
(18, 40, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 15:03:51', '2018-01-18 17:23:46'),
(19, 41, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 15:04:54', '2017-07-19 15:04:54'),
(20, 54, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 15:11:46', '2018-01-18 17:23:50'),
(21, 55, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 15:13:11', '2017-07-19 15:13:11'),
(22, 56, 0, 15120, 5040, 0, 0, 0, 3181.5, 1064, 1995, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 15:14:08', '2018-05-03 13:40:39'),
(23, 57, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 15:14:51', '2017-07-19 15:14:51'),
(24, 69, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 15:15:51', '2017-07-19 15:15:51'),
(25, 70, 0, 3150, 1050, 0, 0, 0, 756, 252, 315, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-19 15:17:01', '2018-05-03 13:40:39'),
(26, 71, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 15:18:19', '2018-01-18 17:23:53'),
(27, 80, 0, 630, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 15:19:16', '2017-11-03 17:33:02'),
(28, 81, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 15:20:55', '2017-07-19 15:20:55'),
(29, 6, 0, 3890, 1250, 0, 0, 0, 184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, '2017-07-19 15:47:21', '2018-02-05 16:52:19'),
(30, 7, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 15:50:46', '2018-01-18 17:23:39'),
(31, 8, 0, 420, 140, 0, 0, 0, 84, 28, 126, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 15:52:38', '2018-05-03 13:40:40'),
(32, 21, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 15:53:30', '2018-01-18 17:23:40'),
(33, 22, 0, 420, 140, 0, 0, 0, 304.5, 126, 294, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 15:55:55', '2018-05-03 13:40:40'),
(34, 23, 0, 420, 140, 0, 0, 0, 84, 28, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 15:57:19', '2018-01-18 17:24:08'),
(35, 42, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 15:58:26', '2018-01-18 17:23:42'),
(36, 58, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 15:59:30', '2018-01-18 17:23:51'),
(37, 72, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 16:00:39', '2017-07-19 16:00:39'),
(38, 9, 0, 420, 140, 0, 0, 0, 378, 154, 672, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 16:03:18', '2018-05-03 13:40:52'),
(39, 24, 0, 420, 140, 0, 0, 0, 378, 154, 462, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 16:06:36', '2018-05-03 13:40:53'),
(40, 25, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 16:07:40', '2017-07-19 16:07:40'),
(41, 26, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 16:14:54', '2018-01-18 17:23:43'),
(42, 27, 0, 420, 140, 0, 0, 0, 84, 28, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 16:16:48', '2018-01-18 17:24:08'),
(43, 93, 0, 420, 140, 0, 0, 0, 84, 28, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 16:18:05', '2018-01-18 17:24:15'),
(44, 89, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 16:19:39', '2018-01-18 17:24:14'),
(45, 90, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 16:20:37', '2018-01-18 17:24:14'),
(46, 91, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 16:21:27', '2018-01-18 17:24:15'),
(47, 92, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 16:22:40', '2018-01-18 17:24:15'),
(48, 10, 0, 5205, 1670, 0, 0, 0, 999, 320, 70, 0, 0, 0, 0, 0, 0, 0, 3, 0, '2017-07-19 17:29:07', '2018-05-03 13:40:41'),
(49, 11, 0, 1092, 365, 0, 0, 0, 86.1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, '2017-07-19 17:30:21', '2018-05-03 13:40:31'),
(50, 12, 0, 420, 140, 0, 0, 0, 84, 28, 6111, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 17:33:49', '2018-05-03 13:40:41'),
(51, 28, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 17:35:28', '2017-07-19 17:35:28'),
(52, 29, 0, 630, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 17:36:27', '2017-11-03 17:33:07'),
(53, 30, 0, 3150, 1050, 0, 0, 0, 882, 308, 735, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-19 17:37:37', '2018-05-03 13:40:42'),
(54, 31, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 17:40:29', '2018-01-18 17:24:09'),
(55, 48, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 17:42:28', '2018-01-18 17:23:48'),
(56, 63, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 17:43:17', '2018-01-18 17:23:52'),
(57, 76, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 17:44:03', '2017-07-19 17:44:03'),
(58, 13, 0, 882, 295, 0, 0, 0, 470.4, 171, 26628, 0, 0, 0, 0, 0, 0, 0, 3, 0, '2017-07-19 17:53:04', '2018-05-03 13:40:43'),
(59, 32, 0, 420, 140, 0, 0, 0, 378, 154, 714, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 17:58:10', '2018-05-03 13:40:43'),
(60, 33, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 17:59:14', '2017-07-19 17:59:14'),
(61, 34, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 18:00:42', '2018-01-18 17:23:45'),
(62, 35, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 18:04:13', '2018-01-18 17:24:09'),
(63, 94, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 18:05:17', '2018-01-18 17:24:15'),
(64, 95, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 18:06:04', '2018-01-18 17:24:16'),
(65, 49, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 18:07:48', '2017-07-19 18:07:48'),
(66, 50, 0, 630, 210, 0, 0, 0, 73.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 18:13:47', '2018-01-18 17:23:49'),
(67, 51, 0, 420, 140, 0, 0, 0, 84, 28, 4536, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 18:15:16', '2018-05-03 13:40:43'),
(68, 52, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 18:17:10', '2018-01-18 17:23:49'),
(69, 64, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 18:18:04', '2018-01-18 17:23:52'),
(70, 65, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-19 18:18:49', '2017-07-19 18:18:49'),
(71, 66, 0, 15120, 5040, 0, 0, 0, 3181.5, 1064, 5019, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 18:20:26', '2018-05-03 13:40:44'),
(72, 67, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 18:21:19', '2017-07-19 18:21:19'),
(73, 77, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 18:21:58', '2017-07-19 18:21:58'),
(74, 78, 0, 3150, 1050, 0, 0, 0, 756, 252, 4851, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-19 18:22:44', '2018-05-03 13:40:44'),
(75, 79, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 18:26:38', '2018-01-18 17:23:55'),
(76, 84, 0, 630, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-19 18:27:33', '2017-11-03 17:33:20'),
(77, 85, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 7560, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 18:28:29', '2018-05-03 13:40:44'),
(78, 86, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-19 18:29:00', '2017-07-19 18:29:00'),
(79, 87, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 7560, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 18:31:35', '2018-05-03 13:40:44'),
(80, 88, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-19 18:32:23', '2018-01-18 17:24:13'),
(81, 96, 0, 15120, 5040, 0, 0, 0, 3349.5, 1134, 43344, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:00:53', '2018-05-03 13:40:47'),
(82, 97, 0, 3150, 1050, 0, 0, 0, 955.5, 336, 2520, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-20 12:07:25', '2018-05-03 13:40:47'),
(83, 98, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:09:58', '2017-07-20 12:09:58'),
(84, 99, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:10:37', '2018-01-18 17:23:59'),
(85, 100, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:11:37', '2018-01-18 17:24:16'),
(86, 101, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:12:15', '2018-01-18 17:24:16'),
(87, 102, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:13:05', '2018-01-18 17:24:17'),
(88, 103, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:14:39', '2018-01-18 17:24:17'),
(89, 104, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:17:43', '2018-01-18 17:24:17'),
(90, 105, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:19:13', '2017-07-20 12:19:13'),
(91, 106, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:19:52', '2018-01-18 17:23:57'),
(92, 107, 0, 3150, 1050, 0, 0, 0, 630, 210, 4536, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-20 12:20:33', '2018-05-03 13:40:46'),
(93, 108, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:21:40', '2018-01-18 17:23:57'),
(94, 109, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:22:24', '2017-07-20 12:22:24'),
(95, 110, 0, 15120, 5040, 0, 0, 0, 3181.5, 1064, 1995, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:23:13', '2018-05-03 13:40:47'),
(96, 111, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:24:10', '2017-07-20 12:24:10'),
(97, 112, 0, 3150, 1050, 0, 0, 0, 756, 252, 315, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-20 12:25:17', '2018-05-03 13:40:47'),
(98, 113, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:26:03', '2018-01-18 17:23:58'),
(99, 114, 0, 630, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:26:49', '2017-11-03 17:33:29'),
(100, 115, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:27:47', '2017-07-20 12:27:47'),
(101, 116, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:28:33', '2018-01-18 17:24:00'),
(102, 117, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:29:20', '2017-07-20 12:29:20'),
(103, 118, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:29:58', '2017-07-20 12:29:58'),
(104, 119, 0, 420, 140, 0, 0, 0, 378, 140, 26628, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 12:31:36', '2018-05-03 13:40:49'),
(105, 120, 0, 420, 140, 0, 0, 0, 378, 154, 714, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 12:32:46', '2018-05-03 13:40:50'),
(106, 121, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 12:35:44', '2017-07-20 12:35:44'),
(107, 122, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:36:26', '2018-01-18 17:24:02'),
(108, 123, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:37:19', '2018-01-18 17:24:19'),
(109, 124, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:38:34', '2018-01-18 17:24:19'),
(110, 125, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:39:18', '2018-01-18 17:24:19'),
(111, 126, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 12:41:42', '2017-07-20 12:41:42'),
(112, 127, 0, 630, 210, 0, 0, 0, 73.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 12:42:51', '2018-01-18 17:24:03'),
(113, 128, 0, 420, 140, 0, 0, 0, 84, 28, 4536, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 12:45:32', '2018-05-03 13:40:49'),
(114, 129, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:47:36', '2018-01-18 17:24:03'),
(115, 130, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 12:49:47', '2018-01-18 17:24:03'),
(116, 131, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 12:50:30', '2017-07-20 12:50:30'),
(117, 132, 0, 15120, 5040, 0, 0, 0, 3181.5, 1064, 5019, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 12:52:57', '2018-05-03 13:40:51'),
(118, 133, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 13:07:27', '2017-07-20 13:07:27'),
(119, 134, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 13:08:23', '2017-07-20 13:08:23'),
(120, 135, 0, 3150, 1050, 0, 0, 0, 756, 252, 4851, 0, 0, 0, 0, 0, 1050, 3150, 1, 0, '2017-07-20 13:09:11', '2018-05-03 13:40:51'),
(121, 136, 0, 630, 210, 0, 0, 0, 10.5, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 13:10:03', '2018-01-18 17:24:04'),
(122, 137, 0, 630, 210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210, 630, 1, 0, '2017-07-20 13:11:01', '2017-11-03 17:33:43'),
(123, 138, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 7560, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 13:12:01', '2018-05-03 13:40:51'),
(124, 139, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 210, 1, 0, '2017-07-20 13:14:01', '2017-07-20 13:14:01'),
(125, 140, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 7560, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 13:14:48', '2018-05-03 13:40:51'),
(126, 141, 0, 15120, 5040, 0, 0, 0, 3024, 1008, 0, 0, 0, 0, 0, 0, 5040, 15120, 1, 0, '2017-07-20 13:15:38', '2018-01-18 17:24:21'),
(127, 43, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:30:12', '2017-07-20 13:30:12'),
(128, 44, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:31:38', '2018-01-18 17:23:47'),
(129, 45, 0, 420, 140, 0, 0, 0, 84, 28, 42, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:32:39', '2018-05-03 13:40:52'),
(130, 46, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:33:43', '2018-01-18 17:23:47'),
(131, 47, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:34:59', '2017-07-20 13:34:59'),
(132, 59, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:36:38', '2018-01-18 17:23:51'),
(133, 60, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:37:14', '2017-07-20 13:37:14'),
(134, 61, 0, 420, 140, 0, 0, 0, 210, 84, 252, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:37:54', '2018-05-03 13:40:53'),
(135, 62, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:38:28', '2017-07-20 13:38:28'),
(136, 73, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:40:31', '2017-07-20 13:40:31'),
(137, 74, 0, 420, 140, 0, 0, 0, 178.5, 70, 126, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:41:16', '2018-05-03 13:40:53'),
(138, 75, 0, 630, 210, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:42:08', '2018-01-18 17:23:54'),
(139, 82, 0, 630, 210, 0, 0, 0, 31.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:43:57', '2018-01-18 17:23:53'),
(140, 83, 0, 210, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, '2017-07-20 13:44:40', '2017-07-20 13:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_histories`
--

CREATE TABLE `wallet_histories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `p_wallet` double NOT NULL,
  `rmvp` double NOT NULL,
  `pv` int(11) NOT NULL,
  `rmvp_first_purchased` double NOT NULL,
  `pv_first_purchased` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_histories`
--

INSERT INTO `wallet_histories` (`id`, `user_id`, `rank_id`, `p_wallet`, `rmvp`, `pv`, `rmvp_first_purchased`, `pv_first_purchased`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 0, 1470, 490, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(2, 3, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(3, 4, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(4, 14, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(5, 15, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(6, 16, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(7, 36, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(8, 53, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(9, 68, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(10, 5, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(11, 17, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(12, 18, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(13, 19, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(14, 20, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(15, 37, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(16, 38, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(17, 39, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(18, 40, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(19, 41, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(20, 54, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(21, 55, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(22, 56, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(23, 57, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(24, 69, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(25, 70, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(26, 71, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(27, 80, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(28, 81, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(29, 6, 2, 0, 3890, 1250, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(30, 7, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(31, 8, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(32, 21, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(33, 22, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(34, 23, 4, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(35, 42, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(36, 58, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(37, 72, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(38, 9, 4, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(39, 24, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(40, 25, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(41, 26, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(42, 27, 4, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(43, 93, 4, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(44, 89, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(45, 90, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(46, 91, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(47, 92, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(48, 10, 3, 0, 5205, 1670, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(49, 11, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(50, 12, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(51, 28, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(52, 29, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(53, 30, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(54, 31, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(55, 48, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(56, 63, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(57, 76, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(58, 13, 4, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(59, 32, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(60, 33, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(61, 34, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(62, 35, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(63, 94, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(64, 95, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(65, 49, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(66, 50, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(67, 51, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(68, 52, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(69, 64, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(70, 65, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(71, 66, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(72, 67, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(73, 77, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(74, 78, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(75, 79, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(76, 84, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(77, 85, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(78, 86, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(79, 87, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(80, 88, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(81, 96, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(82, 97, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(83, 98, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(84, 99, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(85, 100, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(86, 101, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(87, 102, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(88, 103, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(89, 104, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(90, 105, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(91, 106, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(92, 107, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(93, 108, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(94, 109, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(95, 110, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(96, 111, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(97, 112, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(98, 113, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(99, 114, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(100, 115, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(101, 116, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(102, 117, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(103, 118, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(104, 119, 4, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(105, 120, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(106, 121, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(107, 122, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(108, 123, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(109, 124, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(110, 125, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(111, 126, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(112, 127, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(113, 128, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(114, 129, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(115, 130, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(116, 131, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(117, 132, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(118, 133, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(119, 134, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(120, 135, 3, 0, 3150, 1050, 3150, 1050, 1, 2018, '2018-02-05', '2018-02-05'),
(121, 136, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(122, 137, 2, 0, 630, 210, 630, 210, 1, 2018, '2018-02-05', '2018-02-05'),
(123, 138, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(124, 139, 1, 0, 210, 70, 210, 70, 1, 2018, '2018-02-05', '2018-02-05'),
(125, 140, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(126, 141, 4, 0, 15120, 5040, 15120, 5040, 1, 2018, '2018-02-05', '2018-02-05'),
(127, 43, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(128, 44, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(129, 45, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(130, 46, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(131, 47, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(132, 59, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(133, 60, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(134, 61, 4, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(135, 62, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(136, 73, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(137, 74, 3, 0, 420, 140, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(138, 75, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(139, 82, 2, 0, 630, 210, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(140, 83, 1, 0, 210, 70, 0, 0, 1, 2018, '2018-02-05', '2018-02-05'),
(141, 2, 2, 0, 1470, 490, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(142, 3, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(143, 4, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(144, 14, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(145, 15, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(146, 16, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(147, 36, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(148, 53, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(149, 68, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(150, 5, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(151, 17, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(152, 18, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(153, 19, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(154, 20, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(155, 37, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(156, 38, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(157, 39, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(158, 40, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(159, 41, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(160, 54, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(161, 55, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(162, 56, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(163, 57, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(164, 69, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(165, 70, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(166, 71, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(167, 80, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(168, 81, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(169, 6, 2, 0, 3890, 1250, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(170, 7, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(171, 8, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(172, 21, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(173, 22, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(174, 23, 4, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(175, 42, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(176, 58, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(177, 72, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(178, 9, 4, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(179, 24, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(180, 25, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(181, 26, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(182, 27, 4, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(183, 93, 4, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(184, 89, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(185, 90, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(186, 91, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(187, 92, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(188, 10, 3, 0, 5205, 1670, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(189, 11, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(190, 12, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(191, 28, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(192, 29, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(193, 30, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(194, 31, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(195, 48, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(196, 63, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(197, 76, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(198, 13, 4, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(199, 32, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(200, 33, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(201, 34, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(202, 35, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(203, 94, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(204, 95, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(205, 49, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(206, 50, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(207, 51, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(208, 52, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(209, 64, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(210, 65, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(211, 66, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(212, 67, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(213, 77, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(214, 78, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(215, 79, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(216, 84, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(217, 85, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(218, 86, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(219, 87, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(220, 88, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(221, 96, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(222, 97, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(223, 98, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(224, 99, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(225, 100, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(226, 101, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(227, 102, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(228, 103, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(229, 104, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(230, 105, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(231, 106, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(232, 107, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(233, 108, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(234, 109, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(235, 110, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(236, 111, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(237, 112, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(238, 113, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(239, 114, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(240, 115, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(241, 116, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(242, 117, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(243, 118, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(244, 119, 4, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(245, 120, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(246, 121, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(247, 122, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(248, 123, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(249, 124, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(250, 125, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(251, 126, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(252, 127, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(253, 128, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(254, 129, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(255, 130, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(256, 131, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(257, 132, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(258, 133, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(259, 134, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(260, 135, 3, 0, 3150, 1050, 3150, 1050, 2, 2018, '2018-03-05', '2018-03-05'),
(261, 136, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(262, 137, 2, 0, 630, 210, 630, 210, 2, 2018, '2018-03-05', '2018-03-05'),
(263, 138, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(264, 139, 1, 0, 210, 70, 210, 70, 2, 2018, '2018-03-05', '2018-03-05'),
(265, 140, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(266, 141, 4, 0, 15120, 5040, 15120, 5040, 2, 2018, '2018-03-05', '2018-03-05'),
(267, 43, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(268, 44, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(269, 45, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(270, 46, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(271, 47, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(272, 59, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(273, 60, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(274, 61, 4, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(275, 62, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(276, 73, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(277, 74, 3, 0, 420, 140, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(278, 75, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(279, 82, 2, 0, 630, 210, 0, 0, 2, 2018, '2018-03-05', '2018-03-05'),
(280, 83, 1, 0, 210, 70, 0, 0, 2, 2018, '2018-03-05', '2018-03-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_do`
--
ALTER TABLE `active_do`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `active_sdo`
--
ALTER TABLE `active_sdo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_invoices`
--
ALTER TABLE `agent_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_orders`
--
ALTER TABLE `agent_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_order_items`
--
ALTER TABLE `agent_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_payments`
--
ALTER TABLE `agent_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_sales`
--
ALTER TABLE `agent_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_shipments`
--
ALTER TABLE `agent_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_shipped_items`
--
ALTER TABLE `agent_shipped_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus_types`
--
ALTER TABLE `bonus_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_couriers`
--
ALTER TABLE `config_couriers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courier_courier_code_unique` (`courier_code`);

--
-- Indexes for table `config_delivery_types`
--
ALTER TABLE `config_delivery_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_type_delivery_code_unique` (`delivery_code`);

--
-- Indexes for table `config_productcategories`
--
ALTER TABLE `config_productcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_quantitytypes`
--
ALTER TABLE `config_quantitytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_stockadjustments`
--
ALTER TABLE `config_stockadjustments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_stockadjustment_id_unique` (`id`);

--
-- Indexes for table `config_taxes`
--
ALTER TABLE `config_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_tax_id_unique` (`id`),
  ADD UNIQUE KEY `config_tax_code_unique` (`code`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_firstpurchase`
--
ALTER TABLE `new_firstpurchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_profiles`
--
ALTER TABLE `new_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_users`
--
ALTER TABLE `new_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id_unique` (`id`),
  ADD UNIQUE KEY `product_code_unique` (`code`);

--
-- Indexes for table `products_old`
--
ALTER TABLE `products_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_image_id_unique` (`id`);

--
-- Indexes for table `product_packages`
--
ALTER TABLE `product_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_package_id_unique` (`id`);

--
-- Indexes for table `product_promotions`
--
ALTER TABLE `product_promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_promotion_id_unique` (`id`);

--
-- Indexes for table `product_promotion_gifts`
--
ALTER TABLE `product_promotion_gifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_promotion_gift_id_unique` (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_serial_numbers`
--
ALTER TABLE `product_serial_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sdo_licenses`
--
ALTER TABLE `sdo_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sdo_merits`
--
ALTER TABLE `sdo_merits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipped_items`
--
ALTER TABLE `shipped_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_facebook_accounts`
--
ALTER TABLE `social_facebook_accounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_bonuses`
--
ALTER TABLE `user_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_purchases`
--
ALTER TABLE `user_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_histories`
--
ALTER TABLE `wallet_histories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_do`
--
ALTER TABLE `active_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `active_sdo`
--
ALTER TABLE `active_sdo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `agent_invoices`
--
ALTER TABLE `agent_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `agent_orders`
--
ALTER TABLE `agent_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `agent_order_items`
--
ALTER TABLE `agent_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `agent_payments`
--
ALTER TABLE `agent_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `agent_sales`
--
ALTER TABLE `agent_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agent_shipments`
--
ALTER TABLE `agent_shipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agent_shipped_items`
--
ALTER TABLE `agent_shipped_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=754;

--
-- AUTO_INCREMENT for table `bonus_types`
--
ALTER TABLE `bonus_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config_couriers`
--
ALTER TABLE `config_couriers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_delivery_types`
--
ALTER TABLE `config_delivery_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config_productcategories`
--
ALTER TABLE `config_productcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config_quantitytypes`
--
ALTER TABLE `config_quantitytypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `config_stockadjustments`
--
ALTER TABLE `config_stockadjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `config_taxes`
--
ALTER TABLE `config_taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `new_firstpurchase`
--
ALTER TABLE `new_firstpurchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `new_profiles`
--
ALTER TABLE `new_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `new_users`
--
ALTER TABLE `new_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_old`
--
ALTER TABLE `products_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_packages`
--
ALTER TABLE `product_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_promotions`
--
ALTER TABLE `product_promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_promotion_gifts`
--
ALTER TABLE `product_promotion_gifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_serial_numbers`
--
ALTER TABLE `product_serial_numbers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sdo_licenses`
--
ALTER TABLE `sdo_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sdo_merits`
--
ALTER TABLE `sdo_merits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipped_items`
--
ALTER TABLE `shipped_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2555;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `user_bonuses`
--
ALTER TABLE `user_bonuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `user_purchases`
--
ALTER TABLE `user_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `wallet_histories`
--
ALTER TABLE `wallet_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
