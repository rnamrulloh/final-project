-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 04:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `certificate_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `cert_number` varchar(50) NOT NULL,
  `recipient_name` varchar(100) NOT NULL,
  `event_description` text NOT NULL,
  `chairperson_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `logo_path` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `user_id`, `template`, `cert_number`, `recipient_name`, `event_description`, `chairperson_name`, `created_at`, `logo_path`, `file_path`, `file_name`) VALUES
(1, 1, '', '543', '', '', '', '2024-11-10 05:19:23', NULL, '../../../uploads/Sertifikat_543.pdf', 'Sertifikat_543.pdf'),
(2, 1, '', '', '', '', '', '2024-11-13 01:31:37', NULL, '../../../uploads/certificate_1731461497.pdf', 'certificate_1731461497.pdf'),
(3, 1, '', '', '', '', '', '2024-11-13 01:32:17', NULL, '../../../uploads/certificate_1731461537.pdf', 'certificate_1731461537.pdf'),
(4, 1, '', '', '', '', '', '2024-11-13 01:32:35', NULL, '../../../uploads/certificate_1731461555.pdf', 'certificate_1731461555.pdf'),
(5, 1, '', '', '', '', '', '2024-11-13 01:33:04', NULL, '../../../uploads/certificate_1731461584.pdf', 'certificate_1731461584.pdf'),
(6, 1, '', '', '', '', '', '2024-11-13 01:33:18', NULL, '../../../uploads/certificate_1731461598.pdf', 'certificate_1731461598.pdf'),
(7, 1, '', '', '', '', '', '2024-11-13 01:33:30', NULL, '../../../uploads/certificate_1731461610.pdf', 'certificate_1731461610.pdf'),
(8, 1, '', '', '', '', '', '2024-11-13 01:33:41', NULL, '../../../uploads/certificate_1731461620.pdf', 'certificate_1731461620.pdf'),
(9, 1, '', '', '', '', '', '2024-11-13 01:33:52', NULL, '../../../uploads/certificate_1731461632.pdf', 'certificate_1731461632.pdf'),
(10, 1, '', '', '', '', '', '2024-11-13 01:36:13', NULL, '../../../uploads/certificate_1731461773.pdf', 'certificate_1731461773.pdf'),
(11, 1, '', '', '', '', '', '2024-11-13 01:36:42', NULL, '../../../uploads/certificate_1731461802.pdf', 'certificate_1731461802.pdf'),
(12, 1, '', '', '', '', '', '2024-11-13 01:36:56', NULL, '../../../uploads/certificate_1731461816.pdf', 'certificate_1731461816.pdf'),
(13, 1, '', '', '', '', '', '2024-11-13 01:37:29', NULL, '../../../uploads/certificate_1731461849.pdf', 'certificate_1731461849.pdf'),
(14, 1, '', '', '', '', '', '2024-11-13 01:37:41', NULL, '../../../uploads/certificate_1731461861.pdf', 'certificate_1731461861.pdf'),
(15, 1, '', '', '', '', '', '2024-11-13 01:38:15', NULL, '../../../uploads/certificate_1731461895.pdf', 'certificate_1731461895.pdf'),
(16, 1, '', '', '', '', '', '2024-11-13 01:40:14', NULL, '../../../uploads/certificate_1731462014.pdf', 'certificate_1731462014.pdf'),
(17, 1, '', '', '', '', '', '2024-11-13 01:42:58', NULL, '../../../uploads/certificate_1731462178.pdf', 'certificate_1731462178.pdf'),
(18, 1, '', '', '', '', '', '2024-11-13 01:44:44', NULL, '../../../uploads/certificate_1731462284.pdf', 'certificate_1731462284.pdf'),
(19, 1, '', '', '', '', '', '2024-11-13 01:45:00', NULL, '../../../uploads/certificate_1731462300.pdf', 'certificate_1731462300.pdf'),
(20, 1, '', '', '', '', '', '2024-11-13 01:45:12', NULL, '../../../uploads/certificate_1731462312.pdf', 'certificate_1731462312.pdf'),
(21, 1, '', '', '', '', '', '2024-11-13 01:45:25', NULL, '../../../uploads/certificate_1731462325.pdf', 'certificate_1731462325.pdf'),
(22, 1, '', '', '', '', '', '2024-11-13 01:46:31', NULL, '../../../uploads/certificate_1731462391.pdf', 'certificate_1731462391.pdf'),
(23, 1, '', '', '', '', '', '2024-11-13 01:47:09', NULL, '../../../uploads/certificate_1731462429.pdf', 'certificate_1731462429.pdf'),
(24, 1, '', '', '', '', '', '2024-11-13 07:22:51', NULL, '../../../uploads/certificate_1731482571.pdf', 'certificate_1731482571.pdf'),
(25, 1, '', '', '', '', '', '2024-11-13 07:28:15', NULL, '../../../uploads/certificate_1731482895.pdf', 'certificate_1731482895.pdf'),
(26, 1, '', '', '', '', '', '2024-11-13 07:28:24', NULL, '../../../uploads/certificate_1731482904.pdf', 'certificate_1731482904.pdf'),
(27, 1, '', '', '', '', '', '2024-11-13 07:29:07', NULL, '../../../uploads/certificate_1731482947.pdf', 'certificate_1731482947.pdf'),
(28, 1, '', '', '', '', '', '2024-11-13 07:29:28', NULL, '../../../uploads/certificate_1731482968.pdf', 'certificate_1731482968.pdf'),
(29, 1, '', '', '', '', '', '2024-11-13 07:29:41', NULL, '../../../uploads/certificate_1731482981.pdf', 'certificate_1731482981.pdf'),
(30, 1, '', '', '', '', '', '2024-11-13 07:29:59', NULL, '../../../uploads/certificate_1731482999.pdf', 'certificate_1731482999.pdf'),
(31, 1, '', '', '', '', '', '2024-11-13 07:30:17', NULL, '../../../uploads/certificate_1731483017.pdf', 'certificate_1731483017.pdf'),
(32, 1, '', '', '', '', '', '2024-11-13 07:30:32', NULL, '../../../uploads/certificate_1731483032.pdf', 'certificate_1731483032.pdf'),
(33, 1, '', '', '', '', '', '2024-11-13 07:31:07', NULL, '../../../uploads/certificate_1731483067.pdf', 'certificate_1731483067.pdf'),
(34, 1, '', '', '', '', '', '2024-11-13 07:31:36', NULL, '../../../uploads/certificate_1731483096.pdf', 'certificate_1731483096.pdf'),
(35, 1, '', '', '', '', '', '2024-11-13 07:32:18', NULL, '../../../uploads/certificate_1731483138.pdf', 'certificate_1731483138.pdf'),
(36, 1, '', '', '', '', '', '2024-11-13 07:32:54', NULL, '../../../uploads/certificate_1731483174.pdf', 'certificate_1731483174.pdf'),
(37, 1, '', '', '', '', '', '2024-11-13 07:33:39', NULL, '../../../uploads/certificate_1731483219.pdf', 'certificate_1731483219.pdf'),
(38, 1, '', '', '', '', '', '2024-11-13 07:33:55', NULL, '../../../uploads/certificate_1731483235.pdf', 'certificate_1731483235.pdf'),
(39, 1, '', '', '', '', '', '2024-11-13 07:34:26', NULL, '../../../uploads/certificate_1731483266.pdf', 'certificate_1731483266.pdf'),
(40, 1, '', '', '', '', '', '2024-11-13 07:43:12', NULL, '../../../uploads/certificate_1731483792.pdf', 'certificate_1731483792.pdf'),
(41, 1, '', '', '', '', '', '2024-11-13 07:45:00', NULL, '../../../uploads/certificate_1731483900.pdf', 'certificate_1731483900.pdf'),
(42, 1, '', '', '', '', '', '2024-11-13 07:48:45', NULL, '../../../uploads/certificate_1731484125.pdf', 'certificate_1731484125.pdf'),
(43, 1, '', '', '', '', '', '2024-11-13 07:49:00', NULL, '../../../uploads/certificate_1731484140.pdf', 'certificate_1731484140.pdf'),
(44, 1, '', '', '', '', '', '2024-11-13 07:49:13', NULL, '../../../uploads/certificate_1731484153.pdf', 'certificate_1731484153.pdf'),
(45, 1, '', '', '', '', '', '2024-11-13 07:49:31', NULL, '../../../uploads/certificate_1731484171.pdf', 'certificate_1731484171.pdf'),
(46, 1, '', '', '', '', '', '2024-11-13 07:49:48', NULL, '../../../uploads/certificate_1731484188.pdf', 'certificate_1731484188.pdf'),
(47, 1, '', '', '', '', '', '2024-11-13 07:50:07', NULL, '../../../uploads/certificate_1731484207.pdf', 'certificate_1731484207.pdf'),
(48, 1, '', '', '', '', '', '2024-11-13 07:50:21', NULL, '../../../uploads/certificate_1731484221.pdf', 'certificate_1731484221.pdf'),
(49, 1, '', '', '', '', '', '2024-11-13 07:50:43', NULL, '../../../uploads/certificate_1731484243.pdf', 'certificate_1731484243.pdf'),
(50, 1, '', '', '', '', '', '2024-11-13 07:51:06', NULL, '../../../uploads/certificate_1731484266.pdf', 'certificate_1731484266.pdf'),
(51, 1, '', '', '', '', '', '2024-11-13 07:51:24', NULL, '../../../uploads/certificate_1731484284.pdf', 'certificate_1731484284.pdf'),
(52, 1, '', '', '', '', '', '2024-11-13 07:51:40', NULL, '../../../uploads/certificate_1731484300.pdf', 'certificate_1731484300.pdf'),
(53, 1, '', '', '', '', '', '2024-11-13 07:51:52', NULL, '../../../uploads/certificate_1731484312.pdf', 'certificate_1731484312.pdf'),
(54, 1, '', '', '', '', '', '2024-11-13 07:52:14', NULL, '../../../uploads/certificate_1731484333.pdf', 'certificate_1731484333.pdf'),
(55, 1, '', '', '', '', '', '2024-11-13 07:52:41', NULL, '../../../uploads/certificate_1731484361.pdf', 'certificate_1731484361.pdf'),
(56, 1, '', '', '', '', '', '2024-11-13 07:52:56', NULL, '../../../uploads/certificate_1731484376.pdf', 'certificate_1731484376.pdf'),
(57, 1, '', '', '', '', '', '2024-11-13 07:53:12', NULL, '../../../uploads/certificate_1731484392.pdf', 'certificate_1731484392.pdf'),
(58, 1, '', '', '', '', '', '2024-11-13 07:53:31', NULL, '../../../uploads/certificate_1731484411.pdf', 'certificate_1731484411.pdf'),
(59, 1, '', '', '', '', '', '2024-11-13 07:53:46', NULL, '../../../uploads/certificate_1731484426.pdf', 'certificate_1731484426.pdf'),
(60, 1, '', '', '', '', '', '2024-11-13 07:54:00', NULL, '../../../uploads/certificate_1731484440.pdf', 'certificate_1731484440.pdf'),
(61, 1, '', '', '', '', '', '2024-11-13 07:54:22', NULL, '../../../uploads/certificate_1731484462.pdf', 'certificate_1731484462.pdf'),
(62, 1, '', '', '', '', '', '2024-11-13 07:54:33', NULL, '../../../uploads/certificate_1731484473.pdf', 'certificate_1731484473.pdf'),
(63, 1, '', '', '', '', '', '2024-11-13 07:54:51', NULL, '../../../uploads/certificate_1731484491.pdf', 'certificate_1731484491.pdf'),
(64, 1, '', '', '', '', '', '2024-11-13 07:55:25', NULL, '../../../uploads/certificate_1731484525.pdf', 'certificate_1731484525.pdf'),
(65, 1, '', '', '', '', '', '2024-11-13 07:56:30', NULL, '../../../uploads/certificate_1731484590.pdf', 'certificate_1731484590.pdf'),
(66, 1, '', '', '', '', '', '2024-11-13 07:57:10', NULL, '../../../uploads/certificate_1731484630.pdf', 'certificate_1731484630.pdf'),
(67, 1, '', '', '', '', '', '2024-11-13 07:57:32', NULL, '../../../uploads/certificate_1731484652.pdf', 'certificate_1731484652.pdf'),
(68, 1, '', '', '', '', '', '2024-11-13 07:57:46', NULL, '../../../uploads/certificate_1731484666.pdf', 'certificate_1731484666.pdf'),
(69, 1, '', '', '', '', '', '2024-11-13 07:58:00', NULL, '../../../uploads/certificate_1731484680.pdf', 'certificate_1731484680.pdf'),
(70, 1, '', '', '', '', '', '2024-11-13 07:58:17', NULL, '../../../uploads/certificate_1731484697.pdf', 'certificate_1731484697.pdf'),
(71, 1, '', '', '', '', '', '2024-11-13 08:01:08', NULL, '../../../uploads/certificate_1731484868.pdf', 'certificate_1731484868.pdf'),
(72, 1, '', '', '', '', '', '2024-11-13 08:01:46', NULL, '../../../uploads/certificate_1731484906.pdf', 'certificate_1731484906.pdf'),
(73, 1, '', '', '', '', '', '2024-11-13 08:01:57', NULL, '../../../uploads/certificate_1731484917.pdf', 'certificate_1731484917.pdf'),
(74, 1, '', '', '', '', '', '2024-11-13 08:02:10', NULL, '../../../uploads/certificate_1731484930.pdf', 'certificate_1731484930.pdf'),
(75, 1, '', '', '', '', '', '2024-11-13 08:02:29', NULL, '../../../uploads/certificate_1731484949.pdf', 'certificate_1731484949.pdf'),
(76, 1, '', '', '', '', '', '2024-11-13 08:03:22', NULL, '../../../uploads/certificate_1731485002.pdf', 'certificate_1731485002.pdf'),
(77, 1, '', '', '', '', '', '2024-11-13 08:03:39', NULL, '../../../uploads/certificate_1731485019.pdf', 'certificate_1731485019.pdf'),
(78, 1, '', '', '', '', '', '2024-11-13 08:03:55', NULL, '../../../uploads/certificate_1731485035.pdf', 'certificate_1731485035.pdf'),
(79, 1, '', '', '', '', '', '2024-11-13 08:04:20', NULL, '../../../uploads/certificate_1731485060.pdf', 'certificate_1731485060.pdf'),
(80, 1, '', '', '', '', '', '2024-11-13 08:04:34', NULL, '../../../uploads/certificate_1731485074.pdf', 'certificate_1731485074.pdf'),
(81, 1, '', '', '', '', '', '2024-11-13 08:04:49', NULL, '../../../uploads/certificate_1731485089.pdf', 'certificate_1731485089.pdf'),
(82, 1, '', '', '', '', '', '2024-11-13 08:05:07', NULL, '../../../uploads/certificate_1731485107.pdf', 'certificate_1731485107.pdf'),
(83, 1, '', '', '', '', '', '2024-11-13 08:05:20', NULL, '../../../uploads/certificate_1731485120.pdf', 'certificate_1731485120.pdf'),
(84, 1, '', '', '', '', '', '2024-11-13 08:05:35', NULL, '../../../uploads/certificate_1731485135.pdf', 'certificate_1731485135.pdf'),
(85, 1, '', '', '', '', '', '2024-11-13 08:06:15', NULL, '../../../uploads/certificate_1731485174.pdf', 'certificate_1731485174.pdf'),
(86, 1, '', '', '', '', '', '2024-11-13 08:06:29', NULL, '../../../uploads/certificate_1731485189.pdf', 'certificate_1731485189.pdf'),
(87, 1, '', '', '', '', '', '2024-11-13 08:06:44', NULL, '../../../uploads/certificate_1731485204.pdf', 'certificate_1731485204.pdf'),
(88, 1, '', '', '', '', '', '2024-11-13 08:06:58', NULL, '../../../uploads/certificate_1731485218.pdf', 'certificate_1731485218.pdf'),
(89, 1, '', '', '', '', '', '2024-11-13 08:07:18', NULL, '../../../uploads/certificate_1731485238.pdf', 'certificate_1731485238.pdf'),
(90, 1, '', '', '', '', '', '2024-11-13 08:07:37', NULL, '../../../uploads/certificate_1731485257.pdf', 'certificate_1731485257.pdf'),
(91, 1, '', '', '', '', '', '2024-11-13 08:07:54', NULL, '../../../uploads/certificate_1731485274.pdf', 'certificate_1731485274.pdf'),
(92, 1, '', '', '', '', '', '2024-11-13 08:08:05', NULL, '../../../uploads/certificate_1731485285.pdf', 'certificate_1731485285.pdf'),
(93, 1, '', '', '', '', '', '2024-11-13 08:08:17', NULL, '../../../uploads/certificate_1731485297.pdf', 'certificate_1731485297.pdf'),
(94, 1, '', '', '', '', '', '2024-11-13 08:29:38', NULL, '../../../uploads/certificate_1731486578.pdf', 'certificate_1731486578.pdf'),
(95, 1, '', '', '', '', '', '2024-11-13 08:30:54', NULL, '../../../uploads/certificate_1731486654.pdf', 'certificate_1731486654.pdf'),
(96, 1, '', '', '', '', '', '2024-11-13 08:31:08', NULL, '../../../uploads/certificate_1731486668.pdf', 'certificate_1731486668.pdf'),
(97, 1, '', '', '', '', '', '2024-11-13 08:31:20', NULL, '../../../uploads/certificate_1731486680.pdf', 'certificate_1731486680.pdf'),
(98, 1, '', '', '', '', '', '2024-11-13 08:31:48', NULL, '../../../uploads/certificate_1731486708.pdf', 'certificate_1731486708.pdf'),
(99, 1, '', '', '', '', '', '2024-11-13 08:32:03', NULL, '../../../uploads/certificate_1731486723.pdf', 'certificate_1731486723.pdf'),
(100, 1, '', '', '', '', '', '2024-11-13 08:32:24', NULL, '../../../uploads/certificate_1731486744.pdf', 'certificate_1731486744.pdf'),
(101, 1, '', '', '', '', '', '2024-11-13 08:32:37', NULL, '../../../uploads/certificate_1731486757.pdf', 'certificate_1731486757.pdf'),
(102, 1, '', '', '', '', '', '2024-11-13 08:32:52', NULL, '../../../uploads/certificate_1731486772.pdf', 'certificate_1731486772.pdf'),
(103, 1, '', '', '', '', '', '2024-11-13 08:33:36', NULL, '../../../uploads/certificate_1731486816.pdf', 'certificate_1731486816.pdf'),
(104, 1, '', '', '', '', '', '2024-11-13 08:33:54', NULL, '../../../uploads/certificate_1731486834.pdf', 'certificate_1731486834.pdf'),
(105, 1, '', '', '', '', '', '2024-11-13 08:34:13', NULL, '../../../uploads/certificate_1731486853.pdf', 'certificate_1731486853.pdf'),
(106, 1, '', '', '', '', '', '2024-11-13 08:34:29', NULL, '../../../uploads/certificate_1731486869.pdf', 'certificate_1731486869.pdf'),
(107, 1, '', '', '', '', '', '2024-11-13 08:34:48', NULL, '../../../uploads/certificate_1731486888.pdf', 'certificate_1731486888.pdf'),
(108, 1, '', '', '', '', '', '2024-11-13 08:39:43', NULL, '../../../uploads/certificate_1731487183.pdf', 'certificate_1731487183.pdf'),
(109, 1, '', '', '', '', '', '2024-11-13 08:40:58', NULL, '../../../uploads/certificate_1731487258.pdf', 'certificate_1731487258.pdf'),
(110, 1, '', '', '', '', '', '2024-11-13 08:41:55', NULL, '../../../uploads/certificate_1731487315.pdf', 'certificate_1731487315.pdf'),
(111, 1, '', '', '', '', '', '2024-11-13 08:43:06', NULL, '../../../uploads/certificate_1731487386.pdf', 'certificate_1731487386.pdf'),
(112, 1, '', '543', '', '', '', '2024-11-13 08:43:32', NULL, '../../../uploads/Sertifikat_543.pdf', 'Sertifikat_543.pdf'),
(113, 1, '', '', '', '', '', '2024-11-13 08:43:50', NULL, '../../../uploads/certificate_1731487430.pdf', 'certificate_1731487430.pdf'),
(114, 1, '', '', '', '', '', '2024-11-13 08:44:46', NULL, '../../../uploads/certificate_1731487485.pdf', 'certificate_1731487485.pdf'),
(115, 1, '', '', '', '', '', '2024-11-13 08:45:50', NULL, '../../../uploads/certificate_1731487550.pdf', 'certificate_1731487550.pdf'),
(116, 1, '', '', '', '', '', '2024-11-13 12:39:00', NULL, '../../../uploads/certificate_1731501540.pdf', 'certificate_1731501540.pdf'),
(117, 1, '', '', '', '', '', '2024-11-13 12:43:44', NULL, '../../../uploads/certificate_1731501824.pdf', 'certificate_1731501824.pdf'),
(118, 1, '', '', '', '', '', '2024-11-13 12:46:08', NULL, '../../../uploads/certificate_1731501968.pdf', 'certificate_1731501968.pdf'),
(119, 1, '', '', '', '', '', '2024-11-13 12:46:23', NULL, '../../../uploads/certificate_1731501983.pdf', 'certificate_1731501983.pdf'),
(120, 1, '', '', '', '', '', '2024-11-13 12:46:37', NULL, '../../../uploads/certificate_1731501997.pdf', 'certificate_1731501997.pdf'),
(121, 1, '', '', '', '', '', '2024-11-13 12:46:48', NULL, '../../../uploads/certificate_1731502008.pdf', 'certificate_1731502008.pdf'),
(122, 1, '', '', '', '', '', '2024-11-13 12:47:02', NULL, '../../../uploads/certificate_1731502022.pdf', 'certificate_1731502022.pdf'),
(123, 1, '', '', '', '', '', '2024-11-13 12:47:12', NULL, '../../../uploads/certificate_1731502032.pdf', 'certificate_1731502032.pdf'),
(124, 1, '', '', '', '', '', '2024-11-13 12:47:35', NULL, '../../../uploads/certificate_1731502055.pdf', 'certificate_1731502055.pdf'),
(125, 1, '', '', '', '', '', '2024-11-13 12:47:49', NULL, '../../../uploads/certificate_1731502069.pdf', 'certificate_1731502069.pdf'),
(126, 1, '', '', '', '', '', '2024-11-13 12:48:03', NULL, '../../../uploads/certificate_1731502083.pdf', 'certificate_1731502083.pdf'),
(127, 1, '', '', '', '', '', '2024-11-13 12:48:14', NULL, '../../../uploads/certificate_1731502094.pdf', 'certificate_1731502094.pdf'),
(128, 1, '', '', '', '', '', '2024-11-13 12:48:38', NULL, '../../../uploads/certificate_1731502118.pdf', 'certificate_1731502118.pdf'),
(129, 1, '', '', '', '', '', '2024-11-13 12:48:50', NULL, '../../../uploads/certificate_1731502130.pdf', 'certificate_1731502130.pdf'),
(130, 1, '', '', '', '', '', '2024-11-13 12:49:00', NULL, '../../../uploads/certificate_1731502140.pdf', 'certificate_1731502140.pdf'),
(131, 1, '', '', '', '', '', '2024-11-13 12:49:15', NULL, '../../../uploads/certificate_1731502155.pdf', 'certificate_1731502155.pdf'),
(132, 1, '', '', '', '', '', '2024-11-13 12:49:37', NULL, '../../../uploads/certificate_1731502177.pdf', 'certificate_1731502177.pdf'),
(133, 1, '', '', '', '', '', '2024-11-13 12:49:54', NULL, '../../../uploads/certificate_1731502194.pdf', 'certificate_1731502194.pdf'),
(134, 1, '', '', '', '', '', '2024-11-13 12:50:08', NULL, '../../../uploads/certificate_1731502208.pdf', 'certificate_1731502208.pdf'),
(135, 1, '', '', '', '', '', '2024-11-13 12:50:21', NULL, '../../../uploads/certificate_1731502221.pdf', 'certificate_1731502221.pdf'),
(136, 1, '', '', '', '', '', '2024-11-13 12:50:33', NULL, '../../../uploads/certificate_1731502233.pdf', 'certificate_1731502233.pdf'),
(137, 1, '', '', '', '', '', '2024-11-13 13:03:27', NULL, '../../../uploads/certificate_1731503007.pdf', 'certificate_1731503007.pdf'),
(138, 1, '', '', '', '', '', '2024-11-13 13:04:10', NULL, '../../../uploads/certificate_1731503050.pdf', 'certificate_1731503050.pdf'),
(139, 1, '', '', '', '', '', '2024-11-13 13:04:22', NULL, '../../../uploads/certificate_1731503062.pdf', 'certificate_1731503062.pdf'),
(140, 1, '', '', '', '', '', '2024-11-13 13:04:47', NULL, '../../../uploads/certificate_1731503087.pdf', 'certificate_1731503087.pdf'),
(141, 1, '', '', '', '', '', '2024-11-13 13:04:58', NULL, '../../../uploads/certificate_1731503098.pdf', 'certificate_1731503098.pdf'),
(142, 1, '', '', '', '', '', '2024-11-13 13:05:09', NULL, '../../../uploads/certificate_1731503109.pdf', 'certificate_1731503109.pdf'),
(143, 1, '', '', '', '', '', '2024-11-13 13:05:20', NULL, '../../../uploads/certificate_1731503120.pdf', 'certificate_1731503120.pdf'),
(144, 1, '', '', '', '', '', '2024-11-13 13:05:35', NULL, '../../../uploads/certificate_1731503135.pdf', 'certificate_1731503135.pdf'),
(145, 1, '', '', '', '', '', '2024-11-13 13:06:04', NULL, '../../../uploads/certificate_1731503164.pdf', 'certificate_1731503164.pdf'),
(146, 1, '', '', '', '', '', '2024-11-13 13:06:15', NULL, '../../../uploads/certificate_1731503175.pdf', 'certificate_1731503175.pdf'),
(147, 1, '', '', '', '', '', '2024-11-13 13:06:24', NULL, '../../../uploads/certificate_1731503184.pdf', 'certificate_1731503184.pdf'),
(148, 1, '', '', '', '', '', '2024-11-13 13:06:34', NULL, '../../../uploads/certificate_1731503194.pdf', 'certificate_1731503194.pdf'),
(149, 1, '', '', '', '', '', '2024-11-13 13:07:58', NULL, '../../../uploads/certificate_1731503278.pdf', 'certificate_1731503278.pdf'),
(150, 1, '', '', '', '', '', '2024-11-13 13:08:09', NULL, '../../../uploads/certificate_1731503289.pdf', 'certificate_1731503289.pdf'),
(151, 1, '', '', '', '', '', '2024-11-13 13:08:33', NULL, '../../../uploads/certificate_1731503313.pdf', 'certificate_1731503313.pdf'),
(152, 1, '', '', '', '', '', '2024-11-13 13:08:44', NULL, '../../../uploads/certificate_1731503324.pdf', 'certificate_1731503324.pdf'),
(153, 1, '', '', '', '', '', '2024-11-13 13:22:14', NULL, '../../../uploads/certificate_1731504134.pdf', 'certificate_1731504134.pdf'),
(154, 1, '', '', '', '', '', '2024-11-13 13:23:13', NULL, '../../../uploads/certificate_1731504193.pdf', 'certificate_1731504193.pdf'),
(155, 1, '', '', '', '', '', '2024-11-13 13:23:56', NULL, '../../../uploads/certificate_1731504236.pdf', 'certificate_1731504236.pdf'),
(156, 1, '', '', '', '', '', '2024-11-13 13:24:15', NULL, '../../../uploads/certificate_1731504255.pdf', 'certificate_1731504255.pdf'),
(157, 1, '', '', '', '', '', '2024-11-13 13:24:56', NULL, '../../../uploads/certificate_1731504296.pdf', 'certificate_1731504296.pdf'),
(158, 1, '', '', '', '', '', '2024-11-13 13:25:06', NULL, '../../../uploads/certificate_1731504306.pdf', 'certificate_1731504306.pdf'),
(159, 1, '', '', '', '', '', '2024-11-13 13:25:28', NULL, '../../../uploads/certificate_1731504328.pdf', 'certificate_1731504328.pdf'),
(160, 1, '', '', '', '', '', '2024-11-13 13:25:45', NULL, '../../../uploads/certificate_1731504345.pdf', 'certificate_1731504345.pdf'),
(161, 1, '', '', '', '', '', '2024-11-13 13:25:54', NULL, '../../../uploads/certificate_1731504354.pdf', 'certificate_1731504354.pdf'),
(162, 1, '', '', '', '', '', '2024-11-13 13:26:04', NULL, '../../../uploads/certificate_1731504364.pdf', 'certificate_1731504364.pdf'),
(163, 1, '', '', '', '', '', '2024-11-13 13:26:15', NULL, '../../../uploads/certificate_1731504375.pdf', 'certificate_1731504375.pdf'),
(164, 1, '', '', '', '', '', '2024-11-13 13:26:35', NULL, '../../../uploads/certificate_1731504395.pdf', 'certificate_1731504395.pdf'),
(165, 1, '', '', '', '', '', '2024-11-13 13:26:46', NULL, '../../../uploads/certificate_1731504406.pdf', 'certificate_1731504406.pdf'),
(166, 1, '', '', '', '', '', '2024-11-13 13:26:55', NULL, '../../../uploads/certificate_1731504415.pdf', 'certificate_1731504415.pdf'),
(167, 1, '', '', '', '', '', '2024-11-13 13:27:10', NULL, '../../../uploads/certificate_1731504430.pdf', 'certificate_1731504430.pdf'),
(168, 1, '', '', '', '', '', '2024-11-13 13:27:19', NULL, '../../../uploads/certificate_1731504439.pdf', 'certificate_1731504439.pdf'),
(169, 1, '', '', '', '', '', '2024-11-13 13:27:31', NULL, '../../../uploads/certificate_1731504451.pdf', 'certificate_1731504451.pdf'),
(170, 1, '', '', '', '', '', '2024-11-13 13:27:55', NULL, '../../../uploads/certificate_1731504475.pdf', 'certificate_1731504475.pdf'),
(171, 1, '', '', '', '', '', '2024-11-13 13:28:07', NULL, '../../../uploads/certificate_1731504487.pdf', 'certificate_1731504487.pdf'),
(172, 1, '', '', '', '', '', '2024-11-13 13:28:17', NULL, '../../../uploads/certificate_1731504497.pdf', 'certificate_1731504497.pdf'),
(173, 1, '', '', '', '', '', '2024-11-13 13:37:55', NULL, '../../../uploads/certificate_1731505075.pdf', 'certificate_1731505075.pdf'),
(174, 1, '', '', '', '', '', '2024-11-13 13:38:20', NULL, '../../../uploads/certificate_1731505100.pdf', 'certificate_1731505100.pdf'),
(175, 1, '', '', '', '', '', '2024-11-13 13:38:28', NULL, '../../../uploads/certificate_1731505108.pdf', 'certificate_1731505108.pdf'),
(176, 1, '', '', '', '', '', '2024-11-13 13:38:51', NULL, '../../../uploads/certificate_1731505131.pdf', 'certificate_1731505131.pdf'),
(177, 1, '', '', '', '', '', '2024-11-13 13:39:18', NULL, '../../../uploads/certificate_1731505158.pdf', 'certificate_1731505158.pdf'),
(178, 1, '', '', '', '', '', '2024-11-13 13:39:29', NULL, '../../../uploads/certificate_1731505169.pdf', 'certificate_1731505169.pdf'),
(179, 1, '', '', '', '', '', '2024-11-13 13:39:51', NULL, '../../../uploads/certificate_1731505191.pdf', 'certificate_1731505191.pdf'),
(180, 1, '', '', '', '', '', '2024-11-13 13:40:02', NULL, '../../../uploads/certificate_1731505202.pdf', 'certificate_1731505202.pdf'),
(181, 1, '', '', '', '', '', '2024-11-13 13:40:12', NULL, '../../../uploads/certificate_1731505212.pdf', 'certificate_1731505212.pdf'),
(182, 1, '', '', '', '', '', '2024-11-13 13:49:09', NULL, '../../../uploads/certificate_1731505749.pdf', 'certificate_1731505749.pdf'),
(183, 1, '', '', '', '', '', '2024-11-13 13:50:31', NULL, '../../../uploads/certificate_1731505831.pdf', 'certificate_1731505831.pdf'),
(184, 1, '', '', '', '', '', '2024-11-13 13:51:03', NULL, '../../../uploads/certificate_1731505863.pdf', 'certificate_1731505863.pdf'),
(185, 1, '', '', '', '', '', '2024-11-13 13:51:26', NULL, '../../../uploads/certificate_1731505886.pdf', 'certificate_1731505886.pdf'),
(186, 1, '', '', '', '', '', '2024-11-13 13:51:57', NULL, '../../../uploads/certificate_1731505917.pdf', 'certificate_1731505917.pdf'),
(187, 1, '', '', '', '', '', '2024-11-13 13:52:10', NULL, '../../../uploads/certificate_1731505930.pdf', 'certificate_1731505930.pdf'),
(188, 1, '', '', '', '', '', '2024-11-13 13:52:21', NULL, '../../../uploads/certificate_1731505941.pdf', 'certificate_1731505941.pdf'),
(189, 1, '', '', '', '', '', '2024-11-13 13:52:38', NULL, '../../../uploads/certificate_1731505958.pdf', 'certificate_1731505958.pdf'),
(190, 1, '', '', '', '', '', '2024-11-13 13:53:29', NULL, '../../../uploads/certificate_1731506009.pdf', 'certificate_1731506009.pdf'),
(191, 1, '', '', '', '', '', '2024-11-13 13:55:42', NULL, '../../../uploads/certificate_1731506141.pdf', 'certificate_1731506141.pdf'),
(192, 1, '', '', '', '', '', '2024-11-13 13:56:07', NULL, '../../../uploads/certificate_1731506167.pdf', 'certificate_1731506167.pdf'),
(193, 1, '', '', '', '', '', '2024-11-13 13:57:04', NULL, '../../../uploads/certificate_1731506224.pdf', 'certificate_1731506224.pdf'),
(194, 1, '', '', '', '', '', '2024-11-13 13:57:15', NULL, '../../../uploads/certificate_1731506235.pdf', 'certificate_1731506235.pdf'),
(195, 1, '', '', '', '', '', '2024-11-13 13:57:37', NULL, '../../../uploads/certificate_1731506257.pdf', 'certificate_1731506257.pdf'),
(196, 1, '', '', '', '', '', '2024-11-13 13:57:50', NULL, '../../../uploads/certificate_1731506270.pdf', 'certificate_1731506270.pdf'),
(197, 1, '', '', '', '', '', '2024-11-13 13:58:00', NULL, '../../../uploads/certificate_1731506280.pdf', 'certificate_1731506280.pdf'),
(198, 1, '', '', '', '', '', '2024-11-13 13:58:10', NULL, '../../../uploads/certificate_1731506290.pdf', 'certificate_1731506290.pdf'),
(199, 1, '', '', '', '', '', '2024-11-13 13:58:28', NULL, '../../../uploads/certificate_1731506308.pdf', 'certificate_1731506308.pdf'),
(200, 1, '', '', '', '', '', '2024-11-13 14:11:22', NULL, '../../../uploads/certificate_1731507082.pdf', 'certificate_1731507082.pdf'),
(201, 1, '', '', '', '', '', '2024-11-13 14:11:51', NULL, '../../../uploads/certificate_1731507111.pdf', 'certificate_1731507111.pdf'),
(202, 1, '', '', '', '', '', '2024-11-13 14:12:03', NULL, '../../../uploads/certificate_1731507123.pdf', 'certificate_1731507123.pdf'),
(203, 1, '', '', '', '', '', '2024-11-13 14:12:15', NULL, '../../../uploads/certificate_1731507135.pdf', 'certificate_1731507135.pdf'),
(204, 1, '', '', '', '', '', '2024-11-13 14:12:27', NULL, '../../../uploads/certificate_1731507147.pdf', 'certificate_1731507147.pdf'),
(205, 1, '', '', '', '', '', '2024-11-13 14:12:38', NULL, '../../../uploads/certificate_1731507158.pdf', 'certificate_1731507158.pdf'),
(206, 1, '', '', '', '', '', '2024-11-13 14:12:47', NULL, '../../../uploads/certificate_1731507167.pdf', 'certificate_1731507167.pdf'),
(207, 1, '', '', '', '', '', '2024-11-13 14:27:54', NULL, '../../../uploads/certificate_1731508074.pdf', 'certificate_1731508074.pdf'),
(208, 1, '', '', '', '', '', '2024-11-13 14:42:44', NULL, '../../../uploads/certificate_1731508964.pdf', 'certificate_1731508964.pdf'),
(209, 1, '', '', '', '', '', '2024-11-13 14:43:42', NULL, '../../../uploads/certificate_1731509022.pdf', 'certificate_1731509022.pdf'),
(210, 1, '', '', '', '', '', '2024-11-13 14:44:11', NULL, '../../../uploads/certificate_1731509051.pdf', 'certificate_1731509051.pdf'),
(211, 1, '', '', '', '', '', '2024-11-13 14:44:33', NULL, '../../../uploads/certificate_1731509073.pdf', 'certificate_1731509073.pdf'),
(212, 1, '', '', '', '', '', '2024-11-13 14:44:47', NULL, '../../../uploads/certificate_1731509087.pdf', 'certificate_1731509087.pdf'),
(213, 1, '', '', '', '', '', '2024-11-13 14:45:16', NULL, '../../../uploads/certificate_1731509116.pdf', 'certificate_1731509116.pdf'),
(214, 1, '', '', '', '', '', '2024-11-13 14:45:33', NULL, '../../../uploads/certificate_1731509133.pdf', 'certificate_1731509133.pdf'),
(215, 1, '', '', '', '', '', '2024-11-13 14:45:51', NULL, '../../../uploads/certificate_1731509151.pdf', 'certificate_1731509151.pdf'),
(216, 1, '', '', '', '', '', '2024-11-13 14:46:06', NULL, '../../../uploads/certificate_1731509166.pdf', 'certificate_1731509166.pdf'),
(217, 1, '', '', '', '', '', '2024-11-13 14:46:20', NULL, '../../../uploads/certificate_1731509180.pdf', 'certificate_1731509180.pdf'),
(218, 1, '', '', '', '', '', '2024-11-13 14:46:30', NULL, '../../../uploads/certificate_1731509190.pdf', 'certificate_1731509190.pdf'),
(219, 1, '', '', '', '', '', '2024-11-13 14:46:57', NULL, '../../../uploads/certificate_1731509217.pdf', 'certificate_1731509217.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'rafi', '$2y$10$.MnzgfND.LZmFyJWnCU1heD6DKVlLX/HjSJ8mPRXUWPAzKUhs0t6e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
