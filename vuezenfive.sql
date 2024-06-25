-- Adminer 4.8.1 MySQL 8.0.30 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `admin_user_otps`;
CREATE TABLE `admin_user_otps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `otp_code` varchar(4) NOT NULL,
  `creation_time` bigint NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `admin_user_otps` (`id`, `user_id`, `otp_code`, `creation_time`, `used`, `created_at`, `updated_at`) VALUES
(1,	1,	'8519',	1718791105109,	0,	'2024-06-19 09:58:24',	'2024-06-19 09:58:24'),
(2,	2,	'9023',	1714470712991,	1,	'2024-04-30 09:52:25',	'2024-04-30 09:52:25'),
(3,	3,	'9932',	1717059076448,	1,	'2024-05-30 08:52:01',	'2024-05-30 08:52:01'),
(4,	5,	'5103',	1714223372059,	1,	'2024-04-27 13:09:52',	'2024-04-27 13:09:52'),
(5,	6,	'1717',	1715673149320,	1,	'2024-05-14 07:52:43',	'2024-05-14 07:52:43'),
(6,	8,	'0063',	1718366227654,	1,	'2024-06-14 11:58:03',	'2024-06-14 11:58:03'),
(7,	9,	'7736',	1717053977620,	1,	'2024-05-30 07:26:38',	'2024-05-30 07:26:38'),
(8,	11,	'3891',	1715253441439,	0,	'2024-05-09 11:17:21',	'2024-05-09 11:17:21'),
(9,	4,	'6777',	1715253488201,	0,	'2024-05-09 11:18:08',	'2024-05-09 11:18:08'),
(10,	13,	'3634',	1715575452587,	1,	'2024-05-13 04:44:35',	'2024-05-13 04:44:35');

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `country` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `role` enum('admin','super_admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_verified` tinyint DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `admin_users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `country`, `password`, `photo`, `status`, `role`, `remember_token`, `created_at`, `is_verified`, `updated_at`, `deleted_at`) VALUES
(1,	NULL,	'Tanuj Kumar',	'tk923323@gmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.N6lDLFL3KtmUbFkuwt54Nie6CaTiLw2',	NULL,	'active',	'super_admin',	NULL,	'2024-04-19 15:10:37',	1,	'2024-04-19 15:10:37',	NULL),
(2,	6,	'Tanuj',	'tanuj@metaspacechain.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.wtXk3NaE9ZqTruDluj3AwQK46JxJgPa',	NULL,	'active',	'admin',	NULL,	'2024-04-25 09:59:11',	1,	'2024-04-25 09:59:11',	'2024-05-09 10:50:16'),
(3,	NULL,	'mehreen sheikh',	'vuezeneye@gmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.RpbiDMDA3366fVBSKHvYZGsl/GgYxWC',	NULL,	'active',	'super_admin',	NULL,	'2024-04-27 10:15:06',	1,	'2024-04-27 10:15:06',	NULL),
(4,	6,	'Tanuj',	'tanuj1232@yopmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'active',	'admin',	NULL,	'2024-04-27 12:18:50',	0,	'2024-04-27 12:18:50',	NULL),
(5,	7,	'Mehreen Sheikh',	'mehreen@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.6vug3m5K3z038t5LxXz0011SLbasEvm',	NULL,	'active',	'admin',	NULL,	'2024-04-27 13:08:21',	1,	'2024-04-27 13:08:21',	NULL),
(6,	NULL,	'akash',	'akash@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.JxJi.x83phdhZhP7QHVxcIf4agmR2W2',	NULL,	'active',	'super_admin',	NULL,	'2024-05-02 07:39:15',	1,	'2024-05-02 07:39:15',	NULL),
(8,	NULL,	'prabhat',	'prabhat@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.AipZHe0EnQ7xXM.twUrr80jJtX6p0oK',	NULL,	'active',	'super_admin',	NULL,	'2024-05-02 09:20:02',	1,	'2024-05-02 09:20:02',	NULL),
(9,	9,	'Naveen Bhiwaniya',	'naveen@vuezen.io',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.daa3IGOMwkkFlSfVQvjn3jFhOv3mcIu',	NULL,	'active',	'admin',	NULL,	'2024-05-02 09:33:32',	1,	'2024-05-02 09:33:32',	NULL),
(10,	9,	'Kamlesh',	'kamlesh@sheluxe.io',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.9SbzUkFsTjLHVK58AbXf1jb9Kzjg7L6',	NULL,	'active',	'admin',	NULL,	'2024-05-09 06:03:00',	0,	'2024-05-09 06:03:00',	NULL),
(11,	9,	'Atul Kumar Jha',	'atul@vuezen.io',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.wLlU3Vj6IKGAtraBGr5pIRPblsuKt1.',	NULL,	'active',	'admin',	NULL,	'2024-05-09 06:04:08',	0,	'2024-05-09 06:04:08',	'2024-05-13 06:13:49'),
(12,	7,	'Poonam Singh',	'poonam@metaspacechain.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.jCDvQO0pMVpJobLzOZVFJnLOT/kWNtm',	NULL,	'active',	'admin',	NULL,	'2024-05-09 10:52:19',	0,	'2024-05-09 10:52:19',	NULL),
(13,	NULL,	'ayushi',	'ayushi@bastionex.net',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.Uy.IlGHTEreQj2MJttHyUXMkBwxLC6u',	NULL,	'active',	'super_admin',	NULL,	'2024-05-10 12:13:25',	1,	'2024-05-10 12:13:25',	NULL),
(14,	9,	'test',	'test@yopmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.7S3S7Hn0/6ToCX3gwYkmZRV.wwSe59i',	NULL,	'active',	'admin',	NULL,	'2024-05-13 05:42:22',	0,	'2024-05-13 05:42:22',	'2024-05-13 09:15:54'),
(15,	NULL,	'vikash',	'vikas@metaspacechain.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.2P1bKIcwtHm4dRTWERZowr9XmcvC/7i',	NULL,	'active',	'super_admin',	NULL,	'2024-05-13 08:57:54',	0,	'2024-05-13 08:57:54',	NULL),
(16,	10,	'ayushi',	'ayushis270201@gmail.com',	NULL,	'IN',	'$2b$12$QsyQuwwudAA6cUQknxZDY.OdlnA.AJwy2FWk29eIr3p.SIPzXtNW2',	NULL,	'active',	'admin',	NULL,	'2024-05-13 09:17:51',	0,	'2024-05-13 09:17:51',	NULL);

DROP TABLE IF EXISTS `api_endpoint`;
CREATE TABLE `api_endpoint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('backend','frontend') NOT NULL DEFAULT 'frontend',
  `module_name` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `api_endpoint` (`id`, `name`, `type`, `module_name`, `status`, `created_at`, `updated_at`) VALUES
(6,	'/api/admin/dashboard_data/get',	'backend',	NULL,	'active',	'2024-04-25 05:08:25',	'2024-04-25 05:08:25'),
(7,	'/api/admin/dashboard_data/get_data',	'backend',	NULL,	'active',	'2024-04-25 05:08:48',	'2024-04-25 05:08:48'),
(8,	'/api/admin/dashboard_data/get_user_data',	'backend',	NULL,	'active',	'2024-04-25 05:09:10',	'2024-04-25 05:09:10'),
(9,	'/api/admin/dashboard_data/get_best_seller_product',	'backend',	NULL,	'active',	'2024-04-25 05:09:32',	'2024-04-25 05:09:32'),
(10,	'/api/admin/dashboard_data/get_profit',	'backend',	NULL,	'active',	'2024-04-25 05:09:55',	'2024-04-25 05:09:55'),
(11,	'/api/admin/dashboard_data/fetch_live_user',	'backend',	NULL,	'active',	'2024-04-25 05:10:17',	'2024-04-25 05:10:17'),
(12,	'/api/admin/dashboard_data/fetch_live_insights_clarity',	'backend',	NULL,	'active',	'2024-04-25 05:10:32',	'2024-04-25 05:10:32'),
(13,	'/api/admin/add_fiter_data/add_category',	'backend',	NULL,	'active',	'2024-04-25 05:19:20',	'2024-04-25 05:19:20'),
(14,	'/api/admin/add_fiter_data/add_only_category',	'backend',	NULL,	'active',	'2024-04-25 05:19:43',	'2024-04-25 05:19:43'),
(15,	'/api/admin/add_fiter_data/add_only_gender',	'backend',	NULL,	'active',	'2024-04-25 05:20:02',	'2024-04-25 05:20:02'),
(16,	'/api/admin/add_fiter_data/edit_category_status',	'backend',	NULL,	'active',	'2024-04-25 05:20:22',	'2024-04-25 05:20:22'),
(17,	'/api/admin/add_fiter_data/get_category_for_admin',	'backend',	NULL,	'active',	'2024-04-25 05:20:44',	'2024-04-25 05:20:44'),
(18,	'/api/admin/add_fiter_data/delete_category_by_id',	'backend',	NULL,	'active',	'2024-04-25 05:20:58',	'2024-04-25 05:20:58'),
(19,	'/api/admin/add_fiter_data/get_category',	'backend',	NULL,	'active',	'2024-04-25 05:21:14',	'2024-04-25 06:22:01'),
(20,	'/api/admin/product/add_product',	'backend',	NULL,	'active',	'2024-04-25 06:24:27',	'2024-04-25 06:24:27'),
(21,	'/api/admin/product/edit_product',	'backend',	NULL,	'active',	'2024-04-25 06:30:57',	'2024-04-25 06:30:57'),
(22,	'/api/admin/product/add_product_variant',	'backend',	NULL,	'active',	'2024-04-25 06:31:18',	'2024-04-25 06:31:18'),
(23,	'/api/admin/product/edit_product_variant',	'backend',	NULL,	'active',	'2024-04-25 06:31:36',	'2024-04-25 06:31:36'),
(24,	'/api/admin/product/add_country_only',	'backend',	NULL,	'active',	'2024-04-25 06:32:00',	'2024-04-25 06:32:00'),
(25,	'/api/admin/product/add_country_data',	'backend',	NULL,	'active',	'2024-04-25 06:32:18',	'2024-04-25 06:32:18'),
(26,	'/api/admin/product/edit_variant_country_status',	'backend',	NULL,	'active',	'2024-04-25 06:33:40',	'2024-04-25 06:33:40'),
(27,	'/api/admin/product/add_product_variant_Images',	'backend',	NULL,	'active',	'2024-04-25 06:34:13',	'2024-04-25 06:34:13'),
(28,	'/api/admin/product/edit_product_variant_Images',	'backend',	NULL,	'active',	'2024-04-25 06:35:30',	'2024-04-25 06:35:30'),
(29,	'/api/admin/product/fetch_all_product',	'backend',	NULL,	'active',	'2024-04-25 06:35:46',	'2024-04-25 06:35:46'),
(30,	'/api/admin/product/fetch_all_product_admin',	'backend',	NULL,	'active',	'2024-04-25 06:36:21',	'2024-04-25 06:36:21'),
(31,	'/api/admin/product/destro_product_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:36:40',	'2024-04-25 06:36:40'),
(32,	'/api/admin/product/destro_product_variant_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:36:57',	'2024-04-25 06:36:57'),
(33,	'/api/admin/product/change_status_product',	'backend',	NULL,	'active',	'2024-04-25 06:37:17',	'2024-04-25 06:37:17'),
(34,	'/api/admin/product/change_status_product_variant',	'backend',	NULL,	'active',	'2024-04-25 06:37:32',	'2024-04-25 06:37:32'),
(35,	'/api/admin/product/fetch_product_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:37:48',	'2024-04-25 06:37:48'),
(36,	'/api/admin/product/fetch_product_variant_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:38:06',	'2024-04-25 06:38:06'),
(37,	'/api/admin/product/add_stock',	'backend',	NULL,	'active',	'2024-04-25 06:38:26',	'2024-04-25 06:38:26'),
(38,	'/api/admin/product/add_seo_data',	'backend',	NULL,	'active',	'2024-04-25 06:38:44',	'2024-04-25 06:38:44'),
(39,	'/api/admin/product/get_seo_data',	'backend',	NULL,	'active',	'2024-04-25 06:39:05',	'2024-04-25 06:39:05'),
(40,	'/api/admin/product/change_status_seo_data',	'backend',	NULL,	'active',	'2024-04-25 06:39:44',	'2024-04-25 06:39:44'),
(41,	'/api/admin/product/seo_get_by_id',	'backend',	NULL,	'active',	'2024-04-25 06:40:05',	'2024-04-25 06:40:05'),
(42,	'/api/admin/zip_code/add_zipcodes',	'backend',	NULL,	'active',	'2024-04-25 08:37:55',	'2024-04-25 08:37:55'),
(43,	'/api/admin/zip_code/edit_status_zipcodes',	'backend',	NULL,	'active',	'2024-04-25 08:38:24',	'2024-04-25 08:38:24'),
(44,	'/api/admin/zip_code/get',	'backend',	NULL,	'active',	'2024-04-25 08:38:54',	'2024-04-25 08:38:54'),
(45,	'/api/admin/zip_code/get_active',	'backend',	NULL,	'active',	'2024-04-25 08:39:12',	'2024-04-25 08:39:12'),
(46,	'/api/admin/order/update_delivery_date',	'backend',	NULL,	'active',	'2024-04-25 08:41:50',	'2024-04-25 08:41:50'),
(47,	'/api/admin/order/update_order_status',	'backend',	NULL,	'active',	'2024-04-25 08:42:30',	'2024-04-25 08:42:30'),
(48,	'/api/admin/order/update_order_payment_status',	'backend',	NULL,	'active',	'2024-04-25 08:42:49',	'2024-04-25 08:42:49'),
(49,	'/api/admin/order/get_all',	'backend',	NULL,	'active',	'2024-04-25 08:43:06',	'2024-04-25 08:43:06'),
(50,	'/api/admin/order/get_filtered_orders',	'backend',	NULL,	'active',	'2024-04-25 08:43:23',	'2024-04-25 08:43:23'),
(51,	'/api/admin/order/get_graph_data_subtotal',	'backend',	NULL,	'active',	'2024-04-25 08:43:47',	'2024-04-25 08:43:47'),
(52,	'/api/admin/order/get_graph_data_order',	'backend',	NULL,	'active',	'2024-04-25 08:44:08',	'2024-04-25 08:44:08'),
(53,	'/api/admin/order/change_delivery_days',	'backend',	NULL,	'active',	'2024-04-25 08:44:35',	'2024-04-25 08:44:35'),
(54,	'/api/admin/order/get_delivery_day_data',	'backend',	NULL,	'active',	'2024-04-25 08:44:52',	'2024-04-25 08:44:52'),
(55,	'/api/admin/order/delete_delivery_day_data',	'backend',	NULL,	'active',	'2024-04-25 08:45:07',	'2024-04-25 08:45:07'),
(56,	'/api/admin/delivery/add',	'backend',	NULL,	'active',	'2024-04-25 08:47:06',	'2024-04-25 08:47:06'),
(57,	'/api/admin/delivery/getData',	'backend',	NULL,	'active',	'2024-04-25 08:47:23',	'2024-04-25 08:47:23'),
(58,	'/api/admin/delivery/delete',	'backend',	NULL,	'active',	'2024-04-25 08:47:39',	'2024-04-25 08:47:39'),
(59,	'/api/admin/coupons/add_coupons',	'backend',	NULL,	'active',	'2024-04-25 08:49:37',	'2024-04-25 08:49:37'),
(60,	'/api/admin/coupons/update_coupons',	'backend',	NULL,	'active',	'2024-04-25 08:49:59',	'2024-04-25 08:49:59'),
(61,	'/api/admin/coupons/get_all_coupons',	'backend',	NULL,	'active',	'2024-04-25 08:50:21',	'2024-04-25 08:50:21'),
(62,	'/api/admin/coupons/get_coupon_by_id',	'backend',	NULL,	'active',	'2024-04-25 08:50:42',	'2024-04-25 08:50:42'),
(63,	'/api/admin/coupons/delete_coupon_by_id',	'backend',	NULL,	'active',	'2024-04-25 08:50:59',	'2024-04-25 08:50:59'),
(64,	'/api/admin/coupons/update_status_by_id',	'backend',	NULL,	'active',	'2024-04-25 08:51:31',	'2024-04-25 08:51:31'),
(65,	'/api/admin/ui_inner_section/get_data',	'backend',	NULL,	'active',	'2024-04-25 08:53:36',	'2024-04-25 08:53:36'),
(66,	'/api/admin/ui_inner_section/add_ui_inner_sections',	'backend',	NULL,	'active',	'2024-04-25 08:53:58',	'2024-04-25 08:53:58'),
(67,	'/api/admin/ui_inner_section/add_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 08:54:15',	'2024-04-25 08:54:15'),
(68,	'/api/admin/ui_inner_section/get_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 08:54:32',	'2024-04-25 08:54:32'),
(69,	'/api/admin/ui/get_ui_sections',	'backend',	NULL,	'active',	'2024-04-25 08:56:05',	'2024-04-25 08:56:05'),
(70,	'/api/admin/ui/add_ui_sections',	'backend',	NULL,	'active',	'2024-04-25 08:56:24',	'2024-04-25 08:56:24'),
(71,	'/api/admin/collection/add_beautiful_eyewear',	'backend',	NULL,	'active',	'2024-04-25 08:58:01',	'2024-04-25 08:58:01'),
(72,	'/api/admin/collection/delete_beautiful_eyewear',	'backend',	NULL,	'active',	'2024-04-25 08:58:33',	'2024-04-25 08:58:33'),
(73,	'/api/admin/collection/get_beautiful_eyewear',	'backend',	NULL,	'active',	'2024-04-25 08:58:53',	'2024-04-25 08:58:53'),
(74,	'/api/admin/frame_data/add_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 09:00:23',	'2024-04-25 09:00:23'),
(75,	'/api/admin/frame_data/get_ui_frame_config',	'backend',	NULL,	'active',	'2024-04-25 09:00:42',	'2024-04-25 09:00:42'),
(76,	'/api/admin/best_seller/add',	'backend',	NULL,	'active',	'2024-04-25 09:02:05',	'2024-04-25 09:02:05'),
(77,	'/api/admin/best_seller/get',	'backend',	NULL,	'active',	'2024-04-25 09:02:28',	'2024-04-25 09:02:28'),
(78,	'/api/admin/best_seller/delete',	'backend',	NULL,	'active',	'2024-04-25 09:02:46',	'2024-04-25 09:02:46'),
(79,	'/api/admin/newsletter/get',	'backend',	NULL,	'active',	'2024-04-25 09:05:15',	'2024-04-25 09:05:15'),
(80,	'/admin/api/currency/add_currency',	'backend',	NULL,	'active',	'2024-04-25 09:07:29',	'2024-04-25 09:07:29'),
(81,	'/admin/api/currency/update_status_for_user_view',	'backend',	NULL,	'active',	'2024-04-25 09:07:44',	'2024-04-25 09:07:44'),
(82,	'/admin/api/currency/get_all_currency',	'backend',	NULL,	'active',	'2024-04-25 09:08:04',	'2024-04-25 09:08:04'),
(83,	'/admin/api/currency/get_currency',	'backend',	NULL,	'active',	'2024-04-25 09:08:18',	'2024-04-25 09:08:18'),
(84,	'/admin/api/currency/get_currency_user',	'backend',	NULL,	'active',	'2024-04-25 09:08:39',	'2024-04-25 09:08:39'),
(85,	'/api/admin/review/get_all',	'backend',	NULL,	'active',	'2024-04-25 09:12:38',	'2024-04-25 09:12:38'),
(86,	'/api/admin/review_status_change',	'backend',	NULL,	'active',	'2024-04-25 09:12:58',	'2024-04-25 09:12:58'),
(87,	'/api/admin/offer/add',	'backend',	NULL,	'active',	'2024-04-25 09:20:45',	'2024-04-25 09:20:45'),
(88,	'/api/admin/offer/get',	'backend',	NULL,	'active',	'2024-04-25 09:21:02',	'2024-04-25 09:21:02'),
(89,	'/api/admin/offer/get_user_data',	'backend',	NULL,	'active',	'2024-04-25 09:21:18',	'2024-04-25 09:21:18'),
(90,	'/api/admin/offer/destroy',	'backend',	NULL,	'active',	'2024-04-25 09:21:35',	'2024-04-25 09:21:35'),
(91,	'/api/admin/education/get_all',	'backend',	NULL,	'active',	'2024-04-25 09:23:23',	'2024-04-25 09:23:23'),
(92,	'/api/admin/education/change_status',	'backend',	NULL,	'active',	'2024-04-25 09:23:38',	'2024-04-25 09:23:38'),
(93,	'/dashboard',	'frontend',	NULL,	'active',	'2024-04-25 09:30:42',	'2024-04-25 09:30:42'),
(94,	'/category',	'frontend',	NULL,	'active',	'2024-04-25 09:30:57',	'2024-04-25 09:30:57'),
(95,	'/allproducts',	'frontend',	NULL,	'active',	'2024-04-25 09:31:22',	'2024-04-25 09:31:22'),
(96,	'/view',	'frontend',	NULL,	'active',	'2024-04-25 09:32:01',	'2024-04-25 09:32:01'),
(97,	'/variant',	'frontend',	NULL,	'active',	'2024-04-25 09:32:16',	'2024-04-25 09:32:16'),
(98,	'/addproducts',	'frontend',	NULL,	'active',	'2024-04-25 09:33:02',	'2024-04-25 09:33:02'),
(99,	'/zipcodes_available',	'frontend',	NULL,	'active',	'2024-04-25 09:33:43',	'2024-04-25 09:33:43'),
(100,	'/order_delivery_day',	'frontend',	NULL,	'active',	'2024-04-25 09:34:25',	'2024-04-25 09:34:25'),
(101,	'/student_delivery_data',	'frontend',	NULL,	'active',	'2024-04-25 09:34:51',	'2024-04-25 09:34:51'),
(102,	'/Coupons_admin',	'frontend',	NULL,	'active',	'2024-04-25 09:35:11',	'2024-04-25 09:35:11'),
(103,	'/orders',	'frontend',	NULL,	'active',	'2024-04-25 09:35:27',	'2024-04-25 09:35:27'),
(104,	'/ui_inner_sections',	'frontend',	NULL,	'active',	'2024-04-25 09:37:21',	'2024-04-25 09:37:21'),
(105,	'/ui_landing_page_section',	'frontend',	NULL,	'active',	'2024-04-25 09:37:43',	'2024-04-25 09:37:43'),
(106,	'/eyewear_collection',	'frontend',	NULL,	'active',	'2024-04-25 09:37:57',	'2024-04-25 09:37:57'),
(107,	'/uiFrameData',	'frontend',	NULL,	'active',	'2024-04-25 09:38:37',	'2024-04-25 09:38:37'),
(108,	'/bestseller',	'frontend',	NULL,	'active',	'2024-04-25 09:43:02',	'2024-04-25 09:43:02'),
(109,	'/seo_products',	'frontend',	NULL,	'active',	'2024-04-25 09:43:21',	'2024-04-25 09:43:21'),
(110,	'/subscribeusers',	'frontend',	NULL,	'active',	'2024-04-25 09:43:45',	'2024-04-25 09:43:45');

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `banners_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `beautiful_eyewear_collection`;
CREATE TABLE `beautiful_eyewear_collection` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `beautiful_eyewear_collection` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(2,	'Men Sunglasses',	'glasses/Sunglasses/2/Men/1',	'1713795291049-men-sunglasses 200X200.webp',	'2024-04-22 14:18:22',	NULL),
(3,	'Women Sunglasses',	'glasses/Sunglasses/2/Women/2',	'1713795327731-women -sunglasses 200X200.webp',	'2024-04-22 14:40:10',	NULL),
(4,	'Men Eyeglasses',	'glasses/Eyeglasses/1/Men/1',	'1713795374474-men-eyeglasses 200X200.webp',	'2024-04-22 14:40:29',	NULL),
(5,	'Women Eyeglasses',	'glasses/Eyeglasses/1/Women/2',	'1713795432115-women-eyeglasses 200X200.webp',	'2024-04-22 14:20:30',	NULL),
(6,	'Men Computer Glasses',	'ComputerGlasses/3/Men/1',	'1713795608224-men-computer Glasses 200X200.webp',	'2024-04-22 14:20:08',	NULL);

DROP TABLE IF EXISTS `bestseller`;
CREATE TABLE `bestseller` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `variant_id` bigint NOT NULL,
  `position` bigint NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'null',
  `type` enum('best_seller','fashion_trend') NOT NULL DEFAULT 'best_seller',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `bestseller` (`id`, `product_id`, `variant_id`, `position`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(15,	1,	1,	1,	'1713876814115-1.webp',	'best_seller',	'active',	'2024-04-23 12:53:34',	'2024-04-23 12:53:34'),
(16,	1,	1,	2,	'1713880057796-2.webp',	'best_seller',	'active',	'2024-04-23 13:47:37',	'2024-04-23 13:47:37'),
(17,	1,	1,	3,	'1713880076200-3.webp',	'best_seller',	'active',	'2024-04-23 13:47:56',	'2024-04-23 13:47:56'),
(18,	1,	1,	4,	'1713880095842-4.webp',	'best_seller',	'active',	'2024-04-23 13:48:15',	'2024-04-23 13:48:15'),
(19,	1,	1,	5,	'1713880122536-1.webp',	'best_seller',	'active',	'2024-04-23 13:48:42',	'2024-04-23 13:48:42'),
(20,	1,	1,	6,	'1713880140459-2.webp',	'best_seller',	'active',	'2024-04-23 13:49:00',	'2024-04-23 13:49:00'),
(21,	1,	1,	7,	'1713880210097-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:10',	'2024-04-23 13:50:10'),
(22,	1,	1,	8,	'1713880226697-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:26',	'2024-04-23 13:50:26'),
(23,	1,	1,	9,	'1713880234915-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:34',	'2024-04-23 13:50:34'),
(24,	1,	1,	10,	'1713880242035-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:42',	'2024-04-23 13:50:42'),
(25,	1,	1,	11,	'1713880249430-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:49',	'2024-04-23 13:50:49'),
(26,	1,	1,	12,	'1713880257194-2.webp',	'fashion_trend',	'active',	'2024-04-23 13:50:57',	'2024-04-23 13:50:57');

DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `product_variant_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_product_id_foreign` (`product_id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `carts` (`id`, `product_id`, `product_variant_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(16,	1,	1,	11,	1,	'2024-04-24 06:42:07',	'2024-04-24 06:42:07'),
(18,	3,	3,	11,	1,	'2024-04-24 12:48:17',	'2024-04-24 12:48:17'),
(25,	2,	2,	10,	1,	'2024-04-25 13:11:45',	'2024-04-25 13:11:45'),
(27,	1,	1,	10,	1,	'2024-04-25 15:24:24',	'2024-04-25 15:24:24'),
(35,	1,	1,	24,	6,	'2024-04-30 16:50:43',	'2024-04-30 16:50:43'),
(47,	5,	5,	25,	1,	'2024-05-07 11:04:04',	'2024-05-07 11:04:04'),
(63,	5,	5,	26,	1,	'2024-05-08 11:43:54',	'2024-05-08 11:43:54'),
(67,	4,	4,	28,	1,	'2024-05-08 12:53:11',	'2024-05-08 12:53:11'),
(69,	9,	11,	28,	1,	'2024-05-08 14:17:10',	'2024-05-08 14:17:10'),
(74,	5,	5,	29,	1,	'2024-05-09 11:04:26',	'2024-05-09 11:04:26'),
(75,	16,	19,	1,	1,	'2024-05-09 12:31:44',	'2024-05-09 12:31:44'),
(76,	10,	12,	1,	1,	'2024-05-10 05:38:15',	'2024-05-10 05:38:15'),
(78,	27,	31,	30,	1,	'2024-05-11 06:45:13',	'2024-05-11 06:45:13'),
(79,	18,	22,	30,	1,	'2024-05-11 08:51:43',	'2024-05-11 08:51:43'),
(83,	19,	23,	14,	1,	'2024-05-13 07:30:47',	'2024-05-13 07:30:47'),
(85,	1,	1,	1,	1,	'2024-05-13 09:04:10',	'2024-05-13 09:04:10'),
(86,	13,	16,	1,	1,	'2024-05-13 09:22:10',	'2024-05-13 09:22:10'),
(87,	26,	30,	1,	1,	'2024-05-13 09:41:07',	'2024-05-13 09:41:07'),
(88,	19,	23,	31,	1,	'2024-05-17 10:29:02',	'2024-05-17 10:29:02'),
(89,	10,	56,	31,	1,	'2024-05-18 11:05:15',	'2024-05-18 11:05:15'),
(90,	24,	28,	31,	1,	'2024-05-18 11:29:11',	'2024-05-18 11:29:11'),
(91,	64,	82,	32,	1,	'2024-05-24 20:17:53',	'2024-05-24 20:17:53'),
(130,	31,	35,	10,	1,	'2024-06-06 09:07:33',	'2024-06-06 09:07:33'),
(131,	36,	40,	10,	1,	'2024-06-06 09:28:10',	'2024-06-06 09:28:10'),
(139,	42,	48,	41,	1,	'2024-06-06 11:35:15',	'2024-06-06 11:35:15'),
(140,	10,	12,	41,	1,	'2024-06-06 11:35:22',	'2024-06-06 11:35:22'),
(141,	64,	82,	41,	1,	'2024-06-06 11:36:31',	'2024-06-06 11:36:31'),
(142,	28,	32,	42,	1,	'2024-06-13 12:17:17',	'2024-06-13 12:17:17'),
(143,	25,	29,	42,	1,	'2024-06-14 07:03:03',	'2024-06-14 07:03:03'),
(144,	36,	40,	42,	1,	'2024-06-14 12:25:59',	'2024-06-14 12:25:59'),
(145,	45,	51,	42,	1,	'2024-06-15 06:03:06',	'2024-06-15 06:03:06');

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` bigint unsigned DEFAULT NULL,
  `added_by` bigint unsigned DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  KEY `categories_added_by_foreign` (`added_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_uses_per_user` bigint NOT NULL DEFAULT '1',
  `new_user` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent','buy_get') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `get_product` bigint DEFAULT NULL,
  `buy_product` bigint DEFAULT NULL,
  `value` decimal(20,2) DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `start_date` timestamp NULL DEFAULT NULL,
  `expired_date` timestamp NULL DEFAULT NULL,
  `min_purchase` decimal(20,2) DEFAULT NULL,
  `max_purchase` decimal(20,2) DEFAULT NULL,
  `limit` bigint DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `category_id` bigint unsigned DEFAULT '0',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN',
  `used` bigint NOT NULL DEFAULT '0',
  `visibility` enum('public','private') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupons_code_unique` (`code`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `coupons` (`id`, `name`, `max_uses_per_user`, `new_user`, `code`, `type`, `get_product`, `buy_product`, `value`, `status`, `start_date`, `expired_date`, `min_purchase`, `max_purchase`, `limit`, `user_id`, `category_id`, `country`, `used`, `visibility`, `created_at`, `updated_at`) VALUES
(1,	'buy one',	50,	'inactive',	'ayu27',	'buy_get',	1,	1,	1000.00,	'active',	'2024-04-22 00:00:00',	'2024-06-27 00:00:00',	500.00,	2000.00,	55,	1,	NULL,	'IN',	20,	'public',	'2024-04-24 05:33:11',	'2024-06-06 10:47:10'),
(2,	'First Order',	2,	'active',	'new',	'fixed',	NULL,	NULL,	5.00,	'active',	'2024-05-11 00:00:00',	'2024-06-30 00:00:00',	100.00,	5000.00,	10,	NULL,	0,	'IN',	4,	'public',	'2024-04-24 05:38:03',	'2024-06-13 12:34:56'),
(3,	'test',	19,	'inactive',	'Test20',	'percent',	NULL,	NULL,	50.00,	'active',	'2024-05-13 00:00:00',	'2025-06-06 00:00:00',	450.00,	5000.00,	100,	8,	0,	'IN',	17,	'private',	'2024-05-13 05:13:24',	'2024-06-14 12:24:49'),
(4,	'PromoCode',	2,	'inactive',	'PROMO50',	'fixed',	NULL,	NULL,	100.00,	'active',	'2023-01-01 00:00:00',	'2025-01-01 00:00:00',	100.00,	2000.00,	1000,	8,	0,	'IN',	0,	'private',	'2024-06-14 07:02:02',	'2024-06-14 09:38:19'),
(5,	'durgesh',	1,	'inactive',	'kmr50',	'fixed',	NULL,	NULL,	50.00,	'active',	'2024-06-14 00:00:00',	'2024-06-14 00:00:00',	100.00,	2000.00,	500,	8,	0,	'IN',	0,	'private',	'2024-06-14 12:56:37',	'2024-06-14 12:56:37');

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(50) NOT NULL,
  `tax_value` decimal(10,2) DEFAULT '0.00',
  `tax_name` varchar(40) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'india',
  `country_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'IN',
  `delivery_charges` bigint NOT NULL,
  `discount` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `delivery` (`id`, `country`, `country_code`, `delivery_charges`, `discount`, `created_at`, `updated_at`) VALUES
(1,	'India',	'IN',	200,	98,	'2024-04-24 06:09:33',	'2024-04-24 06:09:33');

DROP TABLE IF EXISTS `filter_products`;
CREATE TABLE `filter_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gender` json DEFAULT NULL,
  `shape` json DEFAULT NULL,
  `frame_type` json DEFAULT NULL,
  `color` json DEFAULT NULL,
  `material` json DEFAULT NULL,
  `size` json DEFAULT NULL,
  `weight_group` json DEFAULT NULL,
  `price_range` json DEFAULT NULL,
  `categories` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `filter_products` (`id`, `gender`, `shape`, `frame_type`, `color`, `material`, `size`, `weight_group`, `price_range`, `categories`, `created_at`, `updated_at`) VALUES
(1,	'[{\"id\": 1, \"image\": \"1713867461235-men-eyeglasses 200X200.webp\", \"value\": \"Men\", \"status\": \"active\"}, {\"id\": 2, \"image\": \"1713867481185-women-eyeglasses 200X200.webp\", \"value\": \"Women\", \"status\": \"active\"}, {\"id\": 3, \"image\": \"1713867852620-kids copy.webp\", \"value\": \"Kids\", \"status\": \"active\"}, {\"id\": 4, \"image\": \"1715598304435-unisex.webp\", \"value\": \"Unisex\", \"status\": \"active\"}, {\"id\": 5, \"image\": \"1715408748384-3.jpg\", \"value\": \"Boy\", \"status\": \"active\"}, {\"id\": 6, \"image\": \"1715408777361-5.jpg\", \"value\": \"Girl \", \"status\": \"active\"}]',	'[{\"id\": 13, \"image\": \"1714026921096-CatEye.webp\", \"value\": \"Cat Eye\", \"status\": \"active\"}, {\"id\": 14, \"image\": \"1714026985989-Round.webp\", \"value\": \"Round\", \"status\": \"active\"}, {\"id\": 15, \"image\": \"1714027024206-Aviator.webp\", \"value\": \"Aviator\", \"status\": \"active\"}, {\"id\": 16, \"image\": \"1714027041295-Sports.webp\", \"value\": \"Sports\", \"status\": \"active\"}, {\"id\": 17, \"image\": \"1714027059736-Octagon.webp\", \"value\": \"Octagon\", \"status\": \"active\"}, {\"id\": 18, \"image\": \"1714027081943-Oval.webp\", \"value\": \"Oval\", \"status\": \"active\"}, {\"id\": 19, \"image\": \"1714027125464-Rectangle.webp\", \"value\": \"Rectangle\", \"status\": \"active\"}, {\"id\": 20, \"image\": \"1714027147331-Square.webp\", \"value\": \"Square\", \"status\": \"active\"}, {\"id\": 21, \"image\": \"1714027165085-Geometric.webp\", \"value\": \"Geometric\", \"status\": \"active\"}, {\"id\": 22, \"image\": \"1714388655663-sunglasses keyhole bridge.jpg\", \"value\": \"Keyhole Bridge \", \"status\": \"inactive\"}, {\"id\": 23, \"image\": \"1715932070051-half eye.png\", \"value\": \"Half Eye \", \"status\": \"active\"}, {\"id\": 24, \"image\": \"1715935177814-hikulu.png\", \"value\": \"Hexagon \", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \"full rim\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"Half Rim\", \"status\": \"active\"}, {\"id\": 3, \"value\": \"Rimless\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \"#6d1818\", \"status\": \"active\"}, {\"id\": 3, \"value\": \"#532ed6\", \"status\": \"active\"}, {\"id\": 4, \"value\": \"#fae505\", \"status\": \"active\"}, {\"id\": 5, \"value\": \"#ffffff\", \"status\": \"active\"}, {\"id\": 6, \"value\": \"#db3333\", \"status\": \"active\"}, {\"id\": 7, \"value\": \"#b76e79\", \"status\": \"active\"}, {\"id\": 8, \"value\": \"#070503\", \"status\": \"active\"}, {\"id\": 9, \"value\": \"#f4fafc\", \"status\": \"active\"}, {\"id\": 10, \"value\": \"#323232\", \"status\": \"active\"}, {\"id\": 11, \"value\": \"#b87333\", \"status\": \"active\"}, {\"id\": 12, \"value\": \"#16a22d\", \"status\": \"active\"}, {\"id\": 13, \"value\": \"#d6f0db\", \"status\": \"active\"}, {\"id\": 14, \"value\": \"#ff5f1f\", \"status\": \"active\"}, {\"id\": 15, \"value\": \"#a020f0\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \"Plastic\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"Metal \", \"status\": \"active\"}, {\"id\": 3, \"value\": \"Polycarbonate\", \"status\": \"active\"}, {\"id\": 4, \"value\": \"Acetate\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \" Narrow\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"Medium\", \"status\": \"active\"}, {\"id\": 3, \"value\": \"Wide\", \"status\": \"active\"}]',	'[{\"id\": 1, \"value\": \"10 - 20\", \"status\": \"active\"}, {\"id\": 2, \"value\": \"20 - 30\", \"status\": \"active\"}, {\"id\": 3, \"value\": \"30 - 40\", \"status\": \"active\"}]',	'[{\"id\": 1, \"max\": \"199\", \"min\": \"1\", \"status\": \"active\"}, {\"id\": 2, \"max\": \"999\", \"min\": \"200\", \"status\": \"active\"}, {\"id\": 3, \"max\": \"1999\", \"min\": \"1000\", \"status\": \"active\"}, {\"id\": 4, \"max\": \"2999\", \"min\": \"2000\", \"status\": \"active\"}, {\"id\": 5, \"max\": \"3999\", \"min\": \"3000\", \"status\": \"active\"}, {\"id\": 6, \"max\": \"4999\", \"min\": \"4000\", \"status\": \"active\"}]',	'[{\"id\": 1, \"slug\": \"Eyeglasses\", \"image\": \"1713589670791-orderProductImg.webp\", \"title\": \"Eyeglasses\", \"value\": \"Eyeglasses\", \"status\": \"active\", \"gender_arr\": [\"1\", \"2\", \"3\", \"4\"], \"is_special_offer\": \"0\"}, {\"id\": 2, \"slug\": \"Sunglasses\", \"image\": \"1713782683920-Try on copy.webp\", \"title\": \"Sunglasses\", \"value\": \"Sunglasses\", \"status\": \"active\", \"gender_arr\": [\"1\", \"2\", \"4\", \"3\"], \"is_special_offer\": \"0\"}, {\"id\": 3, \"slug\": \"Computer Glasses\", \"image\": \"1713789780682-1706855859751-1706598199486-photo_2024-01-29_11-32-36.jpg\", \"title\": \"Computer Glasses\", \"value\": \"Computer Glasses\", \"status\": \"active\", \"gender_arr\": [\"1\", \"2\", \"3\"], \"is_special_offer\": \"0\"}, {\"id\": 4, \"slug\": \"Students\", \"image\": \"1717419928582-20231208_132618.jpg\", \"title\": \"Students\", \"value\": \"Students\", \"status\": \"active\", \"gender_arr\": [\"5\", \"6\", \"3\", \"4\"], \"is_special_offer\": \"1\"}]',	'2024-06-03 13:05:36',	'2024-06-03 13:05:36');

DROP TABLE IF EXISTS `footer_data`;
CREATE TABLE `footer_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `h1_image` varchar(900) DEFAULT NULL,
  `h1_description` varchar(2000) DEFAULT NULL,
  `social_media_data` json DEFAULT NULL,
  `footer_email` varchar(50) DEFAULT NULL,
  `footer_phone` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `footer_data` (`id`, `h1_image`, `h1_description`, `social_media_data`, `footer_email`, `footer_phone`, `created_at`, `updated_at`) VALUES
(1,	'1717157710725-1715852034014-vuezen-logo.webp',	' Vuezen  Is Where Vision Meets Style. We Pride Ourselves On Crafting Premium Eyewear That Seamlessly Blends Innovation And Fashion. With A Commitment To Quality And A Passion For Design, Vuezen Brings Clarity And Confidence To Your World.',	'[{\"id\": 1, \"url\": \"https://x.com/Vuezeneye?t=eALrvwB8Ck5p_E3YnmjdAQ&s=35\", \"image\": \"1716032457195-twitter.png\"}, {\"id\": 2, \"url\": \"https://www.facebook.com/people/Vuezen/61554449783885/\", \"image\": \"1716032474850-fb.png\"}, {\"id\": 3, \"url\": \"https://www.instagram.com/vuezen/\", \"image\": \"1716032493888-insta.png\"}]',	'Info@vuezen.io',	'',	'2024-05-16 09:21:59',	'2024-05-31 12:15:11');

DROP TABLE IF EXISTS `frame_sizes_config`;
CREATE TABLE `frame_sizes_config` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `frame_sizes_config` (`id`, `heading`, `description`, `created_at`, `updated_at`) VALUES
(1,	'Frame Width',	'The total width of the eyeglass frame from one end to the other, typically measured horizontally across the front.',	'2024-03-20 10:00:35',	'2024-03-20 10:00:35'),
(2,	'Lens Width',	'The width of one lens, measured horizontally from one side to the other. This measurement is important to ensure that the lenses cover the eyes properly.',	'2024-01-30 10:53:50',	'2024-01-30 10:53:54'),
(3,	'Lens Height',	'The height of one lens, measured vertically from the top to the bottom. This measurement is crucial for determining how much of the eye the lens will cover.',	'2024-01-30 10:53:58',	'2024-01-30 10:54:02'),
(4,	'Bridge Width',	'The distance between the lenses, measured across the bridge of the nose. It determines how well the glasses will sit on the nose.',	'2024-01-30 10:54:10',	'2024-01-30 10:54:14'),
(5,	'Temple Length',	'The length of the temple arms, measured from the hinge to the tip that goes behind the ear. This measurement is important for ensuring that the temples are long enough to reach the ears comfortably.',	'2024-01-30 10:54:31',	'2024-01-30 10:54:35');

DROP TABLE IF EXISTS `logistic_data`;
CREATE TABLE `logistic_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `html_message` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `waybill` bigint unsigned DEFAULT NULL,
  `refnum` varchar(255) DEFAULT NULL,
  `logistic_name` varchar(255) DEFAULT NULL,
  `logistic_partner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'ithink',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `logistic_data` (`id`, `status`, `order_id`, `html_message`, `remark`, `waybill`, `refnum`, `logistic_name`, `logistic_partner_name`, `created_at`, `updated_at`) VALUES
(1,	'success',	1716979535878,	'',	'',	24562011956905,	'1716979535878',	'delhivery',	'ithink',	'2024-05-16 09:10:46',	'2024-05-16 09:10:46'),
(2,	'success',	1717337144907,	'',	'',	24562011956942,	'1717337144907',	'delhivery',	'ithink',	'2024-05-16 09:33:05',	'2024-05-16 09:33:05'),
(3,	'success',	1720740505150,	'',	'',	24562011957944,	'1720740505150',	'delhivery',	'ithink',	'2024-05-16 10:32:20',	'2024-05-16 10:32:20'),
(4,	'success',	1724180251257,	'',	'',	24562011958040,	'1724180251257',	'delhivery',	'ithink',	'2024-05-16 09:01:10',	'2024-05-16 09:01:10'),
(5,	'success',	1716521492070,	'',	'',	24562011966484,	'1716521492070',	'delhivery',	'ithink',	'2024-05-17 07:52:38',	'2024-05-17 07:52:38'),
(6,	'success',	1722461396624,	'',	'',	24562011969122,	'1722461396624',	'delhivery',	'ithink',	'2024-05-17 11:05:28',	'2024-05-17 11:05:28'),
(7,	'success',	1725865299502,	'',	'',	24562011974884,	'1725865299502',	'delhivery',	'ithink',	'2024-05-18 05:24:32',	'2024-05-18 05:24:32'),
(8,	'success',	1722053690207,	'',	'',	24562011976494,	'1722053690207',	'delhivery',	'ithink',	'2024-05-18 05:56:08',	'2024-05-18 05:56:08'),
(9,	'success',	1723324332461,	'',	'',	24562011976542,	'1723324332461',	'delhivery',	'ithink',	'2024-05-18 05:24:32',	'2024-05-18 05:24:32'),
(10,	'success',	1724994693339,	'',	'',	24562011976575,	'1724994693339',	'delhivery',	'ithink',	'2024-05-18 06:22:38',	'2024-05-18 06:22:38'),
(11,	'success',	1718204320747,	'',	'',	24562011976671,	'1718204320747',	'delhivery',	'ithink',	'2024-05-18 06:26:16',	'2024-05-18 06:26:16'),
(12,	'success',	1724736126534,	'',	'',	24562011978896,	'1724736126534',	'delhivery',	'ithink',	'2024-05-18 07:03:33',	'2024-05-18 07:03:33'),
(13,	'success',	1723954715393,	'',	'',	24562011981000,	'1723954715393',	'delhivery',	'ithink',	'2024-05-18 10:32:16',	'2024-05-18 10:32:16'),
(14,	'success',	1718027726605,	'',	'',	24562011981044,	'1718027726605',	'delhivery',	'ithink',	'2024-05-18 10:41:07',	'2024-05-18 10:41:07'),
(15,	'success',	1721326916095,	'',	'',	21025819947442,	'1721326916095',	'delhivery',	'ithink',	'2024-05-29 12:28:20',	'2024-05-29 12:28:20'),
(16,	'success',	1720175192601,	'',	'',	21025820170856,	'1720175192601',	'delhivery',	'ithink',	'2024-06-04 11:30:00',	'2024-06-04 11:30:00'),
(17,	'success',	1718821062663,	'',	'',	21025820171136,	'1718821062663',	'delhivery',	'ithink',	'2024-06-04 11:47:31',	'2024-06-04 11:47:31');

DROP TABLE IF EXISTS `logistic_order_track`;
CREATE TABLE `logistic_order_track` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `awb_number` varchar(255) NOT NULL,
  `latest_scan_time` varchar(255) NOT NULL,
  `live_status` bigint NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `edd_date` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `logistic_order_track` (`id`, `awb_number`, `latest_scan_time`, `live_status`, `status`, `remark`, `location`, `edd_date`, `created_at`, `updated_at`) VALUES
(1,	'AWB001',	'2022-04-04 15:20:25',	2,	'picked up',	'picked up',	'mumbai',	'2022-04-10 15:20:25',	'2024-05-03 14:25:48',	NULL),
(2,	'24562011866841',	'2024-05-06 17:37:54',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-06 12:07:56',	NULL),
(3,	'24562011867390',	'2024-05-07 14:40:18',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-07 09:10:20',	NULL),
(4,	'24562011867202',	'2024-05-07 14:41:18',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-07 09:11:20',	NULL),
(5,	'24562011876991',	'2024-05-09 12:25:28',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 06:55:30',	NULL),
(6,	'24562011839331',	'2024-05-09 12:35:23',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 07:05:26',	NULL),
(7,	'24562011839246',	'2024-05-09 12:35:33',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 07:05:36',	NULL),
(8,	'24562011893290',	'2024-05-09 14:20:11',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 08:50:12',	NULL),
(9,	'24562011895003',	'2024-05-09 15:13:28',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 09:45:29',	NULL),
(10,	'24562011897151',	'2024-05-09 19:30:05',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:02:07',	NULL),
(11,	'24562011897195',	'2024-05-09 19:47:29',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:19:31',	NULL),
(12,	'24562011897210',	'2024-05-09 19:51:26',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:23:28',	NULL),
(13,	'24562011897254',	'2024-05-09 20:19:06',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:49:07',	NULL),
(14,	'24562011897276',	'2024-05-09 20:19:03',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 14:51:04',	NULL),
(15,	'24562011897291',	'2024-05-09 20:31:36',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 15:03:38',	NULL),
(16,	'24562011897324',	'2024-05-09 20:43:56',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 15:13:58',	NULL),
(17,	'24562011897302',	'2024-05-09 20:44:00',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-09 15:14:02',	NULL),
(18,	'24562011919772',	'2024-05-13 11:18:00',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 05:48:02',	NULL),
(19,	'24562011921824',	'2024-05-13 12:40:06',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 07:10:08',	NULL),
(20,	'24562011921894',	'2024-05-13 12:50:26',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 07:20:27',	NULL),
(21,	'24562011924086',	'2024-05-13 17:28:29',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 11:58:31',	NULL),
(22,	'24562011927645',	'2024-05-13 19:59:35',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-13 14:29:36',	NULL),
(23,	'24562011935695',	'2024-05-14 14:27:25',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-14 08:59:26',	NULL),
(24,	'24562011947540',	'2024-05-15 15:53:29',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 10:25:32',	NULL),
(25,	'24562011947595',	'2024-05-15 15:54:14',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 10:26:15',	NULL),
(26,	'24562011947761',	'2024-05-15 16:14:27',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 10:46:29',	NULL),
(27,	'24562011947993',	'2024-05-15 16:43:38',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-15 11:15:40',	NULL),
(28,	'21025819947442',	'2024-05-29 18:07:04',	8,	'cancelled',	'Seller cancelled the order',	'Noida_Bairangpur_GW (Uttar Pradesh)',	'0000-00-00',	'2024-05-29 12:37:06',	NULL);

DROP TABLE IF EXISTS `logistic_partners`;
CREATE TABLE `logistic_partners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint unsigned NOT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `logistic_partners` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1,	'IThink Logistics Pvt Ltd',	1,	'2024-05-22 14:25:11',	'2024-05-22 08:58:23'),
(2,	'Go Swift Logistics',	0,	'2024-05-22 14:25:11',	'2024-05-22 08:59:29');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'active',
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'null',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `newsletters` (`id`, `email`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1,	'durgesh@bastionex.net',	'active',	'null',	'2024-04-23 08:54:28',	'2024-04-23 08:54:28'),
(2,	'ayushi@bastionex.net',	'active',	'null',	'2024-04-24 11:09:32',	'2024-04-24 11:09:32'),
(3,	'test@yopmail.com',	'active',	'null',	'2024-05-13 05:49:05',	'2024-05-13 05:49:05'),
(4,	'tanu5645454jtanuj11211de3@yopmail.com',	'active',	'null',	'2024-06-04 07:41:04',	'2024-06-04 07:41:04'),
(5,	'tanuj11211de3@yopmail.com',	'active',	'null',	'2024-06-04 07:41:47',	'2024-06-04 07:41:47'),
(6,	'tanuj1123@yopmail.com',	'active',	'null',	'2024-06-04 09:40:25',	'2024-06-04 09:40:25'),
(7,	'tanuj11211dqe3@yopmail.com',	'active',	'null',	'2024-06-04 09:42:37',	'2024-06-04 09:42:37'),
(8,	'tanuj@metaspacechain.com',	'active',	'null',	'2024-06-05 12:07:10',	'2024-06-05 12:07:10'),
(9,	'tanuj212@yopmail.com',	'active',	'null',	'2024-06-05 12:20:26',	'2024-06-05 12:20:26');

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `offer_data`;
CREATE TABLE `offer_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `image` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `position` tinyint NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `offer_data` (`id`, `title`, `description`, `image`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1,	'flash sale 123',	'Now Live: Cyber Monday Sale Get Up To 40% Off*',	NULL,	1,	'active',	'2024-05-09 12:45:20',	'2024-01-25 09:14:57'),
(2,	'diwali sale for all',	'now live diwali sale get upto 60% off and',	'1706174114251-pic4.jpg',	2,	'inactive',	'2024-02-03 05:29:26',	'2024-01-25 09:19:13'),
(3,	'diwali sale for all',	'now live diwali sale get upto 60% off and',	'',	3,	'active',	'2024-02-03 05:59:41',	'2024-02-03 05:59:41'),
(8,	'diwali sale for all',	NULL,	'',	4,	'inactive',	'2024-02-03 06:02:02',	'2024-02-03 06:02:02'),
(9,	'diwali sale for all1',	NULL,	'',	5,	'inactive',	'2024-02-03 06:13:55',	'2024-02-03 06:13:55'),
(10,	'diwali sale for all12',	NULL,	'',	6,	'active',	'2024-02-03 06:14:34',	'2024-02-03 06:14:34');

DROP TABLE IF EXISTS `online_payment_discount`;
CREATE TABLE `online_payment_discount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `discount` bigint NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `online_payment_discount` (`id`, `country_code`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1,	'IN',	10,	'active',	'2024-04-23 14:55:50',	'2024-04-23 14:55:50');

DROP TABLE IF EXISTS `online_payment_options`;
CREATE TABLE `online_payment_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `payment_name` varchar(500) NOT NULL,
  `is_local` tinyint NOT NULL DEFAULT '1',
  `country_code` varchar(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `order_delivery_day`;
CREATE TABLE `order_delivery_day` (
  `id` int NOT NULL AUTO_INCREMENT,
  `delivery_day` int NOT NULL,
  `shipping_day` int NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country_code` varchar(10) NOT NULL DEFAULT 'IN',
  `out_for_delivery_day` int NOT NULL,
  `normal_delivery_charges` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `order_delivery_day` (`id`, `delivery_day`, `shipping_day`, `country`, `country_code`, `out_for_delivery_day`, `normal_delivery_charges`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'India',	'IN',	1,	20,	'2024-04-23 11:20:57',	'2024-05-13 09:20:40');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `is_student_info_id` bigint NOT NULL DEFAULT '0',
  `address_id` bigint unsigned NOT NULL,
  `variant_quantity` json NOT NULL,
  `coupon_id` bigint unsigned DEFAULT NULL,
  `sub_total` decimal(8,2) NOT NULL,
  `country_code` varchar(100) NOT NULL DEFAULT 'IN',
  `delivery_charges` decimal(8,2) NOT NULL,
  `payment_mode` varchar(300) DEFAULT NULL,
  `payment_method` enum('Cash on Delivery','Paypal','Debit Card/Credit Card','Razorpay') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Cash on Delivery',
  `payment_status` enum('complete','failed','pending') NOT NULL DEFAULT 'pending',
  `status` enum('new','outfordelivery','processing','cancelled','delivered','return-request','return-failed','return-success') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'new',
  `card_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `card_data` json DEFAULT NULL,
  `ref_id` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_date` timestamp NOT NULL,
  `delivery_date` timestamp NOT NULL,
  `shipping_date` timestamp NULL DEFAULT NULL,
  `out_for_delivery_date` timestamp NULL DEFAULT NULL,
  `delivery_instructions` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `payment_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `address_id` (`address_id`),
  KEY `coupon_id` (`coupon_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `user_addresses` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `is_student_info_id`, `address_id`, `variant_quantity`, `coupon_id`, `sub_total`, `country_code`, `delivery_charges`, `payment_mode`, `payment_method`, `payment_status`, `status`, `card_details`, `card_data`, `ref_id`, `txn_id`, `order_date`, `delivery_date`, `shipping_date`, `out_for_delivery_date`, `delivery_instructions`, `created_at`, `updated_at`, `payment_id`) VALUES
