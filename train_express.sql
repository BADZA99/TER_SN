-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 08 jan. 2024 à 00:56
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
(71, 'App\\Models\\User', 14, 'token', '774a68635206215da02b56a386f973e85f6fd5839849d59938cbb21d35d0c49e', '[\"*\"]', '2024-01-07 23:52:54', NULL, '2024-01-07 23:52:32', '2024-01-07 23:52:54');

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
(1, 1, 1, 1, 5, 14000.00, 'code', '2024-01-25', '2024-01-07 18:44:15', '2024-01-07 18:44:15'),
(2, 4, 1, 2, 10, 1400055.00, 'qrcode', '2024-01-17', '2024-01-07 20:05:38', '2024-01-07 20:05:38'),
(3, 2, 1, 2, 4, 10000.00, 'qrcode', '2024-01-27', '2024-01-07 20:08:21', '2024-01-07 20:08:21'),
(4, 2, 1, 2, 4, 150000.00, 'qrcode', '2024-01-29', '2024-01-07 20:09:22', '2024-01-07 20:09:22'),
(5, 4, 2, 2, 4, 170000.00, 'scannel', '2024-01-29', '2024-01-07 20:10:46', '2024-01-07 20:10:46'),
(6, 14, 1, 3, 5, 12500.00, 'http://localhost:5173/infosReservation?class=1&zone=3&tickets=5&total=12500', '2024-01-14', '2024-01-07 22:02:33', '2024-01-07 22:02:33'),
(7, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:34:10', '2024-01-07 22:34:10'),
(8, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:34:10', '2024-01-07 22:34:10'),
(9, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:34:15', '2024-01-07 22:34:15'),
(10, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:34:15', '2024-01-07 22:34:15'),
(11, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:35:06', '2024-01-07 22:35:06'),
(12, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:35:06', '2024-01-07 22:35:06'),
(13, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:35:09', '2024-01-07 22:35:09'),
(14, 14, 2, 4, 6, 9000.00, 'http://http://localhost:5173/infosReservation?class=2&zone=4&tickets=6&total=9000', '2024-01-14', '2024-01-07 22:35:09', '2024-01-07 22:35:09');

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
(16, 'badara', 'papabn99@gmail.com', NULL, '$2y$12$s4E4cBzUJ5veFLnXkUvyy.UN.rLabyr0RdWf8OM2Xc5PNOhoAA8Km', NULL, '2023-12-28 00:30:02', '2023-12-28 00:30:02');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
