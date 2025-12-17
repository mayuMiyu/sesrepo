-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2025 at 04:31 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_documents`
--

DROP TABLE IF EXISTS `student_documents`;
CREATE TABLE IF NOT EXISTS `student_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `student_address` varchar(100) NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `student_occupation` varchar(50) NOT NULL,
  `financial_aid_program` varchar(50) NOT NULL DEFAULT 'No',
  `doc_type` varchar(100) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `uploaded_at` datetime NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `viewed_at` datetime DEFAULT NULL,
  `viewed_by` int DEFAULT NULL,
  `guardian1_name` varchar(255) DEFAULT NULL,
  `guardian1_address` varchar(255) DEFAULT NULL,
  `guardian1_status` varchar(50) DEFAULT NULL,
  `guardian1_relation` varchar(50) DEFAULT NULL,
  `guardian1_occupation` varchar(100) DEFAULT NULL,
  `guardian1_phone` varchar(20) DEFAULT NULL,
  `guardian1_phone2` varchar(20) DEFAULT NULL,
  `guardian2_name` varchar(255) DEFAULT NULL,
  `guardian2_address` varchar(255) DEFAULT NULL,
  `guardian2_status` varchar(50) DEFAULT NULL,
  `guardian2_relation` varchar(50) DEFAULT NULL,
  `guardian2_occupation` varchar(100) DEFAULT NULL,
  `guardian2_phone` varchar(20) DEFAULT NULL,
  `guardian2_phone2` varchar(20) DEFAULT NULL,
  `previous_school_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student_documents_viewed_by` (`viewed_by`),
  KEY `idx_student_documents_student` (`student_id`),
  KEY `idx_student_documents_type` (`doc_type`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_documents`
--

INSERT INTO `student_documents` (`id`, `student_id`, `phone_number`, `student_address`, `school_name`, `student_occupation`, `financial_aid_program`, `doc_type`, `file_path`, `uploaded_at`, `status`, `viewed_at`, `viewed_by`, `guardian1_name`, `guardian1_address`, `guardian1_status`, `guardian1_relation`, `guardian1_occupation`, `guardian1_phone`, `guardian1_phone2`, `guardian2_name`, `guardian2_address`, `guardian2_status`, `guardian2_relation`, `guardian2_occupation`, `guardian2_phone`, `guardian2_phone2`, `previous_school_address`) VALUES
(74, 17, '09789678777', 'PUROK4 223A BRGY ADYA', 'LCC', 'Student', 'Yes', 'Proof of Signature', 'C:\\Users\\Christian\\Downloads\\4dfd5e76-6ecb-411a-b81d-b86ac9744d62.jpg', '2025-12-14 08:16:52', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 17, '09789678777', 'PUROK4 223A BRGY ADYA', 'LCC', 'Student', 'Yes', 'ID', 'C:\\Users\\Christian\\Downloads\\3f4c944d-68ec-47d9-9994-154a97d19087.jpg', '2025-12-14 08:16:41', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 17, '09789678777', 'PUROK4 223A BRGY ADYA', 'LCC', 'Student', 'Yes', 'Report Card / Form 138', 'C:\\Users\\Christian\\Downloads\\3f4c944d-68ec-47d9-9994-154a97d19087.jpg', '2025-12-14 08:16:23', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 16, NULL, 'purok 2 anus san jose batangas', 'cavite national', 'Student', 'Yes', 'APPLICATION', NULL, '2025-12-14 08:00:59', 'Approved', NULL, NULL, 'Edna', 'Purok 2 anus san jose batangas', 'Single', 'Father', 'Self Employed', '09067503258', '09334631887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pueok 2 san jose'),
(71, 17, '09789678777', 'PUROK4 223A BRGY ADYA', 'LCC', 'Student', 'Yes', 'Birth Certificate', 'C:\\Users\\Christian\\OneDrive\\Pictures\\Screenshots\\Screenshot 2025-11-07 013626.png', '2025-12-14 08:16:12', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 16, '09067503258', 'purok 2 anus san jose batangas', 'cavite national', 'Student', 'Yes', 'Proof of Signature', 'C:\\Users\\Christian\\Downloads\\39e2d963-7574-408e-a5ee-bfc4d6b59847.jpg', '2025-12-14 08:00:54', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 16, '09067503258', 'purok 2 anus san jose batangas', 'cavite national', 'Student', 'Yes', 'ID', 'C:\\Users\\Christian\\Downloads\\4k-Japanese-Cherry-Blossom-Scenery-AI-Generated-4K-Wallpaper-1.jpg', '2025-12-14 08:00:27', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 16, '09067503258', 'purok 2 anus san jose batangas', 'cavite national', 'Student', 'Yes', 'Report Card / Form 138', 'C:\\Users\\Christian\\Downloads\\3f4c944d-68ec-47d9-9994-154a97d19087.jpg', '2025-12-14 08:00:22', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 16, '09067503258', 'purok 2 anus san jose batangas', 'cavite national', 'Student', 'Yes', 'Birth Certificate', 'C:\\Users\\Christian\\Downloads\\3f4c944d-68ec-47d9-9994-154a97d19087.jpg', '2025-12-14 08:00:14', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 17, NULL, 'PUROK4 223A BRGY ADYA', 'LCC', 'Student', 'Yes', 'APPLICATION', NULL, '2025-12-14 08:17:00', 'Approved', NULL, NULL, 'FSDG', 'RGDRG', 'Single', 'Father', 'Self Employed', '09789678777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CUBAO'),
(76, 18, '08764322411', 'kdgsdvsvs', 'hdihahduaduahd', 'Student', 'Yes', 'Birth Certificate', 'C:\\Users\\Christian\\Downloads\\3f4c944d-68ec-47d9-9994-154a97d19087.jpg', '2025-12-14 09:36:22', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 18, '08764322411', 'kdgsdvsvs', 'hdihahduaduahd', 'Student', 'Yes', 'Report Card / Form 138', 'C:\\Users\\Christian\\Downloads\\4k-Japanese-Cherry-Blossom-Scenery-AI-Generated-4K-Wallpaper-1.jpg', '2025-12-14 09:36:27', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 18, '08764322411', 'kdgsdvsvs', 'hdihahduaduahd', 'Student', 'Yes', 'ID', 'C:\\Users\\Christian\\Downloads\\3f4c944d-68ec-47d9-9994-154a97d19087.jpg', '2025-12-14 09:36:32', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 19, '09813678218', 'Sampaguita, Lipa city, Batangas', 'STI lipa', 'Student', 'Yes', 'Birth Certificate', 'C:\\Users\\Christian\\Downloads\\4dfd5e76-6ecb-411a-b81d-b86ac9744d62.jpg', '2025-12-14 10:10:28', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 19, '09813678218', 'Sampaguita, Lipa city, Batangas', 'STI lipa', 'Student', 'Yes', 'Report Card / Form 138', 'C:\\Users\\Christian\\Downloads\\9d7dfe1e-528f-49bd-87c2-fc9a2d87d2c5.jpg', '2025-12-14 10:10:38', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 19, '09813678218', 'Sampaguita, Lipa city, Batangas', 'STI lipa', 'Student', 'Yes', 'ID', 'C:\\Users\\Christian\\Downloads\\8e867dc1-6c39-4138-a3fa-7614dabae0f2.jpg', '2025-12-14 10:10:44', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 19, '09813678218', 'Sampaguita, Lipa city, Batangas', 'STI lipa', 'Student', 'Yes', 'Proof of Signature', 'C:\\Users\\Christian\\Downloads\\4k-Japanese-Cherry-Blossom-Scenery-AI-Generated-4K-Wallpaper-1.jpg', '2025-12-14 10:10:54', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 19, NULL, 'Sampaguita, Lipa city, Batangas', 'STI lipa', 'Student', 'Yes', 'APPLICATION', NULL, '2025-12-14 10:10:59', 'Approved', NULL, NULL, 'Belen', 'Sto nino', 'Married', 'Mother', 'Unemployed / Not currently working', '09813678218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lipa'),
(84, 20, '09153176223', 'BSU Lipa', 'BSu LIPA', 'Student', 'Yes', 'Birth Certificate', 'C:\\Users\\Christian\\Downloads\\1.jpg', '2025-12-14 10:34:58', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 20, '09153176223', 'BSU Lipa', 'BSu LIPA', 'Student', 'Yes', 'Report Card / Form 138', 'C:\\Users\\Christian\\Downloads\\1.jpg', '2025-12-14 10:35:07', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 20, '09153176223', 'BSU Lipa', 'BSu LIPA', 'Student', 'Yes', 'ID', 'C:\\Users\\Christian\\Downloads\\1.jpg', '2025-12-14 10:35:24', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 20, '09153176223', 'BSU Lipa', 'BSu LIPA', 'Student', 'Yes', 'Proof of Signature', 'C:\\Users\\Christian\\Downloads\\1.jpg', '2025-12-14 10:37:49', 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 20, NULL, 'BSU Lipa', 'BSu LIPA', 'Student', 'Yes', 'APPLICATION', NULL, '2025-12-14 10:38:44', 'Approved', NULL, NULL, 'Raquel', 'Tambo', 'Single', 'Father', 'Self Employed', '09153176223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BSu LIPA');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
