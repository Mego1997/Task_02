-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 11:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskmorphic`
--

-- --------------------------------------------------------

--
-- Table structure for table `commentables`
--

CREATE TABLE `commentables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `commentable_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commentables`
--

INSERT INTO `commentables` (`id`, `comment`, `commentable_type`, `commentable_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(2, 'This is a comment for the post.', 'App\\Models\\Post', 1, NULL, '2023-05-21 05:48:00', '2023-05-21 05:48:00'),
(3, 'This is a reply to the comment.', 'App\\Models\\Comment', 2, 2, '2023-05-21 05:48:00', '2023-05-21 05:48:00'),
(4, 'This is a comment for the post.', 'App\\Models\\Post', 2, NULL, '2023-05-21 05:48:00', '2023-05-21 05:48:00'),
(5, 'This is a reply to the comment.', 'App\\Models\\Comment', 4, 4, '2023-05-21 05:48:00', '2023-05-21 05:48:00'),
(6, 'This is a comment for the post.', 'App\\Models\\Post', 3, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(7, 'This is a reply to the comment.', 'App\\Models\\Comment', 6, 6, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(8, 'This is a comment for the post.', 'App\\Models\\Post', 4, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(9, 'This is a reply to the comment.', 'App\\Models\\Comment', 8, 8, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(10, 'This is a comment for the post.', 'App\\Models\\Post', 5, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(11, 'This is a reply to the comment.', 'App\\Models\\Comment', 10, 10, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(12, 'This is a comment for the post.', 'App\\Models\\Post', 6, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(13, 'This is a reply to the comment.', 'App\\Models\\Comment', 12, 12, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(14, 'This is a comment for the post.', 'App\\Models\\Post', 7, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(15, 'This is a reply to the comment.', 'App\\Models\\Comment', 14, 14, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(16, 'This is a comment for the post.', 'App\\Models\\Post', 8, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(17, 'This is a reply to the comment.', 'App\\Models\\Comment', 16, 16, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(18, 'This is a comment for the post.', 'App\\Models\\Post', 9, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(19, 'This is a reply to the comment.', 'App\\Models\\Comment', 18, 18, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(20, 'This is a comment for the post.', 'App\\Models\\Post', 10, NULL, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(21, 'This is a reply to the comment.', 'App\\Models\\Comment', 20, 20, '2023-05-21 05:48:01', '2023-05-21 05:48:01'),
(22, 'This is a comment for the post.', 'App\\Models\\Post', 1, NULL, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(23, 'This is a reply to the comment.', 'App\\Models\\Comment', 22, 22, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(24, 'This is a comment for the post.', 'App\\Models\\Post', 2, NULL, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(25, 'This is a reply to the comment.', 'App\\Models\\Comment', 24, 24, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(26, 'This is a comment for the post.', 'App\\Models\\Post', 3, NULL, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(27, 'This is a reply to the comment.', 'App\\Models\\Comment', 26, 26, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(28, 'This is a comment for the post.', 'App\\Models\\Post', 4, NULL, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(29, 'This is a reply to the comment.', 'App\\Models\\Comment', 28, 28, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(30, 'This is a comment for the post.', 'App\\Models\\Post', 5, NULL, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(31, 'This is a reply to the comment.', 'App\\Models\\Comment', 30, 30, '2023-05-21 05:49:37', '2023-05-21 05:49:37'),
(32, 'This is a comment for the post.', 'App\\Models\\Post', 6, NULL, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(33, 'This is a reply to the comment.', 'App\\Models\\Comment', 32, 32, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(34, 'This is a comment for the post.', 'App\\Models\\Post', 7, NULL, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(35, 'This is a reply to the comment.', 'App\\Models\\Comment', 34, 34, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(36, 'This is a comment for the post.', 'App\\Models\\Post', 8, NULL, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(37, 'This is a reply to the comment.', 'App\\Models\\Comment', 36, 36, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(38, 'This is a comment for the post.', 'App\\Models\\Post', 9, NULL, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(39, 'This is a reply to the comment.', 'App\\Models\\Comment', 38, 38, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(40, 'This is a comment for the post.', 'App\\Models\\Post', 10, NULL, '2023-05-21 05:49:38', '2023-05-21 05:49:38'),
(41, 'This is a reply to the comment.', 'App\\Models\\Comment', 40, 40, '2023-05-21 05:49:38', '2023-05-21 05:49:38');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_21_074129_create_posts_table', 1),
(6, '2023_05_21_074241_create_commentables_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Est deleniti dolorum doloribus tempora autem.', 'Est adipisci reprehenderit doloribus autem maiores ipsa sint. Voluptas eum molestias magnam sit quia. Voluptatem commodi delectus ducimus praesentium neque.', '2023-05-21 05:45:53', '2023-05-21 05:45:53'),
(2, 'Beatae esse qui nam quidem autem.', 'Unde repudiandae accusantium deserunt officiis et facere dignissimos. Asperiores illo unde voluptatum aut. Et quod pariatur earum et quibusdam ducimus non atque.', '2023-05-21 05:45:53', '2023-05-21 05:45:53'),
(3, 'Aspernatur modi quis ducimus repellendus.', 'Quam occaecati molestiae consequatur est. At illum consequatur et magni aut. Non nemo ut deleniti est ut hic. Aut odio sunt possimus qui incidunt deserunt sit deserunt.', '2023-05-21 05:45:53', '2023-05-21 05:45:53'),
(4, 'Velit et repudiandae adipisci.', 'Est voluptatem vitae non totam sint at. Exercitationem et quaerat amet pariatur dolorem. Et rerum ab nulla ut.', '2023-05-21 05:45:53', '2023-05-21 05:45:53'),
(5, 'Qui ea harum aut rerum ratione.', 'Quia architecto incidunt dolores natus ut repellat voluptate dolore. Quia sit tempore ut. Culpa dolor eveniet rerum nisi. Fuga non a libero vero.', '2023-05-21 05:45:53', '2023-05-21 05:45:53'),
(6, 'Nihil iusto quidem unde nobis repudiandae deserunt enim.', 'Aspernatur officia adipisci nostrum sed. Odio aperiam veniam non quaerat. Itaque amet doloribus totam quia. Corrupti sit ipsum voluptas.', '2023-05-21 05:45:53', '2023-05-21 05:45:53'),
(7, 'Voluptatem ea laboriosam rerum omnis fugit.', 'Eligendi placeat id qui molestiae laborum necessitatibus. Optio mollitia harum corporis illo nostrum et. Ex odio blanditiis nemo laborum atque expedita ut reprehenderit.', '2023-05-21 05:45:54', '2023-05-21 05:45:54'),
(8, 'Voluptas eveniet doloribus labore.', 'Aut minima laboriosam maiores doloribus sed facilis. Repellat deserunt praesentium vero quia. Odio fugiat praesentium et nulla eum saepe. Enim non ut eligendi ut ipsam. Enim atque minima fugiat nihil blanditiis minus.', '2023-05-21 05:45:54', '2023-05-21 05:45:54'),
(9, 'Consectetur sed et a et ab deserunt ipsa.', 'Impedit est repellendus ea ipsum deserunt. Aut itaque labore odio maiores voluptas minus libero ut. Itaque repudiandae consequuntur deleniti sed. Laudantium velit explicabo laboriosam alias et eveniet.', '2023-05-21 05:45:54', '2023-05-21 05:45:54'),
(10, 'Reiciendis dicta ad vitae.', 'Est labore laudantium iure reiciendis. Ab molestiae sed cumque necessitatibus. Nemo est numquam quis eum accusamus id impedit. Sed error dolor voluptas nemo perferendis sed quidem velit.', '2023-05-21 05:45:54', '2023-05-21 05:45:54');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `commentables`
--
ALTER TABLE `commentables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentables_commentable_type_commentable_id_index` (`commentable_type`,`commentable_id`),
  ADD KEY `commentables_parent_id_foreign` (`parent_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `commentables`
--
ALTER TABLE `commentables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commentables`
--
ALTER TABLE `commentables`
  ADD CONSTRAINT `commentables_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `commentables` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
