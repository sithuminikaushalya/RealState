-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2024 at 12:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realstate`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('member@gmail.com|127.0.0.1', 'i:1;', 1721990721),
('member@gmail.com|127.0.0.1:timer', 'i:1721990721;', 1721990721);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_25_093236_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('yf6n9VJMJW0X582oPGUG8vcWAov6BGcPU6WQPDOF', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV1dRR1BmaWYzZWZTMThGY2lUQ2liMlFlRkxpMzI3MHVzYTViRnl5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1721990692);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','agent','user') NOT NULL DEFAULT 'user',
  `status` enum('active','enactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$12$wD8Z5ay4aDl3VL7qOAVzFub5yOit3e7FG5p6PqhiElavusDpq9SHS', NULL, NULL, NULL, 'admin', 'active', NULL, NULL, NULL),
(2, 'Member', 'member', 'member@gmail.com', NULL, '$2y$12$8F9ObGobItCLTFCHw9hAS.L.2s99D9OB8nekLUIe94FoWoX/At2wO', NULL, NULL, NULL, 'user', 'active', NULL, NULL, NULL),
(3, 'Staff', 'staff', 'staff@gmail.com', NULL, '$2y$12$N/OV0d6stDC10ZFrq5KaF.OfhbrvfKNIeL4o66gaj0jiIiZ3q0GWy', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(4, 'Anthony Wehner IV', NULL, 'madeline.schinner@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00bb88?text=qui', '203-549-5580', '194 Strosin Mountains\nRolandomouth, WV 90067', 'agent', 'enactive', 'v5KnEcwDEm', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(5, 'Rusty Simonis', NULL, 'angelica.kshlerin@example.org', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00eecc?text=aut', '+1 (856) 731-4174', '5515 Parker Landing\nSandyside, MN 75225-2197', 'user', 'active', 'tOeW0DLLcP', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(6, 'Schuyler Kulas II', NULL, 'stoltenberg.waylon@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/005566?text=illum', '1-848-393-3453', '38138 Schuppe Radial Suite 891\nMissouritown, NV 46092', 'agent', 'active', 'YyX1TW9Nkq', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(7, 'Kaleb Runolfsdottir', NULL, 'herman.garry@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/009955?text=quaerat', '+1 (831) 372-9051', '70532 Ashton Circles Apt. 692\nNorth Dominichaven, RI 72740', 'user', 'enactive', 'YqY693i1HN', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(8, 'Bridie Berge', NULL, 'gmayer@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/006622?text=sed', '+19033550577', '511 Audrey Haven\nLake Jeff, MI 38882', 'user', 'enactive', 'zqpRMVZrrG', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(9, 'Prof. Grady Klocko DDS', NULL, 'halvorson.susana@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/0022cc?text=officiis', '1-224-737-3006', '128 Cortez Cliff Suite 069\nJaronport, NC 54397', 'admin', 'active', '4fqAfLGFir', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(10, 'Cleora Sipes', NULL, 'bergstrom.jerrod@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00aa99?text=saepe', '458-467-0603', '166 Garfield Cove Apt. 270\nSashaland, ID 58664', 'agent', 'enactive', 'iiMswGWKh6', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(11, 'Creola Goyette', NULL, 'demmerich@example.net', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/003322?text=ea', '+1.937.323.2713', '1260 Tremblay View Suite 429\nWiegandchester, ND 89735-7315', 'admin', 'enactive', 'bNvmBV2Vv2', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(12, 'Ms. Ofelia Ullrich', NULL, 'supton@example.org', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00bb77?text=qui', '(469) 997-4912', '5063 Purdy Greens Suite 014\nLangworthtown, OK 63789', 'user', 'active', 'kh0jHq7ZUe', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(13, 'Keeley Hansen', NULL, 'shanelle15@example.org', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00ee44?text=est', '+1-334-265-2224', '7147 Willie Spur\nPort Sabina, ND 34229', 'agent', 'active', 'F7bmXNN7Yh', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(14, 'Emie Bauch', NULL, 'destin.stoltenberg@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/0000bb?text=porro', '(820) 582-1879', '8748 Schuster Dale Apt. 624\nBettyland, NM 97069', 'agent', 'active', 'o4eNLKrL3x', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(15, 'Shanny McClure', NULL, 'jaylon26@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/0066dd?text=tempore', '724.982.6431', '886 Mraz Summit Suite 422\nKleinburgh, WV 07340-3951', 'agent', 'active', '07Fl2gqcPl', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(16, 'Will Armstrong', NULL, 'alexis97@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/0099aa?text=sit', '1-559-873-1141', '24428 Therese Circle\nLaurettaburgh, AZ 36769', 'user', 'enactive', 'v4XDoSsBgl', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(17, 'Prof. Dexter Hudson Jr.', NULL, 'umcdermott@example.org', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00dd55?text=enim', '872.895.2714', '9745 Willa Streets\nSouth Winnifred, TX 73336', 'user', 'active', 'lsCT6z9nyR', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(18, 'Mrs. Patience Wolf', NULL, 'clehner@example.org', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00ee55?text=ducimus', '(262) 447-6255', '4714 Rusty Extensions\nOlsonland, CT 32014', 'user', 'active', 'KJSd8ANYlF', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(19, 'Laurine Glover', NULL, 'nfriesen@example.net', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00ff66?text=ut', '704-397-6871', '576 Hank Cove\nO\'Haratown, MN 16572', 'user', 'enactive', 'jiK2FSjL3j', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(20, 'Laverne Ledner', NULL, 'uankunding@example.org', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00aa33?text=vel', '+14346476415', '17518 Rodger Club\nLindsayshire, PA 96493', 'agent', 'active', 'gHd303KMrV', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(21, 'Patience Spencer', NULL, 'skyla87@example.net', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00eeee?text=est', '+1-608-331-9301', '9045 Gaylord Road Suite 646\nMyrnahaven, IN 82393', 'agent', 'active', 'QmJJ8MC8G9', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(22, 'Dr. Aubrey Heller I', NULL, 'lebsack.jayson@example.com', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/00bb44?text=suscipit', '1-517-987-0434', '79739 Wiegand Underpass\nSouth Hillary, NH 52208', 'user', 'enactive', 'dcNCZBNfhh', '2024-07-25 07:07:01', '2024-07-25 07:07:01'),
(23, 'Alene Stiedemann', NULL, 'letha.boyer@example.org', '2024-07-25 07:07:01', '$2y$12$M810X2SDDNJEDzNuXO1K9e6asBeoIdMd6d0U47jPzCPqtDOhX9AJC', 'https://via.placeholder.com/60x60.png/004400?text=nulla', '909.240.9655', '3059 Zoe Lane\nNew Owen, OK 41431-7319', 'admin', 'active', 'xovLZj2m5R', '2024-07-25 07:07:01', '2024-07-25 07:07:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
