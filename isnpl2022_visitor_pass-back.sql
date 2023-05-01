SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


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
(4, 'Service', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HR Director', 5, NULL, NULL),
(2, 'Chief Human Resource Officer', 5, NULL, NULL),
(3, 'General HR Manager', 5, NULL, NULL),
(4, 'Production Manager', 5, NULL, NULL);

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
(1, 'Bijay', 'Tamrakar', '9851225392', NULL, NULL, 5, NULL, '2022-01-01', 5, 2, 2, 1, 'Bijay', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-06 23:35:48', '2023-02-06 23:35:48'),
(2, 'test', 'employee', '977981234567', NULL, NULL, 5, NULL, '2023-02-21', 5, 3, 1, 1, NULL, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-15 15:37:10', '2023-02-15 15:37:10');

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
(1, 'English', 'en', '🇬🇧', 5, NULL, NULL);

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
(1, 0, 'en', 'validation', 'custom.phone.required', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(2, 0, 'en', 'validation', 'values.phone.', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(3, 0, 'en', 'validation', 'custom.purpose.required', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(4, 0, 'en', 'validation', 'values.purpose.', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(5, 0, 'en', 'validation', 'custom.employee_id.required', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(6, 0, 'en', 'validation', 'values.employee_id.', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(7, 0, 'en', 'validation', 'custom.national_identification_no.required', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(8, 0, 'en', 'validation', 'values.national_identification_no.', NULL, '2023-02-05 08:23:37', '2023-02-05 08:23:37'),
(9, 0, 'en', 'validation', 'custom.email.unique', NULL, '2023-02-06 23:33:41', '2023-02-06 23:33:41'),
(10, 0, 'en', 'validation', 'values.email.admin@example.com', NULL, '2023-02-06 23:33:41', '2023-02-06 23:33:41'),
(11, 0, 'en', 'validation', 'custom.image.uploaded', NULL, '2023-02-06 23:33:41', '2023-02-06 23:33:41'),
(12, 0, 'en', 'validation', 'custom.password_confirmation.required', NULL, '2023-02-06 23:34:03', '2023-02-06 23:34:03'),
(13, 0, 'en', 'validation', 'values.password_confirmation.', NULL, '2023-02-06 23:34:03', '2023-02-06 23:34:03'),
(14, 0, 'en', 'validation', 'custom.password.same', NULL, '2023-02-06 23:34:03', '2023-02-06 23:34:03'),
(15, 0, 'en', 'validation', 'values.password.123456', NULL, '2023-02-06 23:34:03', '2023-02-06 23:34:03'),
(16, 0, 'en', 'validation', 'custom.password.required', NULL, '2023-02-06 23:35:17', '2023-02-06 23:35:17'),
(17, 0, 'en', 'validation', 'values.password.', NULL, '2023-02-06 23:35:17', '2023-02-06 23:35:17'),
(18, 0, 'en', 'validation', 'custom.phone.unique', NULL, '2023-02-13 05:52:49', '2023-02-13 05:52:49'),
(19, 0, 'en', 'validation', 'values.phone.9841849039', NULL, '2023-02-13 05:52:49', '2023-02-13 05:52:49'),
(20, 0, 'en', 'validation', 'custom.first_name.required', NULL, '2023-02-15 15:31:21', '2023-02-15 15:31:21'),
(21, 0, 'en', 'validation', 'values.first_name.', NULL, '2023-02-15 15:31:21', '2023-02-15 15:31:21'),
(22, 0, 'en', 'validation', 'custom.national_identification_no.unique', NULL, '2023-02-15 15:38:05', '2023-02-15 15:38:05'),
(23, 0, 'en', 'validation', 'values.national_identification_no.110099', NULL, '2023-02-15 15:38:05', '2023-02-15 15:38:05'),
(24, 0, 'en', 'validation', 'custom.image.required', NULL, '2023-02-17 08:00:09', '2023-02-17 08:00:09'),
(25, 0, 'en', 'validation', 'values.image.', NULL, '2023-02-17 08:00:09', '2023-02-17 08:00:09');

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
(2, 'App\\Models\\User', 2, '32932965-e0c2-4eb8-8cb0-60411180de01', 'user', 'icon', 'icon.jpg', 'image/jpeg', 'public', 'public', 125317, '[]', '[]', '[]', '[]', 1, '2023-02-07 07:14:09', '2023-02-07 07:14:09'),
(5, 'App\\Models\\VisitingDetails', 1, '132ab9bb-4da5-4440-af97-074580fb509e', 'visitor', 'icon', 'icon.jpg', 'image/jpeg', 'public', 'public', 125317, '[]', '[]', '[]', '[]', 1, '2023-02-13 05:41:29', '2023-02-13 05:41:29'),
(7, 'App\\Models\\VisitingDetails', 2, '847b315a-777a-4ec7-9901-f08e925bf5eb', 'visitor', 'icon', 'icon.jpg', 'image/jpeg', 'public', 'public', 125317, '[]', '[]', '[]', '[]', 1, '2023-02-13 05:50:31', '2023-02-13 05:50:31'),
(9, 'App\\Models\\VisitingDetails', 4, '5dd9f443-3f68-447c-a8f5-bb753e62ee98', 'visitor', 'icon', 'icon.jpg', 'image/jpeg', 'public', 'public', 125317, '[]', '[]', '[]', '[]', 1, '2023-02-13 06:01:12', '2023-02-13 06:01:12'),
(10, 'App\\Models\\VisitingDetails', 3, '2c444b2b-a57d-4ad2-96b9-1d7fb2e3e1b3', 'visitor', 'icon', 'icon.jpg', 'image/jpeg', 'public', 'public', 125317, '[]', '[]', '[]', '[]', 1, '2023-02-13 06:01:27', '2023-02-13 06:01:27'),
(11, 'App\\Models\\VisitingDetails', 5, '7c8d80d8-928d-4009-8034-da8f659286b8', 'visitor', 'fmrsVi0U5g', 'fmrsVi0U5g.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-15 15:31:35', '2023-02-15 15:31:35'),
(12, 'App\\Models\\VisitingDetails', 6, '511fc142-1072-4b68-ac01-fca5e9e02684', 'visitor', 'O56vBpeIyc', 'O56vBpeIyc.png', 'text/plain', 'public', 'public', 3, '[]', '[]', '[]', '[]', 1, '2023-02-15 15:38:17', '2023-02-15 15:38:17'),
(13, 'App\\Models\\VisitingDetails', 7, 'ad1c9d57-3fa4-4353-87bc-2e41bc6a00e6', 'visitor', 'FOFt2lOYdP', 'FOFt2lOYdP.png', 'image/png', 'public', 'public', 1102774, '[]', '[]', '[]', '[]', 1, '2023-02-17 07:57:55', '2023-02-17 07:57:55');

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
(27, '2022_09_13_065241_create_media_table', 1);

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
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

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
('059830cb-e209-4a4c-80b5-1d73f6897f1b', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 8, '[]', NULL, '2023-02-17 08:01:47', '2023-02-17 08:01:47'),
('267fb48e-733f-4a0b-a929-d322aa2d5c2c', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 05:39:27', '2023-02-13 05:39:27'),
('304ad573-94d8-4515-85dc-9b75449eeb84', 'App\\Notifications\\SendVisitorToEmployee', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 05:50:32', '2023-02-13 05:50:32'),
('3f08b3ea-c149-4365-b825-2ea38401c048', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 5, '[]', NULL, '2023-02-15 15:29:52', '2023-02-15 15:29:52'),
('4c5cffe1-2400-4691-8397-8a39d4b6f3cc', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 05:42:37', '2023-02-13 05:42:37'),
('682a284f-7f83-4708-a813-e1fa6446d802', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 3, '[]', NULL, '2023-02-15 15:38:17', '2023-02-15 15:38:17'),
('8ae4917b-e1c5-43d7-a8f6-66493b6ec02a', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-15 15:31:35', '2023-02-15 15:31:35'),
('8c5f8b3c-9952-4808-bf17-d36fa362da9e', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 05:33:04', '2023-02-13 05:33:04'),
('94c9f43b-4cae-46cc-b44f-b0c67221f7b6', 'App\\Notifications\\SendVisitorToEmployee', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 06:01:12', '2023-02-13 06:01:12'),
('97bf5df2-6165-49a6-b3b1-f0b9ba440598', 'App\\Notifications\\SendVisitorToEmployee', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 06:01:27', '2023-02-13 06:01:27'),
('a985bc46-a5d0-4585-96a1-5bf94029e07c', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 7, '[]', NULL, '2023-02-15 15:41:01', '2023-02-15 15:41:01'),
('af3eefeb-bc96-4686-bf62-4d41831e00e9', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 05:53:46', '2023-02-13 05:53:46'),
('b5a31027-c3d3-496a-8e94-00a2a2657935', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 4, '[]', NULL, '2023-02-16 00:08:21', '2023-02-16 00:08:21'),
('eb97e2c3-e37e-48b6-a89c-1810fd665fc1', 'App\\Notifications\\EmployeConfirmation', 'App\\Models\\User', 2, '[]', NULL, '2023-02-17 07:57:55', '2023-02-17 07:57:55'),
('f03ed325-b142-4dad-9cf0-75c858ae0616', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 6, '[]', NULL, '2023-02-15 15:35:27', '2023-02-15 15:35:27'),
('f50a984b-ed0e-4ea1-a2c4-f7dd0dafe65c', 'App\\Notifications\\SendVisitorToEmployee', 'App\\Models\\User', 2, '[]', NULL, '2023-02-13 05:41:29', '2023-02-13 05:41:29'),
('fa22398f-3f71-4533-ace4-2ca1b7797d4b', 'App\\Notifications\\VisitorConfirmation', 'App\\Models\\Visitor', 2, '[]', NULL, '2023-02-17 07:39:52', '2023-02-17 07:39:52');

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
(1, 'Admin', 'web', '2023-02-04 10:39:31', '2023-02-04 10:39:31'),
(2, 'Employee', 'web', '2023-02-04 10:39:31', '2023-02-04 10:39:31'),
(3, 'Reception', 'web', '2023-02-04 10:39:31', '2023-02-04 10:39:31');

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
(2, 1),
(2, 2),
(2, 3),
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
(19, 1),
(19, 3),
(20, 1),
(20, 3),
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
(1, 'site_name', 'VPMS'),
(2, 'site_email', 'info@intellisoftnepal.com'),
(3, 'site_phone_number', '+977 01 4790617'),
(4, 'site_logo', 'logo.png'),
(5, 'site_footer', '@ All Rights Reserved'),
(6, 'site_address', 'Kathmandu, Nepal'),
(7, 'site_description', 'Visitor Pass Management System.'),
(8, 'notify_templates', '<p>Hello Employee Someone wants meet you, his/her name is</p>'),
(9, 'notifications_email', '1'),
(10, 'invite_templates', 'Hello'),
(11, 'notifications_sms', '1'),
(12, 'sms_gateway', '1'),
(13, 'front_end_enable_disable', '1'),
(14, 'photo_capture_enable', '1'),
(15, 'terms_condition', 'Terms condition'),
(16, 'welcome_screen', '<p>Welcome,please tap on button to check-in</p>'),
(17, 'twilio_disabled', '1'),
(18, 'mail_disabled', '1'),
(19, 'locale', 'en'),
(20, 'timezone', 'Asia/Kathmandu'),
(21, 'whatsapp_message', '1'),
(22, 'mail_host', 'sandbox.smtp.mailtrap.io'),
(23, 'mail_port', '25'),
(24, 'mail_username', 'b97451277e4b3b'),
(25, 'mail_password', '338f950caa9483'),
(26, 'mail_from_name', 'insnpl'),
(27, 'mail_from_address', 'info@isnpl.com.np');

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
(1, 'John', 'Doe', 'admin@example.com', 'admin', NULL, '$2y$10$zDDOQIMqK11IQOyXx3K9e.QzvgjeT0rv8W8505uKc8uzFnFdMO/yy', 5, '+977 01 4790617', 'Kathmandu, Nepal', NULL, '30cqKuidbDevQ4VoRTgmQ7wh954dWf2cVRAuJo55fpeo2pZuTVKEkYjkooxY', NULL, '2023-02-04 10:39:32', '2023-02-05 23:49:42'),
(2, 'Bijay', 'Tamrakar', 'ezbijay@gmail.com', 'ezbijay587902500', NULL, '$2y$10$HAFZVUWcGLdLqSk/VZ4Wbevi29Ef9ZL1Nd5JjBXhKjaKrKlHFOXaC', 5, '9851225392', NULL, NULL, NULL, NULL, '2023-02-06 23:35:47', '2023-02-07 07:14:09'),
(3, 'test', 'employee', 'test@email.com', 'test363576390', NULL, '$2y$10$SpRblaFDkf3PVR36i9aB0e9i//S.50W.tlWyCMhRU1KWsyeWH1EAq', 5, '977981234567', NULL, NULL, NULL, NULL, '2023-02-15 15:37:10', '2023-02-15 15:37:10');

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
(1, '1302231', 'test', 'self', NULL, NULL, NULL, 5, 0, 1, 1, 1, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:33:04', '2023-02-13 05:41:29'),
(2, '1302232', 'test', 'test', NULL, '2023-02-17 15:39:00', NULL, 2, 1, 1, 1, 2, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:39:26', '2023-02-17 07:42:57'),
(3, '1302233', 'test', 'test', NULL, '2023-02-16 08:08:00', NULL, 2, 0, 1, 1, 4, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:42:37', '2023-02-16 00:08:21'),
(4, '1302234', 'test', 'test', NULL, '2023-02-15 23:29:00', '2023-02-15 23:35:00', 2, 0, 1, 1, 5, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:53:46', '2023-02-15 15:35:23'),
(5, '1502231', 'inquiry', NULL, NULL, '2023-02-15 23:35:00', NULL, 2, 0, 1, 1, 6, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-15 15:31:35', '2023-02-15 15:35:27'),
(6, '1502232', 'test', NULL, NULL, '2023-02-15 23:41:00', NULL, 2, 0, 2, 2, 7, 'App\\Models\\User', 1, 'App\\Models\\User', 3, '2023-02-15 15:38:17', '2023-02-15 15:41:01'),
(7, '1702231', 'test', 'Intellisoft Nepal Pvt. Ltd.', NULL, '2023-02-17 16:01:00', '2023-02-17 16:08:00', 2, 0, 1, 1, 8, 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-17 07:57:55', '2023-02-17 08:08:17');

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

INSERT INTO `visitors` (`id`, `first_name`, `last_name`, `email`, `phone`, `gender`, `address`, `national_identification_no`, `is_pre_register`, `status`, `barcode`, `creator_type`, `creator_id`, `editor_type`, `editor_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 'one', 'bt@gmail.com', '085236941', 5, 'ktm', '852369', 0, 5, 'qrcode-085236941.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:33:04', '2023-02-13 05:41:29'),
(2, 'test', 'two', 'anyone@gmail.com', '9841849039', 5, 'test', '65984', 0, 5, 'qrcode-9841849039.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:39:26', '2023-02-13 05:50:31'),
(4, 'first', 'name', 'square@gmail.com', '98418490326', 5, 'ktm', '582369', 0, 5, 'qrcode-98418490326.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:42:36', '2023-02-13 06:01:27'),
(5, 'Biswas', 'Paudel', 'biswas@gmail.com', '9841659832', 5, 'Kathmandu', '123456', 0, 5, 'qrcode-9841659832.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-13 05:53:46', '2023-02-13 06:01:12'),
(6, 'new', 'emp', 'test@email.com', '9779812345678', 5, NULL, '110099', 0, 5, 'qrcode-9779812345678.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-15 15:31:35', '2023-02-15 15:31:35'),
(7, 'new', 'visitor', 'newvisitor@email.com', '98088123', 5, NULL, '1100399', 0, 5, 'qrcode-98088123.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-15 15:38:17', '2023-02-15 15:38:17'),
(8, 'kiran', 'Gothe', 'kiran.gothe@intellisoftnepal.com', '9841840039', 5, NULL, '18166565', 0, 5, 'qrcode-9841840039.png', 'App\\Models\\User', 1, 'App\\Models\\User', 1, '2023-02-17 07:57:55', '2023-02-17 07:57:55');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `visiting_details`
--
ALTER TABLE `visiting_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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