(1,	'1721878120582',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-23 14:45:47',	'2024-04-26 14:45:47',	'2024-04-25 14:45:47',	'2024-04-26 14:45:47',	NULL,	'2024-04-23 14:45:47',	'2024-04-23 14:45:47',	NULL),
(2,	'1716847673273',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181826653\\\",\\\"created_at\\\":\\\"2024-04-23T20:26:45+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-23T20:26:45+05:30\\\",\\\"order_id\\\":\\\"e99673ef-1691-42ee-837e-129e6c9c6623\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_o-G_3ovbIhvgITSij1TXa5Op6lYuZ_y1nGqcHKOOFO4kALgaPr7JaB7Z83XAXJsHYT6B2kTfGNP_MCRSQSdS5Zs4igir3bAzIlMbU0im6o1Y\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-23 14:56:40',	'2024-04-26 14:56:40',	'2024-04-25 14:56:40',	'2024-04-26 14:56:40',	NULL,	'2024-04-23 14:56:40',	'2024-04-23 15:30:00',	'e99673ef-1691-42ee-837e-129e6c9c6623'),
(3,	'1719126315696',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181826669\\\",\\\"created_at\\\":\\\"2024-04-23T20:28:44+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-23T20:28:44+05:30\\\",\\\"order_id\\\":\\\"a6e6fe1d-d07d-4066-b72d-5168ef4004bf\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Uf7Tf1RzMolkunnBNaGO2Wf5IOqDsya_Hs-NpWXY3bkzD4iX39-DCtmKi7b2WpkMVWeoOXyN66IAoGEtChjD8m-4g3ta928KEQ7TgF7bmYRs\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-23 14:58:42',	'2024-04-26 14:58:42',	'2024-04-25 14:58:42',	'2024-04-26 14:58:42',	NULL,	'2024-04-23 14:58:42',	'2024-04-23 15:30:00',	'a6e6fe1d-d07d-4066-b72d-5168ef4004bf'),
(4,	'1721718204341',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181826707\\\",\\\"created_at\\\":\\\"2024-04-23T20:34:34+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-23T20:34:34+05:30\\\",\\\"order_id\\\":\\\"12b26170-a0e6-4e9f-889a-f78ba670d2fc\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_7B_7bmxQW2WqLB6zVVlJ6knztvIAbrFvj-teU0Y-dlr8QnhROlJthZMd6s9ovs-BgumFMiw6nU3V8uuc78KaSzrh9FoDivePkdA_1sWZxUWp\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-23 15:04:29',	'2024-04-26 15:04:29',	'2024-04-25 15:04:29',	'2024-04-26 15:04:29',	NULL,	'2024-04-23 15:04:29',	'2024-04-23 15:05:07',	'12b26170-a0e6-4e9f-889a-f78ba670d2fc'),
(5,	'1722361992853',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181832479\\\",\\\"created_at\\\":\\\"2024-04-24T10:32:10+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-24T10:32:10+05:30\\\",\\\"order_id\\\":\\\"e2c286c2-5040-44b3-905f-d24039832f80\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_5nMYpVizj6DvtOc8EqF_YJ0yAK5teiQfpJoxuofGDIzeNAt9TSDII0bZbthxDn8D6Pe67luoIFV2cu4wcjrG1tHLa0Vgyq2G_iwMSv6E4rnF\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-24 05:02:07',	'2024-04-27 05:02:07',	'2024-04-26 05:02:07',	'2024-04-27 05:02:07',	NULL,	'2024-04-24 05:02:07',	'2024-04-24 05:03:12',	'e2c286c2-5040-44b3-905f-d24039832f80'),
(6,	'1715226477307',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181832537\\\",\\\"created_at\\\":\\\"2024-04-24T10:38:36+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-24T10:38:36+05:30\\\",\\\"order_id\\\":\\\"7dac9f81-76f8-437e-960e-332995d714ef\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_DI0Ema8fuKA9hVDT-i551S0um4fp3wiJlF6Qy0K9Zs4KBWnUwnC808mEDwcIHxJD-rCDjzIwbaoMC64TEfOHbB8DRQJpuRkuA00H34U5wdtu\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-24 05:06:17',	'2024-04-27 05:06:17',	'2024-04-26 05:06:17',	'2024-04-27 05:06:17',	NULL,	'2024-04-24 05:06:17',	'2024-04-24 05:08:55',	'7dac9f81-76f8-437e-960e-332995d714ef'),
(7,	'1721898809315',	1,	0,	1,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 05:24:59',	'2024-04-27 05:24:59',	'2024-04-26 05:24:59',	'2024-04-27 05:24:59',	NULL,	'2024-04-24 05:24:59',	'2024-04-24 05:25:50',	NULL),
(8,	'1715626263059',	8,	0,	3,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 05:30:11',	'2024-04-27 05:30:11',	'2024-04-26 05:30:11',	'2024-04-27 05:30:11',	NULL,	'2024-04-24 05:30:11',	'2024-04-24 05:30:21',	NULL),
(9,	'1715868090870',	8,	0,	3,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	2,	781.10,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181833716\\\",\\\"created_at\\\":\\\"2024-04-24T11:12:17+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9898989898\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":981,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-24T11:12:17+05:30\\\",\\\"order_id\\\":\\\"8fa650bb-d84f-430f-9ea7-226729096815\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_d9eQxVZA6PgEsp9zbBXZTQ7aROZHlt3A2CPvnyYd5ekfidWutpAIndpnebNRTn8Ntp1zkJ1xU5ga4h1pLxLU3oASROUqei_0y0wRM-X2_9s6\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-24 05:42:14',	'2024-04-27 05:42:14',	'2024-04-26 05:42:14',	'2024-04-27 05:42:14',	NULL,	'2024-04-24 05:42:14',	'2024-04-24 06:30:00',	'8fa650bb-d84f-430f-9ea7-226729096815'),
(10,	'1716850419862',	8,	1,	3,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": null}]',	2,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 06:01:51',	'2024-04-27 06:01:51',	'2024-04-26 06:01:51',	'2024-04-27 06:01:51',	NULL,	'2024-04-24 06:01:51',	'2024-04-24 06:01:51',	NULL),
(11,	'1718505524294',	8,	1,	3,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": null}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-24 06:11:52',	'2024-04-27 06:11:52',	'2024-04-26 06:11:52',	'2024-04-27 06:11:52',	NULL,	'2024-04-24 06:11:52',	'2024-04-24 06:11:52',	NULL),
(12,	'1716812523760',	1,	3,	1,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": \"1713941465413-Try on copy.webp\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 07:21:01',	'2024-04-28 07:21:01',	'2024-04-27 07:21:01',	'2024-04-28 07:21:01',	NULL,	'2024-04-25 07:21:01',	'2024-04-25 07:21:01',	NULL),
(13,	'1723128082969',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181861625\\\",\\\"created_at\\\":\\\"2024-04-25T17:17:01+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T17:17:01+05:30\\\",\\\"order_id\\\":\\\"b6023d35-b947-47f2-a479-287b32bff841\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Anb1T-Qur_HFYL-GSJITn1Rquk3XOD4Egim58RyoI5OkvX0Okb2hxiB7u6a25sZKL8vTb4uThA2N08czWkgbQX2sgQBrCQLQ0VniCL1LcCdb\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 11:46:55',	'2024-04-28 11:46:55',	'2024-04-27 11:46:55',	'2024-04-28 11:46:55',	NULL,	'2024-04-25 11:46:55',	'2024-04-25 11:47:30',	'b6023d35-b947-47f2-a479-287b32bff841'),
(14,	'1722972980844',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 11:48:25',	'2024-04-28 11:48:25',	'2024-04-27 11:48:25',	'2024-04-28 11:48:25',	NULL,	'2024-04-25 11:48:25',	'2024-04-25 11:48:25',	NULL),
(15,	'1716206851267',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181863945\\\",\\\"created_at\\\":\\\"2024-04-25T18:10:15+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T18:10:15+05:30\\\",\\\"order_id\\\":\\\"81586a1b-6339-4c91-adf7-2fdfe6bd3bcd\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_rf8vRRNI0mbrevDoOfipMZU5iuO-HShu04e_KQQK9jTvhSv-skL2QkbydMD9Fkl5I41rR5VCP_x_ZsaTfilDrQ9I-HEhRBzZ3UQWp2KDWfa0\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 12:40:10',	'2024-04-28 12:40:10',	'2024-04-27 12:40:10',	'2024-04-28 12:40:10',	NULL,	'2024-04-25 12:40:10',	'2024-04-25 13:30:00',	'81586a1b-6339-4c91-adf7-2fdfe6bd3bcd'),
(16,	'1716091895996',	10,	0,	5,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	1760.22,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181863953\\\",\\\"created_at\\\":\\\"2024-04-25T18:11:43+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1960,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T18:11:43+05:30\\\",\\\"order_id\\\":\\\"1ad2060e-e7f6-49d3-b151-22ce3ab900bb\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_hAk8YY7H0D-DsllUIMC2mf89Ep0SqzDuGgykyuBjgFzkoJ2XH44kg3G56nq5ff8_hPxauGzoowYpfmJRQiLqXAALTkPIWfmUZ_bomcb5BGmg\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 12:41:41',	'2024-04-28 12:41:41',	'2024-04-27 12:41:41',	'2024-04-28 12:41:41',	NULL,	'2024-04-25 12:41:41',	'2024-04-25 12:42:33',	'1ad2060e-e7f6-49d3-b151-22ce3ab900bb'),
(17,	'1717159200610',	10,	0,	5,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'delivered',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181863979\\\",\\\"created_at\\\":\\\"2024-04-25T18:13:15+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T18:13:15+05:30\\\",\\\"order_id\\\":\\\"ba0f7876-5bac-43a1-8442-3e8226a90770\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.bastionex.net/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_3EY7Y1-wX9B1oMji4GKb3kJvAtyzi6G96BiIBlKnYN2HU8GCTGe0vwq5QcBNr8_xgw_0WfP_xbyIG9e20qTIGpdPdajO8liupIDRwewpucq-\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 12:43:13',	'2024-04-25 12:45:10',	'2024-04-25 12:44:19',	'2024-04-25 12:44:48',	NULL,	'2024-04-25 12:43:13',	'2024-04-25 12:45:10',	'ba0f7876-5bac-43a1-8442-3e8226a90770'),
(18,	'1714613977347',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	989.01,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 15:12:47',	'2024-04-28 15:12:47',	'2024-04-27 15:12:47',	'2024-04-28 15:12:47',	NULL,	'2024-04-25 15:12:47',	'2024-04-25 15:12:47',	NULL),
(19,	'1720337003360',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181865586\\\",\\\"created_at\\\":\\\"2024-04-25T20:43:17+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T20:43:17+05:30\\\",\\\"order_id\\\":\\\"773bd8a7-0181-43d9-9f69-2032aca169d0\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_lCR7bo-dOhrKQrhu7ZSkS5CdgZU3sSffcnXLZo6XwoOMteuw3wk-WOGvU5u8zHZdVlbriwpNj-R_nr6p84lEqSHGqf5kmRQItrTpS-kyNIZ3\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 15:13:15',	'2024-04-28 15:13:15',	'2024-04-27 15:13:15',	'2024-04-28 15:13:15',	NULL,	'2024-04-25 15:13:15',	'2024-04-25 15:32:23',	'773bd8a7-0181-43d9-9f69-2032aca169d0'),
(20,	'1719072174124',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181865692\\\",\\\"created_at\\\":\\\"2024-04-25T21:10:52+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-25T21:10:52+05:30\\\",\\\"order_id\\\":\\\"f6facaef-5082-46ee-b9a0-7fd073aeb75a\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_oqf58RdR8IgHz7GSrl3aCWfGNoAInnfDgaPsd79sX5uvaFyDpyg1A9nNFcy-tkejaY9LVFCO7ht51G5IzOA2eVIra9mzcsNwLgCNHTcbduVl\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-25 15:40:50',	'2024-04-28 15:40:50',	'2024-04-27 15:40:50',	'2024-04-28 15:40:50',	NULL,	'2024-04-25 15:40:50',	'2024-04-25 15:41:09',	'f6facaef-5082-46ee-b9a0-7fd073aeb75a'),
(21,	'1715142201275',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:07:03',	'2024-04-28 16:07:03',	'2024-04-27 16:07:03',	'2024-04-28 16:07:03',	NULL,	'2024-04-25 16:07:03',	'2024-04-25 17:00:00',	NULL),
(22,	'1718265064674',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:07:23',	'2024-04-28 16:07:23',	'2024-04-27 16:07:23',	'2024-04-28 16:07:23',	NULL,	'2024-04-25 16:07:23',	'2024-04-25 17:00:00',	NULL),
(23,	'1714308729412',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:08:10',	'2024-04-28 16:08:10',	'2024-04-27 16:08:10',	'2024-04-28 16:08:10',	NULL,	'2024-04-25 16:08:10',	'2024-04-25 17:00:00',	NULL),
(24,	'1719261601878',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	772.92,	'IN',	200.00,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:08:59',	'2024-04-28 16:08:59',	'2024-04-27 16:08:59',	'2024-04-28 16:08:59',	NULL,	'2024-04-25 16:08:59',	'2024-04-25 17:00:00',	NULL),
(25,	'1720346562789',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	881.02,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-04-25 16:09:53',	'2024-04-28 16:09:53',	'2024-04-27 16:09:53',	'2024-04-28 16:09:53',	NULL,	'2024-04-25 16:09:53',	'2024-04-25 16:09:53',	NULL),
(26,	'1716803751238',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181880369\\\",\\\"created_at\\\":\\\"2024-04-27T10:01:53+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-27T10:01:53+05:30\\\",\\\"order_id\\\":\\\"7c676511-60db-44a1-9885-cb42fc4fbd12\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_E1Pwa4kXSZj8IWFW1TjZk7GZNpDOddIjm2bEszXHr1QVQCsRSjwad3dimKMFLI6-RyspRNzyIfB3wVUN6ezE_VAcmYZaM154sR4WVi__IPmx\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-27 04:31:52',	'2024-04-30 04:31:52',	'2024-04-29 04:31:52',	'2024-04-30 04:31:52',	NULL,	'2024-04-27 04:31:52',	'2024-04-27 04:32:15',	'7c676511-60db-44a1-9885-cb42fc4fbd12'),
(27,	'1721251792408',	2,	0,	2,	'[{\"quantity\": 10, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"6\", \"variant_name\": \"Rayban\", \"product_price\": 1054.08, \"thumbnail_url\": \"1714222801094-img1.jpg\"}]',	NULL,	9466.72,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2181883350\\\",\\\"created_at\\\":\\\"2024-04-27T18:44:11+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":9667,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-05-27T18:44:11+05:30\\\",\\\"order_id\\\":\\\"db386582-5842-4252-87d5-740effd9e1ae\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_VmcGldip-T1XRCIY8Zb7CA-HaNSVAKeXEGPw9fmYIxD2OYPYSPh4izEhnlwaopgGBmA_QivgbNEBTbcP0rtvsFqRV17g72xDdM-wIpKPmuda\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-04-27 13:14:10',	'2024-04-30 13:14:10',	'2024-04-29 13:14:10',	'2024-04-30 13:14:10',	NULL,	'2024-04-27 13:14:10',	'2024-04-27 13:18:38',	'db386582-5842-4252-87d5-740effd9e1ae'),
(28,	'1716059180491',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	630.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-07 07:11:50',	'2024-05-10 07:11:50',	'2024-05-09 07:11:50',	'2024-05-10 07:11:50',	NULL,	'2024-05-07 07:11:50',	'2024-05-07 10:21:17',	NULL),
(29,	'1716671806215',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	547.00,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182023328\\\",\\\"created_at\\\":\\\"2024-05-07T12:53:30+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":747,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-06T12:53:30+05:30\\\",\\\"order_id\\\":\\\"4de3d40a-bd34-412b-9228-5de7c26225ee\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_AptxYMndkv_1vnWN0kiB7zSSOmOm-438dVEJPrX2KFyf57m46M9ptH_XOThBb68jxgWnNqB4gBXbf-LjnEPWxGUX9jH4GzWKAFiuydNiq2W7\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-07 07:19:21',	'2024-05-10 07:19:21',	'2024-05-09 07:19:21',	'2024-05-10 07:19:21',	NULL,	'2024-05-07 07:19:21',	'2024-05-07 07:24:18',	'4de3d40a-bd34-412b-9228-5de7c26225ee'),
(30,	'1722983537554',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 8, \"variant_id\": \"10\", \"variant_name\": \"Black Full Rim Rectangle Metal Frame Sunglasses\", \"product_price\": 532, \"thumbnail_url\": null}]',	NULL,	1162.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-07 09:09:30',	'2024-05-10 09:09:30',	'2024-05-09 09:09:30',	'2024-05-10 09:09:30',	NULL,	'2024-05-07 09:09:30',	'2024-05-07 09:09:30',	NULL),
(31,	'1717843808983',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}]',	NULL,	870.11,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182025137\\\",\\\"created_at\\\":\\\"2024-05-07T14:42:45+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1070,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-06T14:42:45+05:30\\\",\\\"order_id\\\":\\\"4b78c9ed-b9e7-4e8a-85c0-736b0272e20e\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session__n41dzEfsor7zpMiRFSMpWOUh7NTWcjw5QSVH4oyiN14G-2uAJ1Ozxd6_MkAI6BaGMrtlJrNbSykLwFJ7S0QsxvLHdjm3VS3U5yjJPBaIk56\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-07 09:12:44',	'2024-05-10 09:12:44',	'2024-05-09 09:12:44',	'2024-05-10 09:12:44',	NULL,	'2024-05-07 09:12:44',	'2024-05-07 09:13:24',	'4b78c9ed-b9e7-4e8a-85c0-736b0272e20e'),
(32,	'1715472052951',	2,	0,	2,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	2,	490.30,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182025170\\\",\\\"created_at\\\":\\\"2024-05-07T14:44:50+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":690,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-06T14:44:50+05:30\\\",\\\"order_id\\\":\\\"d954976b-1c1b-4444-8c18-b83de6fa6e07\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_Y8dhrSqMY2VFd-1hnOoIRkoaaPPsYOfJAJklyjB_Ya3zQ0m2PcONuEtb3tH0FLd16HMBH0QNmO0bXcOZMvfJr5dr0YJziKU_0TyOEVPWPJff\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-07 09:14:48',	'2024-05-10 09:14:48',	'2024-05-09 09:14:48',	'2024-05-10 09:14:48',	NULL,	'2024-05-07 09:14:48',	'2024-05-07 09:15:15',	'd954976b-1c1b-4444-8c18-b83de6fa6e07'),
(33,	'1717705023733',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	881.02,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-07 12:39:32',	'2024-05-11 09:00:28',	'2024-05-09 12:39:32',	'2024-05-10 12:39:32',	NULL,	'2024-05-07 12:39:32',	'2024-05-11 09:00:28',	NULL),
(34,	'1721782295619',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Lens Metal Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1714453750787-30.JPG\"}]',	NULL,	1157.25,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:39:20',	'2024-05-11 10:39:20',	'2024-05-10 10:39:20',	'2024-05-11 10:39:20',	NULL,	'2024-05-08 10:39:20',	'2024-05-08 10:39:43',	NULL),
(35,	'1716974054395',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 7, \"variant_id\": \"8\", \"variant_name\": \"Multicolor Full-Rim Frame Sunglasses\", \"product_price\": 569.05, \"thumbnail_url\": \"1714388202016-2.jpg\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}]',	NULL,	2080.07,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:43:17',	'2024-05-11 10:43:17',	'2024-05-10 10:43:17',	'2024-05-11 10:43:17',	NULL,	'2024-05-08 10:43:17',	'2024-05-08 10:43:17',	NULL),
(36,	'1717410385631',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}, {\"quantity\": 3, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 7, \"variant_id\": \"8\", \"variant_name\": \"Multicolor Full-Rim Frame Sunglasses\", \"product_price\": 569.05, \"thumbnail_url\": \"1714388202016-2.jpg\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 3, \"variant_id\": \"3\", \"variant_name\": \"tutle\", \"product_price\": 450, \"thumbnail_url\": null}]',	NULL,	3790.07,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:47:09',	'2024-05-11 10:47:09',	'2024-05-10 10:47:09',	'2024-05-11 10:47:09',	NULL,	'2024-05-08 10:47:09',	'2024-05-08 10:47:09',	NULL),
(37,	'1718506040462',	1,	0,	1,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 1, \"variant_id\": \"1\", \"variant_name\": \"Vuezen Wood Site\", \"product_price\": 989.01, \"thumbnail_url\": \"1713868437188-1705327571877-image9.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"5\", \"variant_name\": \"Rayban\", \"product_price\": 949.05, \"thumbnail_url\": \"1714222490356-Explore_eyewear_788x380.webp\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 4, \"variant_id\": \"4\", \"variant_name\": \"Vuezen Plus\", \"product_price\": 881.02, \"thumbnail_url\": \"1714060846805-1713793573585-1710425198204-pic25.jpg\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	3449.08,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 10:59:38',	'2024-05-11 07:29:03',	'2024-05-10 10:59:38',	'2024-05-11 10:59:38',	NULL,	'2024-05-08 10:59:38',	'2024-05-11 07:29:03',	NULL),
(38,	'1717036654142',	18,	4,	8,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 2, \"variant_id\": \"2\", \"variant_name\": \"test\", \"product_price\": 475, \"thumbnail_url\": \"1713941465413-Try on copy.webp\"}]',	NULL,	20.86,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182043107\\\",\\\"created_at\\\":\\\"2024-05-08T17:46:59+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8881825795\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":179,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-07T17:46:59+05:30\\\",\\\"order_id\\\":\\\"0fc9fc38-6ee8-4d0f-989d-e6d6af503283\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_goguZnjV3_HlE9Y1nzaD8U2wnMeC95VUeKl-m7_738FHG9JxiijaXqoi9hxUQ3Jr_7Ts_8DNFMOnOulfVrMkqvDLCCn6jF0vCrblvlds6wKr\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-08 12:16:58',	'2024-05-11 12:16:58',	'2024-05-10 12:16:58',	'2024-05-11 12:16:58',	NULL,	'2024-05-08 12:16:58',	'2024-05-08 13:00:00',	'0fc9fc38-6ee8-4d0f-989d-e6d6af503283'),
(39,	'1715994962337',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	630.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 12:51:05',	'2024-05-11 00:00:00',	'2024-05-10 00:00:00',	'2024-05-11 00:00:00',	NULL,	'2024-05-08 12:51:05',	'2024-05-11 07:28:35',	NULL),
(40,	'1716921848833',	27,	0,	10,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 14, \"variant_id\": \"17\", \"variant_name\": \"Men\'s Aviator Metal Sunglass\", \"product_price\": 570, \"thumbnail_url\": null}]',	2,	513.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'complete',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-08 12:53:03',	'2024-05-11 07:27:25',	'2024-05-10 00:00:00',	'2024-05-11 07:26:59',	NULL,	'2024-05-08 12:53:03',	'2024-05-11 07:27:25',	NULL),
(41,	'1723462030221',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"5\", \"variant_name\": \"Rayban\", \"product_price\": 949.05, \"thumbnail_url\": \"1714222490356-Explore_eyewear_788x380.webp\"}]',	NULL,	949.05,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-09 06:16:36',	'2024-05-14 00:00:00',	'2024-05-12 00:00:00',	'2024-05-14 00:00:00',	NULL,	'2024-05-09 06:16:36',	'2024-05-11 08:59:16',	NULL),
(42,	'1719932935621',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 5, \"variant_id\": \"5\", \"variant_name\": \"Rayban\", \"product_price\": 949.05, \"thumbnail_url\": \"1714222490356-Explore_eyewear_788x380.webp\"}]',	NULL,	834.14,	'IN',	200.00,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182050271\\\",\\\"created_at\\\":\\\"2024-05-09T11:50:27+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"walterwNrcMimm\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8881825795\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":1034,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-08T11:50:27+05:30\\\",\\\"order_id\\\":\\\"72545694-39c5-4af0-a85c-11d0ac8bb69b\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/orderhistory?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_XVUvjOW1MYM0Tb0003qYctU5EvAFIQOW9SrmlknMKtCFIxCjGjGBFtBhV7P_YR22lgm3Wod4AbCKJdLZhBm88zXzHpmQOp03NRL1DKcLoSYr\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-09 06:20:25',	'2024-05-12 06:20:25',	'2024-05-11 06:20:25',	'2024-05-12 06:20:25',	NULL,	'2024-05-09 06:20:25',	'2024-05-09 07:00:00',	'72545694-39c5-4af0-a85c-11d0ac8bb69b'),
(43,	'1718905893529',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 6, \"variant_id\": \"7\", \"variant_name\": \"Black Acetate Sunglasses\", \"product_price\": 630, \"thumbnail_url\": null}]',	NULL,	630.00,	'IN',	80.00,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-13 04:50:27',	'2024-05-18 04:50:27',	'2024-05-18 04:50:27',	'2024-05-18 04:50:27',	NULL,	'2024-05-13 04:50:27',	'2024-05-13 04:53:27',	NULL),
(44,	'1723617322560',	18,	0,	8,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 527.25, \"thumbnail_url\": \"1715421380776-DSC_-29png.png\"}]',	3,	263.63,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'delivered',	NULL,	NULL,	NULL,	NULL,	'2024-05-13 08:51:15',	'2024-05-13 08:53:22',	'2024-05-14 00:00:00',	'2024-05-15 00:00:00',	NULL,	'2024-05-13 08:51:15',	'2024-05-13 08:53:22',	NULL),
(45,	'1717804011336',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 42, \"variant_id\": \"48\", \"variant_name\": \"Yellow Full Rim Frame Square Glasses\", \"product_price\": 995, \"thumbnail_url\": null}]',	NULL,	888.89,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2998143222\\\",\\\"created_at\\\":\\\"2024-05-29T17:27:39+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1717804011336\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":955,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-28T17:27:39+05:30\\\",\\\"order_id\\\":\\\"b907be1b-0f2b-4005-affb-791e0136e469\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_iTU9GReRxzUbhbjt3CVxuXxUPLt6Bulz5vua-BXzF5CqvPCq0JIn1UWsVntk_YfK_QU8-GSSPwAgXOtvgl_bIFB0XfHv05a-HuX5Tqa9Lopu\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-29 11:57:37',	'2024-05-30 11:57:37',	'2024-05-30 11:57:37',	'2024-05-30 11:57:37',	NULL,	'2024-05-29 11:57:37',	'2024-05-29 12:30:00',	'b907be1b-0f2b-4005-affb-791e0136e469'),
(46,	'1719081510232',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 42, \"variant_id\": \"48\", \"variant_name\": \"Yellow Full Rim Frame Square Glasses\", \"product_price\": 995, \"thumbnail_url\": null}]',	NULL,	995.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-05-29 11:58:06',	'2024-05-30 11:58:06',	'2024-05-30 11:58:06',	'2024-05-30 11:58:06',	NULL,	'2024-05-29 11:58:06',	'2024-05-29 11:58:06',	NULL),
(47,	'1719920252407',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 935, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	NULL,	834.89,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'failed',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2998173595\\\",\\\"created_at\\\":\\\"2024-05-29T17:43:29+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1719920252407\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":901,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-06-28T17:43:29+05:30\\\",\\\"order_id\\\":\\\"77900353-6aca-455e-a17f-48b28258d98b\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"https://vuezen.io/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_l4i4sDFsHddnLSWmpNsMQ8hGXyIBbI2TG2Db2SUOrFON7NHv-JOMP65MelN6NdzNGvDRl-doILGER1-ySeDwZqnvcrc-c8iNVaaM8SVCBPdl\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-05-29 12:13:28',	'2024-05-30 12:13:28',	'2024-05-30 12:13:28',	'2024-05-30 12:13:28',	NULL,	'2024-05-29 12:13:28',	'2024-05-29 13:00:00',	'77900353-6aca-455e-a17f-48b28258d98b'),
(48,	'1724252008223',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 67, \"variant_id\": \"85\", \"variant_name\": \"Half Eye Multicolor Full Rim Glasses\", \"product_price\": 740, \"thumbnail_url\": null}]',	NULL,	740.00,	'IN',	66.08,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-29 12:23:33',	'2024-05-30 12:23:33',	'2024-05-30 12:23:33',	'2024-05-30 12:23:33',	NULL,	'2024-05-29 12:23:33',	'2024-05-29 12:26:09',	NULL),
(49,	'1722634564821',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 42, \"variant_id\": \"48\", \"variant_name\": \"Yellow Full Rim Frame Square Glasses\", \"product_price\": 995, \"thumbnail_url\": null}]',	NULL,	995.00,	'IN',	97.06,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-29 12:26:22',	'2024-05-30 12:26:22',	'2024-05-30 12:26:22',	'2024-05-30 12:26:22',	NULL,	'2024-05-29 12:26:22',	'2024-05-29 12:28:13',	NULL),
(50,	'1721326916095',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 42, \"variant_id\": \"48\", \"variant_name\": \"Yellow Full Rim Frame Square Glasses\", \"product_price\": 995, \"thumbnail_url\": null}]',	NULL,	995.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-05-29 12:28:59',	'2024-05-30 12:28:59',	'2024-05-30 12:28:59',	'2024-05-30 12:28:59',	NULL,	'2024-05-29 12:28:59',	'2024-05-29 12:37:04',	NULL),
(51,	'1723742584899',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	NULL,	849.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 09:52:14',	'2024-06-05 09:52:14',	'2024-06-05 09:52:14',	'2024-06-05 09:52:14',	NULL,	'2024-06-04 09:52:14',	'2024-06-04 09:52:14',	NULL),
(52,	'1724041308241',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	NULL,	849.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 09:53:52',	'2024-06-05 09:53:52',	'2024-06-05 09:53:52',	'2024-06-05 09:53:52',	NULL,	'2024-06-04 09:53:52',	'2024-06-04 09:53:52',	NULL),
(53,	'1722425654364',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	NULL,	849.50,	'IN',	97.06,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 10:14:02',	'2024-06-05 10:14:02',	'2024-06-05 10:14:02',	'2024-06-05 10:14:02',	NULL,	'2024-06-04 10:14:02',	'2024-06-04 10:14:02',	NULL),
(54,	'1724425921530',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	NULL,	849.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 10:15:11',	'2024-06-05 10:15:11',	'2024-06-05 10:15:11',	'2024-06-05 10:15:11',	NULL,	'2024-06-04 10:15:11',	'2024-06-04 10:15:11',	NULL),
(55,	'1725005454335',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	NULL,	849.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 10:50:28',	'2024-06-05 10:50:28',	'2024-06-05 10:50:28',	'2024-06-05 10:50:28',	NULL,	'2024-06-04 10:50:28',	'2024-06-04 11:52:34',	NULL),
(56,	'1725476802302',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	3,	424.75,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 10:57:20',	'2024-06-05 10:57:20',	'2024-06-05 10:57:20',	'2024-06-05 10:57:20',	NULL,	'2024-06-04 10:57:20',	'2024-06-04 11:52:31',	NULL),
(57,	'1719519971940',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	NULL,	849.50,	'IN',	97.06,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 11:12:05',	'2024-06-05 11:12:05',	'2024-06-05 11:12:05',	'2024-06-05 11:12:05',	NULL,	'2024-06-04 11:12:05',	'2024-06-04 11:52:28',	NULL),
(58,	'1720736987481',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	NULL,	849.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 11:25:47',	'2024-06-05 11:25:47',	'2024-06-05 11:25:47',	'2024-06-05 11:25:47',	NULL,	'2024-06-04 11:25:47',	'2024-06-04 11:52:26',	NULL),
(59,	'1725919827465',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	3,	424.75,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 11:28:12',	'2024-06-05 11:28:12',	'2024-06-05 11:28:12',	'2024-06-05 11:28:12',	NULL,	'2024-06-04 11:28:12',	'2024-06-04 11:52:24',	NULL),
(60,	'1720175192601',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	3,	375.67,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182380975\\\",\\\"created_at\\\":\\\"2024-06-04T17:09:39+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1720175192601\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":442,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-04T17:09:39+05:30\\\",\\\"order_id\\\":\\\"93f24db2-ccf5-4fb7-b4d0-d12103020a2d\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_-ZJNfECzqG3zGliXRCRDfLvHpAJtpE7x3SAz9hzBCuvR_H6TRZ9dCGPCfoipxju96vnBhCPAPcCKQOOnhPKjmuR8DdfZNL0ko2cZcmxsaHQT\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-04 11:39:38',	'2024-06-05 11:39:38',	'2024-06-05 11:39:38',	'2024-06-05 11:39:38',	NULL,	'2024-06-04 11:39:38',	'2024-06-04 11:52:21',	'93f24db2-ccf5-4fb7-b4d0-d12103020a2d'),
(61,	'1718821062663',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 73, \"variant_id\": \"93\", \"variant_name\": \"Half Rim Metal Frame Glasses\", \"product_price\": 1175, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 935, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	3,	1886.82,	'IN',	121.83,	'cashfree',	'Debit Card/Credit Card',	'complete',	'cancelled',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182381086\\\",\\\"created_at\\\":\\\"2024-06-04T17:19:23+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1718821062663\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":2009,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-04T17:19:23+05:30\\\",\\\"order_id\\\":\\\"907153e1-9a2b-4881-814d-34f18dc1ad77\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_LFZpzFtwKWScbBp5c10TD4Hd5VIPnbNCGrdbto-cfDofMki82UHAdNHsLQHFoYV7uOgyMpiJI8UNaXhsZ0NgC_6NMYLzWxGy4K8l9-rf5sjp\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-04 11:49:22',	'2024-06-05 11:49:22',	'2024-06-05 11:49:22',	'2024-06-05 11:49:22',	NULL,	'2024-06-04 11:49:22',	'2024-06-04 11:52:18',	'907153e1-9a2b-4881-814d-34f18dc1ad77'),
(62,	'1722555070994',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 73, \"variant_id\": \"93\", \"variant_name\": \"Half Rim Metal Frame Glasses\", \"product_price\": 1175, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 935, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	3,	2110.00,	'IN',	221.43,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 11:53:01',	'2024-06-05 11:53:01',	'2024-06-05 11:53:01',	'2024-06-05 11:53:01',	NULL,	'2024-06-04 11:53:01',	'2024-06-04 11:53:01',	NULL),
(63,	'1718595908058',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 73, \"variant_id\": \"93\", \"variant_name\": \"Half Rim Metal Frame Glasses\", \"product_price\": 1175, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 935, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	3,	2110.00,	'IN',	221.43,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 11:53:41',	'2024-06-05 11:53:41',	'2024-06-05 11:53:41',	'2024-06-05 11:53:41',	NULL,	'2024-06-04 11:53:41',	'2024-06-04 11:53:41',	NULL),
(64,	'1724582754148',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 73, \"variant_id\": \"93\", \"variant_name\": \"Half Rim Metal Frame Glasses\", \"product_price\": 1175, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 935, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	3,	2110.00,	'IN',	221.43,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 11:56:39',	'2024-06-05 11:56:39',	'2024-06-05 11:56:39',	'2024-06-05 11:56:39',	NULL,	'2024-06-04 11:56:39',	'2024-06-04 11:56:39',	NULL),
(65,	'1723011156852',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 73, \"variant_id\": \"93\", \"variant_name\": \"Half Rim Metal Frame Glasses\", \"product_price\": 1175, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 10, \"variant_id\": \"12\", \"variant_name\": \"Blue Shade Stylish Square Frame Sunglasses\", \"product_price\": 935, \"thumbnail_url\": \"1715836965836-DSC_-70ng.png\"}]',	3,	2110.00,	'IN',	221.43,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:00:38',	'2024-06-05 12:00:38',	'2024-06-05 12:00:38',	'2024-06-05 12:00:38',	NULL,	'2024-06-04 12:00:38',	'2024-06-04 12:00:38',	NULL),
(66,	'1724498904959',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 73, \"variant_id\": \"93\", \"variant_name\": \"Half Rim Metal Frame Glasses\", \"product_price\": 1175, \"thumbnail_url\": null}]',	3,	2024.50,	'IN',	217.39,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:03:56',	'2024-06-05 12:03:56',	'2024-06-05 12:03:56',	'2024-06-05 12:03:56',	NULL,	'2024-06-04 12:03:56',	'2024-06-04 12:03:56',	NULL),
(67,	'1727291090116',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 25, \"variant_id\": \"29\", \"variant_name\": \"Cat Eye Transparent Frame Sunglasses\", \"product_price\": 756, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 36, \"variant_id\": \"40\", \"variant_name\": \"Clubmaster Metal Fashion Sunglasses\", \"product_price\": 787.5, \"thumbnail_url\": null}]',	3,	1543.50,	'IN',	194.69,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:11:00',	'2024-06-05 12:11:00',	'2024-06-05 12:11:00',	'2024-06-05 12:11:00',	NULL,	'2024-06-04 12:11:00',	'2024-06-04 12:11:00',	NULL),
(68,	'1722950388303',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 25, \"variant_id\": \"29\", \"variant_name\": \"Cat Eye Transparent Frame Sunglasses\", \"product_price\": 756, \"thumbnail_url\": null}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 36, \"variant_id\": \"40\", \"variant_name\": \"Clubmaster Metal Fashion Sunglasses\", \"product_price\": 787.5, \"thumbnail_url\": null}]',	3,	1543.50,	'IN',	194.69,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:16:08',	'2024-06-05 12:16:08',	'2024-06-05 12:16:08',	'2024-06-05 12:16:08',	NULL,	'2024-06-04 12:16:08',	'2024-06-04 12:16:08',	NULL),
(69,	'1721798244796',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"Thick Frame Full Rim Square Sunglasses\", \"product_price\": 749, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	NULL,	1498.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:24:12',	'2024-06-05 12:24:12',	'2024-06-05 12:24:12',	'2024-06-05 12:24:12',	NULL,	'2024-06-04 12:24:12',	'2024-06-04 12:24:12',	NULL),
(70,	'1723898447797',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"Thick Frame Full Rim Square Sunglasses\", \"product_price\": 749, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	3,	749.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:25:24',	'2024-06-05 12:25:24',	'2024-06-05 12:25:24',	'2024-06-05 12:25:24',	NULL,	'2024-06-04 12:25:24',	'2024-06-04 12:25:24',	NULL),
(71,	'1722895433670',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"Thick Frame Full Rim Square Sunglasses\", \"product_price\": 749, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}]',	3,	749.00,	'IN',	97.06,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:33:25',	'2024-06-05 12:33:25',	'2024-06-05 12:33:25',	'2024-06-05 12:33:25',	NULL,	'2024-06-04 12:33:25',	'2024-06-04 12:33:25',	NULL),
(72,	'1719121549199',	2,	5,	6,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 64, \"variant_id\": \"82\", \"variant_name\": \"Demo Lens Rectangular Brown Glasses\", \"product_price\": 750, \"thumbnail_url\": \"1716439626456-123.png\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:35:22',	'2024-06-05 12:35:22',	'2024-06-05 12:35:22',	'2024-06-05 12:35:22',	NULL,	'2024-06-04 12:35:22',	'2024-06-04 12:35:22',	NULL),
(73,	'1718482747324',	2,	5,	6,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 64, \"variant_id\": \"82\", \"variant_name\": \"Demo Lens Rectangular Brown Glasses\", \"product_price\": 750, \"thumbnail_url\": \"1716439626456-123.png\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:38:23',	'2024-06-05 12:38:23',	'2024-06-05 12:38:23',	'2024-06-05 12:38:23',	NULL,	'2024-06-04 12:38:23',	'2024-06-04 12:38:23',	NULL),
(74,	'1719504797421',	2,	5,	6,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 64, \"variant_id\": \"82\", \"variant_name\": \"Demo Lens Rectangular Brown Glasses\", \"product_price\": 750, \"thumbnail_url\": \"1716439626456-123.png\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:45:23',	'2024-06-05 12:45:23',	'2024-06-05 12:45:23',	'2024-06-05 12:45:23',	NULL,	'2024-06-04 12:45:23',	'2024-06-04 12:45:23',	NULL),
(75,	'1723374745073',	2,	5,	6,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 64, \"variant_id\": \"82\", \"variant_name\": \"Demo Lens Rectangular Brown Glasses\", \"product_price\": 750, \"thumbnail_url\": \"1716439626456-123.png\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:46:17',	'2024-06-05 12:46:17',	'2024-06-05 12:46:17',	'2024-06-05 12:46:17',	NULL,	'2024-06-04 12:46:17',	'2024-06-04 12:46:17',	NULL),
(76,	'1726547869150',	2,	5,	6,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 64, \"variant_id\": \"82\", \"variant_name\": \"Demo Lens Rectangular Brown Glasses\", \"product_price\": 750, \"thumbnail_url\": \"1716439626456-123.png\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:55:45',	'2024-06-05 12:55:45',	'2024-06-05 12:55:45',	'2024-06-05 12:55:45',	NULL,	'2024-06-04 12:55:45',	'2024-06-04 12:55:45',	NULL),
(77,	'1720581606731',	2,	5,	6,	'[{\"quantity\": 1, \"is_student\": 1, \"product_id\": 64, \"variant_id\": \"82\", \"variant_name\": \"Demo Lens Rectangular Brown Glasses\", \"product_price\": 750, \"thumbnail_url\": \"1716439626456-123.png\"}]',	NULL,	0.00,	'IN',	200.00,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 12:56:33',	'2024-06-05 12:56:33',	'2024-06-05 12:56:33',	'2024-06-05 12:56:33',	NULL,	'2024-06-04 12:56:33',	'2024-06-04 12:56:33',	NULL),
(78,	'1721805804344',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 28, \"variant_id\": \"32\", \"variant_name\": \"Multicolor Full-Rim Cat Eye Glasses\", \"product_price\": 616, \"thumbnail_url\": \"1715682064000-Multicolor Full-Rim Cat Eye Glasses 4.png\"}, {\"quantity\": 2, \"is_student\": 0, \"product_id\": 31, \"variant_id\": \"35\", \"variant_name\": \"Blue Light Blocking Glasses\", \"product_price\": 655, \"thumbnail_url\": null}]',	NULL,	2542.00,	'IN',	161.18,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-04 13:01:38',	'2024-06-05 13:01:38',	'2024-06-05 13:01:38',	'2024-06-05 13:01:38',	NULL,	'2024-06-04 13:01:38',	'2024-06-04 13:01:38',	NULL),
(79,	'1722077126726',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"Thick Frame Full Rim Square Sunglasses\", \"product_price\": 749, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 71, \"variant_id\": \"91\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 799.5, \"thumbnail_url\": null}]',	3,	774.25,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 04:52:15',	'2024-06-06 04:52:15',	'2024-06-06 04:52:15',	'2024-06-06 04:52:15',	NULL,	'2024-06-05 04:52:15',	'2024-06-05 04:52:15',	NULL),
(80,	'1724103405513',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"Thick Frame Full Rim Square Sunglasses\", \"product_price\": 749, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 71, \"variant_id\": \"91\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 799.5, \"thumbnail_url\": null}]',	1,	799.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 05:01:16',	'2024-06-06 05:01:16',	'2024-06-06 05:01:16',	'2024-06-06 05:01:16',	NULL,	'2024-06-05 05:01:16',	'2024-06-05 05:01:16',	NULL),
(81,	'1718687692804',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"Thick Frame Full Rim Square Sunglasses\", \"product_price\": 749, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 71, \"variant_id\": \"91\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 799.5, \"thumbnail_url\": null}]',	1,	799.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 05:27:40',	'2024-06-06 05:27:40',	'2024-06-06 05:27:40',	'2024-06-06 05:27:40',	NULL,	'2024-06-05 05:27:40',	'2024-06-05 05:27:40',	NULL),
(82,	'1724796777678',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 20, \"variant_id\": \"24\", \"variant_name\": \"Thick Frame Full Rim Square Sunglasses\", \"product_price\": 749, \"thumbnail_url\": \"1715836833007-DSC_-35png.png\"}, {\"quantity\": 1, \"is_student\": 0, \"product_id\": 71, \"variant_id\": \"91\", \"variant_name\": \"Yellow Mirror CR Lens Sunglasses\", \"product_price\": 799.5, \"thumbnail_url\": null}]',	1,	799.50,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 05:41:44',	'2024-06-06 05:41:44',	'2024-06-06 05:41:44',	'2024-06-06 05:41:44',	NULL,	'2024-06-05 05:41:44',	'2024-06-05 05:41:44',	NULL),
(83,	'1719564890664',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 24, \"variant_id\": \"28\", \"variant_name\": \"Dollger Night Vision Sunglasses\", \"product_price\": 780, \"thumbnail_url\": null}]',	1,	780.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 06:39:08',	'2024-06-06 06:39:08',	'2024-06-06 06:39:08',	'2024-06-06 06:39:08',	NULL,	'2024-06-05 06:39:08',	'2024-06-05 06:39:08',	NULL),
(84,	'1720638310617',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 24, \"variant_id\": \"28\", \"variant_name\": \"Dollger Night Vision Sunglasses\", \"product_price\": 780, \"thumbnail_url\": null}]',	1,	780.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 06:39:50',	'2024-06-06 06:39:50',	'2024-06-06 06:39:50',	'2024-06-06 06:39:50',	NULL,	'2024-06-05 06:39:50',	'2024-06-05 06:39:50',	NULL),
(85,	'1723691630506',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 24, \"variant_id\": \"28\", \"variant_name\": \"Dollger Night Vision Sunglasses\", \"product_price\": 780, \"thumbnail_url\": null}]',	1,	780.00,	'IN',	97.06,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 06:42:01',	'2024-06-06 06:42:01',	'2024-06-06 06:42:01',	'2024-06-06 06:42:01',	NULL,	'2024-06-05 06:42:01',	'2024-06-05 06:42:01',	NULL),
(86,	'1724970802597',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 24, \"variant_id\": \"28\", \"variant_name\": \"Dollger Night Vision Sunglasses\", \"product_price\": 780, \"thumbnail_url\": null}]',	1,	780.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 06:53:07',	'2024-06-06 06:53:07',	'2024-06-06 06:53:07',	'2024-06-06 06:53:07',	NULL,	'2024-06-05 06:53:07',	'2024-06-05 10:40:36',	NULL),
(87,	'1722628422707',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 35, \"variant_id\": \"39\", \"variant_name\": \"Retro Small Oval Yellow Lens Sunglasses\", \"product_price\": 870, \"thumbnail_url\": \"1715837222561-DSC_-80png.png\"}]',	1,	776.39,	'IN',	66.08,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 07:26:44',	'2024-06-06 07:26:44',	'2024-06-06 07:26:44',	'2024-06-06 07:26:44',	NULL,	'2024-06-05 07:26:44',	'2024-06-05 08:00:00',	NULL),
(88,	'1727461288886',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 35, \"variant_id\": \"39\", \"variant_name\": \"Retro Small Oval Yellow Lens Sunglasses\", \"product_price\": 870, \"thumbnail_url\": \"1715837222561-DSC_-80png.png\"}]',	1,	776.39,	'IN',	66.08,	NULL,	'Debit Card/Credit Card',	'failed',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 07:31:36',	'2024-06-06 07:31:36',	'2024-06-06 07:31:36',	'2024-06-06 07:31:36',	NULL,	'2024-06-05 07:31:36',	'2024-06-05 08:30:00',	NULL),
(89,	'1718294227885',	2,	0,	6,	'[{\"quantity\": 2, \"is_student\": 0, \"product_id\": 35, \"variant_id\": \"39\", \"variant_name\": \"Retro Small Oval Yellow Lens Sunglasses\", \"product_price\": 870, \"thumbnail_url\": \"1715837222561-DSC_-80png.png\"}]',	1,	776.39,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'delivered',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182390944\\\",\\\"created_at\\\":\\\"2024-06-05T13:01:55+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1718294227885\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":842,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-05T13:01:55+05:30\\\",\\\"order_id\\\":\\\"867c06a4-37b7-4356-ae48-1ebddc7159fb\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_i1WWS68Am7rtskDrggtaw52GtYGyOB6LgFI_lRwNoL9JMFgk8gbs2gSZB0248jq43JQdBWBpHfddnHPGPtBHRIvbB0RV1QGqtfKxkmmNAuGX\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-05 07:31:54',	'2024-06-05 10:33:11',	'2024-06-05 10:16:31',	'2024-06-05 10:18:51',	NULL,	'2024-06-05 07:31:54',	'2024-06-05 10:33:11',	'867c06a4-37b7-4356-ae48-1ebddc7159fb'),
(90,	'1725830813368',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 72, \"variant_id\": \"92\", \"variant_name\": \"Men\'s Navigator Glasses\", \"product_price\": 849.5, \"thumbnail_url\": null}]',	3,	375.67,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'delivered',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182399038\\\",\\\"created_at\\\":\\\"2024-06-05T16:51:44+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1725830813368\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"8787878878\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":442,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-05T16:51:44+05:30\\\",\\\"order_id\\\":\\\"93af5a0c-a42a-46f4-8a1f-49fdb87e0b99\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_B4Xe9e5BSwmBIwvbeAdzuqN4rnciRrphzuXhNS3nAMFKJnDlVJsf5LowM_KTfIRWmyCaK-uWm-NaQNPx1g_cg7u61uanXivQYayryGskKHQB\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-05 11:21:17',	'2024-06-05 11:24:21',	'2024-06-05 11:23:15',	'2024-06-05 11:23:48',	NULL,	'2024-06-05 11:21:17',	'2024-06-05 11:24:21',	'93af5a0c-a42a-46f4-8a1f-49fdb87e0b99'),
(91,	'1727540587174',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 35, \"variant_id\": \"39\", \"variant_name\": \"Retro Small Oval Yellow Lens Sunglasses\", \"product_price\": 870, \"thumbnail_url\": \"1715837222561-DSC_-80png.png\"}]',	NULL,	870.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'cancelled',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 11:25:04',	'2024-06-06 11:25:04',	'2024-06-06 11:25:04',	'2024-06-06 11:25:04',	NULL,	'2024-06-05 11:25:04',	'2024-06-05 11:25:14',	NULL),
(92,	'1718315633039',	2,	0,	2,	'[{\"quantity\": 5, \"is_student\": 0, \"product_id\": 25, \"variant_id\": \"29\", \"variant_name\": \"Cat Eye Transparent Frame Sunglasses\", \"product_price\": 756, \"thumbnail_url\": null}]',	NULL,	3780.00,	'IN',	186.26,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-05 12:58:05',	'2024-06-06 12:58:05',	'2024-06-06 12:58:05',	'2024-06-06 12:58:05',	NULL,	'2024-06-05 12:58:05',	'2024-06-05 12:58:05',	NULL),
(93,	'1726566824429',	2,	0,	6,	'[{\"quantity\": 5, \"is_student\": 0, \"product_id\": 25, \"variant_id\": \"29\", \"variant_name\": \"Cat Eye Transparent Frame Sunglasses\", \"product_price\": 756, \"thumbnail_url\": null}]',	NULL,	3780.00,	'IN',	155.29,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 05:55:28',	'2024-06-07 05:55:28',	'2024-06-07 05:55:28',	'2024-06-07 05:55:28',	NULL,	'2024-06-06 05:55:28',	'2024-06-06 05:55:28',	NULL),
(94,	'1726824201148',	2,	0,	6,	'[{\"quantity\": 3, \"is_student\": 0, \"product_id\": 25, \"variant_id\": \"29\", \"variant_name\": \"Cat Eye Transparent Frame Sunglasses\", \"product_price\": 756, \"thumbnail_url\": null}]',	NULL,	2268.00,	'IN',	109.28,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 05:57:43',	'2024-06-07 05:57:43',	'2024-06-07 05:57:43',	'2024-06-07 05:57:43',	NULL,	'2024-06-06 05:57:43',	'2024-06-06 05:57:43',	NULL),
(95,	'1723313458683',	2,	0,	6,	'[{\"quantity\": 9, \"is_student\": 0, \"product_id\": 25, \"variant_id\": \"29\", \"variant_name\": \"Cat Eye Transparent Frame Sunglasses\", \"product_price\": 756, \"thumbnail_url\": null}]',	NULL,	6804.00,	'IN',	226.65,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 05:59:31',	'2024-06-07 05:59:31',	'2024-06-07 05:59:31',	'2024-06-07 05:59:31',	NULL,	'2024-06-06 05:59:31',	'2024-06-06 05:59:31',	NULL),
(96,	'1725659963537',	2,	0,	6,	'[{\"quantity\": 11, \"is_student\": 0, \"product_id\": 25, \"variant_id\": \"29\", \"variant_name\": \"Cat Eye Transparent Frame Sunglasses\", \"product_price\": 756, \"thumbnail_url\": null}]',	1,	7560.00,	'IN',	252.01,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 06:01:28',	'2024-06-07 06:01:28',	'2024-06-07 06:01:28',	'2024-06-07 06:01:28',	NULL,	'2024-06-06 06:01:28',	'2024-06-06 06:01:28',	NULL),
(97,	'1726269904733',	2,	0,	6,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 28, \"variant_id\": \"32\", \"variant_name\": \"Multicolor Full-Rim Cat Eye Glasses\", \"product_price\": 616, \"thumbnail_url\": \"1715682064000-Multicolor Full-Rim Cat Eye Glasses 4.png\"}]',	NULL,	616.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 09:49:31',	'2024-06-07 09:49:31',	'2024-06-07 09:49:31',	'2024-06-07 09:49:31',	NULL,	'2024-06-06 09:49:31',	'2024-06-06 09:49:31',	NULL),
(98,	'1721345218725',	41,	0,	12,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 44, \"variant_id\": \"50\", \"variant_name\": \"Navigator Metal Frame Sunglasses\", \"product_price\": 1149, \"thumbnail_url\": \"1715837017306-15.png\"}]',	NULL,	1149.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 09:51:04',	'2024-06-07 09:51:04',	'2024-06-07 09:51:04',	'2024-06-07 09:51:04',	NULL,	'2024-06-06 09:51:04',	'2024-06-06 09:51:04',	NULL),
(99,	'1721924569207',	41,	0,	12,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 30, \"variant_id\": \"34\", \"variant_name\": \"Aviator Metal Sunglasses\", \"product_price\": 850.5, \"thumbnail_url\": \"1715840164402-DSC_-95png.png\"}]',	NULL,	758.84,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'delivered',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182418041\\\",\\\"created_at\\\":\\\"2024-06-06T15:31:04+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1721924569207\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":825,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-06T15:31:04+05:30\\\",\\\"order_id\\\":\\\"ee22bcd7-57a3-4987-8785-6093d9fadef0\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_CYMkZXMm4NBJY0h2_I1rYvlG4SJq-fwRmZT9b-VwZ7oAto5SMQQaYYe-E5Yy_oxnmrjqv4aLyJyrq4M4N2RO8EQGgT9RA68DFRoy2R1B5ZxA\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-06 10:01:02',	'2024-06-06 10:12:40',	'2024-06-06 10:06:47',	'2024-06-06 10:10:36',	NULL,	'2024-06-06 10:01:02',	'2024-06-06 10:12:39',	'ee22bcd7-57a3-4987-8785-6093d9fadef0'),
(100,	'1726207395119',	41,	0,	12,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 42, \"variant_id\": \"48\", \"variant_name\": \"Yellow Full Rim Frame Square Glasses\", \"product_price\": 995, \"thumbnail_url\": null}]',	NULL,	995.00,	'IN',	107.38,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 10:30:29',	'2024-06-07 10:30:29',	'2024-06-07 10:30:29',	'2024-06-07 10:30:29',	NULL,	'2024-06-06 10:30:29',	'2024-06-06 10:30:29',	NULL),
(101,	'1719281515407',	41,	0,	12,	'[{\"quantity\": 1, \"is_student\": 0, \"product_id\": 42, \"variant_id\": \"48\", \"variant_name\": \"Yellow Full Rim Frame Square Glasses\", \"product_price\": 995, \"thumbnail_url\": null}]',	NULL,	888.89,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182418566\\\",\\\"created_at\\\":\\\"2024-06-06T16:01:53+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1719281515407\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":955,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-06T16:01:53+05:30\\\",\\\"order_id\\\":\\\"81763bb6-3366-4adb-a6be-08de09099735\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_hsZCcnd-wBK3IofaV58ssfrn_Nl1-lbcv2izNiiyCff02DPztMYl2CCrkghE5VDgkNVWu0tBkG742KRW3FQKb5EPpRYBsD8Cj_MV3fMTOfVe\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-06 10:31:51',	'2024-06-07 10:31:51',	'2024-06-07 10:31:51',	'2024-06-07 10:31:51',	NULL,	'2024-06-06 10:31:51',	'2024-06-06 10:32:14',	'81763bb6-3366-4adb-a6be-08de09099735'),
(102,	'1726253147316',	41,	0,	12,	'[{\"quantity\": 3, \"is_student\": 0, \"product_id\": 44, \"variant_id\": \"50\", \"variant_name\": \"Navigator Metal Frame Sunglasses\", \"product_price\": 1149, \"thumbnail_url\": \"1715837017306-15.png\"}]',	3,	1723.50,	'IN',	147.43,	NULL,	'Cash on Delivery',	'pending',	'new',	NULL,	NULL,	NULL,	NULL,	'2024-06-06 10:33:59',	'2024-06-07 10:33:59',	'2024-06-07 10:33:59',	'2024-06-07 10:33:59',	NULL,	'2024-06-06 10:33:59',	'2024-06-06 10:33:59',	NULL),
(103,	'1721309093586',	41,	0,	12,	'[{\"quantity\": 5, \"is_student\": 0, \"product_id\": 44, \"variant_id\": \"50\", \"variant_name\": \"Navigator Metal Frame Sunglasses\", \"product_price\": 1149, \"thumbnail_url\": \"1715837017306-15.png\"}]',	1,	4129.79,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182418656\\\",\\\"created_at\\\":\\\"2024-06-06T16:05:36+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1721309093586\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":4196,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-06T16:05:36+05:30\\\",\\\"order_id\\\":\\\"544ac9b5-9e75-4977-972d-9f9025506d62\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_YKVsms6i2zWxAoFv4-ajFvV8zHETmYfbgU0vSrKSCMDoGh0hNsi_-usx0BbjJEhW-avjaav38P-fuOL_xcW5RtrZ21i_2ifQf4MhACkPcc0Q\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-06 10:35:34',	'2024-06-07 10:35:34',	'2024-06-07 10:35:34',	'2024-06-07 10:35:34',	NULL,	'2024-06-06 10:35:34',	'2024-06-06 10:35:57',	'544ac9b5-9e75-4977-972d-9f9025506d62'),
(104,	'1725183489066',	41,	0,	12,	'[{\"quantity\": 5, \"is_student\": 0, \"product_id\": 44, \"variant_id\": \"50\", \"variant_name\": \"Navigator Metal Frame Sunglasses\", \"product_price\": 1149, \"thumbnail_url\": \"1715837017306-15.png\"}]',	1,	4129.79,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182418821\\\",\\\"created_at\\\":\\\"2024-06-06T16:11:50+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1725183489066\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":4196,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-06T16:11:50+05:30\\\",\\\"order_id\\\":\\\"a2726bb4-150d-4d20-91dc-5686bdaf023c\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_gmMKfXDRdi-rZqp0j9dMdWQmEoJSE4TatWriVd28DHyw9LUJ3hGnjACM87SxmSDIokEfUkduhqHrKglILxbuvUOL6Hb4RRg9ochC00MyRXam\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-06 10:41:48',	'2024-06-07 10:41:48',	'2024-06-07 10:41:48',	'2024-06-07 10:41:48',	NULL,	'2024-06-06 10:41:48',	'2024-06-06 10:42:09',	'a2726bb4-150d-4d20-91dc-5686bdaf023c'),
(105,	'1727437769446',	41,	0,	12,	'[{\"quantity\": 5, \"is_student\": 0, \"product_id\": 44, \"variant_id\": \"50\", \"variant_name\": \"Navigator Metal Frame Sunglasses\", \"product_price\": 1149, \"thumbnail_url\": \"1715837017306-15.png\"}]',	1,	4129.79,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182418882\\\",\\\"created_at\\\":\\\"2024-06-06T16:14:31+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1727437769446\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":4196,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-06T16:14:31+05:30\\\",\\\"order_id\\\":\\\"74e3485a-3667-4473-9c82-394af3250d1c\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_ZiH4DBikwFPIN-kSBc5jC7ORPFcQDceuluNMHbLsG79xc0-EiILZWzSm1HWKtR8hNE2KNrgdWkqpXoVQ2IJP424QjEjZxQWfID3Wr2D4rSET\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-06 10:44:29',	'2024-06-07 10:44:29',	'2024-06-07 10:44:29',	'2024-06-07 10:44:29',	NULL,	'2024-06-06 10:44:29',	'2024-06-06 10:44:54',	'74e3485a-3667-4473-9c82-394af3250d1c'),
(106,	'1723644799166',	41,	0,	12,	'[{\"quantity\": 5, \"is_student\": 0, \"product_id\": 44, \"variant_id\": \"50\", \"variant_name\": \"Navigator Metal Frame Sunglasses\", \"product_price\": 1149, \"thumbnail_url\": \"1715837017306-15.png\"}]',	1,	4129.79,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'new',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182418906\\\",\\\"created_at\\\":\\\"2024-06-06T16:15:37+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1723644799166\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":4196,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-06T16:15:37+05:30\\\",\\\"order_id\\\":\\\"be3b73fc-309e-4adb-9c3a-27f8e67476c6\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_aIIOK_8tOHiQ49KXKzaclCqZ6BWqh9eQDefEgFzDAJQvoGA8yxlCKu_46td4SlwQqEgyRDwvm3fccAjLPTno_yEU1AjVTySV8qyl-P75wloE\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-06 10:45:35',	'2024-06-07 10:45:35',	'2024-06-07 10:45:35',	'2024-06-07 10:45:35',	NULL,	'2024-06-06 10:45:35',	'2024-06-06 10:45:59',	'be3b73fc-309e-4adb-9c3a-27f8e67476c6'),
(107,	'1726468134750',	41,	0,	12,	'[{\"quantity\": 5, \"is_student\": 0, \"product_id\": 44, \"variant_id\": \"50\", \"variant_name\": \"Navigator Metal Frame Sunglasses\", \"product_price\": 1149, \"thumbnail_url\": \"1715837017306-15.png\"}]',	1,	4129.79,	'IN',	66.08,	'cashfree',	'Debit Card/Credit Card',	'complete',	'delivered',	'card data',	'\"{\\\"cart_details\\\":null,\\\"cf_order_id\\\":\\\"2182418923\\\",\\\"created_at\\\":\\\"2024-06-06T16:17:12+05:30\\\",\\\"customer_details\\\":{\\\"customer_id\\\":\\\"order-1726468134750\\\",\\\"customer_name\\\":null,\\\"customer_email\\\":null,\\\"customer_phone\\\":\\\"9999999999\\\",\\\"customer_uid\\\":null},\\\"entity\\\":\\\"order\\\",\\\"order_amount\\\":4196,\\\"order_currency\\\":\\\"INR\\\",\\\"order_expiry_time\\\":\\\"2024-07-06T16:17:12+05:30\\\",\\\"order_id\\\":\\\"797e18a7-7e92-465b-87c6-b78b86a9fb98\\\",\\\"order_meta\\\":{\\\"return_url\\\":\\\"http://localhost:3000/redirect?order_id={order_id}\\\",\\\"notify_url\\\":null,\\\"payment_methods\\\":null},\\\"order_note\\\":null,\\\"order_splits\\\":[],\\\"order_status\\\":\\\"ACTIVE\\\",\\\"order_tags\\\":null,\\\"payment_session_id\\\":\\\"session_b2WS5FY0Qs084tyCdBSQf7YDnt8Gy9_i5eyGUF2k66ntUeOeEw2Wkp99DxjaCfuW57bUcCaczsn3AdgccBNQ2dRdQy63nNVTv79clUpGvEMC\\\",\\\"terminal_data\\\":null}\"',	NULL,	NULL,	'2024-06-06 10:47:10',	'2024-06-07 10:07:52',	'2024-06-06 10:57:42',	'2024-06-06 11:06:40',	NULL,	'2024-06-06 10:47:10',	'2024-06-07 10:07:51',	'797e18a7-7e92-465b-87c6-b78b86a9fb98');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_in_menu` enum('yes','no') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `meta_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `pages_sub_sections`;
CREATE TABLE `pages_sub_sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position` int NOT NULL,
  `page_id` int NOT NULL,
  `heading_one` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `heading_two` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `paragraph` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `images` json DEFAULT NULL,
  `button` json DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `payment_options`;
CREATE TABLE `payment_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_options` json NOT NULL,
  `country` varchar(255) NOT NULL,
  `zip_codes` json DEFAULT NULL,
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `payment_options` (`id`, `payment_options`, `country`, `zip_codes`, `created_at`, `updated_at`) VALUES
(1,	'[{\"id\": 1, \"option\": \"Cash on Delivery\", \"description\": \"Pay with cash upon delivery\"}, {\"id\": 2, \"option\": \"Debit Card/Credit Card\", \"description\": \"Pay with Debit Card/Credit Card\"}]',	'IN',	'[\"110053\", \"09876\"]',	'2024-04-23 14:28:52',	'2024-04-23 14:20:50');

DROP TABLE IF EXISTS `permission_modules`;
CREATE TABLE `permission_modules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontend_routes` json DEFAULT NULL,
  `backend_routes` json DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `permission_modules` (`id`, `name`, `frontend_routes`, `backend_routes`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1,	'Get Dashboard Data',	'[\"93\"]',	'[\"6\", \"7\", \"8\", \"9\", \"10\", \"11\", \"12\"]',	'active',	'2024-04-25 09:58:05',	'2024-04-25 09:58:05',	'2024-04-25 10:01:08'),
(2,	'Manage Category',	'[94]',	'[13, 14, 15, 16, 17, 18, 19]',	'active',	'2024-04-25 10:01:53',	'2024-04-25 10:01:53',	NULL),
(3,	'Get Category',	'[\"94\"]',	'[\"17\", \"19\"]',	'active',	'2024-04-25 11:13:16',	'2024-04-25 11:13:16',	NULL),
(4,	'Manage Products',	'[95]',	'[20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41]',	'active',	'2024-04-25 11:26:23',	'2024-04-25 11:26:23',	NULL),
(5,	'Get Products',	'[\"95\"]',	'[\"29\", \"30\"]',	'active',	'2024-04-25 11:27:17',	'2024-04-25 11:27:17',	NULL),
(6,	'Show DashBoard',	'[93]',	'[6, 7, 8, 9, 10, 11, 12, 52, 51]',	'active',	'2024-04-27 04:43:51',	'2024-04-27 04:43:51',	NULL),
(7,	'Manage Zipcodes',	'[\"99\"]',	'[\"42\", \"43\", \"44\", \"45\"]',	'active',	'2024-04-27 04:47:40',	'2024-04-27 04:47:40',	NULL),
(8,	'Get Zipcodes',	'[\"99\"]',	'[\"44\"]',	'active',	'2024-04-27 04:48:12',	'2024-04-27 04:48:12',	NULL),
(9,	'Manage Orders',	'[\"103\"]',	'[\"46\", \"47\", \"49\", \"50\", \"48\"]',	'active',	'2024-04-27 04:49:42',	'2024-04-27 04:49:42',	NULL),
(10,	'Get Orders',	'[\"103\"]',	'[\"49\", \"50\"]',	'active',	'2024-04-27 04:50:09',	'2024-04-27 04:50:09',	NULL),
(11,	'Manage Order Delivery Data',	'[\"100\"]',	'[\"55\", \"54\", \"53\"]',	'active',	'2024-04-27 04:50:59',	'2024-04-27 04:50:59',	NULL),
(12,	'Get Order Delivery Data',	'[\"100\"]',	'[\"54\"]',	'active',	'2024-04-27 04:51:43',	'2024-04-27 04:51:43',	NULL),
(13,	'Manage Student Delivery Data',	'[\"101\"]',	'[\"56\", \"57\", \"58\"]',	'active',	'2024-04-27 04:52:22',	'2024-04-27 04:52:22',	NULL),
(14,	'Get Student Delivery Data',	'[\"101\"]',	'[\"57\"]',	'active',	'2024-04-27 05:18:01',	'2024-04-27 05:18:01',	NULL),
(15,	'Manage Coupons',	'[\"102\"]',	'[\"17\", \"59\", \"60\", \"61\", \"62\", \"63\", \"64\"]',	'active',	'2024-04-27 05:19:41',	'2024-04-27 05:19:41',	NULL),
(16,	'Get All coupons',	'[\"102\"]',	'[\"17\", \"61\"]',	'active',	'2024-04-27 05:20:38',	'2024-04-27 05:20:38',	NULL),
(17,	'Manage Inner Ui Sections',	'[\"104\"]',	'[\"65\", \"66\", \"67\", \"68\"]',	'active',	'2024-04-27 05:21:45',	'2024-04-27 05:21:45',	NULL),
(18,	'Get Ui inner Sections Data',	'[\"104\"]',	'[\"65\"]',	'active',	'2024-04-27 05:22:33',	'2024-04-27 05:22:33',	NULL),
(19,	'Manage Ui sections',	'[\"105\"]',	'[\"69\", \"70\", \"87\", \"88\"]',	'active',	'2024-04-27 05:23:50',	'2024-04-27 05:23:50',	NULL),
(20,	'Get Ui Section',	'[\"105\"]',	'[\"69\", \"88\"]',	'active',	'2024-04-27 05:25:03',	'2024-04-27 05:25:03',	NULL),
(21,	'Manage Beautiful EyeWear Collection',	'[\"106\"]',	'[\"71\", \"72\", \"73\"]',	'active',	'2024-04-27 05:26:57',	'2024-04-27 05:26:57',	NULL),
(22,	'Get BeautiFull Eyewear Collection',	'[\"106\"]',	'[\"73\"]',	'active',	'2024-04-27 05:28:13',	'2024-04-27 05:28:13',	NULL),
(23,	'Manage Frame Data',	'[\"107\"]',	'[\"74\", \"75\"]',	'active',	'2024-04-27 05:28:48',	'2024-04-27 05:28:48',	NULL),
(24,	'Get Frame Data',	'[\"107\"]',	'[\"75\"]',	'active',	'2024-04-27 05:29:11',	'2024-04-27 05:29:11',	NULL),
(25,	'Manage Best Seller & Fashion trends',	'[\"108\"]',	'[\"30\", \"76\", \"77\", \"78\"]',	'active',	'2024-04-27 05:30:23',	'2024-04-27 05:30:23',	NULL),
(26,	'Get Best Seller & Fashion Trend',	'[\"108\"]',	'[\"77\"]',	'active',	'2024-04-27 05:32:49',	'2024-04-27 05:32:49',	NULL),
(27,	'Manage SEO data',	'[\"109\"]',	'[\"30\", \"38\", \"39\", \"40\", \"41\"]',	'active',	'2024-04-27 05:35:43',	'2024-04-27 05:35:43',	NULL),
(28,	'Get SEO data',	'[\"109\"]',	'[\"39\"]',	'active',	'2024-04-27 05:36:23',	'2024-04-27 05:36:23',	NULL),
(29,	'Get Subscribed Users',	'[\"110\"]',	'[\"79\"]',	'active',	'2024-04-27 05:37:49',	'2024-04-27 05:37:49',	NULL);

DROP TABLE IF EXISTS `product_availability`;
CREATE TABLE `product_availability` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'IN',
  `currency_symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `country` varchar(100) NOT NULL DEFAULT 'india',
  `zipcodes` json DEFAULT NULL,
  `tax_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tax_value` int DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `product_availability` (`id`, `country_code`, `currency_symbol`, `country`, `zipcodes`, `tax_name`, `tax_value`, `status`, `created_at`, `updated_at`) VALUES
(1,	'IN',	'₹',	'India',	'[\"201301\", \"110053\", \"110032\", \"110094\", \"110025\", \"110076\", \"201203\", \"110096\", \"121101\"]',	'GST',	18,	'active',	'2024-05-11 07:08:50',	'2024-04-22 13:26:25');

DROP TABLE IF EXISTS `product_color`;
CREATE TABLE `product_color` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `product_descriptions`;
CREATE TABLE `product_descriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `product_images`;
CREATE TABLE `product_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `variant_id` int NOT NULL,
  `images` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `variant_id` (`variant_id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_images_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `product_images` (`id`, `product_id`, `variant_id`, `images`, `created_at`, `updated_at`) VALUES
(1,	1,	1,	'[\"1715338130028-1.png\", \"1715338130068-3.png\"]',	'2024-05-20 07:29:10',	'2024-05-20 07:29:10'),
(2,	4,	4,	'[\"1714060839269-1713793573585-1706591994550-spax.webp\", \"1714060839284-1713793573585-1710425198204-pic25.jpg\", \"1714060839502-1713793629433-1705327571877-image9.png\"]',	'2024-04-25 16:00:39',	'2024-04-25 16:00:39'),
(3,	5,	5,	'[\"1714222521372-future.webp\", \"1714222521384-our mission.webp\"]',	'2024-04-27 12:55:21',	'2024-04-27 12:55:21'),
(4,	5,	6,	'[\"1714222810465-img1.jpg\", \"1714222810465-img2.jpg\", \"1714222810477-img3.jpg\", \"1714222810604-img4.jpg\"]',	'2024-04-27 13:00:10',	'2024-04-27 13:00:10'),
(5,	7,	8,	'[\"1715586054373-DSC_-55g.png\"]',	'2024-05-13 07:40:54',	'2024-05-13 07:40:54'),
(6,	8,	10,	'[\"1714389659668-1.jpg\", \"1714389660872-2.jpg\", \"1714389661397-3.jpg\", \"1714389661960-4.jpg\"]',	'2024-04-29 11:21:02',	'2024-04-29 11:21:02'),
(7,	9,	11,	'[\"1714391245110-1.jpg\", \"1714391246453-2.jpg\", \"1714391246909-3.jpg\", \"1714391247502-4.jpg\"]',	'2024-04-29 11:47:28',	'2024-04-29 11:47:28'),
(8,	10,	12,	'[\"1715335776621-DSC_-29png.png\", \"1715680970638-Blue Shade Stylish Square 1.png\", \"1715680970939-Blue Shade Stylish Square 2.png\", \"1715681004186-Blue Shade Stylish Square 4.png\"]',	'2024-05-14 10:03:24',	'2024-05-14 10:03:24'),
(9,	11,	13,	'[\"1715337317330-DSC_41g.png\", \"1715337317371-DSC_42g.png\", \"1715337317392-DSC_43g.png\"]',	'2024-05-10 10:35:21',	'2024-05-10 10:35:21'),
(10,	12,	14,	'[\"1714459594071-frame-you.webp\"]',	'2024-04-30 06:46:34',	'2024-04-30 06:46:34'),
(11,	14,	17,	'[\"1714730880043-DSC_0103.JPG\", \"1714732318684-123.png\", \"1714733368065-DSC_0076-Recovered.png\", \"1714738838744-new image vuzen.png\"]',	'2024-05-03 12:20:38',	'2024-05-03 12:20:38'),
(12,	17,	20,	'[]',	'2024-05-09 11:18:31',	'2024-05-09 11:18:31'),
(13,	18,	22,	'[\"1715251774573-7.png\"]',	'2024-05-11 09:59:57',	'2024-05-11 09:59:57'),
(14,	16,	19,	'[\"1715252793239-13.png\", \"1715339272926-11.png\", \"1715339272941-12.png\"]',	'2024-05-10 11:08:07',	'2024-05-10 11:08:07'),
(15,	19,	23,	'[\"1715253114770-DSC_-19.png\", \"1715339818892-DSC_-18.png\"]',	'2024-05-10 11:17:01',	'2024-05-10 11:17:01'),
(16,	20,	24,	'[\"1715253788795-DSC_-36png.png\", \"1715334630426-DSC_3.png\", \"1715334630448-DSC_-35png.png\"]',	'2024-05-11 09:57:10',	'2024-05-11 09:57:10'),
(17,	6,	7,	'[\"1715340865171-DSC_20png.png\", \"1715340865193-DSC_21png.png\", \"1715340865225-DSC_22ng.png\", \"1715340865246-DSC_23ng.png\"]',	'2024-05-10 11:34:25',	'2024-05-10 11:34:25'),
(18,	21,	25,	'[\"1715341465545-DSC_-39-png.png\", \"1715341465566-DSC_-42-png.png\"]',	'2024-05-11 10:01:55',	'2024-05-11 10:01:55'),
(19,	13,	16,	'[\"1715344166251-DSC_28ng.png\", \"1715344166283-DSC_29ng.png\", \"1715344166302-DSC_30ng.png\", \"1715344166313-DSC_31ng.png\"]',	'2024-05-10 12:29:26',	'2024-05-10 12:29:26'),
(20,	22,	26,	'[\"1715344587254-DSC_49g.png\", \"1715344587291-DSC_50g.png\", \"1715344587312-DSC_51g.png\"]',	'2024-05-10 12:36:27',	'2024-05-10 12:36:27'),
(21,	23,	27,	'[\"1715345342150-11.png\", \"1715345342192-12.png\", \"1715345342207-13.png\"]',	'2024-05-10 12:49:02',	'2024-05-10 12:49:02'),
(22,	24,	28,	'[\"1715345861961-DSC_41g.png\", \"1715345862003-DSC_42g.png\", \"1715345862024-DSC_43g.png\"]',	'2024-05-10 12:57:42',	'2024-05-10 12:57:42'),
(23,	25,	29,	'[\"1715404985194-DSC_35ng.png\", \"1715675975686-DSC_33ng.png\", \"1715675975951-DSC_-58ng.png\"]',	'2024-05-14 08:39:36',	'2024-05-14 08:39:36'),
(24,	26,	30,	'[\"1715406472506-14.png\", \"1715406489827-DSC_-16.png\", \"1715406489850-DSC_-17.png\", \"1715406497851-DSC_-16.png\"]',	'2024-05-11 05:48:17',	'2024-05-11 05:48:17'),
(25,	27,	31,	'[\"1715409381032-DSC_24ng.png\", \"1715409381061-DSC_26ng.png\", \"1715409381068-DSC_27ng.png\"]',	'2024-05-11 06:39:01',	'2024-05-11 06:39:01'),
(26,	28,	32,	'[\"1715418515917-DSC_52g.png\", \"1715676426212-DSC_-53g.png\", \"1715676426435-DSC_-54g.png\"]',	'2024-05-14 10:18:54',	'2024-05-14 10:18:54'),
(27,	30,	34,	'[\"1715584329158-DSC_-92png.png\", \"1715584329180-DSC_-93png.png\", \"1715584329194-DSC_-94png.png\", \"1715584329200-DSC_-95png.png\"]',	'2024-05-13 07:12:09',	'2024-05-13 07:12:09'),
(28,	31,	35,	'[\"1715584593936-DSC_-72png.png\", \"1715584593948-DSC_-73png.png\", \"1715584593967-DSC_-74png.png\", \"1715584593978-DSC_-75png.png\"]',	'2024-05-13 07:16:33',	'2024-05-13 07:16:33'),
(29,	32,	36,	'[\"1715584837827-DSC_-68g.png\", \"1715584837844-DSC_-69.png\", \"1715584837863-DSC_-70png.png\", \"1715584837875-DSC_-71png.png\"]',	'2024-05-13 07:20:37',	'2024-05-13 07:20:37'),
(30,	33,	37,	'[\"1715585138850-DSC_-84png.png\", \"1715585154207-DSC_-85png.png\", \"1715585154229-DSC_-86png.png\", \"1715585154243-DSC_-87png.png\"]',	'2024-05-13 07:25:54',	'2024-05-13 07:25:54'),
(31,	34,	38,	'[\"1715585803477-DSC_-77png.png\", \"1715585803502-DSC_-78png.png\", \"1715585803517-DSC_-79png.png\"]',	'2024-05-13 07:36:43',	'2024-05-13 07:36:43'),
(32,	35,	39,	'[\"1715586382727-DSC_-80png.png\", \"1715586382755-DSC_-81png.png\", \"1715586382764-DSC_-82png.png\", \"1715586382772-DSC_-83png.png\"]',	'2024-05-13 07:46:22',	'2024-05-13 07:46:22'),
(33,	36,	40,	'[\"1715589337911-DSC_36ng.png\", \"1715589337922-DSC_37ng.png\", \"1715589337946-DSC_38ng.png\", \"1715589337958-DSC_39g.png\"]',	'2024-05-13 08:35:37',	'2024-05-13 08:35:37'),
(34,	21,	41,	'[\"1715589698067-DSC_-32.png\", \"1715589698074-DSC_-33.png\", \"1715589698096-DSC_-34png.png\"]',	'2024-05-13 08:41:38',	'2024-05-13 08:41:38'),
(35,	21,	42,	'[\"1715589920924-DSC_-65ng.png\", \"1715589920950-DSC_-66ng.png\", \"1715589920969-DSC_-67ng.png\"]',	'2024-05-13 08:45:20',	'2024-05-13 08:45:20'),
(36,	14,	18,	'[\"1715590381579-DSC_-32.png\", \"1715590381594-DSC_-33.png\", \"1715590381626-DSC_-34png.png\"]',	'2024-05-13 08:53:01',	'2024-05-13 08:53:01'),
(37,	37,	43,	'[\"1715602872204-DSC_-56g.png\", \"1715602872491-DSC_-57g.png\", \"1715602872794-DSC_-58g.png\", \"1715602872984-DSC_-59g.png\"]',	'2024-05-13 12:21:13',	'2024-05-13 12:21:13'),
(38,	38,	44,	'[\"1715603337904-A.png\", \"1715603338068-B.png\", \"1715603338267-C.png\", \"1715603338381-D.png\"]',	'2024-05-13 12:28:58',	'2024-05-13 12:28:58'),
(39,	39,	45,	'[\"1715603637111-1.png\", \"1715603637382-2.png\", \"1715603637634-4.png\"]',	'2024-05-14 10:15:06',	'2024-05-14 10:15:06'),
(40,	40,	46,	'[\"1715603935108-DSC_12.png\", \"1715603935277-DSC_15png.png\", \"1715603935493-DSC_-20.png\", \"1715603935595-DSC_-21.png\"]',	'2024-05-13 12:38:55',	'2024-05-13 12:38:55'),
(41,	41,	47,	'[\"1715604113090-01.png\", \"1715604113689-02.png\", \"1715604113876-03.png\", \"1715604113998-04.png\"]',	'2024-05-13 12:41:54',	'2024-05-13 12:41:54'),
(42,	42,	48,	'[\"1715604535362-1.png\", \"1715604535648-2.png\", \"1715604535789-3.png\", \"1715604535841-4.png\"]',	'2024-05-13 12:48:55',	'2024-05-13 12:48:55'),
(43,	43,	49,	'[\"1715670166910-17.png\", \"1715670166953-18.png\", \"1715670166965-19.png\", \"1715670166980-20.png\"]',	'2024-05-14 07:02:46',	'2024-05-14 07:02:46'),
(44,	44,	50,	'[\"1715670038564-012.png\", \"1715670038598-15.png\", \"1715670038617-15png.png\"]',	'2024-05-14 08:37:37',	'2024-05-14 08:37:37'),
(45,	45,	51,	'[\"1715675001903-19.png\", \"1715675002086-20.png\", \"1715675002234-21.png\", \"1715675002301-22.png\"]',	'2024-05-14 08:23:22',	'2024-05-14 08:23:22'),
(46,	46,	53,	'[\"1715675259183-18.png\", \"1715675259744-19.png\", \"1715675259921-20.png\", \"1715675260035-21.png\"]',	'2024-05-14 08:27:40',	'2024-05-14 08:27:40'),
(47,	29,	33,	'[\"1715680830893-Women Demo Lens Butterfly Sunglasses 1.png\", \"1715680831270-Women Demo Lens Butterfly Sunglasses 2.png\", \"1715680831400-Women Demo Lens Butterfly Sunglasses 3.png\"]',	'2024-05-14 10:00:31',	'2024-05-14 10:00:31'),
(48,	47,	54,	'[\"1715836590924-03.png\", \"1715836590948-04.png\", \"1715836590957-05.png\", \"1715836590970-06.png\", \"1715836590980-07.png\"]',	'2024-05-16 05:16:30',	'2024-05-16 05:16:30'),
(49,	48,	55,	'[\"1715848671003-03..png\", \"1715848671042-04.png\", \"1715848671057-05.png\", \"1715848671066-06.png\"]',	'2024-05-16 08:37:51',	'2024-05-16 08:37:51'),
(50,	10,	56,	'[\"1715859001604-DSC_6.png\", \"1715859001634-DSC_7.png\", \"1715859001642-DSC_8.png\"]',	'2024-05-16 11:30:01',	'2024-05-16 11:30:01'),
(51,	20,	57,	'[\"1715859268686-DSC_16png.png\", \"1715859268703-DSC_17png.png\", \"1715859268727-DSC_18png.png\", \"1715859268741-DSC_19png.png\"]',	'2024-05-16 11:34:28',	'2024-05-16 11:34:28'),
(52,	20,	58,	'[\"1715859386900-1.png\", \"1715859386936-2.png\", \"1715859386961-3.png\"]',	'2024-05-16 11:36:26',	'2024-05-16 11:36:26'),
(53,	24,	59,	'[\"1715860063659-DSC_-60g.png\", \"1715860064138-DSC_-61g.png\", \"1715860064423-DSC_-62g.png\"]',	'2024-05-16 11:47:44',	'2024-05-16 11:47:44'),
(54,	49,	60,	'[\"1715926282825-03.png\", \"1715926283067-04.png\", \"1715926283180-05.png\", \"1715926283244-06.png\"]',	'2024-05-17 06:11:23',	'2024-05-17 06:11:23'),
(55,	49,	61,	'[\"1715927005189-07.png\", \"1715927005262-08.png\", \"1715927005337-10.png\", \"1715927005436-11.png\"]',	'2024-05-17 06:23:25',	'2024-05-17 06:23:25'),
(56,	50,	62,	'[\"1715928407118-02.png\", \"1715928407260-03.png\", \"1715928407321-04.png\", \"1715928407347-05.png\"]',	'2024-05-17 06:46:47',	'2024-05-17 06:46:47'),
(57,	51,	63,	'[\"1715928946854-03.png\", \"1715928947107-04.png\", \"1715928947226-05.png\", \"1715928947286-06.png\"]',	'2024-05-17 06:55:47',	'2024-05-17 06:55:47'),
(58,	51,	64,	'[\"1715928990218-03.png\", \"1715928990492-04.png\", \"1715928990578-05.png\", \"1715928990628-06.png\"]',	'2024-05-17 06:56:30',	'2024-05-17 06:56:30'),
(59,	47,	65,	'[\"1715929345838-03.png\", \"1715929346104-04.png\", \"1715929346201-05.png\", \"1715929346258-07.png\"]',	'2024-05-17 07:02:26',	'2024-05-17 07:02:26'),
(60,	52,	66,	'[\"1715929673797-03.png\", \"1715929674044-04.png\", \"1715929674113-05.png\", \"1715929674195-06.png\"]',	'2024-05-17 07:07:54',	'2024-05-17 07:07:54'),
(61,	52,	67,	'[\"1715929699380-07.png\", \"1715929896994-07.png\"]',	'2024-05-17 07:11:37',	'2024-05-17 07:11:37'),
(62,	53,	68,	'[\"1715930528981-03.png\", \"1715930529100-04.png\", \"1715930529153-05.png\", \"1715930529181-06.png\"]',	'2024-05-17 07:22:09',	'2024-05-17 07:22:09'),
(63,	54,	69,	'[\"1715932317551-01.png\", \"1715932317835-03.png\", \"1715932317919-05.png\", \"1715932317977-06.png\"]',	'2024-05-17 07:51:58',	'2024-05-17 07:51:58'),
(64,	55,	70,	'[\"1715935489557-01.png\", \"1715935489680-02.png\", \"1715935489726-03.png\", \"1715935489759-06.png\"]',	'2024-05-17 08:44:49',	'2024-05-17 08:44:49'),
(65,	56,	71,	'[\"1715935875273-01.png\", \"1715935875418-02.png\", \"1715935875458-03.png\", \"1715935875522-06png.png\"]',	'2024-05-17 10:53:53',	'2024-05-17 10:53:53'),
(66,	57,	72,	'[\"1715936183202-03.png\", \"1715936183477-04.png\", \"1715936183559-05.png\", \"1715936183621-06.png\"]',	'2024-05-17 08:56:23',	'2024-05-17 08:56:23'),
(67,	58,	73,	'[\"1715937358450-01.png\", \"1715937358720-02.png\", \"1715937358805-03.png\", \"1715937358870-04.png\", \"1715937358944-06.png\", \"1715937358970-07.png\"]',	'2024-05-17 09:15:59',	'2024-05-17 09:15:59'),
(68,	59,	74,	'[\"1715937766888-05.png\", \"1715937767180-06.png\", \"1715937767264-07.png\", \"1715937767326-08.png\"]',	'2024-05-17 09:22:47',	'2024-05-17 09:22:47'),
(69,	59,	75,	'[\"1715937798580-01.png\", \"1715937798842-02.png\", \"1715937798942-03.png\", \"1715937799027-04.png\"]',	'2024-05-17 09:23:19',	'2024-05-17 09:23:19'),
(70,	60,	76,	'[\"1715941380349-03.png\", \"1715941380588-04.png\", \"1715941380656-05.png\", \"1715941380710-06.png\"]',	'2024-05-17 10:23:00',	'2024-05-17 10:23:00'),
(71,	61,	77,	'[\"1715942208867-03.png\", \"1715942208948-04.png\", \"1715942209096-06.png\"]',	'2024-05-20 08:56:57',	'2024-05-20 08:56:57'),
(72,	62,	78,	'[\"1715942872745-15.png\", \"1715942872990-16.png\", \"1715942873065-17.png\", \"1715942873118-19.png\"]',	'2024-05-17 10:47:53',	'2024-05-17 10:47:53'),
(73,	62,	79,	'[\"1715942934513-10.png\", \"1715942934749-11.png\", \"1715942934826-12.png\", \"1715942934924-13.png\", \"1715942934993-14.png\"]',	'2024-05-17 10:48:55',	'2024-05-17 10:48:55'),
(74,	56,	80,	'[\"1715943142083-03.png\", \"1715943142359-04.png\", \"1715943142444-05.png\", \"1715943142496-06.png\"]',	'2024-05-17 10:52:22',	'2024-05-17 10:52:22'),
(75,	63,	81,	'[\"1715943618010-02.png\", \"1715943618133-07.png\", \"1715943618301-08.png\", \"1715943618351-09.png\"]',	'2024-05-17 11:00:18',	'2024-05-17 11:00:18'),
(76,	64,	82,	'[\"1716380002381-1.png\", \"1716380002420-2.png\", \"1716380002442-3.png\", \"1716380002463-DSC_-107ng.png\"]',	'2024-05-22 12:13:22',	'2024-05-22 12:13:22'),
(77,	65,	83,	'[\"1716380360194-18.png\", \"1716380360221-19.png\", \"1716380360232-20.png\", \"1716380360238-21.png\"]',	'2024-05-22 12:19:20',	'2024-05-22 12:19:20'),
(78,	66,	84,	'[\"1716380657739-A.png\", \"1716380657747-B.png\", \"1716380657770-C.png\", \"1716380657783-D.png\"]',	'2024-05-22 12:24:17',	'2024-05-22 12:24:17'),
(79,	67,	85,	'[\"1716380984373-03.png\", \"1716380984411-04.png\", \"1716380984430-05.png\", \"1716380984440-06.png\"]',	'2024-05-22 12:29:44',	'2024-05-22 12:29:44'),
(80,	68,	86,	'[\"1716381397612-10.png\", \"1716381397635-11.png\", \"1716381397645-12.png\", \"1716381397658-13.png\", \"1716381397667-14.png\"]',	'2024-05-22 12:36:37',	'2024-05-22 12:36:37'),
(81,	68,	87,	'[\"1716381440618-15.png\", \"1716381440639-16.png\", \"1716381440648-17.png\", \"1716381440656-19.png\"]',	'2024-05-22 12:37:20',	'2024-05-22 12:37:20'),
(82,	69,	88,	'[\"1716381748586-03.png\", \"1716381748628-04.png\", \"1716381748644-05.png\", \"1716381748664-06.png\", \"1716381748680-07.png\"]',	'2024-05-22 12:42:28',	'2024-05-22 12:42:28'),
(83,	69,	89,	'[\"1716381798100-03.png\", \"1716381798129-04.png\", \"1716381798141-05.png\", \"1716381798149-07.png\"]',	'2024-05-22 12:43:18',	'2024-05-22 12:43:18'),
(84,	70,	90,	'[\"1716382827886-DSC_51g.png\", \"1716382838476-DSC_49g.png\", \"1716382838504-DSC_50g.png\"]',	'2024-05-22 13:00:38',	'2024-05-22 13:00:38'),
(85,	71,	91,	'[\"1716551548636-1.png\", \"1716551548650-2.png\", \"1716551548671-3.png\"]',	'2024-05-24 11:52:28',	'2024-05-24 11:52:28'),
(86,	72,	92,	'[\"1716551884978-DSC_-77png.png\", \"1716551885004-DSC_-78png.png\", \"1716551885020-DSC_-79png.png\"]',	'2024-05-24 11:58:05',	'2024-05-24 11:58:05'),
(87,	73,	93,	'[\"1716552135828-17.png\", \"1716552135856-18.png\", \"1716552135865-19.png\", \"1716552135874-20.png\"]',	'2024-05-24 12:02:15',	'2024-05-24 12:02:15'),
(88,	74,	94,	'[\"1716552397420-DSC_-18.png\", \"1716552397459-DSC_-19.png\"]',	'2024-05-24 12:06:37',	'2024-05-24 12:06:37'),
(89,	75,	95,	'[\"1716552977864-DSC_-56g.png\", \"1716552977878-DSC_-57g.png\", \"1716552977901-DSC_-58g.png\", \"1716552977914-DSC_-59g.png\"]',	'2024-05-24 12:16:17',	'2024-05-24 12:16:17'),
(90,	76,	96,	'[\"1716553368456-02.png\", \"1716553368476-07.png\", \"1716553368514-08.png\", \"1716553368524-09.png\"]',	'2024-05-24 12:22:48',	'2024-05-24 12:22:48'),
(93,	2,	2,	'[]',	'2024-06-04 06:12:15',	'2024-06-04 06:12:15');

DROP TABLE IF EXISTS `product_materials`;
CREATE TABLE `product_materials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `material_name` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `product_id` bigint unsigned DEFAULT NULL,
  `rate` tinyint NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_reviews_user_id_foreign` (`user_id`),
  KEY `product_reviews_product_id_foreign` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `product_variants`;
CREATE TABLE `product_variants` (
  `variant_id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `variant_price_details` json DEFAULT NULL,
  `thumbnail_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `color_id` bigint unsigned DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`variant_id`),
  KEY `product_id` (`product_id`),
  KEY `color_id` (`color_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `product_variants` (`variant_id`, `product_id`, `code`, `variant_price_details`, `thumbnail_url`, `color_id`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	'2413#6d1818',	'[{\"price\": \"1599\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715777476215-JTTH.png',	1,	'active',	'2024-04-22 11:01:03',	'2024-05-20 07:19:46'),
(2,	2,	'5#6d1818',	'[{\"price\": \"500\", \"stock\": 1, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"200\", \"currency_symbol\": \"₹\"}]',	'1717480960602-pic3.jpg',	1,	'active',	'2024-04-24 05:53:48',	'2024-06-04 06:02:41'),
(3,	3,	'4582#6d1818',	'[{\"price\": \"500\", \"stock\": 9, \"status\": \"active\", \"country\": \"India\", \"discount\": \"10\", \"country_code\": \"IN\", \"purchase_price\": \"100\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-04-24 06:54:54',	'2024-05-08 10:47:12'),
(4,	4,	'12333#6d1818',	'[{\"price\": \"899\", \"stock\": 1, \"status\": \"active\", \"country\": \"India\", \"discount\": \"2\", \"country_code\": \"IN\", \"purchase_price\": \"399\", \"currency_symbol\": \"₹\"}]',	'1714060846805-1713793573585-1710425198204-pic25.jpg',	1,	'active',	'2024-04-25 16:00:16',	'2024-05-08 10:59:43'),
(5,	5,	'98765#c32222',	'[{\"price\": \"999\", \"stock\": 97, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"599\", \"currency_symbol\": \"₹\"}]',	'1714222490356-Explore_eyewear_788x380.webp',	2,	'active',	'2024-04-27 12:54:15',	'2024-05-09 06:20:25'),
(6,	5,	'98765#6d1818',	'[{\"price\": \"1098\", \"stock\": 30, \"status\": \"active\", \"country\": \"India\", \"discount\": \"4\", \"country_code\": \"IN\", \"purchase_price\": \"789\", \"currency_symbol\": \"₹\"}]',	'1714222801094-img1.jpg',	1,	'active',	'2024-04-27 12:54:22',	'2024-04-27 13:18:38'),
(7,	6,	'657#6d1818',	'[{\"price\": \"1880\", \"stock\": \"1\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715840194086-DSC_23ng.png',	1,	'active',	'2024-04-29 10:00:25',	'2024-05-21 08:58:46'),
(8,	7,	'678#c32222',	'[{\"price\": \"599\", \"stock\": 8, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	'1714388202016-2.jpg',	2,	'active',	'2024-04-29 10:53:53',	'2024-05-08 10:47:12'),
(9,	7,	'678#6d1818',	'[]',	NULL,	1,	'active',	'2024-04-29 11:09:13',	'2024-04-29 11:09:13'),
(10,	8,	'4558#fae505',	'[{\"price\": \"560\", \"stock\": 187, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	4,	'active',	'2024-04-29 11:19:09',	'2024-05-07 09:09:32'),
(11,	9,	'677#6d1818',	'[{\"price\": \"599\", \"stock\": \"110\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-04-29 11:46:17',	'2024-04-29 11:47:01'),
(12,	10,	'567#532ed6',	'[{\"price\": \"1870\", \"stock\": 0, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715836965836-DSC_-70ng.png',	3,	'active',	'2024-04-29 12:39:33',	'2024-06-04 12:00:38'),
(13,	11,	'478#6d1818',	'[{\"price\": \"460\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"260\", \"currency_symbol\": \"₹\"}]',	'1715337346620-4.jpg',	1,	'active',	'2024-04-30 05:37:52',	'2024-05-10 10:35:46'),
(14,	12,	'510#ffffff',	'[{\"price\": \"666\", \"stock\": \"16\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"450\", \"currency_symbol\": \"₹\"}]',	NULL,	5,	'active',	'2024-04-30 06:46:06',	'2024-04-30 06:54:08'),
(15,	12,	'510#6d1818',	'[{\"price\": \"666\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"450\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-04-30 06:47:57',	'2024-04-30 10:09:51'),
(16,	13,	'222#6d1818',	'[{\"price\": \"1398\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	'1715676790028-DSC_31ng.png',	1,	'active',	'2024-04-30 10:48:22',	'2024-05-20 10:48:35'),
(17,	14,	'67888#c32222',	'[{\"price\": \"600\", \"stock\": 3, \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	2,	'active',	'2024-05-02 06:31:25',	'2024-05-08 12:53:06'),
(18,	14,	'67888#fae505',	'[]',	NULL,	4,	'active',	'2024-05-03 05:17:29',	'2024-05-03 05:17:29'),
(19,	16,	'1#6d1818',	'[{\"price\": \"2011\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715844677324-BGTY.png',	1,	'active',	'2024-05-08 13:08:25',	'2024-05-20 10:54:34'),
(20,	17,	'12255#fae505',	'[{\"price\": \"599\", \"stock\": \"30\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	4,	'active',	'2024-05-09 08:55:14',	'2024-05-09 11:19:47'),
(21,	1,	'WD-FR-SQR-SUN-01#c32222',	'[]',	NULL,	2,	'inactive',	'2024-05-09 10:44:50',	'2024-05-20 07:16:11'),
(22,	18,	'100123#6d1818',	'[{\"price\": \"1500\", \"stock\": \"20\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715421570856-blue lens  (2).png',	1,	'active',	'2024-05-09 10:49:14',	'2024-05-21 09:10:51'),
(23,	19,	'1001234#b76e79',	'[{\"price\": \"2998\", \"stock\": \"5\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	7,	'active',	'2024-05-09 11:10:26',	'2024-05-22 06:44:17'),
(24,	20,	'WH-FR-SSG-01#ffffff',	'[{\"price\": \"1498\", \"stock\": 0, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715836833007-DSC_-35png.png',	5,	'active',	'2024-05-09 11:22:27',	'2024-06-05 05:41:47'),
(25,	21,	'678453#ffffff',	'[{\"price\": \"1650\", \"stock\": \"30\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	'1715844312395-Blue Cut Demo Lens Rectangle Sunglasses HJ.png',	5,	'active',	'2024-05-10 11:43:08',	'2024-05-21 09:32:20'),
(26,	22,	'CAT-FRM-SUN-10#070503',	'[{\"price\": \"1798\", \"stock\": \"30\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-10 12:36:12',	'2024-05-21 06:47:48'),
(27,	23,	'DL-PBT-SUN-21#6d1818',	'[{\"price\": \"799\", \"stock\": \"25\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"450\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-10 12:48:40',	'2024-05-10 12:49:29'),
(28,	24,	'DGR-NV-SUN-11#070503',	'[{\"price\": \"1950\", \"stock\": 8, \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-10 12:57:28',	'2024-06-05 10:40:36'),
(29,	25,	'568766#f4fafc',	'[{\"price\": \"1680\", \"stock\": 12323, \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	9,	'active',	'2024-05-11 05:22:48',	'2024-06-06 06:01:31'),
(30,	26,	'786#070503',	'[{\"price\": \"1840\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715840313220-A.png',	8,	'active',	'2024-05-11 05:47:17',	'2024-05-21 09:40:06'),
(31,	27,	'6789#070503',	'[{\"price\": \"1199\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-11 06:35:59',	'2024-05-11 06:43:46'),
(32,	28,	'6758564#b76e79',	'[{\"price\": \"1540\", \"stock\": 12, \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715682064000-Multicolor Full-Rim Cat Eye Glasses 4.png',	7,	'active',	'2024-05-11 09:08:29',	'2024-06-06 09:49:37'),
(33,	29,	'345375#6d1818',	'[{\"price\": \"499\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"0\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-13 07:07:15',	'2024-05-13 07:07:48'),
(34,	30,	'786980#070503',	'[{\"price\": \"1890\", \"stock\": 11, \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715840164402-DSC_-95png.png',	8,	'active',	'2024-05-13 07:11:52',	'2024-06-06 10:01:02'),
(35,	31,	'98907#070503',	'[{\"price\": \"1310\", \"stock\": 13, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-13 07:16:23',	'2024-06-04 13:01:40'),
(36,	32,	'45467890#ffffff',	'[{\"price\": \"599\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"5\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	5,	'active',	'2024-05-13 07:20:27',	'2024-05-13 07:21:08'),
(37,	33,	'67456889#6d1818',	'[{\"price\": \"1300\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-13 07:25:29',	'2024-05-22 07:24:35'),
(38,	34,	'78675458#070503',	'[{\"price\": \"1699\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-13 07:36:32',	'2024-05-20 12:14:13'),
(39,	35,	'5757960#070503',	'[{\"price\": \"2900\", \"stock\": 6, \"status\": \"active\", \"country\": \"India\", \"discount\": \"70\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715837222561-DSC_-80png.png',	8,	'active',	'2024-05-13 07:46:09',	'2024-06-05 11:25:14'),
(40,	36,	'789879#070503',	'[{\"price\": \"2250\", \"stock\": 11, \"status\": \"active\", \"country\": \"India\", \"discount\": \"65\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-13 08:35:24',	'2024-06-04 12:16:10'),
(41,	21,	'BLU-DL-RGL-SUN-22#f4fafc',	'[{\"price\": \"1650\", \"stock\": \"6\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	9,	'active',	'2024-05-13 08:40:45',	'2024-05-21 09:32:32'),
(42,	21,	'BLU-DL-RGL-SUN-22#323232',	'[{\"price\": \"1650\", \"stock\": \"5\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"400\", \"currency_symbol\": \"₹\"}]',	NULL,	10,	'active',	'2024-05-13 08:45:06',	'2024-05-21 09:32:42'),
(43,	37,	'8978678#070503',	'[{\"price\": \"1870\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715840012210-DSC_-59g.png',	8,	'active',	'2024-05-13 12:20:56',	'2024-05-21 09:53:12'),
(44,	38,	'7234677#f4fafc',	'[{\"price\": \"1520\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715682351519-Crystal Clear.png',	9,	'active',	'2024-05-13 12:28:42',	'2024-05-21 10:07:37'),
(45,	39,	'67578768#6d1818',	'[{\"price\": \"1580\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715682154309-DSC_-110ng.png',	1,	'active',	'2024-05-13 12:33:38',	'2024-05-20 12:56:09'),
(46,	40,	'677989#323232',	'[{\"price\": \"1498\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	10,	'active',	'2024-05-13 12:38:35',	'2024-05-21 08:33:28'),
(47,	41,	'47760964#ffffff',	'[{\"price\": \"1328\", \"stock\": \"15\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	'1715844626403-HJJKJLLL;.png',	5,	'active',	'2024-05-13 12:41:37',	'2024-05-21 10:15:33'),
(48,	42,	'676757#fae505',	'[{\"price\": \"1990\", \"stock\": 11, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	4,	'active',	'2024-05-13 12:48:41',	'2024-06-06 10:31:52'),
(49,	43,	'HR-ML-SUN-38#6d1818',	'[{\"price\": \"2350\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-14 06:55:14',	'2024-05-21 05:27:32'),
(50,	44,	'34746#b87333',	'[{\"price\": \"2298\", \"stock\": 188888868, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715837017306-15.png',	11,	'active',	'2024-05-14 07:00:22',	'2024-06-06 10:47:10'),
(51,	45,	'UVPT-NV-SUN-40#b76e79',	'[{\"price\": \"1510\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715839026683-19.png',	7,	'active',	'2024-05-14 07:07:58',	'2024-05-21 08:47:28'),
(52,	45,	'UVPT-NV-SUN-40#532ed6',	'[]',	NULL,	3,	'active',	'2024-05-14 07:53:06',	'2024-05-14 07:53:06'),
(53,	46,	'96688967#b87333',	'[{\"price\": \"1780\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715839906024-jhh.png',	11,	'active',	'2024-05-14 08:27:26',	'2024-05-21 06:05:38'),
(54,	47,	'767789#b76e79',	'[{\"price\": \"1570\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	'1715844740622-06.png',	7,	'active',	'2024-05-16 05:15:50',	'2024-05-21 12:32:39'),
(55,	48,	'48#ffffff',	'[{\"price\": \"1510\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	'1715848676060-03..png',	5,	'active',	'2024-05-16 08:37:17',	'2024-05-21 12:34:15'),
(56,	10,	'BLU-SQR-FRM-SUN-08#323232',	'[{\"price\": \"1870\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	10,	'active',	'2024-05-16 11:29:24',	'2024-05-20 11:04:46'),
(57,	20,	'WH-FR-SUN-01#532ed6',	'[{\"price\": \"1498\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	3,	'active',	'2024-05-16 11:33:50',	'2024-05-20 11:15:35'),
(58,	20,	'WH-FR-SUN-01#db3333',	'[{\"price\": \"1498\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715859377352-4.png',	6,	'active',	'2024-05-16 11:36:04',	'2024-05-20 11:15:42'),
(59,	24,	'DGR-NV-SUN-11#6d1818',	'[{\"price\": \"1950\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1715860065058-DSC_-63g.png',	1,	'active',	'2024-05-16 11:47:11',	'2024-05-20 11:28:28'),
(60,	49,	'30#532ed6',	'[{\"price\": \"1450\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	3,	'active',	'2024-05-17 06:11:05',	'2024-05-21 12:40:30'),
(61,	49,	'30#d6f0db',	'[{\"price\": \"1450\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	13,	'active',	'2024-05-17 06:22:14',	'2024-05-21 12:40:21'),
(62,	50,	'DK-KDS-SUN-46#ff5f1f',	'[{\"price\": \"998\", \"stock\": \"5\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	14,	'active',	'2024-05-17 06:46:00',	'2024-05-21 10:37:58'),
(63,	51,	'DL-FR-CMT-GLS-42#b76e79',	'[{\"price\": \"1450\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	7,	'active',	'2024-05-17 06:55:17',	'2024-05-21 12:45:29'),
(64,	51,	'DL-FR-CMT-GLS-42#070503',	'[{\"price\": \"1450\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-17 06:56:11',	'2024-05-21 12:45:33'),
(65,	47,	'FR-CAT-CMT-GLS-57#6d1818',	'[{\"price\": \"1570\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-17 07:01:46',	'2024-05-21 12:32:53'),
(66,	52,	'HE-KDS-CMT-GLS-43#532ed6',	'[{\"price\": \"1500\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	3,	'active',	'2024-05-17 07:07:37',	'2024-05-22 07:04:40'),
(67,	52,	'HE-KDS-CMT-GLS-43#db3333',	'[{\"price\": \"1500\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	'1715929882958-07.png',	6,	'active',	'2024-05-17 07:08:06',	'2024-05-22 07:04:47'),
(68,	53,	'HE-MTC-FR-GLS-44#323232',	'[{\"price\": \"1480\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	10,	'active',	'2024-05-17 07:21:53',	'2024-05-21 12:53:05'),
(69,	54,	'679864#fae505',	'[{\"price\": \"998\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	4,	'active',	'2024-05-17 07:51:19',	'2024-05-21 10:39:57'),
(70,	55,	'KDS-CBMT-HGN-SUN-49#070503',	'[{\"price\": \"1240\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715937502984-04.png',	8,	'active',	'2024-05-17 08:44:33',	'2024-05-21 10:49:20'),
(71,	56,	'PRD-FR-SUN-51#532ed6',	'[{\"price\": \"1160\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	3,	'active',	'2024-05-17 08:50:27',	'2024-05-21 10:56:53'),
(72,	57,	'PRD-KDS-SUN-52#532ed6',	'[{\"price\": \"1110\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"248\", \"currency_symbol\": \"₹\"}]',	NULL,	3,	'active',	'2024-05-17 08:56:10',	'2024-05-21 11:23:42'),
(73,	58,	'RD-FR-PRD-SUN-55#a020f0',	'[{\"price\": \"1040\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	15,	'active',	'2024-05-17 09:15:39',	'2024-05-21 11:24:26'),
(74,	59,	'TF-PRD-KDS-SUN-54#070503',	'[{\"price\": \"1180\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-17 09:22:33',	'2024-05-21 11:35:28'),
(75,	59,	'TF-PRD-KDS-SUN-54#db3333',	'[{\"price\": \"1180\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"259\", \"currency_symbol\": \"₹\"}]',	NULL,	6,	'active',	'2024-05-17 09:23:01',	'2024-05-21 11:35:47'),
(76,	60,	'CAT-FR-PRD-SUN-47#070503',	'[{\"price\": \"1250\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-17 10:22:47',	'2024-05-21 11:44:06'),
(77,	61,	'HE-FR-EYE-GLS-58#b76e79',	'[{\"price\": \"1999\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	7,	'active',	'2024-05-17 10:36:31',	'2024-05-20 08:56:10'),
(78,	62,	'KDS-OVL-CMP-GLS-50#532ed6',	'[{\"price\": \"1360\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	3,	'active',	'2024-05-17 10:47:37',	'2024-05-21 12:59:30'),
(79,	62,	'KDS-OVL-CMP-GLS-50#b87333',	'[{\"price\": \"1360\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	11,	'active',	'2024-05-17 10:48:35',	'2024-05-21 12:59:38'),
(80,	56,	'PRD-FR-SUN-51#b76e79',	'[{\"price\": \"1160\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"250\", \"currency_symbol\": \"₹\"}]',	NULL,	7,	'active',	'2024-05-17 10:52:01',	'2024-05-21 10:56:36'),
(81,	63,	'5667788#070503',	'[{\"price\": \"1590\", \"stock\": \"5\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1715943608156-07.png',	8,	'active',	'2024-05-17 10:59:49',	'2024-05-22 04:53:07'),
(82,	64,	'687878669#b87333',	'[{\"price\": \"1500\", \"stock\": 5, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1716439626456-123.png',	11,	'active',	'2024-05-22 12:13:00',	'2024-06-04 12:56:35'),
(83,	65,	'7698734657#b87333',	'[{\"price\": \"1780\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1716441506538-190png.png',	11,	'active',	'2024-05-22 12:19:03',	'2024-05-23 05:18:26'),
(84,	66,	'70346675#d6f0db',	'[{\"price\": \"1520\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1716441474464-67.png',	13,	'active',	'2024-05-22 12:23:58',	'2024-05-23 05:17:54'),
(85,	67,	'46809732433#070503',	'[{\"price\": \"1480\", \"stock\": 10, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-22 12:29:32',	'2024-05-29 12:26:09'),
(86,	68,	'KDS-OVL-CMP-GLS-50#b87333',	'[{\"price\": \"1360\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	11,	'active',	'2024-05-22 12:36:23',	'2024-05-22 12:38:12'),
(87,	68,	'KDS-OVL-CMP-GLS-50#532ed6',	'[{\"price\": \"1360\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	3,	'active',	'2024-05-22 12:36:58',	'2024-05-22 12:38:24'),
(88,	69,	'FR-CAT-CMT-GLS-57#b76e79',	'[{\"price\": \"1570\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	NULL,	7,	'active',	'2024-05-22 12:42:02',	'2024-05-22 12:44:06'),
(89,	69,	'FR-CAT-CMT-GLS-57#6d1818',	'[{\"price\": \"1570\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"300\", \"currency_symbol\": \"₹\"}]',	'1716381788214-07.png',	1,	'active',	'2024-05-22 12:42:56',	'2024-05-22 12:44:21'),
(90,	70,	'CAT-FRM-SUN-10#070503',	'[{\"price\": \"1798\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	'1716441671259-192png.png',	8,	'active',	'2024-05-22 13:00:13',	'2024-05-23 05:21:11'),
(91,	71,	'YLW-CR-MRD-SUN-19#b87333',	'[{\"price\": \"1599\", \"stock\": 6, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	11,	'active',	'2024-05-24 11:52:07',	'2024-06-05 05:41:47'),
(92,	72,	'MN-NV-SUN-28#070503',	'[{\"price\": \"1699\", \"stock\": 3, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-24 11:57:54',	'2024-06-05 11:21:18'),
(93,	73,	'HR-ML-SUN-38#6d1818',	'[{\"price\": \"2350\", \"stock\": 0, \"status\": \"active\", \"country\": \"India\", \"discount\": \"50\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	1,	'active',	'2024-05-24 12:01:57',	'2024-06-04 12:03:58'),
(94,	74,	'WMN-MT-BTFY-SUN-17#b76e79',	'[{\"price\": \"2998\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	7,	'active',	'2024-05-24 12:06:24',	'2024-05-24 12:07:37'),
(95,	75,	'BLK-FR-MTL-GLS-30#070503',	'[{\"price\": \"1870\", \"stock\": \"12\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"55\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-24 12:15:55',	'2024-05-24 12:17:02'),
(96,	76,	'RGL-MT-BL-GLS-53#070503',	'[{\"price\": \"1590\", \"stock\": \"10\", \"status\": \"active\", \"country\": \"India\", \"discount\": \"60\", \"country_code\": \"IN\", \"purchase_price\": \"350\", \"currency_symbol\": \"₹\"}]',	NULL,	8,	'active',	'2024-05-24 12:22:30',	'2024-05-24 12:23:34');

DROP VIEW IF EXISTS `product_view5`;
CREATE TABLE `product_view5` (`id` bigint unsigned, `title` varchar(191), `temple_length` bigint, `bridge_width` bigint, `lens_height` bigint, `lens_width` bigint, `frame_width` bigint, `sku` varchar(20), `slug` varchar(191), `summary` varchar(500), `description` varchar(3000), `size_id` bigint, `weight_group_id` bigint, `product_condition` enum('new','hot'), `gender` json, `model_number` varchar(191), `frame_type_id` bigint, `status` enum('active','inactive'), `shape_id` bigint unsigned, `material_id` bigint unsigned, `thumbnail_img` varchar(255), `created_at` timestamp, `is_student` tinyint, `cat_id` bigint unsigned, `colors` text, `variants` json, `seo_data` json);


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frame_type_id` bigint DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` enum('new','hot') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `gender` json DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `weight_group_id` bigint NOT NULL,
  `is_student` tinyint NOT NULL DEFAULT '0',
  `size_id` bigint NOT NULL,
  `frame_width` bigint DEFAULT NULL,
  `lens_width` bigint DEFAULT NULL,
  `lens_height` bigint DEFAULT NULL,
  `bridge_width` bigint DEFAULT NULL,
  `temple_length` bigint DEFAULT NULL,
  `cat_id` bigint unsigned DEFAULT NULL,
  `thumbnail_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_id` bigint unsigned NOT NULL,
  `shape_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `title`, `sku`, `model_number`, `frame_type_id`, `slug`, `summary`, `description`, `condition`, `gender`, `status`, `weight_group_id`, `is_student`, `size_id`, `frame_width`, `lens_width`, `lens_height`, `bridge_width`, `temple_length`, `cat_id`, `thumbnail_img`, `material_id`, `shape_id`, `created_at`, `updated_at`) VALUES
(1,	'Yellow Mirror CR Lens Sunglasses',	'YLW-CR-MRD-SUN-19',	'',	NULL,	'yellow-mirror-cr-lens-sunglasses',	'Stylish Imported Mirrored Sunglasses,\r\n\r\n100% UV Protection | Mirrored | Polarized,\r\n\r\nLENS COLOR : Mirror Yellow,\r\n \r\nLENS MATERIAL : CR 39 \r\n(Plastic Polymer),\r\n\r\nFRAME MATERIAL : Plastic,\r\n\r\nFashion and stylish design ,\r\n\r\nComfortable Nose Pads Design,\r\n\r\nAnti-slip designed Legs',	'Introducing our bold and contemporary Yellow Mirror CR Lens Sunglasses, the perfect statement accessory for the modern fashionista. Crafted with attention to detail, these sunglasses offer a unique combination of style and functionality. ',	'new',	'[\"1\"]',	'inactive',	1,	0,	1,	136,	51,	42,	19,	145,	1,	'1715591557296-1715251212535-3.png',	1,	1,	'2024-04-22 10:59:48',	'2024-05-24 11:53:50'),
(2,	'test',	'klju-0998k',	'',	NULL,	'test',	'testing so using for dummy',	'testing so using this for dummy',	'new',	'[\"2\"]',	'inactive',	1,	1,	1,	2,	2,	2,	2,	1,	4,	'1713937916751-xnpsbe6y.png',	1,	2,	'2024-04-24 05:51:56',	'2024-05-10 11:32:07'),
(3,	'tutle',	'4582',	'',	NULL,	'tutle',	'rdfyguhjfggfhghjk',	'dfghkjsfdgfdhfg',	'new',	'[\"2\"]',	'inactive',	1,	0,	1,	0,	2,	0,	2,	2,	1,	'1714385276206-3.jpg',	1,	2,	'2024-04-24 06:54:07',	'2024-05-09 11:22:49'),
(4,	'Vuezen Plus',	'12333',	'',	NULL,	'vuezen-plus',	'Vuezen Plus Is The Leading E-Commerce Portal For Eyewear In India.',	'Highly Durable PolyCarbonate Lenses',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	3,	2,	2,	12,	13,	2,	'1714060789572-1713793629433-1705327571877-image9.png',	1,	14,	'2024-04-25 15:59:49',	'2024-05-09 11:23:10'),
(5,	'Rayban',	'98765',	'',	NULL,	'rayban',	'Rayban is a good Product.',	'Rayban is a good Product.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	7,	6,	7,	22,	13,	1,	'1714222404719-Explore_eyewear_788x380.webp',	2,	14,	'2024-04-27 12:53:24',	'2024-05-09 11:23:18'),
(6,	'Black Acetate Sunglasses',	'BLK-ACT-SUN-06',	'VA-06',	1,	'black-acetate-sunglasses',	'Style: Grey Smokey Square Sunglass,\r\n\r\nFrame Type: Full Rim with UV-400 Protection Polarized Lens,\r\n\r\nAcetate Construction: Crafted from high-quality acetate material,\r\n\r\nLens Material, CR Acrylic,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'Black acetate sunglasses are a stylish and classic accessory that combines both fashion and function. Acetate is a durable and lightweight material derived from renewable resources, making it an eco-friendly choice for eyewear. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	140,	52,	44,	16,	147,	2,	'1715421063438-DSC_22ng.png',	3,	20,	'2024-04-29 09:58:44',	'2024-05-30 07:31:21'),
(7,	'Multicolor Full-Rim Frame Sunglasses',	'678',	'',	NULL,	'multicolor-full-rim-frame-sunglasses',	'These multicolor full-rim frame sunglasses are a vibrant and stylish accessory for any sunny day. Crafted with a durable and lightweight material, they offer both fashion and functionality. ',	'These multicolor full-rim frame sunglasses are a vibrant and stylish accessory for any sunny day. Crafted with a durable and lightweight material, they offer both fashion and functionality. The multicolor frame adds a playful and energetic touch to your look, allowing you to express your unique style with ease. The full-rim design provides maximum coverage and protection from the sun\'s rays, while the tinted lenses offer UV protection to keep your eyes safe. Whether you\'re lounging by the pool or strolling through the city streets, these sunglasses are sure to make a statement wherever you go.',	'new',	'[\"2\"]',	'inactive',	1,	0,	2,	10,	1,	1,	5,	6,	2,	'1714387842121-5.jpg',	3,	18,	'2024-04-29 10:50:43',	'2024-05-11 09:04:42'),
(8,	'Black Full Rim Rectangle Metal Frame Sunglasses',	'4558',	'',	NULL,	'black-full-rim-rectangle-metal-frame-sunglasses',	'These black full rim rectangleBlack Full Rim Rectangle Metal Frame Sunglasses metal frame sunglasses exude a classic and timeless appeal, blending sophistication with modern style. Crafted with high-quality metal, the frame offers durability and a sleek aesthetic. ',	'These black full rim rectangle metal frame sunglasses exude a classic and timeless appeal, blending sophistication with modern style. Crafted with high-quality metal, the frame offers durability and a sleek aesthetic. The rectangular lenses provide a balanced look that complements various face shapes, offering both style and functionality. With a black finish, these sunglasses add a touch of understated elegance to any ensemble, making them versatile enough for everyday wear or special occasions.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	127,	120,	100,	4,	148,	2,	'1714389513114-5.jpg',	2,	20,	'2024-04-29 11:18:34',	'2024-05-09 11:26:41'),
(9,	'Black Rectangle Frame Sunglasses',	'677',	'',	NULL,	'black-rectangle-frame-sunglasses',	'These black rectangle frame sunglasses epitomize effortless cool and contemporary style. ',	'These black rectangle frame sunglasses epitomize effortless cool and contemporary style. Crafted with precision, the sleek black frame offers a minimalist yet bold aesthetic that effortlessly complements any outfit. The rectangular lenses exude a modern vibe while providing ample coverage and protection from the sun\'s glare.',	'new',	'[\"2\", \"1\"]',	'inactive',	1,	0,	2,	130,	120,	109,	3,	155,	2,	'1714391156122-5.jpg',	3,	20,	'2024-04-29 11:45:57',	'2024-05-09 11:26:56'),
(10,	'Blue Shade Stylish Square Frame Sunglasses',	'BLU-SQR-FRM-SUN-08',	'A-01',	1,	'blue-shade-stylish-square-frame-sunglasses',	'VUEZEN is dedicated to offering premium, on-trend, and stylish shades or sunglasses. All VUEZEN sunglasses are constructed from premium components. VUEZEN sunglasses are perfect for driving, traveling, shopping, fishing, and making the most of the daylight. These sunglasses are perfect for both men and women to showcase your exceptional and upscale taste. Additionally, the lightweight design of these men\'s and women\'s shades allows for extended usage without feeling weary.',	'These stylish square frame sunglasses with blue shade lenses are the epitome of modern sophistication. Crafted with a chic square frame design, they offer a bold yet timeless look that effortlessly complements any outfit. ',	'new',	'[\"1\"]',	'active',	1,	0,	2,	138,	52,	40,	19,	145,	2,	'1715420945107-DSC_-70ng.png',	2,	15,	'2024-04-29 12:36:54',	'2024-05-30 07:40:47'),
(11,	'Brown Rectangle Plastic Sunglass',	'DGR-NV-SUN-11',	'',	NULL,	'brown-rectangle-plastic-sunglass',	'Yellow or amber tints are typically used in lenses to enhance depth perception and clarity in low-light environments.',	'Dollger Night Vision Glasses offer enhanced visibility and reduced glare during nighttime driving or other low-light conditions. The specialized lenses in these glasses are designed to enhance contrast and minimize glare from oncoming headlights and streetlights. ',	'new',	'[\"2\", \"1\"]',	'inactive',	1,	0,	2,	135,	52,	45,	15,	131,	2,	'1715337298565-4.jpg',	1,	19,	'2024-04-30 05:33:15',	'2024-05-13 10:11:49'),
(12,	'Blue Shade Stylish Square Frame Sunglasses',	'510',	'',	NULL,	'blue-shade-stylish-square-frame-sunglasses',	'These stylish square frame sunglasses with blue shade lenses are the epitome of modern sophistication. ',	'These stylish square frame sunglasses with blue shade lenses are the epitome of modern sophistication. Crafted with a chic square frame design, they offer a bold yet timeless look that effortlessly complements any outfit. The blue shade lenses are more than just a fashion statement; they\'re also highly functional. ',	'new',	'[\"2\"]',	'inactive',	1,	0,	2,	138,	64,	45,	20,	67,	2,	'1714459429559-frame-you.webp',	3,	20,	'2024-04-30 06:43:49',	'2024-05-11 09:40:07'),
(13,	'Brown Tortoise Rectangle Glasses',	'BRN-RGL-GLS-09',	'EP-320',	1,	'brown-tortoise-rectangle-glasses',	'High quality Polycarbonate frame with metal wings,\r\n\r\nTortoise Full Rim glasses made from Polycarbonate which is thinner and lighter than normal plastic, \r\n\r\nScratch coating and block 100% harmful UV rays up to 400 nm and are very lightweight and highly impact resistant.\r\n\r\n',	'These brown tortoise rectangle glasses exude a timeless and sophisticated charm, blending classic design with modern elegance. Crafted with a distinctive tortoise-patterned frame, these sunglasses offer a touch of vintage-inspired style. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	138,	53,	41,	20,	146,	1,	'1714472772605-q1.JPG',	3,	19,	'2024-04-30 10:26:12',	'2024-05-30 07:41:25'),
(14,	'Men\'s Aviator Metal Sunglass',	'798998908vhgygh',	'',	NULL,	'men\'s-aviator-metal-sunglass',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays.',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays. Crafted with a classic navigator frame design, these sunglasses feature teardrop-shaped lenses and a double or triple bridge detail across the top, providing a timeless and versatile look.',	'new',	'[\"1\"]',	'inactive',	1,	0,	2,	14,	44,	44,	17,	155,	2,	'1714730860629-Vuezen-images-3.jpg',	2,	15,	'2024-05-02 06:31:11',	'2024-05-13 08:53:28'),
(15,	'Vuezen Polarized Sunglasses',	'2',	'',	NULL,	'vuezen-polarized-sunglasses',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays.',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays. Crafted with a classic navigator frame design, these sunglasses feature teardrop-shaped lenses and a double or triple bridge detail across the top, providing a timeless and versatile look.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	0,	2,	0,	0,	0,	0,	0,	2,	'1715067932121-2.png',	3,	19,	'2024-05-07 07:44:08',	'2024-05-09 11:24:37'),
(16,	'Polycarbonate Square Lens Full Rim Glasses',	'DL-PBT-GLS-21',	'KL-204',	1,	'polycarbonate-square-lens-full-rim-glasses',	'Material: Made from polycarbonate, a lightweight and durable thermoplastic,\r\n\r\nFrame Type: Full rim frame design, offering robustness and support to the lenses,\r\n\r\nUV Protection: Most likely equipped with UV protection, shielding the eyes from harmful ultraviolet rays,\r\n\r\nStyle: Fashionable and versatile, suitable for various face shapes and occasions.\r\n\r\n',	'These demo lens polycarbonate frame glasses blend style and durability, making them a versatile and practical accessory for any occasion. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	133,	48,	38,	21,	144,	1,	'1715420882334-13.png',	2,	15,	'2024-05-08 13:07:30',	'2024-05-30 07:44:34'),
(17,	'Vintage Black Frame Aviator Metal Sunglasses',	'BLK-AVR-ML-SUN-05',	'',	NULL,	'vintage-black-frame-aviator-metal-sunglasses',	'Designed for maximum comfort and functionality, our Vintage Aviator Sunglasses feature adjustable nose pads and lightweight construction for all-day wearability. ',	'Embrace timeless sophistication with our Vintage Black Frame Aviator Metal Sunglasses, a must-have accessory for the modern-day trendsetter. Inspired by classic aviator designs, these sunglasses exude retro charm with a contemporary edge.',	'new',	'[\"1\", \"2\"]',	'inactive',	1,	1,	1,	150,	55,	45,	16,	164,	4,	'1715253496743-14.png',	1,	13,	'2024-05-09 08:50:08',	'2024-05-11 05:46:44'),
(18,	'Blue Shade Lens Metal Frame Sunglasses',	'BLU-MT-FRM-SUN-07',	'KM-908',	1,	'blue-shade-lens-metal-frame-sunglasses',	'Style; Stylish Luxury Round Sunglasses, \r\n\r\nFlexible spring hinges, \r\n\r\nRubberized temples for added comfort & grip, \r\n\r\nFrame Material: Alloy Metal, Light Weight and Comfortable,\r\n\r\nLenses Material: Polarized Glass with UV-400 Protection,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'These blue shade lens metal frame sunglasses offer a fusion of style and practicality, making them an essential accessory for modern living. Crafted with a durable metal frame, these sunglasses provide both a sleek aesthetic and long-lasting wear. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	130,	48,	36,	20,	138,	2,	'1715251625385-5.png',	2,	14,	'2024-05-09 10:47:05',	'2024-05-30 07:40:10'),
(19,	'Women Metal Butterfly Sunglasses',	'WMN-MT-BTFY-SUN-17',	'',	NULL,	'women-metal-butterfly-sunglasses',	'100% UV Protection (UV 400), \r\n\r\nStylish Cat Eye Full Rim with Alloy Metal frame,\r\n\r\nLens Colour: Demo Lens,\r\n\r\nAnti-reflection, scratch-resistant hard coating,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n',	'Women\'s metal cat eye sunglasses typically feature sleek metal frames that are lightweight yet sturdy, providing both comfort and durability for extended wear. ',	'new',	'[\"2\"]',	'inactive',	1,	0,	2,	134,	50,	41,	17,	142,	2,	'1715420673871-DSC_-19.png',	2,	13,	'2024-05-09 11:06:34',	'2024-05-24 12:07:57'),
(20,	'Thick Frame Full Rim Square Sunglasses',	'TF-FR-SQR-SUN-01',	'P-102',	1,	'thick-frame-full-rim-square-sunglasses',	'Anti blue light, Relieve our eye fatigue, NO worry about eye fatigue, blurred vision and headache, \r\n\r\nWhether working or playing video games, a casual frame design keeps you looking put together and professional,\r\n\r\nDurable and Lightweight Frame,\r\n\r\nScratch Resistant CR Acrylic Lens',	'Thick Frame Full Rim Square Sunglasses, where classic design meets contemporary flair. These sunglasses boast a bold square frame, offering a modern twist on a timeless silhouette. The full rim design exudes durability and style, ensuring these shades are not just a fashion statement but a long-lasting accessory for every occasion.',	'new',	'[\"1\"]',	'active',	1,	0,	2,	134,	53,	42,	18,	145,	2,	'1715253680259-DSC_-75ng.png',	1,	20,	'2024-05-09 11:21:20',	'2024-05-30 08:33:54'),
(21,	'Blue Cut Demo Lens Rectangle Sunglasses',	'BLU-DL-RGL-SUN-22',	'C-07',	1,	'blue-cut-demo-lens-rectangle-sunglasses',	'Style: Full Rim Square Sunglasses,\r\n\r\nUV-400 Protection,\r\n\r\nBlue Cut Demo Lens Anti-reflection, scratch-resistant hard coating,\r\n\r\nReduces glare from computer screens and car headlights,\r\n\r\nMade with lightweight Polycarbonate material,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n\r\n\r\n',	'These blue cut demo lens rectangle sunglasses are the epitome of contemporary style and eye protection. With their sleek rectangle frame and vibrant blue-tinted lenses, they offer a modern twist on a classic design. ',	'new',	'[\"4\"]',	'active',	1,	0,	2,	135,	56,	45,	16,	143,	2,	'1715420642295-DSC_-64ng.png',	3,	19,	'2024-05-10 11:40:34',	'2024-05-30 07:39:00'),
(22,	'Cat Eye Frame Sunglasses',	'CAT-FRM-SUN-10',	'',	NULL,	'cat-eye-frame-sunglasses',	'Bold Cat Eye Design,\r\n\r\nLightweight Polycarbonate Frame,\r\n\r\nIncludes High-Quality Standard Vibrant Blue Lenses,\r\n\r\n100 % UV400 Protection,\r\n\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'Our cat-eye sunglasses are the epitome of timeless elegance and feminine charm. Vintage-inspired glamour is exuded by their distinctive cat eye shape, while being effortlessly chic. Crafted with precision.',	'new',	'[\"2\"]',	'inactive',	1,	0,	3,	138,	55,	42,	17,	146,	2,	'1715420611612-DSC_50g.png',	3,	13,	'2024-05-10 12:34:28',	'2024-05-22 13:01:39'),
(23,	'Demo Lens Polycarbonate Frame Sunglasses',	'DL-PBT-SUN-21',	'',	NULL,	'demo-lens-polycarbonate-frame-sunglasses',	'The frame of these sunglasses is meticulously crafted from high-quality polycarbonate material, offering unparalleled strength and resilience against everyday wear and tear. ',	'These demo lens polycarbonate frame sunglasses blend style and durability, making them a versatile and practical accessory for any occasion. Polycarbonate frames are used to make these sunglasses, which offer lightweight comfort and robust construction for long-lasting wear.',	'new',	'[\"4\"]',	'inactive',	1,	0,	2,	145,	50,	42,	16,	140,	2,	'1715420588370-11.png',	3,	20,	'2024-05-10 12:47:49',	'2024-05-13 12:11:53'),
(24,	'Dollger Night Vision Sunglasses',	'DGR-NV-SUN-11',	'VA-03',	1,	'dollger-night-vision-sunglasses',	'100% UV400 polarized protection,\r\n\r\nHigh-Quality Materials: Constructed with durable Polycarbonate materials to ensure long-lasting wear and performance,\r\n\r\nStylish Design: Sleek and modern design that complements various styles, making it suitable for both casual and formal occasions,\r\n\r\nVersatile Usage: Ideal for driving at night, outdoor activities, or any situation where enhanced visibility is required in low-light environments',	'Dollger Night Vision Glasses offer enhanced visibility and reduced glare during nighttime driving or other low-light conditions. The specialized lenses in these glasses are designed to enhance contrast and minimize glare from oncoming headlights and streetlights. ',	'new',	'[\"1\"]',	'active',	1,	0,	2,	132,	46,	36,	17,	142,	2,	'1715682397655-DSC_43g.png',	3,	20,	'2024-05-10 12:56:58',	'2024-05-30 07:45:33'),
(25,	'Cat Eye Transparent Frame Sunglasses',	'CAT-TRP-SUN-13',	'KW-610',	1,	'cat-eye-transparent-frame-sunglasses',	'\r\nHigh quality Polycarbonate frame with metal hinges,\r\n\r\nLens Material: CR Acrylic Polarized Glass,\r\n\r\n100% UV400 (UVA & UVB) Protection,\r\n\r\nFree Anti-Reflective and Anti-Scratch Coatings,\r\n\r\nWood Site finish Temple, \r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth',	'Elevate your sunny-day style with our chic Cat Eye Transparent Frame Sunglasses! These sleek shades blend retro elegance with modern flair, making them the perfect accessory for any fashion-forward individual.',	'new',	'[\"2\"]',	'active',	1,	0,	2,	134,	52,	42,	18,	145,	2,	'1715404779770-DSC_-58ng.png',	3,	13,	'2024-05-11 05:19:39',	'2024-05-30 08:34:16'),
(26,	'Aviator Full Frame Metal Fashion Sunglasses',	'AV-FR-MT-SUN-23',	'POLO-424',	1,	'aviator-full-frame-metal-fashion-sunglasses',	'Style: Full Rim Aviator Sunglasses,\r\n\r\nHigh Quality Hinge, Strong and Durable,\r\n\r\nPolarized Lens Help Restore True Color,\r\n\r\nFrame Material: Alloy Metal, \r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth',	'Introducing our Aviator Full Frame Metal Fashion Sunglasses - where classic design meets contemporary style. Inspired by the iconic aviator silhouette, these sunglasses are the epitome of timeless elegance and modern sophistication.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	133,	62,	52,	14,	143,	2,	'1715420532146-DSC_-17.png',	2,	15,	'2024-05-11 05:45:22',	'2024-05-30 07:45:57'),
(27,	'Thick Frame Square Anti Blue Light Glasses',	'SQR-BLU-GLS-14',	'',	NULL,	'thick-frame-square-anti-blue-light-glasses',	'Thick Frame Square Anti Blue Light Glasses, designed to revolutionize your digital experience while safeguarding your eye health. Crafted with meticulous attention to detail, these glasses seamlessly blend style and functionality, ensuring you look sharp while protecting your vision.',	'\r\nIntroducing our latest innovation in eyewear technology.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	152,	50,	44,	16,	148,	3,	'1715409346926-DSC_19png.png',	3,	19,	'2024-05-11 06:35:46',	'2024-05-11 09:29:14'),
(28,	'Multicolor Full-Rim Cat Eye Glasses',	'MTC-FR-CAT-GLS-15',	'C-10',	1,	'multicolor-full-rim-cat-eye-glasses',	'Style:  Full-Rim Cat Eye,\r\n\r\nLens Material: HD anti-glare Demo lens,\r\n\r\nAnti-reflection, scratch-resistant,\r\n\r\nMade with lightweight Polycarbonate material with \r\nFlexible spring hinges,\r\n\r\nUV-400 Protection: Protection from UV by Computer/Tablet/Laptop/Mobile\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n',	'Multicolor Full-Rim Cat Eye Glasses offer a vibrant and playful twist on traditional eyewear. These glasses feature frames that showcase a spectrum of colors, creating a dynamic and eye-catching look. ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	150,	52,	44,	16,	145,	3,	'1715682045956-Multicolor Full-Rim Cat Eye Glasses 4.png',	3,	13,	'2024-05-11 09:08:12',	'2024-05-30 07:28:43'),
(29,	'Women Demo Lens Butterfly Sunglasses',	'345375',	'',	NULL,	'women-demo-lens-butterfly-sunglasses',	'The butterfly shape of the frames features gracefully curved edges that mimic the delicate wings of a butterfly, creating a flattering and eye-catching silhouette.',	'Women\'s demo lens butterfly sunglasses offer a captivating blend of elegance and modern style. With their butterfly-shaped frames and demo lenses, these sunglasses exude femininity and sophistication. ',	'new',	'[\"4\"]',	'inactive',	1,	0,	1,	147,	48,	42,	16,	145,	2,	'1715680818209-Women Demo Lens Butterfly Sunglasses 1.png',	3,	13,	'2024-05-13 07:06:32',	'2024-05-15 05:46:34'),
(30,	'Aviator Metal Sunglasses',	'AV-MT-SUN-24',	'AP-134',	1,	'aviator-metal-sunglasses',	'Style: Full Rim Aviator sunglasses,\r\n\r\nLens Material: Blue Cut Lens,\r\n\r\nFrame Material: Alloy Metal,\r\n\r\nTemple Material: Plastic,\r\n\r\nUV-400 Protection,\r\n\r\nLight Weight and Comfortable,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'Aviator metal sunglasses are iconic eyewear characterized by their teardrop-shaped lenses and thin metal frames. The frames are typically made of lightweight metal. The lenses are often tinted to reduce glare and protect the eyes from harmful UV rays.',	'new',	'[\"4\"]',	'active',	2,	0,	2,	154,	54,	45,	16,	150,	2,	'1715584293502-DSC_-93png.png',	2,	15,	'2024-05-13 07:11:33',	'2024-05-30 07:30:51'),
(31,	'Blue Light Blocking Glasses',	'BLU-LB-GLS-25',	'C-14',	1,	'blue-light-blocking-glasses',	'Crafted with blue light filtering technology, these clear lens glasses are designed to protect you from digital eye strain,\r\n\r\nStyle: Full Rim Square, \r\n\r\nLens Material: Blue Light Blocking Demo Lens, \r\n\r\nMade with lightweight Polycarbonate material,\r\n\r\nHighly Flexible Frames,\r\nLight Weight and Comfortable,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n\r\n',	'Blue light blocking glasses are designed to shield your eyes from the harmful effects of blue light emitted by digital screens. Crafted with specially formulated lenses, ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	146,	49,	38,	24,	151,	3,	'1715584567311-DSC_-75png.png',	3,	20,	'2024-05-13 07:16:07',	'2024-05-30 07:39:42'),
(32,	'Crystal Clear Lens Transparent Sunglasses',	'CSTL-TRP-SUN-26',	'EP-487',	1,	'crystal-clear-lens-transparent-sunglasses',	'The clear lenses not only provide UV protection but also offer a crisp and unobstructed view, making them perfect for both outdoor activities and everyday wear.',	'These crystal clear lens transparent sunglasses offer a sleek and modern take on a classic accessory. Crafted with transparent frames and clear lenses, they exude contemporary style while providing a minimalist aesthetic.  Additionally, the transparent design adds a unique and trendy element to the sunglasses, ensuring you stand out from the crowd with your fashion-forward choice.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	149,	52,	41,	16,	145,	2,	'1715584807189-DSC_-71png.png',	3,	20,	'2024-05-13 07:20:07',	'2024-05-30 07:43:36'),
(33,	'Full Rim Square Frame Sunglasses',	'FR-SQR-SUN-27',	'C-25',	1,	'full-rim-square-frame-sunglasses',	'The square frame adds a touch of boldness to your look, making a statement without being overpowering. It\'s a versatile choice that complements casual and formal outfits alike, adding a dash of personality to any ensemble.',	'Full rim square frame sunglasses are a bold and stylish accessory that exudes confidence and sophistication. With a sturdy and durable frame that covers the entire perimeter of the lenses, these sunglasses have a fashionable look and robust construction.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	135,	49,	38,	20,	147,	3,	'1715585115530-DSC_-84png.png',	3,	20,	'2024-05-13 07:25:15',	'2024-05-30 07:46:27'),
(34,	'Men\'s Navigator Sunglasses',	'MN-NV-SUN-28',	'',	NULL,	'men\'s-navigator-sunglasses',	'High quality riveting hinges,\r\n\r\nCR Acrylic Lenses with antireflective coating,\r\n\r\nHighly Flexible Frames,\r\n\r\nLight Weight and Comfortable\r\nStrong and Durable,\r\n\r\nUV-400 Protection,\r\n\r\nFree Sunglasses Case with Cleaning Cloth',	'Men\'s navigator sunglasses are a classic and timeless accessory characterized by their distinctive aviator-inspired design. Navigator sunglasses are highly versatile and can complement a wide range of face shapes and styles.',	'new',	'[\"1\"]',	'inactive',	1,	0,	2,	138,	54,	42,	19,	145,	2,	'1715585779784-DSC_-79png.png',	3,	15,	'2024-05-13 07:36:19',	'2024-05-24 11:59:11'),
(35,	'Retro Small Oval Yellow Lens Sunglasses',	'RTO-YLW-SUN-29',	'VA-08',	1,	'retro-small-oval-yellow-lens-sunglasses',	'Handcrafted Polycarbonate frame,\r\n\r\nQuality anti-scratch lenses,\r\n\r\n100% UVA+UVB protection,\r\n\r\nEasily adjustable frame,\r\n\r\nNickel-free hinges,\r\n\r\nstraight arms with curved tips,\r\n\r\nFree Sunglasses Case with Cleaning Cloth\r\n',	'Retro small oval yellow lens sunglasses offer a nostalgic and stylish accessory that harks back to vintage fashion trends. These sunglasses feature small oval-shaped lenses with a yellow tint, reminiscent of retro styles from past eras. ',	'new',	'[\"1\"]',	'active',	1,	0,	1,	136,	46,	38,	17,	144,	2,	'1715586355800-DSC_-83png.png',	3,	18,	'2024-05-13 07:45:55',	'2024-05-30 08:36:08'),
(36,	'Clubmaster Metal Fashion Sunglasses',	'CBMT-MT-SUN-18',	'POLO-376',	1,	'clubmaster-metal-fashion-sunglasses',	'Style: Stylish Club Master  Polarized lens,\r\n\r\nFull-Rim Frame,\r\n\r\nUV-400 Protection,\r\n\r\nThin and light lenses,\r\n\r\nAdjustable Nose Pads, Can Perfectly Fit All Face Shapes,\r\n\r\nHigh Quality Hinge, Strong and Durable,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'Elevate your style with our chic and sophisticated women metal fashion sunglasses. Crafted with precision and attention to detail, these sunglasses offer the perfect blend of fashion and function for any occasion. ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	134,	57,	45,	13,	142,	2,	'1715589300034-DSC_37ng.png',	2,	20,	'2024-05-13 08:35:00',	'2024-05-30 08:45:08'),
(37,	'Black Full Rim Rectangle Metal Frame Sunglasses',	'BLK-FR-MTL-SUN-30',	'',	NULL,	'black-full-rim-rectangle-metal-frame-sunglasses',	'Sleek Design: These sunglasses feature a sleek and modern design with a full rim rectangular shape,\r\n\r\nDurable Metal Frame: Crafted from high-quality alloy metal materials,\r\n\r\nUV Protection: Equipped with UV protection lenses,\r\n\r\nAdjustable Nose Pads, Can Perfectly Fit All Face Shapes.\r\n\r\nLens Material: Anti Glare & Blue Cut Lens,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'These black full rim rectangle metal frame sunglasses exude a classic and timeless appeal, blending sophistication with modern style. Crafted with high-quality metal, the frame offers durability and a sleek aesthetic. The rectangular lenses provide a balanced look that complements various face shapes, offering both style and functionality. ',	'new',	'[\"4\"]',	'inactive',	2,	0,	2,	136,	55,	44,	16,	143,	2,	'1715602830094-DSC_-58g.png',	2,	20,	'2024-05-13 12:20:30',	'2024-05-24 12:17:12'),
(38,	'Crystal Clear Transparent Oval Sunglasses',	'CST-CR-TRP-SUN-31',	'',	NULL,	'crystal-clear-transparent-oval-sunglasses',	'Style: Round Full Rim,\r\n\r\nFrame Material: Polycarbonate,\r\n\r\nLens Material: Blue Cut Lens,\r\n\r\nUV-400 Protection,\r\n\r\nLight Weight and Comfortable,\r\n\r\nHighly Flexible Frames, \r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n',	'These crystal clear transparent oval sunglasses offer a fresh and contemporary interpretation of a classic silhouette. Crafted with transparent frames and oval-shaped lenses, they provide a modern and stylish look that\'s perfect for any occasion.',	'new',	'[\"4\"]',	'inactive',	1,	0,	2,	131,	48,	39,	20,	140,	2,	'1715603312328-D.png',	3,	18,	'2024-05-13 12:28:32',	'2024-05-22 12:25:34'),
(39,	'Demo Lens Rectangular Brown Sunglasses',	'DL-RGL-BRN-SUN-32',	'',	NULL,	'demo-lens-rectangular-brown-sunglasses',	'Lens Material, CR Acrylic, \r\n\r\nFrame Type Full Rim,\r\n\r\nUV 420 protection from sunlight,\r\n\r\nAnti reflation coating,\r\n\r\nLight Weight and Comfortable\r\n',	'Introducing the epitome of timeless style and contemporary flair: our Demo Lens Rectangular Brown Sunglasses. Crafted with precision and elegance, these sunglasses are more than just an accessory; they\'re a statement piece for those who appreciate sophistication with a hint of edge.',	'new',	'[\"1\"]',	'inactive',	1,	0,	2,	134,	48,	38,	21,	144,	2,	'1715681832818-Demo Lens Rectangular Brown Sunglasses 1.png',	3,	20,	'2024-05-13 12:33:27',	'2024-05-22 12:16:38'),
(40,	'Gray Gradient Lens Sunglasses',	'GRY-LNS-SUN-33',	'VA-02',	1,	'gray-gradient-lens-sunglasses',	'UV-400 Protection,\r\n\r\nEnhanced Visual Clarity,\r\n\r\nLightweight Construction: Crafted from lightweight Polycarbonate materials, these sunglasses offer all-day comfort without sacrificing durability,\r\n\r\nVersatile Wear: Suitable for both casual and formal occasions,\r\n\r\nFrame Type: Full Rim with Polarized Glass,\r\n\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth',	'Gray gradient lens sunglasses offer a stylish and versatile option for eye protection with a touch of sophistication. These sunglasses feature lenses that transition from a darker shade at the top to a lighter shade at the bottom, creating a gradient effect. ',	'new',	'[\"2\"]',	'active',	1,	0,	2,	135,	52,	41,	18,	146,	2,	'1715603877109-DSC_13png.png',	3,	13,	'2024-05-13 12:37:57',	'2024-05-30 08:34:46'),
(41,	'Crystal Clear Transparent Rectangular Sunglasses',	'CSTL-CR-TRP-SUN-36',	'',	NULL,	'crystal-clear-transparent-rectangular-sunglasses',	'Style: Full Rim Rectangle Anti Glare Sunglasses,\r\n\r\nLens Material; Demo Lens,\r\n\r\nFrame Material: Polycarbonate, \r\n\r\n100% UV protection,\r\n\r\nAnti-reflection, scratch-resistant,\r\n\r\nHighly Flexible Frames,\r\n\r\nLight Weight and Comfortable, \r\n\r\nStrong and Durable,\r\n\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'These crystal clear transparent rectangular sunglasses offer a contemporary and sophisticated look that\'s sure to turn heads. Crafted with transparent frames and rectangular lenses, they combine modern style with timeless elegance.',	'new',	'[\"4\"]',	'active',	1,	0,	2,	136,	54,	42,	17,	145,	2,	'1715604083309-01.png',	1,	19,	'2024-05-13 12:41:23',	'2024-05-21 10:23:20'),
(42,	'Yellow Full Rim Frame Square Glasses',	'YLW-FR-SQR-GLS-37',	'KM-904',	1,	'yellow-full-rim-frame-square-glasses',	'Style: Yellow Full Rim Square,\r\n\r\nSuitable for Men and Women,\r\n\r\nTemple Material: Alloy Steel,\r\n\r\nComposition: Acetate 100%, Metal 100%,\r\n\r\nLens Material: Anti Glare & Blue Cut Lens,\r\n\r\n100% UV-400 Protection,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\nLight Weight and Comfortable\r\n\r\n\r\n\r\n\r\n\r\n\r\n',	'Introducing our vibrant and stylish yellow full rim frame square glasses, designed to brighten up your look and your day. Crafted with high-quality materials, these glasses offer both fashion and functionality for any occasion. ',	'new',	'[\"1\"]',	'active',	2,	0,	2,	134,	52,	43,	17,	142,	3,	'1715604511815-2.png',	2,	20,	'2024-05-13 12:48:32',	'2024-05-30 08:45:57'),
(43,	'Half Rim Metal Frame Sunglasses',	'HR-ML-SUN-38',	'',	NULL,	'half-rim-metal-frame-sunglasses',	'UV 420 protection from sunlight, \r\n\r\nAnti reflation coating\r\nSuitable for digital screen,\r\n\r\nAdjustable Nose Pads, Can Perfectly Fit All Face Shapes,\r\n\r\nAnti-Slip and Durable,\r\n\r\nFrame Type - Half Rim,\r\n',	'These Half Rim Metal Frame Sunglasses blend vintage charm with modern sophistication, creating a timeless accessory for any fashion-forward individual. ',	'new',	'[\"1\"]',	'inactive',	2,	0,	2,	141,	56,	44,	18,	150,	2,	'1715670149285-17.png',	2,	20,	'2024-05-14 06:52:26',	'2024-05-24 12:03:20'),
(44,	'Navigator Metal Frame Sunglasses',	'NV-MT-SUN-39',	'AP-20',	1,	'navigator-metal-frame-sunglasses',	'Frame Style: Designer, Retro/Vintage, Classic, Cool/Trendy,\r\n\r\nUV Protection: Equipped with UV400 lenses, \r\n\r\nAnti-reflection:  scratch-resistant hard coating\r\nImproves the appearance of your glasses Makes your eyes more visible, \r\n\r\nDouble bridge glasses, \r\n\r\nFull Rim with polarized glass,\r\n\r\nFree Sunglasses Case with Cleaning Cloth\r\n\r\n\r\n',	'Navigator metal frame sunglasses are a timeless and iconic accessory known for their sleek and sophisticated design. These sunglasses typically feature a durable metal frame that is lightweight yet sturdy, providing both comfort and durability. ',	'new',	'[\"1\"]',	'active',	2,	0,	2,	128,	51,	43,	19,	133,	2,	'1715669903202-13.png',	2,	20,	'2024-05-14 06:58:23',	'2024-05-30 08:35:42'),
(45,	'UV Protect Navigator Frame Sunglasses',	'UVPT-NV-SUN-40',	'ST-478',	1,	'uv-protect-navigator-frame-sunglasses',	'Style: Stone Grey Full Rim Blue Cut Anti Glare UV Protection Glasses,\r\n\r\nFlexible spring hinges, \r\n\r\nRubberized temples for added comfort & grip, \r\n\r\nTAC polarized lenses, \r\n\r\nMade with lightweight Polycarbonate material,\r\n\r\n\r\nAnti-reflection, scratch-resistant hard coating,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'UV protect navigator frame sunglasses offer both style and essential protection for your eyes against harmful UV rays. Crafted with a classic navigator frame design.',	'new',	'[\"2\"]',	'active',	1,	0,	2,	132,	52,	42,	18,	139,	2,	'1715674983259-22.png',	3,	20,	'2024-05-14 07:07:19',	'2024-05-30 08:36:35'),
(46,	'UV Protected Full-Rim Square Sunglasses',	'UVPT-FR-SQR-SUN-41',	'',	NULL,	'uv-protected-full-rim-square-sunglasses',	'Anti Glare & Blue Cut Lens,\r\n\r\nHighly Flexible Frames,\r\n\r\nUV-400 Protection,\r\n\r\nFull Rim with Polycarbonate frame material,\r\n\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n\r\n',	'UV-protected full-rim square sunglasses combine style with functionality to provide essential eye protection from harmful UV rays while maintaining your fashionable appearance.',	'new',	'[\"1\"]',	'inactive',	1,	0,	2,	135,	52,	43,	16,	145,	2,	'1715679837085-BANNER.png',	3,	20,	'2024-05-14 08:27:06',	'2024-05-22 12:20:59'),
(47,	'Full Rim Cat Eye Computer Glasses',	'FR-CAT-CMT-GLS-57',	'',	NULL,	'full-rim-cat-eye-computer-glasses',	'Style: Full Rim Cat Eye,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nCrafted with a high quality acetate material,\r\n\r\nAnti-reflection, scratch-resistant,\r\n\r\nFlexible spring hinges,\r\n\r\nLens Material: Demo Lens,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'We are pleased to present our Full Rim Cat Eye Computer Glasses, the ideal combination of fashion and use to shield your child\'s eyes from digital strain in the modern world. These stylish full-rim cat-eye glasses were created especially for young eyes that spend a lot of time in front of screens.',	'new',	'[\"3\"]',	'inactive',	1,	0,	1,	120,	46,	34,	14,	126,	3,	'1715836506770-03.png',	4,	13,	'2024-05-16 05:15:06',	'2024-05-22 12:44:49'),
(48,	'Transparent Full Rim Round Glasses',	'TRP-FR-RD-GLS-48',	'KIDS-28',	1,	'transparent-full-rim-round-glasses',	'Style: Transparent Full Rim,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nLens Material: Demo Lens,\r\n\r\nHigh quality acetate frame with metal hinges,\r\n\r\nUV-400 Protection,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'Presenting our Transparent Full Rim Round Glasses, the ideal combination of fashion and practicality for your child\'s eyewear requirements! These stylish, round, full-rimmed glasses have a transparent design that gives them a contemporary appearance without sacrificing eye protection or clarity of vision. ',	'new',	'[\"3\"]',	'active',	1,	0,	1,	126,	45,	34,	15,	132,	3,	'1715848832667-04.png',	4,	14,	'2024-05-16 08:36:50',	'2024-05-30 08:50:32'),
(49,	'Blue Light Protection kids Computer Glasses',	'BLP-KDS-CMT-GLS-56',	' KIDS-18 ',	1,	'blue-light-protection-kids-computer-glasses',	'Blue light blocking glasses help alleviate eye strain caused by prolonged exposure to digital screens,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nCrafted with a full rim acetate material, \r\n\r\nLens Material: Demo Lens,\r\n \r\nHighly Flexible Frames,\r\n\r\nLight Weight and Comfortable,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'Introducing our Blue Light Protection kids Computer Glasses. These Blue Light Protection kids Computer Glasses were made to guard your child\'s eyes against the harmful effects of blue light produced by digital screens. With a stylish and comfortable design, these glasses are perfect for children who spend extended periods of time in front of computers, tablets, or smartphones.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	120,	42,	38,	18,	125,	3,	'1715926123869-03.png',	4,	18,	'2024-05-17 06:08:44',	'2024-05-30 08:55:52'),
(50,	'Cartoon Duck Design Fashion Kids Sunglasses',	'DK-KDS-SUN-46',	'POLO-071',	1,	'cartoon-duck-design-fashion-kids-sunglasses',	'Style: Cartoon Duck Design,\r\n\r\nSuitable for Boy and girl (2-8 years),\r\n\r\nCrafted from durable PVC material,\r\n\r\nLight Weight and Comfortable,\r\n\r\nUV-400 Protection polarized glass,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'Introducing our Cartoon Duck Design Fashion Kids Sunglasses, the perfect blend of style and functionality for your little ones! These sunglasses are cute and come with a whimsical duck design that adds a playful touch to any outfit while also providing essential eye protection. ',	'new',	'[\"3\"]',	'active',	1,	0,	1,	120,	47,	36,	23,	128,	2,	'1715927793420-02.png',	3,	18,	'2024-05-17 06:36:33',	'2024-05-30 08:48:29'),
(51,	'Demo Lens Full Rim Computer Glasses',	'DL-FR-CMT-GLS-42',	'KIDS-29',	1,	'demo-lens-full-rim-computer-glasses',	'Style: Coll Printed Full Rim, \r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nAnti-reflection, scratch-resistant lens,\r\n\r\nUV-400 Protection,\r\n\r\nHight quality Demo Lens,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth',	'Our Demo Lens Full Rim Computer Glasses, the essential accessory for anyone who spends long hours in front of digital screens, are now available. These glasses are designed with your visual comfort in mind and are a stylish way to combat the harmful effects of blue light emitted by screens.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	120,	44,	34,	17,	127,	3,	'1715928854046-03.png',	4,	18,	'2024-05-17 06:54:14',	'2024-05-30 08:46:45'),
(52,	'Half Eye kids Computer Glasses',	'HE-KDS-CMT-GLS-43',	'KIDS-16',	1,	'half-eye-kids-computer-glasses',	'The lightweight construction ensures all-day comfort, allowing kids to focus on their digital adventures without distraction.\r\n\r\nStyle: Half Eye Full Rim, \r\n\r\nStrong and Durable Acetate frame material, \r\n\r\nLens Material: Anti Glare & Blue Cut Lens,\r\n\r\nUV-400 Protection,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'Introducing our Half Eye Kids Computer Glasses - the ultimate solution for young digital explorers. These glasses are designed for kids who spend time in front of screens and provide a perfect blend of style and protection to keep their eyes safe and comfortable.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	120,	43,	36,	16,	125,	3,	'1715929624526-03.png',	4,	19,	'2024-05-17 07:07:04',	'2024-05-30 08:47:14'),
(53,	'Half Eye Multicolor Full Rim Glasses',	'HE-MTC-FR-GLS-44',	'',	NULL,	'half-eye-multicolor-full-rim-glasses',	'Crafted from high-quality acetate material, these glasses offer durability and lightweight comfort for all-day wear. \r\n\r\nStyle: Half Eye Multicolor,\r\n\r\nSuitable for Boy and girl (5-15 years)\r\n\r\nHigh quality Demo Lens, \r\n\r\nLight Weight and Durable,\r\n\r\n100% UV Protection, \r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'Our Half Eye Multicolor Full Rim Glasses are the perfect choice for your little trendsetters, where fun meets functionality. These frames are designed to be both stylish and durable, making them the perfect accessory to keep your child looking sharp and protecting their precious eyes. ',	'new',	'[\"3\"]',	'inactive',	1,	0,	1,	118,	46,	36,	17,	128,	3,	'1715930118681-04.png',	4,	19,	'2024-05-17 07:15:18',	'2024-05-22 12:31:19'),
(54,	'Polarized Cute Duck Kids Sunglasses',	'PRD-DK-KDS-SUN-45',	'POLO-085',	1,	'polarized-cute-duck-kids-sunglasses',	'Style; Cute Duck Design,\r\n\r\nSuitable for Boy and girl (2-8 years),\r\n\r\nCrafted with high-quality Polycarbonate materials, \r\n\r\nUV-400 Protection, Polarized Lens,\r\n\r\nStrong and Durable with Light Weight and Comfortable,\r\n\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth',	'Our Polarized Cute Duck Sunglasses are designed to offer both style and protection to your little one\'s eyes. These sunglasses are crafted with care and precision, and they have a charming duck-shaped frame that adds a playful touch to any outfit.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	126,	47,	36,	20,	135,	2,	'1715932268371-06.png',	3,	14,	'2024-05-17 07:51:08',	'2024-05-30 08:48:08'),
(55,	'Kids Clubmaster Hexagon Sunglasses',	'KDS-CBMT-HGN-SUN-49',	'ASH-C01',	1,	'kids-clubmaster-hexagon-sunglasses',	'Style; Clubmaster Hexagon Sunglasses,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nCrafted with premium alloy metal materials, \r\n\r\nFlexible spring hinges, Rubberized temples for added comfort & grip,\r\n\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'We present to you our Kids Clubmaster Hexagon Sunglasses, the ideal fusion of contemporary flare and vintage design for your budding trendsetter. The distinctive hexagonal Clubmaster frame shape of these sunglasses was created especially to give your child\'s sunny-day ensemble a refined touch. ',	'new',	'[\"3\"]',	'active',	1,	0,	1,	128,	46,	34,	16,	136,	2,	'1715935412478-06.png',	2,	24,	'2024-05-17 08:43:32',	'2024-05-30 08:51:02'),
(56,	'Polarized Full Rim Kids Sunglasses',	'PRD-FR-SUN-51',	'POLO-171',	1,	'polarized-full-rim-kids-sunglasses',	'Style: Polarized Full Rim 	Funky, Fashionable,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nFrame Material: Hight Quality Acetate, \r\n\r\n100% UV Protection with Polarized Lens,\r\n\r\nDurable & Light Weight Comfortable, \r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'Our sunglasses are equipped with polarized lenses that effectively reduce glare from reflective surfaces such as water, sand, and roads. our sunglasses safeguard your child\'s eyes from the sun\'s harmful UVA and UVB rays. Whether they\'re playing at the beach, hiking in the mountains, or simply enjoying a sunny day in the park, you can trust that their eyes are well-protected.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	126,	48,	37,	16,	138,	2,	'1715935770652-07png.png',	4,	20,	'2024-05-17 08:49:30',	'2024-05-30 08:51:47'),
(57,	'Polarized Lens Kids Sunglasses',	'PRD-KDS-SUN-52',	'POLO-144',	1,	'polarized-lens-kids-sunglasses',	'Style: Full Rim Polarized Sunglasses,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nUV-400 Protection,\r\n\r\nHigh Quality flexible acetate material, \r\n\r\nLight Weight and Comfortable,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n',	'Introducing our Polarized Lens Kids Sunglasses, specially crafted to keep your little ones\' eyes safe and stylish during sunny adventures. Our sunglasses feature high-quality polarized lenses that block out harmful UV rays and reduce glare from reflective surfaces like water and snow. ',	'new',	'[\"3\"]',	'active',	1,	0,	1,	134,	43,	34,	20,	138,	2,	'1715936145950-06.png',	4,	18,	'2024-05-17 08:55:46',	'2024-05-30 08:52:09'),
(58,	'Round Full Rim Polarized Kids Sunglasses',	'RD-FR-PRD-SUN-55',	'POLO-132',	1,	'round-full-rim-polarized-kids-sunglasses',	'Style: Full Rim Polarized,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nMade of high-quality, durable acetate materials to with stand rough handling by kids,\r\n\r\nLightweight and comfortable for all-day wear,\r\n\r\n100% UV Protection,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'Our Round Full Rim Polarized Kids Sunglasses are perfect for protecting your child\'s eyes from harmful UV rays. The round shape and full rim design of these sunglasses ensure durability and a comfortable fit for your little one. ',	'new',	'[\"3\"]',	'active',	1,	0,	1,	134,	44,	34,	20,	138,	2,	'1715937211135-01.png',	4,	14,	'2024-05-17 09:13:31',	'2024-05-30 08:54:06'),
(59,	'Thick Frame Polarized UV Kids Sunglasses',	'TF-PRD-KDS-SUN-54',	'POLO-136',	1,	'thick-frame-polarized-uv-kids-sunglasses',	'Style: Full Rim Thick Frame Polarized,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nHigh quality acetate frame with metal wings,\r\n\r\nUV 420 protection from sunlight,\r\n\r\nLight Weight and Comfortable,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n',	'Introducing our Thick Frame Polarized UV Kids Sunglasses, the ultimate blend of style, protection, and durability for your little ones\' eyes. Crafted with care and precision, these sunglasses feature a thick frame design and polarized UV lenses, ensuring optimal eye safety and comfort during sunny days. ',	'new',	'[\"3\"]',	'active',	1,	0,	1,	132,	46,	36,	20,	138,	2,	'1715937716005-08.png',	4,	20,	'2024-05-17 09:21:56',	'2024-05-30 08:53:41'),
(60,	'Cat Eye Full Rim Polarized Sunglasses',	'CAT-FR-PRD-SUN-47',	'POLO-135',	2,	'cat-eye-full-rim-polarized-sunglasses',	'Style: Full Rim Cat Eye, \r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nUV-400 Protection Polarized Lens,\r\n\r\nHight quality flexible acetate frame, \r\n\r\nLight Weight and Comfortable,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth',	'Introducing our Cat Eye Full Rim Polarized Kids Sunglasses, the perfect blend of chic style and essential eye protection for your little fashionista! These sunglasses feature a trendy cat-eye shape with full rim frames, offering both a stylish look and optimal sun shielding. ',	'new',	'[\"3\"]',	'active',	1,	0,	1,	132,	46,	36,	16,	138,	2,	'1715941259174-03.png',	3,	13,	'2024-05-17 10:20:59',	'2024-05-30 08:48:49'),
(61,	'Half Eye Full Rim Eyeglasses',	'HE-FR-EYE-GLS-58',	'KIDS-100',	1,	'half-eye-full-rim-eyeglasses',	'Lightweight Durable Frame Provide Comfort for Extended use, \r\n\r\nSuitable for Boy and girl (5-12 years),\r\n\r\nUV-400 Protection,\r\n\r\nGuaranteed to Make You Look Good,\r\n\r\nStainless steel hinges,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth',	'Introducing our Half Eye Full Rim Eyeglasses, the perfect blend of functionality and style for your everyday needs. Designed for individuals who require vision correction primarily for reading or close-up tasks, these glasses offer unparalleled clarity and comfort.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	125,	45,	35,	16,	131,	1,	'1715942050476-06.png',	4,	23,	'2024-05-17 10:34:10',	'2024-05-30 08:57:13'),
(62,	'Kids Oval Full Rim Computer Glasses',	'KDS-OVL-CMP-GLS-50',	'',	NULL,	'kids-oval-full-rim-computer-glasses',	'Style: Full Rim Oval Shape, \r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nHigh quality acetate frame with Strong and Durable metal Hinge,\r\n\r\nUV 420 protection from sunlight,\r\n\r\nSuitable for digital screen,\r\n\r\nLens Material: Demo Lens,\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n\r\n\r\n',	'Introducing our Kids Oval Full Rim Computer Glasses, designed to protect your child\'s eyes from digital strain while ensuring comfort and style during screen time. These glasses feature a classic oval frame with full rim construction, specifically tailored to provide optimal blue light protection for young eyes. ',	'new',	'[\"3\"]',	'inactive',	1,	0,	1,	122,	43,	34,	16,	130,	3,	'1715942809335-18.png',	4,	18,	'2024-05-17 10:46:49',	'2024-05-22 12:39:35'),
(63,	'Rectangle Metal Frame Blue Lens Glasses',	'RGL-MT-BL-GLS-53',	'KIDS-M92',	1,	'rectangle-metal-frame-blue-lens-glasses',	'Style: Full Rim Rectangle,\r\n\r\nSuitable for Boy and girl (5-15 years),\r\n\r\nFrame Material: Alloy Steel, \r\n\r\nAnti Glare & Blue Cut Lens with scratch-resistant,\r\n\r\nUV-400 Protection,\r\n\r\nFlexible spring hinges,\r\n\r\nRubberized temples for added comfort & grip,\r\n\r\nAdjustable Nose Pads, Can Perfectly Fit All Face Shapes,\r\n\r\n\r\nPackage contains: 1 spectacle frame with case and cleaning cloth\r\n\r\n\r\n\r\n',	'We present to you our Rectangle Metal Frame Blue Lens Glasses. These stylish glasses feature a durable metal frame that adds a touch of sophistication to any outfit. The blue lenses are a versatile accessory that protects from the sun while also adding a trendy pop of color, making them a great choice for any occasion.',	'new',	'[\"3\"]',	'active',	1,	0,	1,	130,	45,	36,	17,	135,	3,	'1715943504990-07.png',	2,	19,	'2024-05-17 10:58:25',	'2024-05-30 08:53:05'),
(64,	'Demo Lens Rectangular Brown Glasses',	'DL-RGL-BRN-GLS-32',	'ST-022',	1,	'demo-lens-rectangular-brown-glasses',	'Lens Material, CR Acrylic, Frame Type Full Rim, UV 420 Protection From Sunlight, Anti Reflation Coating, Light Weight And Comfortable',	'Introducing The Epitome Of Timeless Style And Contemporary Flair: Our Demo Lens Rectangular Brown Glasses. Crafted With Precision And Elegance, These Glasses Are More Than Just An Accessory; They\'re A Statement Piece For Those Who Appreciate Sophistication With A Hint Of Edge.',	'new',	'[\"5\", \"6\", \"4\"]',	'active',	3,	1,	2,	134,	38,	48,	20,	144,	4,	'1716379926504-3.png',	4,	20,	'2024-05-22 12:12:06',	'2024-05-30 07:45:02'),
(65,	'UV Protected Full-Rim Square Glasses',	'UVPT-FR-SQR-GLS-41',	'ST-409',	1,	'uv-protected-full-rim-square-glasses',	'Anti Glare & Blue Cut Lens, Highly Flexible Frames, UV-400 Protection, Full Rim With Polycarbonate Frame Material, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'UV-Protected Full-Rim Square Glasses Combine Style With Functionality To Provide Essential Eye Protection From Harmful UV Rays While Maintaining Your Fashionable Appearance.',	'new',	'[\"5\", \"4\"]',	'active',	3,	1,	2,	135,	43,	52,	16,	145,	4,	'1716380332195-21.png',	4,	20,	'2024-05-22 12:18:52',	'2024-05-30 08:37:10'),
(66,	'Crystal Clear Transparent Oval Glasses',	'CST-CR-TRP-GLS-31',	'C-2',	1,	'crystal-clear-transparent-oval-glasses',	'Style: Round Full Rim, Frame Material: Polycarbonate, Lens Material: Blue Cut Lens, UV-400 Protection, Light Weight And Comfortable, Highly Flexible Frames, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'These Crystal Clear Transparent Oval Glasses Offer A Fresh And Contemporary Interpretation Of A Classic Silhouette. Crafted With Transparent Frames And Oval-Shaped Lenses, They Provide A Modern And Stylish Look That\'s Perfect For Any Occasion.',	'new',	'[\"2\", \"4\"]',	'active',	2,	1,	1,	131,	39,	48,	20,	140,	4,	'1716380619195-D.png',	4,	18,	'2024-05-22 12:23:39',	'2024-05-30 07:44:06'),
(67,	'Half Eye Multicolor Full Rim Glasses',	'HE-MTC-FR-GLS-44',	'KIDS-22',	1,	'half-eye-multicolor-full-rim-glasses',	'Crafted From High-Quality Acetate Material, These Glasses Offer Durability And Lightweight Comfort For All-Day Wear. Style: Half Eye Multicolor, Suitable For Boy And Girl (5-15 Years) High Quality Demo Lens, Light Weight And Durable, 100% UV Protection, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'Our Half Eye Multicolor Full Rim Glasses Are The Perfect Choice For Your Little Trendsetters, Where Fun Meets Functionality. These Frames Are Designed To Be Both Stylish And Durable, Making Them The Perfect Accessory To Keep Your Child Looking Sharp And Protecting Their Precious Eyes.',	'new',	'[\"3\"]',	'active',	1,	1,	1,	118,	36,	46,	17,	128,	4,	'1716380953401-04.png',	4,	19,	'2024-05-22 12:29:13',	'2024-05-30 08:47:49'),
(68,	'Kids Oval Full Rim Computer Glasses',	'KDS-OVL-CMP-GLS-50',	'KIDS-15',	1,	'kids-oval-full-rim-computer-glasses',	'Style: Full Rim Oval Shape, Suitable For Boy And Girl (5-15 Years), High Quality Acetate Frame With Strong And Durable Metal Hinge, UV 420 Protection From Sunlight, Suitable For Digital Screen, Lens Material: Demo Lens, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'Introducing Our Kids Oval Full Rim Computer Glasses, Designed To Protect Your Child\'s Eyes From Digital Strain While Ensuring Comfort And Style During Screen Time. These Glasses Feature A Classic Oval Frame With Full Rim Construction, Specifically Tailored To Provide Optimal Blue Light Protection For Young Eyes.',	'new',	'[\"3\"]',	'active',	1,	1,	1,	122,	34,	43,	16,	130,	4,	'1716381316608-12.png',	4,	18,	'2024-05-22 12:35:16',	'2024-05-30 08:51:26'),
(69,	'Full Rim Cat Eye Computer Glasses',	'FR-CAT-CMT-GLS-57',	'KIDS-30',	1,	'full-rim-cat-eye-computer-glasses',	'Style: Full Rim Cat Eye, Suitable For Boy And Girl (5-15 Years), Crafted With A High Quality Acetate Material, Anti-Reflection, Scratch-Resistant, Flexible Spring Hinges, Lens Material: Demo Lens, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'We Are Pleased To Present Our Full Rim Cat Eye Computer Glasses, The Ideal Combination Of Fashion And Use To Shield Your Child\'s Eyes From Digital Strain In The Modern World. These Stylish Full-Rim Cat-Eye Glasses Were Created Especially For Young Eyes That Spend A Lot Of Time In Front Of Screens.',	'new',	'[\"2\"]',	'active',	1,	1,	1,	120,	33,	46,	14,	126,	4,	'1716381684692-06.png',	4,	13,	'2024-05-22 12:41:24',	'2024-05-30 09:14:55'),
(70,	'Cat Eye Frame Glasses',	'CAT-FRM-GLS-10',	'C-19',	1,	'cat-eye-frame-glasses',	'Bold Cat Eye Design, Lightweight Polycarbonate Frame, Includes High-Quality Standard Vibrant Blue Lenses, 100 % UV400 Protection, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'Our Cat-Eye Glasses Are The Epitome Of Timeless Elegance And Feminine Charm. Vintage-Inspired Glamour Is Exuded By Their Distinctive Cat Eye Shape, While Being Effortlessly Chic. Crafted With Precision.',	'new',	'[\"6\"]',	'active',	2,	1,	2,	138,	42,	55,	17,	146,	4,	'1716382793316-DSC_51g.png',	4,	13,	'2024-05-22 12:59:53',	'2024-05-30 07:41:49'),
(71,	'Yellow Mirror CR Lens Sunglasses',	'YLW-CR-MRD-SUN-19',	'KW-604',	1,	'yellow-mirror-cr-lens-sunglasses',	'Stylish Imported Mirrored Sunglasses, 100% UV Protection | Mirrored | Polarized, LENS COLOR : Mirror Yellow, LENS MATERIAL : CR 39 (Plastic Polymer), FRAME MATERIAL : Plastic, Fashion And Stylish Design , Comfortable Nose Pads Design, Anti-Slip Designed Legs',	'Introducing Our Bold And Contemporary Yellow Mirror CR Lens Sunglasses, The Perfect Statement Accessory For The Modern Fashionista. Crafted With Attention To Detail, These Sunglasses Offer A Unique Combination Of Style And Functionality.',	'new',	'[\"1\"]',	'active',	2,	0,	2,	136,	42,	51,	19,	145,	2,	'1716551500783-3.png',	3,	20,	'2024-05-24 11:51:40',	'2024-05-30 08:46:17'),
(72,	'Men\'s Navigator Glasses',	'MN-NV-GLS-28',	'P-104',	2,	'men\'s-navigator-glasses',	'High Quality Riveting Hinges, CR Acrylic Lenses With Antireflective Coating, Highly Flexible Frames, Light Weight And Comfortable Strong And Durable, UV-400 Protection, Free Glasses Case With Cleaning Cloth',	'Men\'s Navigator Glasses Are A Classic And Timeless Accessory Characterized By Their Distinctive Aviator-Inspired Design. Navigator Sunglasses Are Highly Versatile And Can Complement A Wide Range Of Face Shapes And Styles.',	'new',	'[\"1\"]',	'active',	2,	0,	2,	138,	42,	54,	19,	145,	1,	'1716551846638-DSC_-79png.png',	4,	15,	'2024-05-24 11:57:26',	'2024-05-30 08:35:13'),
(73,	'Half Rim Metal Frame Glasses',	'HR-ML-GLS-38',	'AP-003',	2,	'half-rim-metal-frame-glasses',	'UV 420 Protection From Sunlight,\r\n\r\n Anti Reflation Coating Suitable For Digital Screen, \r\n\r\nAdjustable Nose Pads, Can Perfectly Fit All Face Shapes, Anti-Slip And Durable, Frame Type - Half Rim,',	'These Half Rim Metal Frame Glasses Blend Vintage Charm With Modern Sophistication, Creating A Timeless Accessory For Any Fashion-Forward Individual.',	'new',	'[\"1\", \"2\", \"4\"]',	'active',	3,	0,	2,	141,	44,	56,	18,	150,	1,	'1716552090731-17.png',	2,	20,	'2024-05-24 12:01:30',	'2024-05-30 07:42:48'),
(74,	'Women Metal Butterfly Glasses',	'WMN-MT-BTFY-GLS-17',	'CEQ-010',	1,	'women-metal-butterfly-glasses',	'100% UV Protection (UV 400), Stylish Women Metal Butterfly Glasses Full Rim With Alloy Metal Frame, Lens Colour: Demo Lens, Anti-Reflection, Scratch-Resistant Hard Coating, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'Women Metal Butterfly Glasses Typically Feature Sleek Metal Frames That Are Lightweight Yet Sturdy, Providing Both Comfort And Durability For Extended Wear.',	'new',	'[\"2\"]',	'active',	3,	0,	2,	134,	41,	50,	17,	142,	1,	'1716552364020-DSC_-18.png',	2,	13,	'2024-05-24 12:06:04',	'2024-05-30 08:37:34'),
(75,	'Black Full Rim Rectangle Metal Frame Glasses',	'BLK-FR-MTL-GLS-30',	'AP-076',	1,	'black-full-rim-rectangle-metal-frame-glasses',	'Sleek Design: These Glasses Feature A Sleek And Modern Design With A Full Rim Rectangular Shape, Durable Metal Frame: Crafted From High-Quality Alloy Metal Materials, UV Protection: Equipped With UV Protection Lenses, Adjustable Nose Pads, Can Perfectly Fit All Face Shapes. Lens Material: Anti Glare & Blue Cut Lens, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'These Black Full Rim Rectangle Metal Frame Glasses Exude A Classic And Timeless Appeal, Blending Sophistication With Modern Style. Crafted With High-Quality Metal, The Frame Offers Durability And A Sleek Aesthetic. The Rectangular Lenses Provide A Balanced Look That Complements Various Face Shapes, Offering Both Style And Functionality.',	'new',	'[\"4\"]',	'active',	3,	0,	2,	136,	44,	55,	16,	143,	3,	'1716552748951-DSC_-59g.png',	2,	20,	'2024-05-24 12:12:28',	'2024-05-30 07:37:12'),
(76,	'Rectangle Metal Frame Blue Lens Glasses',	'RGL-MT-BL-GLS-53',	'KIDS-M92',	1,	'rectangle-metal-frame-blue-lens-glasses',	'Style: Full Rim Rectangle, Suitable For Boy And Girl (5-15 Years), Frame Material: Alloy Steel, Anti Glare & Blue Cut Lens With Scratch-Resistant, UV-400 Protection, Flexible Spring Hinges, Rubberized Temples For Added Comfort & Grip, Adjustable Nose Pads, Can Perfectly Fit All Face Shapes, Package Contains: 1 Spectacle Frame With Case And Cleaning Cloth',	'We Present To You Our Rectangle Metal Frame Blue Lens Glasses. These Stylish Glasses Feature A Durable Metal Frame That Adds A Touch Of Sophistication To Any Outfit. The Blue Lenses Are A Versatile Accessory That Protects From The Sun While Also Adding A Trendy Pop Of Color, Making Them A Great Choice For Any Occasion.',	'new',	'[\"3\"]',	'active',	2,	0,	1,	130,	35,	45,	17,	135,	3,	'1716553312074-07.png',	2,	19,	'2024-05-24 12:21:52',	'2024-05-30 09:01:21');

DROP TABLE IF EXISTS `query_forms`;
CREATE TABLE `query_forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text,
  `status` varchar(10) DEFAULT NULL COMMENT 'Read, Unread',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `query_forms` (`id`, `full_name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`) VALUES
(1,	'Tanuj',	'tanuj1123@yopmail.com',	'91-8851791873',	NULL,	'Hii ...I am Tanuj..I have a query',	NULL,	'2024-05-07 06:27:31'),
(2,	'Tanuj',	'tanuj1232@yopmail.com',	'+91-8888888888',	NULL,	'',	NULL,	'2024-06-04 06:36:05'),
(3,	'Tanuj',	'tanuj12312@yopmail.com',	'+91-9999999999',	NULL,	'',	NULL,	'2024-06-04 06:41:47'),
(4,	'Tanuj',	'tanuj112113@yopmail.com',	'+91-9999999999',	NULL,	'',	NULL,	'2024-06-04 06:43:32'),
(5,	'Tanuj',	'tanuj11211de3@yopmail.com',	'+91-9999999999',	NULL,	'',	NULL,	'2024-06-04 06:51:13'),
(6,	'Tanuj',	'tanuj1238882@yopmail.com',	'+91-9999999999',	NULL,	'',	NULL,	'2024-06-06 09:34:38');

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `roles` (`id`, `name`, `permissions`, `status`, `created_at`, `updated_at`) VALUES
(3,	'Manage Category',	'[2]',	'active',	'2024-04-25 11:00:45',	'2024-04-25 11:00:45'),
(4,	'Get Category',	'[3]',	'active',	'2024-04-25 11:21:14',	'2024-04-25 11:21:14'),
(5,	'Manage Products',	'[4]',	'active',	'2024-04-25 11:26:38',	'2024-04-25 11:26:38'),
(6,	'Show products',	'[9]',	'active',	'2024-04-25 11:27:34',	'2024-04-25 11:27:34'),
(7,	'CEO',	'[2, 4, 7, 9, 11, 13, 15, 6, 29, 28, 26]',	'active',	'2024-04-27 13:07:21',	'2024-04-27 13:07:21'),
(9,	'Cataloging',	'[2, 4, 7, 15]',	'active',	'2024-05-02 09:29:15',	'2024-05-02 09:29:15'),
(10,	'test dashboard',	'[6]',	'active',	'2024-05-13 09:17:13',	'2024-05-13 09:17:13');

DROP TABLE IF EXISTS `search_parameters`;
CREATE TABLE `search_parameters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `search_params` varchar(255) NOT NULL,
  `search_count` bigint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `search_parameters` (`id`, `search_params`, `search_count`, `created_at`, `updated_at`) VALUES
(1,	'vuezen',	3,	'2024-05-09 10:22:41',	'2024-05-07 09:50:22'),
(2,	'men',	1,	'2024-05-07 10:39:02',	'2024-05-07 10:39:02'),
(3,	'white full rim square sunglasses',	1,	'2024-05-10 09:51:18',	'2024-05-10 09:51:18'),
(4,	'cat eye metal full rim sunglasses',	1,	'2024-05-10 11:13:26',	'2024-05-10 11:13:26'),
(5,	'brown tortoise rectangle sunglasses',	1,	'2024-05-10 12:21:59',	'2024-05-10 12:21:59'),
(6,	'full frame women metal fashion sunglasses',	1,	'2024-05-11 08:39:05',	'2024-05-11 08:39:05'),
(7,	'multicolor full-rim frame sunglasses',	4,	'2024-05-16 08:51:39',	'2024-05-11 09:03:14'),
(8,	'polycarbonate square lens full rim sunglasses',	2,	'2024-05-13 12:10:07',	'2024-05-11 09:45:21'),
(9,	'yellow shield demo lens sunglasses',	1,	'2024-05-11 10:04:36',	'2024-05-11 10:04:36'),
(10,	'blue shade stylish square frame sunglasses',	8,	'2024-05-16 11:32:23',	'2024-05-11 10:04:53'),
(11,	'blue shade lens metal frame sunglasses',	2,	'2024-05-16 09:08:02',	'2024-05-11 10:05:18'),
(12,	'blue cut demo lens rectangle sunglasses',	4,	'2024-05-16 09:03:42',	'2024-05-11 10:05:29'),
(13,	'black',	1,	'2024-05-13 04:49:49',	'2024-05-13 04:49:49'),
(14,	'bla',	1,	'2024-05-13 04:52:39',	'2024-05-13 04:52:39'),
(15,	'men\'s aviator metal sunglass',	1,	'2024-05-13 08:52:21',	'2024-05-13 08:52:21'),
(16,	'brown rectangle plastic sunglass',	2,	'2024-05-13 10:08:01',	'2024-05-13 10:08:01'),
(17,	'demo lens polycarbonate frame sunglasses',	1,	'2024-05-13 12:09:54',	'2024-05-13 12:09:54'),
(18,	'women demo lens butterfly sunglasses',	2,	'2024-05-14 09:58:46',	'2024-05-14 09:44:59'),
(19,	'demo lens rectangular brown sunglasses',	1,	'2024-05-14 10:05:07',	'2024-05-14 10:05:07'),
(20,	'crystal clear transparent oval sunglasses',	1,	'2024-05-14 10:08:51',	'2024-05-14 10:08:51'),
(21,	'dollger night vision sunglasses',	3,	'2024-05-16 11:46:48',	'2024-05-14 10:25:01'),
(22,	'yellow',	1,	'2024-05-15 12:40:38',	'2024-05-15 12:40:38'),
(23,	'aviator metal sunglasses',	1,	'2024-05-16 08:53:25',	'2024-05-16 08:53:25'),
(24,	'blue light blocking glasses',	1,	'2024-05-16 09:05:42',	'2024-05-16 09:05:42'),
(25,	'aviator full frame metal fashion sunglasses',	1,	'2024-05-16 09:40:35',	'2024-05-16 09:40:35'),
(26,	'white',	1,	'2024-05-16 11:38:22',	'2024-05-16 11:38:22'),
(27,	'full rim cat eye computer glasses',	4,	'2024-05-30 09:00:53',	'2024-05-16 11:52:25'),
(28,	'transparent full rim round glasses',	1,	'2024-05-16 11:54:16',	'2024-05-16 11:54:16'),
(29,	'full rim square frame sunglasses',	2,	'2024-05-22 07:23:56',	'2024-05-22 06:29:43'),
(30,	'half eye multicolor full rim glasses',	1,	'2024-05-22 12:26:15',	'2024-05-22 12:26:15');

DROP TABLE IF EXISTS `seo`;
CREATE TABLE `seo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(400) NOT NULL,
  `tags` json DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `site_title` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_mode` enum('production','development') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'development',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `shipment_data`;
CREATE TABLE `shipment_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_num` bigint unsigned NOT NULL DEFAULT '1',
  `shipment_length` double unsigned NOT NULL,
  `shipment_width` double unsigned NOT NULL,
  `shipment_height` double unsigned NOT NULL,
  `shipment_weight` double unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `shipment_data` (`id`, `product_num`, `shipment_length`, `shipment_width`, `shipment_height`, `shipment_weight`, `created_at`, `updated_at`) VALUES
(1,	1,	15.24,	6,	3.5,	0.2,	'2024-05-07 07:45:20',	'2024-05-10 07:09:07'),
(2,	2,	30.48,	40.64,	10.16,	0.3,	'2024-05-07 07:45:53',	'2024-04-25 12:51:49');

DROP TABLE IF EXISTS `shippings`;
CREATE TABLE `shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL,
  `product_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `ui_inner_sections`;
CREATE TABLE `ui_inner_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(199) NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `sub_category_id` bigint DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '#faebd7',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ui_inner_sections` (`id`, `slug`, `heading`, `description`, `category_id`, `sub_category_id`, `image`, `color`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(17,	'eyeglasses-men',	'Men Eyeglasses',	'Don\'t forget to use your 2024 vision benefits',	1,	1,	'1713959461197-men_eyeglasses.webp',	'#c0c0c0',	'active',	'',	'2024-04-24 11:51:01',	'2024-04-24 11:51:01'),
(18,	'eyeglasses-women',	'Women Eyeglasses',	'Don\'t forget to use your 2023 vision benefits',	1,	2,	'1713955630160-frame-you.webp',	'#f0f0f5',	'active',	NULL,	'2024-04-24 12:16:33',	'2024-04-24 12:16:33'),
(19,	'eyeglasses-kids',	'Kids Eyeglasses',	'Don\'t forget to use your 2024 vision benefits',	1,	3,	'1713959514903-men_eyeglasses.webp',	'#f8f7f7',	'active',	NULL,	'2024-04-24 12:18:23',	'2024-04-24 12:18:23'),
(20,	'sunglasses-men',	'Men Sunglasses',	'Don\'t forget to use your 2023 vision benefits',	2,	1,	'1713937446776-men-sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 05:44:06',	'2024-04-24 05:44:06'),
(21,	'sunglasses-women',	'Women Sunglasses',	'Don\'t forget to use your 2023 vision benefits',	2,	2,	'1713949397466-women_sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 09:03:17',	'2024-04-24 09:03:17'),
(22,	'Sunglasses-kids',	'Kids Sunglasses',	'Don\'t forget to use your 2023 vision benefits',	2,	3,	'1713943116361-Kids Sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 07:18:36',	'2024-04-24 07:18:36'),
(23,	'men-computer-glasses',	'Men Computer Glasses',	'Don\'t forget to use your 2024 vision benefits',	3,	1,	'1713937584737-Men-Computer-Glasses.webp',	'#d4e3fe',	'active',	NULL,	'2024-05-11 07:36:18',	'2024-05-11 07:36:18'),
(24,	'women-computer-glasses',	'Women Computer Glasses',	'Don\'t forget to use your 2023 vision benefits',	3,	2,	'1713943131419-women-Computer-Glasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 07:18:51',	'2024-04-24 07:18:51'),
(25,	'kids-computer-glasses',	'Kids Computer Glasses',	'Don\'t forget to use your 2023 vision benefits',	3,	3,	'1713943147689-kid-Computer-Glasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 07:19:07',	'2024-04-24 07:19:07'),
(29,	'offer-amzing',	'Student Men',	'Student best offer available here',	5,	1,	'1714198614546-student_men_sunglass.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-27 06:16:54',	'2024-04-27 06:16:54'),
(30,	'offer-amzing',	'Student Women',	'Travel Women',	5,	2,	'1713949025523-student_women_sunglasses.webp',	'#f4f2ef',	'active',	NULL,	'2024-04-24 08:57:05',	'2024-04-24 08:57:05'),
(31,	'students',	'Students',	'Travel Kids',	5,	3,	'1713949041804-student_kid_sunglasses.webp',	'#d58400',	'active',	NULL,	'2024-05-11 07:32:51',	'2024-05-11 07:32:51'),
(32,	'offer-amzing',	'Student men',	'Student best offer available here',	4,	1,	'1714200427782-student_men_sunglass.webp',	'#d4d4d4',	'active',	NULL,	'2024-04-27 06:47:07',	'2024-04-27 06:47:07'),
(33,	'offer-amzing',	'Student women',	'Student best offer available here',	4,	2,	'1714200516257-student_women_sunglasses.webp',	'#e6e6e6',	'active',	NULL,	'2024-04-27 06:48:36',	'2024-04-27 06:48:36'),
(34,	'offer-amzing',	'Student kids',	'Student best offer available here',	4,	3,	'1714200558143-student_kid_sunglasses.webp',	'#e6e6e6',	'active',	NULL,	'2024-04-27 06:49:18',	'2024-04-27 06:49:18');

DROP TABLE IF EXISTS `ui_section_cards`;
CREATE TABLE `ui_section_cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `ui_section_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ui_section_id` (`ui_section_id`),
  CONSTRAINT `ui_section_cards_ibfk_1` FOREIGN KEY (`ui_section_id`) REFERENCES `ui_sections` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `ui_sections`;
CREATE TABLE `ui_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(199) NOT NULL,
  `module_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` int DEFAULT NULL,
  `module_description` varchar(1000) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `ui_sections` (`id`, `slug`, `module_heading`, `title`, `position`, `module_description`, `image`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1,	'glasses/eyeglasses/1/women/2',	'Defining shape while maintaining it.',	'landing page',	1,	'Trendy, Stylish, and a Touch of Elegance',	'1713794822992-hero-img.webp',	'active',	'this is section for top section of landing page',	'2024-04-23 10:06:36',	'2024-04-23 10:06:36'),
(2,	'glasses/sunglasses/2/men/1',	'Frames that Frame You! ',	'landing page',	3,	'Explore our visionary eyewear collection in a world of style beyond sight. Step into the future of eyewear fashion where innovation meets elegance.',	'1713862023051-frame-you.webp',	'active',	'this is section for top section of landing page',	'2024-04-23 08:47:03',	'2024-04-23 08:47:03'),
(3,	'glasses/Students/4/Men/1',	'Hey Students!',	'Vuezen AR Try -on',	4,	'Study smart, save smarter with FREE EYEWEAR GLASSES',	'1715244600249-students.webp',	'active',	'This Section is for Students.',	'2024-05-09 08:50:00',	'2024-05-09 08:50:00'),
(4,	'glasses/eyeglasses/1/men/1',	'Explore Eyewear That Goes Beyond the Ordinary.',	'THE NEXT GENERATION OF SMARTGLASSESS AT 20% OFF update',	6,	'',	'1713958872713-Explore_eyewear_788x380.webp',	'active',	'remarksss update2',	'2024-04-24 11:41:12',	'2024-04-24 11:41:12'),
(6,	'landing-page',	'Behind Every Frame, There’s a Story to Unfold',	'landing-page',	2,	'Discover our eyewear with exquisite craftsmanship and passion that defines us.',	'',	'active',	'This is for the second section of landing page',	'2024-04-23 10:07:40',	'2024-04-23 10:07:40'),
(7,	'glasses/sunglasses/2/women/2',	'Fashion That Speaks',	'landing page',	5,	'Unveil your signature look with Vuezen',	'null',	'active',	'This is heading and subheading for sixth module of landing page',	'2024-04-23 10:11:43',	'2024-04-23 10:11:43');

DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `house_no` varchar(10) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_addresses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_addresses` (`id`, `user_id`, `full_name`, `country`, `state`, `city`, `zipcode`, `house_no`, `address`, `landmark`, `mobile`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1,	1,	'Vikas Jain',	'india',	'delhi',	'delhi',	'212222',	'k-22/1',	'street number 7, Bhajanpura',	'Hansraj Dairy',	'+91-9999515794',	1,	'active',	'2024-04-20 05:32:28',	'2024-05-10 05:38:44'),
(2,	2,	'Tanuj Kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-9999999999',	0,	'inactive',	'2024-04-23 14:25:16',	'2024-05-07 10:00:48'),
(3,	8,	'ayushi',	'india',	'up',	'noida',	'110053',	'1212',	'sector 20 A5 noida',	'',	'+91-9898989898',	1,	'active',	'2024-04-24 05:20:14',	'2024-04-24 05:29:46'),
(4,	11,	'laxman',	'india',	'New Delhi',	'New Delhi',	'110096',	'A-2',	'A-85, New Ashok Nagar',	'',	'+91-9576939654',	1,	'active',	'2024-04-24 12:55:03',	'2024-04-24 13:12:59'),
(5,	10,	'Tanuj kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-9999999999',	1,	'active',	'2024-04-25 11:46:36',	'2024-04-25 11:46:36'),
(6,	2,	'Tanuj Kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-8787878878',	1,	'active',	'2024-05-07 10:02:43',	'2024-05-07 10:02:43'),
(7,	25,	'Tanuj kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-9888888888',	1,	'active',	'2024-05-07 11:04:32',	'2024-05-07 11:04:32'),
(8,	18,	'ayushi',	'india',	'up',	'noida',	'110053',	'6878',	'sector 20 A5 noida',	'Laudantium necessit',	'+1-8881825795',	1,	'active',	'2024-05-07 11:53:10',	'2024-05-08 12:50:59'),
(9,	26,	'naveen kumar',	'india',	'Gautum Budh Nager',	'noida sector 4',	'201301',	' A63 ',	'Basement A-63',	'near HDFC bank',	'+91-9599753891',	1,	'active',	'2024-05-08 11:48:34',	'2024-05-08 11:48:34'),
(10,	27,	'Mehreen',	'india',	'UP',	'Noida',	'201301',	'A 63',	'A 63 Sector 4',	'Near HDFC Bank',	'+91-9210397905',	1,	'active',	'2024-05-08 12:52:44',	'2024-05-08 12:52:44'),
(11,	30,	'Mehreen',	'india',	'UP',	'Noida',	'201303',	'',	'B-2 Sector 4 Noida',	'HDFC Bank',	'+91-9210397905',	1,	'active',	'2024-05-11 06:51:08',	'2024-05-11 07:09:28'),
(12,	41,	'Tanuj kumar',	'india',	'Delhi',	'Delhi',	'110053',	'333',	'K-000,Street no 11',	'',	'+91-9999999999',	1,	'active',	'2024-06-06 09:50:58',	'2024-06-06 09:50:58');

DROP TABLE IF EXISTS `user_education_info`;
CREATE TABLE `user_education_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `university_name` varchar(100) NOT NULL,
  `used` tinyint NOT NULL DEFAULT '0',
  `id_card_img` varchar(1000) NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `university_id` bigint NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `approve` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_education_info` (`id`, `user_id`, `full_name`, `university_name`, `used`, `id_card_img`, `order_id`, `university_id`, `status`, `approve`, `created_at`, `updated_at`) VALUES
(1,	8,	'ayushi',	'rbs fghjkl',	0,	'1713938240215-template 7th.jpg',	NULL,	124567890,	'active',	0,	'2024-04-24 05:57:20',	'2024-04-24 05:57:20'),
(2,	10,	'Tanuj',	'Mewar Institute of management',	0,	'1713938913662-1713797062973-men-computer Glasses 200X200.webp',	NULL,	12345,	'active',	0,	'2024-04-24 06:08:33',	'2024-04-24 06:08:33'),
(3,	1,	'vikas jain',	'metameta',	0,	'1714029648728-Aviator.webp',	NULL,	2154,	'active',	0,	'2024-04-25 07:20:48',	'2024-04-25 07:20:48'),
(4,	18,	'ayush',	'rbsevbnm',	0,	'1715170297245-images (2).jpg',	NULL,	2345678976545678,	'active',	0,	'2024-05-08 12:11:37',	'2024-05-08 12:11:37'),
(5,	2,	'Tanuj',	'University name',	0,	'1717504470868-BinanaceIcon.png',	NULL,	2333333,	'active',	0,	'2024-06-04 12:34:31',	'2024-06-04 12:34:31'),
(6,	41,	'Tanuj',	'University name',	0,	'1717673853675-BinanaceIcon.png',	NULL,	233332323,	'active',	0,	'2024-06-06 11:37:33',	'2024-06-06 11:37:33');

DROP TABLE IF EXISTS `user_otps`;
CREATE TABLE `user_otps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `otp_code` varchar(6) NOT NULL,
  `creation_time` bigint DEFAULT NULL,
  `used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user_otps` (`id`, `user_id`, `otp_code`, `creation_time`, `used`) VALUES
(1,	2,	'5394',	1717490888280,	0),
(2,	9,	'1587',	1713939013674,	0),
(3,	8,	'9384',	1713940167681,	0),
(4,	14,	'6563',	1713954598959,	0),
(5,	25,	'3010',	1717491722093,	0),
(6,	10,	'8227',	1717491369699,	0),
(7,	38,	'4042',	1717482789714,	0);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `is_social_login` tinyint unsigned NOT NULL DEFAULT '0',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint DEFAULT '0',
  `country` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'IN',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`is_social_login`, `id`, `name`, `email`, `email_verified_at`, `phone`, `password`, `photo`, `role`, `provider`, `provider_id`, `status`, `remember_token`, `created_at`, `updated_at`, `is_verified`, `country`) VALUES
(0,	1,	'vikas jain',	'vikas@metaspacechain.com',	NULL,	'+91-9999515794',	'$2b$12$QsyQuwwudAA6cUQknxZDY.AFvvm4zZPPkWluubEUs1d6GLr5NRkQq',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-20 05:24:33',	'2024-04-20 05:24:33',	1,	'IN'),
(0,	2,	'Tanuj Kumar',	'tk923323@gmail.com',	NULL,	'+91-8851791874',	'$2b$12$QsyQuwwudAA6cUQknxZDY.utaRzvCqXz7VmXbXFvIpC5t4LVJy7vm',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 08:04:08',	'2024-04-23 08:04:08',	1,	'IN'),
(0,	3,	'Sharjah',	'sharjah@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 08:45:42',	'2024-04-23 08:45:42',	0,	'IN'),
(0,	4,	'Tanuj',	'sharjah1@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 09:46:35',	'2024-04-23 09:46:35',	0,	'IN'),
(0,	5,	'Tanuj',	'sharjah2@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 09:49:05',	'2024-04-23 09:49:05',	0,	'IN'),
(0,	6,	'Tanuj',	'sharjah3@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 09:53:52',	'2024-04-23 09:53:52',	0,	'IN'),
(0,	7,	'Tanuj',	'sharjah4@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.az/JvM0LOrL3M9brdoMwJCKH6eoUBV.',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-23 10:09:22',	'2024-04-23 10:09:22',	0,	'IN'),
(0,	8,	'vueas',	'vueas@yopmail.com',	NULL,	'+91-9898989898',	'$2b$12$QsyQuwwudAA6cUQknxZDY.b.xZ2rb4SLIfcWjj7Gcz/TmSaFBeZ6i',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 05:17:34',	'2024-04-24 05:17:34',	1,	'IN'),
(0,	9,	'Levi floxy',	'levi2floxy@gmail.com',	NULL,	'+91-9576939654',	'$2b$12$QsyQuwwudAA6cUQknxZDY.lfxfVYDBPqFXeYG3T804J4qhNrsGkJK',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 05:28:20',	'2024-04-24 05:28:20',	0,	'IN'),
(1,	10,	'Tanuj Kumar',	'tanuj@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 05:51:06',	'2024-04-24 05:51:06',	1,	'IN'),
(0,	11,	'kancha DMS',	'kanchadms@gmail.com',	NULL,	'+91-9576939654',	'$2b$12$QsyQuwwudAA6cUQknxZDY..3E6vNgGCvs2P73BGB0xGyC8OnRno46',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 06:33:00',	'2024-04-24 06:33:00',	1,	'IN'),
(0,	12,	'Test',	'subhan1111@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 08:46:19',	'2024-04-24 08:46:19',	0,	'IN'),
(1,	13,	'Anupam Kumar Singh',	'anupam@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 09:55:52',	'2024-04-24 09:55:52',	1,	'IN'),
(0,	14,	'durgesh',	'durgesh@bastionex.net',	NULL,	'+91-9557284086',	'$2b$12$QsyQuwwudAA6cUQknxZDY.Zd.wtPVlpo15U5c.GkRiMlBMo0qZJyC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:29:07',	'2024-04-24 10:29:07',	1,	'IN'),
(0,	15,	'louise',	'louise@smtp2go.com',	NULL,	'+91-9098765445',	'$2b$12$QsyQuwwudAA6cUQknxZDY.E7cevfRy2EnLI.eAjINQ4wd7ssfa5cC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:38:17',	'2024-04-24 10:38:17',	0,	'IN'),
(0,	16,	'testkoaukk',	'test-koaukk97b@srv1.mail-tester.com',	NULL,	'+91-3456789009',	'$2b$12$QsyQuwwudAA6cUQknxZDY.yzMTIw.ysFYTsc8xChJQnf.BWCbTOe2',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:44:55',	'2024-04-24 10:44:55',	0,	'IN'),
(1,	17,	'Ayushi Sharma',	'ayushis270201@gmail.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-24 10:55:22',	'2024-04-24 10:55:22',	1,	'IN'),
(1,	18,	'Ayushi Sharma',	'ayushi@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 04:44:13',	'2024-04-25 04:44:13',	1,	'IN'),
(0,	19,	'Subhan',	'subhan11112@yopmail.com',	NULL,	'+91-6888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 11:32:22',	'2024-04-25 11:32:22',	0,	'IN'),
(0,	20,	'Subhan',	'subhan111122@yopmail.com',	NULL,	'+91-8898989898',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 11:39:22',	'2024-04-25 11:39:22',	0,	'IN'),
(0,	21,	'Tannu',	'subhan1111222@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 11:42:55',	'2024-04-25 11:42:55',	0,	'IN'),
(0,	22,	'Subhan',	'subhan11112222@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-25 15:28:11',	'2024-04-25 15:28:11',	1,	'IN'),
(0,	23,	'dummy',	'dummy@gmail.com',	NULL,	'+91-9878667898',	'$2b$12$QsyQuwwudAA6cUQknxZDY.YSPsp6axh0RhEBIbl//G27dTkLl7mWy',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-30 16:46:50',	'2024-04-30 16:46:50',	0,	'IN'),
(0,	24,	'Ajeet',	'ajeetdesign@gmail.com',	NULL,	'+91-9350887236',	'$2b$12$QsyQuwwudAA6cUQknxZDY.f4AqkznmqXhcIdnZ4rkFaobxc3hYrXe',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-04-30 16:49:16',	'2024-04-30 16:49:16',	1,	'IN'),
(0,	25,	'Tanuj',	'tanuj1123@yopmail.com',	NULL,	'+91-8851791873',	'$2b$12$QsyQuwwudAA6cUQknxZDY.wtXk3NaE9ZqTruDluj3AwQK46JxJgPa',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-07 06:39:42',	'2024-05-07 06:39:42',	1,	'IN'),
(0,	26,	'Naveen',	'naveen1.kumar1995@gmail.com',	NULL,	'+91-9599753891',	'$2b$12$QsyQuwwudAA6cUQknxZDY.daa3IGOMwkkFlSfVQvjn3jFhOv3mcIu',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-08 11:40:54',	'2024-05-08 11:40:54',	1,	'IN'),
(1,	27,	'mehreen sheikh',	'mehreen@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-08 12:51:50',	'2024-05-08 12:51:50',	1,	'IN'),
(1,	28,	'Akash Kumar',	'akash@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-08 12:52:48',	'2024-05-08 12:52:48',	1,	'IN'),
(1,	29,	'poonam Singh',	'poonam@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-09 11:03:07',	'2024-05-09 11:03:07',	1,	'IN'),
(1,	30,	'Mehreen Sheikh',	'mehreen@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-11 06:45:02',	'2024-05-11 06:45:02',	1,	'IN'),
(1,	31,	'Priyanka Baloni',	'priyanka@bastionex.net',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-17 10:28:58',	'2024-05-17 10:28:58',	1,	'IN'),
(1,	32,	'Mehreen Mehreen',	'mehreen@sheluxe.io',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-05-23 10:12:05',	'2024-05-23 10:12:05',	1,	'IN'),
(0,	33,	'Tanuj',	'tanuj11233444412@yopmail.com',	NULL,	'+91-8877665544',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-03 12:53:47',	'2024-06-03 12:53:47',	0,	'IN'),
(0,	34,	'Tanuj',	'tanuj1123344441222@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-03 13:13:39',	'2024-06-03 13:13:39',	0,	'IN'),
(0,	35,	'Tanuj',	'tanuj112113@yopmail.com',	NULL,	'+91-9999999999',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-04 05:49:14',	'2024-06-04 05:49:14',	0,	'IN'),
(0,	36,	'Tanuj',	'tanuj11211377@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-04 06:03:37',	'2024-06-04 06:03:37',	0,	'IN'),
(0,	37,	'Tanuj',	'tanuj1121137s7@yopmail.com',	NULL,	'+91-9999999999',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-04 06:08:29',	'2024-06-04 06:08:29',	0,	'IN'),
(0,	38,	'Tnuj',	'tanuj1121137snvmncxbv7@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-04 06:11:51',	'2024-06-04 06:11:51',	0,	'IN'),
(0,	39,	'Tanuj',	'subhan@yopmail.com',	NULL,	'+91-8888888888',	'$2b$12$QsyQuwwudAA6cUQknxZDY.M6Qx9XdNnsEUR4Fy6BKSqz.w5e8kXEC',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-04 09:06:31',	'2024-06-04 09:06:31',	0,	'IN'),
(0,	40,	'Prabhat',	'prabhat@bastionex.net',	NULL,	'+91-9999999999',	'$2b$12$QsyQuwwudAA6cUQknxZDY.KSp4ZMu2EUrVszmmfzMs.AFSDvdhm5K',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-04 09:07:34',	'2024-06-04 09:07:34',	0,	'IN'),
(0,	41,	'Tanuj',	'tanuj1238882@yopmail.com',	NULL,	'+91-9999999999',	'$2b$12$QsyQuwwudAA6cUQknxZDY.umFge6.ehR3R8m4Hm57A6fIHUn8RsL6',	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-06 09:33:54',	'2024-06-06 09:33:54',	1,	'IN'),
(1,	42,	'Subhan Rehman',	'subhan@metaspacechain.com',	NULL,	NULL,	NULL,	NULL,	'user',	NULL,	NULL,	'active',	NULL,	'2024-06-13 12:17:00',	'2024-06-13 12:17:00',	1,	'IN');

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `remarks` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wishlists` (`id`, `product_id`, `user_id`, `remarks`, `status`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1,	1,	8,	NULL,	'active',	'2024-04-24 05:30:36',	'2024-04-24 05:30:36',	'2024-04-24 05:30:36'),
(5,	3,	11,	NULL,	'active',	'2024-04-24 06:57:06',	'2024-04-24 06:57:06',	'2024-04-24 06:57:06'),
(9,	6,	2,	NULL,	'active',	'2024-05-07 10:07:26',	'2024-05-07 10:07:26',	'2024-05-07 10:07:26');

DROP TABLE IF EXISTS `product_view5`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `product_view5` AS select `p`.`id` AS `id`,`p`.`title` AS `title`,`p`.`temple_length` AS `temple_length`,`p`.`bridge_width` AS `bridge_width`,`p`.`lens_height` AS `lens_height`,`p`.`lens_width` AS `lens_width`,`p`.`frame_width` AS `frame_width`,`p`.`sku` AS `sku`,`p`.`slug` AS `slug`,`p`.`summary` AS `summary`,`p`.`description` AS `description`,`p`.`size_id` AS `size_id`,`p`.`weight_group_id` AS `weight_group_id`,`p`.`condition` AS `product_condition`,`p`.`gender` AS `gender`,`p`.`model_number` AS `model_number`,`p`.`frame_type_id` AS `frame_type_id`,`p`.`status` AS `status`,`p`.`shape_id` AS `shape_id`,`p`.`material_id` AS `material_id`,`p`.`thumbnail_img` AS `thumbnail_img`,`p`.`created_at` AS `created_at`,`p`.`is_student` AS `is_student`,`p`.`cat_id` AS `cat_id`,group_concat(distinct `pv`.`color_id` separator ',') AS `colors`,json_arrayagg(json_object('product_id',`pv`.`product_id`,'variant_id',`pv`.`variant_id`,'code',`pv`.`code`,'sku',`pv`.`code`,'variant_name',`p`.`title`,'size_id',`p`.`size_id`,'variant_price_details',`pv`.`variant_price_details`,'thumbnail_url',`pv`.`thumbnail_url`,'thumbnail_images',`pi`.`images`,'color_id',`pv`.`color_id`)) AS `variants`,ifnull((select json_object('id',`seo`.`id`,'meta_title',`seo`.`meta_title`,'meta_description',`seo`.`meta_description`,'tags',`seo`.`tags`) from `seo` where (`seo`.`product_id` = `p`.`id`) limit 1),json_object()) AS `seo_data` from ((`products` `p` left join `product_variants` `pv` on((`p`.`id` = `pv`.`product_id`))) left join `product_images` `pi` on((`pv`.`variant_id` = `pi`.`variant_id`))) where ((`p`.`status` = 'active') and (`pv`.`status` = 'active')) group by `p`.`id`;

-- 2024-06-24 05:38:27
