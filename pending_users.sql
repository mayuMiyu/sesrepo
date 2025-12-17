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
-- Table structure for table `pending_users`
--

DROP TABLE IF EXISTS `pending_users`;
CREATE TABLE IF NOT EXISTS `pending_users` (
  `pending_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `lrn` varchar(12) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `submitted_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pending_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pending_users`
--

INSERT INTO `pending_users` (`pending_id`, `first_name`, `middle_name`, `last_name`, `lrn`, `password`, `birth_date`, `sex`, `email`, `role`, `submitted_at`) VALUES
(20, 'Mark Jhaevy', 'M', 'Maquinto', '25-00049', 'Cundangan13', '2005-10-13', 'Male', 'fannyfrever@gmail.com', 'Student', '2025-12-14 09:00:20'),
(24, 'Khing', 'n', 'rudioo', '25-00053', 'kingrudio12', '2003-10-19', 'male', '24-38445@g.batstate-u.edu.ph', 'Student', '2025-12-14 10:23:19'),
(25, 'Christian', 'Cundangan', 'Balita', '25-00054', 'Cundangan13', '2005-10-13', 'Male', '24-30865@g.batstate-u.edu.ph', 'Student', '2025-12-14 10:24:30'),
(26, 'Christian', 'Cundangan', 'Balita', '25-00055', 'Cundangan13', '2005-10-13', 'Male', '24-30865@g.batstate-u.edu.ph', 'Student', '2025-12-14 10:24:36');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
