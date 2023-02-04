-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 04 2023 г., 09:16
-- Версия сервера: 5.7.39
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `corporative`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dialogs`
--

CREATE TABLE `dialogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reciver_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `dialogs`
--

INSERT INTO `dialogs` (`id`, `user_id`, `reciver_id`) VALUES
(1, 2, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `folders`
--

CREATE TABLE `folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `reciver_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(30, '2014_10_12_000000_create_users_table', 1),
(31, '2014_10_12_100000_create_password_resets_table', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 1),
(33, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(34, '2023_01_24_003811_create_roles_table', 1),
(35, '2023_01_24_003840_update_user', 1),
(36, '2023_01_24_010555_create_permissions_table', 1),
(37, '2023_01_24_010607_create_role_permissions_table', 1),
(38, '2023_01_24_010619_create_tasks_table', 1),
(39, '2023_01_24_011014_create_messages_table', 1),
(40, '2023_01_24_011044_create_favorites_table', 1),
(41, '2023_01_24_011055_create_folders_table', 1),
(42, '2023_01_24_011111_create_files_table', 1),
(43, '2023_01_24_999999_add_active_status_to_users', 2),
(44, '2023_01_24_999999_add_avatar_to_users', 2),
(45, '2023_01_24_999999_add_dark_mode_to_users', 2),
(46, '2023_01_24_999999_add_messenger_color_to_users', 2),
(47, '2023_01_24_999999_create_favorites_table', 2),
(48, '2023_01_24_999999_create_messages_table', 2),
(49, '0000_00_00_000000_create_websockets_statistics_entries_table', 3),
(50, '2023_01_27_084103_create_table_message', 4),
(51, '2023_01_27_095259_create_dialogs_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'role.create'),
(2, 'all'),
(3, 'role.update'),
(4, 'role.read'),
(5, 'role.delete'),
(10, 'file.create'),
(11, 'file.read'),
(12, 'file.update'),
(13, 'file.delete'),
(14, 'folder.create'),
(15, 'folder.read'),
(16, 'folder.update'),
(17, 'folder.delete'),
(18, 'task.create'),
(19, 'task.read'),
(20, 'task.update'),
(21, 'task.delete'),
(23, 'users');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'authToken', 'edf351ce25da210d347d57a7ad308ae995790f839062a5bb468522fdf9711921', '[\"*\"]', NULL, '2023-01-23 22:51:03', '2023-01-23 22:51:03'),
(2, 'App\\Models\\User', 1, 'authToken', '2b160fd30b856903ebe25660ed15965773d6d27776ee9adc840679299aceadfd', '[\"*\"]', '2023-02-01 08:56:43', '2023-01-23 22:51:07', '2023-02-01 08:56:43'),
(3, 'App\\Models\\User', 1, 'authToken', '419ea9b095d3930cfeca0ed5bec24c69333cb29ddba2209f44d778aeb1dbee40', '[\"*\"]', '2023-01-24 03:56:35', '2023-01-24 03:52:17', '2023-01-24 03:56:35'),
(4, 'App\\Models\\User', 1, 'authToken', '524b892de61ce03750b18747364ab91fefb0b0b8b11afbae5eaa24319a692f27', '[\"*\"]', NULL, '2023-01-24 04:02:55', '2023-01-24 04:02:55'),
(5, 'App\\Models\\User', 1, 'authToken', '79960a6cb5020860288ea02d38007c08d8e680957d44203ee6c68ce8ed339441', '[\"*\"]', NULL, '2023-01-24 04:03:10', '2023-01-24 04:03:10'),
(6, 'App\\Models\\User', 1, 'authToken', 'dbc68df98d96cac1ee6350ba93a2571cbdb8fa07a1e5eb8cc652851fbe331942', '[\"*\"]', NULL, '2023-01-24 04:03:11', '2023-01-24 04:03:11'),
(7, 'App\\Models\\User', 1, 'authToken', '98ad3fc00d72878acf64c307fa49998eaa9d50b8091d3f23adeed9e9bd3a2e3f', '[\"*\"]', NULL, '2023-01-24 04:03:13', '2023-01-24 04:03:13'),
(8, 'App\\Models\\User', 1, 'authToken', '0fefb74c8a9a5029f2f22220a4687f486eac4b657d16352f6a84a271415f0a3d', '[\"*\"]', NULL, '2023-01-24 04:03:14', '2023-01-24 04:03:14'),
(9, 'App\\Models\\User', 1, 'authToken', '14dc1e0eaa726eb12b20518a9a9d209ab4794ede9698d4b839137028ab1911de', '[\"*\"]', NULL, '2023-01-24 04:03:19', '2023-01-24 04:03:19'),
(10, 'App\\Models\\User', 1, 'authToken', '9c6d61395e64d2896bb08247aff36cff55fa4a705b6fd3726024967b1ec99e34', '[\"*\"]', NULL, '2023-01-24 04:03:20', '2023-01-24 04:03:20'),
(11, 'App\\Models\\User', 1, 'authToken', 'b49a33072909863581b0687161e97a94cc4e49fd6844dc618f63b4f4efb24530', '[\"*\"]', NULL, '2023-01-24 04:03:37', '2023-01-24 04:03:37'),
(12, 'App\\Models\\User', 1, 'authToken', '142e2c2703e70090032d74444b36005ed83423c617517f60cc82cd670b7b1ef9', '[\"*\"]', NULL, '2023-01-24 04:04:25', '2023-01-24 04:04:25'),
(13, 'App\\Models\\User', 1, 'authToken', '59c323c50f64c1a54cf5bedf71d8fb51f73ba9b3f5c1ed2dfbd0bfdadb960c88', '[\"*\"]', '2023-01-24 04:04:43', '2023-01-24 04:04:43', '2023-01-24 04:04:43'),
(14, 'App\\Models\\User', 1, 'authToken', '7f52163e05b9e78f23eac144777ca95919ffbc4a2a566cc6b8d651c71dd54fa8', '[\"*\"]', '2023-01-24 04:04:44', '2023-01-24 04:04:44', '2023-01-24 04:04:44'),
(15, 'App\\Models\\User', 1, 'authToken', '71e975ec1b39946280640d7600ac9cf79527eccac6fd80d126b198eff60c6d7b', '[\"*\"]', '2023-01-24 04:05:12', '2023-01-24 04:05:12', '2023-01-24 04:05:12'),
(16, 'App\\Models\\User', 1, 'authToken', '2c6f90937ebbf2503c8003bacdcd5150c4eeda38ea1526c8e42b110e58653a97', '[\"*\"]', '2023-01-24 04:05:23', '2023-01-24 04:05:22', '2023-01-24 04:05:23'),
(17, 'App\\Models\\User', 1, 'authToken', 'aa0eb3e5efffac0f07cb7e852c16ce4a5a5b11418a7dbaded873da341c4d87a9', '[\"*\"]', '2023-01-24 04:05:30', '2023-01-24 04:05:30', '2023-01-24 04:05:30'),
(18, 'App\\Models\\User', 1, 'authToken', '6ae1d1bf82b61ee295994350a473ae524f2d9ec05ba7caa6675ccdbb8ba2874e', '[\"*\"]', '2023-01-24 04:06:32', '2023-01-24 04:06:32', '2023-01-24 04:06:32'),
(19, 'App\\Models\\User', 1, 'authToken', 'c03fe1ed58295edccf1e436be0a7901bea81af4ef46c0cfec42b72da45f3c430', '[\"*\"]', '2023-01-24 04:09:40', '2023-01-24 04:09:40', '2023-01-24 04:09:40'),
(20, 'App\\Models\\User', 1, 'authToken', 'e0bbd03e3991a408283611b0ec95a8a8a5e6c267bced9dfa83094a3f8dcf6d64', '[\"*\"]', '2023-01-24 04:10:06', '2023-01-24 04:10:06', '2023-01-24 04:10:06'),
(21, 'App\\Models\\User', 1, 'authToken', '20dd80e2568b3ee82ef5e00da244ef1392a0823cd92f82c58d231562807effb8', '[\"*\"]', '2023-01-24 04:10:18', '2023-01-24 04:10:18', '2023-01-24 04:10:18'),
(22, 'App\\Models\\User', 6, 'authToken', '67fa66dfcebb0d4fac818387bafd309e6ff7ed82c6b19a3214b77c152aa3f817', '[\"*\"]', NULL, '2023-01-25 06:43:12', '2023-01-25 06:43:12'),
(23, 'App\\Models\\User', 6, 'authToken', 'fe9acb9e557b3bd82a20eccea029a75efbdede56eb1246eabb773bc86583dd7f', '[\"*\"]', NULL, '2023-01-25 06:48:04', '2023-01-25 06:48:04'),
(24, 'App\\Models\\User', 1, 'authToken', '3cbb5af08ee503ff64eeae7c3e6ed4ad0e6ab46ae0199f926023a71f69c33db9', '[\"*\"]', '2023-01-26 02:34:46', '2023-01-26 02:34:46', '2023-01-26 02:34:46'),
(25, 'App\\Models\\User', 1, 'authToken', '0c577969965fe72ce937e99c9a0435ad6c453b23328e2e037cb7d53b11eeedce', '[\"*\"]', NULL, '2023-01-26 02:35:11', '2023-01-26 02:35:11'),
(26, 'App\\Models\\User', 1, 'authToken', '3cfded242e2b083e817f9ee691b06c54fb74eef46dd1346ea53aa97caa0ed396', '[\"*\"]', NULL, '2023-01-26 02:35:12', '2023-01-26 02:35:12'),
(27, 'App\\Models\\User', 1, 'authToken', '7f65a92177511ef42b76c4f5b93eeaff80c242d34bdd827459403280086a2f4f', '[\"*\"]', NULL, '2023-01-26 02:35:27', '2023-01-26 02:35:27'),
(28, 'App\\Models\\User', 1, 'authToken', 'cccbd5b5dccc03b6347cd3aa9434725ed1d54e08885ff9df652d55aec62010c1', '[\"*\"]', '2023-01-26 02:37:11', '2023-01-26 02:37:11', '2023-01-26 02:37:11'),
(29, 'App\\Models\\User', 1, 'authToken', 'c92d4a46347c254e98630e267f693ea63a3aebe1a20774c01e23f088753c30f7', '[\"*\"]', '2023-01-26 02:37:50', '2023-01-26 02:37:50', '2023-01-26 02:37:50'),
(30, 'App\\Models\\User', 1, 'authToken', 'd41268672c6ce9cca45727c3d9a8512e6a1f554903312138fff2490f40beeb73', '[\"*\"]', '2023-01-26 02:37:53', '2023-01-26 02:37:53', '2023-01-26 02:37:53'),
(31, 'App\\Models\\User', 1, 'authToken', 'ea2b726c6375c0f48c38e81a53507bf1573b9a4cd5b5b4574d31d5646051fa84', '[\"*\"]', '2023-01-26 02:38:17', '2023-01-26 02:38:17', '2023-01-26 02:38:17'),
(32, 'App\\Models\\User', 1, 'authToken', '8b38f067b48420bca7dd2406943477f126a962447a35d0febcf4c263af32a8ab', '[\"*\"]', '2023-01-26 02:40:32', '2023-01-26 02:40:32', '2023-01-26 02:40:32'),
(33, 'App\\Models\\User', 1, 'authToken', 'cd3498f0170bb4fc4984da873aad5cf6738206aab3f87ea08a1860ef63c56bba', '[\"*\"]', '2023-01-26 02:40:52', '2023-01-26 02:40:51', '2023-01-26 02:40:52'),
(34, 'App\\Models\\User', 1, 'authToken', 'e48619b5dc685b1d89ead7e5c222d3f9b10c9ec1a7a22e465942cc8171734d15', '[\"*\"]', '2023-01-26 02:40:52', '2023-01-26 02:40:52', '2023-01-26 02:40:52'),
(35, 'App\\Models\\User', 1, 'authToken', 'ce060c3890ce9369ab0c6ce622586967316c3952532c9bdd5b2e2e76b4928ad5', '[\"*\"]', '2023-01-26 02:41:06', '2023-01-26 02:41:06', '2023-01-26 02:41:06'),
(36, 'App\\Models\\User', 1, 'authToken', '1868f3adb9353841534b0692314d6c90444c65bf8b8994b8430188c79d881aac', '[\"*\"]', '2023-01-26 02:41:43', '2023-01-26 02:41:43', '2023-01-26 02:41:43'),
(37, 'App\\Models\\User', 1, 'authToken', '92adba4f311bc39853c7cbef0c1072dd3bb24614186b23f370439fa93657fb88', '[\"*\"]', '2023-01-26 02:41:44', '2023-01-26 02:41:44', '2023-01-26 02:41:44'),
(38, 'App\\Models\\User', 1, 'authToken', '5fe1bb125f696156395de7befef6040776343ae536249d1d765310ac76a410e8', '[\"*\"]', '2023-01-26 02:42:02', '2023-01-26 02:42:02', '2023-01-26 02:42:02'),
(39, 'App\\Models\\User', 1, 'authToken', '0b45b0431b5257068157acf2a006207f8baa700b06e54177ecda0a721a2114ff', '[\"*\"]', '2023-01-26 02:42:06', '2023-01-26 02:42:06', '2023-01-26 02:42:06'),
(40, 'App\\Models\\User', 1, 'authToken', '4246832444c44ad542d7b69a193f1e9fd8956f671da0d8c1d95dddb97eb8a0b8', '[\"*\"]', '2023-01-26 02:42:11', '2023-01-26 02:42:11', '2023-01-26 02:42:11'),
(41, 'App\\Models\\User', 1, 'authToken', '9f030c21b7e58619db2ebe70dea1ce52d7f42ccfcf4b4536e808685f7bd9ae86', '[\"*\"]', '2023-01-26 02:42:23', '2023-01-26 02:42:23', '2023-01-26 02:42:23'),
(42, 'App\\Models\\User', 1, 'authToken', '85830b8c993feeeb58264ad370368ad96a13604344c7430e66d62b061028ce07', '[\"*\"]', '2023-01-26 02:42:36', '2023-01-26 02:42:36', '2023-01-26 02:42:36'),
(43, 'App\\Models\\User', 1, 'authToken', '3d89e78789f9326e9a664e15c3e1118abf4050bfe67c6e795e9883c2c7fecdb6', '[\"*\"]', '2023-01-26 02:42:52', '2023-01-26 02:42:52', '2023-01-26 02:42:52'),
(44, 'App\\Models\\User', 1, 'authToken', '0446c8f62a83277f9e47097c5d5f39feef39d61dc3c643c03f7042697900c469', '[\"*\"]', '2023-01-26 02:43:37', '2023-01-26 02:43:37', '2023-01-26 02:43:37'),
(45, 'App\\Models\\User', 1, 'authToken', 'df83785bccfac25011dcbace8026563e18fff88f0d4eb9a581e6635ead960462', '[\"*\"]', NULL, '2023-01-26 02:58:52', '2023-01-26 02:58:52'),
(46, 'App\\Models\\User', 1, 'authToken', '46fa46103c91977456d133f305789cd83fa0bf9eb158f64897dc3a94b9645284', '[\"*\"]', NULL, '2023-01-26 02:58:53', '2023-01-26 02:58:53'),
(47, 'App\\Models\\User', 1, 'authToken', 'a9c6dd605814a4ea800cfef0ecd6b5f6f8768d598daa86559bc64779ad34af1f', '[\"*\"]', NULL, '2023-01-26 03:01:10', '2023-01-26 03:01:10'),
(48, 'App\\Models\\User', 1, 'authToken', '1c8c3849297a9c8dd520996cf60cf88e094ee09b474192367bec8aab5082cd1a', '[\"*\"]', NULL, '2023-01-26 03:01:44', '2023-01-26 03:01:44'),
(49, 'App\\Models\\User', 1, 'authToken', '27f48a805e12782b11ff10b3c9b5af441da44e654829caabcd0c4c2fe94b4d91', '[\"*\"]', NULL, '2023-01-26 03:01:48', '2023-01-26 03:01:48'),
(50, 'App\\Models\\User', 1, 'authToken', '1786b6c6b9636b3ac32086d0a547cedf63f5b61d6b8d7d2013caf1f316c92591', '[\"*\"]', NULL, '2023-01-26 03:01:50', '2023-01-26 03:01:50'),
(51, 'App\\Models\\User', 1, 'authToken', '4dbf30d6a1238e525e3f4c0cdf48d9624edc7a12357594f60ff6e2888e5edcc1', '[\"*\"]', NULL, '2023-01-26 03:02:03', '2023-01-26 03:02:03'),
(52, 'App\\Models\\User', 1, 'authToken', '39b9629c5eb2b873190a1c00bf90d21ca6a5ab3660618bcc5c2b4e2c12acb8ea', '[\"*\"]', NULL, '2023-01-26 03:02:04', '2023-01-26 03:02:04'),
(53, 'App\\Models\\User', 1, 'authToken', '6326516b46ffb00bfef6b14d37d0c197fbf7a2201b9be7a46a65bd33b0318806', '[\"*\"]', '2023-01-26 03:02:37', '2023-01-26 03:02:37', '2023-01-26 03:02:37'),
(54, 'App\\Models\\User', 1, 'authToken', '75061914ef4ab0857729e35b8ce92d0eb25c35872c7c447c34c3a19b268e9450', '[\"*\"]', '2023-01-26 03:03:14', '2023-01-26 03:03:13', '2023-01-26 03:03:14'),
(55, 'App\\Models\\User', 1, 'authToken', 'ffabce2c7b3d6924193905cd43877ed06883651409e0b8a78c20a84ae731aa25', '[\"*\"]', '2023-01-26 03:03:47', '2023-01-26 03:03:47', '2023-01-26 03:03:47'),
(56, 'App\\Models\\User', 1, 'authToken', '3e88a495aa1eb9d9fa45fe8ec944e9f762cacf7142ecbff8cff14191983c3c2a', '[\"*\"]', NULL, '2023-01-26 03:04:14', '2023-01-26 03:04:14'),
(57, 'App\\Models\\User', 1, 'authToken', 'f88bb96b22fd38a735085bc1b428c0214f5a77e27907d84e6115c5c2e3148017', '[\"*\"]', '2023-01-26 03:04:29', '2023-01-26 03:04:29', '2023-01-26 03:04:29'),
(58, 'App\\Models\\User', 1, 'authToken', 'c4fd19f07bc421db7e8692e0661794f914dfd37416093236c4f866162308f054', '[\"*\"]', '2023-01-26 03:04:42', '2023-01-26 03:04:42', '2023-01-26 03:04:42'),
(59, 'App\\Models\\User', 1, 'authToken', '7bc770f8bf239fc75feac71daeaf814073add08853ea1a3fca422c6a8d853a77', '[\"*\"]', '2023-01-26 03:05:00', '2023-01-26 03:05:00', '2023-01-26 03:05:00'),
(60, 'App\\Models\\User', 1, 'authToken', 'b1a50d7f8d54dbf175b397eb094568062f6061dd776aaacd7c7c8b63e217a360', '[\"*\"]', '2023-01-26 03:05:01', '2023-01-26 03:05:01', '2023-01-26 03:05:01'),
(61, 'App\\Models\\User', 1, 'authToken', 'eca6f6b0e4e0146d5e3e67f46aaf39d2baa8dca2ba1716b16ef6e65119d04cdd', '[\"*\"]', '2023-01-26 03:07:02', '2023-01-26 03:07:01', '2023-01-26 03:07:02'),
(62, 'App\\Models\\User', 1, 'authToken', 'ee1df0044287abd1b39678bc0f7cecae5dc26cc2523edd9e189e0c08c185ed0a', '[\"*\"]', '2023-01-26 03:07:03', '2023-01-26 03:07:02', '2023-01-26 03:07:03'),
(63, 'App\\Models\\User', 1, 'authToken', '59993696a105fce98006cd9e5f72ccad41d03f2127f9b3ed98e0a78c5ee982c2', '[\"*\"]', NULL, '2023-01-26 03:08:49', '2023-01-26 03:08:49'),
(64, 'App\\Models\\User', 1, 'authToken', '8b712df421649db4d68684a11ffcdace3ae65270e32d5460211e60e14dde840e', '[\"*\"]', NULL, '2023-01-26 03:08:56', '2023-01-26 03:08:56'),
(65, 'App\\Models\\User', 1, 'authToken', 'cd1d2eb3520c60ee0b309d4f32ffec662277687f95c74e2c7b69553530ad4b42', '[\"*\"]', '2023-01-26 10:20:48', '2023-01-26 03:09:03', '2023-01-26 10:20:48'),
(66, 'App\\Models\\User', 1, 'authToken', 'fb49a0bbfc3a34d5cf71539571c58b46bec0ff41812fb6daaefa0bc351c41e0f', '[\"*\"]', '2023-01-27 06:36:02', '2023-01-26 03:58:13', '2023-01-27 06:36:02'),
(67, 'App\\Models\\User', 1, 'authToken', 'c090b80b77fda90d7227e98a24f86443b5f389c790a512dca159761ac825d124', '[\"*\"]', NULL, '2023-01-26 08:50:20', '2023-01-26 08:50:20'),
(68, 'App\\Models\\User', 1, 'authToken', '88604d956ef7b4ad3b9e06d39650a0ca10f9efac74443d089f7b04433f9a0e36', '[\"*\"]', NULL, '2023-01-26 10:21:21', '2023-01-26 10:21:21'),
(69, 'App\\Models\\User', 1, 'authToken', '33594030fbfc662f54f16cbb75563f8e55594af970dca3c47543b1397ed8a3b5', '[\"*\"]', NULL, '2023-01-26 10:21:22', '2023-01-26 10:21:22'),
(70, 'App\\Models\\User', 1, 'authToken', '1539b0ead26d300ea3a1637149b0c20bedac788c62b91f173c0dcfbb8e38182f', '[\"*\"]', NULL, '2023-01-26 10:21:23', '2023-01-26 10:21:23'),
(71, 'App\\Models\\User', 1, 'authToken', 'a666e2ff7261bde8e4dc787920fa4b3c1c925b0733243a02c58ffd5b542b0bf9', '[\"*\"]', NULL, '2023-01-26 10:21:23', '2023-01-26 10:21:23'),
(72, 'App\\Models\\User', 1, 'authToken', 'd2d5bb2adc3f5c1ecf49ed23a517b454761ad24ee32ad9af02ce276feb81fd0a', '[\"*\"]', NULL, '2023-01-26 10:21:23', '2023-01-26 10:21:23'),
(73, 'App\\Models\\User', 1, 'authToken', 'b18d9abecb137274bf578d1a159630e4c5e577cb286102a01ff0e432c18dd3b0', '[\"*\"]', NULL, '2023-01-26 10:21:23', '2023-01-26 10:21:23'),
(74, 'App\\Models\\User', 1, 'authToken', '48fdfb72f07fe37658d73a179ea496b918f050b28b4277385636b16b38c1a43d', '[\"*\"]', '2023-01-27 03:46:34', '2023-01-26 10:21:24', '2023-01-27 03:46:34'),
(75, 'App\\Models\\User', 1, 'authToken', 'df152dea2b04daaafcf79ebeb79b35c20cc1d7e63fa5d408977a1eb750851fc0', '[\"*\"]', '2023-01-27 06:38:38', '2023-01-27 03:46:59', '2023-01-27 06:38:38'),
(76, 'App\\Models\\User', 1, 'authToken', 'bae16afad42b02379de870b7354ae4628f741df00d45cedacfd367a7fc4e64a5', '[\"*\"]', '2023-01-27 06:27:17', '2023-01-27 03:59:00', '2023-01-27 06:27:17'),
(77, 'App\\Models\\User', 2, 'authToken', 'a4b59c2fe3be4b9665b03e7b66e17f549686837583a908cc36ab330e58fc9c8f', '[\"*\"]', '2023-01-28 03:17:35', '2023-01-27 06:27:39', '2023-01-28 03:17:35'),
(78, 'App\\Models\\User', 1, 'authToken', '4fc3a6d96f6b12d093eab242c43db5636f874898d9818db4143977d497c58559', '[\"*\"]', '2023-01-27 08:54:29', '2023-01-27 07:25:07', '2023-01-27 08:54:29'),
(79, 'App\\Models\\User', 1, 'authToken', 'f7dbac80e81d7d69eca19210d66007747c85598ebd77e06e83f1f0f7a2afe111', '[\"*\"]', '2023-02-02 01:21:08', '2023-01-27 08:54:27', '2023-02-02 01:21:08'),
(80, 'App\\Models\\User', 1, 'authToken', 'dc7a836f040f488b230789f29605e21ba2b08e7143dea5eb733a8562fdffcd90', '[\"*\"]', '2023-02-01 08:25:42', '2023-01-28 03:57:10', '2023-02-01 08:25:42');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`) VALUES
(3, 2, 2),
(4, 1, 13),
(5, 1, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` datetime NOT NULL,
  `from_user` bigint(20) UNSIGNED NOT NULL,
  `to_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `active_status`) VALUES
(1, 'Администратор', 'users/1675250427.png', 'admin@admin.com', NULL, '$2y$10$skT8bSb0P6ntMWBOtOWHpe.JA6rh.0suxgXU2fF7u849qEmzLO1KG', NULL, NULL, NULL, 2, 0),
(2, 'Пользователь', 'users/1675250400.png', 'user@user.com', NULL, '$2y$10$t.XrRBjd1XJtOk6SsFbwYuJz3nGKXoto5LqP3uiDWekPhHLPguFz6', NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dialogs`
--
ALTER TABLE `dialogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dialogs_user_id_foreign` (`user_id`),
  ADD KEY `dialogs_reciver_id_foreign` (`reciver_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_folder_id_foreign` (`folder_id`);

--
-- Индексы таблицы `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_reciver_id_foreign` (`reciver_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dialogs`
--
ALTER TABLE `dialogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `folders`
--
ALTER TABLE `folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `dialogs`
--
ALTER TABLE `dialogs`
  ADD CONSTRAINT `dialogs_reciver_id_foreign` FOREIGN KEY (`reciver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `dialogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_reciver_id_foreign` FOREIGN KEY (`reciver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
