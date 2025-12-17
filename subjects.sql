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
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `units` int NOT NULL,
  `program` varchar(100) NOT NULL,
  `year_level` varchar(20) NOT NULL,
  `term` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `code`, `title`, `units`, `program`, `year_level`, `term`, `is_active`) VALUES
(3, 'IT-ABSYS', 'Abstract System 2', 3, 'Information Technology (BSIT)', 'First Year', 'First Semester', 1),
(4, 'IT-111', 'Advance Computer Programming', 3, 'Information Technology (BSIT)', 'First Year', 'Second Semester', 1),
(5, 'IT-LIT', 'ASEAN Literature', 3, 'Information Technology (BSIT)', 'First Year', 'First Semester', 1),
(6, 'PF-PE1', 'PathFit 1', 3, 'Information Technology (BSIT)', 'First Year', 'First Semester', 1),
(7, 'SY-STEM', 'Subject System', 3, 'Information Technology (BSIT)', 'First Year', 'First Semester', 1),
(8, 'SYS-EXE', 'System Execution', 3, 'Information Technology (BSIT)', 'First Year', 'First Semester', 1),
(9, 'GE-STS', 'Science, Technology, Society', 3, 'Information Technology (BSIT)', 'First Year', 'Second Semester', 1),
(10, 'IT-COMP2', 'Computer Programming 2', 3, 'Information Technology (BSIT)', 'First Year', 'Second Semester', 1),
(11, 'IT-DSA', 'Data Structures & Algorithms', 3, 'Information Technology (BSIT)', 'First Year', 'Second Semester', 1),
(12, 'PF-PE2', 'PathFit 2', 3, 'Information Technology (BSIT)', 'First Year', 'Second Semester', 1),
(13, 'IT-TST1', 'Test Subject', 3, 'Information Technology (BSIT)', 'First Year', 'First Semester', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
