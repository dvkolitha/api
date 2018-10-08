-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2018 at 10:22 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.5-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--
CREATE DATABASE IF NOT EXISTS `assignment` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `assignment`;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `year`, `created_at`, `updated_at`) VALUES
(2, 'Bio', 2009, '2018-06-04 04:53:45', '2018-06-04 13:04:33'),
(3, 'Cultural', 2010, '2018-06-04 13:03:23', '2018-06-04 13:03:23'),
(4, 'A1', 2010, '2018-06-04 17:33:59', '2018-06-04 17:33:59'),
(5, 'class 8', 2010, '2018-06-04 17:49:18', '2018-06-04 17:53:57'),
(6, 'class 8', 2015, '2018-06-04 17:49:43', '2018-06-04 17:54:03');

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
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2018_05_31_110824_create_students_table', 1),
(21, '2018_05_31_110919_create_parents_table', 1),
(23, '2018_05_31_145826_parent_student', 1),
(24, '2018_06_04_053458_create_photos_table', 2),
(25, '2018_06_04_091549_create_classes_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `name`, `dob`, `gender`, `created_at`, `updated_at`) VALUES
(2, 'Nilame', '1970-01-06', 'male', '2018-06-04 05:04:57', '2018-06-04 05:04:57'),
(3, 'Daya', '2018-06-06', 'female', '2018-06-04 05:06:26', '2018-06-04 05:06:26'),
(4, 'seetha', '2018-06-06', 'female', '2018-06-04 06:58:26', '2018-06-04 06:58:26'),
(5, 'Liyo fernando', '1956-06-05', 'male', '2018-06-05 09:21:12', '2018-06-05 09:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `parents_student`
--

CREATE TABLE `parents_student` (
  `parents_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents_student`
--

INSERT INTO `parents_student` (`parents_id`, `student_id`) VALUES
(2, 8),
(3, 8),
(2, 9),
(4, 10),
(2, 11),
(4, 12),
(5, 12);

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '6.gif', 0, '2018-06-04 00:11:44', '2018-06-04 00:11:44'),
(2, 'travel-3099553_1920.jpg', 0, '2018-06-04 13:24:39', '2018-06-04 13:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class_id`, `dob`, `city`, `created_at`, `updated_at`) VALUES
(8, 'Kolitha Gunawardhana Nilame', 2, '2018-06-03', 'Balangoda', '2018-06-04 06:05:32', '2018-06-04 06:05:32'),
(9, 'kesha', 3, '1988-06-21', 'Balangoda', '2018-06-04 17:30:46', '2018-06-04 17:30:46'),
(11, 'sampath', 5, '2018-06-19', 'Balangoda', '2018-06-04 17:54:37', '2018-06-04 17:54:37'),
(12, 'Trilan', 2, '1988-06-21', 'Balangoda', '2018-06-05 09:21:50', '2018-06-05 09:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic_number` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logged` tinyint(1) NOT NULL DEFAULT '0',
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `photo_id`, `address`, `nic_number`, `email`, `password`, `logged`, `isAdmin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kolitha', 'Gunawardhana', 'Nilame', 1, 'sdsd', 901631644, 'dvkolitha@gmail.com', '$2y$10$eeZ6ffa2acyaPB0pSUVUcesUoNFtbIjscVSgma1D7Zl.OYSiEaYf.', 0, 1, 'gM9EAyfFdpZ0uO72IBcrMf19hvi33z5vWP4CWpGmwVsctaBUcWWsc4VNVE2D', '2018-06-04 00:11:44', '2018-06-04 00:11:44'),
(2, 'Rajitha', 'Gunawardhana', 'Nilame', 2, 'asas', 901631646, 'dvrajitha@gmail.com', '$2y$10$BdM5aHm6OvzeILInjzA2F.7NLoUBCl7n8zwt94.Ul/ywsBVZkLHXi', 0, 0, 'MzoRjPpnFVeE1zPRPn3BefTqCS5ywTvNZf5nuoPTI5ryBgxfm8jQbFWtzSvG', '2018-06-04 13:24:40', '2018-06-04 13:24:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `codeIgniter_test`
--
CREATE DATABASE IF NOT EXISTS `codeIgniter_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `codeIgniter_test`;
--
-- Database: `eco_lanka`
--
CREATE DATABASE IF NOT EXISTS `eco_lanka` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eco_lanka`;

-- --------------------------------------------------------

--
-- Table structure for table `ccts`
--

CREATE TABLE `ccts` (
  `id` int(10) UNSIGNED NOT NULL,
  `cct` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `contact_number`, `email`, `created_at`, `updated_at`) VALUES
(2, 'Lasiya', 'No:45a,\r\nKadawatha,\r\nMahara', 445784512, 'lasitha@gmail.com', '2018-10-04 11:31:31', '2018-10-04 20:50:38'),
(4, 'Perera', 'No:45/5,\r\ncolombo 10', 1587996213, 'nimesh@gmail.com', '2018-10-04 18:23:33', '2018-10-04 18:23:33'),
(5, 'nihal', 'no:45', 1234567891, 'dvkolitha@gmail.com', '2018-10-04 21:09:53', '2018-10-04 21:09:53'),
(6, 'nisa', 'no:45', 1234567895, 'channa@gmail.com', '2018-10-04 21:11:02', '2018-10-04 21:11:02'),
(7, 'Mr. Saman Perera', 'NO. 45, Udawatte Rd, Kandy.', 778956874, 'mas@wena.lk', '2018-10-05 04:34:43', '2018-10-05 04:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `d_e_ftypes`
--

CREATE TABLE `d_e_ftypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `def` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fcolors`
--

CREATE TABLE `fcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `fcolor` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_photos`
--

CREATE TABLE `gallery_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2018_10_04_102444_create_customers_table', 2),
(12, '2018_10_05_025224_create_products_table', 3),
(13, '2018_10_05_073649_create_watts_table', 3),
(14, '2018_10_05_074038_create_voltages_table', 3),
(15, '2018_10_05_074138_create_ccts_table', 3),
(16, '2018_10_05_074245_create_d_e_ftypes_table', 3),
(17, '2018_10_05_074339_create_fcolors_table', 3),
(18, '2018_10_05_074513_create_gallery_photos_table', 3);

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `water_proof` tinyint(1) NOT NULL DEFAULT '0',
  `image_id` int(11) NOT NULL,
  `max_photos` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voltages`
--

CREATE TABLE `voltages` (
  `id` int(10) UNSIGNED NOT NULL,
  `voltage` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watts`
--

CREATE TABLE `watts` (
  `id` int(10) UNSIGNED NOT NULL,
  `watt` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watts`
--

INSERT INTO `watts` (`id`, `watt`, `created_at`, `updated_at`) VALUES
(1, 22, '2018-10-05 05:22:07', '2018-10-05 05:33:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ccts`
--
ALTER TABLE `ccts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_contact_number_unique` (`contact_number`);

--
-- Indexes for table `d_e_ftypes`
--
ALTER TABLE `d_e_ftypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcolors`
--
ALTER TABLE `fcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `voltages`
--
ALTER TABLE `voltages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watts`
--
ALTER TABLE `watts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ccts`
--
ALTER TABLE `ccts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `d_e_ftypes`
--
ALTER TABLE `d_e_ftypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fcolors`
--
ALTER TABLE `fcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_photos`
--
ALTER TABLE `gallery_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voltages`
--
ALTER TABLE `voltages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watts`
--
ALTER TABLE `watts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `kolithaTest`
--
CREATE DATABASE IF NOT EXISTS `kolithaTest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kolithaTest`;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
--
-- Database: `laravel_api_ecommerce`
--
CREATE DATABASE IF NOT EXISTS `laravel_api_ecommerce` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_api_ecommerce`;

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_10_06_124624_create_products_table', 1),
(8, '2018_10_06_124812_create_reviews_table', 1);

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'vel', 'Doloremque minima ea impedit assumenda. Est facere animi et quam praesentium laboriosam. Consequatur eum temporibus quasi quaerat cumque at.', 765, 3, 30, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(2, 'dignissimos', 'Nihil accusantium id itaque et expedita voluptas minima. Ea quo soluta ut eum. Et ex id sequi et.', 968, 8, 29, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(3, 'illum', 'Tempore necessitatibus voluptas eius accusamus sunt quia. Dicta reprehenderit magnam alias. Laborum dolor architecto architecto unde corporis magnam commodi. Sunt reprehenderit placeat deleniti.', 600, 8, 2, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(4, 'sit', 'Tenetur atque voluptatem qui. Fuga nam quo ut delectus et sunt. Odit id repellendus qui qui qui. Ex reprehenderit et nisi et dolores quam nostrum.', 468, 3, 19, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(5, 'qui', 'Voluptatum nisi necessitatibus excepturi autem assumenda praesentium aperiam. Delectus qui et aut quisquam. Nostrum veniam quisquam consectetur necessitatibus in perferendis repellat.', 593, 3, 28, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(6, 'nobis', 'Unde harum omnis eum eveniet exercitationem sit. Et corrupti eos qui et sit tempore consequuntur nisi. Placeat non expedita enim corporis quae eius quam aut. Dolorem assumenda rerum aliquid quidem.', 110, 0, 11, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(7, 'esse', 'Nobis est omnis beatae ut optio dolor nemo. Voluptatem soluta veritatis libero culpa reprehenderit quibusdam. Quia consequatur qui quod commodi eaque perspiciatis saepe.', 306, 3, 14, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(8, 'et', 'Non quia autem reiciendis et. Magni fugit et molestias doloremque et. Eveniet et quia iure odit non.', 446, 9, 28, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(9, 'est', 'Quia velit quo eligendi sunt recusandae pariatur iure. Nam iure voluptatem impedit omnis nemo praesentium. Et rerum omnis quia dolor alias velit delectus.', 173, 1, 3, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(10, 'ea', 'Soluta totam delectus exercitationem. Totam aperiam voluptatum aperiam nulla. Ea voluptas quae velit et.', 600, 6, 7, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(11, 'aspernatur', 'A molestiae provident cum dolores minima non. Officiis vitae officia neque enim est quam ut.', 976, 3, 29, '2018-10-08 09:14:46', '2018-10-08 09:14:46'),
(12, 'non', 'Tenetur quaerat vel et non quis qui porro. Eveniet alias ea reprehenderit dolor atque quia ratione. Dicta molestiae tempore et eos.', 888, 7, 8, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(13, 'a', 'Nihil molestiae consectetur fugit totam assumenda maiores. Dignissimos rerum neque suscipit cumque nobis. Aut occaecati dolor ut illum.', 913, 5, 23, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(14, 'reiciendis', 'Consequatur numquam a in ea qui. Enim minima autem autem sit eveniet mollitia. Aut voluptate dolorum id ea tempore. Labore nesciunt illum est adipisci praesentium doloremque natus.', 266, 7, 17, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(15, 'sit', 'Neque fuga neque est unde doloremque. Non ex amet quas voluptatibus maiores. Sed sed non non sed voluptatem quos. Iste quam sunt earum qui.', 682, 1, 10, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(16, 'quo', 'Quae vel aliquid dignissimos recusandae accusantium qui. Minus illum sit accusamus ipsa cumque eum voluptates. Voluptatem velit aliquid sit laboriosam et. Quaerat culpa molestiae sed nesciunt adipisci optio perspiciatis.', 278, 9, 5, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(17, 'doloribus', 'Et magnam maiores maxime in placeat reprehenderit sint quo. Illo nemo ea inventore velit molestias assumenda iusto.', 691, 3, 26, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(18, 'rerum', 'Minus beatae dolor odio aut eveniet excepturi. Expedita doloribus cum neque omnis distinctio unde et. Est quia consequatur sit omnis doloremque perspiciatis est. Quasi consequuntur sed dolor.', 340, 8, 18, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(19, 'beatae', 'Nisi dolore consequatur rem. Dolor voluptas ullam praesentium non aut.', 790, 5, 22, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(20, 'fugiat', 'Et praesentium hic voluptas dolorum maiores. Ducimus labore ut cum. Aut voluptate earum accusamus ex eius sunt at. Reiciendis voluptatibus quo labore dolores est quos.', 756, 9, 16, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(21, 'est', 'Architecto voluptates est perferendis quia aut. Facere vitae est qui ad perferendis quis. Necessitatibus occaecati consequuntur repellendus qui.', 513, 6, 4, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(22, 'similique', 'Hic esse fugiat rerum sit laborum id et. Sed odit dolor dolores vel. Nihil culpa necessitatibus sit modi at voluptas.', 155, 4, 20, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(23, 'dolor', 'Quia quia sequi laborum repellat vel. A esse mollitia velit quasi. Culpa quae labore vel laboriosam. Sequi ut voluptatem similique et.', 937, 7, 29, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(24, 'voluptatibus', 'Aspernatur et asperiores ex et dolorem reprehenderit nisi error. Excepturi cumque sed hic. Iste nulla officiis et iste repellat earum quos est. Nemo similique illum quaerat aliquid voluptatibus rerum.', 879, 1, 18, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(25, 'saepe', 'Consequatur dolores quis voluptas atque sapiente. Et vel laboriosam nisi minus eos sint. Asperiores ut maiores numquam vitae ut animi magni. Expedita eos tempore maiores vero deleniti. Consequatur quis ea saepe aut autem aliquam expedita.', 533, 8, 6, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(26, 'iusto', 'Blanditiis molestias aut aut ratione. Corporis qui atque nihil illo explicabo quo ea. Voluptatem aliquam qui enim sint. Placeat omnis et tempora quasi qui atque eveniet tempora.', 287, 1, 15, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(27, 'quas', 'Sapiente qui corporis quidem et reprehenderit placeat eius. Error ullam qui quibusdam inventore accusantium. Vero aperiam recusandae eum dolore animi aut. Sunt eius laborum consequatur et.', 508, 7, 8, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(28, 'maiores', 'Unde occaecati dolorem sit quis. Velit quis cupiditate rerum voluptatum. Accusamus omnis sequi mollitia rerum. Officiis deleniti et ut et.', 241, 0, 19, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(29, 'magnam', 'Et quis ea facere ut. Sit minus omnis ullam accusantium quaerat quo est possimus. Id quam perferendis commodi velit consequatur consequatur labore ipsum.', 556, 3, 23, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(30, 'minima', 'Quam quo explicabo tempore est. Et ab nisi qui qui molestiae aspernatur.', 551, 2, 12, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(31, 'qui', 'Et odio atque recusandae inventore. Tempore et enim quis doloribus facere sed. Ut doloremque sunt tempora excepturi. Impedit iure officia aut. Consequatur sunt reiciendis itaque officia eligendi non.', 434, 7, 20, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(32, 'ad', 'Laboriosam tempora eligendi eius. At saepe nesciunt omnis architecto. Dolor voluptatem eius laboriosam vero rerum suscipit sapiente.', 322, 0, 8, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(33, 'harum', 'Perspiciatis quos dolores ipsum distinctio. Delectus quidem omnis quos pariatur ut. Labore modi corporis sit soluta. In quia dolor eaque ut distinctio delectus.', 324, 0, 30, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(34, 'ipsum', 'Officiis mollitia quas aut repudiandae voluptatum qui. Nobis harum omnis enim vero voluptatum doloribus aspernatur. Dolor iste dolorem quia qui vitae tenetur at.', 615, 9, 29, '2018-10-08 09:14:47', '2018-10-08 09:14:47'),
(35, 'quibusdam', 'Quia voluptates laborum nostrum omnis voluptas molestiae et. Sapiente et totam ducimus praesentium dolor beatae. Cumque ut magnam voluptates in.', 451, 9, 7, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(36, 'voluptate', 'Optio ab dicta aspernatur dolorem voluptates. Veniam expedita vero nemo tempore minus veniam eum.', 186, 0, 22, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(37, 'et', 'Vitae voluptatum ab et voluptas necessitatibus ad quo et. Omnis dolore ipsa sunt architecto eos est sequi. Nihil rerum placeat sint iusto voluptatem hic laboriosam. Tempora est possimus libero sit.', 976, 2, 6, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(38, 'et', 'Saepe et ut in iure in veritatis. Aliquam eum dolorem sed et culpa et. Qui fuga eum molestiae aut architecto dolor. Necessitatibus unde fugit ea et. Dolor aspernatur ea maiores eos architecto nam quibusdam.', 450, 1, 3, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(39, 'quam', 'Eos fugiat aspernatur dolor fugiat maxime atque sunt. Ducimus eligendi quos nostrum rerum et ut. Ea quam incidunt ipsum voluptatem omnis et aut. Iste numquam aperiam qui in.', 412, 7, 22, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(40, 'blanditiis', 'Voluptatem doloremque qui rerum sunt laudantium quo. Perferendis dolor ducimus nulla est doloribus quaerat. Numquam expedita alias amet rerum. Dolor dolorem pariatur eaque dolor aut exercitationem et. Nostrum quia rem est expedita est eveniet quia.', 561, 2, 2, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(41, 'quia', 'Deleniti nemo ad quod sit. Officiis velit deleniti qui deserunt rem delectus. Totam deserunt cupiditate dolores.', 421, 9, 2, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(42, 'reiciendis', 'Recusandae ducimus sequi reiciendis ab et. Voluptas eos suscipit sint non molestias odit. Deleniti iste fugiat tenetur non dicta iure assumenda.', 475, 0, 28, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(43, 'enim', 'Et laudantium ut repudiandae. Quis beatae dolores voluptate voluptatem sit voluptate quia. Ad dolorem non voluptatem placeat enim voluptatibus et.', 230, 3, 6, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(44, 'asperiores', 'Quos maxime velit excepturi aliquid. Nemo aut voluptas et sint sit qui in.', 764, 6, 6, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(45, 'dolorem', 'Molestiae hic sit vel. Soluta et qui repudiandae. Voluptates possimus est quod expedita facilis consequatur. Dolore officiis et qui fugiat eaque.', 393, 0, 13, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(46, 'alias', 'Accusantium minus autem in. Corporis quo qui dignissimos possimus sint aut.', 262, 9, 18, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(47, 'perferendis', 'Ab voluptatem facilis odio odit nisi. Culpa exercitationem quam voluptas voluptate. Error esse qui rerum est. Inventore autem reiciendis autem qui quam.', 590, 1, 16, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(48, 'eum', 'Provident esse non et unde dicta iure. Numquam id odio aut dolorem. Illo ad ex earum neque. Delectus eos quibusdam qui hic.', 726, 1, 13, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(49, 'eum', 'Explicabo inventore sint quia. Quo cumque harum est aut modi optio iure. Similique voluptatum sit dolorum ut ullam a nobis.', 427, 1, 18, '2018-10-08 09:14:48', '2018-10-08 09:14:48'),
(50, 'eligendi', 'Id et qui consequatur et. Eaque voluptatem vero adipisci aperiam neque. Atque et ipsa cumque et.', 865, 6, 2, '2018-10-08 09:14:48', '2018-10-08 09:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 23, 'Beau Harber PhD', 'Consequuntur dolore eum tenetur quis sed nesciunt cupiditate. Earum facere molestiae dolorem amet quod sed et. Quae qui sint esse voluptatem recusandae. Cumque facilis voluptas quia odit.', 3, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(2, 45, 'Delia DuBuque', 'Explicabo aut voluptates blanditiis minima rerum dolorem. Ut non quo sed eos. Omnis est dolorem laboriosam facilis. Est distinctio et est voluptatem possimus illum distinctio.', 4, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(3, 34, 'Dr. Mckenzie Emard', 'Ut voluptas consequuntur voluptates velit qui. Tempora cumque id vel cumque. Id eos animi quia sit. Nobis quo libero sint animi in.', 1, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(4, 34, 'Mrs. Yolanda Quitzon I', 'Temporibus maxime aut dolor fugiat dolor laborum optio. Deleniti amet sed quas sit sequi et sed in. Quo qui magni assumenda repellendus.', 3, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(5, 37, 'Mariam Botsford DDS', 'Distinctio nulla recusandae porro repellendus nihil. Qui est ut eos iste eos est ut ut. Quidem praesentium animi sint nisi alias.', 1, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(6, 40, 'Erin Flatley', 'Sint placeat est id quia. Soluta eos quia blanditiis porro nihil. Quae sapiente veniam architecto nihil nihil quibusdam quia.', 0, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(7, 11, 'Alexandrine Witting III', 'Porro assumenda quae sint iste. Aut sint sunt porro libero non. Aperiam quibusdam necessitatibus quasi nobis nemo.', 4, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(8, 8, 'Mrs. Roslyn Jacobson PhD', 'Voluptate amet et et nihil. Ipsam at ducimus explicabo perspiciatis accusamus dolore nostrum asperiores. Omnis maiores quas explicabo cum quo et atque.', 3, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(9, 9, 'Dr. Louisa Runolfsson PhD', 'Et consequuntur itaque debitis reiciendis itaque consequatur porro quae. Et possimus hic ratione velit omnis qui rerum magnam. Architecto qui vitae quis ut. Quisquam quae quia et eos sit minima.', 0, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(10, 1, 'Ashlynn Labadie', 'Dignissimos sit natus rem quam dolorum et. Incidunt et fugit sit fugit error animi omnis. Iste est nobis aut porro voluptatem tempora nostrum. Molestiae vero dolorem fugit quia beatae ut.', 2, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(11, 32, 'Mrs. Katelyn Hermiston', 'Pariatur vitae rem vero laudantium omnis et quam. Quaerat eius corrupti nihil qui. Deserunt nihil provident cumque et autem.', 2, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(12, 39, 'Antonina Dicki', 'Asperiores et expedita consectetur sunt. Cumque animi facere consequatur natus cum. Accusamus consectetur magni sit repellat fugit. Nihil nostrum blanditiis beatae ipsum qui.', 5, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(13, 29, 'Erna Kirlin', 'Enim optio cumque facere accusantium optio ullam saepe hic. Quaerat ipsa aut nulla nemo illum quos at. Unde explicabo reprehenderit explicabo corrupti explicabo.', 0, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(14, 47, 'Elisabeth Thompson II', 'Nemo et fugit id impedit amet magnam quam at. Vel molestias velit nulla excepturi tempore excepturi voluptatem. Aut earum numquam aperiam tenetur commodi fuga.', 5, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(15, 19, 'Prof. Javon Rowe', 'Aut quia sed accusamus aut natus non praesentium. Quia ullam sit neque natus explicabo impedit eos. Earum nulla omnis ea cum et. Esse impedit soluta voluptatem enim aut cupiditate.', 2, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(16, 14, 'Rosario Lehner', 'Quidem soluta inventore vero dolores dignissimos doloribus exercitationem. Saepe similique sequi ad aut. Dolorem repellat dolorem molestias in nam facilis.', 3, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(17, 30, 'Jacques Sawayn', 'Molestiae veniam non dolorem fuga et minus molestiae molestias. Eos rerum culpa adipisci ut. Quia quis ad dignissimos alias rerum error fugiat.', 2, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(18, 5, 'Mrs. Kimberly Kuphal DVM', 'Nisi possimus et voluptatibus quisquam. Repellat rerum quas soluta ut itaque quis provident debitis. Magni repellendus exercitationem minus quaerat laborum. Et quam voluptate nostrum et tempore.', 0, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(19, 13, 'Mrs. Elmira Tromp I', 'Suscipit nemo doloremque nihil vitae hic. Ut cum quia amet tempora recusandae neque aut. Ab nihil ad sapiente officia sit eum amet.', 2, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(20, 12, 'Yadira Upton', 'Veniam enim et et aut inventore aut. Omnis molestiae mollitia et ut et aut. Quia pariatur laborum saepe corporis dolorum et sit. Eaque libero maxime a voluptatum.', 2, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(21, 27, 'Ms. Stephany Quigley Jr.', 'Cupiditate esse fugit qui aut omnis eos ipsum asperiores. Animi et sint illum ut necessitatibus. Voluptatem voluptatem repellat temporibus quae esse sit fugit.', 5, '2018-10-08 09:14:49', '2018-10-08 09:14:49'),
(22, 38, 'Uriel Schamberger', 'Amet eos nihil deleniti molestiae eum. Animi quod numquam velit eum consequatur culpa. Harum sunt dolorum aut vitae. Autem maxime accusamus ad quaerat culpa.', 2, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(23, 2, 'Mrs. Shaniya Bogisich', 'Aut non officiis soluta quia reiciendis esse. Magnam culpa minus mollitia in recusandae harum. Sequi vel non dolor nam.', 4, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(24, 16, 'Krystina Rempel', 'Esse nihil et quam animi et molestias. Quisquam voluptas non nobis velit dolore et rerum. Id debitis hic vel expedita quas harum consequatur.', 3, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(25, 34, 'Alaina Block', 'Sint aperiam vel rerum accusantium sit est. Nesciunt quod doloribus alias facilis similique. Enim est officia ipsa est voluptates deleniti.', 3, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(26, 25, 'Alexzander Muller', 'Nihil rem porro in laudantium. Unde et et explicabo aut asperiores doloribus. Dolor magni rerum pariatur quis vel. Velit rerum ipsam repudiandae nisi hic magnam nostrum.', 3, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(27, 42, 'Prof. Ismael Weber I', 'Cum architecto aut sit voluptatibus et voluptatem ad. Tempora dolorum qui necessitatibus dolorem enim velit. Consequatur consequatur voluptatem cum maxime iste aspernatur.', 1, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(28, 20, 'Mrs. Selina Bruen', 'Reprehenderit cum dolor quisquam quis illo voluptas modi atque. Voluptatem mollitia dolor minima. Quaerat sint velit eos est ab. Et accusantium qui nulla ipsam.', 1, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(29, 19, 'Tara Koch', 'Nihil dolores voluptates est consectetur. Beatae qui consequatur qui aut placeat et reprehenderit.', 4, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(30, 20, 'Jodie Walsh', 'Laborum fugit temporibus rerum saepe. Quia harum et soluta. Est voluptatibus magnam quia eos aut. Qui et autem quia aut at sed.', 3, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(31, 34, 'Larissa Lehner', 'Corporis omnis enim sed maxime laudantium. Corporis corrupti officia voluptatem voluptatem ut. Dolore consequatur id quae alias.', 1, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(32, 13, 'Veronica Luettgen', 'Fuga cum temporibus qui possimus blanditiis incidunt. Quia exercitationem aliquid sunt. Et facere excepturi expedita dolore. Illo et eos quam nam non et.', 0, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(33, 42, 'Prof. Mackenzie Schulist I', 'Suscipit et aut sit nobis sit consequatur. Et totam magni fugit laborum odio eos.', 2, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(34, 26, 'Shawna Koepp III', 'Totam error ut dolor harum. Praesentium laudantium veritatis qui est enim. Autem culpa tenetur nisi facere velit tempora inventore. Voluptatem aut dolorem repellat eum.', 0, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(35, 50, 'Mr. Rodrick Hoeger', 'Ut saepe rerum sed minima aut pariatur. Cum voluptas delectus eligendi ex qui quis autem. Placeat ut dolor voluptates aut.', 2, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(36, 47, 'Maximilian Borer I', 'Totam nihil consectetur qui est quo cumque nihil aliquid. Animi et facere amet deserunt. Aut ullam debitis repellendus aliquam est consectetur. Et officia beatae deserunt quidem dolorem.', 5, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(37, 3, 'Lottie Baumbach Jr.', 'Sapiente fugit eos quam laudantium. Delectus quo quasi veritatis. Omnis quia voluptatem sed et rerum quisquam est.', 5, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(38, 7, 'Chris Grady IV', 'Inventore et eum ea nulla deserunt eos. Rerum expedita est et. Dolores in natus sint non molestiae blanditiis quibusdam necessitatibus. Tempora laboriosam pariatur sapiente aut deleniti fugit.', 5, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(39, 47, 'Dr. Jeramy Wiza', 'Voluptatibus ut facere doloremque tempore veniam quis. Asperiores consequuntur facilis voluptatum id. Culpa consequatur voluptas qui debitis occaecati aut expedita. Tempora totam ut ut consequatur.', 0, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(40, 30, 'Ed Hane', 'Molestias excepturi voluptatibus dicta iusto provident aut. Vel labore et quaerat. Quasi omnis qui sit. Ea asperiores voluptas quia ex id optio quam. Aut accusamus voluptas illo mollitia.', 1, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(41, 27, 'Gussie Brakus', 'Atque dolorum exercitationem consequatur. Ex doloremque saepe temporibus cumque culpa. Animi voluptatibus dolorem veritatis magnam. Dolorem doloribus nulla officia suscipit voluptatibus rem nobis.', 0, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(42, 38, 'Adele Hansen', 'Rem reiciendis at et quo a temporibus explicabo. Totam quis quas quia a recusandae. Voluptatem voluptatum soluta est omnis aut omnis. Dolores officiis quo doloremque earum.', 5, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(43, 41, 'Blanche Gibson MD', 'Maiores repellat qui facere recusandae voluptatem ullam fugit. Libero voluptate quia iusto ut. Possimus molestiae architecto et et aut quidem molestiae.', 2, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(44, 4, 'Ola Gleason', 'Et velit quis facere recusandae. Qui quos nihil fuga repellendus illum. Beatae et similique sed earum ut in aspernatur. Ea ratione mollitia sunt dolores.', 0, '2018-10-08 09:14:50', '2018-10-08 09:14:50'),
(45, 34, 'Ms. Marcelle Rath III', 'Quam totam est doloremque molestiae aut consequuntur. Sed voluptatem et quis vero illo ut. Fugit corporis eius expedita et. Ratione iste praesentium cum. Quis et exercitationem incidunt.', 0, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(46, 35, 'Laney Osinski', 'Quasi vel placeat voluptatem eum sed molestias ipsa. Aspernatur odio dolor et. Debitis et ut impedit architecto dignissimos vel exercitationem.', 0, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(47, 26, 'Wilhelmine Turner DVM', 'Dolor voluptatem voluptate et nesciunt delectus sapiente possimus est. Facere voluptatem non eum dolor. Et libero omnis voluptate ut deleniti.', 2, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(48, 28, 'Dallas Mayert', 'Deserunt quidem et numquam quia. Quia iure harum dignissimos. Consequatur magni rerum aperiam ut ducimus qui corporis. Sed non et commodi ut. Culpa et deleniti aut quia.', 3, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(49, 20, 'Jonathon Doyle', 'Sint repellat culpa in sint ipsa adipisci. Omnis odit cupiditate ratione odio et enim. Nobis quas possimus sint.', 3, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(50, 44, 'Cecelia Satterfield', 'Animi dolores ducimus eveniet est maxime. Quis quae libero fugiat accusamus omnis aut. Voluptatem perferendis impedit sapiente voluptas. Deserunt sint enim maxime porro accusamus quis.', 4, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(51, 30, 'Dr. Gerhard King Sr.', 'Est enim ut et sunt earum sint. Quidem ut voluptatem suscipit ea qui voluptatum. Distinctio inventore ut facilis laboriosam modi. Tempore asperiores modi et saepe aut.', 4, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(52, 37, 'Baby Maggio', 'Saepe tempora nobis magni qui soluta veritatis. Velit minus debitis hic natus. Dolorem temporibus ut doloremque ea iure vel. Quo tenetur repellendus voluptas et eum.', 0, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(53, 11, 'Dorian Donnelly', 'Vitae natus voluptate facilis ipsa labore. Accusamus adipisci eum ducimus sit ad error excepturi voluptas.', 5, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(54, 12, 'Prof. Kelsi Breitenberg Jr.', 'Odio praesentium omnis enim consectetur qui aspernatur. Quia hic minima ut assumenda nisi quidem. Ut iusto dolore odio autem iste nobis.', 4, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(55, 7, 'Solon Dietrich', 'Voluptatem iusto voluptas officiis repellendus. Quisquam eligendi et omnis quod sed. Dolores et non quo natus aliquam facere.', 1, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(56, 21, 'Juanita Moore', 'Autem non necessitatibus illum et accusantium eos. Autem numquam veritatis voluptatum harum. Ipsam aut quis temporibus ut harum. Dolores molestiae recusandae aut sint libero.', 0, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(57, 14, 'Kian Langworth', 'Asperiores assumenda iusto eos qui dolor voluptatem non. Eligendi magni eaque dolores eum. Fugit et molestiae nihil quasi sed ipsa eaque rerum.', 1, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(58, 45, 'Nelda Jacobs V', 'Ut necessitatibus non iure officiis aspernatur. Itaque consequatur nostrum asperiores itaque. Aliquid ab et autem provident tenetur. Minima amet voluptatibus provident repudiandae ullam.', 1, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(59, 34, 'Mr. Hassan Heathcote', 'Eum aut omnis autem totam. Dolorem dolorum impedit voluptatibus veniam ad. Accusantium dicta ut magnam qui. Et a voluptatem inventore possimus animi consequatur necessitatibus.', 2, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(60, 22, 'Imogene Koch', 'Tempora enim doloremque voluptates at. Ea eius nisi aliquid nobis nihil fugit est. Veniam perspiciatis odio dolor. Dolore veritatis quidem accusamus et sunt.', 3, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(61, 20, 'Napoleon Legros', 'Atque dolorem nemo rerum rerum ducimus voluptate non. Nam architecto praesentium iste iusto molestiae quae odit. In sit omnis eligendi ut. Provident cum est architecto voluptas.', 1, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(62, 33, 'Elsa Gusikowski', 'Sit quas qui perferendis ea corrupti aperiam. Ea quia numquam deleniti et voluptatum autem. Quia esse adipisci et. Doloremque aut dolorem repellat consectetur.', 3, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(63, 15, 'Arthur Morar V', 'Voluptatum saepe ex commodi qui tenetur nisi. Eum qui ab autem corporis doloremque autem quas et. Et ipsa dolorem ducimus cum esse rerum saepe. Provident suscipit et quidem voluptas quos maxime.', 1, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(64, 17, 'Prof. Kendall Beier Jr.', 'Hic tenetur porro qui ut. Fuga error ut quia facere voluptatibus odio accusantium. Error doloremque quae dicta officia perspiciatis sunt.', 5, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(65, 2, 'Shayna Hickle III', 'Facilis dolorem consequatur quaerat perspiciatis cupiditate sed voluptatibus. Rerum accusantium voluptate debitis dolores et vel inventore. Iusto ut architecto molestiae aut facere ut.', 2, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(66, 37, 'Wyman Konopelski', 'Et ea praesentium odio et sed. Aliquam ad in odio consequatur. Qui delectus porro et doloribus autem. Nobis atque optio unde.', 4, '2018-10-08 09:14:51', '2018-10-08 09:14:51'),
(67, 50, 'Prof. Junius Smitham IV', 'Corporis aut sed fuga iure maxime. Et asperiores fuga odit quasi. Est officiis ex dolor et. Est accusamus suscipit temporibus incidunt non.', 2, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(68, 34, 'Dr. Leon Hodkiewicz', 'Molestiae placeat ducimus similique repellendus dolore tempora dolore. Illum dolore temporibus debitis. Quia quia esse est a.', 0, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(69, 34, 'Bert Jast', 'Labore commodi atque natus dicta quisquam dolor. Aut quibusdam dignissimos non nihil provident expedita. Nihil iste itaque nihil ipsam recusandae dolores.', 1, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(70, 43, 'Corine O\'Conner', 'Quis quia ducimus sit aliquam autem magni. Corporis et facere earum ut aut eveniet velit. Debitis sed accusantium fuga error eius dicta voluptates.', 4, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(71, 6, 'Constance Herzog IV', 'Similique necessitatibus maxime molestias id eos dolorem. Asperiores saepe accusamus quia. Consequatur cupiditate reprehenderit laudantium est veniam. Soluta esse sit perspiciatis cupiditate sit.', 2, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(72, 18, 'Ava Nienow', 'Et quia et omnis aspernatur. Quaerat illo reprehenderit suscipit voluptas quibusdam cumque eius. Aut doloremque odio aut corporis.', 3, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(73, 3, 'Shanie Stracke', 'Ea illum autem eos magni. Est incidunt est iste quo at ullam aliquid. Tenetur adipisci nostrum odit voluptas neque numquam voluptatem. Saepe corrupti iusto nemo quasi odio non.', 0, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(74, 17, 'Dr. Mathilde Wiegand Sr.', 'Officia quos quis exercitationem qui. Consequatur quo quis quis vel ut aut totam vitae. Dolor occaecati quam quam pariatur error. Quo quibusdam debitis accusamus ut.', 5, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(75, 36, 'Dr. Emiliano Zboncak MD', 'Harum ut quidem mollitia quo praesentium architecto beatae. Nisi harum ut reiciendis qui veniam omnis nesciunt. Qui maiores eius aut nesciunt vero enim.', 3, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(76, 43, 'Mr. Tyler Little', 'Iure minus ipsa voluptates animi. Minus ad voluptatem est nostrum distinctio debitis est. Mollitia sit natus saepe quod dicta nihil. Nihil sint aut non voluptatum voluptas.', 1, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(77, 35, 'Veda Ryan', 'Qui magni velit debitis hic quae. Laudantium est ullam incidunt consequatur expedita distinctio corporis.', 2, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(78, 23, 'Devin Mosciski', 'Iusto ut laboriosam nobis qui dolores laborum. Laboriosam commodi amet a rem. Fugit quam provident eum ratione maxime distinctio quia. Illo nulla itaque laboriosam suscipit repellendus nemo enim.', 3, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(79, 21, 'Prof. Asha Graham IV', 'Minus sunt necessitatibus qui laboriosam. Distinctio nulla et inventore totam et. Est illum excepturi iusto incidunt velit. Omnis cum praesentium quia et. Facere quod iusto modi itaque modi.', 5, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(80, 5, 'Ms. Maddison Parker', 'Cumque rerum at repellat ullam similique illum qui. Voluptatem laudantium id et ratione. Aliquam atque et occaecati quo eos.', 0, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(81, 24, 'Abe Smitham', 'Reprehenderit facere labore eos perspiciatis sint. Tempore tenetur consequatur officiis eum consequatur perferendis. Facere veritatis ipsa sit ullam et a velit perferendis.', 5, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(82, 8, 'Zelma Berge', 'Qui soluta ullam exercitationem ratione. Et et natus architecto autem enim. Omnis quo commodi vero sint vel accusamus velit. Ullam et et culpa animi ut.', 5, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(83, 15, 'Rex Swift', 'Fugiat eos architecto eos. Reiciendis error aut exercitationem labore fugiat accusamus eum. Vitae voluptatum fugiat rerum aut nisi voluptate.', 0, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(84, 15, 'Elisa Schmidt Jr.', 'Cupiditate est vel vel harum maxime. Eius et adipisci sunt laborum placeat perferendis aut. Omnis fugiat sit fuga.', 2, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(85, 25, 'Barbara Weissnat', 'Ad laudantium quis ut ut magnam molestiae. Qui et veniam perferendis vel beatae sunt eius tempore. Et quam sed ipsa aut. Neque asperiores exercitationem illo ut quia.', 0, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(86, 6, 'Ted Schneider', 'Placeat vel eos nesciunt. Est et sit temporibus quisquam pariatur placeat perspiciatis. Facere labore velit eaque est optio voluptas soluta.', 4, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(87, 50, 'Mr. Enrique Schmidt Sr.', 'Ut est id fugiat nihil. Ipsa magnam ex quas aut repellat. Molestiae rerum qui beatae ipsa omnis minima.', 0, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(88, 2, 'Clemmie Conn', 'Corrupti vero iste ut consequatur dicta quibusdam. Autem non rem labore minima. Natus vel esse tenetur aperiam earum deleniti. Qui velit in nemo eveniet et ut.', 0, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(89, 31, 'Rosella Cole I', 'Architecto accusamus perspiciatis ratione architecto consequuntur reprehenderit molestiae voluptatibus. Quas non voluptatum aut ut qui ipsum et. Totam delectus pariatur qui eaque quaerat neque.', 2, '2018-10-08 09:14:52', '2018-10-08 09:14:52'),
(90, 33, 'Philip Herman', 'Ipsa dicta excepturi voluptates nihil vitae fuga amet. Laborum labore ad et perspiciatis cumque. Autem fuga occaecati necessitatibus et. Voluptas et ipsa consequatur esse qui quasi quas.', 4, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(91, 32, 'Dr. Alexandra Schmitt I', 'Aut laborum optio est autem numquam sint aperiam. Porro fuga cumque provident natus. Voluptas perferendis praesentium dicta.', 3, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(92, 5, 'Kobe Dietrich PhD', 'Voluptatem fugit et ut. Alias ut veniam eum. Omnis consequatur eveniet quam maiores corporis illo dolor.', 3, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(93, 26, 'Oma Adams', 'Unde in asperiores ipsum recusandae nesciunt aut assumenda. Aut sed cupiditate voluptatem sed. Veniam odit porro facilis ut consectetur quis sint. Sequi quam suscipit est.', 2, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(94, 10, 'Ronny Pacocha MD', 'Ut voluptas quia ducimus quidem error molestias odit adipisci. Quae qui voluptatum iusto id omnis nihil eum.', 5, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(95, 1, 'Yesenia Ankunding', 'Qui eveniet cupiditate amet ad blanditiis temporibus aperiam. Officia esse nemo sed eos voluptatem dicta nostrum est.', 0, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(96, 12, 'Reuben Bailey', 'Unde in sit eveniet. Rerum aspernatur eius ullam accusamus nihil ab nemo officia. Aut ut totam aut velit dolores.', 5, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(97, 8, 'Jaydon Hettinger Sr.', 'Laudantium qui temporibus expedita consequatur eos. Similique odio alias quia vitae voluptatem nihil sapiente. Maxime autem quod officia quia velit dignissimos.', 1, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(98, 45, 'Kane Crona', 'Dolorum aut ut ea nemo. Dolor quia officiis ex molestiae aut temporibus laudantium. Debitis quia labore ipsa. Blanditiis excepturi amet dolorum.', 1, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(99, 40, 'Yesenia Mueller', 'Consectetur amet sit dicta doloribus ipsam dolorem consectetur ipsam. Aspernatur eaque quaerat ratione. Blanditiis culpa atque asperiores quas assumenda. Nobis provident est ducimus pariatur.', 3, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(100, 25, 'Florence Corwin', 'In deleniti dolores recusandae perspiciatis eveniet. Illo ut illum qui occaecati. Numquam quod autem minima voluptatem dolorem.', 1, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(101, 1, 'Mrs. Marcia Auer', 'Voluptatem tempore repellat aut fuga. Quo optio expedita tempora totam rerum. Dolore labore et velit fuga similique. Facilis aut aut distinctio corporis.', 2, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(102, 45, 'Barton Dibbert', 'Eius est itaque dolorem vel quia consequuntur. Vero qui vero itaque. Dolor sit est molestiae sit et ut voluptatibus ducimus. Provident odit sed corporis sint aliquam.', 5, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(103, 23, 'Aimee Wolf', 'Voluptas perferendis nostrum architecto. Quia omnis numquam nulla est facere. Qui aut harum velit quam. Vitae suscipit eveniet cum omnis quia sed.', 0, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(104, 19, 'Lonnie Kertzmann', 'Id dolores est necessitatibus similique blanditiis consequatur id. Ullam incidunt est accusantium nostrum qui. In voluptatem omnis qui.', 0, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(105, 34, 'Prof. Tara Feest', 'Modi ut est ipsam tempore et rerum explicabo. Quos aliquid culpa accusamus officia et repellat enim. Fuga atque minus velit distinctio placeat. Eos nemo aut est et.', 3, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(106, 22, 'Jessyca Stiedemann', 'Ipsum sint alias nihil nesciunt sint repudiandae. Dolores nostrum amet velit aut.', 4, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(107, 18, 'Alicia Welch', 'A quo aut laudantium consequatur. Voluptatem placeat quos quod ea tempora a quis. Et id sint et eaque eum quisquam consectetur.', 3, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(108, 28, 'Janie Casper', 'Modi aut ut eos neque labore voluptatibus. Sed rerum nam id repellendus. Fugit cupiditate fugiat autem. Est alias assumenda fuga cum culpa consequuntur.', 1, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(109, 37, 'Elinor Erdman', 'Porro vero saepe aut adipisci pariatur. Modi nobis illum ex nesciunt illo excepturi. Ea ad quo nostrum rem expedita commodi. Rerum id commodi neque magnam qui.', 1, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(110, 24, 'Dr. Ryann Kertzmann', 'Quaerat blanditiis quo sunt repellat exercitationem et sed hic. Aliquam illo consequatur soluta et sapiente. Illum optio et autem. Provident impedit libero quam voluptatum autem non deserunt et.', 4, '2018-10-08 09:14:53', '2018-10-08 09:14:53'),
(111, 14, 'Eliezer Feeney Sr.', 'Expedita animi id natus aut dolorem accusamus expedita eum. Rem id quia ut debitis non sed vero. Sed quia qui consectetur et quos.', 2, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(112, 38, 'Prof. Dion Sanford III', 'Eos qui laudantium omnis. Et ipsa ratione eos quod praesentium voluptas delectus corrupti. Eligendi id dolorem officiis voluptates. Molestias dolor suscipit assumenda aperiam.', 0, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(113, 38, 'Ines Krajcik', 'Excepturi ut eveniet magni deserunt est. Mollitia voluptatem est quo pariatur debitis ducimus. Expedita quia sapiente omnis ullam minus. Autem minus maiores quo quia et non.', 5, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(114, 4, 'Dr. Eve Ziemann III', 'Pariatur aliquam exercitationem deserunt mollitia dignissimos perferendis. Id officia omnis omnis ut sapiente sapiente. Sit voluptas quia sed aspernatur. Sit cum ullam ea ut quae.', 4, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(115, 18, 'Cooper Pagac', 'Est delectus doloribus suscipit aut ea dolores. Ad inventore qui nisi rerum odio. Tenetur quibusdam qui nobis. Aperiam reprehenderit voluptates ipsum placeat eveniet quidem non assumenda.', 1, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(116, 20, 'Jovany Wilkinson', 'Earum ipsam quis facere debitis libero. Soluta iure explicabo voluptatem odit et. Sit cumque ipsum eum excepturi omnis.', 1, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(117, 7, 'Murl Steuber', 'Ut ut magni quos amet alias explicabo. Sed consequatur deleniti enim quae porro qui. Id veniam occaecati itaque. Molestiae est ex consequatur doloribus id.', 1, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(118, 34, 'Nona Mohr', 'Magni voluptas illum delectus neque. Cupiditate rerum earum quibusdam accusantium. Qui nostrum mollitia et totam et repudiandae eveniet.', 4, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(119, 43, 'Dr. Tyrese Murazik', 'Autem a quisquam et nostrum. Sunt tenetur placeat quibusdam pariatur quia. Iusto sint ab magni ut autem illum quo. Sit provident maxime et hic.', 3, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(120, 7, 'Orland VonRueden', 'Dolor ut illum et dicta quidem et nihil. Delectus provident illum cupiditate ad explicabo ea molestiae repudiandae. Possimus magni doloribus nostrum nemo accusamus non dignissimos.', 1, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(121, 46, 'Jerrod Rice', 'Aut minus perferendis ducimus est tenetur consequatur aut dignissimos. Et ducimus nihil nihil quod atque. Et eligendi neque distinctio. Sit adipisci ab et.', 4, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(122, 3, 'Allene Rempel', 'Saepe non eos illo cum qui natus. Saepe itaque eum ratione sit eligendi aliquid quos et. In ex blanditiis incidunt.', 3, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(123, 44, 'Jessie McLaughlin IV', 'Blanditiis et pariatur iure. Aut consequuntur sit laudantium ratione magnam. Ea ullam expedita facere nesciunt quas. Et est culpa ipsa nobis qui dolore placeat molestiae.', 0, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(124, 7, 'Skylar Ratke', 'Magnam nam quis explicabo repudiandae. Totam eius mollitia laborum perspiciatis cum ut. Enim omnis sint ab qui sit a. Ut corporis facere quisquam vitae.', 4, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(125, 40, 'Arch Cummings', 'Aspernatur odio officia ex totam exercitationem. Nihil voluptatem minima vitae quia perferendis et vel possimus. Rerum officiis impedit dolores in nesciunt.', 2, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(126, 15, 'Jabari Wunsch', 'Consectetur numquam vitae earum rerum excepturi recusandae. Nihil dolores debitis doloribus repudiandae reprehenderit aut et consequatur.', 1, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(127, 49, 'Laila Reichel', 'Ut id ut et. Aspernatur laboriosam sit totam quibusdam harum. Qui autem non rem ipsum repudiandae deserunt perferendis.', 5, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(128, 40, 'Mr. Chauncey Schowalter III', 'Aliquam placeat impedit accusamus quos. Ducimus ut incidunt perferendis quam saepe. Impedit repudiandae ducimus quo assumenda rerum impedit asperiores.', 3, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(129, 11, 'Jada Brakus', 'Laudantium illum aspernatur aperiam impedit et animi. Quaerat harum et necessitatibus placeat voluptatem eius culpa. Sint ut iusto sit veniam.', 5, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(130, 37, 'Laverne Luettgen', 'Asperiores eaque nostrum sunt dolorem. Qui consequatur vero soluta at nihil repellat quia. Ad et voluptatem dolores consequuntur tempore. Aut cum ut blanditiis aut et.', 1, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(131, 21, 'Carolyne Grady', 'Non in blanditiis consequatur excepturi sed dolorem. Aut placeat qui corrupti. Nostrum perspiciatis sunt quia qui rerum enim dolor totam.', 4, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(132, 17, 'Mrs. Kaylee Schaden Sr.', 'Omnis eaque at ut praesentium mollitia. Deleniti quia laboriosam ducimus officia hic ad earum.', 0, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(133, 5, 'Skye Mayert DDS', 'Et rerum fugiat nemo esse quae alias. Aperiam voluptas laudantium ad nihil quia quia et. Id earum facere accusantium atque cupiditate laudantium sit.', 5, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(134, 6, 'Rosendo Kiehn', 'Ut quo laudantium quidem atque deserunt adipisci expedita. Nisi ea aliquam ea quis voluptas. Inventore et temporibus ab repellendus aut rerum. Aperiam quam numquam laborum qui enim.', 1, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(135, 8, 'Prof. Diamond Considine', 'Tempore sed officiis dolores est sed quod est. Debitis praesentium vitae ab ipsam harum sed. Libero nostrum ut quidem nulla dolor ad.', 0, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(136, 11, 'Hadley Torp', 'Ut magnam et dolor non. Sed molestias voluptatem laborum ad aliquam. Odit et voluptatem officia cum corrupti odio deserunt. Ex quis dolor ex nemo consequuntur magnam nihil.', 4, '2018-10-08 09:14:54', '2018-10-08 09:14:54'),
(137, 30, 'Miss Kayla Haag V', 'Enim autem optio porro recusandae. Est aut voluptatem consequatur eveniet est. Ipsam eius ratione et consectetur quas qui. Ullam sequi velit eius et eaque.', 5, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(138, 16, 'Mr. Felix Romaguera I', 'Voluptas alias est non molestias veritatis commodi. Totam et et earum nulla nam enim blanditiis quo. Inventore architecto aspernatur non molestiae error.', 5, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(139, 43, 'Dr. Rafaela Schimmel', 'Maiores et corrupti aut voluptatibus consequatur omnis est neque. Dolores et aspernatur voluptas maiores ut deleniti rerum. Natus sit dolorum omnis autem. Dolores alias dolorem ut dolores.', 0, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(140, 5, 'Alexa Balistreri III', 'Deleniti exercitationem quo recusandae natus voluptatem. Veritatis qui ullam qui voluptate explicabo accusamus accusamus. Quibusdam inventore placeat rerum commodi.', 0, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(141, 15, 'Dr. George Kuvalis IV', 'Eveniet consequatur consequatur hic sed occaecati voluptas amet. Voluptatem nobis illo doloremque eos. Id rerum rem amet voluptas.', 1, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(142, 20, 'Prof. Norris Champlin Sr.', 'Consectetur natus incidunt voluptatem esse nostrum ea et. Aut neque consequatur qui aliquam. Numquam iusto doloremque sed sunt repellat quo. Molestiae magni tenetur sed rerum eius.', 0, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(143, 8, 'Krystina Little', 'Possimus possimus quos repellendus. Error aut sed et possimus voluptate natus quae. Est a laborum eius cupiditate.', 4, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(144, 5, 'Mr. Wilhelm Nienow Jr.', 'Sapiente est amet minima. Dolorem pariatur deleniti quo quam ipsa illum fugit. Perferendis voluptas aut ducimus. Praesentium aut quia sunt similique modi est.', 1, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(145, 7, 'Zander Hoppe', 'Illo vero expedita ab praesentium. Cupiditate facilis autem sit quia ipsam ullam a.', 4, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(146, 8, 'Zula Emmerich', 'Expedita necessitatibus adipisci odio et fuga ex quo. Et laudantium expedita quia. Voluptas dolores itaque nam omnis. Quae eveniet quidem neque incidunt est qui minima.', 4, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(147, 18, 'London O\'Hara', 'In magnam et aliquid veniam. Optio sapiente voluptate quas. Eligendi maiores ut officia aliquam optio sed. Nobis autem dolorem eos ut dicta enim esse.', 3, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(148, 43, 'Edwina Hand', 'Vero sed nihil nisi. Occaecati nam sit modi dolorum aut. Et ex et aspernatur recusandae est. Fugit aliquid repellendus dolorem vitae.', 0, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(149, 4, 'Ms. Amara Hegmann', 'Porro magni quis quia eum explicabo et illum. Id et quia nobis sit eum. Voluptatum voluptatem et consequatur quia minima in.', 4, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(150, 27, 'Kurt Cole', 'Cumque vero ut natus qui est omnis quasi non. Beatae optio ad occaecati.', 2, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(151, 16, 'Dr. Jabari Grimes', 'Error facilis pariatur quibusdam reprehenderit repudiandae ea. Qui sunt esse voluptatibus aspernatur iure reprehenderit et. Vero in sed perspiciatis quibusdam. Consequatur et at et blanditiis atque.', 4, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(152, 26, 'Mara Jacobs', 'Quia blanditiis aut nam harum est occaecati. Voluptatem ab aut dolorem quia sint. Molestiae fugit dolore tempore iure. Nobis cumque qui illo non pariatur neque ipsa.', 3, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(153, 18, 'Eliza Satterfield', 'Aut quis quibusdam qui omnis ut optio. Quia alias repellat aut quo. Et earum dolor error.', 1, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(154, 8, 'Geo Ledner', 'Perferendis soluta quia sunt omnis dolor cum sit. Totam eius incidunt aut.', 3, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(155, 22, 'Lora Dach', 'Nisi explicabo ut fugit voluptas ut veritatis architecto. In occaecati itaque et sint in adipisci voluptatem. Pariatur praesentium officia eum nobis velit eos.', 5, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(156, 34, 'Danyka Huels', 'Atque vel consectetur alias at quisquam. Quis nulla animi voluptatem ut aut natus et quia. Quia dolores quod voluptatem velit ipsa libero et.', 0, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(157, 17, 'Dorris Mosciski', 'Modi laborum tenetur laborum exercitationem autem possimus. Suscipit ab voluptas quo ipsum ipsum iusto distinctio. Similique consequatur iure dignissimos odit et et.', 0, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(158, 9, 'Gertrude Fadel Jr.', 'Voluptas incidunt et aut doloribus. Voluptatem eius ratione eaque corporis labore.', 1, '2018-10-08 09:14:55', '2018-10-08 09:14:55'),
(159, 36, 'Evie Bernhard', 'Reprehenderit quasi et qui velit. Ratione nam a officia quo modi accusamus est. Quae vero autem animi sunt architecto eum ea quos. Minima nulla itaque aut ex sapiente assumenda hic.', 1, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(160, 18, 'Delilah Schultz', 'Maiores eos vero praesentium. Rem alias culpa quos quis suscipit magnam. Repellendus porro aut culpa blanditiis. Deleniti itaque omnis cupiditate voluptatibus nisi quia sit.', 2, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(161, 37, 'Jesus Raynor', 'Illum et similique cumque unde vitae. Et commodi fugiat aut est facilis modi nesciunt. Quas animi accusamus corporis ipsum est.', 0, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(162, 23, 'Miss Arianna Barton', 'Alias ipsa molestias recusandae aperiam quia. Sequi illo nemo qui et occaecati ut ad. Aspernatur aut enim laborum facere. Placeat suscipit id nihil aspernatur enim eum tempora.', 4, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(163, 13, 'Dexter Heaney', 'Rerum aut ratione voluptas dolor esse odio. Asperiores dicta error impedit culpa dolore dolore. Tempora iste vel reiciendis consequatur aut voluptas repellendus.', 2, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(164, 12, 'Mrs. Aletha Shields', 'Non ipsam quibusdam voluptas ducimus. Nihil sequi et iure quia ea dolores laborum. Et id impedit ad incidunt dolor.', 3, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(165, 21, 'Kelton Glover I', 'Officiis quia sed dolorem aut. Porro aut non quos doloremque accusantium rerum enim. Aut ut est sit dolorem.', 2, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(166, 40, 'Dean Corkery III', 'Cupiditate est aut provident asperiores. Qui et dolores quo. Dolores voluptatem non quaerat sint praesentium fugiat.', 5, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(167, 50, 'Mitchel Friesen', 'Qui repellendus velit culpa reprehenderit distinctio. Occaecati adipisci alias fuga dolor optio.', 0, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(168, 38, 'Clovis Pfeffer', 'Ab maxime libero minima sed ea unde. Vel consequatur et rem commodi non. Omnis dolor rem sequi. Blanditiis reiciendis deleniti nihil molestias perferendis doloribus doloribus.', 4, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(169, 35, 'Carlotta Parisian IV', 'Ducimus qui architecto sit expedita et. Qui ab est minima esse distinctio. Dignissimos fugit beatae modi repellendus.', 3, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(170, 19, 'Prof. Nicholaus Botsford', 'Vero consectetur inventore illo. Rerum quae dolor inventore. Repellendus quasi ea ad blanditiis consequatur ut nam ullam. Omnis soluta doloremque ut amet optio.', 4, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(171, 43, 'Glenda Goyette', 'Optio ut totam tenetur animi dolores. Aperiam ipsam ad alias sed et repellendus totam. Omnis veniam aperiam dicta et in consequuntur placeat.', 5, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(172, 30, 'Ms. Florida Howe Sr.', 'Maxime velit sint neque blanditiis. Sit voluptates animi debitis dolores. Esse temporibus sapiente fugit perferendis est delectus id et. Voluptatibus molestias aut est et.', 5, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(173, 27, 'Drew Kreiger', 'Eius ea rerum quam eius quia ad dolores. Nihil maiores sapiente eveniet dolores est pariatur magnam veritatis. Et enim repellat minima aliquam laudantium iste.', 1, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(174, 21, 'Doris Hammes', 'Officia vero alias harum natus ut sunt. Sit molestiae debitis id eos enim.', 5, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(175, 4, 'Ms. Addison Funk DVM', 'Aut fugit ipsam animi assumenda incidunt. Et aut sunt iste. Repudiandae quos eos fugit expedita quia tenetur. Rerum quos animi minus voluptas ut et.', 0, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(176, 35, 'Raoul Collier', 'Omnis autem voluptatem mollitia dolores expedita adipisci architecto. Consequatur quos quia quibusdam itaque molestias rerum natus. Dolores ea repellat aliquam quia in omnis.', 4, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(177, 43, 'Rosemary Stoltenberg', 'Quis id minima quo amet animi pariatur. Eligendi voluptate doloribus odit rerum veritatis. Minus et totam ullam non et consequatur id. Sed id ducimus fuga nostrum ut.', 4, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(178, 10, 'Meaghan Bednar', 'Atque necessitatibus ut doloribus autem possimus. Minus provident dolorem architecto velit velit in. Inventore non aliquam ad nulla repudiandae aut. Quo dicta et facere.', 3, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(179, 41, 'Mrs. Myrtis Thiel Jr.', 'Et alias neque ab nihil in et earum. Quae consequatur amet voluptatem dolores omnis. Commodi eveniet aliquam et molestias sunt vel.', 1, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(180, 22, 'Sammie Wunsch II', 'Labore sit ad neque est aut. Dolorum dicta possimus similique. Quis et quidem illum provident mollitia fugiat eveniet laboriosam.', 2, '2018-10-08 09:14:56', '2018-10-08 09:14:56'),
(181, 40, 'Dr. Enrique Oberbrunner MD', 'Omnis rerum illo facere quod voluptatum. Iste voluptatem id commodi velit. Eos mollitia rem voluptatem amet.', 2, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(182, 42, 'Miss Ciara Wuckert PhD', 'Quam autem voluptate quo reiciendis et. Dolore est est quo deserunt ut consequuntur sapiente. Ab non assumenda molestias est eum architecto delectus.', 5, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(183, 24, 'Enos Stroman', 'Qui aut quae odit repellendus. Odit porro illum excepturi ut hic sed quia velit. Omnis optio quia pariatur sed quibusdam eum. Laudantium sequi sequi ducimus dolor maxime.', 2, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(184, 45, 'Prof. Marcus Kling', 'Necessitatibus consequatur et dolor magni. In voluptatibus ullam quia voluptatibus cumque minus. Omnis sed ut laboriosam quod dolorem cupiditate. Omnis ad enim est qui voluptatibus.', 4, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(185, 2, 'Natalie Connelly', 'Ut maxime quam recusandae deleniti laudantium. Unde totam ab similique expedita eum rerum ea. Omnis aut vel rerum alias sed aut.', 5, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(186, 23, 'Miss Estella Stehr', 'Illum deleniti ducimus unde voluptas laborum minus voluptatum minus. Dicta qui repudiandae adipisci sint tenetur non. Aut officiis voluptates aut ut unde voluptas.', 3, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(187, 33, 'Miss Amya Rutherford PhD', 'Tempore nisi eos nisi occaecati. Omnis qui repellendus libero eum omnis officiis similique. Ad necessitatibus ratione consectetur fugiat omnis asperiores ut.', 1, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(188, 46, 'Prof. Jasen Marks', 'Veritatis ipsam qui enim itaque tenetur adipisci eum excepturi. Aut nam temporibus et sed. Enim quas ducimus natus neque voluptatibus. Ut recusandae voluptas aliquam maxime et tempora.', 3, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(189, 30, 'Guillermo Cruickshank', 'Nobis necessitatibus temporibus in possimus. Rerum repellendus sit debitis aut non. Optio aut ut consequatur unde dolore temporibus.', 1, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(190, 49, 'Theron Beer', 'Non rerum debitis ab enim nisi labore distinctio ut. Sit sequi sapiente doloribus non. Harum alias qui omnis. Unde modi voluptate non asperiores quos.', 5, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(191, 10, 'Prof. Brook Hayes', 'Nisi et eum quaerat. Ut reiciendis mollitia et velit qui sed ullam. Inventore eligendi ratione ipsam debitis. Dolores a alias quia atque molestiae itaque.', 5, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(192, 37, 'Miss Daphne D\'Amore', 'Aut est ab aut sed est. Dicta in architecto consequatur optio quibusdam illo autem. Ab aliquam et ipsum sint nemo expedita quam voluptatem. Error et ratione illo rem.', 3, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(193, 50, 'Elmo Mayert', 'Aut quam voluptatum voluptatum. Illo repellat eum sunt voluptas consequatur ut accusantium. Explicabo aut adipisci est repellendus dignissimos vel quod.', 4, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(194, 15, 'Mr. Roel Gleason V', 'Veniam exercitationem eum et molestias voluptatem dolorem tempora et. Voluptatibus necessitatibus vitae sed natus voluptatem dolorem. Eum qui enim quae.', 4, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(195, 15, 'Shana Kling', 'Qui et esse fugit quo quos. Deserunt est et veritatis sit saepe a. Iure id quibusdam maxime velit.', 5, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(196, 2, 'Pablo Jacobi', 'Et saepe laboriosam hic est. Saepe temporibus cum iusto qui. Ut placeat fugiat tenetur nobis amet adipisci.', 1, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(197, 10, 'Prof. Zachariah Kuhic PhD', 'Ex et placeat minus et ad voluptatum officiis. Veritatis consequatur nulla ab aperiam recusandae impedit.', 1, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(198, 24, 'Missouri Hoeger', 'Et ut quis tenetur dolorem magni. Sit est alias et sit rem. Saepe ut aut et neque aut quis. Doloremque voluptatem aut animi et veritatis. Corporis dignissimos quo veritatis minus quos quis quia.', 4, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(199, 47, 'Mireya Haag I', 'Illo quod veritatis amet cupiditate voluptas animi. Eum porro ex alias. Quia id nostrum corrupti nulla qui.', 5, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(200, 18, 'Delmer Hessel', 'Est et est reiciendis sint. Earum ut aut rerum molestiae molestiae. Facilis dicta itaque voluptas necessitatibus sed cumque quisquam.', 4, '2018-10-08 09:14:57', '2018-10-08 09:14:57'),
(201, 13, 'Jovanny Stiedemann', 'Et distinctio quia earum expedita aut voluptatem. Quidem placeat non voluptas tenetur ullam dolor sit. Temporibus officia similique ab et. Perspiciatis libero quo ipsam natus magni repellendus.', 1, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(202, 29, 'Coralie Eichmann', 'Accusamus quo id voluptate ipsa qui. Harum asperiores quos maiores odio.', 0, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(203, 16, 'Miss Miracle Pfannerstill V', 'Voluptatem ut facilis distinctio ipsa quaerat consequatur labore maiores. Mollitia similique aut ad earum. Et porro hic placeat vel voluptas.', 4, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(204, 42, 'Jean Kuvalis', 'Labore ad alias architecto distinctio. Eveniet officiis laboriosam atque. Nihil possimus vel iste sit omnis architecto libero perferendis. Nostrum eos in quisquam voluptas qui sit.', 5, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(205, 36, 'Brian Grady', 'Sapiente est dolores maiores ducimus atque itaque hic. Quia adipisci qui laboriosam tempora autem veniam et. Repellendus quo nulla et quam reprehenderit ratione voluptatum dignissimos.', 3, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(206, 19, 'Dr. Chandler Gleichner III', 'Harum sunt vitae voluptatum qui dolore qui debitis ex. Pariatur molestiae corporis debitis incidunt quia eos. Quo aperiam similique ullam commodi qui.', 1, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(207, 20, 'Gardner Predovic', 'Voluptatem dignissimos dolore nulla itaque et. Iste soluta nobis molestiae. Veniam accusamus possimus aut commodi ut repudiandae vitae.', 1, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(208, 22, 'Kristofer Homenick V', 'Aut quidem et dolores aut. Alias soluta omnis corporis sed. Rerum autem deleniti consequuntur doloribus autem est et.', 2, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(209, 16, 'Krystal Batz', 'Ratione perferendis iure accusamus earum ducimus earum. Velit velit quod dignissimos aut officia ullam deserunt. Qui molestias rerum fuga.', 5, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(210, 11, 'Meaghan Bartoletti IV', 'Expedita qui quo id minus. Nam fugiat in distinctio culpa. Et quis dolorem possimus cumque fugiat eligendi. In eligendi sunt et ullam dicta. Provident ut nisi sunt ut. Ipsam fuga possimus non itaque.', 3, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(211, 23, 'Hank Kozey', 'Vel quia cupiditate natus nisi rerum. Voluptas reprehenderit nesciunt et enim distinctio. Aspernatur at nisi non.', 5, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(212, 5, 'Prof. Jakob O\'Kon', 'Velit inventore quis ipsum ducimus facilis quisquam. Eum tenetur commodi a voluptatem. Voluptate repellendus natus eveniet sit ratione est quod.', 3, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(213, 14, 'Prof. Theo Watsica DVM', 'Dicta sunt deleniti iste exercitationem in. Corrupti ex tempora incidunt corporis earum dolores. Nostrum aliquid vel voluptas doloribus ut voluptates. Et voluptatem sapiente vel odio assumenda odio.', 4, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(214, 30, 'Miss Rita Schaden I', 'Omnis asperiores voluptatem est neque. At veritatis expedita sed nobis quia. Nihil quasi sit qui laudantium et quis.', 4, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(215, 8, 'Madalyn Brakus I', 'Dolores ipsam ipsa quo beatae vitae quos et. Aspernatur laboriosam ratione fugiat veritatis fugit est. Maiores alias illo ipsam porro labore ratione et. Cumque ipsum rerum illo debitis ut nihil.', 5, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(216, 12, 'Mike Reynolds', 'Ratione aliquam occaecati vero soluta omnis ad. Rem magni consequatur vel maxime. Nulla ipsa consequatur dolorum et cum qui. Vero accusamus asperiores necessitatibus aliquam quaerat et numquam.', 2, '2018-10-08 09:14:58', '2018-10-08 09:14:58');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(217, 38, 'Keven Mohr Jr.', 'Ut sit consectetur deserunt ea mollitia. Ratione reiciendis voluptas qui ad repellat.', 5, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(218, 12, 'Bonita Cole', 'Ducimus vel ducimus dolores aut et sunt nihil. Totam accusamus voluptate odio incidunt et consequuntur. Recusandae modi qui non. Nemo blanditiis quo non suscipit neque voluptatem officia.', 0, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(219, 22, 'Florian Parisian', 'Ut veritatis assumenda iure praesentium ipsa ut deserunt. Dignissimos dolorem amet saepe amet quia hic nihil. Fuga minus nobis et laborum labore.', 1, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(220, 22, 'Miss Yasmeen Bernhard', 'Aut molestiae in soluta rerum maiores. Et accusamus eius ex ratione. Id et quos vel minus. Asperiores provident quos eaque in nisi optio hic.', 3, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(221, 15, 'Prof. Jess Cremin MD', 'Similique aliquid quis omnis. Ducimus porro ut autem velit. Molestiae qui ut voluptatem ab.', 2, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(222, 13, 'Desiree Auer', 'Inventore facilis perferendis soluta sit. Ut optio tenetur reiciendis in laboriosam qui. Sit quia et possimus labore reprehenderit et animi.', 1, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(223, 27, 'Marina Keeling', 'Possimus dignissimos aut delectus harum. Corporis autem doloribus cum quam eaque quia. Natus voluptatem odit quia voluptatem doloremque provident. Temporibus sequi qui aut sequi.', 1, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(224, 43, 'Estel Mayer', 'Nihil sed illo praesentium sed in molestias. Asperiores quo maiores illum temporibus veniam voluptatem. Velit quae quis voluptatem architecto necessitatibus magni.', 5, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(225, 12, 'Jess Kemmer', 'Corporis tenetur vel distinctio veniam quos cupiditate. Alias est sit qui illo vel. Modi fugit enim minus voluptatem itaque similique.', 4, '2018-10-08 09:14:58', '2018-10-08 09:14:58'),
(226, 39, 'Nellie Kovacek', 'Enim asperiores beatae tempore aut deserunt. Ad assumenda dolore tempore a. Rem et officia ipsum beatae iure est. Deleniti perferendis eaque sapiente eaque at. Aut modi aut et autem.', 5, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(227, 6, 'Clay McDermott', 'Rerum eos sed est consequuntur est aspernatur. Minima quis deleniti totam animi deserunt optio eos aperiam. Ut repellat corporis quia. Dolore quia debitis modi eius.', 5, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(228, 46, 'Jeromy Mayer', 'Consequatur voluptatem ab maxime recusandae quod sed. Voluptatem non soluta perferendis. Sed ipsa sed facilis quidem exercitationem.', 5, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(229, 34, 'Karine Olson Sr.', 'Illo laudantium aliquid id architecto voluptatem reprehenderit. Dolores et nemo odio aliquid magni nostrum illum. Et eum consequuntur impedit est. Ut et nihil necessitatibus ut quia.', 4, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(230, 48, 'Ms. Rubye Graham', 'Quos voluptatem blanditiis eos sit tempora accusamus autem. Et quo temporibus aut architecto aut voluptas dolor.', 5, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(231, 44, 'Trisha Padberg', 'Atque excepturi enim repudiandae voluptatem soluta quasi voluptatibus. Quis est dolor et hic ullam. Magnam vero laboriosam dolorem architecto.', 2, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(232, 42, 'Jessika Rodriguez', 'Sed nesciunt deserunt sunt vel quisquam. Ad dolorem autem iste nulla.', 5, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(233, 48, 'Raphael McClure', 'Eius aliquam quo dolore commodi iusto. Repellendus dolores rerum consequatur doloremque. Officiis magnam repellat provident quae. Quo omnis incidunt voluptate aut.', 5, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(234, 47, 'Kristina Rogahn', 'Vel sint temporibus ut autem. Ullam et maiores quia non velit illum. Quo occaecati perferendis sequi sed earum veniam eum.', 4, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(235, 41, 'Brisa Schmeler V', 'Ipsum qui natus temporibus. Non excepturi quam neque autem. Praesentium eos ea recusandae numquam earum et praesentium. Provident cupiditate qui maiores.', 5, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(236, 15, 'Hope Kris', 'Quae sint et sunt aut laudantium. Accusantium eveniet accusamus sunt perspiciatis eos sunt. Quia porro ipsum non.', 4, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(237, 18, 'Florida Blanda', 'Deserunt molestiae sint sequi. Ullam repudiandae quod doloribus soluta. Fuga tempore ipsum quidem tenetur.', 2, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(238, 10, 'Arjun Upton Sr.', 'Omnis sit rerum dolorem ad iure. Voluptatem dolores quo sunt voluptas. Vero voluptas eum ipsam dolor nihil. Accusantium placeat sunt voluptas et sed architecto.', 0, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(239, 7, 'Prof. Tito Turcotte', 'Impedit nam beatae quis dolorem. Nihil ut aut tempora illum. Dolor adipisci harum est id.', 1, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(240, 12, 'Carleton Kunze', 'Provident qui sunt repellat ut. Consequatur neque qui qui rerum sit similique illum. Debitis fugit quis alias mollitia aliquid et provident. Laborum facilis sint officia et laudantium.', 4, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(241, 12, 'Gerardo Considine', 'Consequatur reiciendis quisquam dolore aut. Quia accusamus et aperiam qui. Laboriosam magni rem magnam voluptatem ad maiores.', 3, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(242, 29, 'Dr. Cleo Pagac DVM', 'Et suscipit in culpa iure voluptatem fugit. Enim natus maxime voluptatem fugiat distinctio rem aut. Qui molestiae in eum et. Quod ea aut molestiae.', 1, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(243, 24, 'Dr. Catharine Moore', 'Facere quis laborum error et delectus quas beatae. Voluptatem repudiandae quasi est reprehenderit voluptate in. Est ut tempora sed. Aut dolor in corrupti non quia.', 4, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(244, 8, 'Eldora Stracke', 'Rerum qui consequatur adipisci molestias eos impedit ab quos. Sit hic qui impedit iure. Accusamus possimus in et eum dicta iure consequatur. Et totam voluptatem dolorum ut nihil corrupti.', 3, '2018-10-08 09:14:59', '2018-10-08 09:14:59'),
(245, 18, 'Rogers Watsica', 'Eos ut reprehenderit assumenda. Dolores architecto et illum sed placeat atque fuga. Consequatur culpa praesentium sit nam. Eveniet non consequatur doloribus fugit.', 0, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(246, 36, 'Emmanuelle White', 'Placeat velit deserunt nobis et eum voluptatem praesentium. Aspernatur eligendi blanditiis consequatur voluptatum et velit laborum. Omnis libero rerum architecto ad. Commodi earum nihil ut ex.', 1, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(247, 8, 'Romaine Balistreri Jr.', 'Molestiae porro sed odit voluptas magnam cum amet. Voluptatem cupiditate id aliquid iusto accusantium. Et omnis at consequuntur voluptatum soluta et a. Perferendis maxime eos eos et.', 2, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(248, 28, 'Dr. Shakira Block III', 'Omnis expedita molestiae sit quia qui voluptatem sunt. Et non impedit ea quas dolorum. Et eligendi quasi dolor perferendis ad illum.', 0, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(249, 33, 'Dorothea Lynch II', 'Accusamus ea odio nobis. Sunt quia qui aperiam. Reprehenderit alias dolores sequi dolorem. Natus et sed unde rerum qui. Non blanditiis ut eius. Aliquam et laborum et adipisci eius.', 4, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(250, 47, 'Drew Mohr', 'Quisquam est quo quam vel consequuntur qui labore. Sed repellendus non quis et dolorum sunt. Fugit recusandae error expedita. Tempore at ut nobis necessitatibus distinctio ratione.', 1, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(251, 11, 'Jena Pollich', 'Deleniti at cumque atque illum saepe tempora. Veritatis veniam illum eveniet expedita. Fugit voluptates reiciendis omnis itaque et aperiam.', 5, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(252, 27, 'Sherman Reilly', 'Ut numquam sed perspiciatis facilis. Omnis aut temporibus earum vel nemo. Voluptatem aut omnis animi autem beatae voluptatem quos. Qui accusantium dicta nam est consequatur reprehenderit velit.', 1, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(253, 43, 'Prof. Jeramie Boyle MD', 'Facere eum dignissimos ea voluptate quo et est. Quaerat voluptas cumque odio eos et. Quibusdam est ut non expedita eius sunt corrupti nihil.', 4, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(254, 22, 'Jarrell Krajcik', 'Et dicta quae aut temporibus optio est. Qui consectetur sed autem aut. Aut non quia facere facere dolor magnam nesciunt.', 0, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(255, 16, 'Mattie Wilkinson', 'Consectetur consectetur aut repellendus. Minus doloribus omnis magnam ullam natus quidem repellat. Atque doloremque tempora cumque deleniti laboriosam dolorem.', 5, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(256, 39, 'Clinton Keeling', 'Commodi architecto qui et soluta unde aliquid ad. Qui voluptatem et nostrum harum consequuntur rerum. Et unde qui placeat deleniti. Accusamus odio officiis fugit omnis atque.', 5, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(257, 11, 'Collin Gleichner', 'Molestiae totam sunt voluptatem exercitationem vitae. Rerum exercitationem est autem facilis. Quidem et ipsa iste quia. Fuga cumque soluta quia.', 4, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(258, 20, 'Whitney O\'Hara', 'Aspernatur dolor in autem libero perspiciatis a quidem. Cumque autem molestias voluptatum voluptatem numquam. Et fuga dolore earum ullam. Veniam earum praesentium qui placeat excepturi deleniti.', 0, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(259, 22, 'Caitlyn Kozey', 'Placeat mollitia eos eius distinctio aliquam. Quaerat necessitatibus reprehenderit rem. Consectetur ut voluptatem ipsum autem corrupti.', 0, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(260, 16, 'Dr. Darrion Wisozk', 'Tempora cum soluta laudantium ut laudantium reiciendis. Voluptas dolore aperiam ullam eum perspiciatis odit mollitia.', 4, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(261, 36, 'Kurt Kuphal II', 'Autem ea quo omnis. Laudantium est sapiente sed earum quidem consequatur. Tempore facere voluptatem et quam ut voluptas possimus. Excepturi quisquam doloribus odit voluptatem eos odio.', 3, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(262, 25, 'Denis Auer', 'Occaecati omnis autem et aut autem asperiores. Atque placeat quae voluptas autem. Quibusdam asperiores veniam asperiores dolorem similique voluptatibus sunt quos.', 0, '2018-10-08 09:15:00', '2018-10-08 09:15:00'),
(263, 2, 'Raheem Adams', 'Laboriosam cum libero et qui nihil. Consequuntur consequuntur rerum assumenda alias distinctio. Dolores consequuntur sint ab quia.', 1, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(264, 12, 'Milo Gorczany', 'Nostrum esse impedit voluptas qui quia quisquam. In nostrum quia voluptate natus esse sint. Error cum nihil assumenda esse et velit sint. Ducimus accusantium et cumque porro.', 3, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(265, 37, 'Lucinda Renner I', 'Ad rerum qui assumenda quam sed id. Aut iusto aut voluptatibus consequatur nobis laborum. Asperiores asperiores nemo quod omnis.', 0, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(266, 7, 'Mr. Alfonso Wolff', 'Ipsum adipisci nostrum repellat ab. Porro et non ea. Qui ut voluptatem praesentium ratione voluptatem. Et corporis nostrum quas laboriosam nihil nobis inventore.', 5, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(267, 12, 'Muriel Hane', 'Aut et veritatis esse est totam. Similique porro esse qui repellat quidem. Accusamus debitis sequi aut repellendus aspernatur et est.', 3, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(268, 38, 'Daphne O\'Kon', 'Ipsam voluptas rerum non quia accusamus quam. Dolorem neque quis suscipit nostrum tempora. Distinctio rerum aut dolor id. Esse est voluptas ducimus recusandae inventore praesentium.', 2, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(269, 17, 'Prof. Hilbert Jerde', 'Repellat necessitatibus tempore magnam sint illum ratione. Praesentium incidunt omnis illo in laborum tempore. Reprehenderit quibusdam repudiandae commodi nemo quia maxime provident omnis.', 3, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(270, 46, 'Prof. Rosemary Beahan', 'Ducimus quisquam fuga odio est quod maiores eos. Eum qui facilis est officiis.', 1, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(271, 29, 'Nola Ledner', 'Necessitatibus et aperiam est. Perspiciatis harum eos itaque nam asperiores suscipit at. Non et perspiciatis dolor alias ut nihil. Ipsum aperiam quidem nemo error similique dolorem.', 4, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(272, 17, 'Ms. Beryl Cremin', 'Et nostrum in illo qui voluptates recusandae. Nulla fuga adipisci exercitationem ipsum omnis.', 2, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(273, 28, 'Prof. Tristian Runolfsson', 'Labore eligendi explicabo aliquam. Suscipit possimus et aperiam. Sunt voluptatem sed inventore perspiciatis odio molestiae. Consequatur repellendus ducimus eos vero est ut.', 3, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(274, 1, 'Abigayle Ferry', 'Non architecto magni sed quo. Pariatur quasi atque et dolorem veritatis voluptas dolores. Cum optio culpa laboriosam et quisquam.', 1, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(275, 5, 'Eulalia Stracke', 'Dolorum tempore quae in eligendi quaerat aut deleniti. Saepe iusto praesentium ipsam sint expedita. Nihil aliquam et facere autem.', 5, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(276, 11, 'Dr. Trace Luettgen', 'Quasi et officiis et blanditiis quia. Odio mollitia non explicabo quis. Illo et similique facere quos libero.', 0, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(277, 10, 'Dr. Bill Treutel DDS', 'Adipisci non temporibus enim quo. Consequatur vitae recusandae saepe est. Corporis deleniti saepe repellendus quaerat.', 1, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(278, 40, 'Foster Mraz', 'Quo tenetur incidunt reiciendis quia est. Quia assumenda ut reiciendis quibusdam voluptate. Id eum et deleniti ullam velit et similique.', 0, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(279, 30, 'Noelia Lang', 'Praesentium ratione pariatur consequatur asperiores perspiciatis unde enim. Aut quis est sit natus reiciendis adipisci nobis.', 2, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(280, 11, 'Adrain Willms', 'Ipsam maxime ut beatae in autem. Quo deleniti sapiente unde dolorem laboriosam in. Deserunt dolorum suscipit tempora consectetur fugit dignissimos soluta officia. Maiores dolorem veniam esse.', 0, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(281, 43, 'Winnifred Prosacco', 'Adipisci aut maxime corrupti velit pariatur ex. Nemo numquam reprehenderit quia aliquid quae ab explicabo. Et reiciendis non ex vitae ea sed.', 1, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(282, 20, 'Mekhi Hudson', 'Quia nam repellat qui commodi fugit quia. Provident similique incidunt dolorem veniam ut et mollitia. Ipsum ut tenetur eum hic modi vel dolore odit.', 0, '2018-10-08 09:15:01', '2018-10-08 09:15:01'),
(283, 27, 'Ezequiel Davis', 'Qui vel officiis quia et occaecati. Est aut aspernatur modi ex. Ratione quo quia sunt iure totam minus quas aut. Aliquam consequatur odit voluptas minima id.', 0, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(284, 27, 'Cyril Welch', 'Sed quia minus expedita incidunt qui et qui. Beatae debitis animi consequatur illum. Soluta est cumque omnis et neque.', 1, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(285, 36, 'Daphne Fritsch', 'Nihil quo quis nam. Ducimus ipsa distinctio corporis aliquam. Commodi animi enim non suscipit doloribus dignissimos. Eaque voluptatem sunt fugiat.', 5, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(286, 27, 'Dorian Langosh', 'Debitis at sunt suscipit aperiam necessitatibus. Voluptatum provident fugit nisi voluptas. Repellat ut aut sed qui qui ut sed. Et omnis non voluptas amet sed eius.', 3, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(287, 20, 'Mr. Clemens Wisozk', 'Blanditiis expedita illum rerum quia ratione numquam. Est quisquam reprehenderit minima voluptatem perspiciatis ea eum.', 3, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(288, 48, 'Nico Schmeler', 'Rerum occaecati ut nam voluptas sed sapiente eius. Dolores et et eius nihil quo itaque magni.', 0, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(289, 45, 'Dorris Heathcote', 'Praesentium provident pariatur iure et vel ut itaque. Sunt totam architecto qui quia voluptates. Aut omnis quaerat labore veritatis aliquam. Quas sit voluptate laborum nihil quas asperiores.', 4, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(290, 20, 'Christy Reichert', 'Consectetur officia nisi necessitatibus et sed. Est in magnam et libero. Expedita minima consequatur impedit.', 2, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(291, 1, 'Estel Stark', 'Magnam ut et sunt vel dolorum est amet. Dolor totam et sint accusamus et est dolorem. Saepe itaque quisquam necessitatibus ducimus.', 0, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(292, 48, 'Travon Schuster', 'Rerum non expedita sunt voluptas cum et. Facilis voluptatem fugiat tempore dolores blanditiis. Exercitationem velit fugit aut sed dolor mollitia et. Et nam officia dolores dolor porro.', 0, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(293, 28, 'Mr. Adriel Leuschke', 'Deserunt sit laudantium qui facere eaque. Dolores aliquam optio alias facilis omnis. Qui deserunt ducimus nihil unde ab iure molestiae.', 5, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(294, 17, 'Sarina Ankunding', 'Repudiandae numquam aliquam maxime optio blanditiis cupiditate odit iure. Omnis quia rerum repellat suscipit. Vitae quas sit id earum.', 2, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(295, 25, 'Clint Fahey', 'Aut dolor porro pariatur dolorum facere. Blanditiis id iste quidem.', 2, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(296, 20, 'Asha Metz DDS', 'Porro est deleniti impedit architecto harum at ab. Quisquam sint qui explicabo repellendus perspiciatis aut. Placeat autem nulla voluptas. Ipsum qui officia id odio dolores quo facilis.', 3, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(297, 41, 'Lori Terry', 'Corrupti sed eos et rem enim. Nam et molestias ex delectus eos. Atque sit enim ipsa perspiciatis voluptate. Iste rerum eius officia. Placeat dolores sunt ipsum enim.', 4, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(298, 9, 'Kiarra Lesch', 'Hic qui nostrum consequatur sunt tenetur molestiae. Delectus repellat sed suscipit aut nobis veniam laborum. Voluptatem quia corrupti dolorum dolor cum. Est nesciunt et delectus eos rerum hic.', 0, '2018-10-08 09:15:02', '2018-10-08 09:15:02'),
(299, 43, 'Josefina Abshire', 'Veritatis earum facilis ut qui recusandae rem. Vitae aut temporibus quos facere qui. Minus ea et enim voluptatem est et dolore perferendis. Consequatur repellendus magni est veniam aspernatur.', 3, '2018-10-08 09:15:03', '2018-10-08 09:15:03'),
(300, 30, 'Abelardo Moore Sr.', 'Sint magni esse numquam eos aut. Hic asperiores et aut molestias et ut perspiciatis. Qui culpa laboriosam et esse totam laborum aut.', 0, '2018-10-08 09:15:03', '2018-10-08 09:15:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
--
-- Database: `laravel_api_test`
--
CREATE DATABASE IF NOT EXISTS `laravel_api_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_api_test`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Quos sit odit suscipit quo amet.', 'Aperiam molestiae et sunt eligendi. Veniam rerum aut iste. Perspiciatis cum similique consequatur dolor vero commodi nihil. Atque accusantium eum dolor laudantium odit odit assumenda.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(2, 'Voluptate numquam hic dignissimos magnam.', 'Quos aut et consequuntur necessitatibus qui odio voluptatibus. Exercitationem eveniet nobis voluptatem in enim voluptatem maxime. Iure officia voluptatem qui et.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(3, 'Cum molestiae temporibus qui sit sed aut.', 'Autem necessitatibus qui quam natus. Et ut qui possimus amet sit necessitatibus sapiente necessitatibus.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(4, 'Rem voluptas sed iusto deserunt saepe.', 'Soluta assumenda facilis quas modi repudiandae qui quia. Repudiandae dolore officia consequatur nobis sapiente sunt provident. Qui incidunt repellat ut architecto.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(5, 'Velit aut nulla saepe optio itaque.', 'Rerum voluptatum perferendis qui. Nesciunt mollitia est laboriosam omnis. Earum consequatur numquam est illum ea. Nobis possimus vero sequi autem nesciunt.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(6, 'Et rem veritatis reiciendis id qui.', 'Magnam est voluptatibus id. Sit doloribus beatae incidunt maiores eligendi. Quam eum rerum voluptatem error voluptatem temporibus.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(7, 'Omnis repellat nulla est voluptas alias minima.', 'Eum provident mollitia cumque laudantium dolorum nam voluptas illum. Accusantium et error saepe voluptatum quas necessitatibus corrupti. Qui consequatur odio distinctio aspernatur.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(8, 'Esse consequatur ex impedit et.', 'Quos qui amet ut unde. Qui aliquam earum nulla. Et consequatur assumenda eos dolorem aut. Dignissimos officia in quaerat.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(9, 'Et inventore quisquam et consequatur architecto.', 'Ea temporibus rerum enim voluptate. Aut et ipsa mollitia sint distinctio sunt enim sunt. Eos iusto error voluptatem. Sed esse est ipsa vel enim quis nisi. Nihil esse facere aut commodi velit itaque.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(10, 'Unde unde culpa tempore soluta possimus.', 'Distinctio sit veritatis hic ullam. Odit possimus facilis soluta quasi labore. Quae aut et dolores necessitatibus. Accusantium ut exercitationem deleniti.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(11, 'Expedita placeat non occaecati nostrum.', 'Corporis mollitia omnis in. Quaerat aperiam aliquam unde rerum dicta iste. Labore dolorem laboriosam expedita consequuntur aliquam earum.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(12, 'Rerum recusandae corrupti dolore et.', 'Doloremque necessitatibus sed ut provident libero numquam sapiente. Ea aut eum quibusdam modi autem aliquam quia. Et ut beatae adipisci temporibus placeat.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(13, 'Quia aut consectetur molestias iste non.', 'Consequuntur officiis est illum. Quas molestias ullam corrupti iste ducimus reprehenderit. Sed asperiores ex vel rerum molestiae. Sapiente dolorem tempora perferendis.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(14, 'Enim cupiditate eveniet adipisci minus.', 'Rem ut quae optio eveniet quod laboriosam quas. Dignissimos omnis consequatur earum quam.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(15, 'Reiciendis et expedita nihil debitis autem ipsa.', 'Qui et reiciendis harum quo. Ut quas deleniti quod et itaque cupiditate. Voluptatem deleniti adipisci dolorem soluta aut.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(16, 'Illo facilis et dolore qui.', 'Nam accusantium voluptatem perspiciatis quasi enim fugiat voluptatum beatae. Aliquid quia voluptas exercitationem dicta alias harum omnis. Reprehenderit eos quis magni. Aut est ut et qui.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(17, 'Tempore error harum fugit cum.', 'Exercitationem quia molestiae alias quam dolorem corporis mollitia. Repudiandae dolore inventore et omnis vel. Molestiae maxime architecto sint sunt recusandae.', '2018-06-12 21:19:11', '2018-06-12 21:19:11'),
(18, 'Facilis aut dolorum sit.', 'Iure voluptas laborum aut omnis qui. Hic culpa praesentium et voluptatem et. Dolorem dolor sequi quia. Laboriosam rerum officia quae. At earum omnis et vel.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(19, 'Sunt numquam sit qui aut quam est.', 'Id voluptate non ab modi. Magnam eos sed at rerum illum.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(20, 'Natus eligendi saepe explicabo.', 'Et perspiciatis quis in et. Eveniet tempora repellat placeat est. Perferendis amet quos iure modi. Corrupti ea voluptate eveniet. Culpa delectus expedita tempora qui.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(21, 'Totam qui voluptatem est distinctio.', 'Aut suscipit quidem nam dolor. Repellendus qui cupiditate error aut et. Commodi nulla qui omnis est.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(22, 'Suscipit delectus non itaque.', 'Sunt aut pariatur maiores quos. Modi consequuntur quis nostrum quisquam. Corporis et dolor optio ut deserunt explicabo.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(23, 'Id dolores maiores excepturi atque dolore.', 'Eum nam quo fuga perspiciatis possimus officia. Culpa neque quos cumque est possimus impedit est. Porro maxime sed autem reprehenderit culpa eligendi quia.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(24, 'Dolores maxime eaque officiis dolorum sit.', 'Adipisci quia architecto quibusdam optio magni. Est consequuntur aut et et et. Eaque a autem et voluptate id. Eligendi quia voluptatem exercitationem.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(25, 'Hic odit voluptas ea quasi debitis.', 'Dolores sit sequi dolore ut dolore et. Ut qui labore aspernatur molestiae at et veritatis mollitia. Debitis sint sit voluptate molestias id voluptatum nostrum doloribus.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(26, 'Quia et sequi quo aliquid.', 'Repellendus consequatur dolor aut magni tempore eos veniam. Quo pariatur repudiandae enim suscipit in tenetur est. Ipsa eaque explicabo quasi numquam qui.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(27, 'Recusandae architecto magni doloremque.', 'Sunt adipisci aut tempora cupiditate aspernatur ullam assumenda non. Dolorum cum ducimus quis optio consequatur aliquam. Eveniet quo ut et molestiae unde tenetur distinctio consequuntur.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(28, 'Quidem iste quia dolorem est officiis quia.', 'Architecto eaque eum nam eos voluptas sit placeat. Sint aut unde perspiciatis ipsam fugit maxime. Molestiae commodi ut autem.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(29, 'Quo odit vero libero tenetur odit sit aut.', 'Tempora praesentium ut porro autem non. Beatae non non fugiat tenetur deleniti minima aut. Voluptate quo non sint. Odio ex quisquam aut consequatur. Repudiandae velit mollitia facilis rerum.', '2018-06-12 21:19:12', '2018-06-12 21:19:12'),
(30, 'Adipisci laborum repellat voluptatem in libero.', 'Ut eius illo perspiciatis quas veritatis. Eveniet quos vitae minima rerum. Alias distinctio aliquid ut reprehenderit repellat assumenda. Fuga quis dolores nulla est.', '2018-06-12 21:19:12', '2018-06-12 21:19:12');

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
(3, '2017_12_29_233629_create_articles_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_cms`
--
CREATE DATABASE IF NOT EXISTS `laravel_cms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_cms`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sri Lanka', '2018-06-12 04:17:08', '2018-06-12 04:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `sector_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `sector_id`, `created_at`, `updated_at`) VALUES
(1, 'Belihuloya', 1, '2018-06-12 04:17:36', '2018-10-01 02:30:42'),
(2, 'asasas', 1, '2018-10-01 02:03:48', '2018-10-01 02:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rates`
--

CREATE TABLE `hotel_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `sharing_type_id` int(11) NOT NULL,
  `meal_type_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `pp_rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_rates`
--

INSERT INTO `hotel_rates` (`id`, `start`, `end`, `hotel_id`, `room_type_id`, `sharing_type_id`, `meal_type_id`, `rate`, `pp_rate`, `created_at`, `updated_at`) VALUES
(12, '2018-06-13', '2018-06-29', 1, 3, 1, 1, 10, 10, '2018-06-28 02:21:29', '2018-06-28 02:21:29'),
(13, '2018-06-13', '2018-06-29', 1, 2, 1, 2, 12, 12, '2018-06-28 02:21:29', '2018-06-28 02:21:29'),
(14, '2018-06-13', '2018-06-29', 1, 4, 1, 3, 13, 13, '2018-06-28 02:21:29', '2018-06-28 02:21:29'),
(15, '2018-06-04', '2018-06-12', 1, 3, 1, 1, 120, 120, '2018-06-28 03:16:02', '2018-06-28 03:16:02'),
(16, '2018-06-04', '2018-06-12', 1, 2, 1, 2, 130, 130, '2018-06-28 03:16:02', '2018-06-28 03:16:02'),
(17, '2018-07-03', '2018-07-26', 1, 3, 1, 2, 1650, 1650, '2018-07-01 01:47:18', '2018-07-01 01:47:18'),
(18, '2018-07-03', '2018-07-26', 1, 3, 1, 1, 1550, 1550, '2018-07-01 01:47:18', '2018-07-01 01:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_type_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `sharing_type_id` int(11) NOT NULL,
  `sharing_type_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_rooms` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `hotel_id`, `room_type_id`, `room_type_name`, `sharing_type_id`, `sharing_type_name`, `number_of_rooms`, `created_at`, `updated_at`) VALUES
(3, 1, 3, 'Super Deluxe', 1, 'Double', 10, '2018-06-16 05:27:26', '2018-06-16 05:27:26'),
(4, 1, 2, 'Standard', 1, 'Double', 15, '2018-06-16 05:30:18', '2018-06-16 05:30:18'),
(5, 1, 4, 'Ocean View', 1, 'Double', 12, '2018-06-17 06:34:04', '2018-06-17 06:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meal_types`
--

CREATE TABLE `meal_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meal_types`
--

INSERT INTO `meal_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BB', NULL, NULL),
(2, 'HB', NULL, NULL),
(3, 'FB', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_18_162610_create_departments_table', 1),
(4, '2017_12_18_162905_create_job_categories_table', 1),
(5, '2017_12_26_182832_create_roles_table', 1),
(6, '2017_12_27_041646_create_photos_table', 1),
(7, '2017_12_27_041923_add_photos_id_to_users', 1),
(8, '2017_12_30_102926_create_teams_table', 1),
(9, '2017_12_30_182909_create_team_members_table', 1),
(10, '2018_01_03_052431_add_is_leader_to_user', 1),
(11, '2018_01_10_175109_create_countries_table', 1),
(12, '2018_01_10_175133_create_sectors_table', 1),
(13, '2018_01_10_175156_create_hotels_table', 1),
(14, '2018_01_10_175219_create_sharing_types_table', 1),
(15, '2018_01_10_175245_create_room_types_table', 1),
(16, '2018_01_12_111819_create_hotel_rooms_table', 1),
(17, '2018_03_21_071057_create_meal_types_table', 1),
(18, '2018_03_21_071508_create_hotel_rates_table', 1),
(19, '2018_06_12_092350_add_extra_columns_to_hotel_rates_table', 2),
(21, '2018_06_16_103737_add_extra_columns_to_hotes_rate_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Deluxe', '2018-06-12 04:16:24', '2018-06-12 04:16:24'),
(2, 'Standard', '2018-06-12 04:20:38', '2018-06-12 04:21:26'),
(3, 'Super Deluxe', '2018-06-16 05:16:57', '2018-06-16 05:16:57'),
(4, 'Ocean View', '2018-06-17 06:33:35', '2018-06-17 06:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Balangoda', 1, '2018-06-12 04:17:21', '2018-06-12 04:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `sharing_types`
--

CREATE TABLE `sharing_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `number_of_person` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sharing_types`
--

INSERT INTO `sharing_types` (`id`, `name`, `number_of_person`, `created_at`, `updated_at`) VALUES
(1, 'Double', 2, '2018-06-12 04:16:12', '2018-06-12 04:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `nic_number` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `logged` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `leader_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `address`, `nic_number`, `department_id`, `team_id`, `type_id`, `role_id`, `email`, `password`, `logged`, `remember_token`, `created_at`, `updated_at`, `photo_id`, `leader_id`) VALUES
(1, 'Kolitha', 'Gunawardhana', 'Nilame', 'ass', 901631646, NULL, NULL, NULL, 1, 'dvkolitha@gmail.com', '$2y$10$eeZ6ffa2acyaPB0pSUVUcesUoNFtbIjscVSgma1D7Zl.OYSiEaYf.', 1, 'awd07J5rsxzqKEUjxpNHPAaJpgywLSO9Wj8LCJR9ozK0mChtxi9sa4kDA1SS', NULL, '2018-10-01 02:27:06', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_rates`
--
ALTER TABLE `hotel_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_types`
--
ALTER TABLE `meal_types`
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
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sharing_types`
--
ALTER TABLE `sharing_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotel_rates`
--
ALTER TABLE `hotel_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meal_types`
--
ALTER TABLE `meal_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sharing_types`
--
ALTER TABLE `sharing_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravel_git_test`
--
CREATE DATABASE IF NOT EXISTS `laravel_git_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_git_test`;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_05_31_110824_create_students_table', 1),
(11, '2018_05_31_110919_create_parents_table', 1),
(12, '2018_05_31_145826_parent_student', 1),
(13, '2018_06_04_053458_create_photos_table', 1),
(14, '2018_06_04_091549_create_classes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents_student`
--

CREATE TABLE `parents_student` (
  `parent_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic_number` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logged` tinyint(1) NOT NULL DEFAULT '0',
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `laravel_test_authorization`
--
CREATE DATABASE IF NOT EXISTS `laravel_test_authorization` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_test_authorization`;

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
(3, '2018_06_01_034713_create_roles_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_post` tinyint(1) NOT NULL,
  `edit_post` tinyint(1) NOT NULL,
  `update_post` tinyint(1) NOT NULL,
  `delete_post` tinyint(1) NOT NULL,
  `enquiry` tinyint(1) NOT NULL,
  `account` tinyint(1) NOT NULL,
  `document` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `user_id`, `create_post`, `edit_post`, `update_post`, `delete_post`, `enquiry`, `account`, `document`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, 0, 1, 1, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kolitha Gunawardhana Nilame', 'dvkolitha@gmail.com', '$2y$10$LXF1geJ.cpv4QNUJDCrntuLgeH7dTlHy1iWQqYD0ZtFATir9Em4ZK', NULL, '2018-05-31 22:31:11', '2018-05-31 22:31:11');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravel_test_mail`
--
CREATE DATABASE IF NOT EXISTS `laravel_test_mail` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_test_mail`;

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kolitha Gunawardhana Nilame', 'dvkolitha@gmail.com', '$2y$10$hOArdThnYjQ3cuB2np8h8uv81Pff11icldVvXPKLclG7IfJZ2kiNy', NULL, '2018-06-05 18:56:06', '2018-06-05 18:56:06');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravel_test_multiform_data`
--
CREATE DATABASE IF NOT EXISTS `laravel_test_multiform_data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_test_multiform_data`;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Balangoda', '2018-05-24 06:26:49', '2018-05-24 06:26:49'),
(2, 1, 'test', '2018-05-24 06:28:48', '2018-05-24 06:28:48'),
(3, 1, 'Rathnapura', '2018-05-24 11:07:06', '2018-05-24 11:07:06'),
(4, 1, 'sdsdsdsd', '2018-06-11 05:02:18', '2018-06-11 05:02:18'),
(5, 1, 'Nilame', '2018-06-11 05:02:51', '2018-06-11 05:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cultural', '2018-05-23 22:10:38', '2018-05-23 22:10:38'),
(2, 'Sigiriyaaaa', '2018-05-23 22:35:36', '2018-05-23 22:35:36'),
(3, 'Sigiriyaa', '2018-05-24 06:24:39', '2018-05-24 06:24:39'),
(4, 'Nilame', '2018-06-11 04:58:52', '2018-06-11 04:58:52'),
(5, 'dadad', '2018-06-11 04:59:00', '2018-06-11 04:59:00');

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
(3, '2018_05_14_180018_create_user_emails_table', 1),
(4, '2018_05_24_030808_create_countries_table', 2),
(5, '2018_05_24_030919_create_cities_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kolitha', 'dvkolitha@gmail.com', '$2y$10$U6kBjfpC.RIQA9VzPqvrNOjmENfdQwm1VI55icWu9NWiBZTveNbrG', NULL, '2018-05-23 01:53:40', '2018-05-23 01:53:40'),
(2, 'kolitha', 'channa@gmail.com', '$2y$10$FhJuGEC.yqSJhQN4YerUP.RfI/3cDhNIinlQe/MnnynmjslquldOq', NULL, '2018-05-23 21:47:43', '2018-05-23 21:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_emails`
--

CREATE TABLE `user_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_emails`
--

INSERT INTO `user_emails` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'asasas', 'dvwew@swws.com', '2018-05-23 01:55:12', '2018-05-23 01:55:12'),
(2, 'ss', 'dv@ss.com', '2018-05-23 01:55:12', '2018-05-23 01:55:12'),
(3, 'aaaaaaa', 'dvwew@swws.com', '2018-05-23 11:43:46', '2018-05-23 11:43:46'),
(4, 'kokokok', 'dv1@ss.com', '2018-05-23 11:43:47', '2018-05-23 11:43:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_emails`
--
ALTER TABLE `user_emails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_emails`
--
ALTER TABLE `user_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `laravel_unique-walkers`
--
CREATE DATABASE IF NOT EXISTS `laravel_unique-walkers` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_unique-walkers`;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
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
(3, '2018_01_10_175109_create_countries_table', 1),
(4, '2018_01_10_175133_create_sectors_table', 1),
(5, '2018_02_19_102148_create_photos_table', 1),
(6, '2018_02_20_071900_create_links_table', 1),
(7, '2018_02_20_092128_create_themes_table', 1),
(8, '2018_02_20_143608_create_tour_packages_table', 1),
(9, '2018_02_21_090728_create_tour_package_details_table', 1),
(10, '2018_03_28_150259_create_web_themes_table', 1),
(11, '2018_03_28_170501_add_position_column_to_themes_table', 1),
(12, '2018_03_29_113715_add_position_column_to_tour_packages_table', 1),
(13, '2018_04_02_120847_add_columns_to_photos_table', 1),
(14, '2018_04_02_122012_create_photos_themes_table', 1),
(15, '2018_04_03_022956_create_theme_configures_table', 1),
(16, '2018_04_05_035119_create_tour_package_configures_table', 1),
(17, '2018_04_07_044941_create_sightseeings_table', 1),
(18, '2018_04_07_054012_create_sightseeing_configures_table', 1),
(19, '2018_04_07_055226_add_sightseeings_to_photo_table', 1),
(20, '2018_04_07_080941_add_sightseeing_gallery_column_to_photos_table', 1),
(21, '2018_04_07_085849_create_sector_configures_table', 1),
(22, '2018_04_07_100317_add_sectors_to_photo_table', 1),
(23, '2018_04_09_070140_add_description_column_to_sector_table', 1),
(24, '2018_04_12_080504_create_news_sections_table', 1),
(25, '2018_04_12_082540_add_news_id_column_to_photos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_sections`
--

CREATE TABLE `news_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `heading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `tour_package_id` int(11) DEFAULT NULL,
  `theme_main` tinyint(1) DEFAULT NULL,
  `tour_package_main` tinyint(1) DEFAULT NULL,
  `theme_gallery` tinyint(1) DEFAULT NULL,
  `tour_package_gallery` tinyint(1) DEFAULT NULL,
  `sightseeing_id` int(11) DEFAULT NULL,
  `sightseeing_main` tinyint(1) DEFAULT NULL,
  `sightseeing_gallery` tinyint(1) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL,
  `sector_main` tinyint(1) DEFAULT NULL,
  `sector_gallery` tinyint(1) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `user_id`, `created_at`, `updated_at`, `theme_id`, `tour_package_id`, `theme_main`, `tour_package_main`, `theme_gallery`, `tour_package_gallery`, `sightseeing_id`, `sightseeing_main`, `sightseeing_gallery`, `sector_id`, `sector_main`, `sector_gallery`, `news_id`) VALUES
(1, 'travel-3099553_1920.jpg', 0, '2018-06-03 23:38:55', '2018-06-03 23:38:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '6.gif', 0, '2018-06-04 00:41:07', '2018-06-04 00:41:08', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'sigiriya1.jpg', 0, '2018-10-04 22:07:16', '2018-10-04 22:07:16', NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'sigiri3.jpg', 0, '2018-10-04 22:08:22', '2018-10-04 22:08:22', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '12.jpg', 0, '2018-10-04 22:09:13', '2018-10-04 22:09:13', NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photos_themes`
--

CREATE TABLE `photos_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_id` int(11) NOT NULL,
  `max_gallery_photos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos_themes`
--

INSERT INTO `photos_themes` (`id`, `theme_id`, `max_gallery_photos`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2018-06-04 00:41:08', '2018-06-04 00:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sector_configures`
--

CREATE TABLE `sector_configures` (
  `id` int(10) UNSIGNED NOT NULL,
  `sector_id` int(11) NOT NULL,
  `max_gallery_photos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sightseeings`
--

CREATE TABLE `sightseeings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sightseeing_configures`
--

CREATE TABLE `sightseeing_configures` (
  `id` int(10) UNSIGNED NOT NULL,
  `sightseeing_id` int(11) NOT NULL,
  `max_gallery_photos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(11) NOT NULL DEFAULT '0',
  `is_publish` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `description`, `photo_id`, `is_publish`, `created_at`, `updated_at`, `position`) VALUES
(1, 'Cultural', 'sdsd', 2, 1, '2018-06-04 00:41:08', '2018-06-04 00:41:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theme_configures`
--

CREATE TABLE `theme_configures` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tour_packages`
--

CREATE TABLE `tour_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_id` int(11) NOT NULL,
  `number_of_nights` int(11) NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_packages`
--

INSERT INTO `tour_packages` (`id`, `name`, `theme_id`, `number_of_nights`, `number_of_days`, `description`, `photo_id`, `is_publish`, `created_at`, `updated_at`, `position`) VALUES
(1, 'Sigiriyaa', 1, 5, 4, 'kojko', 3, 1, '2018-10-04 22:07:16', '2018-10-04 22:07:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tour_package_configures`
--

CREATE TABLE `tour_package_configures` (
  `id` int(10) UNSIGNED NOT NULL,
  `tour_package_id` int(11) NOT NULL,
  `max_gallery_photos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tour_package_configures`
--

INSERT INTO `tour_package_configures` (`id`, `tour_package_id`, `max_gallery_photos`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2018-10-04 22:07:16', '2018-10-04 22:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `tour_package_details`
--

CREATE TABLE `tour_package_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `tour_package_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `sector` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic_number` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logged` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `photo_id`, `address`, `nic_number`, `email`, `password`, `logged`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kolitha', 'Gunawardhana', 'Nilame', 1, 'sdsd', 901631644, 'dvkolitha@gmail.com', '$2y$10$NKwRJZ4NqB7s26JJ44jw4..t5.CkMk2zYvsRUNSuNGUv1ToKdyOJK', 0, NULL, '2018-06-03 23:38:56', '2018-06-03 23:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `web_themes`
--

CREATE TABLE `web_themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_sections`
--
ALTER TABLE `news_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_themes`
--
ALTER TABLE `photos_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sector_configures`
--
ALTER TABLE `sector_configures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sightseeings`
--
ALTER TABLE `sightseeings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sightseeing_configures`
--
ALTER TABLE `sightseeing_configures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_configures`
--
ALTER TABLE `theme_configures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_packages`
--
ALTER TABLE `tour_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_package_configures`
--
ALTER TABLE `tour_package_configures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_package_details`
--
ALTER TABLE `tour_package_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_themes`
--
ALTER TABLE `web_themes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news_sections`
--
ALTER TABLE `news_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `photos_themes`
--
ALTER TABLE `photos_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sector_configures`
--
ALTER TABLE `sector_configures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sightseeings`
--
ALTER TABLE `sightseeings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sightseeing_configures`
--
ALTER TABLE `sightseeing_configures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_configures`
--
ALTER TABLE `theme_configures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tour_packages`
--
ALTER TABLE `tour_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tour_package_configures`
--
ALTER TABLE `tour_package_configures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tour_package_details`
--
ALTER TABLE `tour_package_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_themes`
--
ALTER TABLE `web_themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-10-08 16:49:34', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":219}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
