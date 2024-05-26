-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 06:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitflex`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `date_birth` date NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `end_date` date NOT NULL,
  `picture_file` varchar(255) NOT NULL,
  `id_gym` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `date_birth`, `phone_number`, `end_date`, `picture_file`, `id_gym`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Magali', '1996-03-18', '341-664-4408', '2023-12-30', 'https://via.placeholder.com/640x480.png/008800?text=a', 1, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(2, 'Verona', '1972-07-25', '(469) 524-8436', '2024-02-12', 'https://via.placeholder.com/640x480.png/00dd22?text=eveniet', 2, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(4, 'Marlin', '2014-09-04', '1-689-537-1745', '2023-12-16', 'https://via.placeholder.com/640x480.png/0033aa?text=harum', 4, '2024-04-18 11:06:24', '2024-04-19 16:24:23', 0),
(5, 'Rashad', '1995-12-06', '+18725704496', '2023-07-07', 'https://via.placeholder.com/640x480.png/0044dd?text=et', 5, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(6, 'Tiara', '1982-11-03', '+15208104088', '2024-09-20', 'https://via.placeholder.com/640x480.png/007777?text=repellendus', 6, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(7, 'Ottilie', '1978-12-29', '+1 (689) 714-3994', '2024-09-08', 'https://via.placeholder.com/640x480.png/00ee99?text=natus', 7, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(8, 'Jarrett', '1980-06-06', '+1 (612) 809-2510', '2023-07-26', 'https://via.placeholder.com/640x480.png/0033dd?text=aut', 8, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(9, 'Bertram', '1995-07-02', '843.858.7010', '2024-07-27', 'https://via.placeholder.com/640x480.png/00aa22?text=repellendus', 10, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(10, 'Velda', '1991-12-15', '+13519758555', '2024-10-29', 'https://via.placeholder.com/640x480.png/006644?text=quis', 10, '2024-04-18 11:06:24', '2024-04-18 11:06:24', 1),
(12, 'Adelbert', '2019-09-20', '478.919.1538', '2024-02-17', 'https://via.placeholder.com/640x480.png/003300?text=omnis', 1, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(13, 'Warren', '2003-05-11', '(567) 705-5396', '2023-04-19', 'https://via.placeholder.com/640x480.png/0022aa?text=officia', 2, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(14, 'Berneice', '1974-12-05', '309-649-9341', '2024-07-24', 'https://via.placeholder.com/640x480.png/001100?text=molestias', 3, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(15, 'Phyllis', '1988-04-24', '1-256-855-5420', '2024-09-05', 'https://via.placeholder.com/640x480.png/004400?text=sequi', 4, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(16, 'Zoey', '1974-05-20', '208.963.6193', '2024-01-30', 'https://via.placeholder.com/640x480.png/001133?text=doloremque', 5, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(17, 'Joshua', '1997-07-23', '+13049533537', '2023-05-25', 'https://via.placeholder.com/640x480.png/005511?text=iusto', 6, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(18, 'Alanna', '1993-11-27', '+1.563.764.8995', '2024-05-15', 'https://via.placeholder.com/640x480.png/009944?text=veritatis', 7, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(19, 'Kaia', '2011-06-29', '253.590.8451', '2024-08-24', 'https://via.placeholder.com/640x480.png/004499?text=molestias', 8, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(20, 'Bulah', '2006-10-13', '909-836-7590', '2024-02-24', 'https://via.placeholder.com/640x480.png/007733?text=sint', 9, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(21, 'Kian', '2003-05-15', '812.777.3540', '2024-12-03', 'https://via.placeholder.com/640x480.png/009988?text=eius', 10, '2024-04-18 11:08:24', '2024-04-18 11:08:24', 1),
(22, 'John', '1990-05-15', '1234567890', '2024-04-30', 'example.jpg', 1, '2024-04-18 14:11:17', '2024-04-18 14:11:17', 1),
(23, 'John', '1990-01-01', '1234567890', '2024-12-31', 'path/to/picture.jpg', 11, '2024-05-22 15:50:24', '2024-05-22 15:50:24', 1),
(24, 'salma ha r har', '2024-05-17', '7654657689', '2024-05-29', 'C:\\Users\\HP\\AppData\\Local\\Temp\\php2503.tmp', 11, '2024-05-22 16:28:01', '2024-05-22 16:28:01', 1),
(25, 'react nativ', '2007-02-08', '7654657689', '2024-06-19', 'C:\\Users\\HP\\AppData\\Local\\Temp\\php322F.tmp', 11, '2024-05-22 16:29:10', '2024-05-22 16:29:10', 1),
(26, 'hada test', '2007-02-01', '765462257689', '2024-06-19', 'C:\\Users\\HP\\AppData\\Local\\Temp\\phpBB4E.tmp', 11, '2024-05-22 16:35:13', '2024-05-22 16:35:13', 1),
(27, 'ahada test', '2007-02-01', '765462257689', '2024-06-19', 'http://127.0.0.1:8000/storage/client_pictures/css Logo.png', 11, '2024-05-22 16:37:00', '2024-05-25 16:47:55', 1),
(28, 'aatjjjestaa', '1990-01-01', '1234567890', '2023-06-06', 'http://127.0.0.1:8000/storage/client_pictures/WhatsApp Image 2024-05-21 at 18.24.50_1d947c83.jpg', 11, '2024-05-22 20:49:10', '2024-05-24 16:17:09', 1),
(29, 'xxa', '2004-05-12', '08796835456', '2024-05-10', 'http://127.0.0.1:8000/storage/client_pictures/Design sans titre (11).jpg', 11, '2024-05-23 12:19:29', '2024-05-23 17:42:45', 1),
(30, 'class dummy', '2000-03-25', '879685746357', '2024-05-03', 'http://127.0.0.1:8000/storage/client_pictures/SoWkIImgAStDuKhEIImkLd0fpSsjLAZcIijCpKanX516NBcf9HdvAOOQcb2M4P1L2m00.png', 11, '2024-05-25 12:50:53', '2024-05-25 12:50:53', 1);

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
-- Table structure for table `gyms`
--

CREATE TABLE `gyms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gyms`
--

INSERT INTO `gyms` (`id`, `id_user`, `name`, `location`, `currency`, `created_at`, `updated_at`) VALUES
(1, 1, 'Murphy-Walsh', '1279 Greenfelder Village Suite 992\nNorth Jodyview, HI 49447', 'BND', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(2, 2, 'Hyatt-Hill', '92750 Sawayn Plaza Suite 759\nSouth Bobbie, TX 89858', 'TOP', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(3, 3, 'Emmerich Group', '400 Reilly Greens Suite 015\nCartwrightstad, MA 03454-5904', 'XOF', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(4, 4, 'Deckow-Heidenreich', '358 Kira Bridge\nQuigleymouth, IN 46425', 'JPY', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(5, 5, 'Kilback-Anderson', '637 Jakob Gateway\nConnburgh, PA 94343-7734', 'TOP', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(6, 6, 'Kozey-Bosco', '1150 Ruthe Parkway\nElenoraport, MN 70594-9355', 'HNL', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(7, 7, 'Wilderman-Feest', '92557 Dan Squares\nEnosmouth, FL 05560-0995', 'PYG', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(8, 8, 'Bradtke-Herzog', '5135 Terence Well\nArmstrongburgh, CA 59438-7817', 'BZD', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(9, 9, 'Kunze-Gaylord', '1201 Parker Views Suite 655\nWest Leilanifort, AR 18830-2827', 'GHS', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(10, 10, 'Graham Inc', '7669 Kohler Mission\nRaquelmouth, WI 82591', 'DJF', '2024-04-18 10:41:38', '2024-04-18 10:41:38'),
(11, 13, 'Fitflex', 'Sale Tabriquet', 'MAD', '2024-05-22 16:49:28', '2024-05-22 16:49:28');

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
(5, '2024_04_18_100208_create_gyms_table', 2),
(6, '2024_04_18_100820_create_clients_table', 3),
(7, '2024_04_18_101035_create_payments_table', 4),
(8, '2024_04_18_105208_add_id_user_to_payments_table', 5),
(9, '2024_04_18_105342_add_active_to_clients_table', 5),
(10, '2024_05_09_190422_remove_last_name_from_clients', 6);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `id_user`, `paid_price`, `created_at`, `updated_at`) VALUES
(1, 8, 382.80, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(2, 4, 790.24, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(3, 10, 269.20, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(4, 10, 341.90, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(5, 1, 260.17, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(6, 3, 865.79, '2024-04-03 11:12:16', '2024-04-18 11:12:16'),
(7, 7, 16.11, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(8, 2, 34.63, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(9, 8, 305.74, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(10, 2, 987.75, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(11, 10, 146.72, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(12, 5, 285.93, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(13, 4, 405.86, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(14, 3, 343.08, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(15, 7, 575.72, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(16, 1, 972.62, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(17, 2, 364.25, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(18, 9, 24.13, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(19, 8, 59.09, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(20, 4, 806.28, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(21, 6, 507.74, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(22, 8, 918.47, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(23, 10, 143.28, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(24, 8, 223.27, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(25, 10, 417.67, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(26, 3, 181.15, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(27, 7, 249.14, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(28, 7, 767.67, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(29, 1, 399.50, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(30, 6, 892.26, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(31, 3, 726.33, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(32, 9, 822.91, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(33, 1, 69.41, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(34, 4, 350.11, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(35, 1, 902.45, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(36, 6, 195.96, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(37, 9, 523.44, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(38, 5, 946.07, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(39, 9, 985.07, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(40, 6, 220.81, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(41, 1, 28.32, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(42, 4, 990.13, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(43, 5, 581.42, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(44, 3, 487.80, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(45, 5, 632.89, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(46, 2, 395.37, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(47, 9, 460.50, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(48, 8, 913.22, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(49, 2, 277.84, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(50, 8, 386.95, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(51, 9, 228.15, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(52, 1, 521.71, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(53, 4, 884.13, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(54, 10, 824.53, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(55, 4, 124.29, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(56, 10, 431.54, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(57, 5, 494.25, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(58, 6, 797.87, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(59, 3, 249.30, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(60, 4, 176.75, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(61, 7, 171.22, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(62, 3, 15.09, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(63, 7, 934.91, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(64, 8, 665.74, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(65, 5, 309.07, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(66, 9, 930.51, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(67, 3, 877.92, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(68, 9, 445.03, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(69, 5, 732.82, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(70, 8, 84.10, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(71, 1, 979.18, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(72, 7, 147.30, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(73, 9, 451.47, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(74, 9, 775.03, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(75, 1, 714.67, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(76, 1, 599.35, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(77, 5, 93.36, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(78, 5, 368.47, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(79, 2, 856.99, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(80, 9, 477.26, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(81, 2, 99.25, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(82, 8, 852.18, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(83, 5, 387.19, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(84, 5, 36.59, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(85, 6, 39.64, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(86, 2, 157.77, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(87, 6, 714.61, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(88, 6, 87.25, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(89, 1, 936.92, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(90, 8, 126.39, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(91, 1, 116.75, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(92, 2, 252.11, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(93, 5, 670.28, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(94, 10, 204.21, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(95, 2, 993.52, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(96, 3, 357.62, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(97, 8, 601.06, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(98, 4, 250.56, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(99, 8, 326.99, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(100, 5, 577.73, '2024-04-18 11:12:16', '2024-04-18 11:12:16'),
(101, 12, 260.17, '2024-05-09 18:44:38', '2024-05-09 18:44:38'),
(103, 28, 1100.00, '2024-05-25 11:23:58', '2024-05-25 11:23:58'),
(104, 28, 1500.00, '2024-05-25 11:36:09', '2024-05-25 11:36:09'),
(105, 28, 500.00, '2024-05-25 11:38:18', '2024-05-25 11:38:18'),
(106, 28, 12.00, '2024-05-25 11:39:02', '2024-05-25 11:39:02'),
(108, 29, 19.00, '2024-05-25 12:44:01', '2024-05-25 12:44:01'),
(109, 29, 10.00, '2024-05-25 12:44:12', '2024-05-25 12:44:12'),
(110, 29, 110.00, '2024-05-25 12:44:17', '2024-05-25 12:44:17'),
(111, 27, 111.00, '2024-05-25 12:45:44', '2024-05-25 12:45:44'),
(112, 26, 110.00, '2024-05-25 12:46:11', '2024-05-25 12:46:11'),
(113, 26, 10.00, '2024-05-25 12:46:19', '2024-05-25 12:46:19'),
(115, 24, 110.00, '2024-05-25 12:48:50', '2024-05-25 12:48:50');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'AuthToken', 'ff0334b0bb534994ae9a062b5ebeaa143eff0d49b9b1fe1d60dabd564ccabb4e', '[\"*\"]', NULL, NULL, '2024-04-17 11:34:03', '2024-04-17 11:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone_number`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@example.com', 'johndoe', '1234567890', '$2y$12$yFvSfRhtZXFqZ28GO5RCBe9TOKTBsMklK6u08XfMVYnH4/fHHWfly', 1, NULL, '2024-04-17 11:25:23', '2024-04-17 11:25:23'),
(2, 'ilyas benv', 'ilyas@gmail.com', 'BENV', '123477890', '$2y$12$2fra6p5zv4bDNvtJaVGYpegp2yzKPJHuDbJYEGTUoKa6MqBlUKz0.', 1, NULL, '2024-04-17 12:32:52', '2024-04-17 12:32:52'),
(3, 'Kitty Schiller', 'lhill@example.net', 'maurice54', '430.620.1852', '$2y$12$gDYvNXrQAOPbioMXOY0Z8u1Nrc0XXEnN1CxtyTopkIVPOm1qY3kNC', 1, 'YsvMF1shNB', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(4, 'Glenda Bogan', 'dubuque.erwin@example.net', 'xhirthe', '1-669-575-3414', '$2y$12$0uoDmK48aNysskzXYdu6pOp0CeABiuvdg5IjlGe1DiDyhk56mIhzW', 1, 'T0CxYoCOEH', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(5, 'Ms. Althea Haag I', 'denesik.bella@example.net', 'christy.crona', '971.472.6922', '$2y$12$1zuMY/fdrJ./XiYE6unhKeBkOM9Ny7WZFszF4FTkc3jp8iLYclcVe', 1, 'fi4nYHk3sQ', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(6, 'Katherine Schaefer', 'ndavis@example.com', 'dtowne', '(360) 761-2703', '$2y$12$AInp.Jsa9sNkg5NtunbPGuDlqi69nKRIOfsrsQ6sdrmYmGusi69FK', 3, 'DKcqrRmo39', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(7, 'Mr. Julien Walker', 'miller.gerry@example.org', 'psawayn', '681-733-4198', '$2y$12$BR1TkMg4QwnQHkj383WRSelf4DsUCuuQwtPXKfp5jRlm35YaJFGWO', 2, 'z5XNLAiJQu', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(8, 'Lourdes Runolfsson', 'xheller@example.net', 'amcglynn', '(434) 951-9988', '$2y$12$5QAKhFuZhsSPbKQquUsoaOGPwEStrV/c6xnYXG.oDXKsCs79x4MfW', 2, '6ZEoGy3SuP', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(9, 'Javier Pagac', 'london74@example.com', 'mireya04', '+1.571.219.7866', '$2y$12$slY4k5mKPrrBYxnqD1JuT.JjTo2GLAF6kpYEuCtxnqUVE7iXiCMIG', 3, 'lIg8bmUWXO', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(10, 'Otto Jakubowski', 'sydnie.skiles@example.com', 'kovacek.durward', '512.739.3314', '$2y$12$Jo5XGo.wqV3Wl4aFM6MZr.lpIoatraX0J9m3v8IjaDBgksNPk9OQK', 2, 'r3YQ9duzTD', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(11, 'Henderson Rogahn', 'cole85@example.net', 'qfunk', '+1.234.202.5971', '$2y$12$cyelCVG86yisL/OpGYCGe.sr7IZ2iwe.GO5s8MRB5F31gBOApWRYm', 1, 'Bx3lsHetgc', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(12, 'Dr. Queen Hirthe I', 'mhermiston@example.com', 'ebayer', '1-223-765-2767', '$2y$12$Un5nSrsZOfwJRplzYwqA3.6swPYooKhfxGzdotfQM3RogU4unRLMi', 1, 'SOswdYMobV', '2024-04-18 10:31:28', '2024-04-18 10:31:28'),
(13, 'John Doe', 'johndoe@example.com', 'johndoe123', '1568798890', '$2y$12$1ajt/FRKr8UGkNcDsAjnreYQwAQxIIZjTzcRPAOCW5O5tvEREjSka', 1, NULL, '2024-05-22 11:53:48', '2024-05-22 11:53:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_id_gym_foreign` (`id_gym`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gyms`
--
ALTER TABLE `gyms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gyms_id_user_foreign` (`id_user`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gyms`
--
ALTER TABLE `gyms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_id_gym_foreign` FOREIGN KEY (`id_gym`) REFERENCES `gyms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gyms`
--
ALTER TABLE `gyms`
  ADD CONSTRAINT `gyms_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
