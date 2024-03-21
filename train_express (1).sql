-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 jan. 2024 à 20:20
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `train_express`
--

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Premiere Classe', '2500 fcfa', NULL, NULL),
(2, 'Seconde Classe', '1500 fcfa', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `horaires`
--

CREATE TABLE `horaires` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `horaires`
--

INSERT INTO `horaires` (`id`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(2, '05:30:00', '06:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(3, '05:50:00', '06:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(4, '06:10:00', '06:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(5, '06:30:00', '07:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(6, '06:50:00', '07:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(7, '07:10:00', '07:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(8, '07:30:00', '08:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(9, '07:50:00', '08:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(10, '08:10:00', '08:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(11, '08:30:00', '09:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(12, '08:50:00', '09:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(13, '09:10:00', '09:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(14, '09:30:00', '10:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(15, '09:50:00', '10:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(16, '10:10:00', '10:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(17, '10:30:00', '11:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(18, '10:50:00', '11:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(19, '11:10:00', '11:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(20, '11:30:00', '12:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(21, '11:50:00', '12:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(22, '12:10:00', '12:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(23, '12:30:00', '13:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(24, '12:50:00', '13:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(25, '13:10:00', '13:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(26, '13:30:00', '14:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(27, '13:50:00', '14:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(28, '14:10:00', '14:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(29, '14:30:00', '15:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(30, '14:50:00', '15:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(31, '15:10:00', '15:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(32, '15:30:00', '16:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(33, '15:50:00', '16:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(34, '16:10:00', '16:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(35, '16:30:00', '17:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(36, '16:50:00', '17:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(37, '17:10:00', '17:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(38, '17:30:00', '18:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(39, '17:50:00', '18:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(40, '18:10:00', '18:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(41, '18:30:00', '19:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(42, '18:50:00', '19:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(43, '19:10:00', '19:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(44, '19:30:00', '20:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(45, '19:50:00', '20:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(46, '20:10:00', '20:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(47, '20:30:00', '21:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(48, '20:50:00', '21:20:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(49, '21:10:00', '21:40:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43'),
(50, '21:30:00', '22:00:00', '2024-01-07 19:28:43', '2024-01-07 19:28:43');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_25_014758_create_classe_table', 1),
(6, '2023_12_25_015556_create_zone_table', 1),
(7, '2023_12_25_020557_create_tickets_table', 1),
(8, '2024_01_07_172546_add_horaires_table', 2),
(9, '2024_01_07_173248_remove_name_from_horaires_table', 3),
(10, '2024_01_07_182905_add_date_exp_to_tickets_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'token', 'f9a32794a662e87c5d43e2eff809db8467bf9f6412527e80b8072b0dad681fed', '[\"*\"]', NULL, NULL, '2023-12-25 19:41:32', '2023-12-25 19:41:32'),
(2, 'App\\Models\\User', 3, 'token', '5ea0f6b91024e05f60b85f2f850628eb39f4873439b4a220de733c3d56c4a9bf', '[\"*\"]', NULL, NULL, '2023-12-25 19:58:22', '2023-12-25 19:58:22'),
(3, 'App\\Models\\User', 3, 'token', 'd0d74a562c5e70a09d81f5ecc6af347e17aaf1b45a48aa1de7e779c7fe082960', '[\"*\"]', NULL, NULL, '2023-12-25 20:13:46', '2023-12-25 20:13:46'),
(4, 'App\\Models\\User', 3, 'token', '018b1ce434bb747dd02efed3cb6f269c3e14b2a5f3450fffe0788b9dd82fb7da', '[\"*\"]', '2023-12-25 20:15:03', NULL, '2023-12-25 20:14:20', '2023-12-25 20:15:03'),
(5, 'App\\Models\\User', 3, 'token', 'f9c04bbd21e652d4d0907f360aa3eabc779def30561be29a8bcbdaeace7df22d', '[\"*\"]', '2023-12-25 20:40:08', NULL, '2023-12-25 20:22:12', '2023-12-25 20:40:08'),
(6, 'App\\Models\\User', 3, 'token', 'aef02ea1f568dc6980cf58d2f07665e00aff83f837923bdba6033f5a8f13408a', '[\"*\"]', '2023-12-25 20:40:36', NULL, '2023-12-25 20:40:22', '2023-12-25 20:40:36'),
(7, 'App\\Models\\User', 14, 'token', 'ee20e73110c9123c82495ca675e73ab882727006202af571035c6cd12aca119d', '[\"*\"]', NULL, NULL, '2023-12-26 23:34:17', '2023-12-26 23:34:17'),
(8, 'App\\Models\\User', 14, 'token', '0ec4a444622d5fcb9cdb1d28b83e0bcdab826c4196bee4c456cb442516b8fa6d', '[\"*\"]', NULL, NULL, '2023-12-26 23:39:49', '2023-12-26 23:39:49'),
(9, 'App\\Models\\User', 14, 'token', 'e714c7a00c88b43d3c4e14d5a6b13fe1a66eb4526dd6273992c3fed11125a340', '[\"*\"]', NULL, NULL, '2023-12-26 23:43:29', '2023-12-26 23:43:29'),
(10, 'App\\Models\\User', 14, 'token', '1b28aa8ed97077371e005be417a936bb79de5e05db77d0020d62378ffc7546bf', '[\"*\"]', NULL, NULL, '2023-12-26 23:54:51', '2023-12-26 23:54:51'),
(11, 'App\\Models\\User', 14, 'token', '1dcd96c02ac3e6c4d46e659a6d944731e2c2d8ca40b467589b6dc8941d67129f', '[\"*\"]', NULL, NULL, '2023-12-26 23:55:31', '2023-12-26 23:55:31'),
(12, 'App\\Models\\User', 14, 'token', 'ba112326f9cdb4aa45d41da09a7c8eac04206be23439ab7295bf14d4c35cf817', '[\"*\"]', NULL, NULL, '2023-12-26 23:56:37', '2023-12-26 23:56:37'),
(13, 'App\\Models\\User', 14, 'token', '3f0e3a94469e06da4244cfd0ee7475add7f7b6745b54c27382010e420b2d47ed', '[\"*\"]', NULL, NULL, '2023-12-27 00:08:53', '2023-12-27 00:08:53'),
(14, 'App\\Models\\User', 14, 'token', '3f69166adf1e2e9bbc19783046dc7208b8581769658fc46a3030f5c51808653c', '[\"*\"]', NULL, NULL, '2023-12-27 00:10:10', '2023-12-27 00:10:10'),
(15, 'App\\Models\\User', 3, 'token', '4aa134a8904b5d453dc6c6623e4b37c0da89581d2805006d3eef75685b3984a3', '[\"*\"]', '2023-12-27 00:12:16', NULL, '2023-12-27 00:12:07', '2023-12-27 00:12:16'),
(16, 'App\\Models\\User', 14, 'token', 'bcab4a1d6802505919914d9230eab33304ba2491ef5901711e7537f419495c7e', '[\"*\"]', NULL, NULL, '2023-12-27 00:18:08', '2023-12-27 00:18:08'),
(17, 'App\\Models\\User', 14, 'token', '3a56bb36f32e4acbeb6770b0f600e798dc7a7ef6a5e37e8e46423806cb9d306b', '[\"*\"]', NULL, NULL, '2023-12-27 00:19:10', '2023-12-27 00:19:10'),
(18, 'App\\Models\\User', 14, 'token', 'fcd96d9eef15c91ea38064318a2a8c02088ebf8592a62c41dcdea073be724a42', '[\"*\"]', '2023-12-27 01:15:28', NULL, '2023-12-27 00:25:35', '2023-12-27 01:15:28'),
(19, 'App\\Models\\User', 14, 'token', 'cce11d6bc26baa6533a633d0df0cdeecd72bf819fe1d31dac3058b2fc664858b', '[\"*\"]', '2023-12-27 01:16:10', NULL, '2023-12-27 01:15:38', '2023-12-27 01:16:10'),
(20, 'App\\Models\\User', 14, 'token', '14d86d0d123f4d3fe810df01dd12c068b5f6fdb718ed2869eb1782368b18a863', '[\"*\"]', '2023-12-27 01:18:51', NULL, '2023-12-27 01:16:20', '2023-12-27 01:18:51'),
(21, 'App\\Models\\User', 14, 'token', '3be4272cb74840e0770fbfff13227cb5a5bb959833eb666290bb4b990140015b', '[\"*\"]', '2023-12-27 01:25:43', NULL, '2023-12-27 01:22:10', '2023-12-27 01:25:43'),
(22, 'App\\Models\\User', 14, 'token', 'b110c92415c6ad5d6e4591f53add0f016eb743bc48c35c9e475907ffb5c97aa7', '[\"*\"]', '2023-12-27 01:27:02', NULL, '2023-12-27 01:25:47', '2023-12-27 01:27:02'),
(23, 'App\\Models\\User', 14, 'token', '17a2a7fef226b1270ab59a905732b409150f12392713f2fc71fd21deaa5eb0e6', '[\"*\"]', '2023-12-27 01:27:13', NULL, '2023-12-27 01:27:05', '2023-12-27 01:27:13'),
(24, 'App\\Models\\User', 13, 'token', 'aaa2a47edae8afaa3d257e841c81e87ed15831f298f8bb147215f016d20b9ad2', '[\"*\"]', NULL, NULL, '2023-12-27 01:27:29', '2023-12-27 01:27:29'),
(25, 'App\\Models\\User', 13, 'token', '7915f68677a687475c375b9eb1b5108d7ede3f9fdb9ab611fe57b3b5d318df4c', '[\"*\"]', '2023-12-27 01:31:11', NULL, '2023-12-27 01:30:53', '2023-12-27 01:31:11'),
(26, 'App\\Models\\User', 15, 'token', 'b89ceb945b3c1d47007861fa7b04765c410f1622d539b0b2ea0af2cc2560ed00', '[\"*\"]', '2023-12-27 01:33:39', NULL, '2023-12-27 01:33:29', '2023-12-27 01:33:39'),
(27, 'App\\Models\\User', 15, 'token', 'de499e17ee66d4ede6547f608b0a8024a8a9acce193cbf6a62f542d4b9b60b9d', '[\"*\"]', '2023-12-27 20:03:11', NULL, '2023-12-27 20:02:58', '2023-12-27 20:03:11'),
(28, 'App\\Models\\User', 14, 'token', 'f98114f2c061976b549348d22535f9cae15814de38592c0d83a498c373a178ce', '[\"*\"]', '2023-12-27 20:03:30', NULL, '2023-12-27 20:03:21', '2023-12-27 20:03:30'),
(29, 'App\\Models\\User', 13, 'token', '468082d9085a98bc5ee0e59a9e5bd2a5e4ace794bfcad2cc8d74faf71bef1176', '[\"*\"]', '2023-12-27 20:03:50', NULL, '2023-12-27 20:03:39', '2023-12-27 20:03:50'),
(30, 'App\\Models\\User', 13, 'token', '8525e5d7b055a48bac2f25b438675cfe78e6b9b89abc63fbd21135f689af6bfb', '[\"*\"]', '2023-12-27 21:11:31', NULL, '2023-12-27 21:11:29', '2023-12-27 21:11:31'),
(31, 'App\\Models\\User', 13, 'token', '2da7c9f2244aec048a60d4f480342b497997f4d20539dc0b82eaf048e7ba9217', '[\"*\"]', '2023-12-27 21:25:23', NULL, '2023-12-27 21:25:04', '2023-12-27 21:25:23'),
(32, 'App\\Models\\User', 13, 'token', '1a6bc5b83138d3541ee6dd5970badf67fe96874159eca40c8800a5556fbb83e1', '[\"*\"]', '2023-12-27 21:25:56', NULL, '2023-12-27 21:25:55', '2023-12-27 21:25:56'),
(33, 'App\\Models\\User', 13, 'token', '8abc5a2fc1fdb280f11590ef37ba242431641b22cc86e522aacc353685954659', '[\"*\"]', '2023-12-27 22:50:07', NULL, '2023-12-27 22:50:07', '2023-12-27 22:50:07'),
(34, 'App\\Models\\User', 13, 'token', '0929f8d596df7df5e92d45f84b7a4d5332723806503cbbe9e68767cffb1f54b1', '[\"*\"]', '2023-12-27 22:54:25', NULL, '2023-12-27 22:54:24', '2023-12-27 22:54:25'),
(35, 'App\\Models\\User', 13, 'token', '59a6924ad2243bea374ae04a1f360d11af616a6a79c0bc3b8a813760a618b4e7', '[\"*\"]', '2023-12-27 22:55:08', NULL, '2023-12-27 22:55:07', '2023-12-27 22:55:08'),
(36, 'App\\Models\\User', 13, 'token', 'bb8f3d973b1e9b447dc3480332d69cd23c30bb99a0e41bc8f1b764833334450e', '[\"*\"]', '2023-12-27 23:08:25', NULL, '2023-12-27 22:57:18', '2023-12-27 23:08:25'),
(37, 'App\\Models\\User', 13, 'token', '9f389d1599b0eb4f87323447cb0f742ec747e772dfef5d4f5b26e47852627a95', '[\"*\"]', '2023-12-27 23:10:36', NULL, '2023-12-27 23:08:36', '2023-12-27 23:10:36'),
(38, 'App\\Models\\User', 13, 'token', '1ffbfab98c1398055b9936a271ef704d3d16edbf0b276d96a3ee2fdba20b540d', '[\"*\"]', '2023-12-27 23:12:09', NULL, '2023-12-27 23:10:40', '2023-12-27 23:12:09'),
(39, 'App\\Models\\User', 13, 'token', 'b56a7b296388b92998534b0a69e035de5b4dea30538362c380fff92ed38778fd', '[\"*\"]', '2023-12-27 23:15:41', NULL, '2023-12-27 23:12:13', '2023-12-27 23:15:41'),
(40, 'App\\Models\\User', 13, 'token', 'd1972fde93c07efeb9b83f950a6ac25b5d199183e9daffc32d90dac9ae0e9719', '[\"*\"]', '2023-12-27 23:19:55', NULL, '2023-12-27 23:15:47', '2023-12-27 23:19:55'),
(41, 'App\\Models\\User', 13, 'token', '01fbc1326ad6a7d2a94cc4033bed5b643d2e1112779c87cc5ecd54e605c73263', '[\"*\"]', '2023-12-27 23:23:51', NULL, '2023-12-27 23:19:59', '2023-12-27 23:23:51'),
(42, 'App\\Models\\User', 13, 'token', '3a07b25ad6161c5b49fd00926eaffda61b0ed5b14993888a3e1ff925b3553f42', '[\"*\"]', '2023-12-27 23:30:05', NULL, '2023-12-27 23:23:59', '2023-12-27 23:30:05'),
(43, 'App\\Models\\User', 13, 'token', '25784865392f4a7e75536e506d7c2b60c52277cc01506ed921d3a4fff8556e18', '[\"*\"]', '2023-12-27 23:53:26', NULL, '2023-12-27 23:30:15', '2023-12-27 23:53:26'),
(44, 'App\\Models\\User', 13, 'token', 'bf4cfb6729f2c49b10ecc27ba5751d4cf4ed6e2e64aa3bd6cca9b247715cc1e5', '[\"*\"]', '2023-12-28 00:07:46', NULL, '2023-12-27 23:53:30', '2023-12-28 00:07:46'),
(45, 'App\\Models\\User', 13, 'token', 'ce681e62fca35f6540a81118de16d51f6b8fbe322e3c17de160db8e2262d1f3a', '[\"*\"]', '2023-12-28 00:09:27', NULL, '2023-12-28 00:07:50', '2023-12-28 00:09:27'),
(46, 'App\\Models\\User', 14, 'token', '12420f7a350833040cd5213f0aa5be4bd30649cf1025233714bad8ac832b3d95', '[\"*\"]', '2023-12-28 00:15:10', NULL, '2023-12-28 00:09:35', '2023-12-28 00:15:10'),
(47, 'App\\Models\\User', 14, 'token', 'ceb15c674f911a43740216210dd96d7b588290eab560d7f71789682454e451dc', '[\"*\"]', '2023-12-28 00:18:33', NULL, '2023-12-28 00:15:19', '2023-12-28 00:18:33'),
(48, 'App\\Models\\User', 14, 'token', '59501a4e85e406625cf8a8e1139460b760517a2b2fda838f86169118e347638f', '[\"*\"]', '2023-12-28 00:29:18', NULL, '2023-12-28 00:18:39', '2023-12-28 00:29:18'),
(49, 'App\\Models\\User', 16, 'token', '24e1af5db1c5759d06011b9834eec2f723e93aa2a836e35eae9b5cf43072461d', '[\"*\"]', '2023-12-28 00:30:16', NULL, '2023-12-28 00:30:16', '2023-12-28 00:30:16'),
(50, 'App\\Models\\User', 16, 'token', '54b005f14be3251c708ceff407102694a53a29a7384bb94a4849ba4b8ebd3b18', '[\"*\"]', '2024-01-03 19:13:10', NULL, '2024-01-03 19:12:28', '2024-01-03 19:13:10'),
(51, 'App\\Models\\User', 16, 'token', '68e1bbc6232c09a144dc30c7cd0a2b34df7264ecfedb1926a1827d3640d1920f', '[\"*\"]', '2024-01-03 21:50:21', NULL, '2024-01-03 21:23:32', '2024-01-03 21:50:21'),
(52, 'App\\Models\\User', 16, 'token', '1acaa34a4c7b5c185b6119258650f1139868d684657608476f2b75f5a5ea0438', '[\"*\"]', '2024-01-03 21:54:53', NULL, '2024-01-03 21:50:25', '2024-01-03 21:54:53'),
(53, 'App\\Models\\User', 16, 'token', 'd530210d09ff83ab77c8d52d355dd62504834972a5cff7553285b7352257a637', '[\"*\"]', '2024-01-03 21:59:21', NULL, '2024-01-03 21:54:56', '2024-01-03 21:59:21'),
(54, 'App\\Models\\User', 13, 'token', 'dc7667e2a2bc3f344500e3c3dfdb32732c737efbbe9f41e5879c949f19c15624', '[\"*\"]', '2024-01-03 22:22:10', NULL, '2024-01-03 21:59:36', '2024-01-03 22:22:10'),
(55, 'App\\Models\\User', 13, 'token', '897fdcd5e5ebdbe710b635162bc64fb2e12fb1c136cad45bc6ea73cf32b714d6', '[\"*\"]', '2024-01-03 22:29:49', NULL, '2024-01-03 22:22:16', '2024-01-03 22:29:49'),
(56, 'App\\Models\\User', 13, 'token', '1b7af7caa7dd89edd9989b1cde0258e9c5d33d4636581f51d8777e988067b928', '[\"*\"]', '2024-01-03 22:29:54', NULL, '2024-01-03 22:29:54', '2024-01-03 22:29:54'),
(57, 'App\\Models\\User', 13, 'token', 'c197f970ff445100cd5a1dc816bf8966cbb0bbfc69b06cff8daae8ef8fdc5d03', '[\"*\"]', '2024-01-03 22:39:51', NULL, '2024-01-03 22:30:34', '2024-01-03 22:39:51'),
(58, 'App\\Models\\User', 13, 'token', 'b83d9f64dd2ae4605017f0fbd676ca4afb7436f72b8773bd1cf5aed06bf0392e', '[\"*\"]', '2024-01-07 20:56:18', NULL, '2024-01-07 20:24:59', '2024-01-07 20:56:18'),
(59, 'App\\Models\\User', 13, 'token', '8ca3fc97fefe6c0006d8b6efca0a833e7cca552848de2b2979ffe0ce5a6f6a1a', '[\"*\"]', '2024-01-07 21:13:02', NULL, '2024-01-07 21:11:58', '2024-01-07 21:13:02'),
(60, 'App\\Models\\User', 13, 'token', 'f8dc91f4384887f2248d1afb374512dedb51d4eb805bbc78290547de3a8e4dc5', '[\"*\"]', '2024-01-07 21:41:37', NULL, '2024-01-07 21:13:12', '2024-01-07 21:41:37'),
(61, 'App\\Models\\User', 14, 'token', '1406201b93fa4460a1aa31ca628413e6ab782e742cfb1090916832f7d7539872', '[\"*\"]', '2024-01-07 21:44:55', NULL, '2024-01-07 21:41:46', '2024-01-07 21:44:55'),
(62, 'App\\Models\\User', 14, 'token', 'c482cebed9a13feaa0ed6861a36f263accc71e8dc760874581969ed639afb5a9', '[\"*\"]', '2024-01-07 21:53:37', NULL, '2024-01-07 21:44:59', '2024-01-07 21:53:37'),
(63, 'App\\Models\\User', 14, 'token', 'ddbb95f2dce9f1ac562d469fb53d38f51af8b687f306abc255bde4f2bbf10fb9', '[\"*\"]', '2024-01-07 22:11:50', NULL, '2024-01-07 21:53:48', '2024-01-07 22:11:50'),
(64, 'App\\Models\\User', 14, 'token', 'e8cb06ef9142dd02491a2475833671d92cf72d24c8b8a5429f47cc847183d42c', '[\"*\"]', '2024-01-07 22:18:23', NULL, '2024-01-07 22:11:55', '2024-01-07 22:18:23'),
(65, 'App\\Models\\User', 14, 'token', '3437e7d9d0ead6b47acfe03d43d38967b4ebb172a59a10181923748fdad1b911', '[\"*\"]', '2024-01-07 22:44:01', NULL, '2024-01-07 22:18:27', '2024-01-07 22:44:01'),
(66, 'App\\Models\\User', 14, 'token', '7082d3759a98ad61f15e5ff4cd8068e054a6ecaa0c63eb4367e9a3e757c9b2db', '[\"*\"]', '2024-01-07 23:29:49', NULL, '2024-01-07 22:44:08', '2024-01-07 23:29:49'),
(67, 'App\\Models\\User', 16, 'token', '936e80d8fc6e91c3ae8052489f9420d1f872ff10df7ee8b59952b9de17753c3f', '[\"*\"]', '2024-01-07 23:34:10', NULL, '2024-01-07 23:29:58', '2024-01-07 23:34:10'),
(68, 'App\\Models\\User', 16, 'token', '0b78c2a05057d931150c41c7e507901f011ac69d0ff6ea6a69adc766c9530ba1', '[\"*\"]', '2024-01-07 23:51:43', NULL, '2024-01-07 23:34:17', '2024-01-07 23:51:43'),
(69, 'App\\Models\\User', 16, 'token', '2a10fc80f6f426f4ed5c81e6a7121ab5dddb42b997ddd34368bc71b4a4002270', '[\"*\"]', '2024-01-07 23:52:12', NULL, '2024-01-07 23:51:49', '2024-01-07 23:52:12'),
(70, 'App\\Models\\User', 16, 'token', 'f6a62725e995ac6eaf3e9a3a6777663261a32d4772d8867a2cb345f813957997', '[\"*\"]', '2024-01-07 23:52:19', NULL, '2024-01-07 23:52:16', '2024-01-07 23:52:19'),
(71, 'App\\Models\\User', 14, 'token', '774a68635206215da02b56a386f973e85f6fd5839849d59938cbb21d35d0c49e', '[\"*\"]', '2024-01-08 22:32:52', NULL, '2024-01-07 23:52:32', '2024-01-08 22:32:52'),
(72, 'App\\Models\\User', 14, 'token', 'a131e0deda54ab3a7664d92d82a7a16e7441dc273dfa85070215d69bbaf77bc1', '[\"*\"]', '2024-01-08 22:42:49', NULL, '2024-01-08 22:37:27', '2024-01-08 22:42:49'),
(73, 'App\\Models\\User', 13, 'token', '9771656251e87e3860cc9d40aef0759c71ca2e5f39b42ad0ea63ef7eeb0042d4', '[\"*\"]', '2024-01-08 23:20:45', NULL, '2024-01-08 22:42:58', '2024-01-08 23:20:45'),
(74, 'App\\Models\\User', 16, 'token', '6084059e225dd12be2aa2fee76bacb5d8c43ce1ce760f4c966f665b936bcfaff', '[\"*\"]', '2024-01-09 00:41:09', NULL, '2024-01-08 23:21:01', '2024-01-09 00:41:09'),
(75, 'App\\Models\\User', 16, 'token', '4812c6224e8c4fc438051f362053be00f2d8b3430ef0da0ff78814097b79775f', '[\"*\"]', '2024-01-09 18:33:44', NULL, '2024-01-09 18:11:22', '2024-01-09 18:33:44'),
(76, 'App\\Models\\User', 16, 'token', '0b5452bcdab133cd378f6287fa9a228e80318b15675bf07e0adb15442d906bf7', '[\"*\"]', '2024-01-16 02:34:42', NULL, '2024-01-16 02:28:59', '2024-01-16 02:34:42'),
(77, 'App\\Models\\User', 16, 'token', '13e5b6aadda8cb6323d9e1861d356f5eb1085eee34f56ead5897e59e83580428', '[\"*\"]', '2024-01-16 02:35:18', NULL, '2024-01-16 02:34:57', '2024-01-16 02:35:18'),
(78, 'App\\Models\\User', 16, 'token', 'cb6026f267c519fb015248e2e2dca84b7ed4a9f234fd44a55b0b40914966cf71', '[\"*\"]', '2024-01-16 02:41:55', NULL, '2024-01-16 02:35:34', '2024-01-16 02:41:55'),
(79, 'App\\Models\\User', 16, 'token', '7a2b2b7841d711b0fb1991980c3581eea70aca4b957c02a7a9c0e2305705ccd8', '[\"*\"]', '2024-01-16 02:59:12', NULL, '2024-01-16 02:42:01', '2024-01-16 02:59:12'),
(80, 'App\\Models\\User', 15, 'token', '2c92b7554d05632fcc5cf9e450f0a7fbe8b36448748590aff14b9a60b6b8dbbc', '[\"*\"]', '2024-01-16 03:10:21', NULL, '2024-01-16 02:59:27', '2024-01-16 03:10:21'),
(81, 'App\\Models\\User', 15, 'token', '7719717a0260b5ff5d06d078979492a49e1f276eecb3319478691446ef9d7fd4', '[\"*\"]', '2024-01-16 03:12:44', NULL, '2024-01-16 03:10:34', '2024-01-16 03:12:44'),
(82, 'App\\Models\\User', 15, 'token', 'ebafdec11a41b7c816c21a45dd55fb3ca6efaf83e5eaccc5f7d6d86104b632ee', '[\"*\"]', '2024-01-16 03:16:29', NULL, '2024-01-16 03:14:12', '2024-01-16 03:16:29'),
(83, 'App\\Models\\User', 15, 'token', '12fab48f2bb76825a2ac0187d0894b598a9c19456103a0b548d413354a2e4624', '[\"*\"]', '2024-01-16 03:19:40', NULL, '2024-01-16 03:16:42', '2024-01-16 03:19:40'),
(84, 'App\\Models\\User', 3, 'token', 'a48aede44d4bcada1f13a44ba363e2778ff4374e0ce0d55ca001f12b5c5c00b9', '[\"*\"]', '2024-01-16 03:18:39', NULL, '2024-01-16 03:18:31', '2024-01-16 03:18:39'),
(85, 'App\\Models\\User', 15, 'token', 'abd61cc461d7c92727869f72fcdc9329e47fe897496857ca0d7e040435b61628', '[\"*\"]', '2024-01-16 03:20:43', NULL, '2024-01-16 03:19:55', '2024-01-16 03:20:43'),
(86, 'App\\Models\\User', 15, 'token', '788c4eae4f9078a9a652020f4f7494ab09e18c5789e33b38f34b443dc9144176', '[\"*\"]', '2024-01-16 03:22:23', NULL, '2024-01-16 03:20:52', '2024-01-16 03:22:23'),
(87, 'App\\Models\\User', 15, 'token', 'e0de9c5506be2a049d2e22a6acfb647d3a57b609fbfd20d29e6b98e514db2aef', '[\"*\"]', NULL, NULL, '2024-01-16 03:22:29', '2024-01-16 03:22:29'),
(88, 'App\\Models\\User', 15, 'token', 'd132b273f9495b211214ade9f8790e7fa1f1b236a8e066446143c4d4d1852238', '[\"*\"]', NULL, NULL, '2024-01-16 03:23:36', '2024-01-16 03:23:36'),
(89, 'App\\Models\\User', 15, 'token', 'c6d2ba6c46ded46f4e1e2d23b4340726c455f5f8a5ee66f0f04c4e8fe22d13fd', '[\"*\"]', NULL, NULL, '2024-01-16 03:24:59', '2024-01-16 03:24:59'),
(90, 'App\\Models\\User', 15, 'token', '827bf18685589f60ccfa2ef994e62736b465180aaf68936ef342f641245fc626', '[\"*\"]', '2024-01-16 03:27:17', NULL, '2024-01-16 03:26:27', '2024-01-16 03:27:17'),
(91, 'App\\Models\\User', 15, 'token', 'beca177bdccca3495b910f14e17ee56a749d2171b448130957580181d3561c72', '[\"*\"]', '2024-01-16 03:28:17', NULL, '2024-01-16 03:27:25', '2024-01-16 03:28:17'),
(92, 'App\\Models\\User', 15, 'token', '52b644c63a6c181fa6a29f9b3c49e38c2575c76f50e401337d1662ba02a67395', '[\"*\"]', '2024-01-16 03:28:47', NULL, '2024-01-16 03:28:46', '2024-01-16 03:28:47'),
(93, 'App\\Models\\User', 15, 'token', 'd02d5cb68cc6c7626673560f504a5e1a3d4b669a7c53c8a755b72e29051cce2a', '[\"*\"]', '2024-01-16 03:30:59', NULL, '2024-01-16 03:29:59', '2024-01-16 03:30:59'),
(94, 'App\\Models\\User', 15, 'token', 'e8990058940feb11cf4263c6bc137908cb96559156fdb3978d21f88869594753', '[\"*\"]', '2024-01-16 03:35:38', NULL, '2024-01-16 03:31:10', '2024-01-16 03:35:38'),
(95, 'App\\Models\\User', 15, 'token', '17645e5caf586760c13e3af0f3ebde97bd472addcf6675a73e6e6b53cc3f6371', '[\"*\"]', '2024-01-16 03:37:20', NULL, '2024-01-16 03:35:48', '2024-01-16 03:37:20'),
(96, 'App\\Models\\User', 14, 'token', '05cb681507a4b4d35990805ae562cc5097057ce0908639323d7cfb64444facf1', '[\"*\"]', '2024-01-16 03:39:05', NULL, '2024-01-16 03:37:26', '2024-01-16 03:39:05'),
(97, 'App\\Models\\User', 14, 'token', '780f2796149b4822a8717e943f1637a0ac2b5595cbe378d0947a32ad269f79a1', '[\"*\"]', '2024-01-16 03:40:58', NULL, '2024-01-16 03:39:24', '2024-01-16 03:40:58'),
(98, 'App\\Models\\User', 14, 'token', '9c2b6edc7305a804b8d3fddf05a8e3031d4a2c51b0050d7642ecf71510ab4bbe', '[\"*\"]', '2024-01-16 03:42:10', NULL, '2024-01-16 03:41:10', '2024-01-16 03:42:10'),
(99, 'App\\Models\\User', 14, 'token', '7dc4177dd92c06df360c6e953cff9e68ec0ced4ced4166fa32a48d1344b388cc', '[\"*\"]', '2024-01-16 03:44:22', NULL, '2024-01-16 03:42:33', '2024-01-16 03:44:22'),
(100, 'App\\Models\\User', 14, 'token', '064a9e15e9eeaf34d3ba295f4577aa26e3932dadff90acb59f711178bf5b402b', '[\"*\"]', '2024-01-16 03:46:20', NULL, '2024-01-16 03:44:26', '2024-01-16 03:46:20'),
(101, 'App\\Models\\User', 14, 'token', '770d13349c1bd08589e3e55e28a4d904a10e36dbcba3b47c72026e752bc93265', '[\"*\"]', '2024-01-16 03:48:58', NULL, '2024-01-16 03:46:24', '2024-01-16 03:48:58'),
(102, 'App\\Models\\User', 14, 'token', '3fafd60a2e098c0d033054ab60661136e26bac295816e7393939f2aab2669919', '[\"*\"]', '2024-01-16 03:49:45', NULL, '2024-01-16 03:49:03', '2024-01-16 03:49:45'),
(103, 'App\\Models\\User', 14, 'token', '0e10da00bc2f17640136ec0600a9fdf6449cd40f70bb0deecadd60fa57711341', '[\"*\"]', '2024-01-16 03:55:12', NULL, '2024-01-16 03:50:05', '2024-01-16 03:55:12'),
(104, 'App\\Models\\User', 14, 'token', '18adc024ea0a474a078515dea9fb1f2f2ccd420da2989b0991020abc48b4ccd9', '[\"*\"]', '2024-01-16 04:22:52', NULL, '2024-01-16 03:55:21', '2024-01-16 04:22:52'),
(105, 'App\\Models\\User', 14, 'token', '2bc8905bddca6093af18af0d868dc9cc007944c9b958ad2a72fcf391efe8d6e8', '[\"*\"]', '2024-01-16 04:40:16', NULL, '2024-01-16 04:26:18', '2024-01-16 04:40:16'),
(106, 'App\\Models\\User', 14, 'token', '03d92810ebd9e8a1ccbd376e11cf07b453f15a212af674a26cc48a58cdcb4d8f', '[\"*\"]', '2024-01-16 04:40:37', NULL, '2024-01-16 04:40:22', '2024-01-16 04:40:37'),
(107, 'App\\Models\\User', 14, 'token', '197ae6b7134b02fe1aa58a7152a824d5c5f9c27e75e09da8c4e8b2fdd892c4c3', '[\"*\"]', '2024-01-16 04:48:40', NULL, '2024-01-16 04:48:26', '2024-01-16 04:48:40'),
(108, 'App\\Models\\User', 13, 'token', '2f470e3b84537677d808924894db4fecea1203738fce91fb06de026ed9c04bf2', '[\"*\"]', '2024-01-16 04:55:07', NULL, '2024-01-16 04:55:02', '2024-01-16 04:55:07'),
(109, 'App\\Models\\User', 13, 'token', '07706e4d2024a3f543eafb5c0292cbdb336215971cbb4d1862935423580c6724', '[\"*\"]', '2024-01-16 05:08:31', NULL, '2024-01-16 05:08:23', '2024-01-16 05:08:31'),
(110, 'App\\Models\\User', 22, 'token', '514229990e865da72551f7653a0d0733320abe8ce2b18aec17306291e5315676', '[\"*\"]', '2024-01-16 06:20:00', NULL, '2024-01-16 05:54:25', '2024-01-16 06:20:00'),
(111, 'App\\Models\\User', 21, 'token', 'b92be50d75afe32c9cefdb1113198e3edb6304f4b52ffc5a96ab61d3c965d402', '[\"*\"]', '2024-01-16 15:08:56', NULL, '2024-01-16 06:20:09', '2024-01-16 15:08:56'),
(112, 'App\\Models\\User', 21, 'token', 'f340cabe6ccfbbb6de020224fddf55b121c67ca3fa64a75b1aa19b300c67504e', '[\"*\"]', '2024-01-16 15:24:15', NULL, '2024-01-16 15:10:36', '2024-01-16 15:24:15'),
(113, 'App\\Models\\User', 21, 'token', '56f04e65e1ac847e15f1705a710d70fc59f5fd5802c17e54f0cb3afdda5e73f6', '[\"*\"]', '2024-01-16 15:30:44', NULL, '2024-01-16 15:30:37', '2024-01-16 15:30:44'),
(114, 'App\\Models\\User', 13, 'token', '2d0e5484161935625c2f0aba7055501f791aa4fb99988ecec330aea01183a710', '[\"*\"]', '2024-01-16 15:38:24', NULL, '2024-01-16 15:38:19', '2024-01-16 15:38:24'),
(115, 'App\\Models\\User', 14, 'token', '2a3eb904ec15f660ca3337086027a62cb996e14e8c7831d7581171db2c093ee4', '[\"*\"]', '2024-01-16 15:40:16', NULL, '2024-01-16 15:39:02', '2024-01-16 15:40:16'),
(116, 'App\\Models\\User', 22, 'token', 'f89405ef38a2b7b1a337e5b1754147febd8eeb1110e1a25cdb038940a59adb3d', '[\"*\"]', '2024-01-16 15:42:30', NULL, '2024-01-16 15:40:27', '2024-01-16 15:42:30'),
(117, 'App\\Models\\User', 22, 'token', 'beb2635da63c9129d450761299ccfb5435b9faca4a01baa5344573e197585813', '[\"*\"]', '2024-01-16 15:49:54', NULL, '2024-01-16 15:42:40', '2024-01-16 15:49:54'),
(118, 'App\\Models\\User', 22, 'token', '1a49320d25e454975f0443cd549a022851d4f33cb15b5d0bafd279a1e008fcdc', '[\"*\"]', '2024-01-20 13:01:41', NULL, '2024-01-20 13:00:44', '2024-01-20 13:01:41'),
(119, 'App\\Models\\User', 22, 'token', '28218225861baef744a82bfff4c41b54291455512e5b5f44a286d3c6cdc21bfd', '[\"*\"]', '2024-01-20 13:05:29', NULL, '2024-01-20 13:04:35', '2024-01-20 13:05:29'),
(120, 'App\\Models\\User', 22, 'token', 'a674f17ac2ef96def9aac4be1145207392943b383559e3f087d5ea2c9349423c', '[\"*\"]', '2024-01-20 13:05:47', NULL, '2024-01-20 13:05:41', '2024-01-20 13:05:47'),
(121, 'App\\Models\\User', 22, 'token', 'e153252e03bf3b224e78089643151db853024c7390c612dc070096217d67a501', '[\"*\"]', '2024-01-20 13:09:08', NULL, '2024-01-20 13:05:50', '2024-01-20 13:09:08'),
(122, 'App\\Models\\User', 19, 'token', '71ba50041115603003a18da103e5cf7877ffd5ebec184d8babd0eda9aa5c9418', '[\"*\"]', '2024-01-20 13:11:26', NULL, '2024-01-20 13:09:22', '2024-01-20 13:11:26'),
(123, 'App\\Models\\User', 23, 'token', 'cb09853cf27a30ca9aa3956677e7138f2236b5573bfa3eee6084c7b8a0982fe9', '[\"*\"]', '2024-01-20 13:14:25', NULL, '2024-01-20 13:13:11', '2024-01-20 13:14:25'),
(124, 'App\\Models\\User', 23, 'token', 'b36b03549ae4f3e2bf9dca423335cbbf79cfe8434b3e240b4e274d58673a3d2b', '[\"*\"]', '2024-01-22 22:00:05', NULL, '2024-01-22 21:44:39', '2024-01-22 22:00:05'),
(125, 'App\\Models\\User', 23, 'token', '54661b6cc6e2f2a1d058da9ea70a9299e2d96c1c767f66f52a7e54bf6762f5b0', '[\"*\"]', '2024-01-22 23:32:53', NULL, '2024-01-22 22:00:55', '2024-01-22 23:32:53'),
(126, 'App\\Models\\User', 23, 'token', '199d18394928a0c210da120e2f4360b7b4ac7daddd4362b1f9fa8b733db95f3b', '[\"*\"]', '2024-01-23 00:13:18', NULL, '2024-01-22 23:33:07', '2024-01-23 00:13:18'),
(127, 'App\\Models\\User', 23, 'token', '9e1ccb91bd35bbcbf1b7ed293661e70865c08f85f64df4de2d11d6fdaf63c987', '[\"*\"]', '2024-01-23 00:15:04', NULL, '2024-01-23 00:15:03', '2024-01-23 00:15:04'),
(128, 'App\\Models\\User', 23, 'token', '92904b19531be3e5584ae2a084a685e1e7b1a6ebd211658fcadb7ede5f63d4c3', '[\"*\"]', '2024-01-23 00:15:52', NULL, '2024-01-23 00:15:04', '2024-01-23 00:15:52'),
(129, 'App\\Models\\User', 20, 'token', '6f0faa6af44c57389a7e7a8699f7ddd05c4dd95eb655d4e3b02a74506611bc3e', '[\"*\"]', '2024-01-23 00:17:18', NULL, '2024-01-23 00:16:06', '2024-01-23 00:17:18'),
(130, 'App\\Models\\User', 21, 'token', 'd9c68b9a85db10008d2dcdb15df22cab961102a0fa70d43dd3dd774db3219902', '[\"*\"]', '2024-01-23 00:20:30', NULL, '2024-01-23 00:20:24', '2024-01-23 00:20:30'),
(131, 'App\\Models\\User', 14, 'token', 'db5e87e712927a872bef166ac9c1eff2ca3d2fc6917e439a573ea2bb4147d174', '[\"*\"]', '2024-01-23 00:22:24', NULL, '2024-01-23 00:20:40', '2024-01-23 00:22:24'),
(132, 'App\\Models\\User', 14, 'token', '5305a268a23af4ea43bc00c2b348dd0b365b6e1f44a64c6ea8f5d62ffc3a8794', '[\"*\"]', '2024-01-23 17:56:17', NULL, '2024-01-23 17:46:32', '2024-01-23 17:56:17'),
(133, 'App\\Models\\User', 24, 'token', '592b09981259950467bb894efaf0444e0cf4ca8601df74b742cb4d8dff7ac9bb', '[\"*\"]', '2024-01-23 18:01:55', NULL, '2024-01-23 17:57:24', '2024-01-23 18:01:55'),
(134, 'App\\Models\\User', 24, 'token', '11a41c6f661554a5392226f0f96f0a1f324c3ff57df5f849dc3298684c1e5a8c', '[\"*\"]', '2024-01-23 18:41:51', NULL, '2024-01-23 18:12:16', '2024-01-23 18:41:51');

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `num_tickets` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `date_exp` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `class_id`, `zone_id`, `num_tickets`, `amount`, `qr_code`, `date_exp`, `created_at`, `updated_at`) VALUES
(234, 14, 2, 4, 3, 4500.00, 'Bonjour ronaldo,\n      Vous avez reserve 3 tickets pour le 12:50:00 en 2 en zone 4.\n      Le montant total a payer est de 4500 .', '2024-01-23', '2024-01-16 03:57:18', '2024-01-16 03:57:18'),
(280, 22, 1, 3, 3, 7500.00, 'Bonjour gohan,\n      Vous avez reserve 3 tickets pour le depart a 18:10:00 en 1eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 7500 Fcfa .', '2024-01-23', '2024-01-16 05:55:24', '2024-01-16 05:55:24'),
(281, 22, 1, 5, 7, 17500.00, 'Bonjour gohan,\n      Vous avez reserve 7 tickets pour le depart a 18:30:00 en 1eme classe pour la  zone Dakar->Pikine.\n      Le montant total a payer est de 17500 Fcfa .', '2024-01-23', '2024-01-16 06:12:05', '2024-01-16 06:12:05'),
(282, 22, 1, 5, 7, 17500.00, 'Bonjour gohan,\n      Vous avez reserve 7 tickets pour le depart a 18:30:00 en 1eme classe pour la  zone Dakar->Pikine.\n      Le montant total a payer est de 17500 Fcfa .', '2024-01-23', '2024-01-16 06:12:31', '2024-01-16 06:12:31'),
(283, 21, 1, 3, 5, 12500.00, 'Bonjour kilua,\n      Vous avez reserve 5 tickets pour le depart a 10:30:00 en 1eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 12500 Fcfa .', '2024-01-23', '2024-01-16 06:20:29', '2024-01-16 06:20:29'),
(284, 21, 1, 3, 7, 17500.00, 'Bonjour kilua,\n      Vous avez reserve 7 tickets pour le depart a 09:10:00 en 1eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 17500 Fcfa .', '2024-01-23', '2024-01-16 15:22:43', '2024-01-16 15:22:43'),
(285, 19, 2, 6, 67, 100500.00, 'Bonjour freezer,\n      Vous avez reserve 67 tickets pour le depart a 20:10:00 en 2eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 100500 Fcfa .', '2024-01-27', '2024-01-20 13:10:31', '2024-01-20 13:10:31'),
(286, 23, 1, 3, 100, 250000.00, 'Bonjour freeze corleone,\n      Vous avez reserve 100 tickets pour le depart a 10:10:00 en 1eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 250000 Fcfa .', '2024-01-27', '2024-01-20 13:13:58', '2024-01-20 13:13:58'),
(287, 23, 2, 4, 15, 22500.00, 'Bonjour freeze corleone,\n      Vous avez reserve 15 tickets pour le depart a 09:10:00 en 2eme classe pour la  zone Dakar->Guediewaye.\n      Le montant total a payer est de 22500 Fcfa .', '2024-01-29', '2024-01-22 23:54:48', '2024-01-22 23:54:48'),
(288, 23, 2, 6, 9, 13500.00, 'Bonjour freeze corleone,\n      Vous avez reserve 9 tickets pour le depart a 19:10:00 en 2eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 13500 Fcfa .', '2024-01-30', '2024-01-23 00:07:49', '2024-01-23 00:07:49'),
(289, 20, 2, 6, 3, 4500.00, 'Bonjour vegeta,\n      Vous avez reserve 3 tickets pour le depart a 10:50:00 en 2eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 4500 Fcfa .', '2024-01-30', '2024-01-23 00:16:51', '2024-01-23 00:16:51'),
(290, 14, 2, 4, 9, 13500.00, 'Bonjour ronaldo,\n      Vous avez reserve 9 tickets pour le depart a 08:30:00 en 2eme classe pour la  zone Dakar->Guediewaye.\n      Le montant total a payer est de 13500 Fcfa .', '2024-01-30', '2024-01-23 00:22:00', '2024-01-23 00:22:00'),
(291, 14, 2, 6, 6, 9000.00, 'Bonjour ronaldo,\n      Vous avez reserve 6 tickets pour le depart a 10:50:00 en 2eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 9000 Fcfa .', '2024-01-30', '2024-01-23 17:48:57', '2024-01-23 17:48:57'),
(292, 24, 2, 6, 7, 10500.00, 'Bonjour marc evans,\n      Vous avez reserve 7 tickets pour le depart a 10:10:00 en 2eme classe pour la  zone Dakar->Diamniadio.\n      Le montant total a payer est de 10500 Fcfa .', '2024-01-30', '2024-01-23 17:58:10', '2024-01-23 17:58:10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'badara', 'papa@gmail.com', NULL, '$2y$12$Q4h90hSxEZ0p1nc2Slc9V.m/3vcnWLLWrcmatjVbYpvEsIvyJ7sTe', NULL, '2023-12-25 18:07:22', '2023-12-25 18:07:22'),
(2, 'moussa', 'mou33@gmail.com', NULL, '$2y$12$eggPDZo312oYT8UjyOoexuaqh8fNRGC25mcjeMI5ILgk.4TTEGLDy', NULL, '2023-12-25 18:21:57', '2023-12-25 18:21:57'),
(3, 'penda', 'penda22@gmail.com', NULL, '$2y$12$3utEXTdug5qb/vHf6sha9u1IONao2E23l2qtEas2MS3hnOSKnefUy', NULL, '2023-12-25 19:33:40', '2023-12-25 19:33:40'),
(4, 'freeze corleone', 'gojo@gmail.com', NULL, '$2y$12$SfAztEUv43LAjuY4zDSkgeXhBOI2lYo9JSlaITUrkeLlCu4N0wtyK', NULL, '2023-12-26 02:15:35', '2023-12-26 02:15:35'),
(5, 'freeze corleone', 'pndiaye999@gmail.com', NULL, '$2y$12$jpkUkuFEj/vvA0gtDXIbmOo9qdKL8l//owTB/OU4s9SWB0bGKlwT6', NULL, '2023-12-26 02:16:23', '2023-12-26 02:16:23'),
(6, 'psycho pass', 'tonmec29@gmail.com', NULL, '$2y$12$FZ7Ze.PMUO43sGX9MlafN.yI8Qg63NFyh/CAoMc.i9Ig0ghgGV/5W', NULL, '2023-12-26 02:17:33', '2023-12-26 02:17:33'),
(7, 'satoru', 'pbadarandiaye@groupeisi.com', NULL, '$2y$12$LBDPzyZllOImGGf8j1yg1Ofi/ESSZUrMpADYNwYPnIfh9vqUWEEK.', NULL, '2023-12-26 02:27:04', '2023-12-26 02:27:04'),
(10, 'mushoku', 'mapaye999@gmail.com', NULL, '$2y$12$vCmlvAwF5XkbxGTKavrVteTxpK/d.QG8wLyUmiMYZ0NVrzGllJlBy', NULL, '2023-12-26 02:29:36', '2023-12-26 02:29:36'),
(11, 'mushoku', 'mec99@gmail.com', NULL, '$2y$12$.H9aVItDgXApe6wzERlczeL3a4ltpnu63hKOApTDNyzsrB.MFLMZ6', NULL, '2023-12-26 02:30:19', '2023-12-26 02:30:19'),
(13, 'messsi', 'messi999@gmail.com', NULL, '$2y$12$RP5HVCcIqkzPalvKNgO7x.Mlcp1CeQXwsTWujUDZwq9S4tn2MYV0e', NULL, '2023-12-26 22:35:20', '2023-12-26 22:35:20'),
(14, 'ronaldo', 'cr7@gmail.com', NULL, '$2y$12$mRBHuWwHWX4/8ZB6ItdvSuJVgzNCKfQGCBFVU0qEzqIjEfTQGzTFC', NULL, '2023-12-26 23:29:05', '2023-12-26 23:29:05'),
(15, 'papa99', 'bn99@gmail.com', NULL, '$2y$12$hjkh7PYC/d1LKexLer6iMug8ZPjW1Ofrb8RRjGsmfkYFXu8K8DzfG', NULL, '2023-12-27 01:33:18', '2023-12-27 01:33:18'),
(16, 'badara', 'papabn99@gmail.com', NULL, '$2y$12$s4E4cBzUJ5veFLnXkUvyy.UN.rLabyr0RdWf8OM2Xc5PNOhoAA8Km', NULL, '2023-12-28 00:30:02', '2023-12-28 00:30:02'),
(17, 'adiagg', 'adia27@gmai', NULL, '$2y$12$0YIfDkd69gnDiSWNu7W8wuaxykXie3oAeHZoTgwkURIl56BL67K2e', NULL, '2024-01-16 05:42:39', '2024-01-16 05:42:39'),
(18, 'szeaa', 'ya@gmail.com', NULL, '$2y$12$qxREJNe8J9R7P4b4NaW3ZO9g6HGIqG1ycLY.uG8IhomUuPeWnAPfu', NULL, '2024-01-16 05:46:00', '2024-01-16 05:46:00'),
(19, 'freezer', 'freezer29@gmail.com', NULL, '$2y$12$hg7Bh4Zm9VbJcipbdMh3k.c3Bs9GJx62Je7limbPapkrr6F1Ra3OO', NULL, '2024-01-16 05:48:15', '2024-01-16 05:48:15'),
(20, 'vegeta', 'thegoat29@gmail.com', NULL, '$2y$12$BQrHbkcOkq/F2uuGiUc8W.5K.72FTCXP675frwhMBQNfwlbkLYKjG', NULL, '2024-01-16 05:49:36', '2024-01-16 05:49:36'),
(21, 'kilua', 'zoldik@gmail.com', NULL, '$2y$12$lnhvA63ivceK/jf0NjkaLukh2HYH.pINROlC8IJvA.5k7AyzbHhjW', NULL, '2024-01-16 05:50:09', '2024-01-16 05:50:09'),
(22, 'gohan', 'gohan@gmail.com', NULL, '$2y$12$givbqfOViZFsKbDQqcS4LubgPwLtbEbsrK1zxoXYtQ7UYk3WHtca.', NULL, '2024-01-16 05:51:12', '2024-01-16 05:51:12'),
(23, 'freeze corleone', 'freezer667@gmail.com', NULL, '$2y$12$ngvl/remLy.UMC7B.IbZB.Ha9iShZnLxPBHswLZi0BM6vcEwF8Vuq', NULL, '2024-01-20 13:12:59', '2024-01-20 13:12:59'),
(24, 'marc evans', 'marc@gmail.com', NULL, '$2y$12$NdBNC5RL46lLgHp9xiANu.yTYBcafi9da6kzkdFxGdBuA5IWkJvkC', NULL, '2024-01-23 17:57:12', '2024-01-23 17:57:12');

-- --------------------------------------------------------

--
-- Structure de la table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `zones`
--

INSERT INTO `zones` (`id`, `name`, `description`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'Zone 1', 'Dakar à Thiaroye', 1, '2023-12-27 20:19:19', '2023-12-27 20:19:19'),
(2, 'Zone 1', 'Dakar à Thiaroye', 2, '2023-12-27 20:21:09', '2023-12-27 20:21:09'),
(3, 'Zone 2', 'Thiaroye à Bargny', 1, '2023-12-27 20:22:25', '2023-12-27 20:22:25'),
(4, 'Zone 2', 'Thiaroye à Bargny', 2, '2023-12-27 20:22:46', '2023-12-27 20:22:46'),
(5, 'Zone 3', ' Vers Diamniadio', 1, '2023-12-27 20:24:32', '2023-12-27 20:24:32'),
(6, 'Zone 3', ' Vers Diamniadio', 2, '2023-12-27 20:24:52', '2023-12-27 20:24:52');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `horaires`
--
ALTER TABLE `horaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_class_id_foreign` (`class_id`),
  ADD KEY `tickets_zone_id_foreign` (`zone_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zones_class_id_foreign` (`class_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `horaires`
--
ALTER TABLE `horaires`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tickets_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`);

--
-- Contraintes pour la table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `zones_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
