-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 01, 2023 at 04:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineleave_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(1, 'Corporate & Marketing', 'Corporate and Marketing Division', '2021-08-21 10:13:45', '2023-03-19 12:24:11'),
(2, 'Land Matters', 'Land Matters Division', '2021-08-21 10:16:06', '2023-03-19 12:23:19'),
(3, 'Technical & Operation', 'Technical and Operation Division', '2021-08-21 10:18:00', '2023-03-19 12:23:29'),
(4, 'Cum Admin Executive', 'Cum Admin Executive', '2023-03-19 12:24:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `name`, `description`, `date_created`, `date_updated`) VALUES
(22, 'G8 - General Clerk/ Receptionist/Typist/ Office Boy / Driver  / Messenger (SPM) ', 'Grade 8 / Code NE2-1', '2023-03-29 09:59:32', NULL),
(23, 'G7 - Technician / Technical Support ', 'Grade 7 / Code NE1-1', '2023-03-29 10:00:08', NULL),
(24, 'G6 - Adm. Assistant / HR Assistant / Account Assistant   (Diploma)/ Secretary ', 'Grade 6 / Code E6-2', '2023-03-29 10:01:00', NULL),
(25, 'G6 - Sn Technician/Supervisor  ', 'Grade 6 / Code E6-1', '2023-03-29 10:01:25', NULL),
(26, 'G5 - Engineer / Executive  ', 'Grade 5 / Code E5-3', '2023-03-29 10:02:10', NULL),
(27, 'G5 - Snr Adm. / Snr HR / Snr Acct (Executive) ', 'Grade 5 / Code E5-2', '2023-03-29 10:02:33', NULL),
(28, 'G5 - Snr Engr  ', 'Grade 5 / Code E5-1', '2023-03-29 10:03:01', NULL),
(29, 'G4 - Assistant Manager', 'Grade 4 / Code M2', '2023-03-29 10:03:44', NULL),
(30, 'G4 - Assistant Technical Manager ', 'Grade 4 / Code M1', '2023-03-29 10:04:09', NULL),
(31, 'G3 - Manager ', 'Grade 3 / Code M2', '2023-03-29 10:04:39', NULL),
(32, 'G3 - Technical Manager ', 'Grade 3 / Code M1', '2023-03-29 10:05:04', NULL),
(33, 'G2 - Senior Manager ', 'Grade 2 / Code M1', '2023-03-29 10:05:31', NULL),
(34, 'G1 - Deputy General Manager', 'Grade 1 / Code M3', '2023-03-29 10:05:56', NULL),
(35, 'G1 - General  Manager', 'Grade 1 / Code M2', '2023-03-29 10:06:22', NULL),
(37, 'G1 - Chief Executive Officer', 'Grade 1 / Code M1', '2023-03-29 15:33:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_meta`
--

CREATE TABLE `employee_meta` (
  `user_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_meta`
--

INSERT INTO `employee_meta` (`user_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(19, 'type', '3', '2023-04-03 12:16:10'),
(19, 'employee_id', '2021119881', '2023-04-03 12:16:10'),
(19, 'firstname', 'MUHAMMAD AZIB BIN KAMARULZAMAN', '2023-04-03 12:16:10'),
(19, 'dob', '2000-04-13', '2023-04-03 12:16:10'),
(19, 'contact', '016-8563937', '2023-04-03 12:16:10'),
(19, 'address', 'P/S 99, KM3.2 JALAN CHANGLON, 06100 KODIANG, KEDAH.', '2023-04-03 12:16:10'),
(19, 'email', 'azib4216@gmail.com', '2023-04-03 12:16:10'),
(19, 'swd', '2023-03-13', '2023-04-03 12:16:10'),
(19, 'department_id', '3', '2023-04-03 12:16:10'),
(19, 'designation_id', '23', '2023-04-03 12:16:10'),
(19, 'username', 'muhdazib', '2023-04-03 12:16:10'),
(19, 'approver', 'off', '2023-04-03 12:16:10'),
(19, 'leave_type_ids', '1,5,9,7,14,4,11,17,10,12,15,13', '2023-05-31 16:25:32'),
(19, 'leave_type_credits', '{\"1\":\"14\",\"5\":\"3\",\"9\":\"3\",\"7\":\"3\",\"14\":\"60\",\"4\":\"365\",\"11\":\"3\",\"17\":\"2\",\"10\":\"0\",\"12\":\"14\",\"15\":\"10\",\"13\":\"30\"}', '2023-05-31 16:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `leave_type_id` int(30) DEFAULT NULL,
  `reason` text NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `time_start` varchar(2) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=approved, 2=denied,3=cancelled',
  `approved_by` int(30) DEFAULT NULL,
  `leave_days` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `proof_document` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `user_id`, `leave_type_id`, `reason`, `date_start`, `date_end`, `time_start`, `type`, `status`, `approved_by`, `leave_days`, `date_created`, `date_updated`, `proof_document`) VALUES
(62, 19, 1, 'Jaga ayah yang kini berada di wad Hospital Tuanku Fauziah, Kangar, Perlis', '2023-04-17 00:00:00', '2023-04-20 00:00:00', 'AM', 1, 1, 1, 4, '2023-04-30 10:56:59', '2023-04-30 10:57:17', '1682823419-65746-53089.jpeg'),
(65, 19, 1, 'Appointment dengan Puspakom di Arau, Perlis.', '2023-05-02 00:00:00', '2023-05-02 00:00:00', 'AM', 1, 1, 1, 1, '2023-05-03 10:33:46', '2023-05-03 10:33:58', '1683081226-9736-42954.pdf'),
(67, 19, 9, 'Bawa ayah pergi Klinik Remedic Jitra, Kedah', '2023-04-12 00:00:00', '2023-04-12 00:00:00', 'AM', 1, 1, 1, 1, '2023-05-10 14:22:03', '2023-05-15 09:16:07', ''),
(72, 19, 12, 'Sick', '2023-05-29 00:00:00', '2023-05-30 00:00:00', 'AM', 1, 1, 1, 2, '2023-05-31 16:24:54', '2023-05-31 16:25:08', '1685521494-23328-57155.jpeg'),
(73, 19, 17, 'Pulang dari Langkawi', '2023-05-28 00:00:00', '2023-05-28 00:00:00', 'AM', 1, 1, 1, 1, '2023-05-31 16:26:08', '2023-05-31 16:40:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `default_credit` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `code`, `name`, `description`, `default_credit`, `status`, `date_created`, `date_updated`) VALUES
(1, 'AL', 'Annual Leave', 'Annual leave shall be taken in addition to Rest Days, Gazette Public Holidays and Sick Leave. The company reserves the right to recall an employee who is on leave or cancel his leave if the exigencies of services require the employee\'s service\r\nat anytime.\r\n\r\n', 14, 1, '2021-08-21 10:39:47', '2023-03-21 12:03:50'),
(4, 'PML', 'Prolonged Medical Leave', 'Leave is based on employee\'s illness. \r\nRecommendation of the Company\'s panel doctors or Government medical officer, any confirmed employee suffering (Tuberculosis, Cancer, Leukemia, Cerebral Thrombosis, Poliomyelitis, Mental illness, AIDS, or any\r\nother prolonged  illness) with or without hospitalisation, may be granted paid medical leave as follow :-\r\n\r\na. 3 months with full pay\r\nb. 6 additional months at half-pay, and\r\nc. 12 additional months with no pay\r\n', 365, 1, '2023-03-19 14:13:14', '2023-03-21 11:58:23'),
(5, 'CL', 'Compassionate Leave', 'The  event  of  a  death  of  members  of  employees immediate family (spouse, children, father ,mother, father and mother in laws) granted Compassionate Leave not more than three (3) working  days  in  each calendar year.\r\n', 3, 1, '2023-03-19 14:13:38', '2023-03-26 12:51:41'),
(7, 'MrL', 'Marriage Leave', 'Up to three (3) working  days only once  during service with the Company supported by documentary proofs.', 3, 1, '2023-03-19 14:14:35', '2023-03-21 11:26:21'),
(9, 'EL', 'Emergency Leave', 'Occurrence of   flood, fire or other disaster which affects   \r\nthe property of the employees, granted Emergency Leave not more than three (3) working days once in each calendar year.', 3, 1, '2023-03-19 14:16:44', '2023-03-21 11:12:14'),
(10, 'SEL', 'Study and Examination Leave', 'Leave is based on number of days for examination.\r\nStudy and Examination Leave Actual that relevant of current job, employee\'s present or future assignment in the company will be considered in full paid / half paid / unpaid. If not related, need to apply as Annual Leave.', 20, 1, '2023-03-19 14:17:30', '2023-03-21 11:50:23'),
(11, 'PtL', 'Paternity Leave', 'MALE employees shall be granted paid paternity leave for a maximum of three (3) working days for birth of child up to three (3) surviving children during his employment with the Company.\r\n\r\n\r\n', 3, 1, '2023-03-19 14:17:50', '2023-03-21 11:52:52'),
(12, 'SHL', 'Sick and Hospitalization Leave', 'Recommendation  by  a  registered  medical  practitioner  appointed  by  the Company, or by a Government medical officer  or  in  cases  of   emergency by  other   registered  medical practitioner.\r\n\r\nWork < 2 years - 14 days\r\nWork 2 - 5 years - 18 days\r\nWork > 5 years - 22 days', 14, 1, '2023-03-19 14:18:24', '2023-03-21 11:18:42'),
(13, 'UL', 'Unpaid Leave', '1. Taking care of immediate family members undergoing major medical surgery or infected with contagious diseases.\r\n2. Sickness due to pregnancy subject to early approval by certified medical practitioners.\r\n3. On the occurrence of  flood, fire or other disaster which affects the property of the employees.\r\n4. Any special circumstances happen to immediate family members such as kidnap cases, missing or missing due to natural disaster. ', 30, 1, '2023-03-19 14:18:59', '2023-05-07 09:34:05'),
(14, 'MtL', 'Maternity Leave', 'FEMALE employee shall be entitled to maternity leave with full pay for a period of sixty (60) days in respect of each confinement.\r\n', 60, 1, '2023-03-21 11:26:13', '2023-03-21 11:53:25'),
(15, 'SpL', 'Special Leave', 'The company may grant special paid leave to the employee :\r\nRepresentation the Company, State or National levels in any sports event, granted not more than ten (10) working days in each calendar year. \r\nAttended any social activities or any activities required by law \r\n(Rukun Tetangga, Pasukan sukarela and etc), granted\r\nnot more than ten (10) working days in each calendar year.\r\n\r\n', 10, 1, '2023-03-21 11:30:22', NULL),
(17, 'RL', 'Replacement Leave', 'Replacement Leave', 0, 1, '2023-03-29 15:35:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Leave Application Form'),
(6, 'short_name', 'OLAF'),
(11, 'logo', 'uploads/1679473140_logo2.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1679199240_kxp_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'KXP AirportCity', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1679474460_logo2.png', NULL, 1, '2021-01-20 14:02:37', '2023-03-22 16:41:32'),
(19, 'MUHAMMAD AZIB BIN KAMARULZAMAN', NULL, '', 'muhdazib', '7c5b923568dc974f3c5036544d9b1afc', 'uploads/19_user.png', NULL, 3, '2023-03-27 10:51:57', '2023-05-10 15:51:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `leave_type_id` (`leave_type_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD CONSTRAINT `employee_meta_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD CONSTRAINT `leave_applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `leave_applications_ibfk_2` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
