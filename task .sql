-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 02:53 PM
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
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 4, 'Deleniti sunt reiciendis dolorem laborum temporibus. Error voluptatum consequatur optio temporibus explicabo. Nostrum possimus deleniti sunt suscipit eius est. Ducimus dignissimos quo non id aut quam enim.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(2, 4, 'Iste fuga quae tenetur culpa est quo ad totam. Iure rerum est dolorem nisi dolores. Neque quo et voluptatibus alias minus dolores amet. Dignissimos possimus quia autem eos impedit asperiores rerum.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(3, 5, 'Eos et est ipsam perspiciatis vitae ut. Qui consequatur delectus aut qui aut velit. Velit itaque quisquam nihil deserunt. Eos qui consectetur est quas et enim voluptatum.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(4, 1, 'Perspiciatis eaque corrupti aut ad id molestiae. Eos nostrum et consequatur qui. Nihil molestias nihil optio aut voluptas ipsam voluptatem. Iure accusantium voluptatum molestiae dolores pariatur maxime.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(5, 5, 'At error est consectetur distinctio aut facere est. Error saepe ullam vero rerum sapiente maxime in. Voluptatibus sed ut aliquam molestiae sit error. Nemo nihil voluptatem aperiam laborum ut est dolor.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(6, 3, 'Vel molestias sed rem exercitationem. Omnis et velit laborum deleniti perferendis voluptatem. Et nam non ullam odio neque repellat. Ullam ratione aut optio enim.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(7, 1, 'Velit quaerat quisquam veniam facere ut. Laboriosam voluptatem odio quia nobis optio voluptatem. Esse nam mollitia quia ipsam delectus at. Esse consequuntur tempore odit et tenetur ut ipsum.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(8, 1, 'Ut rerum sit minus ut eaque facere. Sapiente non molestiae non nihil sit. Et et minus omnis et velit sunt. In quos quia aut ut.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(9, 1, 'Illo iste dolorum nisi officiis. Blanditiis deserunt provident molestias omnis fuga. Ea et earum incidunt ipsa laborum et. Accusamus eos voluptatem consequatur.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(10, 5, 'Explicabo sit rerum quod sequi cumque et accusamus. Et voluptatem fugit perferendis commodi odio optio. Sit esse est ut facere. Dolores quas nihil inventore neque est mollitia sit.', '2023-05-20 09:01:34', '2023-05-20 09:01:34');

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
(5, '2023_05_18_150050_create_posts_table', 1),
(6, '2023_05_18_150135_create_comments_table', 1),
(7, '2023_05_18_150725_create_replies_table', 1);

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
(1, 'Dr. Durward Dooley I', 'Omnis laudantium beatae vero enim voluptatem. Enim nihil molestiae sit suscipit. Commodi sunt dolorem et accusamus qui odio ad hic. Ipsum eius quidem modi architecto.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(2, 'Miss Emie Harvey', 'Voluptatem itaque optio rerum consequuntur inventore pariatur. Modi suscipit voluptatibus quisquam dolor iure rerum. Exercitationem quos est culpa. Ducimus totam repudiandae facilis aliquid dignissimos quia.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(3, 'Martina Reinger', 'Vitae accusantium et cumque laborum ex impedit. Consequatur minima omnis porro optio sed delectus atque. Perspiciatis et hic harum minima vel. Consectetur adipisci rerum non enim doloremque.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(4, 'Walter Predovic DVM', 'Et qui et ratione rerum aspernatur alias. Officiis officiis dicta asperiores dolorum at sunt. Autem quia exercitationem qui inventore delectus iusto magnam est. Omnis quasi accusantium cumque qui.', '2023-05-20 09:01:33', '2023-05-20 09:01:33'),
(5, 'Eleazar Langworth', 'Aut maiores quasi nam delectus aut tempore. Facere sed necessitatibus dolorem illum incidunt deserunt iusto. Sed hic aut consectetur ut molestias ut. Et et adipisci tempora consequatur repellat ab voluptatum aut.', '2023-05-20 09:01:33', '2023-05-20 09:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `reply` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `reply`, `created_at`, `updated_at`) VALUES
(1, 4, 'Ipsam ut et excepturi pariatur delectus non. Aut recusandae unde culpa vero. Est aliquam voluptatem itaque quo sed odit officiis. Sapiente non iste excepturi quis aut quod dolor.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(2, 3, 'Numquam qui delectus omnis vel quia quia. Architecto ipsa qui et excepturi beatae repudiandae. Fugit odit cupiditate eum sunt eius iste. Molestiae accusamus temporibus ducimus ullam et harum.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(3, 7, 'A ut praesentium eaque nihil qui vel est laboriosam. Quas ut perspiciatis quia minus facere amet. Sint dolor maxime aut sit harum voluptates eaque. Dolores nesciunt dolore dolor delectus molestiae ducimus ex.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(4, 7, 'Iusto dolor maiores dolorum nihil dolorum enim labore est. Sunt autem consequatur quisquam quia aperiam. Blanditiis voluptatibus velit necessitatibus aut voluptatibus. Consequatur provident expedita pariatur repellendus tenetur debitis atque.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(5, 7, 'Sint libero molestiae voluptate deleniti. Quia sed tempore repellendus dignissimos. Eligendi dolor a et odio voluptatem dolor sit. Labore voluptatibus voluptatum accusantium ducimus ipsum dolorem aliquid quis.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(6, 5, 'Magnam non consequuntur minima rerum est cupiditate est. Doloribus doloremque qui a non aut. Ut fuga autem cum voluptatibus eos minima et. Inventore quod omnis ipsam autem rerum.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(7, 8, 'Aut eum aut eum velit earum deserunt perferendis. Quis eligendi doloremque laudantium earum quasi iure ut. Ad quis voluptas et nulla. Officia debitis iure porro debitis.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(8, 8, 'Ea suscipit distinctio et laboriosam ut omnis. Sequi occaecati unde maiores. Ducimus nesciunt deserunt non totam. Optio occaecati hic maiores enim.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(9, 2, 'Quod unde sapiente voluptatum soluta veritatis neque neque. Blanditiis commodi reprehenderit eligendi at. Delectus ut accusantium nesciunt dolor. Est neque aspernatur itaque in.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(10, 2, 'Placeat fugit recusandae sit porro non. Iusto provident laudantium voluptatum saepe deleniti beatae. Sequi corporis architecto cumque numquam cum aut. Officiis animi et voluptas et eligendi sunt.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(11, 6, 'Enim excepturi laboriosam delectus est numquam qui. Ad soluta enim sint perspiciatis provident consequatur vel. Et eius rem enim minus suscipit. Quia nam ut quod aut error voluptatem.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(12, 8, 'Perferendis odio consectetur ea similique eligendi. Aliquam et voluptatem atque ducimus. Eius consequatur sunt eos rerum repellat. Sit est ex iure labore voluptas.', '2023-05-20 09:01:34', '2023-05-20 09:01:34'),
(13, 2, 'Autem aut provident facere rerum repellat. Omnis et incidunt mollitia non aut suscipit fugit labore. Assumenda odit eos odio cum dignissimos possimus laudantium vel. Et rerum molestiae libero sit.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(14, 5, 'Sunt ut ipsum quod. Dicta ut quia et. At ab magni occaecati voluptas. Deleniti qui deleniti saepe unde corporis quod.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(15, 4, 'Distinctio eos sed voluptate reiciendis officia autem. Minima ullam culpa occaecati praesentium voluptatem qui quisquam maxime. Nobis aut dolorem autem eligendi nulla quod. Aliquam odit cum placeat impedit in ea quaerat.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(16, 6, 'Ea qui sit debitis in suscipit. Et quos ipsa possimus cupiditate voluptates. Sed totam dolores quaerat vitae eos in possimus. Reprehenderit numquam voluptate aut unde sequi ipsam sed.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(17, 1, 'Ratione sed tempora nesciunt nulla eligendi ipsam. Expedita dicta dolores deleniti in perspiciatis. Qui itaque ea eos eum occaecati sunt facere. Dicta consequuntur quis explicabo optio.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(18, 10, 'Nostrum rerum ducimus minus nulla corrupti qui perspiciatis doloribus. Hic laudantium ut cupiditate nihil qui est. Quia nihil unde velit quia dolor nulla. Fugit sequi quia maiores dolor libero magnam.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(19, 10, 'Sint consectetur numquam accusamus veniam. Ut similique omnis atque et. Sequi aperiam qui facere dolores. Repellat nostrum voluptate et.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(20, 8, 'Maiores veritatis illo sit inventore. Consequuntur eos suscipit eligendi temporibus aut iste. Unde enim earum qui sint dolores rerum quia. Doloribus iure voluptatum nesciunt temporibus.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(21, 9, 'Dicta temporibus dignissimos harum maxime non alias consequatur blanditiis. Magni officia odio ea voluptatum quo adipisci. Est ullam voluptate corporis animi. Debitis autem excepturi inventore est.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(22, 1, 'Et vel cum qui dicta eius. Ea aut et ab ex. Quia soluta ut saepe vel voluptas. Cum aut minus voluptas iste.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(23, 3, 'Aperiam nostrum enim quaerat omnis. Porro consequatur aut repellendus dolores est non illum. Qui et architecto sit incidunt laborum laboriosam. Ullam quam earum perspiciatis omnis.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(24, 7, 'Ea qui et nisi. Excepturi id eum ut consequatur. Mollitia occaecati quidem aliquam qui autem harum. Cum quas ab pariatur qui nobis quis.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(25, 7, 'Reprehenderit voluptas saepe modi vitae voluptate. Atque voluptas quasi temporibus eaque. Ipsam quis est officia similique alias eius. Maiores sit natus dolores.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(26, 8, 'Eligendi ullam consequatur itaque soluta et qui repellat tempora. Quo occaecati ducimus deleniti et ut. Magni deleniti optio voluptates aperiam excepturi ipsum quis harum. Beatae incidunt error ea consequatur iste et necessitatibus.', '2023-05-20 09:01:35', '2023-05-20 09:01:35'),
(27, 9, 'Perspiciatis impedit repellendus et omnis. Distinctio amet id ab modi nesciunt eos saepe. Voluptates quia eos qui ea aliquid consequuntur veniam. Ullam dolore ut totam dolorem.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(28, 3, 'Harum harum ex provident dolorum non. Corrupti veniam sunt non veniam saepe voluptas. Ullam nam sit aut. Omnis cupiditate accusamus quos qui enim.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(29, 5, 'Numquam qui molestiae id mollitia et. Est quos cum ab qui. Placeat voluptas deserunt error repellat. Provident aut ea cupiditate est repudiandae voluptas.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(30, 5, 'Incidunt rerum inventore dolorem molestiae. Nisi quod a voluptatem eos aut. Porro aliquid fugit mollitia ut minima totam. Enim voluptas suscipit sit esse.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(31, 1, 'Sapiente quis libero ea reiciendis doloremque quaerat. Non tenetur voluptatem nesciunt explicabo tempora. Dignissimos atque tempora sed labore non earum. Quibusdam deserunt similique pariatur perferendis consequatur.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(32, 1, 'Deleniti ut quis eaque. Et molestiae velit aliquam ut placeat aspernatur et dolorem. Laudantium error recusandae quibusdam accusantium voluptatem possimus. Dolorum vel impedit laboriosam et fugiat tenetur.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(33, 4, 'Non nemo nostrum cupiditate aliquam ea blanditiis aut. Voluptas sit omnis repellat. Porro et in quia corporis quia modi repudiandae. Sunt ut officia ut officia commodi voluptatem.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(34, 8, 'Labore eum ut temporibus distinctio. Similique dolores asperiores dolorum ut quis. Natus reprehenderit fugiat dolore alias. Quas vero et similique quia.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(35, 8, 'Unde odio provident natus est consectetur non quia atque. Veritatis omnis tenetur quis quas doloribus. Eligendi qui repellendus sint explicabo deserunt reiciendis ut. Officiis ipsa quam nisi beatae recusandae non dignissimos.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(36, 3, 'Sint labore aut accusantium sit ut quidem laudantium. Placeat tempore reiciendis magnam soluta beatae dolor. Nihil optio in est. Tenetur omnis maxime qui natus dolor dolorem occaecati.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(37, 4, 'Modi aut qui veritatis nostrum vel ex exercitationem. Aperiam aperiam assumenda explicabo nostrum eum enim praesentium. Quidem dignissimos non quia alias. Reprehenderit molestias soluta voluptas officiis blanditiis vero.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(38, 10, 'Tenetur aliquam odio dolor modi maiores. Aliquid quasi qui quam natus voluptatibus. Voluptatem est labore qui vel quia minus. Delectus placeat ratione doloremque cupiditate.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(39, 9, 'Et itaque fugit quisquam commodi et aut. Maiores et non exercitationem alias excepturi quam est. Quis in quisquam rerum eveniet perspiciatis minima. Alias magnam consectetur ex nam autem et.', '2023-05-20 09:01:36', '2023-05-20 09:01:36'),
(40, 7, 'Illo consequatur dolore error eius. Consequatur temporibus facilis quia occaecati enim repellat illum iste. Dicta et sunt qui voluptatem sunt fugit fuga. Aut est harum corporis id enim.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(41, 4, 'Velit neque cumque sint sed eos itaque. Cupiditate quae quam iusto. Harum exercitationem pariatur soluta in soluta molestiae ab. Necessitatibus aspernatur sed laborum in ut.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(42, 7, 'Unde ab assumenda et. Ullam quidem quo asperiores aspernatur aut dicta sed. Aspernatur cupiditate nobis rerum dolorem culpa illo numquam enim. Quod iure dolores et quia quisquam est.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(43, 5, 'Ut ratione ea repellat et ad facilis sapiente. Officiis dicta amet esse quae facilis. Nulla incidunt magnam eaque. Et sed nemo culpa modi.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(44, 6, 'Repellendus qui consequatur minus expedita qui non. Explicabo nesciunt repudiandae est neque eaque et quasi. Et asperiores cupiditate recusandae. Earum iusto nihil reprehenderit tempora.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(45, 9, 'Perspiciatis perspiciatis dolorem rerum consequuntur officia. Qui accusamus quo eos voluptates quos corporis. Provident hic dolorem ut quas adipisci. Rerum adipisci quos natus voluptas.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(46, 10, 'Veniam et repellendus alias at sit modi. Vel aperiam ab mollitia voluptas quae. Incidunt molestiae sunt ut consequatur suscipit quidem et. Expedita distinctio corrupti rerum.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(47, 2, 'Et laboriosam ea aut. Sint rem quae earum ut. Cumque dolorem ut distinctio tempore. Fugit et non ipsum est debitis ut.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(48, 1, 'Possimus iste error dignissimos nemo animi corrupti dolorem. Quisquam illo et itaque incidunt mollitia natus omnis. In animi quam minima numquam qui. Iste vitae incidunt consequuntur sed.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(49, 1, 'Recusandae ratione tenetur dolorem. Expedita incidunt repellendus quae beatae voluptatem. Consequatur incidunt expedita magnam nostrum dolorem hic cumque. Animi vel autem quas non soluta deserunt quo.', '2023-05-20 09:01:37', '2023-05-20 09:01:37'),
(50, 5, 'Quam sapiente saepe quos quidem non accusantium. Nisi itaque aliquam aut omnis maxime. Dolorem consequatur ad natus et ut sint impedit repellat. Rerum quos nulla numquam itaque ea sint aut minima.', '2023-05-20 09:01:38', '2023-05-20 09:01:38');

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_foreign` (`comment_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
