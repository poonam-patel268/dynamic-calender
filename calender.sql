-- phpMyAdmin SQL Dump
-- version 5.1.4deb1+focal1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2022 at 04:05 PM
-- Server version: 8.0.31-0ubuntu0.20.04.2
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calender`
--

-- --------------------------------------------------------

--
-- Table structure for table `calanders`
--

CREATE TABLE `calanders` (
  `id` bigint UNSIGNED NOT NULL,
  `no_of_working_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_subjects_per_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calanders`
--

INSERT INTO `calanders` (`id`, `no_of_working_days`, `no_of_subjects_per_day`, `created_at`, `updated_at`) VALUES
(1, '2', '2', '2022-12-30 04:46:48', '2022-12-30 04:46:48'),
(2, '2', '2', '2022-12-30 04:48:33', '2022-12-30 04:48:33'),
(3, '2', '2', '2022-12-30 04:48:37', '2022-12-30 04:48:37'),
(4, '2', '2', '2022-12-30 04:49:21', '2022-12-30 04:49:21'),
(5, '2', '2', '2022-12-30 04:49:38', '2022-12-30 04:49:38'),
(6, '2', '2', '2022-12-30 04:50:09', '2022-12-30 04:50:09'),
(7, '2', '2', '2022-12-30 04:50:40', '2022-12-30 04:50:40'),
(8, '3', '3', '2022-12-30 04:50:48', '2022-12-30 04:50:48'),
(9, '3', '3', '2022-12-30 04:54:27', '2022-12-30 04:54:27'),
(10, '3', '3', '2022-12-30 04:54:39', '2022-12-30 04:54:39'),
(11, '3', '3', '2022-12-30 04:54:43', '2022-12-30 04:54:43'),
(12, '3', '3', '2022-12-30 04:55:04', '2022-12-30 04:55:04'),
(13, '5', '3', '2022-12-30 04:55:14', '2022-12-30 04:55:14'),
(14, '5', '3', '2022-12-30 04:55:20', '2022-12-30 04:55:20'),
(15, '5', '3', '2022-12-30 04:55:42', '2022-12-30 04:55:42'),
(16, '5', '3', '2022-12-30 04:57:37', '2022-12-30 04:57:37'),
(17, '5', '3', '2022-12-30 04:57:47', '2022-12-30 04:57:47'),
(18, '5', '3', '2022-12-30 04:59:48', '2022-12-30 04:59:48'),
(19, '5', '3', '2022-12-30 05:02:35', '2022-12-30 05:02:35'),
(20, '5', '3', '2022-12-30 05:02:40', '2022-12-30 05:02:40'),
(21, '5', '3', '2022-12-30 05:02:50', '2022-12-30 05:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_30_083259_create_calanders_table', 1),
(6, '2022_12_30_083527_create_subjects_table', 1),
(7, '2022_12_30_084447_create_subject_per_days_table', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gujarati', '2022-12-30 04:46:31', '2022-12-30 04:46:31'),
(2, 'English', '2022-12-30 04:46:31', '2022-12-30 04:46:31'),
(3, 'Hindi', '2022-12-30 04:46:31', '2022-12-30 04:46:31'),
(4, 'Finnish', '2022-12-30 04:46:31', '2022-12-30 04:46:31'),
(5, 'Marathi', '2022-12-30 04:46:31', '2022-12-30 04:46:31'),
(6, 'Tamil', '2022-12-30 04:46:31', '2022-12-30 04:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `subject_per_days`
--

CREATE TABLE `subject_per_days` (
  `id` bigint UNSIGNED NOT NULL,
  `calender_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_per_days`
--

INSERT INTO `subject_per_days` (`id`, `calender_id`, `subject_id`, `hours`, `created_at`, `updated_at`) VALUES
(3, 8, 1, '1', '2022-12-30 04:50:48', '2022-12-30 04:50:48'),
(4, 8, 2, '1', '2022-12-30 04:50:48', '2022-12-30 04:50:48'),
(5, 9, 1, '1', '2022-12-30 04:54:27', '2022-12-30 04:54:27'),
(6, 9, 2, '1', '2022-12-30 04:54:27', '2022-12-30 04:54:27'),
(7, 10, 1, '1', '2022-12-30 04:54:39', '2022-12-30 04:54:39'),
(8, 10, 2, '1', '2022-12-30 04:54:39', '2022-12-30 04:54:39'),
(9, 11, 1, '1', '2022-12-30 04:54:43', '2022-12-30 04:54:43'),
(10, 11, 2, '1', '2022-12-30 04:54:43', '2022-12-30 04:54:43'),
(11, 12, 1, '1', '2022-12-30 04:55:04', '2022-12-30 04:55:04'),
(12, 12, 2, '1', '2022-12-30 04:55:04', '2022-12-30 04:55:04'),
(13, 13, 1, '1', '2022-12-30 04:55:14', '2022-12-30 04:55:14'),
(14, 13, 2, '1', '2022-12-30 04:55:14', '2022-12-30 04:55:14'),
(15, 13, 3, '1', '2022-12-30 04:55:14', '2022-12-30 04:55:14'),
(16, 14, 1, '1', '2022-12-30 04:55:20', '2022-12-30 04:55:20'),
(17, 14, 2, '1', '2022-12-30 04:55:20', '2022-12-30 04:55:20'),
(18, 14, 3, '1', '2022-12-30 04:55:20', '2022-12-30 04:55:20'),
(19, 15, 1, '1', '2022-12-30 04:55:42', '2022-12-30 04:55:42'),
(20, 15, 2, '1', '2022-12-30 04:55:42', '2022-12-30 04:55:42'),
(21, 15, 3, '1', '2022-12-30 04:55:42', '2022-12-30 04:55:42'),
(22, 16, 1, '1', '2022-12-30 04:57:37', '2022-12-30 04:57:37'),
(23, 16, 2, '1', '2022-12-30 04:57:37', '2022-12-30 04:57:37'),
(24, 16, 3, '1', '2022-12-30 04:57:37', '2022-12-30 04:57:37'),
(25, 17, 1, '1', '2022-12-30 04:57:47', '2022-12-30 04:57:47'),
(26, 17, 2, '1', '2022-12-30 04:57:47', '2022-12-30 04:57:47'),
(27, 17, 3, '1', '2022-12-30 04:57:47', '2022-12-30 04:57:47'),
(28, 18, 1, '1', '2022-12-30 04:59:48', '2022-12-30 04:59:48'),
(29, 18, 2, '1', '2022-12-30 04:59:48', '2022-12-30 04:59:48'),
(30, 18, 3, '1', '2022-12-30 04:59:48', '2022-12-30 04:59:48'),
(31, 19, 1, '1', '2022-12-30 05:02:35', '2022-12-30 05:02:35'),
(32, 19, 2, '1', '2022-12-30 05:02:35', '2022-12-30 05:02:35'),
(33, 19, 3, '1', '2022-12-30 05:02:35', '2022-12-30 05:02:35'),
(34, 20, 1, '1', '2022-12-30 05:02:40', '2022-12-30 05:02:40'),
(35, 20, 2, '1', '2022-12-30 05:02:40', '2022-12-30 05:02:40'),
(36, 20, 3, '1', '2022-12-30 05:02:40', '2022-12-30 05:02:40'),
(37, 21, 1, '1', '2022-12-30 05:02:50', '2022-12-30 05:02:50'),
(38, 21, 2, '1', '2022-12-30 05:02:50', '2022-12-30 05:02:50'),
(39, 21, 3, '1', '2022-12-30 05:02:50', '2022-12-30 05:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calanders`
--
ALTER TABLE `calanders`
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
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_per_days`
--
ALTER TABLE `subject_per_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_per_days_subject_id_foreign` (`subject_id`),
  ADD KEY `subject_per_days_calender_id_foreign` (`calender_id`);

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
-- AUTO_INCREMENT for table `calanders`
--
ALTER TABLE `calanders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subject_per_days`
--
ALTER TABLE `subject_per_days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `subject_per_days`
--
ALTER TABLE `subject_per_days`
  ADD CONSTRAINT `subject_per_days_calender_id_foreign` FOREIGN KEY (`calender_id`) REFERENCES `calanders` (`id`),
  ADD CONSTRAINT `subject_per_days_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
