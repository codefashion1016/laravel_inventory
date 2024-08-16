-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2024 at 11:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory1`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `name`, `email`, `description`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Thu, Dec 14, 2023 12:55 AM', NULL, NULL),
(2, 'Inder Wadhwa', 'inderw@womusa.com', 'has logged out', 'Thu, Dec 14, 2023 1:26 AM', NULL, NULL),
(3, 'jorgeb@womusa.com', 'jorgeb@womusa.com', 'has log in', 'Thu, Dec 14, 2023 1:26 AM', NULL, NULL),
(4, 'Jorge Barron', 'jorgeb@womusa.com', 'has logged out', 'Thu, Dec 14, 2023 1:27 AM', NULL, NULL),
(5, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Thu, Dec 14, 2023 1:27 AM', NULL, NULL),
(6, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Fri, May 17, 2024 4:55 PM', NULL, NULL),
(7, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Sun, May 19, 2024 8:09 AM', NULL, NULL),
(8, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Sun, May 19, 2024 11:22 AM', NULL, NULL),
(9, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Mon, May 20, 2024 8:09 AM', NULL, NULL),
(10, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Mon, May 20, 2024 2:25 PM', NULL, NULL),
(11, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Mon, May 20, 2024 9:41 PM', NULL, NULL),
(12, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Tue, May 21, 2024 3:23 PM', NULL, NULL),
(13, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Thu, May 23, 2024 7:26 AM', NULL, NULL),
(14, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Thu, May 23, 2024 3:14 PM', NULL, NULL),
(15, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Thu, May 23, 2024 9:07 PM', NULL, NULL),
(16, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Fri, May 24, 2024 7:01 AM', NULL, NULL),
(17, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Fri, May 24, 2024 10:02 AM', NULL, NULL),
(18, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Fri, May 24, 2024 4:57 PM', NULL, NULL),
(19, 'zigmas', 'user1@mail.ru', 'has logged out', 'Fri, May 24, 2024 6:39 PM', NULL, NULL),
(20, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Fri, May 24, 2024 6:40 PM', NULL, NULL),
(21, 'Inder Wadhwa', 'inderw@womusa.com', 'has logged out', 'Fri, May 24, 2024 8:55 PM', NULL, NULL),
(22, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Fri, May 24, 2024 8:55 PM', NULL, NULL),
(23, 'zigmas', 'user1@mail.ru', 'has logged out', 'Fri, May 24, 2024 11:29 PM', NULL, NULL),
(24, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Fri, May 24, 2024 11:31 PM', NULL, NULL),
(25, 'Inder Wadhwa', 'inderw@womusa.com', 'has logged out', 'Fri, May 24, 2024 11:33 PM', NULL, NULL),
(26, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Sun, May 26, 2024 12:58 AM', NULL, NULL),
(27, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Sun, May 26, 2024 1:05 AM', NULL, NULL),
(28, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Sun, May 26, 2024 6:47 AM', NULL, NULL),
(29, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Mon, May 27, 2024 7:13 AM', NULL, NULL),
(30, 'zigmas', 'user1@mail.ru', 'has logged out', 'Mon, May 27, 2024 7:24 AM', NULL, NULL),
(31, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Mon, May 27, 2024 7:24 AM', NULL, NULL),
(32, 'Inder Wadhwa', 'inderw@womusa.com', 'has logged out', 'Mon, May 27, 2024 7:27 AM', NULL, NULL),
(33, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Mon, May 27, 2024 7:27 AM', NULL, NULL),
(34, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Mon, May 27, 2024 3:25 PM', NULL, NULL),
(35, 'inderw@womusa.com', 'inderw@womusa.com', 'has log in', 'Sun, Jun 2, 2024 2:39 PM', NULL, NULL),
(36, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Sun, Jun 2, 2024 2:45 PM', NULL, NULL),
(37, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Mon, Jun 3, 2024 3:08 PM', NULL, NULL),
(38, 'user1@mail.ru', 'user1@mail.ru', 'has log in', 'Tue, Jun 4, 2024 2:54 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drawings`
--

CREATE TABLE `drawings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `pdf_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drawings`
--

INSERT INTO `drawings` (`id`, `username`, `title`, `description`, `file_name`, `pdf_path`, `created_at`, `updated_at`) VALUES
(5, 'zigmas', 'test', '', '100x20 building.pdf', 'pdfs/mypdf_Tai76ByCTMyfHKa6z4wXndHsLZivdSXc.pdf', '2024-05-25 06:12:44', '2024-05-25 06:12:44'),
(6, 'zigmas', 'ggg', '', 'project proposal (1).pdf', 'pdfs/mypdf_hGuAN88RR4zpuxitpKJTwlXqsPnN2fjp.pdf', '2024-05-25 06:13:09', '2024-05-25 06:13:09'),
(7, 'zigmas', 'tertwe1', '', 'Assisted Living 05222024.pdf', 'pdfs/mypdf_2F7PaYNdtnmkoH8sel9Zk5WKPRqYzeJG.pdf', '2024-05-25 06:13:31', '2024-05-25 06:13:31'),
(8, 'zigmas', 'test3', '', 'Dok_stolarska_ludwiki_4d_24.pdf', 'pdfs/mypdf_ON6cP6P9BgaedKJWrXAawX2b4kyWw5N4.pdf', '2024-05-25 06:13:55', '2024-05-25 06:13:55'),
(9, 'zigmas', 'ggg', '', 'Proposal  for Blaze.pdf', 'pdfs/mypdf_qrXGzLBLTkjSMGf8Jma8mPD1i3zeM52Z.pdf', '2024-05-25 06:14:16', '2024-05-25 06:14:16'),
(10, 'zigmas', 'hhh', '', 'N.pdf', 'pdfs/mypdf_EIWcJRNItuWDUMhSUJHawJYg2itOoaDf.pdf', '2024-05-25 06:14:38', '2024-05-25 06:14:38'),
(13, 'zigmas', 'qweqwe', 'qweqweqweqwe', '1327 Infeed Power Drawing.pdf', 'pdfs/mypdf_HVELKeOL5xW8NhyqBjU07CpEVpNeXF4n.pdf', '2024-06-04 06:48:09', '2024-06-04 06:48:09');

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
-- Table structure for table `inventorys`
--

CREATE TABLE `inventorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wompart_num` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `wom_description` varchar(255) NOT NULL,
  `wom_po` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `wom_serial` varchar(255) DEFAULT NULL,
  `durometer` varchar(255) DEFAULT NULL,
  `compound` varchar(255) DEFAULT NULL,
  `cure_date` timestamp NULL DEFAULT NULL,
  `expiration_date` timestamp NULL DEFAULT NULL,
  `where_used` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventorys`
--

