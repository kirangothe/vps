SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `version` varchar(191) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `author` varchar(191) DEFAULT NULL,
  `files` longtext DEFAULT NULL,
  `purchase_username` varchar(191) DEFAULT NULL,
  `purchase_code` varchar(191) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `checkin_time` varchar(191) DEFAULT NULL,
  `checkout_time` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backend_menus`
--

CREATE TABLE `backend_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `link` varchar(191) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backend_menus`
--

INSERT INTO `backend_menus` (`id`, `name`, `link`, `icon`, `status`, `parent_id`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'dashboard', 'fas fa-laptop', 1, 0, 9000, NULL, NULL),
(2, 'profile', 'profile', 'far fa-user', 1, 0, 8900, NULL, NULL),
(3, 'departments', 'departments', 'fas fa-building', 1, 0, 8800, NULL, NULL),
(4, 'designations', 'designations', 'fas fa-layer-group', 1, 0, 8700, NULL, NULL),
(5, 'employees', 'employees', 'fas fa-user-secret', 1, 0, 8600, NULL, NULL),
(6, 'visitors', 'visitors', 'fas fa-walking', 1, 0, 8600, NULL, NULL),
(7, 'pre_registers', 'pre-registers', 'fas fa-user-friends', 1, 0, 8600, NULL, NULL),
(8, 'attendance', 'attendance', 'fas fa-clock', 1, 0, 8600, NULL, NULL),
(9, 'report', '#', 'fas fa-archive', 1, 0, 8500, NULL, NULL),
(10, 'visitor_report', 'admin-visitor-report', 'fas fa-list-alt', 1, 9, 74, NULL, NULL),
(11, 'pre_registers_report', 'admin-pre-registers-report', 'fas fa-list-alt', 1, 9, 74, NULL, NULL),
(12, 'attendance_report', 'attendance-report', 'fas fa-clock', 1, 9, 74, NULL, NULL),
(13, 'administrators', '#', 'fas fa-id-card ', 1, 0, 81, NULL, NULL),
(14, 'users', 'adminusers', 'fas fa-users', 1, 13, 8400, NULL, NULL),
(15, 'role', 'role', 'fa fa-star', 1, 13, 2400, NULL, NULL),
(16, 'language', 'language', 'fas fa-globe', 1, 13, 9000, NULL, NULL),
(17, 'settings', 'setting', 'fas fa-cogs', 1, 0, 2400, NULL, NULL),
(18, 'addons', 'addons', 'fa fa-crosshairs', 1, 13, 3000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reg_no` varchar(191) NOT NULL,
  `purpose` longtext NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `is_pre_register` tinyint(1) NOT NULL,
  `is_group_enabled` tinyint(3) UNSIGNED NOT NULL,
  `invitation_people_count` int(11) NOT NULL DEFAULT 0,
  `accept_invitation_count` int(11) NOT NULL DEFAULT 0,
  `attendee_count` int(11) NOT NULL DEFAULT 0,
  `start_at` datetime NOT NULL,
  `end_at` datetime NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Operation', 5, NULL, NULL),
