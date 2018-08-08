-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2018 at 11:48 
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrz3c_test`
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
(1, 2, '4', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2018-08-06', '2018-08-06');

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
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `applicable_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_id` int(11) NOT NULL,
  `address_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poscode` int(11) NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminder_flag` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `applicable_type`, `applicable_id`, `address_code`, `name`, `street1`, `street2`, `poscode`, `city`, `state`, `country`, `reminder_flag`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 2, '', NULL, 'asdsadasd', '', 12312321, 'asdasd', 'asdasd', 'MALAYSIA', 'x', 1, NULL, '2018-08-06 07:00:06', '2018-08-06 07:00:07');

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
(1, 'superadmin', 'superadmin@mail.com', '0179650866', '$2y$10$MoMHY11UVIf/3JF4tW.MquWlK0mBrz7cqVx6jBVuE1riGcJ1NUr1W', '$2y$10$MoMHY11UVIf/3JF4tW.MquWlK0mBrz7cqVx6jBVuE1riGcJ1NUr1W', 'DSnTQQtvpyosfNdlnKB5LM4AtysRMFde7R3hwS5oesz6uxnTlCnOG8zPBIIP', 28, '2017-09-06 19:49:15', '2018-08-06 07:00:07');

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
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `agent_address`
--

CREATE TABLE `agent_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poscode` int(11) NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminder_flag` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agent_invoices`
--

CREATE TABLE `agent_invoices` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delivery_cost` int(11) NOT NULL,
  `total` float NOT NULL,
  `status` varchar(50) NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_orders`
--

CREATE TABLE `agent_orders` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `do_no` int(11) NOT NULL,
  `total_items` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `order_from` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_order_hdr`
--

CREATE TABLE `agent_order_hdr` (
  `order_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` int(11) NOT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_items` int(11) NOT NULL,
  `gst` int(11) NOT NULL,
  `shipping_fee` decimal(8,2) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `delivery_type` int(11) NOT NULL,
  `purchase_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_address` int(11) NOT NULL,
  `ship_address` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agent_order_items`
--

CREATE TABLE `agent_order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_typ` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agent_order_items_old`
--

