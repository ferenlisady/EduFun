-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2024 at 05:27 PM
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
-- Database: `edufun`
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
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Data Science', '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(2, 'Network Security', '2024-11-03 11:40:34', '2024-11-03 11:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `description`, `image_url`, `writer_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Machine Learning', 'Perspiciatis consequuntur suscipit ea. Velit et ut quo occaecati. Eos ex vel dolorem et aut quasi. Deserunt illo expedita assumenda eligendi esse nihil pariatur. Maiores in nisi blanditiis quisquam quibusdam quis. Quia voluptate aut saepe nisi omnis quis quisquam. Aliquam mollitia aliquid qui ut nihil. Exercitationem quod vero fugit quia provident. Exercitationem aut unde nesciunt minima. Maiores et facere quo quae molestiae. Culpa at quia minus reprehenderit aut. Ut maxime inventore sapiente perferendis molestiae et.\n\nQui eum ut amet reprehenderit inventore maiores qui. Sint qui suscipit sed. Consequatur vero ipsa ea architecto illo quo. Aut dolorum ex voluptate et dolor. Odit quia natus eaque debitis et. Omnis dolor dolore praesentium et earum similique ipsa. Est iste fugit aut sunt. Ipsa rerum culpa nostrum repudiandae ducimus est. Doloremque possimus quam hic velit. Repellendus est voluptate qui. Culpa perferendis nostrum rerum quia architecto excepturi aut. Qui voluptatem consequatur corrupti itaque corporis recusandae optio. Eligendi culpa optio non et. Necessitatibus velit molestiae corporis non.', 'assets/machine_learning.jpg', 1, 1, '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(2, 'Deep Learning', 'Laudantium voluptatem provident incidunt asperiores iusto non. Facilis et quisquam ullam culpa aut aut veritatis. Aut quis iusto laudantium excepturi reprehenderit numquam aut reiciendis. Fugit ea fuga et alias id necessitatibus. Eum molestiae excepturi dolorem beatae ipsam numquam. In soluta consequatur et beatae beatae minus suscipit. Amet ut ea praesentium tenetur omnis est provident qui. Cumque voluptatem occaecati vel fuga. Voluptates mollitia odio ut voluptatem cupiditate. Animi rem sed repellat et vel et. Ea et quisquam facilis fugiat suscipit ab.\n\nDolore itaque voluptas commodi consequatur esse quia. Molestiae consequatur itaque doloremque eveniet est. Illo dolorem rerum et dolorem autem voluptatem. Et quos consequatur ullam in nulla nam. Non ut expedita sit laboriosam. Voluptatem in labore dolorem non voluptatem aut. Id at eum recusandae eum quaerat. Voluptatibus at quos expedita officiis. Ut vitae voluptatem repellat ullam sunt.', 'assets/deep_learning.jpeg', 3, 1, '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(3, 'Natural Language Processing', 'Tenetur ad et similique modi. Inventore dolor blanditiis nemo eos officia. Molestias nesciunt sunt ut et eaque cupiditate voluptatem. Nulla suscipit blanditiis laboriosam soluta animi nesciunt pariatur. Dolorem perferendis nam expedita dolor error et. Quidem eos non commodi temporibus ea. Qui amet sit corporis voluptas dolorem quia. Voluptas voluptate et porro quas optio eum deleniti voluptatem. Officia itaque est quis odit et. Est exercitationem enim cum vero et aut voluptates. Tenetur illo doloribus velit ipsa libero praesentium quas. Voluptas aspernatur error ea eos. Animi excepturi inventore voluptas quos sapiente repudiandae sapiente.\n\nNatus dolor omnis et porro sint impedit. Atque non labore ut corrupti recusandae quidem at. Aliquam ipsa voluptas excepturi nemo eum neque. Ea ut quibusdam et dolorem aliquam aperiam sunt. Enim unde earum sit rem. Enim aliquid at sit et. Ex eius sit ab.', 'assets/natural_language_processing.jpg', 2, 1, '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(4, 'Software Security', 'Pariatur culpa voluptatem placeat nulla similique. Distinctio velit aut ipsum at ea nihil qui. Odit est accusamus perspiciatis atque earum est. Temporibus sint dolor quas amet quas quos. Ea laborum praesentium explicabo consequatur fuga. Dolorem accusamus nemo velit rerum. Autem hic voluptatibus quia consequuntur vero.\n\nDicta totam vel quod quae qui. Qui in ut optio commodi quod. Perspiciatis animi aspernatur cum quia aut aut. Voluptatibus sequi dolor explicabo et voluptatem aut. Voluptatem aliquam tenetur et quae. Aut voluptate illum omnis quisquam dignissimos cupiditate. Aliquid error autem soluta odio quidem.', 'assets/software_security.jpg', 2, 2, '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(5, 'Network Administration', 'Temporibus non eos ducimus quas sit numquam aut. Quasi distinctio odio nisi voluptatem. Aut dolorem et provident. Odit consequuntur sed repudiandae saepe libero sunt id ut. Doloremque tempore optio suscipit ullam. Qui voluptates ea laborum ex atque dolor. Possimus non cumque omnis qui.\n\nSunt quis dolore quis autem vero voluptatum. Occaecati doloribus asperiores nesciunt voluptatem id. Amet rerum neque ut sint. Et libero ullam exercitationem aut expedita magni et. Voluptatum qui corrupti a nemo suscipit aperiam accusantium. Amet vitae veniam quae quo assumenda est. Eius ipsum ut consequatur amet. Et culpa et quia illo qui. Eum veniam ullam eum est ea eos tempore deleniti. Error non minus occaecati animi placeat tempora et. Voluptatum illum voluptas rem cumque sunt. Aperiam non sint eos quos voluptatem dolorum quis.', 'assets/network_administration.jpg', 3, 2, '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(6, 'Popular Network Technology', 'Rerum et possimus dolorum eius commodi expedita nostrum. Eaque officiis nulla voluptate adipisci ea. Autem laboriosam et est consequuntur. Quo voluptatum in consequatur et. Corrupti laudantium quo repellat non voluptatibus tempore consectetur. Culpa aut reiciendis et quibusdam provident ut. Consequatur velit molestiae cum perferendis ipsam in et. Quos distinctio deserunt eveniet perspiciatis natus quasi. Vel maxime blanditiis ut ea sed dignissimos error. Et voluptas maxime maxime ipsam autem.\n\nEsse est odio in ea nihil culpa voluptatem quos. Repudiandae et velit adipisci voluptatibus. Nam laborum perspiciatis ad consequatur velit autem nulla. Necessitatibus porro sit in nisi ad ipsa. Qui eveniet quae dolores sequi. Tempora aut adipisci ut exercitationem accusantium. Autem quo officiis eos iure est temporibus qui. Reiciendis perferendis doloribus ipsa eaque nisi labore sit totam.', 'assets/popular_network_technology.jpg', 1, 2, '2024-11-03 11:40:34', '2024-11-03 11:40:34');

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
(4, '2024_11_03_045004_create_writers_table', 1),
(5, '2024_11_03_051648_create_categories_table', 1),
(6, '2024_11_03_053930_create_courses_table', 1);

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
('BiPxtTxKUXLIKKTIWv6e8bKQgvezQOVHNNDatFGv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjA3ekZSdG9PYTBDTGlOd0pXbG1TME5GTE9WekZLQ0xWdEI4d0xVcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXRlZ29yeS9kYXRhLXNjaWVuY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1730832218),
('FKtzLWJGsMC3FDuIYPx0MaNeJPpLlenPdshergnh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0oydjU4d3dqa0VudlVoQ3dKSWlXUFczN2Rpd0g5dk1ac0d4Yks1SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730996676);

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

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `specialist`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Raka Putra Wicaksono', 'Spesialis Interactive Multimedia', 'assets/raka.png', '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(2, 'Bia Mecca Annisa', 'Spesialis Data Science', 'assets/bia.png', '2024-11-03 11:40:34', '2024-11-03 11:40:34'),
(3, 'Abi Firmansyah', 'Spesialis Network Security', 'assets/abi.png', '2024-11-03 11:40:34', '2024-11-03 11:40:34');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_writer_id_foreign` (`writer_id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

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
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courses_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
