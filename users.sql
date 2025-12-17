-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 17, 2025 at 04:30 PM
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('Admin','Student','Teacher','Staff') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Pending','Approved','Rejected','Disabled') DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lrn` (`lrn`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `lrn`, `password`, `birth_date`, `sex`, `email`, `role`, `created_at`, `status`) VALUES
(1, 'meow meow', NULL, 'De Castro', 'Staff', '1', '2007-03-14', 'Female', 'user123@gmail.com', 'Staff', '2025-11-30 17:37:14', 'Approved'),
(2, 'Christian', NULL, 'Cundangan', 'Admin', '1', '2005-10-14', 'Male', 'user111@gmail.com', 'Admin', '2025-12-02 18:05:27', 'Approved'),
(18, 'kheng', 'n', 'rodio', '25-00051', 'khing2013', '2003-10-18', 'Male', 'rodioking11@gmail.com', 'Student', '2025-12-14 01:34:40', 'Approved'),
(12, 'Viel', 'M', 'Mejico', '25-00002', '25-00002', '2005-10-13', 'Male', 'anthonyberts337@gmail.com', 'Teacher', '2025-12-12 10:12:57', 'Approved'),
(14, 'Hillary', NULL, 'Abrogina', '25-00046', 'hillary123', '2005-10-13', 'Female', '24-31951@g.batstate-u.edu.ph', 'Student', '2025-12-13 20:03:00', 'Approved'),
(16, 'khing', 'briones', 'rudio', '25-00047', 'khing2003', '2003-10-19', 'Male', 'khiingruudio@gmail.com', 'Student', '2025-12-13 23:51:46', 'Approved'),
(17, 'Rye Alen', 'Rivera', 'Sarmiento', '25-00048', '12345678', '2006-03-05', 'Male', '24-36125@g.batstate-u.edu.ph', 'Student', '2025-12-14 00:14:23', 'Approved'),
(19, 'Jhaevy', 'Maquinto', 'Arellano', '25-00052', 'Jhaevy1234', '2006-06-08', 'Male', 'markjhaevya@gmail.com', 'Student', '2025-12-14 02:07:20', 'Approved'),
(20, 'Christian', 'Cundangan', 'Balita', '25-00056', 'Cundangan13', '2005-10-13', 'Male', '24-30865@g.batstate-u.edu.ph', 'Student', '2025-12-14 02:26:36', 'Approved');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