CREATE TABLE `agent_order_items_old` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `serial_no` text,
  `qty` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agent_payments`
--

CREATE TABLE `agent_payments` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `cash` float NOT NULL,
  `voucher` int(11) NOT NULL,
  `coupon` int(11) DEFAULT NULL,
  `ewallet` int(11) DEFAULT NULL,
  `credit_debit_card` int(11) DEFAULT NULL,
  `online` int(11) DEFAULT NULL,
  `payment_type` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_by` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_created` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Maybank Berhad', 'MBB', 'Local', 'Malaysia', '2018-01-26', '2018-06-07'),
(2, 'Maybank Berhad', 'MBB', 'Local', 'Indonesia', '2018-01-29', '2018-01-29'),
(3, 'HSBC', 'HSBC', 'Foreign', 'China', '2018-01-29', '2018-01-29'),
(4, 'cdsds', 'cdsb', 'Foreign', 'Malaysia', '2018-06-06', '2018-06-06');

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
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `courier_consignment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_items`
--

CREATE TABLE `delivery_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `barcode` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_type`
--

CREATE TABLE `delivery_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_description` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1000001, 2, 10, 508.2, 'Fully Paid', 0, '2018-08-06', '2018-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_06_102644_create_admin_table', 1),
(4, '2018_06_25_143518_create_referrals_table', 2),
(5, '2018_06_27_192336_create_stocks', 3),
(6, '2018_06_27_200306_alter_suppliers_table_1', 4),
(7, '2018_07_01_101623_create_orders_transection_table', 4),
(8, '2018_07_01_160503_create_stock_items_table', 4),
(9, '2018_07_01_171025_create_stock_adjustments_table', 4),
(10, '2018_07_01_171058_create_stock_adjustment_items', 4),
(11, '2018_07_02_175806_create_delivery_type_table', 4),
(12, '2018_07_03_133555_create_address_table', 4),
(13, '2018_07_03_144055_alter_add_reminder_flag_table_address', 4),
(14, '2018_07_05_140157_create_agent_order_hdr_table', 4),
(15, '2018_07_05_140537_create_customer_order_hdr_table', 4),
(16, '2018_07_05_140629_create_agent_order_items_table', 5),
(17, '2018_07_05_140726_create_customer_order_items_table', 5),
(18, '2018_07_07_145153_alter_order_type_order_transection_table', 6),
(19, '2018_07_13_042609_create_menus_table', 6),
(20, '2018_07_13_045219_create_menus_table', 7),
(21, '2018_07_09_145622_create_agent_address_table', 8),
(22, '2018_07_09_165517_alter_table_name', 8),
(23, '2018_07_11_155410_create_sessions_table', 8),
(24, '2018_07_15_133649_alter_add_mall_type_orders_transection', 8),
(25, '2018_07_18_121930_create_audit_trail_table', 9),
(26, '2018_07_18_135939_create_deliveries', 9),
(27, '2018_07_18_140115_create_delivery_items', 9),
(28, '2018_07_26_074028_create_active_do_table', 10),
(29, '2018_07_26_074028_create_active_sdo_table', 10),
(30, '2018_07_26_074028_create_address_table', 10),
(31, '2018_07_26_074028_create_admin_role_table', 10),
(32, '2018_07_26_074028_create_admins_table', 10),
(33, '2018_07_26_074028_create_agent_address_table', 10),
(34, '2018_07_26_074028_create_agent_invoices_table', 10),
(35, '2018_07_26_074028_create_agent_order_hdr_table', 10),
(36, '2018_07_26_074028_create_agent_order_items_table', 10),
(37, '2018_07_26_074028_create_agent_order_items_old_table', 10),
(38, '2018_07_26_074028_create_agent_orders_table', 10),
(39, '2018_07_26_074028_create_agent_payments_table', 10),
(40, '2018_07_26_074028_create_audit_trail_table', 10),
(41, '2018_07_26_074028_create_banks_table', 10),
(42, '2018_07_26_074028_create_bonus_types_table', 10),
(43, '2018_07_26_074028_create_bonuses_table', 10),
(44, '2018_07_26_074028_create_config_delivery_types_table', 10),
(45, '2018_07_26_074028_create_config_productcategories_table', 10),
(46, '2018_07_26_074028_create_config_quantitytypes_table', 10),
(47, '2018_07_26_074028_create_config_taxes_table', 10),
(48, '2018_07_26_074028_create_deliveries_table', 10),
(49, '2018_07_26_074028_create_delivery_items_table', 10),
(50, '2018_07_26_074028_create_delivery_type_table', 10),
(51, '2018_07_26_074028_create_invoices_table', 10),
(52, '2018_07_26_074028_create_menus_table', 10),
(53, '2018_07_26_074028_create_new_firstpurchase_table', 10),
(54, '2018_07_26_074028_create_new_profiles_table', 10),
(55, '2018_07_26_074028_create_new_users_table', 10),
(56, '2018_07_26_074028_create_orders_table', 10),
(57, '2018_07_26_074028_create_orders_hdr_table', 10),
(58, '2018_07_26_074028_create_orders_item_table', 10),
(59, '2018_07_26_074028_create_orders_transection_table', 10),
(60, '2018_07_26_074028_create_packages_table', 10),
(61, '2018_07_26_074028_create_password_resets_table', 10),
(62, '2018_07_26_074028_create_payments_table', 10),
(63, '2018_07_26_074028_create_product_images_table', 10),
(64, '2018_07_26_074028_create_product_packages_table', 10),
(65, '2018_07_26_074028_create_product_promotion_gifts_table', 10),
(66, '2018_07_26_074028_create_product_promotions_table', 10),
(67, '2018_07_26_074028_create_product_sales_table', 10),
(68, '2018_07_26_074028_create_products_table', 10),
(69, '2018_07_26_074028_create_products_old_table', 10),
(70, '2018_07_26_074028_create_profiles_table', 10),
(71, '2018_07_26_074028_create_ranks_table', 10),
(72, '2018_07_26_074028_create_referrals_table', 10),
(73, '2018_07_26_074028_create_roles_table', 10),
(74, '2018_07_26_074028_create_sales_table', 10),
(75, '2018_07_26_074028_create_sessions_table', 10),
(76, '2018_07_26_074028_create_shipments_table', 10),
(77, '2018_07_26_074028_create_shipped_items_table', 10),
(78, '2018_07_26_074028_create_stock_adjustment_items_table', 10),
(79, '2018_07_26_074028_create_stock_adjustments_table', 10),
(80, '2018_07_26_074028_create_stock_items_table', 10),
(81, '2018_07_26_074028_create_stocks_table', 10),
(82, '2018_07_26_074028_create_stores_table', 10),
(83, '2018_07_26_074028_create_suppliers_table', 10),
(84, '2018_07_26_074028_create_user_bonuses_table', 10),
(85, '2018_07_26_074028_create_user_purchases_table', 10),
(86, '2018_07_26_074028_create_users_table', 10),
(87, '2018_07_26_074028_create_wallets_table', 10);

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
  `contact_no2` varchar(14) DEFAULT NULL,
  `beneficiary_name` varchar(150) DEFAULT NULL,
  `relationship` varchar(30) DEFAULT NULL,
  `beneficiary_address` text,
  `beneficiary_mobile_no` varchar(14) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `orders_hdr`
--

CREATE TABLE `orders_hdr` (
  `id` int(11) NOT NULL,
  `order_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_items` int(11) NOT NULL,
  `gst` int(11) NOT NULL,
  `shipping_fee` decimal(8,2) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `delivery_type` int(11) NOT NULL,
  `purchase_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_address` int(11) NOT NULL,
  `ship_address` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_hdr`
