-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2023 lúc 08:34 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `user-manager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_10_21_025559_create_accounts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1487621d53585ccfd2dbd7e9dc48f5e09aae3edcc7e9bab97b2458a4777230bceda9332c370de0a3', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 23:20:33', '2023-10-20 23:20:33', '2024-10-21 06:20:33'),
('261f3f0bebde8bc76a7f2a720d5cc6eb4f11f2cc5c0a4a9bae6dcd21e0066ce14209e214f0bc1c45', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 21:48:19', '2023-10-20 21:48:19', '2024-10-21 04:48:19'),
('2aa9d629644c7ea2b8446164a69a4be747eda7699ff88a6eaa9e802839091f1fb8bb1185d30bb214', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 01:44:21', '2023-10-21 01:44:21', '2024-10-21 08:44:21'),
('5b18713cef1dce4f298f36852ed147af1103f92bc0ebf0e1e1feb45d36e3a0689f758338e0b21257', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 01:18:45', '2023-10-21 01:18:45', '2024-10-21 08:18:45'),
('5d44ac5bac687abcb998166c1efac791984e065423ecb1256b24ba6e7811dad0009a8c2415f2c6f9', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 01:26:13', '2023-10-21 01:26:13', '2024-10-21 08:26:13'),
('6022f2afccaa3b0b05f47fbd73c4fde350b143cd8f4a461e2846c2a80b51d52435ae908f5b20bb04', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 20:38:39', '2023-10-20 20:38:39', '2024-10-21 03:38:39'),
('6be1322244e88548d5e541616620995420ee90b2ee9cdefad8b5fb5a85b21f209f5c8b0c1833c3fe', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 01:44:10', '2023-10-21 01:44:10', '2024-10-21 08:44:10'),
('7711c512240d7849eb4dca589179e84b877ef3b7c84872d7ff7ed40e3a1848519b437e5fce0920c1', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 23:48:45', '2023-10-20 23:48:45', '2024-10-21 06:48:45'),
('774ed6db92cd362e8bc724712394420ed997eada6f44258c003ae5e841a5f2a5f4dc0dfd4d591944', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 20:44:24', '2023-10-20 20:44:24', '2024-10-21 03:44:24'),
('783426793428066581ba4c05dc4eb9989c9a8e6ae680c113f0e2936d03e9c3eef05b753e55ee0b45', 16, 1, 'dattt@scigroup.com.vn', '[]', 0, '2023-10-20 23:23:28', '2023-10-20 23:23:28', '2024-10-21 06:23:28'),
('a1b283a37c198a326220de05bfa1dc2939630f4e73c9c72eee6aae9ca025d32d18718cc48f08592e', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 01:18:19', '2023-10-21 01:18:19', '2024-10-21 08:18:19'),
('a37d5625b585674c1c8f0aed9c8528fd2c24d1659e8839d33d5615fd4b341a602d1c3762048a974c', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 00:05:27', '2023-10-21 00:05:27', '2024-10-21 07:05:27'),
('a65c714aea62bd8b6144815952e82d4a85fc393b0e44291d15a4ee63814c13673e9ae85d8e9a0f55', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 01:26:32', '2023-10-21 01:26:32', '2024-10-21 08:26:32'),
('aed53fdece590572ede8d95e3d2642d4f7c2d6b7ac9566e919fec4c1b03dde22cbd485d0cde45be0', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 21:49:26', '2023-10-20 21:49:26', '2024-10-21 04:49:26'),
('bc10df50eeda2ee531775ee84ad65db47a962ab9cff9772272274a2fa09bb64b9831c669855b3151', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 23:50:41', '2023-10-20 23:50:41', '2024-10-21 06:50:41'),
('c3f83e25e2b6be4215c0598324e5dae78df08fe9cdda48d72dde2a4f0caa40190469313c61a667d7', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 01:18:08', '2023-10-21 01:18:08', '2024-10-21 08:18:08'),
('c7ace66ec348d2231976934047e258d0b92a1b37bc6d9b679db0ff1cc36541805aef7db971771588', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 23:13:21', '2023-10-20 23:13:21', '2024-10-21 06:13:21'),
('d84c47ebfa6bdb0cb3119b709e3dc8d99ab36f9b20327be24dcbc4601b8b7a73e38283ec7af905f8', 22, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-21 00:11:26', '2023-10-21 00:11:26', '2024-10-21 07:11:26'),
('d90c25ecf45b86677107dd57812f84283ec78308772fd0c1cf4a6890fd8a7f351a4b3982ea5e7d03', 18, 1, 'ducdm1@scigroup.com.vn', '[]', 0, '2023-10-20 23:36:33', '2023-10-20 23:36:33', '2024-10-21 06:36:33'),
('f8034c52a1db430db1e0a4dbd1504afc8b661e3f7f2545818cbedfbe419170275b24f750a085902d', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 23:16:24', '2023-10-20 23:16:24', '2024-10-21 06:16:24'),
('fe63272cb294111814609f3cfe0511496b2fd31de70b55c341bda2ea6babbce3ad7018c56ca13a31', 1, 1, 'ducdm@scigroup.com.vn', '[]', 0, '2023-10-20 23:10:46', '2023-10-20 23:10:46', '2024-10-21 06:10:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'rn8VdqB1Zm32M2wI3AX2ZVHWc8HzuUYx8xbUT9PL', NULL, 'http://localhost', 1, 0, 0, '2023-10-20 20:38:37', '2023-10-20 20:38:37'),
(2, NULL, 'Laravel Password Grant Client', 'RSKhKs9vbD6Ooj0sxiUgUfc6d1NygYIJ1wgDu6l8', 'users', 'http://localhost', 0, 1, 0, '2023-10-20 20:38:37', '2023-10-20 20:38:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-20 20:38:37', '2023-10-20 20:38:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `birthday`, `email`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'Trần Tiến', 'Đạt', '2023-10-26', 'dattt@scigroup.com.vn', '0123456789', 'ADMIN', NULL, '$2y$10$lFfd/ZxrkbDZBergXSdPTuAslyo4rGGu3u3ooN1whnk8NoSgmV2yq', NULL, '2023-10-20 23:23:18', '2023-10-20 23:23:18'),
(22, 'Đoàn Minh', 'Đức', '2000-06-18', 'ducdm@scigroup.com.vn', '0985834484', 'ADMIN', NULL, '$2y$10$3R.ytP1R0RRZTzV9UvL2lOUVqOIr2j0YOfCGnPeH2Ai1.QjicHKaa', NULL, '2023-10-20 23:50:37', '2023-10-20 23:50:37'),
(23, 'Mai Nam', 'Hải', '2000-06-18', 'haimn@scigroup.com.vn', '0985834484', 'MEMBER', NULL, '$2y$10$tplN42hix6KsLq5TfnUAUu6a5nKwlKuIKote8VJzWoNZKgSHSUmNG', NULL, '2023-10-20 23:50:54', '2023-10-20 23:50:54'),
(25, 'Hoàng Minh', 'Cương', '2000-06-18', 'cuonghm@scigroup.com.vn', '0985834484', 'MEMBER', NULL, '$2y$10$Ow5cyKFyPErdinAVOCrPa.HkpohCUMgEAJKJfyGz/XUTYpqCUOoKe', NULL, '2023-10-20 23:52:27', '2023-10-20 23:52:27'),
(33, 'Đỗ Trọng', 'Đạt', '2023-10-19', 'datdt@scigroup.com.vn', '123456789', 'MEMBER', NULL, '$2y$10$60/ahbhj5ax.zZk9DsXzsenRA3efCxXa013lYkGRHjl4qeA31LBqW', NULL, '2023-10-21 00:57:05', '2023-10-21 00:57:05'),
(34, 'Nguyễn Nam', 'Hưng', '2023-10-02', 'hungnn@scigroup.com.vn', '0248651321', 'MEMBER', NULL, '$2y$10$ymRgymK4E26jaIcpMC0ML.l0nwjQlwXtfycplH8t.Zdrqy6B/2Rfm', NULL, '2023-10-21 02:11:10', '2023-10-21 02:11:10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