(2, 'IT', 5, NULL, NULL),
(3, 'Marketing', 5, NULL, NULL),
(4, 'Service', 5, NULL, NULL),
(5, 'Customer Service', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `department_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HR Director', 1, 5, NULL, NULL),
(2, 'Chief Human Resource Officer', 1, 5, NULL, NULL),
(3, 'General HR Manager', 1, 5, NULL, NULL),
(4, 'Production Manager', 2, 5, NULL, NULL),
(5, 'Data Entry', 2, 5, NULL, NULL),
(7, 'test', 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `nickname` varchar(191) DEFAULT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL,
  `official_identification_number` varchar(255) DEFAULT NULL,
  `date_of_joining` date NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `designation_id` bigint(20) UNSIGNED NOT NULL,
  `about` longtext DEFAULT NULL,
  `creator_type` varchar(191) NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `editor_type` varchar(191) NOT NULL,
  `editor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `phone`, `nickname`, `display_name`, `gender`, `official_identification_number`, `date_of_joining`, `status`, `user_id`, `department_id`, `designation_id`, `about`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'HR', 'Head', '123456789', NULL, NULL, 5, NULL, '2023-02-08', 5, 2, 1, 3, NULL, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-16 16:26:15', '2023-02-16 16:26:15'),
(2, 'Any', 'One', '9841523689', NULL, NULL, 10, NULL, '2022-01-12', 5, 3, 2, 5, NULL, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-22 10:37:06', '2023-02-22 10:37:06'),
(3, 'Bijay', 'Tamrakar', '9851225392', NULL, NULL, 5, NULL, '2020-02-10', 5, 4, 2, 4, NULL, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-22 10:41:00', '2023-02-22 10:41:00'),
(4, 'bipin', 'poudel', '23123', NULL, NULL, 5, NULL, '2023-02-06', 5, 5, 2, 5, NULL, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 09:06:57', '2023-02-23 09:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `checkin_at` datetime DEFAULT NULL,
  `checkout_at` datetime DEFAULT NULL,
  `iuid` varchar(191) DEFAULT NULL,
  `activation_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `flag_icon` varchar(191) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `flag_icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '', 10, NULL, '2023-02-23 03:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'validation', 'custom.purpose.required', NULL, '2023-02-16 17:19:54', '2023-02-16 17:19:54'),
(2, 0, 'en', 'validation', 'values.purpose.', NULL, '2023-02-16 17:19:54', '2023-02-16 17:19:54'),
(3, 0, 'en', 'statuses', '1', NULL, '2023-02-19 06:36:19', '2023-02-19 06:36:19'),
(4, 0, 'en', 'visitor', 'employee_phone', NULL, '2023-02-19 12:43:26', '2023-02-19 12:43:26'),
(5, 0, 'en', 'validation', 'custom.first_name.required', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(6, 0, 'en', 'validation', 'values.first_name.', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(7, 0, 'en', 'validation', 'custom.last_name.required', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(8, 0, 'en', 'validation', 'values.last_name.', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(9, 0, 'en', 'validation', 'custom.phone.required', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(10, 0, 'en', 'validation', 'values.phone.', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(11, 0, 'en', 'validation', 'custom.employee_id.required', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(12, 0, 'en', 'validation', 'values.employee_id.', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(13, 0, 'en', 'validation', 'custom.national_identification_no.required', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(14, 0, 'en', 'validation', 'values.national_identification_no.', NULL, '2023-02-19 14:20:07', '2023-02-19 14:20:07'),
(15, 0, 'en', 'validation', 'custom.employee_phone.required', NULL, '2023-02-19 14:26:58', '2023-02-19 14:26:58'),
(16, 0, 'en', 'validation', 'values.employee_phone.', NULL, '2023-02-19 14:26:58', '2023-02-19 14:26:58'),
(17, 0, 'en', 'validation', 'custom.photo.required', NULL, '2023-02-21 03:31:44', '2023-02-21 03:31:44'),
(18, 0, 'en', 'validation', 'values.photo.', NULL, '2023-02-21 03:31:44', '2023-02-21 03:31:44'),
(19, 0, 'en', 'visitor_report', 'status', NULL, '2023-02-21 06:43:33', '2023-02-21 06:43:33'),
(20, 0, 'en', 'administrator', 'Administrators', NULL, '2023-02-22 10:34:16', '2023-02-22 10:34:16'),
(21, 0, 'en', 'validation', 'custom.phone.unique', NULL, '2023-02-22 10:39:59', '2023-02-22 10:39:59'),
(22, 0, 'en', 'validation', 'values.phone.9851225392', NULL, '2023-02-22 10:39:59', '2023-02-22 10:39:59'),
(23, 0, 'en', 'validation', 'custom.designation_id.required', NULL, '2023-02-22 10:39:59', '2023-02-22 10:39:59'),
(24, 0, 'en', 'validation', 'values.designation_id.', NULL, '2023-02-22 10:39:59', '2023-02-22 10:39:59'),
(25, 0, 'en', 'frontend', 'rontend.email', NULL, '2023-02-22 14:41:04', '2023-02-22 14:41:04'),
(26, 0, 'en', 'frontend', 'frontend.email', NULL, '2023-02-22 14:41:25', '2023-02-22 14:41:25'),
(27, 0, 'en', 'validation', 'custom.email.unique', NULL, '2023-02-23 05:51:17', '2023-02-23 05:51:17'),
(28, 0, 'en', 'validation', 'values.email.will@gmail.com', NULL, '2023-02-23 05:51:17', '2023-02-23 05:51:17'),
(29, 0, 'en', 'validation', 'values.phone.985125392', NULL, '2023-02-23 09:26:12', '2023-02-23 09:26:12'),
(30, 0, 'en', 'validation', 'values.email.ezbijay@gmail.com', NULL, '2023-02-24 08:16:15', '2023-02-24 08:16:15'),
(31, 0, 'en', 'validation', 'values.email.admin@example.com', NULL, '2023-02-24 08:17:01', '2023-02-24 08:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `conversions_disk` varchar(191) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\VisitingDetails', 1, 'c18cff7a-798a-47ff-acb3-2807c9b9d0b9', 'visitor', 'bsBHEgxUD8', 'bsBHEgxUD8.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-16 16:27:26', '2023-02-16 16:27:26'),
(2, 'App\\Models\\VisitingDetails', 3, '82278f0f-8e10-40f2-bec8-5ccd77aaacd4', 'visitor', '4hWiTf92ko', '4hWiTf92ko.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-19 15:59:07', '2023-02-19 15:59:07'),
(3, 'App\\Models\\VisitingDetails', 4, '9f75209a-734e-4849-ae00-b85ceebc7947', 'visitor', 'ltAqDpjfEQ', 'ltAqDpjfEQ.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-19 16:04:58', '2023-02-19 16:04:58'),
(4, 'App\\Models\\VisitingDetails', 5, 'b85d7e41-c04a-4683-8751-9a01513b8be9', 'visitor', 'zrV7CGGYXw', 'zrV7CGGYXw.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-19 16:06:44', '2023-02-19 16:06:44'),
(5, 'App\\Models\\VisitingDetails', 1, 'dc141622-9ef2-4c2f-9d19-cbbb42a1909d', 'visitor', 'pa2Nz9UZoN', 'pa2Nz9UZoN.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 2, '2023-02-21 03:41:19', '2023-02-21 03:41:19'),
(6, 'App\\Models\\VisitingDetails', 2, 'ba012402-4461-4d02-aa0d-76524b92724b', 'visitor', 'HjmyPawoKG', 'HjmyPawoKG.png', 'image/png', 'public', 'public', 35809, '[]', '[]', '[]', '[]', 1, '2023-02-23 05:01:48', '2023-02-23 05:01:48'),
(7, 'App\\Models\\VisitingDetails', 3, '8a39aaff-d224-4814-926b-692a534367ca', 'visitor', '28OdffhGRN', '28OdffhGRN.png', 'image/png', 'public', 'public', 35809, '[]', '[]', '[]', '[]', 2, '2023-02-23 05:03:34', '2023-02-23 05:03:34'),
(8, 'App\\Models\\VisitingDetails', 4, 'ce623f40-81c1-4acc-9ce4-36acca5f1acb', 'visitor', 't3JudUHxp1', 't3JudUHxp1.png', 'image/png', 'public', 'public', 35809, '[]', '[]', '[]', '[]', 2, '2023-02-23 05:30:56', '2023-02-23 05:30:56'),
(9, 'App\\Models\\VisitingDetails', 5, '5a8380c6-3322-4e52-ae8a-ea25a586887f', 'visitor', 'B88oXsIEIJ', 'B88oXsIEIJ.png', 'image/png', 'public', 'public', 35809, '[]', '[]', '[]', '[]', 2, '2023-02-23 05:54:11', '2023-02-23 05:54:11'),
(10, 'App\\Models\\VisitingDetails', 6, 'ac4e087b-b5cf-4b87-9fe1-b3d317de0275', 'visitor', '2Ewn3Zuxpr', '2Ewn3Zuxpr.png', 'image/png', 'public', 'public', 35809, '[]', '[]', '[]', '[]', 1, '2023-02-23 06:19:20', '2023-02-23 06:19:20'),
(11, 'App\\Models\\VisitingDetails', 7, '8165c3bc-5cf1-4c65-b6a6-6a29d3ef3a49', 'visitor', 'J3r2jAMa3h', 'J3r2jAMa3h.png', 'image/png', 'public', 'public', 1190338, '[]', '[]', '[]', '[]', 1, '2023-02-23 06:51:05', '2023-02-23 06:51:05'),
(12, 'App\\Models\\VisitingDetails', 8, '498dbe01-e6ea-4e5f-aa45-5077d8474724', 'visitor', 'bDK0BGBsJ4', 'bDK0BGBsJ4.png', 'image/png', 'public', 'public', 35809, '[]', '[]', '[]', '[]', 1, '2023-02-23 06:58:03', '2023-02-23 06:58:03'),
(13, 'App\\Models\\VisitingDetails', 9, 'ccfa4e61-1312-41d7-aed6-2fb92e53b8f3', 'visitor', '71ATZo07bH', '71ATZo07bH.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-23 07:24:28', '2023-02-23 07:24:28'),
(14, 'App\\Models\\VisitingDetails', 10, 'e45f2e99-83dd-4da1-b900-4c64ebd7df2a', 'visitor', 'P18ABlyAwY', 'P18ABlyAwY.png', 'image/png', 'public', 'public', 1322031, '[]', '[]', '[]', '[]', 1, '2023-02-23 09:20:45', '2023-02-23 09:20:45'),
(15, 'App\\Models\\VisitingDetails', 11, 'cb3cc148-d901-404c-a704-1bb81f459aea', 'visitor', '3eWbyYpK7s', '3eWbyYpK7s.png', 'image/png', 'public', 'public', 1127212, '[]', '[]', '[]', '[]', 1, '2023-02-24 08:21:20', '2023-02-24 08:21:20'),
(16, 'App\\Models\\VisitingDetails', 12, '3cc978aa-2f26-4b52-8066-84aa8716c858', 'visitor', 'cc7aGiEes3', 'cc7aGiEes3.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-24 09:05:33', '2023-02-24 09:05:33'),
(17, 'App\\Models\\VisitingDetails', 13, 'a9bea287-bb1f-41aa-95db-5c162aed6875', 'visitor', 'b3fhpLfOlV', 'b3fhpLfOlV.png', 'image/png', 'public', 'public', 35815, '[]', '[]', '[]', '[]', 1, '2023-02-26 07:11:48', '2023-02-26 07:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_08_24_000000_create_settings_table', 1),
(5, '2018_10_25_043002_create_pre_registers_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2020_04_06_130203_create_designations_table', 1),
(9, '2020_04_06_130245_create_departments_table', 1),
(10, '2020_04_06_130356_create_employees_table', 1),
(11, '2020_04_06_130500_create_attendances_table', 1),
(12, '2020_04_06_130652_create_visitors_table', 1),
(13, '2020_04_06_130653_create_bookings_table', 1),
(14, '2020_04_06_130653_create_visiting_details_table', 1),
(15, '2020_04_06_130654_create_invitations_table', 1),
(16, '2020_04_16_113855_create_jobs_table', 1),
(17, '2020_05_07_111209_create_notifications_table', 1),
(18, '2020_09_10_080029_create_backend_menus_table', 1),
(19, '2020_09_28_181710_alter_settings_table', 1),
(20, '2020_09_28_181710_alter_visitors_table', 1),
(21, '2022_02_08_171439_create_languages_table', 1),
(22, '2022_02_10_120412_create_addons_table', 1),
(23, '2022_05_26_155053_add_web_token_to_users', 1),
(24, '2022_08_20_105701_add_barcode_to_visitors_table', 1),
(25, '2022_08_21_063748_add_disable_to_visiting_details_table', 1),
(26, '2022_09_13_053915_create_permission_tables', 1),
(27, '2022_09_13_065241_create_media_table', 1),
(29, '2023_02_19_215613_add_identification_type_to_visitors_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 1),
(35, 'App\\Models\\User', 1),
(36, 'App\\Models\\User', 1),
(37, 'App\\Models\\User', 1),
(38, 'App\\Models\\User', 1),
(39, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 1),
(41, 'App\\Models\\User', 1),
(42, 'App\\Models\\User', 1),
(43, 'App\\Models\\User', 1),
(44, 'App\\Models\\User', 1),
(45, 'App\\Models\\User', 1),
(46, 'App\\Models\\User', 1),
(47, 'App\\Models\\User', 1),
(48, 'App\\Models\\User', 1),
(49, 'App\\Models\\User', 1),
(50, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('007161cf-281b-4385-887d-69b50d9c52dc', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 8, '[]', NULL, '2023-02-26 08:03:22', '2023-02-26 08:03:22'),
('1179f695-a262-4942-ba31-5915d4d92833', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-23 05:03:34', '2023-02-23 05:03:34'),
('13888d8c-964d-4ff2-9b9c-daabd3421262', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 16, '[]', NULL, '2023-02-26 07:24:13', '2023-02-26 07:24:13'),
('14891614-fe99-462d-8346-a8818a663d1b', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-23 05:30:56', '2023-02-23 05:30:56'),
('1c3ee104-8a04-4ca0-bb72-40576d36ba4d', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-23 06:58:03', '2023-02-23 06:58:03'),
('21173a2f-d28a-449f-b0ee-fa39f284a141', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 12, '[]', NULL, '2023-02-23 09:50:43', '2023-02-23 09:50:43'),
('21c4731b-b738-4a80-808d-4029ecf9e895', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 16, '[]', NULL, '2023-02-26 07:12:29', '2023-02-26 07:12:29'),
('23debe5f-7c0d-48c3-ab20-f1adad4545bd', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 10, '[]', NULL, '2023-02-23 09:10:46', '2023-02-23 09:10:46'),
('2edfd1cd-fe64-4298-ba5c-7b4c7ade9689', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 16, '[]', NULL, '2023-02-26 07:33:12', '2023-02-26 07:33:12'),
('30060114-b9ff-4ed5-85da-73f78cee0b28', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-23 05:54:11', '2023-02-23 05:54:11'),
('3781cf4e-a282-4eb3-b1c2-8189ada90037', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 4, '[]', NULL, '2023-02-24 08:21:20', '2023-02-24 08:21:20'),
('39ca5e5e-0b5a-4ad4-9511-510ab1ecc824', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 4, '[]', NULL, '2023-02-23 06:51:05', '2023-02-23 06:51:05'),
('39fd82f0-d6e2-485c-bb96-55dd5b0ad8b1', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 10, '[]', NULL, '2023-02-27 05:31:06', '2023-02-27 05:31:06'),
('3d66437f-b7fe-4fa0-bcee-8cc6c0408805', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 12, '[]', NULL, '2023-02-23 10:09:28', '2023-02-23 10:09:28'),
('3eb29bae-f0ee-4a61-9427-0af286908c51', 'App\\Notifications\\SendInvitationToVisitors', 'App\\Models\\Visitor', 5, '[]', NULL, '2023-02-23 05:24:30', '2023-02-23 05:24:30'),
('401a81fd-7586-42dc-986f-385e0ec44a6f', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-26 07:11:48', '2023-02-26 07:11:48'),
('47284060-5421-4155-a983-1d8a62010a82', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 15, '[]', NULL, '2023-02-24 09:21:24', '2023-02-24 09:21:24'),
('4bf1a8cc-e608-4e37-94b2-3437976d5238', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 3, '[]', NULL, '2023-02-23 05:04:30', '2023-02-23 05:04:30'),
('4f6f69f4-e094-40f4-9ad6-6d41b268957f', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 16, '[]', NULL, '2023-02-27 05:33:51', '2023-02-27 05:33:51'),
('54685f94-fae1-47cb-b222-b4c47d12b713', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 2, '[]', NULL, '2023-02-23 05:06:06', '2023-02-23 05:06:06'),
('566c36f9-71f9-41e3-841d-2e0359be1933', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 1, '[]', NULL, '2023-02-21 03:56:50', '2023-02-21 03:56:50'),
('56b5217f-b79f-4bba-a708-35a3a9bc18b4', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-23 05:01:48', '2023-02-23 05:01:48'),
('6304927b-c009-4d63-8df4-99bf956da9ae', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 4, '[]', NULL, '2023-02-23 07:24:28', '2023-02-23 07:24:28'),
('641f3e18-5dec-422b-8570-b240b2839258', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-23 06:19:20', '2023-02-23 06:19:20'),
('759159b8-7e10-47f2-b99d-92d89d9f2d28', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 15, '[]', NULL, '2023-02-24 09:21:20', '2023-02-24 09:21:20'),
('792e047a-8a3c-4a41-9933-57de8dd067bb', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 5, '[]', NULL, '2023-02-20 14:12:59', '2023-02-20 14:12:59'),
('85987248-e7a3-4732-94ed-a801fdae6c95', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 6, '[]', NULL, '2023-02-23 12:33:31', '2023-02-23 12:33:31'),
('88e85b7d-917d-48ee-a895-ad0dc669a6a8', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 1, '[]', NULL, '2023-02-16 17:49:11', '2023-02-16 17:49:11'),
('8fe21654-081e-4949-9179-ebea19895cdc', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 8, '[]', NULL, '2023-02-24 08:34:40', '2023-02-24 08:34:40'),
('94431427-05e6-4ea2-b40b-29454aad7c5b', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 1, '[]', NULL, '2023-02-16 17:49:05', '2023-02-16 17:49:05'),
('96ab0966-7e43-4bf6-96ba-051f539c58fc', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 7, '[]', NULL, '2023-02-23 12:33:21', '2023-02-23 12:33:21'),
('98ec48a3-e447-48e1-9019-0f08cb6f7856', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-16 16:27:27', '2023-02-16 16:27:27'),
('a075d716-aa83-4e99-85bf-6797283477e3', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 4, '[]', NULL, '2023-02-24 09:05:33', '2023-02-24 09:05:33'),
('a1d1eee3-1190-46eb-9a58-616cacb369d4', 'App\\Notifications\\SendInvitationToVisitors', 'App\\Models\\Visitor', 13, '[]', NULL, '2023-02-23 09:27:13', '2023-02-23 09:27:13'),
('a29d6a5f-00ba-44cd-90c5-9f311ef31149', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-19 16:06:45', '2023-02-19 16:06:45'),
('b3933f4b-6b1f-46a0-8662-2a4e97fd607d', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 1, '[]', NULL, '2023-02-16 16:52:53', '2023-02-16 16:52:53'),
('b8f2e4f4-f413-4c57-9e12-595d78f3069c', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 16, '[]', NULL, '2023-02-26 07:48:24', '2023-02-26 07:48:24'),
('c6abb71c-d265-4b01-808c-173894f0e6c3', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 9, '[]', NULL, '2023-02-23 06:55:26', '2023-02-23 06:55:26'),
('c6cc84c9-5942-4b98-abb0-1b730fd73ece', 'App\\Notifications\\SendInvitationToVisitors', 'App\\Models\\Visitor', 4, '[]', NULL, '2023-02-23 05:21:27', '2023-02-23 05:21:27'),
('cb40eee1-6c27-4835-85c0-d70477c2543a', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 4, '[]', NULL, '2023-02-23 09:20:45', '2023-02-23 09:20:45'),
('d030fa5b-60d3-455d-b41c-ec9e78817fae', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 15, '[]', NULL, '2023-02-24 09:22:10', '2023-02-24 09:22:10'),
('d4a1bbfe-8997-4c77-9677-d2be641bb145', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 12, '[]', NULL, '2023-02-23 10:09:41', '2023-02-23 10:09:41'),
('d8034966-8532-4670-86a4-575951461cc8', 'App\\Notifications\\SendInvitationToVisitors', 'App\\Models\\Visitor', 13, '[]', NULL, '2023-02-23 09:26:19', '2023-02-23 09:26:19'),
('d99b0aef-50a9-47ba-aeba-fec8b02fabad', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 15, '[]', NULL, '2023-02-24 09:21:37', '2023-02-24 09:21:37'),
('e7cc601e-ddf2-4cf9-9a18-4422b0308204', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-21 03:41:20', '2023-02-21 03:41:20'),
('e97c9b3b-e928-4bfd-b672-e0c93248e7c1', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 14, '[]', NULL, '2023-02-24 08:32:34', '2023-02-24 08:32:34'),
('ee8b1e8f-ebbc-43a4-a21b-583d5bb95d4b', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-16 17:20:09', '2023-02-16 17:20:09'),
('f6236213-5236-46d9-b0fd-afa7028889ad', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 6, '[]', NULL, '2023-02-26 07:59:52', '2023-02-26 07:59:52'),
('fd784b7b-152d-4fe7-b295-d80197eeb072', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 11, '[]', NULL, '2023-02-23 09:49:15', '2023-02-23 09:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', NULL, NULL),
(2, 'profile', 'web', NULL, NULL),
(3, 'designations', 'web', NULL, NULL),
(4, 'designations_create', 'web', NULL, NULL),
(5, 'designations_edit', 'web', NULL, NULL),
(6, 'designations_delete', 'web', NULL, NULL),
(7, 'designations_show', 'web', NULL, NULL),
(8, 'departments', 'web', NULL, NULL),
(9, 'departments_create', 'web', NULL, NULL),
(10, 'departments_edit', 'web', NULL, NULL),
(11, 'departments_delete', 'web', NULL, NULL),
(12, 'departments_show', 'web', NULL, NULL),
(13, 'employees', 'web', NULL, NULL),
(14, 'employees_create', 'web', NULL, NULL),
(15, 'employees_edit', 'web', NULL, NULL),
(16, 'employees_delete', 'web', NULL, NULL),
(17, 'employees_show', 'web', NULL, NULL),
(18, 'visitors', 'web', NULL, NULL),
(19, 'visitors_create', 'web', NULL, NULL),
(20, 'visitors_edit', 'web', NULL, NULL),
(21, 'visitors_delete', 'web', NULL, NULL),
(22, 'visitors_show', 'web', NULL, NULL),
(23, 'pre-registers', 'web', NULL, NULL),
(24, 'pre-registers_create', 'web', NULL, NULL),
(25, 'pre-registers_edit', 'web', NULL, NULL),
(26, 'pre-registers_delete', 'web', NULL, NULL),
(27, 'pre-registers_show', 'web', NULL, NULL),
(28, 'adminusers', 'web', NULL, NULL),
(29, 'adminusers_create', 'web', NULL, NULL),
(30, 'adminusers_edit', 'web', NULL, NULL),
(31, 'adminusers_delete', 'web', NULL, NULL),
(32, 'adminusers_show', 'web', NULL, NULL),
(33, 'role', 'web', NULL, NULL),
(34, 'role_create', 'web', NULL, NULL),
(35, 'role_edit', 'web', NULL, NULL),
(36, 'role_delete', 'web', NULL, NULL),
(37, 'role_show', 'web', NULL, NULL),
(38, 'setting', 'web', NULL, NULL),
(39, 'attendance', 'web', NULL, NULL),
(40, 'attendance_delete', 'web', NULL, NULL),
(41, 'admin-visitor-report', 'web', NULL, NULL),
(42, 'admin-pre-registers-report', 'web', NULL, NULL),
(43, 'attendance-report', 'web', NULL, NULL),
(44, 'language', 'web', NULL, NULL),
(45, 'language_create', 'web', NULL, NULL),
(46, 'language_edit', 'web', NULL, NULL),
(47, 'language_delete', 'web', NULL, NULL),
(48, 'addons', 'web', NULL, NULL),
(49, 'addons_create', 'web', NULL, NULL),
(50, 'addons_delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pre_registers`
--

CREATE TABLE `pre_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `expected_date` date NOT NULL,
  `expected_time` time NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(191) DEFAULT NULL,
  `creator_type` varchar(191) NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `editor_type` varchar(191) NOT NULL,
  `editor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pre_registers`
--

INSERT INTO `pre_registers` (`id`, `expected_date`, `expected_time`, `employee_id`, `visitor_id`, `comment`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-21', '09:30:00', 1, 1, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-21 03:41:20', '2023-02-21 03:41:20'),
(2, '2023-02-24', '13:00:00', 1, 2, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 05:01:48', '2023-02-23 05:01:48'),
(3, '2023-02-27', '13:15:00', 1, 3, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 05:03:34', '2023-02-23 05:03:34'),
(4, '2023-02-24', '13:30:00', 2, 4, 'test', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 05:21:27', '2023-02-23 05:21:27'),
(5, '2023-02-25', '13:23:00', 2, 5, 'test', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:24:30', '2023-02-23 05:24:30'),
(6, '2023-02-24', '13:30:00', 1, 6, ' ', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:30:56', '2023-02-23 05:30:56'),
(7, '2023-02-24', '14:00:00', 1, 7, ' ', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:54:11', '2023-02-23 05:54:11'),
(8, '2023-02-23', '15:00:00', 1, 9, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 06:51:05', '2023-02-23 06:51:05'),
(9, '2023-02-24', '15:00:00', 1, 10, ' ', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 06:58:03', '2023-02-23 06:58:03'),
(10, '2023-02-23', '16:30:00', 1, 11, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 07:24:28', '2023-02-23 07:24:28'),
(11, '2023-02-23', '04:45:00', 1, 12, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 09:20:45', '2023-02-23 09:20:45'),
(12, '2023-02-23', '03:45:00', 1, 13, 'sfaf', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 09:26:19', '2023-02-23 09:27:13'),
(13, '2023-02-24', '18:15:00', 1, 14, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-24 08:21:20', '2023-02-24 08:21:20'),
(14, '2023-02-24', '17:00:00', 1, 15, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-24 09:05:33', '2023-02-24 09:05:33'),
(15, '2023-02-27', '15:15:00', 1, 16, ' ', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-26 07:11:48', '2023-02-26 07:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-02-15 16:50:47', '2023-02-15 16:50:47'),
(2, 'Employee', 'web', '2023-02-15 16:50:47', '2023-02-15 16:50:47'),
(3, 'Reception', 'web', '2023-02-15 16:50:47', '2023-02-15 16:50:47'),
(4, 'Gatekeeper', 'web', '2023-02-15 16:50:47', '2023-02-15 16:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 3),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(20, 4),
(21, 1),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'site_name', 'Visitor Pass'),
(2, 'site_email', 'info@intellisoftnepal.com'),
(3, 'site_phone_number', '+97701777664206'),
(4, 'site_logo', 'logo.png'),
(5, 'site_footer', '@ All Rights Reserved'),
(6, 'site_address', 'Ktm, Nepal'),
(7, 'site_description', 'Visitor Pass'),
(8, 'notify_templates', '<p>Hello Employee Someone wants meet you, his/her name is</p>'),
(9, 'notifications_email', '1'),
(10, 'invite_templates', 'Hello'),
(11, 'notifications_sms', '1'),
(12, 'sms_gateway', '1'),
(13, 'front_end_enable_disable', '1'),
(14, 'photo_capture_enable', '1'),
(15, 'terms_condition', 'Terms condition'),
(16, 'welcome_screen', '<p>Welcome to Department of Passport, Visitor Pass Management System.</p><p>Please Click on register button to take and appointment .</p>'),
(17, 'twilio_disabled', '1'),
(18, 'mail_disabled', '1'),
(19, 'locale', 'en'),
(20, 'mail_host', 'sandbox.smtp.mailtrap.io'),
(21, 'mail_port', '587'),
(22, 'mail_username', 'dc4f77f7630034'),
(23, 'mail_password', 'f4b261836fab74'),
(24, 'mail_from_name', 'info'),
(25, 'mail_from_address', 'info@vpass.com'),
(26, 'whatsapp_message', '1'),
(27, 'timezone', 'Asia/Kathmandu'),
(28, 'fcm_secret_key', 'AAAAkWXpJqU:APA91bF-L2l8qE3vO5sgkd62kQwwDSb-Ve5sTFi1OTExuOMMoIFbB2SBfeTlNJ5XPi2koTWakwvLpq87Dv3n763dRqKl2YLDIrBcjO7T4cepi8QrgMSQaN-VbnAMtxSGAO7sTDjn8tgN'),
(29, 'fcm_topic', 'Visitor_Pass'),
(30, 'whatsapp_accept_message', '<p>yes accepted</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `status` bigint(20) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `web_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `email_verified_at`, `password`, `status`, `phone`, `address`, `last_login_at`, `remember_token`, `web_token`, `created_at`, `updated_at`) VALUES
(1, 'Bijay', 'Tamrakar', 'admin@example.com', 'admin', NULL, '$2y$10$Bw1.0p5v.0DRncDQSeDdUu0S8sF/TK7mB8uRWB4W1.wbXH1abNz5.', 5, '9849225392', 'Ktm, Nepal', NULL, '2M2aUij9Ljoqgsn5j5xn9Ca4KM6kuwnlx8Pahze3NYqsHrCZj0aP3vaBr7ll', NULL, '2023-02-15 16:50:48', '2023-02-22 10:35:59'),
(2, 'HR', 'Head', 'hr.head@example.com', 'hr.head1419476440', NULL, '$2y$10$JNxZgg2m8E47PqxUB3Tsde1.D.uxgMHpQCdcvQCCarXG/aPxcRr/2', 5, '123456789', NULL, NULL, NULL, NULL, '2023-02-16 16:26:15', '2023-02-16 16:26:15'),
(3, 'Any', 'One', 'anyone@gmail.com', 'anyone686495564', NULL, '$2y$10$yqztIzOBXl4xerrOI/DYKeFeqMF0qUbkN3DTB6e9nBMl5jbJN9ocO', 5, '9841523689', NULL, NULL, 'x5vnc2x579YRdqZ7HUiZB2K7ql0btXXTr3wFpHiMQZG3cjmSgMUYSerED9FE', NULL, '2023-02-22 10:37:06', '2023-02-22 10:37:06'),
(4, 'Bijay', 'Tamrakar', 'ezbijay@gmail.com', 'ezbijay611527777', NULL, '$2y$10$34sY3beUD2EK301TOtC1mOG/FK88E9fMgquXjQAs6qo42pguYLRiu', 5, '9851225392', NULL, NULL, NULL, NULL, '2023-02-22 10:41:00', '2023-02-22 10:41:00'),
(5, 'bipin', 'poudel', 'info@nepase.com', 'info91777438', NULL, '$2y$10$9P3p3QvumxBjFG0yBmKt1OUregdoufaVH6iF/DUNkYGOsqNew8TUe', 5, '23123', NULL, NULL, NULL, NULL, '2023-02-23 09:06:57', '2023-02-23 09:06:57'),
(6, 'kiran', 'Gothe', 'kiran.gothe@intellisoftnepal.com', 'kiran.gothe@gmail.com', NULL, '$2y$10$sxpk8mI.uYHTrohQ.sUl/eikuobTKQ5nVb4QaYNDzNWyDjw15u9.W', 5, '9841840039', NULL, NULL, NULL, NULL, '2023-02-24 08:26:41', '2023-02-24 08:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `visiting_details`
--

CREATE TABLE `visiting_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reg_no` varchar(191) NOT NULL,
  `purpose` varchar(225) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_employee_id` varchar(191) DEFAULT NULL,
  `checkin_at` datetime DEFAULT NULL,
  `checkout_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `disable` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` bigint(20) UNSIGNED NOT NULL,
  `creator_type` varchar(191) NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `editor_type` varchar(191) NOT NULL,
  `editor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visiting_details`
--

INSERT INTO `visiting_details` (`id`, `reg_no`, `purpose`, `company_name`, `company_employee_id`, `checkin_at`, `checkout_at`, `status`, `disable`, `user_id`, `employee_id`, `visitor_id`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, '2102231', 'test', 'test', NULL, '2023-02-21 11:50:00', NULL, 2, 0, 1, 1, 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-21 03:41:19', '2023-02-21 06:05:05'),
(2, '2302231', 'test', 'test', NULL, '2023-02-23 13:06:00', '2023-02-23 15:00:00', 2, 0, 2, 2, 2, 'App\\Models\\User', 1, 'App\\Models\\User', 3, '2023-02-23 05:01:48', '2023-02-23 07:00:30'),
(3, '2302232', 'test', 'self', NULL, NULL, NULL, 3, 0, 2, 2, 3, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 05:03:34', '2023-02-23 05:04:30'),
(4, '2302233', 'test', 'self', NULL, NULL, NULL, 3, 0, 2, 2, 6, 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:30:56', '2023-02-26 07:59:52'),
(5, '2302234', 'test', 'test', NULL, '2023-02-23 20:33:00', '2023-02-26 14:57:00', 2, 0, 2, 2, 7, 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:54:11', '2023-02-26 06:57:27'),
(6, '2302235', 'test', 'test', NULL, NULL, NULL, 2, 0, 2, 2, 8, 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 06:19:20', '2023-02-26 08:03:22'),
(7, '2302236', 'meeting', 'Intellisoft Nepal Pvt. Ltd.', NULL, '2023-02-23 14:55:00', NULL, 2, 0, 3, 3, 9, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 06:51:05', '2023-02-23 06:55:26'),
(8, '2302237', 'test', 'test', NULL, NULL, NULL, 2, 0, 2, 2, 10, 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 06:58:03', '2023-02-27 05:31:05'),
(9, '2302238', 'Meeting', 'Intellisoft', NULL, NULL, NULL, 3, 0, 3, 3, 11, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 07:24:28', '2023-02-23 09:49:15'),
(10, '2302239', 'mwwtug', 'intellisoft nepal', NULL, NULL, NULL, 1, 0, 3, 3, 12, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 09:20:45', '2023-02-23 10:09:41'),
(11, '2402231', 'fdsfd', NULL, NULL, NULL, NULL, 1, 0, 3, 3, 14, 'App\\Models\\User', 1, 'App\\Models\\User', 6, '2023-02-24 08:21:20', '2023-02-24 08:32:34'),
(12, '2402232', 'Test', 'Test', NULL, NULL, NULL, 1, 0, 3, 3, 15, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-24 09:05:33', '2023-02-24 09:22:10'),
(13, '2602231', 'test', 'self', NULL, NULL, NULL, 2, 0, 2, 2, 16, 'App\\Models\\User', 1, 'App\\Models\\User', 3, '2023-02-26 07:11:48', '2023-02-27 05:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(40) NOT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL,
  `address` varchar(225) DEFAULT NULL,
  `identification_document` varchar(191) DEFAULT NULL,
  `national_identification_no` varchar(191) NOT NULL,
  `is_pre_register` tinyint(1) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `barcode` varchar(191) DEFAULT NULL,
  `creator_type` varchar(191) NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `editor_type` varchar(191) NOT NULL,
  `editor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `address`, `identification_document`, `national_identification_no`, `is_pre_register`, `status`, `barcode`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'test@email.com', '977981234567', 5, 'test', 'Citizenship', '123456789', 0, 5, 'qrcode-977981234567.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-21 03:41:19', '2023-02-21 03:41:19'),
(2, 'Bidisa', 'Sharma', 'biswas@gmail.com', '9841523619', 10, 'Kathmandu', 'Citizenship', '2323', 0, 5, 'qrcode-9841523619.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 05:01:48', '2023-02-23 05:01:48'),
(3, 'Sagar', 'Shrestha', 'sagar@gmail.com', '085236941', 5, 'ktm', 'Citizenship', '55555', 0, 5, 'qrcode-085236941.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 05:03:34', '2023-02-23 05:03:34'),
(4, 'Prakash', 'Shrestha', 'prakash@gmail.com', '98510235689', 5, 'test', NULL, '458796', 1, 5, 'qrcode-98510235689.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 05:21:27', '2023-02-23 05:21:27'),
(5, 'samina', 'Tiwari', 'samina@gmail.com', '98510234568', 5, 'Bhkt', NULL, '895623', 1, 1, 'qrcode-98510234568.png', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:24:30', '2023-02-23 05:24:30'),
(6, 'Will', 'Bruce', 'will@gmail.com', '9851023689', 5, 'Kathmandu', 'Driving Liscense', '852369', 0, 1, 'qrcode-9851023689.png', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:30:56', '2023-02-23 05:30:56'),
(7, 'Tarun', 'KC', 'tarun@gmail.com', '9860023689', 5, 'Kathmandu', 'Citizenship', '99999', 0, 1, 'qrcode-9860023689.png', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 05:54:11', '2023-02-23 05:54:11'),
(8, 'Binay', 'Karki', 'binay@gmail.com', '9841523682', 5, 'Kathmandu', NULL, '665', 0, 5, 'qrcode-9841523682.png', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 06:19:20', '2023-02-23 06:19:20'),
(9, 'nisha', 'timalshina', 'ntimilsina@nepse.com', '9803994191', 10, 'shinhadurbar', 'Citizenship', '98465', 0, 5, 'qrcode-9803994191.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 06:51:05', '2023-02-23 06:51:05'),
(10, 'Rajesh', 'KC', 'test@gmail.com', '9841123689', 5, 'Kathmandu', 'Driving Liscense', '55555', 0, 1, 'qrcode-9841123689.png', 'App\\Models\\User', 3, 'App\\Models\\User', 3, '2023-02-23 06:58:03', '2023-02-23 06:58:03'),
(11, 'Bijay', 'intellisoft', 'ezbijay@gmail.com', '9851225392', 5, 'Bkt', 'Citizenship', '6843', 0, 5, 'qrcode-9851225392.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 07:24:28', '2023-02-23 07:24:28'),
(12, 'ttest', 'test', 'admin@example.com', '985125392', 5, NULL, 'Citizenship', '4868', 0, 5, 'qrcode-985125392.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 09:20:45', '2023-02-23 09:20:45'),
(13, 'test', 'test', 'test@passport.com', '3425443', 5, NULL, NULL, '31231', 1, 5, 'qrcode-3425443.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-23 09:26:19', '2023-02-23 09:27:13'),
(14, 'Bijay', 'Tamrakar', 'adc@gmail.com', '9841725392', 5, NULL, NULL, '6843', 0, 5, 'qrcode-9841725392.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-24 08:21:20', '2023-02-24 08:21:20'),
(15, 'Test', 'Visitor', 'Q@hotmail.com', '9808899765', 5, NULL, 'Citizenship', '67899', 0, 5, 'qrcode-9808899765.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-24 09:05:33', '2023-02-24 09:05:33'),
(16, 'angrita', 'sherpa', 'ang@gmail.com', '98510258963', 10, 'Kathmandu', 'Citizenship', '589632', 0, 3, 'qrcode-98510258963.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-26 07:11:48', '2023-02-26 07:11:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_menus`
--
ALTER TABLE `backend_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookings_reg_no_unique` (`reg_no`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_department_id_foreign` (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_creator_type_creator_id_index` (`creator_type`,`creator_id`),
  ADD KEY `employees_editor_type_editor_id_index` (`editor_type`,`editor_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_name_unique` (`name`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pre_registers`
--
ALTER TABLE `pre_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_registers_creator_type_creator_id_index` (`creator_type`,`creator_id`),
  ADD KEY `pre_registers_editor_type_editor_id_index` (`editor_type`,`editor_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `visiting_details`
--
ALTER TABLE `visiting_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visiting_details_reg_no_unique` (`reg_no`),
  ADD KEY `visiting_details_creator_type_creator_id_index` (`creator_type`,`creator_id`),
  ADD KEY `visiting_details_editor_type_editor_id_index` (`editor_type`,`editor_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visitors_phone_unique` (`phone`),
  ADD KEY `visitors_creator_type_creator_id_index` (`creator_type`,`creator_id`),
  ADD KEY `visitors_editor_type_editor_id_index` (`editor_type`,`editor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backend_menus`
--
ALTER TABLE `backend_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_registers`
--
ALTER TABLE `pre_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visiting_details`
--
ALTER TABLE `visiting_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