--

INSERT INTO `orders_hdr` (`id`, `order_no`, `agent_id`, `invoice_id`, `invoice_no`, `total_items`, `gst`, `shipping_fee`, `total_price`, `delivery_type`, `purchase_date`, `status`, `bill_address`, `ship_address`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '100000000', 2, 1, '', 2, 0, '0.00', '0.00', 0, '', '1', 0, 0, NULL, NULL, '2018-08-06 07:00:07', '2018-08-06 07:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_hdr_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `order_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `do_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_typ` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`id`, `order_hdr_id`, `invoice_id`, `order_no`, `do_no`, `product_id`, `product_qty`, `product_typ`, `product_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '', '', 1, 2, '', '', NULL, NULL, '2018-08-06 07:00:08', '2018-08-06 07:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `orders_transection`
--

CREATE TABLE `orders_transection` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mall_type` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `cash` float NOT NULL DEFAULT '0',
  `voucher` int(11) NOT NULL DEFAULT '0',
  `coupon` int(11) NOT NULL DEFAULT '0',
  `ewallet` int(11) NOT NULL DEFAULT '0',
  `credit_debit_card` int(11) NOT NULL DEFAULT '0',
  `online` int(11) NOT NULL DEFAULT '0',
  `payment_type` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `amount`, `cash`, `voucher`, `coupon`, `ewallet`, `credit_debit_card`, `online`, `payment_type`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 508.2, 0, 0, 0, 0, 0, 'Cash', 'Fully Paid', '2018-08-06', '2018-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL COMMENT '1: by item, 2: package 3: monthly promotion',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `type`, `code`, `name`, `description`, `qtytype_id`, `year`, `month`, `category`, `price_wm`, `price_em`, `price_staff`, `last_purchase`, `point`, `weight`, `notforsale`, `status`, `quantity_min`, `quantity`, `remarks`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 1, 'FL001', 'Femlov', '', 2, 2018, 7, 2, 210.00, 217.00, 0.00, 0.00, 70, 107.00, 0, 1, 0, 0, '', 2, '2018-07-22 16:11:35', '2018-07-23 16:03:15', 2),
(2, 1, 'RSL07', 'Right Solution', '', 2, 1900, 0, 2, 252.00, 260.00, 0.00, 0.00, 85, 21.00, 0, 1, 0, 0, '', 2, '2018-07-22 16:23:39', '2018-07-22 16:23:39', 2),
(3, 2, 'PAC001', 'Femlov & Right Solution', 'hahhahaa', 2, 2017, 7, 2, 420.00, 450.00, 0.00, 0.00, 120, 0.00, 0, 1, 0, 0, '', 2, '2018-07-22 17:07:46', '2018-07-22 17:07:46', 2),
(4, 1, 'PM005', 'Plus Minus', 'Bhaihaqi Test Description', 1, 2012, 2, 2, 284.00, 292.00, 250.00, 200.00, 85, 0.00, 0, 1, 0, 0, '', 2, '2018-07-22 17:33:30', '2018-07-25 15:58:46', 2),
(5, 1, 'A0006', 'Arteristic', '', 2, 1900, 0, 1, 210.00, 217.00, 0.00, 190.00, 70, 12.00, 0, 1, 0, 0, '', 2, '2018-07-22 21:08:52', '2018-07-22 21:08:52', 2),
(6, 1, 'M0002', 'H2 Zeta Micron', '', 1, 2016, 0, 2, 245.00, 252.00, 0.00, 0.00, 82, 72.00, 0, 1, 0, 0, '', 2, '2018-07-22 21:11:29', '2018-07-23 16:02:57', 2),
(7, 2, 'PAC002', 'PAC Zeta 6x', '', 2, 1900, 0, 1, 600.00, 620.00, 560.00, 0.00, 500, 0.00, 0, 1, 0, 0, '', 2, '2018-07-22 21:19:08', '2018-07-22 21:19:08', 2),
(8, 1, 'LEAF001', 'Leaflet Femlov', '', 2, 1900, 0, 3, 1.00, 1.00, 1.00, 0.00, 5, 0.00, 1, 1, 0, 0, '', 2, '2018-07-22 21:26:17', '2018-07-22 21:26:17', 2),
(9, 1, 'HB003', 'H2 Zeta Mist Spray (150ml)', '', 1, 2018, 7, 1, 217.00, 224.00, 0.00, 0.00, 78, 202.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:08:35', '2018-07-23 16:08:35', 2),
(10, 1, 'HS004', 'H2 Zeta Mist Spray (65ml)', '', 1, 2018, 7, 1, 101.00, 107.00, 0.00, 0.00, 36, 97.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:11:08', '2018-07-23 16:11:08', 2),
(11, 1, 'FME09', 'Fixes Mini Essential', '', 1, 2018, 7, 1, 366.00, 373.00, 0.00, 0.00, 124, 0.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:32:47', '2018-07-23 16:32:47', 2),
(12, 1, 'FC010', 'FIXES Combo', '', 2, 2018, 7, 1, 942.00, 949.00, 0.00, 0.00, 320, 816.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:33:58', '2018-07-23 16:33:58', 2),
(13, 1, 'FP011', 'FIXES - Pure I', '', 1, 2018, 7, 1, 121.00, 127.00, 0.00, 0.00, 41, 165.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:35:19', '2018-07-23 16:35:19', 2),
(14, 1, 'FF012', 'FIXES - Flawless II', '', 1, 2018, 7, 1, 347.00, 354.00, 0.00, 0.00, 118, 58.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:36:54', '2018-07-23 16:36:54', 2),
(15, 1, 'FS013', 'FIXES - Surface III', '', 1, 2018, 7, 1, 272.00, 278.00, 0.00, 0.00, 92, 60.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:38:12', '2018-07-23 16:38:12', 2),
(16, 1, 'FN014', 'FIXES - Nourish IV', '', 1, 2018, 7, 1, 319.00, 325.00, 0.00, 0.00, 108, 71.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:39:18', '2018-07-23 16:39:18', 2),
(17, 1, 'FC015', 'FIXES - Clarity', '', 1, 2018, 7, 1, 158.00, 165.00, 0.00, 0.00, 54, 198.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:40:31', '2018-07-23 16:40:31', 2),
(18, 1, 'FCV16', 'FIXES - Cover', '', 1, 2018, 7, 1, 215.00, 222.00, 0.00, 0.00, 73, 58.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:41:33', '2018-07-23 16:41:33', 2),
(19, 1, 'SM008', 'Water Source Hydrating Sleeping Mask', '', 1, 2018, 7, 1, 187.00, 194.00, 0.00, 0.00, 0, 224.00, 0, 1, 0, 0, '', 2, '2018-07-23 16:42:42', '2018-07-23 16:42:42', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `type`, `description`, `file_name`, `path`, `status`, `created_by`, `created_at`, `updated_at`, `updated_by`) VALUES
(1, 1, 'image/jpeg', 'Chrysanthemum', 'Chrysanthemum.jpg', 'product_image/1/20180722161205_Chrysanthemum.jpg', 0, 2, '2018-07-22 16:12:05', '2018-07-23 14:48:11', 2),
(2, 1, 'image/jpeg', 'Hydrangeas', 'Hydrangeas.jpg', 'product_image/1/20180722161230_Hydrangeas.jpg', 0, 2, '2018-07-22 16:12:30', '2018-07-23 14:48:11', 2),
(3, 2, 'image/jpeg', 'index', 'index.jpeg', 'product_image/2/20180722162740_index.jpeg', 1, 2, '2018-07-22 16:27:40', '2018-07-22 16:27:40', 2),
(4, 4, 'image/jpeg', 'Beautiful Flower', 'index.jpeg', 'product_image/4/20180722173403_index.jpeg', 0, 2, '2018-07-22 17:34:03', '2018-07-22 21:13:02', 2),
(5, 5, 'image/jpeg', 'images', 'images.jpeg', 'product_image/5/20180722210901_images.jpeg', 1, 2, '2018-07-22 21:09:01', '2018-07-22 21:09:01', 2),
(6, 6, 'image/jpeg', 'h2zeta', 'h2zeta.jpeg', 'product_image/6/20180722211139_h2zeta.jpeg', 1, 2, '2018-07-22 21:11:39', '2018-07-22 21:11:39', 2),
(7, 4, 'image/jpeg', 'PlusMinus', 'PlusMinus.jpeg', 'product_image/4/20180722211258_PlusMinus.jpeg', 1, 2, '2018-07-22 21:12:58', '2018-07-22 21:13:02', 2),
(8, 7, 'image/jpeg', 'Penguins', 'Penguins.jpg', 'product_image/7/20180722211944_Penguins.jpg', 0, 2, '2018-07-22 21:19:44', '2018-07-22 21:45:24', 2),
(9, 8, 'image/jpeg', 'Jellyfish', 'Jellyfish.jpg', 'product_image/8/20180722212732_Jellyfish.jpg', 1, 2, '2018-07-22 21:27:32', '2018-07-22 21:27:32', 2),
(10, 7, 'image/jpeg', 'h2zeta', 'h2zeta.jpeg', 'product_image/7/20180722214519_h2zeta.jpeg', 1, 2, '2018-07-22 21:45:19', '2018-07-22 21:45:24', 2),
(11, 1, 'image/png', 'fem_love', 'fem_love.png', 'product_image/1/20180723144801_fem_love.png', 1, 2, '2018-07-23 14:48:01', '2018-07-23 14:48:11', 2),
(12, 14, 'image/png', 'Flawless_', 'Flawless_.png', 'product_image/14/20180723163700_Flawless_.png', 1, 2, '2018-07-23 16:37:00', '2018-07-23 16:37:00', 2),
(13, 15, 'image/png', 'Fixes_Surface', 'Fixes_Surface.png', 'product_image/15/20180723163823_Fixes_Surface.png', 1, 2, '2018-07-23 16:38:23', '2018-07-23 16:38:23', 2),
(14, 16, 'image/png', 'Fixes_Nourish_01', 'Fixes_Nourish_01.png', 'product_image/16/20180723163925_Fixes_Nourish_01.png', 1, 2, '2018-07-23 16:39:25', '2018-07-23 16:39:25', 2),
(15, 17, 'image/png', 'Fixes_Clarity', 'Fixes_Clarity.png', 'product_image/17/20180723164044_Fixes_Clarity.png', 1, 2, '2018-07-23 16:40:44', '2018-07-23 16:40:44', 2),
(16, 18, 'image/png', 'cover', 'cover.png', 'product_image/18/20180723164146_cover.png', 1, 2, '2018-07-23 16:41:46', '2018-07-23 16:41:46', 2);

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
(1, 1, 2, 420, 8, 2018, '2018-08-06', '2018-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `profileable_id` int(11) NOT NULL,
  `profileable_type` varchar(100) NOT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `marital_status` enum('Single','Married','Widowed') NOT NULL,
  `id_type` enum('MyKad','Passport') NOT NULL,
  `id_no` varchar(30) NOT NULL,
  `id_pic` varchar(255) DEFAULT NULL,
  `status_ic` enum('Pending','Not Valid','Approved') NOT NULL,
  `street` varchar(255) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_no` varchar(14) DEFAULT NULL,
  `contact_no2` varchar(14) DEFAULT NULL,
  `beneficiary_name` varchar(150) DEFAULT NULL,
  `relationship` varchar(30) NOT NULL DEFAULT '',
  `beneficiary_address` text,
  `beneficiary_mobile_no` varchar(14) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `profileable_id`, `profileable_type`, `full_name`, `dob`, `gender`, `marital_status`, `id_type`, `id_no`, `id_pic`, `status_ic`, `street`, `postcode`, `city`, `state`, `country`, `contact_no`, `contact_no2`, `beneficiary_name`, `relationship`, `beneficiary_address`, `beneficiary_mobile_no`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Admin', 'Administrator', '0000-00-00', 'Male', 'Single', 'MyKad', '111111111111', '', 'Pending', '1111111111', '11111111', '111111', '1111111', 'Malaysia', '11111111111111', '11111111111111', '', '', '', '', '2017-05-02 10:02:08', '2017-05-02 10:02:08'),
(2, 2, 'App\\User', NULL, '2014-08-04', 'Male', 'Single', 'MyKad', '123123', '/opt/lampp/temp/phpqoE2Fw', 'Pending', 'asdsadasd', '12312321', 'asdasd', 'asdasd', 'MALAYSIA', NULL, NULL, NULL, '', NULL, '', '2018-08-06 15:00:06', '2018-08-06 15:00:06');

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
  `depth` int(11) DEFAULT NULL,
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
(1, NULL, 1, 2, 0, 2, 'user1', 'DO', '2018-08-06', '2018-08-06');

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
  `re_total_sale` float DEFAULT NULL,
  `total_pv` int(11) NOT NULL,
  `re_total_pv` int(11) DEFAULT NULL,
  `total_profit` float NOT NULL DEFAULT '0',
  `do_cto_val_unit` float NOT NULL DEFAULT '0',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `year`, `month`, `total_sale`, `re_total_sale`, `total_pv`, `re_total_pv`, `total_profit`, `do_cto_val_unit`, `created_at`, `updated_at`) VALUES
