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
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `enrollment_id` int NOT NULL,
  `class_section_id` int NOT NULL,
  `status` enum('PENDING','ENROLLED','DROPPED') NOT NULL DEFAULT 'ENROLLED',
  `grade` varchar(10) DEFAULT NULL,
  `remarks` enum('N/A','Passed','Failed') NOT NULL DEFAULT 'N/A',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `dropped_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `enrollment_id` (`enrollment_id`),
  KEY `fk_reg_class_section` (`class_section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `student_id`, `enrollment_id`, `class_section_id`, `status`, `grade`, `remarks`, `created_at`, `dropped_at`) VALUES
(46, 20, 52, 6, 'ENROLLED', '95.0', 'Passed', '2025-12-14 10:49:14', NULL),
(47, 20, 52, 8, 'DROPPED', NULL, 'N/A', '2025-12-14 10:49:14', '2025-12-14 10:58:53'),
(48, 20, 52, 9, 'ENROLLED', '75.0', 'Passed', '2025-12-14 10:49:14', NULL),
(49, 20, 52, 10, 'ENROLLED', '85.0', 'Passed', '2025-12-14 10:49:14', NULL),
(50, 20, 52, 11, 'ENROLLED', '90.0', 'Passed', '2025-12-14 10:49:14', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `fk_reg_class_section` FOREIGN KEY (`class_section_id`) REFERENCES `instructor_assignments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
