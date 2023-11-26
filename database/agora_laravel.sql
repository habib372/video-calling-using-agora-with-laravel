-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 02:42 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agora_laravel`
--

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
-- Table structure for table `meeting_entries`
--

CREATE TABLE `meeting_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `random_user` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_entries`
--

INSERT INTO `meeting_entries` (`id`, `user_id`, `random_user`, `name`, `url`, `status`, `created_at`, `updated_at`, `channel`, `event`) VALUES
(1, 1, 570668, 'habib', 'k02XLpy', 1, '2023-11-25 00:11:34', '2023-11-25 00:11:40', 'agora7332', 'qrGlL'),
(2, 1, 958483, 'ga', 'k02XLpy', 1, '2023-11-25 00:14:23', '2023-11-25 00:14:27', 'agora7332', '9SVSL'),
(3, 2, 1, NULL, 'zBIHwix', 0, '2023-11-25 00:34:29', '2023-11-25 00:34:29', 'agora2612', 'XX7Hx'),
(4, 2, 1, NULL, 'zBIHwix', 0, '2023-11-25 00:51:54', '2023-11-25 00:51:54', 'agora2612', '8N9bs'),
(5, 2, 370976, 'hhh', 'zBIHwix', 1, '2023-11-25 00:52:23', '2023-11-25 00:52:29', 'agora2612', 'pc9VB'),
(6, 2, 1, NULL, 'zBIHwix', 0, '2023-11-25 01:18:13', '2023-11-25 01:18:13', 'agora2612', 'TV7sy'),
(7, 2, 334403, 'fdd', 'zBIHwix', 1, '2023-11-25 02:24:29', '2023-11-25 02:24:36', 'agora2612', '6k087'),
(8, 2, 189370, 'fdd', 'zBIHwix', 1, '2023-11-25 02:24:43', '2023-11-25 02:24:56', 'agora2612', '1CoLn'),
(9, 2, 584462, 'fddb', 'zBIHwix', 1, '2023-11-25 02:25:01', '2023-11-25 02:25:07', 'agora2612', 'DIkHL'),
(10, 4, 846379, NULL, 'SZirfzy', 0, '2023-11-25 03:22:49', '2023-11-25 03:22:49', 'agora5200', 'MTfZ9'),
(11, 1, 3, NULL, 'QMVzhYO', 0, '2023-11-25 03:28:33', '2023-11-25 03:28:33', 'agora7332', '0BEEF'),
(12, 3, 288902, NULL, 'TXQn2lf', 0, '2023-11-25 03:34:23', '2023-11-25 03:34:23', 'agora6671', 'Gqzgc'),
(13, 3, 265914, NULL, 'TXQn2lf', 0, '2023-11-25 03:40:11', '2023-11-25 03:40:11', 'agora6671', 'YuH1l'),
(14, 3, 638557, NULL, 'TXQn2lf', 0, '2023-11-25 03:41:23', '2023-11-25 03:41:23', 'agora6671', 'IPCYB'),
(15, 3, 913660, 'gg', 'TXQn2lf', 1, '2023-11-25 03:42:25', '2023-11-25 03:42:41', 'agora6671', 'TEnyt'),
(16, 3, 646572, NULL, 'TXQn2lf', 0, '2023-11-25 03:51:39', '2023-11-25 03:51:39', 'agora6671', '2J9iH'),
(17, 3, 856818, NULL, 'TXQn2lf', 0, '2023-11-25 03:52:59', '2023-11-25 03:52:59', 'agora6671', 'cwpuf'),
(18, 3, 887211, NULL, 'TXQn2lf', 0, '2023-11-25 03:53:48', '2023-11-25 03:53:48', 'agora6671', 'fwWaG'),
(19, 3, 244643, NULL, 'TXQn2lf', 0, '2023-11-25 03:54:17', '2023-11-25 03:54:17', 'agora6671', 'nDCyo'),
(20, 3, 321287, NULL, 'TXQn2lf', 0, '2023-11-25 03:57:34', '2023-11-25 03:57:34', 'agora6671', 'gZ6GM'),
(21, 3, 374390, NULL, 'TXQn2lf', 0, '2023-11-25 03:59:30', '2023-11-25 03:59:30', 'agora6671', 'nIuHD'),
(22, 3, 780231, NULL, 'TXQn2lf', 0, '2023-11-25 03:59:45', '2023-11-25 03:59:45', 'agora6671', '1q8gQ'),
(23, 3, 917107, NULL, 'TXQn2lf', 0, '2023-11-25 03:59:48', '2023-11-25 03:59:48', 'agora6671', 'ZanIN'),
(24, 3, 999788, NULL, 'TXQn2lf', 0, '2023-11-25 04:00:12', '2023-11-25 04:00:12', 'agora6671', 'Uf7mG'),
(25, 3, 768940, NULL, 'TXQn2lf', 0, '2023-11-25 04:00:21', '2023-11-25 04:00:21', 'agora6671', 'zBGAI'),
(26, 3, 583759, NULL, 'TXQn2lf', 0, '2023-11-25 04:00:29', '2023-11-25 04:00:29', 'agora6671', '2LPup'),
(27, 3, 350393, 'habib', 'cGQvtHX', 1, '2023-11-25 04:48:30', '2023-11-25 04:48:44', 'agora6671', 'D5cLT');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_28_174939_create_user_meetings_table', 2),
(6, '2023_06_28_175004_create_meeting_entries_table', 2),
(7, '2023_07_07_184902_alter_user_meetings_table', 2),
(8, '2023_07_07_184925_alter_meeting_entries_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'habib', 'habibsoft792@gmail.com', NULL, '$2y$10$PoBfcVd4SdthraK35v24G.a.VdbDXWfIxkxnV1A0S.QnajqmlCEt.', NULL, '2023-11-25 00:10:40', '2023-11-25 00:10:40'),
(2, 'Uttara Info Tech', 'admin@gmail.com', NULL, '$2y$10$L1d6gv3ChXWd7XLFJirIt..CsbYUeZROM8pWiu5z4XcUO0GS3BsWe', NULL, '2023-11-25 00:29:02', '2023-11-25 00:29:02'),
(3, 'Uttara Info', 'habibsoft372@gmail.com', NULL, '$2y$10$CBL1RdLYjD1DiY5/bwGmte1grn84bQ9oOkcoWu7UNEi4Z6J3j9mOS', NULL, '2023-11-25 02:34:49', '2023-11-25 02:34:49'),
(4, 'habib21', 'user@gmail.com', NULL, '$2y$10$xfmDYdAtvf.KQE2Fiyuq0O1MZyYIOEsN0ArXhflBzROZnHam.aj8S', NULL, '2023-11-25 03:06:37', '2023-11-25 03:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_meetings`
--