(1, 2018, 8, 508.2, NULL, 140, NULL, 0, 0, '2018-08-06', '2018-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_date` date NOT NULL,
  `stock_in_no` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `updated_by` int(11) DEFAULT NULL COMMENT 'User ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

CREATE TABLE `stock_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `stockadjustment_type_id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustment_items`
--

CREATE TABLE `stock_adjustment_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock_adjustment_id` int(11) NOT NULL,
  `stock_item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_items`
--

CREATE TABLE `stock_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `barcode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
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
(2, 2, 1, 'Product: Femlov', NULL, 210, 70, 'Stocking', 'unlock', '2018-08-06 15:00:08', '2018-08-06 15:00:08'),
(3, 2, 1, 'Product: Femlov', NULL, 210, 70, 'Stocking', 'unlock', '2018-08-06 15:00:08', '2018-08-06 15:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplier_code` varchar(10) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `street` varchar(255) NOT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `postcode` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `telephone_no` varchar(16) NOT NULL,
  `fax_no` varchar(16) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `attn_no` varchar(16) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_code`, `company_name`, `street`, `street2`, `postcode`, `city`, `state`, `country`, `telephone_no`, `fax_no`, `email`, `updated_by`, `created_by`, `attn_no`, `created_at`, `updated_at`) VALUES
(1, '', 'ABC SDN BHD', 'asdasdas', NULL, 2147483647, 'asdasd', 'asdasdas', 'Malaysia', '123123', '123123', 'admin@abc.com', NULL, NULL, NULL, '2016-10-28 09:30:12', '2016-10-28 09:30:12');

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
(2, 'user1', 'user1@mail.com', '$2y$10$vr59nX4ONIoqeN9ZEaEImOTfHJNEEZkJkxdA8qurL7/1d7mthZW/.', '$2y$10$OHM6MxDa/i80j/876U5GRu0YibsSXz9T7nrhCV2jdvpJLnDjwjH0W', '0179876786', NULL, 'superadmin', 0, 4, '2018-08-06 07:00:06', '2018-08-06 07:00:06', 0, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `user_purchases`
--

CREATE TABLE `user_purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `serial_no` varchar(30) DEFAULT NULL,
  `price` float NOT NULL,
  `pv` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, 2, 0, 0, 140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 1, 0, '2018-08-06 15:00:07', '2018-08-06 15:00:07');

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
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `agent_address`
--
ALTER TABLE `agent_address`
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
-- Indexes for table `agent_order_hdr`
--
ALTER TABLE `agent_order_hdr`
  ADD PRIMARY KEY (`order_no`);

