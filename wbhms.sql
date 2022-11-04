-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2022 at 10:09 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbhms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `phone`, `doctor`, `date`, `message`, `status`, `user_id`, `created_at`, `updated_at`, `doctor_id`, `file`, `payment_status`) VALUES
(10, 'Junaeid Shoaib', 'junaeidshoaib@gmail.com', '01711144445', 'Dr. Istak Ahmed', '01711144445', 'nice', 'Canceled', NULL, '2022-07-23 09:01:24', '2022-09-06 13:48:14', NULL, NULL, NULL),
(15, 'Junaeid Shoaib', 'abu15-2316@diu.edu.bd', '01711144445', 'Dr.Nabil', '2022-07-01', 'need help', 'Approved', NULL, '2022-07-28 07:37:19', '2022-09-06 13:48:46', NULL, NULL, NULL),
(16, 'Junaeid_Shoaib', 'istak15-12037@diu.edu.bd', '01711144445', 'Dr.Nabil', '2022-07-01', 'jjj', 'Approved', NULL, '2022-07-28 08:06:22', '2022-09-06 13:48:47', NULL, NULL, NULL),
(17, 'john', 'perfecthumancool@gmail.com', '01735112233', 'Dr. Junaeid Shoaib', '2022-08-10', 'm', 'Approved', NULL, '2022-08-08 06:47:57', '2022-09-06 13:48:48', NULL, NULL, NULL),
(19, 'Junaeid Shoaib', 'junaeidshoaib@gmail.com', '01711144445', 'Dr.Nabil', '2022-08-11', 'drh', 'Approved', '5', '2022-08-08 12:43:05', '2022-09-06 13:48:49', NULL, NULL, NULL),
(27, 'Kabila', 'junaeidshoaib@gmail.com', '01711144445', 'Dr.Nabil', '2022-08-05', 'help', 'In Progress', '5', '2022-08-16 11:43:00', '2022-08-16 11:43:00', NULL, NULL, NULL),
(28, 'Zahid', 'junaeidshoaib@gmail.com', '01711144445', 'Dr. Junaeid Shoaib', '2022-09-09', 'm', 'In Progress', '5', '2022-09-04 17:39:15', '2022-09-05 14:34:12', '7', '1662334941.pdf', 'Paid'),
(29, 'Moris', 'abu15-2316@diu.edu.bd', '01711144445', 'Dr. Istak Ahmed', '2022-09-03', 'YYYY', 'In Progress', '5', '2022-09-05 14:28:52', '2022-09-05 14:29:42', NULL, NULL, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `phone`, `speciality`, `room`, `image`, `created_at`, `updated_at`) VALUES
(20, 'Dr. Junaeid Shoaib', '01735112233', 'Surgery', '102', '1657130637.jpg', '2022-07-06 12:03:57', '2022-07-06 12:03:57'),
(21, 'Dr.Nabil', '01711144445', 'Heart', '101', '1657130664.jpg', '2022-07-06 12:04:24', '2022-07-06 12:04:24'),
(23, 'Dr. Istak Ahmed', '01622337656', 'Neurology', '69', '1660656608.jpg', '2022-07-25 11:01:34', '2022-09-05 04:02:13'),
(24, 'Dr. Putin', '01735112233', 'Medicine', '101', '1662372191.png', '2022-09-05 04:03:11', '2022-09-05 04:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_23_085400_create_sessions_table', 1),
(7, '2022_06_24_142430_create_doctors_table', 2),
(8, '2022_07_23_135027_create_appointments_table', 3),
(9, '2022_07_28_130034_create_notifications_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
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
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`, `doctor`) VALUES
(36, 'Junaeid Shoaib', 'junaeidshoaib@gmail.com', '01735115596', 1000, '93 B, New Eskaton Road', 'Pending', '631651bf29428', 'BDT', 'Dr. Junaeid Shoaib'),
(37, 'Junaeid Shoaib', 'junaeidshoaib@gmail.com', '01735115596', 1000, '93 B, New Eskaton Road', 'Pending', '63165309e48d9', 'BDT', 'Dr. Junaeid Shoaib'),
(38, 'Junaeid Shoaib', 'junaeidshoaib@gmail.com', '01735115596', 1000, 'T-2,F-11,keari buruj , 7/1 kallyanpur,mirpur road, Dhaka', 'Pending', '6316538531283', 'BDT', 'Dr.Nabil');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@gmail.com', '01735435435', '565454y5y', '1', '2022-07-19 16:55:16', '$2y$10$WoiwbC5rddXSl2B/xdP8C.TlrmnkWLb6lCELhc93/uT6.VItHH80.', NULL, NULL, NULL, 'UubvpQ3YgCPralN0SITYdBqcCu5cr11A3N3JDrt5CmpySnN1QQKmACFbVfCT', NULL, NULL, '2022-06-23 03:31:03', '2022-06-23 03:31:03'),
(3, 'Istak Ahmed', 'istakahmedjim@yahoo.com', '01622337656', 'USA', '0', '2022-07-25 10:53:22', '$2y$10$B4VOCbdRIPRj9rjlakJcquX8y2gYgKr6nG/najjvG9ONUPbCGm7IW', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25 10:51:34', '2022-07-25 10:53:22'),
(4, 'nabil', 'nabil15-11960@diu.edu.bd', '01521216334', 'ka-16', '0', NULL, '$2y$10$yrOqXuQAisOcOc0Z26S69uMGIT6OO0x0SDXgKNpmtXGIRD51SUTqa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 23:13:10', '2022-08-03 23:13:10'),
(5, 'john', 'perfecthumancool@gmail.com', '01735115596', 'T-2,F-11,keari buruj , 7/1 kallyanpur,mirpur road, Dhaka', '0', '2022-08-08 06:50:39', '$2y$10$5xgqsBZy4O9g3ul18QiRVeR5iPTdxqALmGANFo2nmWeDzxWQCovMO', NULL, NULL, NULL, 'UVoA2pfC2IV8Yr6kdoxpot3CNh3omkgNozig0NBlDAQolZbU9JpxVTeGNYEc', NULL, NULL, '2022-08-08 06:50:04', '2022-08-08 06:50:39'),
(7, 'Dr. Junaeid Shoaib', 'abu15-2316@diu.edu.bd', '01735115596', 'T-2,F-11,keari buruj , 7/1 kallyanpur,mirpur road, Dhaka', '2', '2022-08-08 07:55:31', '$2y$10$TZmmdoHfOKAr8z3eLmS.keu3cMue6kaJ0VCgB4FKSyY0d.OX0jdDW', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-08 07:54:48', '2022-08-08 07:55:31'),
(10, 'Dr. Istak Ahmed', 'junaeidshoaib@gmail.com', '01735115596', 'T-2,F-11,keari buruj , 7/1 kallyanpur,mirpur road, Dhaka', '2', '2022-09-05 07:54:12', '$2y$10$1NX7pumzYaMARCEF2WfGn.O.QmgdUqLq4cUhejm0fxwWqmj8u16aS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 07:46:46', '2022-09-05 07:54:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