INSERT INTO `inventorys` (`id`, `wompart_num`, `quantity`, `wom_description`, `wom_po`, `category_name`, `wom_serial`, `durometer`, `compound`, `cure_date`, `expiration_date`, `where_used`, `location`, `created_at`, `updated_at`) VALUES
(1, '2546', 20, 'BEARING, THRUST INA-4421', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(2, '3482', 2, 'BEARING, THRUST 2.50\" OD X 1.75\" ID X .078\" THK,', '2', 'Hard Component', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, '2023-12-14 06:56:50'),
(3, 'AC-3750', 3, 'PLUG, BLEEDER 3/8\" AUTOCLAVE PLUG', 'test', 'Hardware', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(4, 'AC-9160', 4, 'PLUG, BLEEDER 9/16\" AUTOCLAVE H2S SERVICE ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(5, 'AG-9160', 5, 'FITTING, GREASE 9/16\" AUTOCLAVE PLUG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(6, 'BS-2010S', 6, 'BACK UP RING 2-1/16\" 10/15K MAGNUM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(7, 'BS-7310S', 7, 'RING, BACKUP 7-3/8\"-10K MAGNUM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(8, 'BS-7310S-LRP1', 8, 'BACK UP RING 7-3/8\"-10K MAGNUM-LRP SEAT ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(9, 'BT-2015S', 9, 'RING, BACKUP 2-1/16\"-10/15K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(10, 'BT-7310S', 10, 'RING, BACKUP 7-3/8\"-10K MAGNUM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(11, 'BX-150-16', 11, 'RING GASKET, BX-150 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(12, 'BX-151-16', 12, 'RING GASKET, BX-151 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(13, 'BX-152-16', 13, 'GASKET, RING BX-152', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(14, 'BX-154-16', 14, 'RING GASKET, BX-154 USE WOM SPEC 4.9.117 TO MANUFACTURE.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(15, 'BX-155', 15, 'RING GASKET, BX-155 RING GASKET, BX-155', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(16, 'BX-156', 16, 'RING, GROOVE ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(17, 'BX-159-16', 17, 'RING GASKET, BX-159 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(18, 'BX-169-16', 18, 'RING GASKET, BX-169', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(19, 'BY-0022', 19, 'RING, RETAINER SMALLEY# WH-187-S02', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(20, 'BY-0027', 20, 'RING, WEAR 1.500 OD X 1.250 ID X0.375 THK PARKER # W2-1750-500, C/S .125\" +.000\"/- .005\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(21, 'BY-0030', 21, 'RING, WEAR 5.250 ID X 5.500 OD X .500 H, SCARF CUT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(22, 'BY-0048', 22, 'RING, WEAR PARKER #W2-2000-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(23, 'BY-0230', 23, 'RING, WEAR PARKER #W2-3250-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(24, 'BY-0314', 24, 'RING, WEAR PARKER #W2-3250-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(25, 'BY-0474', 25, 'BEARING, RACE TORRINGTON #TRB-2840, .06 THK.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(26, 'BY-0475', 26, 'RING, RETAINER SPIROLOX RRN-850/SMALLEY P/N:  WHM-850', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(27, 'BY-0476', 27, 'RING, WEAR 4.000 ID X 4.250 OD X .500 H, BUTT CUT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(28, 'BY-0514', 28, '1/4\"-18 NPT PLUG LEVEL FLUSH', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(29, 'BY-0554', 29, 'NIPPLE, HEX 1/2\" NPT MALE X 1/2\" NPT MALE,   SS PRECEDED BY BY-2311', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(30, 'BY-0585', 30, 'RING, WEAR (SUPERCEDED BY BY-3810) 2.250 OD X 2.000 ID X .500 THK', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(31, 'BY-0610', 31, ' 1/2\"-14 NPT PLUG ALLEN HEAD', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(32, 'BY-0744S', 32, 'WASHER, LOCK 1\" NOMINAL', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(33, 'BY-1236', 33, 'RING, RETAINER SPIROLOX #RST-181', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(34, 'BY-1237', 34, 'SCREW, SET  SOCKET HEAD 1/4\"-20UNC-2A x 1.00 LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(35, 'BY-1243', 35, 'SCREW, SOCKET HEAD CAP 1\"-8UN X 3.00\" LG. (XYLAN COATED)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(36, 'BY-1249', 36, 'PACKING, STEM 2.750\" O.D. X 1.750\" I.D. X 1.275\" HEIGHT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(37, 'BY-1251', 37, 'RING, RETAINER SPIROLOX PART # RSN-150', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(38, 'BY-1635S', 38, 'NUT, HEAVY HEX 5/16-18 UN-2B', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(39, 'BY-1850', 39, 'RING, WEAR PARKER #W2-2500-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(40, 'BY-1957', 40, 'BOLT, HEX HEAD 3/4\"-16UNF 2A X 2\" LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(41, 'BY-2046', 41, 'SEAL, POLYPAK B LIP ID 2.25\", OD 2.75\", .375\" HEIGHT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(42, 'BY-2075', 42, 'RING, WEAR PARKER #W2-3000-375', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(43, 'BY-2218', 43, 'RING, WEAR PARKER PART NO. W2-3000-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(44, 'BY-2291', 44, 'VALVE, SPM (SUPERSEDED: BY-7256) GVC P/N: 27610-1', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(45, 'BY-2291-RK', 45, 'REPAIR KIT, FOR BY-2291 ONLY N.O SPM VALVE REPAIR KIT FOR BY-2291 ONLY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(46, 'BY-2291-SK', 46, 'SEAL KIT, PROSERV-GILMORE P/N:  27165-2 SK', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(47, 'BY-2292', 47, 'VALVE, SPM (SUPERSEDED : BY-7257) 1/2\" N.C., 6000PSI,\nGVC P/N: 27611-1', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(48, 'BY-2292-RK', 48, 'REPAIR KIT-  FOR BY-2292 ONLY K CAN BE USED FOR BY-2292 SPM ONLY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(49, 'BY-2389', 49, 'SCREW, SOCKET HEAD CAP 3/8-16 UN-2A X .500\" LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(50, 'BY-2466-SK', 50, 'KIT, SEAL SPM VALVE 1/2\" N.C SPM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(51, 'BY-2716', 51, 'PLUG 1/8\" NPT,  EXTERNAL HEX DRIVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(52, 'BY-2717', 52, 'RING, RETAINER SPIROLOX #: RR-118', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(53, 'BY-2718', 53, 'HIGH TEMP PACKING, STEM 1.125\" X .750\" X .548/.588\" HIGH', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(54, 'BY-2720', 54, 'PLUG, BLIND 3/8\" NPT(M), 5K WP, HEX HEAD', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(55, 'BY-2957', 55, 'SPRING, DISC BELLEVILLE SPRINGS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(56, 'BY-2958', 56, 'WEAR BAND 0.125 SEET PARKER PART# W2-6000-1000', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(57, 'BY-2959', 57, 'POLYPAK SEAL PAKER PART# 37505250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(58, 'BY-2960', 58, ' SEAL TYPE B POLYPAK PARKER PART # 25002750-375, NOM. SIZE  3.25\" OD X 2.75\" ID X .375\" HT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(59, 'BY-3620', 59, 'SUBSEA REGULATOR 6K INLET X 1 TO 6K OUTLET , 1\" NPT, MANUAL   VENDOR IS GILMORE VALVE CO.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(60, 'BY-3620-RK', 60, 'KIT, REPAIR GILMORE SUBSEA REGULATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(61, 'BY-3620-SK', 61, ' SEAL, KIT GILMORE SUBSEA REGULATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(62, 'BY-3622', 62, 'ROV PADDLE VALVE ASSEMBLY 10K 3/8 MP PORTS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(63, 'BY-3626', 63, 'MALE COUPLING 1/2\" AO-SERIES', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(64, 'BY-3627', 64, ' FEMALE COUPLING 1/2\" AO-SERIES PLATED MOUNTED ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(65, 'BY-3627-SK', 65, 'SEAL KIT, FEMALE COUPLING, 1/2\" AO-SERIES PLATED MOUNTED SEAL KIT,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(66, 'BY-3630', 66, 'MALE COUPLING 1/4\" AO-SERIES PLATED MOUNTED', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(67, 'BY-3631-SK', 67, 'SEAL KIT, FEMALE COUPLING, 1/4\" AO-SERIES PLATED MOUNTED, SEAL KIT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(68, 'BY-3632-SK', 68, 'SEAL, KIT, TOBUL, 5K SUBSEA ACCM, SEAL KIT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(69, 'BY-3714', 69, 'S SEAL 241.3MM X 6.35MM 14.7MM DEEP NOMINAL SIZE 9.0\" X 9.5\" (EXTERNAL)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(70, 'BY-3722', 301, '1/2\"  SWAGELOK, MAX WP 6,000 PSI, TEMP -40 TO 250F VENDOR: SWAGELOK  VENDOR NUMBER SS-AFSS8', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(71, 'BY-3722-SK', 71, 'SEAL KIT, 1/2\"  SWAGELOK, BALL V ALVE SEAL KIT,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(72, 'BY-4327', 72, ' WASHER, LOCK SPLIT FOR 5/16\"  MACMASTER-CARR  # 92147A030', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(73, 'BY-4335', 73, 'HYDRAULIC CYLINDER F/ SHE-00057-000 CONNECTOR    ROD DIA 2\" THREAD 1.75-12    SEE ATTCHED SHEET FOR ORDER INFO/MANUFACTURES NUMBER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(74, 'BY-4381', 74, 'PIN, DOWEL .75\" x 1.75\" LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(75, 'BY-4461', 75, 'SPRING, WAVE MAKER SMALLEY PART # SSR-0150', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(76, 'BY-4521', 76, ' DOUBLE PILOTED (4-WAY) SELECTOR VALVE 2 POSITION DOUBLE PILOTED 4 WAY SELECTOR VALVE ASSY  VALVE, TADPOLE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(77, 'BY-4521-RK', 77, 'KIT, REPAIR 4WAY 2POS SELECTOR VALVE REPAIR KIT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(78, 'BY-4537', 78, 'SHUTTLE VALVE 1/4\" SUBSEA ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(79, 'BY-4537-RK', 79, 'REPAIR KIT Valve, Shuttle, In-Line, 1/4\" NPT In, 1/4\" NPT Out, 5000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(80, 'BY-4537-SK', 80, 'SEAL KIT Valve, Shuttle, In-Line, 1/4\" NPT In, 1/4\" NPT Out, 5000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(81, 'BY-4633', 81, 'VETCO VX WELLHEAD GASKET 18-3/4-10KSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(82, 'BY-4722', 82, 'WEAR, RING 9.5 NOM OD X 0.375 WIDTH SUPPLIER  PARKER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(83, 'BY-4754', 83, 'VALVE, CHECK 1/2\" MALE X 1/2\" MALE NPT CONNECTION CHECK VALVE, FIXED CRACKING PRESSURE 50 LBS., CP SERIES', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(84, 'BY-4754-SK', 84, 'SEAL KIT & SPRING KIT, CHECK VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(85, 'BY-4763', 85, 'RING, WEAR WPT TYPE, .125\" +/-.001\" CR/SEC, FOR BORE 11.25\", GROOVE .500\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(86, 'BY-4963', 86, 'HEX HEAD BOLT, 5/16\" 3/4\" LONG 316 SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(87, 'BY-4964', 87, 'FLAT WASHER 5/16\", 316 SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(88, 'BY-4977', 88, '3/8\" BALANCED  COUPLER (MALE) COUPLER ASSEMBLY ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(89, 'BY-4977-SK', 89, 'SEAL KIT (FOR BY-4977 3/8” COUPLER)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(90, 'BY-4978', 90, '3/8\" BALANCED COUPLER (FEMALE) NIPPLE ASSY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(91, 'BY-4978-SK', 91, 'SEAL KIT (FOR BY-4978 3/8” COUPLER)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(92, 'BY-4979', 92, 'VENTED COUPLER NIPPLE ASSY ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(93, 'BY-4979-SK', 93, ' SEAL KIT (FOR BY-4979 3/8” COUPLER)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(94, 'BY-4980', 94, '7/8-9 UNC, 1.250\" CPSHSS, XYLAN COAT CUP POINT SOCKET HEAD SET SCREW, XYLAN COATED', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(95, 'BY-5067', 95, 'RING, WEAR TO SUIT ROD DIA. 0.75, GROOVE DIA. 1.001 WIDTH 0.385', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(96, 'BY-5068', 96, 'POLYPACK SEAL 2.5 O.D X 2.0 ID X STD', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(97, 'BY-5069', 97, 'POLYPAK SEAL 1.375 O.D X 1.00 I.D X STD.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(98, 'BY-5070', 98, 'WEAR RING, 1.00\" I.D x 1.25\" O.D x 0.375 Wide', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(99, 'BY-5153-SK', 99, 'REBUILD KIT, 3/4\" CHECK VALVE ASSEMBLY,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(100, 'BY-5158', 100, 'FLAT WASHER, 5/8” FLAT WASHER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(101, 'BY-5169', 101, 'SCREW, GRUB (SET) 3/4\" - 10 THREAD, 5/8\" LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(102, 'BY-5176', 102, ' WIPER, PISTON CYLINDER ID - 2.75 , C/S - 0.125\", AXIAL WIDTH 0.250\", W/ (4) .031\" THRU HOLES', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(103, 'BY-5177', 103, 'S-SEAL FOR O-RING GROOVE REF. -334 WITHOUT BACK UP RINGS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(104, 'BY-5178', 104, 'WEAR BAND ROD DIA/ID 3.750\", C/S 0.125\", (NOM. OD 4.00\")  AXIAL WIDTH - 0.500\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(105, 'BY-5179', 105, 'S-SEAL REF. CUSTOM O-RING SIZE (#3XX LEVEL) WITH 1 BACK-UP RING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(106, 'BY-5180', 106, 'WEAR BAND CYLINDER ID 5.750\" , C/S - 0.125, AXIAL WIDTH 0.500\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(107, 'BY-5181', 107, 'ROD, WIPER ROD DIA - 3.750\", PARKER: 4263-SH959-35, NOM. SIZE 3.75\" ID, 4.125\" OD, .211\" HT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(108, 'BY-5376', 108, 'VALVE, RELIEF 1/4\" 18 NPT SUBSEA )', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(109, 'BY-5475', 109, 'SCREW, SET WITH FLAT TIP 1/2-13UNC x 1 3/4 LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(110, 'BY-5517', 110, 'SCREW, SOCKET HEAD CAP 5/16\"-18UNC x 3.00 LG. 316 SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(111, 'BY-5520', 111, 'POLYPAK 10 3/4\" X 11-1/4\" X 9/16\" B-TYPE  ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(112, 'BY-5526 ', 112, 'PISTON SEAL KIT F/ HV267B5N-6.00-6.375-0250-N22T-9, HYD. CYLINDER (SHE-00061-011), H4 CONNECTOR (SHE-00061-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(113, 'BY-5586', 113, 'PISTON SEAL KIT F/ 5.00CJJ2HLUVS18AC6.500, S/N: 1H000106794, HYD. CYLINDER (SHE-00041-019), EDP CONNECTOR (SHE-00041-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(114, 'BY-5587', 114, 'ROD GLAND AND SEAL KIT F/ 5.00CJJ2HLUVS18AC6.500, S/N: 1H000106794, HYD. CYLINDER (SHE-00041-019), EDP CONNECTOR (SHE-00041-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(115, 'BY-5589', 115, 'WASHER 3/4\" NOM, EXTERNAL TOOTH, TYPE A , 316SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(116, 'BY-5591', 116, 'WASHER, FLAT, 3/4\" NOM., 316SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(117, 'BY-5607', 117, 'POLYPAK, SPP PROFILE TO SUIT ROD 2.250 in', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(118, 'BY-5608', 118, 'T-SEAL, ROD ROD T-SEAL TO SUIT ROD 2.250 in DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(119, 'BY-5609', 119, 'WEAR BAND (WRT) TYPE WRT TYPE WEAR BAND TO SUIT  ROD DIAMETER = 2.250 in.   GROOVE WIDTH = 1.000 in  WEAR BAND CROSS SECTION = 0.125 in', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(120, 'BY-5711', 120, 'SEAL KIT, DUAL SEAL CYL. BODY  F/ HV261B5B-5.00-6.500-0200-N22T-9, S/N: 1H000191621, HYD. CYLINDER (BY-4335) F/ EDP CONNECTOR (SHE-00057-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(121, 'BY-5856-SK', 121, '2.5 GALLON TRANSFER BARRIER ACC. 2000PSI INCLUDES FLUID SIDE SEALS WITH T.B. TUBE-O-RING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(122, 'BY-6066', 122, 'SUBSEA WELLBORE P/T TRANSDUCER, PROBE LENGTH: 80MM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(123, 'BY-6099', 123, 'COLLAR, BLADDER ACCUMULATORS - MOUNTING, 2.5-15 GAL. 3000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(124, 'BY-6202', 124, ' BOLT, HEX HEAD 3/4\"-10UNRC-2A  X 4.250\"  LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(125, 'BY-6204', 125, 'GAUGE, SUBSEA 5k THUEMLING INSTRUMENT GROUP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(126, 'BY-6214', 126, 'FLEXIBLE HOSE, 10K 48\"LG W/ 4JIC (F) END CONNECTIONS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(127, 'BY-6215', 127, ' FLEXIBLE HOSE, 5K 48\"LG W/ 6JIC (F) END CONNECTIONS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(128, 'BY-6371', 128, 'SHUTTLE VALVE, 1/2:\" INLINE, NPT, SUBSEA,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(129, 'BY-6374-RK', 129, 'REGULATOR Repair Kit for 54-2060D24-011', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(130, 'BY-6388-RK', 130, 'REGULATOR Repair Kit for 54-2062D28-071', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(131, 'BY-6408', 131, 'PILOT OPERATED ASSEMBLY, 4 WAY, 2 POSITION FPS10', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(132, 'BY-6464', 132, 'SEAL, SEAT 3-1/8\"-5K MODEL 550 OUTER FACE SEAT SEAL', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(133, 'BY-6480', 133, '1/2\" TBG, CHECK VALVE, 6000 PS, TBG, 316 SST, SWAGELOK, SS-CHS8-50', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(134, 'BY-6493', 134, 'ELEMENT, 3 MICRON FOR 1/2\" NPT FILTER, 6000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(135, 'BY-6501', 135, 'SCHRADER VALVE, FOR DRS #1 ACCUMULATOR BOTTLES,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(136, 'BY-6519', 136, 'FUSE GLASS-TUBE, 0.125 A, 5 X 20 MM CHARACTERISTIC: MIDDLE INERT VOLT.: 250 V AC; CURRENT: 0.125 A', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(137, 'BY-6530', 137, '1/2\" SWAGELOC CHECK VALVE, 6000 PSI, ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(138, 'BY-6542', 138, 'Acrylic Sheet, Clear Scratch- and UV-Resistant \n6\" x 6\" x 5/16\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(139, 'BY-6589', 139, 'Roto seal sensor kit only for 4k regulator', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(140, 'BY-6590', 140, 'Roto seal sensor kit only for 6k regulator ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(141, 'BY-6591', 141, 'Regulator valve kit for 4k and 6k regulators, including all necessary O-rings for complete rebuild', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(142, 'BY-6754', 142, 'WAVE SPRING F/ 2-1/16\"-15K, MAGNUM; OPERATES IN BORE DIAMETER 2.375\"; CLEARS SHAFT DIAMETER 2.141\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(143, 'BY-6821', 143, 'MINI CIRC BREAKER,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(144, 'BY-7012', 144, 'GAUGE, SUBSEA 7.5K THUEMLING INSTRUMENT GROUP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(145, 'BY-7019', 145, 'O-rings, Akron Enclosure,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(146, 'BY-7020', 146, 'O-rings, Killark Enclosure,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(147, 'BY-7026', 147, 'O-RINGS FOR TESCOM REGULATORS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(148, 'BY-7146', 148, 'SCREW #10-24UNC-2B X 3/16\"L.G', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(149, 'BY-7216', 149, 'HEX HEAD BOLT, 1/2\"-13UN X 2.75\"LG (XYLAN COATED)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(150, 'BY-7217', 150, 'SCREW, GRUB 1/4\"-20UNC X 1.0\" LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(151, 'BY-7261', 151, 'LOCK NUT 1/2\" NPT LOCK NUT FOR CABLE GLAND', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(152, 'BY-7429-RK', 152, 'TESCOM BYPASS REGULATOR-REPAIR KIT REPAIR KIT FOR \" 50-4095D28S350A\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(153, 'BY-7588', 153, '1/2\" NPT  CHECK VALVE,316 SS,15/16 \" LG ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(154, 'CMS-2508RH', 154, 'GATE (#4) 2-1/16\"-10/15K, MAGNUM SUBSEA HYD. FAILSAFE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(155, 'FC-0206Z', 155, 'SCREW, HEX SOCKET HEAD CAP 1/4\" -20 UNC - 3/4\" LONG, GRADE A574', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(156, 'FC-0210S', 156, 'CAP SCREW, 0.25\" X 1.0\" LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(157, 'FC-0210Z', 157, 'SCREW, HEX SOCKET HEAD CAP 1/4\" -20 UNC - 3/4\" LONG, GRADE A574 1/4\"-20 UNC X 1\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(158, 'FC-0307Z', 158, 'SCREW, HEX SOCKET HEAD CAP 3/8\"-16UNC-7/8\" LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(159, 'FCL-0532Z', 159, 'SCREW, SOCKET HEAD CAP 0.625\"-11UNC X 3.25\" LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(160, 'G0205-20S', 160, 'SCREW, GRUB  1/4\" - 20UNC, .5\"LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(161, 'GR-112-17', 161, 'SEAL RING (SUPERSEDED BY BY-5188)  GRAYLOC #112', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(162, 'HC12509', 162, ' PACKING NOMINAL SIZE:  1-3/4\" OD 1-1/4\" ID X .750\" HT ,\nHIGH TEMPERATURE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(163, 'HE10009', 163, 'PACKING 1-3/4\" OD X 1\" ID X 1.00\" HT ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(164, 'M0037-13', 164, 'RING, WEAR 1.500 OD X 1.250 ID X0.375 THK', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(165, 'M0037-33', 165, 'RING, RETAINER  SPIROLOX # RS-100-S', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(166, 'M0051-12(HT)', 166, 'PACKING ASSEMBLY HIGH TEMPERATURE STEM PACKING ASSEMBLY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(167, 'M0747-12B', 167, 'BEARING, MODULAR 2-1/16\"-10K SUBSEA ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(168, 'M0747-12C', 168, 'RING, SPACER 2-1/16\"-10K SUBSEA ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(169, 'M0747-24', 169, 'PISTON 2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(170, 'M0747-32', 170, 'STEM, DRIVING  2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(171, 'M0747-46', 171, 'PACKING ASSEMBLY ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(172, 'M0747-49', 172, 'HOUSING, OVERRIDE 2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(173, 'M0747-50', 173, ' STEM, OVERRIDE 2-1/16\"-10K SUBSEA HYD.RAULIC FAILSAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(174, 'M0747-51', 174, 'CAP, OVERRIDE 2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(175, 'M0747-58', 175, 'ADAPTER, STEM ASSY. 2-1/16\"-10K, HYD. FAIL SAFE ACT., SUB-SEA ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(176, 'M0747-59', 176, 'STEM STOP 2.0625 10K SUBSEA FAILSAFE ACT ASSY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(177, 'M0747-60', 177, 'CYLINDER 2-1/16\"-10K SUBSEA HYD. FS ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(178, 'M1010-4D', 178, 'ROD, BALANCE( PRECEDED W/ M1010-4)  2-1/16\"-10K/15K MAGNUM SUBSEA', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(179, 'M1010-5', 179, ' PROTECTOR, STEM 2\" 10/15K MAGNUM SUBSEA', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(180, 'M1637-10', 180, 'GLAND, PACKING 7 3/8\"-10K MAGNUM HYD. ACTUATOR- LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(181, 'M1637-12', 181, 'ROD, INDICATOR 7 3/8\"-10K MAGNUM HYD. ACTUATOR- LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(182, 'M1666-2', 182, ' ADAPTER, STEM  7-3/8\"-10K ROV OVE-RIDE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(183, 'M1666-4', 183, 'STEM, DRIVING  7 3/8\"-10K ROV OVERRIDE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(184, 'M1666-5', 184, 'PULLER, STEM 7-3/8\"-10K ROV OVERRIDE, IRS SYS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(185, 'M1666-7', 185, 'PIN, GUIDE ROV HOUSING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(186, 'M1781-01', 186, 'PACKING GLAND,  2 1/16-10M SUBSEA HYDRAULIC FAILSAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(187, 'M3403-4', 187, 'STEM, HYD. ACTUATOR 7-3/8\"-10K', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(188, 'M3403-5[A]', 188, 'STEM, OPERATING 7-3/8\"-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(189, 'M3408-2[A]', 189, 'STEM, ROV OVERRIDE 7-3/8\"-10K', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(190, 'M5490-4N', 190, 'STEM 2-1/16\"-10/15K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(191, 'M5499', 191, 'GATE (#75) 2.88 TUBE SHEAR, 7.38-10K MAGNUM , LOWER  RISER PACKAGE, SUBSEA INTERVENTION SYSTEM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(192, 'M5500-2', 192, 'SEAT, UPSTREAM 7.38-10K MAGNUM LRP UPSTREAM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(193, 'M5500-4', 193, 'SEAT,DOWNSTREAM  7.38-10K MAGNUM LRP DOWN-STREAM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(194, 'M892-20C', 194, 'RING, SPACER  7-3/8\"-10K DBL ACTING HYD. ACT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(195, 'MTL-7728', 195, 'SAFETY BARRIER 28 VOLT 234 OHM HIGH POWER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(196, 'NC13759', 196, 'PACKING, STEM POLYPAK #25001375', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(197, 'NC15009', 197, 'PACKING, STEM POLYPAK #25001500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(198, 'ND36259', 198, 'SEAL, PISTON POLYPAK #31203625', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(199, 'NI-06700', 199, 'FLOW METER FLOW METER, FNPT, 1\" PIPE. 3 TO 30 GPM, FOR PUMP, DAYTON', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(200, 'PA-2109', 200, 'BACKUP RING, 1.0\" NOM OD 8-210 \n', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(201, 'PA-2159', 201, 'BACK UP RING BACK UP RING 8-215', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(202, 'PA-2399', 202, 'BACKUP RING, 3.875 NOM OD 8-239', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(203, 'PA-2509', 203, ' BACKUP RING 8-250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(204, 'PA-3319', 204, ' BACKUP RING 8-331', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(205, 'PA-3430', 205, ' BACKUP RING ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(206, 'PA-3560', 206, 'BACKUP RING ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(207, 'PB-2169', 207, 'BACKUP RING 8-216', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(208, 'PB-2289', 208, 'BACKUP RING 8-228', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(209, 'PN-0349', 209, 'SEAL RING 2-034', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(210, 'PN-1519', 210, 'SEAL RING 2-151', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(211, 'PN-2109', 211, 'O-RING #2-210', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(212, 'PN-2159', 212, 'O-RING #2-215', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(213, 'PN-2169', 213, 'SEAL RING 2-216', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(214, 'PN-2189', 214, 'O-RING #2-218', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(215, 'PN-2229', 215, 'SEAL RING 2-222, ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(216, 'PN-2249', 216, 'SEAL RING 2-224', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(217, 'PN-2269', 217, 'SEAL RING 2-226', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(218, 'PN-2289', 218, 'SEAL RING 2-228', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(219, 'PN-2369', 219, 'O-RING #2-236', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(220, 'PN-2399', 220, 'O-RING #2-239', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(221, 'PN-2509', 221, 'SEAL RING 2-250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(222, 'PN-2699', 222, 'O-RING #2-269', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(223, 'PN-3189', 223, 'SEAL RING 2-318', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(224, 'PN-3239', 224, 'SEAL RING 2-323', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(225, 'PN-3319', 225, 'SEAL RING 2-331', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(226, 'PN-3339', 226, 'SEAL RING 2-333', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(227, 'PN-3430', 227, 'O- RING BUNA, 90 DURO,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(228, 'PN-3559', 228, 'O-RING #2-355', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(229, 'PN-3560', 229, 'O- RING BUNA, 90 DURO,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(230, 'PN-3589', 230, 'SEAL RING 2-358, ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(231, 'PN-3699', 231, 'SEAL RING 2-369', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(232, 'PN-3789', 232, 'SEAL RING 2-378', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(233, 'PT-0139', 233, 'O-RING VITON, 90 DURO, #2-013', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(234, 'PT-1259', 234, 'SEAL VITON 90 DURO 2-125', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(235, 'PT-1499', 235, 'O-RING VITON, 90 DURO, #2-149', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(236, 'PT-2149', 236, 'SEAL RING 2-214 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(237, 'PT-2189', 237, 'SEAL RING 8 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(238, 'PT-2229', 238, 'SEAL RING VITON, 90 DURO, 2-222', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(239, 'PT-2249', 239, 'SEAL RING VITON, 90 DURO,  2-224', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(240, 'PT-2295', 240, 'SEAL RING 2-229 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(241, 'PT-2299', 241, 'O-RING VITON, 90 DURO, #2-229', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(242, 'PT-2315', 242, 'SEAL RING 2-231', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(243, 'PT-2349', 243, 'O-RING VITON, 90 DURO, #2-234', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(244, 'PT-2355', 244, 'SEAL RING 2-235 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(245, 'PT-2379', 245, 'SEAL RING VITON, 90 DURO, 2-237 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(246, 'PT-2389', 246, 'RING, SEAL VITON 90 DURO 2-238', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(247, 'PT-2509', 247, 'O-RING VITON, 90 DURO, #2-250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(248, 'PT-2569', 248, 'SEAL VITON 90 DURO 2-256', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(249, 'PT-2669', 249, 'O-RING VITON, 90 DURO, #2-266', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(250, 'PT-2689', 250, 'O-RING VITON, 90 DURO, #2-268', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(251, 'PT-2759', 251, 'O-RING VITON, 90 DURO, #2-275', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(252, 'PT-3259', 252, 'SEAL VITON 90 DURO 2-325', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(253, 'PT-3279', 253, 'O-RING VITON, 90 DURO, #2-327', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(254, 'PT-3685', 254, 'SEAL RING 2-368 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(255, 'PT-3689', 255, 'O-RING VITON, 90 DURO, #2-368', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(256, 'PT-3735', 256, 'SEAL RING 2-373 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(257, 'PT-3739', 257, 'O-RING VITON, 90 DURO, #2-373', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(258, 'PT-3755', 258, 'SEAL RING 2-375 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(259, 'PT-3759', 259, 'O-RING VITON, 90 DURO, #2-375', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(260, 'PT-3775', 260, 'SEAL RING 2-377 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(261, 'PT-3779', 261, 'O-RING VITON, 90 DURO, #2-377', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(262, 'PT-4479', 262, 'O-RING VITON 90 DURO , 9.5\" NOM. O.D.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(263, 'PT-4659', 263, 'SEAL RING VITON, 90 DURO 2-465 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(264, 'SAA-3101010-004', 264, 'STEM 1\"-10KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(265, 'SAA-3101010-008', 265, 'STEM, OVERRIDE 1\"-10K SUBSEA HYD.RAULIC FAILSAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(266, 'SAA-3101010-010', 266, 'NUT, GLAND 1\"-10KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(267, 'SAA-3101010-011', 267, 'PISTON 1\"-10KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(268, 'SHC-00019-009', 268, ' SHOULDER BOLT, SPRING STACK THREAD .875\"-9UNC', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(269, 'SHC-00019-010', 281, 'WASHER, SPHERICAL UPPER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(270, 'SHC-00019-011', 282, 'WASHER, SPHERICAL LOWER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(271, 'SHC-00019-024', 271, 'BUSH, GUIDE SSOD CONTROLS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(272, 'SHC-00037-005', 272, 'TEST STAB PLATE ASSEMBLY, F/ FIXED STAB PLATE ON LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(273, 'SHC-00037-020', 273, 'PIN, GUIDE ROD INTERFACE, MOVING STAB PLATE ASSY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(274, 'SHC-00038-000', 274, 'TUBE, 1/2\" TUBE X .062 ORICE CHECK VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(275, 'SHC-00039-000', 275, 'ASSEMBLY, COMPENSATOR ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(276, 'SHE-00002-257', 276, 'DUAL, PORT 17H  HOTSTAB RECEPTACLE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(277, 'SHE-00002-491', 277, 'ANNULUS INTERFACE BLOCK, W/ TWO 1-1/2\" AUTOCLAVE MP INLET PORTS, 2 1/16\"-10K FLANGE OUTLET', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(278, 'SHE-00004-005', 278, 'NUT, REACTION STRESS JOINT CONNECTOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(279, 'SHE-00009-005', 279, 'SCREW, CONNECTOR ACTUATION ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(280, 'SHE-00009-010', 280, 'MANUAL CONNECTOR RETAINING BUSH DETAIL ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(281, 'SHE-00031-032', 283, 'BUSH, ROV OVERRIDE 2-1/16 10K EDP/LRP VALVE ASSEMBLY CLASS 3 BUCKET', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(282, 'SHE-00036-009', 284, 'SPHERICAL WASHER (FEMALE) 5.375\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(283, 'SHE-00036-010', 285, 'SPHERICAL WASHER (MALE) 5.375\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(284, 'SHE-00042-007', 286, 'SPHERICAL WASHER (MALE) 3-17/32\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(285, 'SHE-00042-008', 287, 'SPHERICAL WASHER (FEMALE) 3-17/32\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(286, 'SHE-00047-003', 288, 'RING, RETAINER SEAL SUB', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(287, 'SHE-00048-002', 289, 'SEAL SUB DIA. IRS 7.38-10K 9.50 LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(288, 'SHE-00048-003', 290, 'RING, RETAINER SEAL SUB', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(289, 'SHE-00055-042', 291, 'FLANGE, BLIND 9/16\" MP PORT ADDITION TO 2-1/6\"-10K', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(290, 'SHE-00058-015', 292, 'BUSH RETAINER RING 2-1/16 10K EDP/LRP VALVE ASSEMBLY CLASS 3 BUCKET', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(291, 'SHE-00061-013', 293, 'O-RING, SPECIAL 23.63 MEAN DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(292, 'SHE-00061-042', 294, '6.0\" CYLINDER ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(293, 'SHE-00063-063', 295, 'ANODE, TRAPEZOIDAL, 1 LB ALUMINIUM, HOUSTON ANODE TR_1_SOB', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(294, 'SHE-00076-004', 296, 'SEAT RETAINER 7-3/8\"--10K MAG. LRP, SUB-SEA INTERVENTION SYSTEM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(295, 'SHE-00076-006', 297, 'SEAT RETAINER 7-3/8\"--10K MAG. LRP, SUB-SEA INTERVENTION SYSTEM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(296, 'SHE-00083-003', 298, 'MALE STAB TEST FIXTURE ASSEMBLY, RETRACTABLE ANNULUS STAB ASSEMBLY, 2-1/16 10K, PSL 3G', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(297, 'SHE-00083-011', 299, 'TEST CAP, RETRACTABLE ANNULUS STAB ASSEMBLY, 2-1/16 10K, PSL 3G', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(298, 'BY-5172', 300, 'SEAL KIT FOR SS-CHS8 CHECK VALVE-BUNA N ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(299, 'BY-5152', 302, '1/2\" SWAGELOC CHECK VALVE VENDOR:  SWAGELOK  VENDOR PART NO.:  SS-CHS8-BU-5', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(300, 'BY-6502', 303, '1/4\" TBG, NEEDLE VALVE, 316 SST, 10,000 PSI, PANEL MOUNT SWAGELOK -SS-H83PS4', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(301, 'SVA-3101010-001', 304, 'GATE, 1\"-10 KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(302, 'SVA-3101010-002', 305, 'SEAT 1\"-10 KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(303, 'SW-1331', 306, 'PLUG 1/2\" NPT HEX HEAD ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(304, 'SW-2585', 307, 'SEAT (#4) 2-1/16\"-10/15K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(305, 'SW-3769', 308, 'BUSHING, SPACER 3-1/16\"-10K HYD FS ACTUATOR HT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(306, 'SW-3770', 309, 'BUSHING, SPACER 1.005/1010\" ID X 1.735/1.740\" X .38\" HT   F/ 2-1/16\"-10K MAG MANUAL (HT)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(307, 'SW-4219', 310, 'PIN, TORQUE 3/8\"-16UNC X 3/8\" LG. W/ O-RING SEAL GROOVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(308, 'SW-4695', 311, 'GASKET, BONNET 7 3/8\"-10K MAGUNM - LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(309, 'SW-4699', 312, 'PACKING GLAND, ROV OVERRIDE 7 3/8\"-10K MAGNUM - LRP/EDP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(310, 'SW-5144-1', 313, 'STEM, OPERATING 2-1/16\"-10K SUB-SEA HYDRAULIC FAIL SAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(311, 'SW-6017', 314, 'SPACER, PACKING SET ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(312, 'SW-6672', 315, 'BUSHING, SPACER 2.25 X 3.25 X .75 HT PACKING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(313, 'TF22509', 316, 'PACKING STEM, 3.250 O.D. X 2.250 I.D. X 1.330 HEIGHT -20 TO 350 DED FGCS #0731-S-5435-1', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(314, 'WFB-210-2', 317, 'FLANGE, BLIND 2-1/16\"-10K ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(315, 'WM-2320H', 318, 'RING, RETAINER SPIROLOX #RR-200', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(316, 'WM-2817-1', 319, 'GASKET, BONNET (SUPERSEDED BY WM-2817) 5-1/8\"-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(317, 'WM-317A', 320, 'GASKET, BONNET(SUPERSEDED BY 3453) 1-13/16\"-10K &  2-1/16\"-10K/15K ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(318, 'WM-4006', 321, 'BEARING, THRUST #INA-4440', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(319, 'WM-4009', 322, 'PIN, STEM 7-1/16 X 6-1/8-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(320, 'WM-809', 323, 'PIN, STEM 2-1/16-10/15K  MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(321, 'WM-824B', 324, 'RETAINER, SEAT 2-1/16\"-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(322, 'WM-931', 325, 'VALVE, CHECK 1/4\" - 18 NPT ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(323, 'BY-7166', 326, 'ORING PN: OR-3-913 VENDOR: TUBEMAC INCLUDED IN VENDOR SEAL KIT P/N: KIT-CV-075-43-SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(324, 'BY-7167', 327, 'PN: R-075 VENDOR: TUBEMAC INCLUDED IN VENDOR SEAL KIT P/N: KIT-CV-075-43-SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(325, 'BY-7168', 328, 'PN: Q1T-00005-311 VENDOR: AMETEK NCC Time Delay Relay, Function Delay On Make, Time Range .25 to 5 sec', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(326, 'BY-7165', 329, 'PN: OR-3-912 VENDOR: TUBEMAC INCLUDED IN VENDOR SEAL KIT P/N: KIT-CV-075-43-SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_23_230700_create_staff_table', 1),
(5, '2021_04_25_224042_create_user_activity_logs_table', 1),
(6, '2021_04_30_224320_create_activity_logs_table', 1),
(7, '2021_05_03_061844_create_user_types_table', 1),
(8, '2021_05_03_061918_create_role_type_users_table', 1),
(9, '2021_06_04_053627_create_sequence_tbls_table', 1),
(10, '2021_06_04_053741_create_generate_id_tbls_table', 1),
(11, '2023_11_14_082919_create_inventorys_table', 1),
(12, '2023_11_15_164412_create_orders_table', 1),
(13, '2023_11_19_052554_create_drawings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `offinventorys`
--

CREATE TABLE `offinventorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `wompart_num` varchar(255) NOT NULL,
  `wom_description` varchar(255) NOT NULL,
  `wom_po` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `wom_serial` varchar(255) DEFAULT NULL,
  `durometer` varchar(255) DEFAULT NULL,
  `compound` varchar(255) DEFAULT NULL,
  `cure_date` timestamp NULL DEFAULT NULL,
  `expiration_date` timestamp NULL DEFAULT NULL,
  `where_used` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offinventorys`
--

INSERT INTO `offinventorys` (`id`, `quantity`, `wompart_num`, `wom_description`, `wom_po`, `category_name`, `wom_serial`, `durometer`, `compound`, `cure_date`, `expiration_date`, `where_used`, `location`, `created_at`, `updated_at`) VALUES
(18, 20, '2546', 'BEARING, THRUST INA-4421', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, '2024-02-27 06:34:00'),
(19, 2, '3482', 'BEARING, THRUST 2.50\" OD X 1.75\" ID X .078\" THK,', 'test', 'Hard Component', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, '2024-02-27 00:08:41'),
(20, 3, 'AC-3750', 'PLUG, BLEEDER 3/8\" AUTOCLAVE PLUG', 'test', 'Hardware', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(21, 4, 'AC-9160', 'PLUG, BLEEDER 9/16\" AUTOCLAVE H2S SERVICE ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(22, 5, 'AG-9160', 'FITTING, GREASE 9/16\" AUTOCLAVE PLUG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(23, 6, 'BS-2010S', 'BACK UP RING 2-1/16\" 10/15K MAGNUM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(24, 7, 'BS-7310S', 'RING, BACKUP 7-3/8\"-10K MAGNUM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(25, 0, 'BS-7310S-LRP1', 'BACK UP RING 7-3/8\"-10K MAGNUM-LRP SEAT ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, '2024-02-26 22:39:06'),
(26, 0, 'BT-2015S', 'RING, BACKUP 2-1/16\"-10/15K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, '2024-02-26 23:40:07'),
(27, 10, 'BT-7310S', 'RING, BACKUP 7-3/8\"-10K MAGNUM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(28, 11, 'BX-150-16', 'RING GASKET, BX-150 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(29, 12, 'BX-151-16', 'RING GASKET, BX-151 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(30, 13, 'BX-152-16', 'GASKET, RING BX-152', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(31, 14, 'BX-154-16', 'RING GASKET, BX-154 USE WOM SPEC 4.9.117 TO MANUFACTURE.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(32, 15, 'BX-155', 'RING GASKET, BX-155 RING GASKET, BX-155', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(33, 16, 'BX-156', 'RING, GROOVE ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(34, 17, 'BX-159-16', 'RING GASKET, BX-159 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(35, 18, 'BX-169-16', 'RING GASKET, BX-169', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(36, 19, 'BY-0022', 'RING, RETAINER SMALLEY# WH-187-S02', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(37, 20, 'BY-0027', 'RING, WEAR 1.500 OD X 1.250 ID X0.375 THK PARKER # W2-1750-500, C/S .125\" +.000\"/- .005\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(38, 21, 'BY-0030', 'RING, WEAR 5.250 ID X 5.500 OD X .500 H, SCARF CUT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(39, 22, 'BY-0048', 'RING, WEAR PARKER #W2-2000-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(40, 23, 'BY-0230', 'RING, WEAR PARKER #W2-3250-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(41, 24, 'BY-0314', 'RING, WEAR PARKER #W2-3250-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(42, 25, 'BY-0474', 'BEARING, RACE TORRINGTON #TRB-2840, .06 THK.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(43, 26, 'BY-0475', 'RING, RETAINER SPIROLOX RRN-850/SMALLEY P/N:  WHM-850', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(44, 27, 'BY-0476', 'RING, WEAR 4.000 ID X 4.250 OD X .500 H, BUTT CUT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(45, 28, 'BY-0514', '1/4\"-18 NPT PLUG LEVEL FLUSH', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(46, 29, 'BY-0554', 'NIPPLE, HEX 1/2\" NPT MALE X 1/2\" NPT MALE,   SS PRECEDED BY BY-2311', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(47, 30, 'BY-0585', 'RING, WEAR (SUPERCEDED BY BY-3810) 2.250 OD X 2.000 ID X .500 THK', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(48, 31, 'BY-0610', ' 1/2\"-14 NPT PLUG ALLEN HEAD', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(49, 32, 'BY-0744S', 'WASHER, LOCK 1\" NOMINAL', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(50, 33, 'BY-1236', 'RING, RETAINER SPIROLOX #RST-181', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(51, 34, 'BY-1237', 'SCREW, SET  SOCKET HEAD 1/4\"-20UNC-2A x 1.00 LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(52, 35, 'BY-1243', 'SCREW, SOCKET HEAD CAP 1\"-8UN X 3.00\" LG. (XYLAN COATED)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(53, 36, 'BY-1249', 'PACKING, STEM 2.750\" O.D. X 1.750\" I.D. X 1.275\" HEIGHT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(54, 37, 'BY-1251', 'RING, RETAINER SPIROLOX PART # RSN-150', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(55, 38, 'BY-1635S', 'NUT, HEAVY HEX 5/16-18 UN-2B', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(56, 39, 'BY-1850', 'RING, WEAR PARKER #W2-2500-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(57, 40, 'BY-1957', 'BOLT, HEX HEAD 3/4\"-16UNF 2A X 2\" LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(58, 41, 'BY-2046', 'SEAL, POLYPAK B LIP ID 2.25\", OD 2.75\", .375\" HEIGHT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(59, 42, 'BY-2075', 'RING, WEAR PARKER #W2-3000-375', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(60, 43, 'BY-2218', 'RING, WEAR PARKER PART NO. W2-3000-500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(61, 44, 'BY-2291', 'VALVE, SPM (SUPERSEDED: BY-7256) GVC P/N: 27610-1', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(62, 45, 'BY-2291-RK', 'REPAIR KIT, FOR BY-2291 ONLY N.O SPM VALVE REPAIR KIT FOR BY-2291 ONLY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(63, 46, 'BY-2291-SK', 'SEAL KIT, PROSERV-GILMORE P/N:  27165-2 SK', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(64, 47, 'BY-2292', 'VALVE, SPM (SUPERSEDED : BY-7257) 1/2\" N.C., 6000PSI,\nGVC P/N: 27611-1', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(65, 48, 'BY-2292-RK', 'REPAIR KIT-  FOR BY-2292 ONLY K CAN BE USED FOR BY-2292 SPM ONLY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(66, 49, 'BY-2389', 'SCREW, SOCKET HEAD CAP 3/8-16 UN-2A X .500\" LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(67, 50, 'BY-2466-SK', 'KIT, SEAL SPM VALVE 1/2\" N.C SPM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(68, 51, 'BY-2716', 'PLUG 1/8\" NPT,  EXTERNAL HEX DRIVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(69, 52, 'BY-2717', 'RING, RETAINER SPIROLOX #: RR-118', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(70, 53, 'BY-2718', 'HIGH TEMP PACKING, STEM 1.125\" X .750\" X .548/.588\" HIGH', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(71, 54, 'BY-2720', 'PLUG, BLIND 3/8\" NPT(M), 5K WP, HEX HEAD', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(72, 55, 'BY-2957', 'SPRING, DISC BELLEVILLE SPRINGS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(73, 56, 'BY-2958', 'WEAR BAND 0.125 SEET PARKER PART# W2-6000-1000', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(74, 57, 'BY-2959', 'POLYPAK SEAL PAKER PART# 37505250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(75, 58, 'BY-2960', ' SEAL TYPE B POLYPAK PARKER PART # 25002750-375, NOM. SIZE  3.25\" OD X 2.75\" ID X .375\" HT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(76, 59, 'BY-3620', 'SUBSEA REGULATOR 6K INLET X 1 TO 6K OUTLET , 1\" NPT, MANUAL   VENDOR IS GILMORE VALVE CO.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(77, 60, 'BY-3620-RK', 'KIT, REPAIR GILMORE SUBSEA REGULATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(78, 61, 'BY-3620-SK', ' SEAL, KIT GILMORE SUBSEA REGULATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(79, 62, 'BY-3622', 'ROV PADDLE VALVE ASSEMBLY 10K 3/8 MP PORTS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(80, 63, 'BY-3626', 'MALE COUPLING 1/2\" AO-SERIES', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(81, 64, 'BY-3627', ' FEMALE COUPLING 1/2\" AO-SERIES PLATED MOUNTED ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(82, 65, 'BY-3627-SK', 'SEAL KIT, FEMALE COUPLING, 1/2\" AO-SERIES PLATED MOUNTED SEAL KIT,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(83, 66, 'BY-3630', 'MALE COUPLING 1/4\" AO-SERIES PLATED MOUNTED', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(84, 67, 'BY-3631-SK', 'SEAL KIT, FEMALE COUPLING, 1/4\" AO-SERIES PLATED MOUNTED, SEAL KIT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(85, 68, 'BY-3632-SK', 'SEAL, KIT, TOBUL, 5K SUBSEA ACCM, SEAL KIT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(86, 69, 'BY-3714', 'S SEAL 241.3MM X 6.35MM 14.7MM DEEP NOMINAL SIZE 9.0\" X 9.5\" (EXTERNAL)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(87, 301, 'BY-3722', '1/2\"  SWAGELOK, MAX WP 6,000 PSI, TEMP -40 TO 250F VENDOR: SWAGELOK  VENDOR NUMBER SS-AFSS8', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(88, 71, 'BY-3722-SK', 'SEAL KIT, 1/2\"  SWAGELOK, BALL V ALVE SEAL KIT,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(89, 72, 'BY-4327', ' WASHER, LOCK SPLIT FOR 5/16\"  MACMASTER-CARR  # 92147A030', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(90, 73, 'BY-4335', 'HYDRAULIC CYLINDER F/ SHE-00057-000 CONNECTOR    ROD DIA 2\" THREAD 1.75-12    SEE ATTCHED SHEET FOR ORDER INFO/MANUFACTURES NUMBER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(91, 74, 'BY-4381', 'PIN, DOWEL .75\" x 1.75\" LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(92, 75, 'BY-4461', 'SPRING, WAVE MAKER SMALLEY PART # SSR-0150', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(93, 76, 'BY-4521', ' DOUBLE PILOTED (4-WAY) SELECTOR VALVE 2 POSITION DOUBLE PILOTED 4 WAY SELECTOR VALVE ASSY  VALVE, TADPOLE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(94, 77, 'BY-4521-RK', 'KIT, REPAIR 4WAY 2POS SELECTOR VALVE REPAIR KIT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(95, 78, 'BY-4537', 'SHUTTLE VALVE 1/4\" SUBSEA ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(96, 79, 'BY-4537-RK', 'REPAIR KIT Valve, Shuttle, In-Line, 1/4\" NPT In, 1/4\" NPT Out, 5000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(97, 80, 'BY-4537-SK', 'SEAL KIT Valve, Shuttle, In-Line, 1/4\" NPT In, 1/4\" NPT Out, 5000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(98, 81, 'BY-4633', 'VETCO VX WELLHEAD GASKET 18-3/4-10KSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(99, 82, 'BY-4722', 'WEAR, RING 9.5 NOM OD X 0.375 WIDTH SUPPLIER  PARKER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(100, 83, 'BY-4754', 'VALVE, CHECK 1/2\" MALE X 1/2\" MALE NPT CONNECTION CHECK VALVE, FIXED CRACKING PRESSURE 50 LBS., CP SERIES', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(101, 84, 'BY-4754-SK', 'SEAL KIT & SPRING KIT, CHECK VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(102, 85, 'BY-4763', 'RING, WEAR WPT TYPE, .125\" +/-.001\" CR/SEC, FOR BORE 11.25\", GROOVE .500\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(103, 86, 'BY-4963', 'HEX HEAD BOLT, 5/16\" 3/4\" LONG 316 SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(104, 87, 'BY-4964', 'FLAT WASHER 5/16\", 316 SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(105, 88, 'BY-4977', '3/8\" BALANCED  COUPLER (MALE) COUPLER ASSEMBLY ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(106, 89, 'BY-4977-SK', 'SEAL KIT (FOR BY-4977 3/8” COUPLER)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(107, 90, 'BY-4978', '3/8\" BALANCED COUPLER (FEMALE) NIPPLE ASSY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(108, 91, 'BY-4978-SK', 'SEAL KIT (FOR BY-4978 3/8” COUPLER)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(109, 92, 'BY-4979', 'VENTED COUPLER NIPPLE ASSY ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(110, 93, 'BY-4979-SK', ' SEAL KIT (FOR BY-4979 3/8” COUPLER)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(111, 94, 'BY-4980', '7/8-9 UNC, 1.250\" CPSHSS, XYLAN COAT CUP POINT SOCKET HEAD SET SCREW, XYLAN COATED', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(112, 95, 'BY-5067', 'RING, WEAR TO SUIT ROD DIA. 0.75, GROOVE DIA. 1.001 WIDTH 0.385', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(113, 96, 'BY-5068', 'POLYPACK SEAL 2.5 O.D X 2.0 ID X STD', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(114, 97, 'BY-5069', 'POLYPAK SEAL 1.375 O.D X 1.00 I.D X STD.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(115, 98, 'BY-5070', 'WEAR RING, 1.00\" I.D x 1.25\" O.D x 0.375 Wide', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(116, 99, 'BY-5153-SK', 'REBUILD KIT, 3/4\" CHECK VALVE ASSEMBLY,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(117, 100, 'BY-5158', 'FLAT WASHER, 5/8” FLAT WASHER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(118, 101, 'BY-5169', 'SCREW, GRUB (SET) 3/4\" - 10 THREAD, 5/8\" LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(119, 102, 'BY-5176', ' WIPER, PISTON CYLINDER ID - 2.75 , C/S - 0.125\", AXIAL WIDTH 0.250\", W/ (4) .031\" THRU HOLES', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(120, 103, 'BY-5177', 'S-SEAL FOR O-RING GROOVE REF. -334 WITHOUT BACK UP RINGS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(121, 104, 'BY-5178', 'WEAR BAND ROD DIA/ID 3.750\", C/S 0.125\", (NOM. OD 4.00\")  AXIAL WIDTH - 0.500\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(122, 105, 'BY-5179', 'S-SEAL REF. CUSTOM O-RING SIZE (#3XX LEVEL) WITH 1 BACK-UP RING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(123, 106, 'BY-5180', 'WEAR BAND CYLINDER ID 5.750\" , C/S - 0.125, AXIAL WIDTH 0.500\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(124, 107, 'BY-5181', 'ROD, WIPER ROD DIA - 3.750\", PARKER: 4263-SH959-35, NOM. SIZE 3.75\" ID, 4.125\" OD, .211\" HT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(125, 108, 'BY-5376', 'VALVE, RELIEF 1/4\" 18 NPT SUBSEA )', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(126, 109, 'BY-5475', 'SCREW, SET WITH FLAT TIP 1/2-13UNC x 1 3/4 LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(127, 110, 'BY-5517', 'SCREW, SOCKET HEAD CAP 5/16\"-18UNC x 3.00 LG. 316 SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(128, 111, 'BY-5520', 'POLYPAK 10 3/4\" X 11-1/4\" X 9/16\" B-TYPE  ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(129, 112, 'BY-5526 ', 'PISTON SEAL KIT F/ HV267B5N-6.00-6.375-0250-N22T-9, HYD. CYLINDER (SHE-00061-011), H4 CONNECTOR (SHE-00061-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(130, 113, 'BY-5586', 'PISTON SEAL KIT F/ 5.00CJJ2HLUVS18AC6.500, S/N: 1H000106794, HYD. CYLINDER (SHE-00041-019), EDP CONNECTOR (SHE-00041-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(131, 114, 'BY-5587', 'ROD GLAND AND SEAL KIT F/ 5.00CJJ2HLUVS18AC6.500, S/N: 1H000106794, HYD. CYLINDER (SHE-00041-019), EDP CONNECTOR (SHE-00041-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(132, 115, 'BY-5589', 'WASHER 3/4\" NOM, EXTERNAL TOOTH, TYPE A , 316SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(133, 116, 'BY-5591', 'WASHER, FLAT, 3/4\" NOM., 316SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(134, 117, 'BY-5607', 'POLYPAK, SPP PROFILE TO SUIT ROD 2.250 in', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(135, 118, 'BY-5608', 'T-SEAL, ROD ROD T-SEAL TO SUIT ROD 2.250 in DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(136, 119, 'BY-5609', 'WEAR BAND (WRT) TYPE WRT TYPE WEAR BAND TO SUIT  ROD DIAMETER = 2.250 in.   GROOVE WIDTH = 1.000 in  WEAR BAND CROSS SECTION = 0.125 in', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(137, 120, 'BY-5711', 'SEAL KIT, DUAL SEAL CYL. BODY  F/ HV261B5B-5.00-6.500-0200-N22T-9, S/N: 1H000191621, HYD. CYLINDER (BY-4335) F/ EDP CONNECTOR (SHE-00057-000)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(138, 121, 'BY-5856-SK', '2.5 GALLON TRANSFER BARRIER ACC. 2000PSI INCLUDES FLUID SIDE SEALS WITH T.B. TUBE-O-RING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(139, 122, 'BY-6066', 'SUBSEA WELLBORE P/T TRANSDUCER, PROBE LENGTH: 80MM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(140, 123, 'BY-6099', 'COLLAR, BLADDER ACCUMULATORS - MOUNTING, 2.5-15 GAL. 3000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(141, 124, 'BY-6202', ' BOLT, HEX HEAD 3/4\"-10UNRC-2A  X 4.250\"  LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(142, 125, 'BY-6204', 'GAUGE, SUBSEA 5k THUEMLING INSTRUMENT GROUP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(143, 126, 'BY-6214', 'FLEXIBLE HOSE, 10K 48\"LG W/ 4JIC (F) END CONNECTIONS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(144, 127, 'BY-6215', ' FLEXIBLE HOSE, 5K 48\"LG W/ 6JIC (F) END CONNECTIONS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(145, 128, 'BY-6371', 'SHUTTLE VALVE, 1/2:\" INLINE, NPT, SUBSEA,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(146, 129, 'BY-6374-RK', 'REGULATOR Repair Kit for 54-2060D24-011', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(147, 130, 'BY-6388-RK', 'REGULATOR Repair Kit for 54-2062D28-071', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(148, 131, 'BY-6408', 'PILOT OPERATED ASSEMBLY, 4 WAY, 2 POSITION FPS10', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(149, 132, 'BY-6464', 'SEAL, SEAT 3-1/8\"-5K MODEL 550 OUTER FACE SEAT SEAL', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(150, 133, 'BY-6480', '1/2\" TBG, CHECK VALVE, 6000 PS, TBG, 316 SST, SWAGELOK, SS-CHS8-50', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(151, 134, 'BY-6493', 'ELEMENT, 3 MICRON FOR 1/2\" NPT FILTER, 6000 PSI', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(152, 135, 'BY-6501', 'SCHRADER VALVE, FOR DRS #1 ACCUMULATOR BOTTLES,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(153, 136, 'BY-6519', 'FUSE GLASS-TUBE, 0.125 A, 5 X 20 MM CHARACTERISTIC: MIDDLE INERT VOLT.: 250 V AC; CURRENT: 0.125 A', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(154, 137, 'BY-6530', '1/2\" SWAGELOC CHECK VALVE, 6000 PSI, ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(155, 138, 'BY-6542', 'Acrylic Sheet, Clear Scratch- and UV-Resistant \n6\" x 6\" x 5/16\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(156, 139, 'BY-6589', 'Roto seal sensor kit only for 4k regulator', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(157, 140, 'BY-6590', 'Roto seal sensor kit only for 6k regulator ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(158, 141, 'BY-6591', 'Regulator valve kit for 4k and 6k regulators, including all necessary O-rings for complete rebuild', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(159, 142, 'BY-6754', 'WAVE SPRING F/ 2-1/16\"-15K, MAGNUM; OPERATES IN BORE DIAMETER 2.375\"; CLEARS SHAFT DIAMETER 2.141\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(160, 143, 'BY-6821', 'MINI CIRC BREAKER,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(161, 144, 'BY-7012', 'GAUGE, SUBSEA 7.5K THUEMLING INSTRUMENT GROUP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(162, 145, 'BY-7019', 'O-rings, Akron Enclosure,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(163, 146, 'BY-7020', 'O-rings, Killark Enclosure,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(164, 147, 'BY-7026', 'O-RINGS FOR TESCOM REGULATORS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(165, 148, 'BY-7146', 'SCREW #10-24UNC-2B X 3/16\"L.G', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(166, 149, 'BY-7216', 'HEX HEAD BOLT, 1/2\"-13UN X 2.75\"LG (XYLAN COATED)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(167, 150, 'BY-7217', 'SCREW, GRUB 1/4\"-20UNC X 1.0\" LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(168, 151, 'BY-7261', 'LOCK NUT 1/2\" NPT LOCK NUT FOR CABLE GLAND', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(169, 152, 'BY-7429-RK', 'TESCOM BYPASS REGULATOR-REPAIR KIT REPAIR KIT FOR \" 50-4095D28S350A\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(170, 153, 'BY-7588', '1/2\" NPT  CHECK VALVE,316 SS,15/16 \" LG ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(171, 154, 'CMS-2508RH', 'GATE (#4) 2-1/16\"-10/15K, MAGNUM SUBSEA HYD. FAILSAFE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(172, 155, 'FC-0206Z', 'SCREW, HEX SOCKET HEAD CAP 1/4\" -20 UNC - 3/4\" LONG, GRADE A574', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(173, 156, 'FC-0210S', 'CAP SCREW, 0.25\" X 1.0\" LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(174, 157, 'FC-0210Z', 'SCREW, HEX SOCKET HEAD CAP 1/4\" -20 UNC - 3/4\" LONG, GRADE A574 1/4\"-20 UNC X 1\"', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(175, 158, 'FC-0307Z', 'SCREW, HEX SOCKET HEAD CAP 3/8\"-16UNC-7/8\" LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(176, 159, 'FCL-0532Z', 'SCREW, SOCKET HEAD CAP 0.625\"-11UNC X 3.25\" LG.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(177, 160, 'G0205-20S', 'SCREW, GRUB  1/4\" - 20UNC, .5\"LONG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(178, 161, 'GR-112-17', 'SEAL RING (SUPERSEDED BY BY-5188)  GRAYLOC #112', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(179, 162, 'HC12509', ' PACKING NOMINAL SIZE:  1-3/4\" OD 1-1/4\" ID X .750\" HT ,\nHIGH TEMPERATURE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(180, 163, 'HE10009', 'PACKING 1-3/4\" OD X 1\" ID X 1.00\" HT ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(181, 164, 'M0037-13', 'RING, WEAR 1.500 OD X 1.250 ID X0.375 THK', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(182, 165, 'M0037-33', 'RING, RETAINER  SPIROLOX # RS-100-S', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(183, 166, 'M0051-12(HT)', 'PACKING ASSEMBLY HIGH TEMPERATURE STEM PACKING ASSEMBLY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(184, 167, 'M0747-12B', 'BEARING, MODULAR 2-1/16\"-10K SUBSEA ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(185, 168, 'M0747-12C', 'RING, SPACER 2-1/16\"-10K SUBSEA ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(186, 169, 'M0747-24', 'PISTON 2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(187, 170, 'M0747-32', 'STEM, DRIVING  2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(188, 171, 'M0747-46', 'PACKING ASSEMBLY ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(189, 172, 'M0747-49', 'HOUSING, OVERRIDE 2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(190, 173, 'M0747-50', ' STEM, OVERRIDE 2-1/16\"-10K SUBSEA HYD.RAULIC FAILSAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(191, 174, 'M0747-51', 'CAP, OVERRIDE 2-1/16\"-10K SUBSEA HYD. FS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(192, 175, 'M0747-58', 'ADAPTER, STEM ASSY. 2-1/16\"-10K, HYD. FAIL SAFE ACT., SUB-SEA ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(193, 176, 'M0747-59', 'STEM STOP 2.0625 10K SUBSEA FAILSAFE ACT ASSY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(194, 177, 'M0747-60', 'CYLINDER 2-1/16\"-10K SUBSEA HYD. FS ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(195, 178, 'M1010-4D', 'ROD, BALANCE( PRECEDED W/ M1010-4)  2-1/16\"-10K/15K MAGNUM SUBSEA', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(196, 179, 'M1010-5', ' PROTECTOR, STEM 2\" 10/15K MAGNUM SUBSEA', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(197, 180, 'M1637-10', 'GLAND, PACKING 7 3/8\"-10K MAGNUM HYD. ACTUATOR- LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(198, 181, 'M1637-12', 'ROD, INDICATOR 7 3/8\"-10K MAGNUM HYD. ACTUATOR- LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(199, 182, 'M1666-2', ' ADAPTER, STEM  7-3/8\"-10K ROV OVE-RIDE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(200, 183, 'M1666-4', 'STEM, DRIVING  7 3/8\"-10K ROV OVERRIDE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(201, 184, 'M1666-5', 'PULLER, STEM 7-3/8\"-10K ROV OVERRIDE, IRS SYS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(202, 185, 'M1666-7', 'PIN, GUIDE ROV HOUSING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(203, 186, 'M1781-01', 'PACKING GLAND,  2 1/16-10M SUBSEA HYDRAULIC FAILSAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(204, 187, 'M3403-4', 'STEM, HYD. ACTUATOR 7-3/8\"-10K', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(205, 188, 'M3403-5[A]', 'STEM, OPERATING 7-3/8\"-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(206, 189, 'M3408-2[A]', 'STEM, ROV OVERRIDE 7-3/8\"-10K', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(207, 190, 'M5490-4N', 'STEM 2-1/16\"-10/15K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(208, 191, 'M5499', 'GATE (#75) 2.88 TUBE SHEAR, 7.38-10K MAGNUM , LOWER  RISER PACKAGE, SUBSEA INTERVENTION SYSTEM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(209, 192, 'M5500-2', 'SEAT, UPSTREAM 7.38-10K MAGNUM LRP UPSTREAM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(210, 193, 'M5500-4', 'SEAT,DOWNSTREAM  7.38-10K MAGNUM LRP DOWN-STREAM ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(211, 194, 'M892-20C', 'RING, SPACER  7-3/8\"-10K DBL ACTING HYD. ACT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(212, 195, 'MTL-7728', 'SAFETY BARRIER 28 VOLT 234 OHM HIGH POWER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(213, 196, 'NC13759', 'PACKING, STEM POLYPAK #25001375', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(214, 197, 'NC15009', 'PACKING, STEM POLYPAK #25001500', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(215, 198, 'ND36259', 'SEAL, PISTON POLYPAK #31203625', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(216, 199, 'NI-06700', 'FLOW METER FLOW METER, FNPT, 1\" PIPE. 3 TO 30 GPM, FOR PUMP, DAYTON', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(217, 200, 'PA-2109', 'BACKUP RING, 1.0\" NOM OD 8-210 \n', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(218, 201, 'PA-2159', 'BACK UP RING BACK UP RING 8-215', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(219, 202, 'PA-2399', 'BACKUP RING, 3.875 NOM OD 8-239', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(220, 203, 'PA-2509', ' BACKUP RING 8-250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(221, 204, 'PA-3319', ' BACKUP RING 8-331', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(222, 205, 'PA-3430', ' BACKUP RING ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(223, 206, 'PA-3560', 'BACKUP RING ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(224, 207, 'PB-2169', 'BACKUP RING 8-216', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(225, 208, 'PB-2289', 'BACKUP RING 8-228', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(226, 209, 'PN-0349', 'SEAL RING 2-034', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(227, 210, 'PN-1519', 'SEAL RING 2-151', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(228, 211, 'PN-2109', 'O-RING #2-210', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(229, 212, 'PN-2159', 'O-RING #2-215', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(230, 213, 'PN-2169', 'SEAL RING 2-216', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(231, 214, 'PN-2189', 'O-RING #2-218', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(232, 215, 'PN-2229', 'SEAL RING 2-222, ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(233, 216, 'PN-2249', 'SEAL RING 2-224', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(234, 217, 'PN-2269', 'SEAL RING 2-226', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(235, 218, 'PN-2289', 'SEAL RING 2-228', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(236, 219, 'PN-2369', 'O-RING #2-236', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(237, 220, 'PN-2399', 'O-RING #2-239', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(238, 221, 'PN-2509', 'SEAL RING 2-250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(239, 222, 'PN-2699', 'O-RING #2-269', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(240, 223, 'PN-3189', 'SEAL RING 2-318', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(241, 224, 'PN-3239', 'SEAL RING 2-323', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(242, 225, 'PN-3319', 'SEAL RING 2-331', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(243, 226, 'PN-3339', 'SEAL RING 2-333', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(244, 227, 'PN-3430', 'O- RING BUNA, 90 DURO,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(245, 228, 'PN-3559', 'O-RING #2-355', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(246, 229, 'PN-3560', 'O- RING BUNA, 90 DURO,', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(247, 230, 'PN-3589', 'SEAL RING 2-358, ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(248, 231, 'PN-3699', 'SEAL RING 2-369', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(249, 232, 'PN-3789', 'SEAL RING 2-378', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(250, 233, 'PT-0139', 'O-RING VITON, 90 DURO, #2-013', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(251, 234, 'PT-1259', 'SEAL VITON 90 DURO 2-125', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(252, 235, 'PT-1499', 'O-RING VITON, 90 DURO, #2-149', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(253, 236, 'PT-2149', 'SEAL RING 2-214 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(254, 237, 'PT-2189', 'SEAL RING 8 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(255, 238, 'PT-2229', 'SEAL RING VITON, 90 DURO, 2-222', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(256, 239, 'PT-2249', 'SEAL RING VITON, 90 DURO,  2-224', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(257, 240, 'PT-2295', 'SEAL RING 2-229 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(258, 241, 'PT-2299', 'O-RING VITON, 90 DURO, #2-229', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(259, 242, 'PT-2315', 'SEAL RING 2-231', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(260, 243, 'PT-2349', 'O-RING VITON, 90 DURO, #2-234', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(261, 244, 'PT-2355', 'SEAL RING 2-235 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(262, 245, 'PT-2379', 'SEAL RING VITON, 90 DURO, 2-237 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(263, 246, 'PT-2389', 'RING, SEAL VITON 90 DURO 2-238', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(264, 247, 'PT-2509', 'O-RING VITON, 90 DURO, #2-250', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(265, 248, 'PT-2569', 'SEAL VITON 90 DURO 2-256', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(266, 249, 'PT-2669', 'O-RING VITON, 90 DURO, #2-266', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(267, 250, 'PT-2689', 'O-RING VITON, 90 DURO, #2-268', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(268, 251, 'PT-2759', 'O-RING VITON, 90 DURO, #2-275', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(269, 252, 'PT-3259', 'SEAL VITON 90 DURO 2-325', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(270, 253, 'PT-3279', 'O-RING VITON, 90 DURO, #2-327', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(271, 254, 'PT-3685', 'SEAL RING 2-368 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(272, 255, 'PT-3689', 'O-RING VITON, 90 DURO, #2-368', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(273, 256, 'PT-3735', 'SEAL RING 2-373 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(274, 257, 'PT-3739', 'O-RING VITON, 90 DURO, #2-373', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(275, 258, 'PT-3755', 'SEAL RING 2-375 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(276, 259, 'PT-3759', 'O-RING VITON, 90 DURO, #2-375', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(277, 260, 'PT-3775', 'SEAL RING 2-377 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(278, 261, 'PT-3779', 'O-RING VITON, 90 DURO, #2-377', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(279, 262, 'PT-4479', 'O-RING VITON 90 DURO , 9.5\" NOM. O.D.', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(280, 263, 'PT-4659', 'SEAL RING VITON, 90 DURO 2-465 ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(281, 264, 'SAA-3101010-004', 'STEM 1\"-10KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(282, 265, 'SAA-3101010-008', 'STEM, OVERRIDE 1\"-10K SUBSEA HYD.RAULIC FAILSAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(283, 266, 'SAA-3101010-010', 'NUT, GLAND 1\"-10KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(284, 267, 'SAA-3101010-011', 'PISTON 1\"-10KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(285, 268, 'SHC-00019-009', ' SHOULDER BOLT, SPRING STACK THREAD .875\"-9UNC', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(286, 281, 'SHC-00019-010', 'WASHER, SPHERICAL UPPER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(287, 282, 'SHC-00019-011', 'WASHER, SPHERICAL LOWER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(288, 271, 'SHC-00019-024', 'BUSH, GUIDE SSOD CONTROLS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(289, 272, 'SHC-00037-005', 'TEST STAB PLATE ASSEMBLY, F/ FIXED STAB PLATE ON LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(290, 273, 'SHC-00037-020', 'PIN, GUIDE ROD INTERFACE, MOVING STAB PLATE ASSY', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(291, 274, 'SHC-00038-000', 'TUBE, 1/2\" TUBE X .062 ORICE CHECK VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(292, 275, 'SHC-00039-000', 'ASSEMBLY, COMPENSATOR ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(293, 276, 'SHE-00002-257', 'DUAL, PORT 17H  HOTSTAB RECEPTACLE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(294, 277, 'SHE-00002-491', 'ANNULUS INTERFACE BLOCK, W/ TWO 1-1/2\" AUTOCLAVE MP INLET PORTS, 2 1/16\"-10K FLANGE OUTLET', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(295, 278, 'SHE-00004-005', 'NUT, REACTION STRESS JOINT CONNECTOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(296, 279, 'SHE-00009-005', 'SCREW, CONNECTOR ACTUATION ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(297, 280, 'SHE-00009-010', 'MANUAL CONNECTOR RETAINING BUSH DETAIL ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(298, 283, 'SHE-00031-032', 'BUSH, ROV OVERRIDE 2-1/16 10K EDP/LRP VALVE ASSEMBLY CLASS 3 BUCKET', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(299, 284, 'SHE-00036-009', 'SPHERICAL WASHER (FEMALE) 5.375\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(300, 285, 'SHE-00036-010', 'SPHERICAL WASHER (MALE) 5.375\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(301, 286, 'SHE-00042-007', 'SPHERICAL WASHER (MALE) 3-17/32\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(302, 287, 'SHE-00042-008', 'SPHERICAL WASHER (FEMALE) 3-17/32\" DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(303, 288, 'SHE-00047-003', 'RING, RETAINER SEAL SUB', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(304, 289, 'SHE-00048-002', 'SEAL SUB DIA. IRS 7.38-10K 9.50 LG', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(305, 290, 'SHE-00048-003', 'RING, RETAINER SEAL SUB', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(306, 291, 'SHE-00055-042', 'FLANGE, BLIND 9/16\" MP PORT ADDITION TO 2-1/6\"-10K', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(307, 292, 'SHE-00058-015', 'BUSH RETAINER RING 2-1/16 10K EDP/LRP VALVE ASSEMBLY CLASS 3 BUCKET', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(308, 293, 'SHE-00061-013', 'O-RING, SPECIAL 23.63 MEAN DIAMETER', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(309, 294, 'SHE-00061-042', '6.0\" CYLINDER ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(310, 295, 'SHE-00063-063', 'ANODE, TRAPEZOIDAL, 1 LB ALUMINIUM, HOUSTON ANODE TR_1_SOB', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(311, 296, 'SHE-00076-004', 'SEAT RETAINER 7-3/8\"--10K MAG. LRP, SUB-SEA INTERVENTION SYSTEM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(312, 297, 'SHE-00076-006', 'SEAT RETAINER 7-3/8\"--10K MAG. LRP, SUB-SEA INTERVENTION SYSTEM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(313, 298, 'SHE-00083-003', 'MALE STAB TEST FIXTURE ASSEMBLY, RETRACTABLE ANNULUS STAB ASSEMBLY, 2-1/16 10K, PSL 3G', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(314, 299, 'SHE-00083-011', 'TEST CAP, RETRACTABLE ANNULUS STAB ASSEMBLY, 2-1/16 10K, PSL 3G', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(315, 300, 'BY-5172', 'SEAL KIT FOR SS-CHS8 CHECK VALVE-BUNA N ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(316, 302, 'BY-5152', '1/2\" SWAGELOC CHECK VALVE VENDOR:  SWAGELOK  VENDOR PART NO.:  SS-CHS8-BU-5', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(317, 303, 'BY-6502', '1/4\" TBG, NEEDLE VALVE, 316 SST, 10,000 PSI, PANEL MOUNT SWAGELOK -SS-H83PS4', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(318, 304, 'SVA-3101010-001', 'GATE, 1\"-10 KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(319, 305, 'SVA-3101010-002', 'SEAT 1\"-10 KSI VALVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(320, 306, 'SW-1331', 'PLUG 1/2\" NPT HEX HEAD ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(321, 307, 'SW-2585', 'SEAT (#4) 2-1/16\"-10/15K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(322, 308, 'SW-3769', 'BUSHING, SPACER 3-1/16\"-10K HYD FS ACTUATOR HT', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(323, 309, 'SW-3770', 'BUSHING, SPACER 1.005/1010\" ID X 1.735/1.740\" X .38\" HT   F/ 2-1/16\"-10K MAG MANUAL (HT)', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(324, 310, 'SW-4219', 'PIN, TORQUE 3/8\"-16UNC X 3/8\" LG. W/ O-RING SEAL GROOVE', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(325, 311, 'SW-4695', 'GASKET, BONNET 7 3/8\"-10K MAGUNM - LRP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(326, 312, 'SW-4699', 'PACKING GLAND, ROV OVERRIDE 7 3/8\"-10K MAGNUM - LRP/EDP', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(327, 313, 'SW-5144-1', 'STEM, OPERATING 2-1/16\"-10K SUB-SEA HYDRAULIC FAIL SAFE ACTUATOR', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(328, 314, 'SW-6017', 'SPACER, PACKING SET ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(329, 315, 'SW-6672', 'BUSHING, SPACER 2.25 X 3.25 X .75 HT PACKING', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(330, 316, 'TF22509', 'PACKING STEM, 3.250 O.D. X 2.250 I.D. X 1.330 HEIGHT -20 TO 350 DED FGCS #0731-S-5435-1', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(331, 317, 'WFB-210-2', 'FLANGE, BLIND 2-1/16\"-10K ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(332, 318, 'WM-2320H', 'RING, RETAINER SPIROLOX #RR-200', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(333, 319, 'WM-2817-1', 'GASKET, BONNET (SUPERSEDED BY WM-2817) 5-1/8\"-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(334, 320, 'WM-317A', 'GASKET, BONNET(SUPERSEDED BY 3453) 1-13/16\"-10K &  2-1/16\"-10K/15K ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(335, 321, 'WM-4006', 'BEARING, THRUST #INA-4440', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(336, 322, 'WM-4009', 'PIN, STEM 7-1/16 X 6-1/8-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(337, 323, 'WM-809', 'PIN, STEM 2-1/16-10/15K  MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(338, 324, 'WM-824B', 'RETAINER, SEAT 2-1/16\"-10K MAGNUM', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(339, 325, 'WM-931', 'VALVE, CHECK 1/4\" - 18 NPT ', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(340, 326, 'BY-7166', 'ORING PN: OR-3-913 VENDOR: TUBEMAC INCLUDED IN VENDOR SEAL KIT P/N: KIT-CV-075-43-SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(341, 327, 'BY-7167', 'PN: R-075 VENDOR: TUBEMAC INCLUDED IN VENDOR SEAL KIT P/N: KIT-CV-075-43-SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(342, 328, 'BY-7168', 'PN: Q1T-00005-311 VENDOR: AMETEK NCC Time Delay Relay, Function Delay On Make, Time Range .25 to 5 sec', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(343, 329, 'BY-7165', 'PN: OR-3-912 VENDOR: TUBEMAC INCLUDED IN VENDOR SEAL KIT P/N: KIT-CV-075-43-SS', 'test', 'Elastomers', NULL, NULL, NULL, NULL, NULL, 'test', 'test', NULL, NULL),
(345, 100, 'AP123', 'test details', '8888', 'Hardware', 'BP35', '1.8', NULL, '2024-02-16 08:00:00', '2024-02-23 08:00:00', 'Base', 'london', '2024-02-17 14:01:53', '2024-02-17 14:01:53'),
(346, 85, 'ZQ12345', 'test details', '32554', 'Hard Components', 'BC4430000', '0.9', NULL, '2024-02-27 08:00:00', '2024-05-17 07:00:00', 'Base', 'tokyo', '2024-02-27 10:42:17', '2024-02-27 10:42:17'),
(347, 34, 'PO#111', 'test details', '342345', 'Hard Components', 'VC4434', '0.5', NULL, NULL, NULL, 'Base', 'tokyo', '2024-02-27 23:19:32', '2024-02-27 23:19:32'),
(348, 556, 'OP123', 'test details', 'PO#1234', 'Hard Components', 'DR213', '0.8', NULL, '2024-02-27 08:00:00', '2024-09-27 07:00:00', 'Base', 'Madrid', '2024-02-27 23:31:04', '2024-02-27 23:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `offorders`
--

CREATE TABLE `offorders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wompart_num` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Equipment failure',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offorders`
--

INSERT INTO `offorders` (`id`, `wompart_num`, `category`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AP123', 'Elastomers', 10, 'Equipment failure', '2023-11-19 12:27:17', '2023-11-19 12:27:17'),
(2, 'AP1234', 'Hard Components', 11, 'Expired', '2023-11-19 12:27:32', '2023-11-19 12:27:32'),
(3, 'AP12345', 'Hardware', 3, 'Maintenance', '2023-11-19 12:27:48', '2023-11-19 12:27:48'),
(7, 'AP444', 'Elastomers', 10, 'Equipment failure', '2023-11-19 13:06:34', NULL),
(8, 'AP333', 'Hard Components', 11, 'Expired', '2023-11-19 13:06:34', NULL),
(9, 'AP133', 'Hardware', 3, 'Maintenance', '2023-11-19 13:06:34', NULL),
(10, 'BT-2015S', 'Elastomers', 0, 'Maintenance', '2024-02-26 17:22:52', '2024-02-26 22:39:48'),
(11, 'BS-7310S-LRP1', 'Elastomers', 8, 'Maintenance', '2024-02-26 22:39:06', '2024-02-26 22:39:06'),
(12, '3482', 'Hard Component', 2, 'Maintenance', '2024-02-26 23:31:50', '2024-02-26 23:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wompart_num` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Equipment failure',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user1@mail.ru', 'ALfkUKyJ8EAQDNafyMFEVsMMUNosP7QDT4BEf0MEO8kdetDG6nrk4NJQf3sP', '2024-05-25 06:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `role_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Super Admin', NULL, NULL),
(3, 'Normal User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sequence_tbls`
--

CREATE TABLE `sequence_tbls` (
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rec_id` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Triggers `staff`
--
DELIMITER $$
CREATE TRIGGER `id_store` BEFORE INSERT ON `staff` FOR EACH ROW BEGIN
                        INSERT INTO sequence_tbls VALUES (NULL);
                        SET NEW.rec_id = CONCAT("KHM_", LPAD(LAST_INSERT_ID(), 10, "0"));
                    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `status`, `role_name`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Inder Wadhwa', 'inderw@womusa.com', NULL, NULL, 'Admin', 'photo_defaults.jpg', NULL, '$2b$12$mv6RuVj.jGfOOQ602uFAFeRK.FH0r0zRFCPcEZ46u2QJOG/Xp59Ze', NULL, '2023-11-17 15:07:18', '2024-05-27 14:26:57'),
(2, 'Jorge Barron', 'jorgeb@womusa.com', NULL, NULL, 'Normal User', 'photo_defaults.jpg', NULL, '$2y$10$VhwSfAEUhlMmvV3NYNKXbuacwRNzYrNYGWzpDDxhlKPjp7ra20WLu', NULL, '2023-11-17 15:08:42', '2023-11-17 15:08:42'),
(3, 'zigmas', 'user1@mail.ru', '123123123123', 'Active', 'Normal User', '1715940127.jpg', NULL, '$2b$12$mv6RuVj.jGfOOQ602uFAFeRK.FH0r0zRFCPcEZ46u2QJOG/Xp59Ze', NULL, '2024-05-18 00:02:07', '2024-05-27 14:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_logs`
--

CREATE TABLE `user_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `modify_user` varchar(255) DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activity_logs`
--

INSERT INTO `user_activity_logs` (`id`, `user_name`, `email`, `phone_number`, `status`, `role_name`, `modify_user`, `date_time`, `created_at`, `updated_at`) VALUES
(1, 'zigmas', 'user1@mail.ru', '123123123123', 'Active', 'Normal User', 'Update', 'Mon, May 27, 2024 7:38 AM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Disable', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drawings`
--
ALTER TABLE `drawings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `inventorys`
--
ALTER TABLE `inventorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventorys_wompart_num_unique` (`wompart_num`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offinventorys`
--
ALTER TABLE `offinventorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offorders`
--
ALTER TABLE `offorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `drawings`
--
ALTER TABLE `drawings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventorys`
--
ALTER TABLE `inventorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `offinventorys`
--
ALTER TABLE `offinventorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `offorders`
--
ALTER TABLE `offorders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sequence_tbls`
--
ALTER TABLE `sequence_tbls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_activity_logs`
--
ALTER TABLE `user_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