--
-- Indexes for table `agent_order_items`
--
ALTER TABLE `agent_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_order_items_old`
--
ALTER TABLE `agent_order_items_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_payments`
--
ALTER TABLE `agent_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
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
-- Indexes for table `config_taxes`
--
ALTER TABLE `config_taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_tax_id_unique` (`id`),
  ADD UNIQUE KEY `config_tax_code_unique` (`code`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_items`
--
ALTER TABLE `delivery_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_type`
--
ALTER TABLE `delivery_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_index` (`parent_id`),
  ADD KEY `menus_lft_index` (`lft`),
  ADD KEY `menus_rgt_index` (`rgt`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_hdr`
--
ALTER TABLE `orders_hdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_transection`
--
ALTER TABLE `orders_transection`
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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

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
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stocks_stock_in_no_unique` (`stock_in_no`);

--
-- Indexes for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_adjustment_items`
--
ALTER TABLE `stock_adjustment_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_items`
--
ALTER TABLE `stock_items`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_supplier_code_unique` (`supplier_code`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_do`
--
ALTER TABLE `active_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `active_sdo`
--
ALTER TABLE `active_sdo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `agent_address`
--
ALTER TABLE `agent_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agent_invoices`
--
ALTER TABLE `agent_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agent_orders`
--
ALTER TABLE `agent_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agent_order_items`
--
ALTER TABLE `agent_order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agent_order_items_old`
--
ALTER TABLE `agent_order_items_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `agent_payments`
--
ALTER TABLE `agent_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bonus_types`
--
ALTER TABLE `bonus_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivery_items`
--
ALTER TABLE `delivery_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivery_type`
--
ALTER TABLE `delivery_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `new_firstpurchase`
--
ALTER TABLE `new_firstpurchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `new_profiles`
--
ALTER TABLE `new_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `new_users`
--
ALTER TABLE `new_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_hdr`
--
ALTER TABLE `orders_hdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders_item`
--
ALTER TABLE `orders_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders_transection`
--
ALTER TABLE `orders_transection`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `products_old`
--
ALTER TABLE `products_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipped_items`
--
ALTER TABLE `shipped_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_adjustment_items`
--
ALTER TABLE `stock_adjustment_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock_items`
--
ALTER TABLE `stock_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_bonuses`
--
ALTER TABLE `user_bonuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_purchases`
--
ALTER TABLE `user_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
