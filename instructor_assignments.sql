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
-- Table structure for table `instructor_assignments`
--

DROP TABLE IF EXISTS `instructor_assignments`;
CREATE TABLE IF NOT EXISTS `instructor_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instructor_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `section` varchar(20) NOT NULL,
  `term` varchar(30) NOT NULL,
  `year_level` varchar(30) NOT NULL,
  `day_range` varchar(15) NOT NULL,
  `time_range` varchar(25) NOT NULL,
  `room` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ta_instructor` (`instructor_id`),
  KEY `fk_ia_subject` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `instructor_assignments`
--

INSERT INTO `instructor_assignments` (`id`, `instructor_id`, `subject_id`, `section`, `term`, `year_level`, `day_range`, `time_range`, `room`) VALUES
(6, 12, 3, 'IT-1102', 'First Semester', 'First Year', 'Monday', '11:00-11:30PM', 'GZB-303'),
(7, 12, 4, 'IT-1102', 'Second Semester', 'First Year', 'Tuesday', '9:00-9:30AM', 'GZB-305'),
(8, 12, 5, 'IT-1102', 'First Semester', 'First Year', 'Monday', '10:00-11:00AM', 'GZB-301'),
(9, 12, 6, 'IT-1102', 'First Semester', 'First Year', 'Tuesday', '7:00-8:30AM', 'GZB-305'),
(10, 12, 7, 'IT-1102', 'First Semester', 'First Year', 'Wednesday', '7:00-9:30AM', 'GZB-201'),
(11, 12, 8, 'IT-1102', 'First Semester', 'First Year', 'Thursday', '11:00-11:30AM', 'TSB-215'),
(12, 12, 9, 'IT-1102', 'Second Semester', 'First Year', 'Sunday', '7:00-12:00PM', 'CCS-502'),
(13, 12, 10, 'IT-1102', 'Second Semester', 'First Year', 'Monday', '8:00-9:30AM', 'GZB-302'),
(14, 12, 11, 'IT-1102', 'Second Semester', 'First Year', 'Friday', '7:00-9:00AM', 'GZB-302'),
(15, 12, 12, 'IT-1102', 'Second Semester', 'First Year', 'Saturday', '8:00-9:30AM', 'GZB-305');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
