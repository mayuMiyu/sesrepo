
INSERT INTO `class_sections` (`id`, `subject_id`, `section_code`, `capacity`, `instructor_id`, `schedule_info`) VALUES
(1, 3, 'IT-1101', 40, NULL, NULL),
(2, 4, 'IT-1101', 40, NULL, NULL);
--
-- Dumping data for table `enrollment_applications`
--

INSERT INTO `enrollment_applications` (`id`, `student_id`, `term`, `program`, `year_level`, `section`, `subjects_count`, `status`, `submitted_at`, `approved_by`) VALUES
(52, 20, 'First Semester', 'Information Technology (BSIT)', 'First Year', 'IT-1102', 5, 'Approved', '2025-12-14 10:45:54', NULL),
(48, 16, 'First Semester', 'Information Technology (BSIT)', 'First Year', 'IT-1102', 5, 'Pending', '2025-12-14 09:12:46', NULL),
(47, 17, 'First Semester', 'Information Technology (BSIT)', 'First Year', 'IT-1102', 5, 'Pending', '2025-12-14 09:09:47', NULL);

-- --------------------------------------------------------

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

-- --------------------------------------------------------


--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `code`, `expires_at`, `used`, `created_at`) VALUES
(1, 10, '893835', '2025-12-12 13:10:53', 1, '2025-12-12 05:00:53'),
(2, 11, '823082', '2025-12-12 22:28:44', 1, '2025-12-12 14:18:43');

-- --------------------------------------------------------

--
-- Dumping data for table `payment_proofs`
--

INSERT INTO `payment_proofs` (`id`, `student_id`, `enrollment_id`, `image_path`, `uploaded_at`, `status`, `reviewed_at`, `reviewed_by`) VALUES
(33, 20, 52, 'uploads/payments/payment_20_1765680553361.jpg', '2025-12-14 02:49:13', 'Approved', NULL, NULL);

-- --------------------------------------------------------


--
-- Dumping data for table `pending_users`
--

INSERT INTO `pending_users` (`pending_id`, `first_name`, `middle_name`, `last_name`, `lrn`, `password`, `birth_date`, `sex`, `email`, `role`, `submitted_at`) VALUES
(20, 'Mark Jhaevy', 'M', 'Maquinto', '25-00049', 'Cundangan13', '2005-10-13', 'Male', 'fannyfrever@gmail.com', 'Student', '2025-12-14 09:00:20'),
(24, 'Khing', 'n', 'rudioo', '25-00053', 'kingrudio12', '2003-10-19', 'male', '24-38445@g.batstate-u.edu.ph', 'Student', '2025-12-14 10:23:19'),
(25, 'Christian', 'Cundangan', 'Balita', '25-00054', 'Cundangan13', '2005-10-13', 'Male', '24-30865@g.batstate-u.edu.ph', 'Student', '2025-12-14 10:24:30'),
(26, 'Christian', 'Cundangan', 'Balita', '25-00055', 'Cundangan13', '2005-10-13', 'Male', '24-30865@g.batstate-u.edu.ph', 'Student', '2025-12-14 10:24:36');

-- --------------------------------------------------------

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `student_id`, `enrollment_id`, `class_section_id`, `status`, `grade`, `remarks`, `created_at`, `dropped_at`) VALUES
(46, 20, 52, 6, 'ENROLLED', '95.0', 'Passed', '2025-12-14 10:49:14', NULL),
(47, 20, 52, 8, 'DROPPED', NULL, 'N/A', '2025-12-14 10:49:14', '2025-12-14 10:58:53'),
(48, 20, 52, 9, 'ENROLLED', '75.0', 'Passed', '2025-12-14 10:49:14', NULL),
(49, 20, 52, 10, 'ENROLLED', '85.0', 'Passed', '2025-12-14 10:49:14', NULL),
(50, 20, 52, 11, 'ENROLLED', '90.0', 'Passed', '2025-12-14 10:49:14', NULL);

-- --------------------------------------------------------


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

-- --------------------------------------------------------

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

-- --------------------------------------------------------

--
-- Dumping data for table `subject_prerequisites`
--

INSERT INTO `subject_prerequisites` (`id`, `subject_id`, `prerequisite_id`) VALUES
(1, 4, 3),
(2, 9, 5),
(3, 10, 7),
(4, 11, 8),
(5, 12, 6);

-- --------------------------------------------------------

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`name`, `value`) VALUES
('current_term', 'Second Semester 2025-2026');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `employee_no`, `first_name`, `middle_name`, `last_name`, `sex`, `birth_date`, `address`, `department`, `phone`, `emergency_name`, `emergency_phone`, `emergency_email`, `employment_status`, `created_at`, `updated_at`) VALUES
(1, 12, '25-00002', 'Viel', 'M', 'Mejico', 'Male', '2005-10-13', 'Meow Meow', '', '', '', '', '', 'N/A', '2025-12-12 10:12:57', '2025-12-13 14:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

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

--
-- Constraints for dumped tables
--
--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `fk_reg_class_section` FOREIGN KEY (`class_section_id`) REFERENCES `instructor_assignments` (`id`);
COMMIT;
