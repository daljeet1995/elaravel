-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2018 at 01:47 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

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
(1, '2018_12_05_094328_create_tbl_admin_table', 1),
(2, '2018_12_06_055753_create_tbl_category_table', 2),
(3, '2018_12_07_132100_create_manufacture_table', 3),
(4, '2018_12_10_110540_create_tbl_products_table', 4),
(5, '2018_12_12_081715_create_tbl_slider_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'Mens Product', 1, NULL, NULL),
(2, 'Women', 'Women Products<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>', 1, NULL, NULL),
(3, 'Child', 'Child Product', 1, NULL, NULL),
(4, 'Electronics', 'Electronics Product<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>', 1, NULL, NULL),
(5, 'Others', 'Others Products', 1, NULL, NULL),
(6, 'Sports', 'Sports Products', 1, NULL, NULL),
(7, 'Laptops', 'Laptops Products', 1, NULL, NULL),
(8, 'Cloths', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cloths Product</span></font>', 1, NULL, NULL),
(9, 'Furniture', 'Furniture', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Daljeet', '1111111Daljeetfwfffs', 1, NULL, NULL),
(4, 'Chillor rose', 'womens brand', 1, NULL, NULL),
(5, 'Apple', 'apple brand are so good', 1, NULL, NULL),
(6, 'otobi', 'otobi furniture', 1, NULL, NULL),
(7, 'Samsung', 'this is samsung brand', 1, NULL, NULL),
(8, 'Intex', 'Intex', 1, NULL, NULL),
(9, 'postman', 'Postman', 1, NULL, NULL),
(10, 'Other', 'This is other Project', 1, NULL, NULL),
(11, 'Shirts', 'This is Shirt Product', 1, NULL, NULL),
(12, 'Suits', 'THis is ladies Suits<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>', 1, NULL, NULL),
(13, 'Wood Table', 'Wood Table', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 8', 4, 5, 'This is Apple Phone', 'This is Another Apple phone', '60,000', 'image/VEtfxR0gILvmIGScc2Lr.jpg', '4.8\' inc', 'red,blue,black', 1, NULL, NULL),
(2, 'Shirts', 1, 11, 'This is Shirts Product', 'This is another Product', '450', 'image/ZC7x0ybDX415uKDLJHWB.jpg', 'XXL', 'Brown', 1, NULL, NULL),
(3, 'Mens', 1, 11, 'This is Shirts', 'Anothe Shirts', '550', 'image/dBEIMRPrFCfmeX5XLIOA.jpg', 'XL', 'Green', 1, NULL, NULL),
(5, 'Ladies', 2, 12, 'This is Ladies Suits', 'This is Another Ladies Suits', '1000', 'image/XD7WQefVsyLFLSZJAMXL.jpg', 'Medium', 'Red', 1, NULL, NULL),
(6, 'shirts', 1, 11, 'Mens Shirts', 'Mens Shirts', '850', 'image/e6PUstMH1iH7UwCAi6W6.jpg', 'Double XXL', 'Grey', 1, NULL, NULL),
(7, 'Polo', 1, 11, 'Polo shirts', 'Polo shirts', '760', 'image/KsfDkCbGX4D6oIa2i3fp.jpg', 'XXL', 'Orange', 1, NULL, NULL),
(8, 'Table', 9, 13, 'Beautifull Wooden Table', 'Beautifull Wooden Table', '5000', 'image/QmGdPLuQVfFGmCHQ64Zt.jpg', '400\'inc', 'Brown, red', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'slider/FGuJDawMWwJ64pmDbUHv.png', '0', NULL, NULL),
(5, 'slider/9AFnRLmlAC3CPhH2LxHr.jpg', '0', NULL, NULL),
(7, 'slider/iO7MhJVxwJMx0yptImnG.jpg', '1', NULL, NULL),
(8, 'slider/hfJUpUbt5bhaMejm9YP9.jpg', '1', NULL, NULL),
(9, 'slider/JM2EvtaKmA6sHpusYwqq.jpg', '1', NULL, NULL),
(10, 'slider/39JHkVlmcHUqMok2GpzI.jpg', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
