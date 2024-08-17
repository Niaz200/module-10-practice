-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 03:26 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m10c1`
--

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2024_05_28_152955_create_profiles_table', 1),
(26, '2024_05_28_175547_add_status_in_profiles', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT 'BD',
  `age` int(11) NOT NULL DEFAULT 18,
  `birthdate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `phone_number`, `country`, `age`, `birthdate`, `created_at`, `updated_at`, `user_id`, `status`) VALUES
(1, 'Esmeralda', 'Kozey', '(520) 212-7451', 'BD', 51, '1972-10-12', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 1, 'inactive'),
(2, 'Kayli', 'Ernser', '+1 (507) 235-6898', 'BD', 20, '1977-04-02', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 2, 'inactive'),
(3, 'Olin', 'Zboncak', '+1.772.455.9593', 'BD', 50, '2014-02-25', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 3, 'inactive'),
(4, 'Abdiel', 'Legros', '+1 (646) 541-7338', 'BD', 32, '2020-10-19', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 4, 'inactive'),
(5, 'Dakota', 'Hahn', '(281) 259-3204', 'BD', 50, '2023-10-28', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 5, 'inactive'),
(6, 'Jackie', 'Rippin', '+1 (865) 528-0661', 'BD', 41, '2023-09-19', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 6, 'inactive'),
(7, 'Virgie', 'Bartoletti', '+1 (559) 875-8815', 'BD', 29, '2022-06-12', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 7, 'inactive'),
(8, 'Norris', 'Hoppe', '360-956-2632', 'BD', 49, '1990-09-12', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 8, 'inactive'),
(9, 'Vita', 'Prosacco', '971-871-1508', 'BD', 41, '2011-08-29', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 9, 'inactive'),
(10, 'Shaun', 'Ebert', '205-660-8529', 'BD', 45, '1980-05-01', '2024-05-29 03:36:18', '2024-05-29 03:36:18', 10, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Reuben Stehr', 'candida.sawayn@example.com', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'eYifVRwR7M', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(2, 'Flavio Schmidt', 'gustave57@example.org', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'X3hne1b2Y5', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(3, 'Arlo Lesch', 'rosalia.little@example.net', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'w2s0ZOvsEc', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(4, 'Matt Fahey Jr.', 'taylor63@example.org', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'wdx7QjMTjm', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(5, 'Quentin Yost IV', 'heather.jacobson@example.org', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'HQJqrq3hac', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(6, 'Moses Veum II', 'justine.watsica@example.com', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'mP0aQmXX8a', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(7, 'Fredy Conn', 'ybarton@example.org', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'e18Pat7ALc', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(8, 'Reyna Stracke', 'dgreenholt@example.org', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'mMl6GlnVNN', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(9, 'Ferne Fadel', 'millie.hartmann@example.org', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'dWv5gQXjBX', '2024-05-29 03:36:18', '2024-05-29 03:36:18'),
(10, 'Prof. Xavier Grant', 'kutch.earline@example.com', '2024-05-29 03:36:18', '$2y$12$rjrRmxQvkIXkp.zcXNq6Lufy.BE2twW7EoUWVnh611NkO4xNgrusi', 'NtVDhsGtKA', '2024-05-29 03:36:18', '2024-05-29 03:36:18');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_phone_number_unique` (`phone_number`),
  ADD KEY `profiles_first_name_index` (`first_name`),
  ADD KEY `profiles_last_name_index` (`last_name`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