CREATE TABLE `user_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appCertificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meetings`
--

INSERT INTO `user_meetings` (`id`, `user_id`, `app_id`, `token`, `appCertificate`, `channel`, `url`, `uid`, `created_at`, `updated_at`, `event`) VALUES
(1, 1, '5389ce99db6342dbaa459e94cf9eefaf', '0065389ce99db6342dbaa459e94cf9eefafIACW7X5U/t8ZlFDzuBvL767pzHMhFn0I8MK/MjZW5XTWArFJFJ8AAAAAIgCxRwAAoQ9jZQQAAQAxzGFlAwAxzGFlAgAxzGFlBAAxzGFl\n', '3675008381924234a4f8e0e3c67b0270', 'agora7332', 'QMVzhYO', '59543', '2023-11-25 00:10:56', '2023-11-25 03:28:01', 'F1wOK'),
(2, 2, '9b298008afaf4a8cbbb9e2c826a6444a', '0069b298008afaf4a8cbbb9e2c826a6444aIAAmtrw/bKCYRJAa7m2TlYVDf7M6O8QVBGisWLP2Kd6G3+oZN5wAAAAAIgCNVQAAuuViZQQAAQBKomFlAwBKomFlAgBKomFlBABKomFl\n', 'ab2cd375db944e8cb5addd2a9fa04476', 'agora2612', 'zBIHwix', '89287', '2023-11-25 00:29:13', '2023-11-25 00:29:14', 'wpRYs'),
(3, 4, 'c02fcc8515584cd99cf8188eab892c32', '006c02fcc8515584cd99cf8188eab892c32IAA3WaieIl9lPuu0HLv5GkXElI2OTrYlU4AiS1/MhNNcjuLZ/PEAAAAAIgCqygAAWg5jZQQAAQDqymFlAwDqymFlAgDqymFlBADqymFl\n', '115f8ce7eda84f64b2d21aa45c9f588c', 'agora5200', 'SZirfzy', '16305', '2023-11-25 03:10:03', '2023-11-25 03:22:34', 'R6Rgt'),
(4, 3, 'ad78920af93245c388775eaa32b5aaef', '006ad78920af93245c388775eaa32b5aaefIAA/TwLw+CpsJrcK3HGrK8lE3M/i4R3HOBCrtJtxhMWlP4F4BtwAAAAAIgD/YAAAZkljZQQAAQD2BWJlAwD2BWJlAgD2BWJlBAD2BWJl\n', '2fb81fdc25804b158509b7b7cfd30675', 'agora6671', 'iWWqgir', '90561', '2023-11-25 03:29:43', '2023-11-25 07:34:29', 'ePgh9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `meeting_entries`
--
ALTER TABLE `meeting_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_entries_user_id_foreign` (`user_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_meetings`
--
ALTER TABLE `user_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meetings_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_entries`
--
ALTER TABLE `meeting_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_meetings`
--
ALTER TABLE `user_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meeting_entries`
--
ALTER TABLE `meeting_entries`
  ADD CONSTRAINT `meeting_entries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_meetings`
--
ALTER TABLE `user_meetings`
  ADD CONSTRAINT `user_meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
