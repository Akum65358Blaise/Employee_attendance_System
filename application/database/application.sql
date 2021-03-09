-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 10:12 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `application`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_data`
--

CREATE TABLE `company_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `jobposition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `companyemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `startdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateregularized` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reason` varchar(455) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `leaveprivilege` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_data`
--

INSERT INTO `company_data` (`id`, `reference`, `company`, `department`, `jobposition`, `companyemail`, `idno`, `startdate`, `dateregularized`, `reason`, `leaveprivilege`) VALUES
(1, 1, '', '', '', '', '001122', '2020-02-01', '2020-02-01', '', NULL),
(2, 2, '', '', '', '', '001133', '2020-02-01', '2020-02-01', '', NULL),
(3, 3, '', '', '', '', '1002', '1969-12-31', '1969-12-31', '', NULL),
(4, 4, '', '', '', '', '20201', '1969-12-31', '1969-12-31', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_company`
--

CREATE TABLE `form_company` (
  `id` int(11) UNSIGNED NOT NULL,
  `company` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_department`
--

CREATE TABLE `form_department` (
  `id` int(11) UNSIGNED NOT NULL,
  `department` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_jobtitle`
--

CREATE TABLE `form_jobtitle` (
  `id` int(11) UNSIGNED NOT NULL,
  `jobtitle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dept_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_leavegroup`
--

CREATE TABLE `form_leavegroup` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavegroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaveprivileges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_leavetype`
--

CREATE TABLE `form_leavetype` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percalendar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `emailaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `civilstatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobileno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nationalid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `employmentstatus` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `employmenttype` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `firstname`, `mi`, `lastname`, `age`, `gender`, `emailaddress`, `civilstatus`, `height`, `weight`, `mobileno`, `birthday`, `nationalid`, `birthplace`, `homeaddress`, `employmentstatus`, `employmenttype`, `avatar`) VALUES
(1, 'AKUM', '', 'BLAISE', NULL, '', 'akum@hitv.com', '', NULL, NULL, NULL, '2020-01-03', '', '', '', 'Active', NULL, ''),
(2, 'BENITA', '', 'NGI', NULL, '', 'benita@hitv.com', '', NULL, NULL, NULL, '2020-01-03', '', '', '', 'Active', NULL, ''),
(3, 'TUIJAH', 'CHRISTIAN', 'ANDONG', NULL, 'MALE', 'tuijah@hitv.com', 'SINGLE', '120', '22', NULL, '1969-12-31', '', '', '', 'Active', NULL, ''),
(4, 'JAY', 'JAY', 'JEREMY', NULL, 'MALE', 'blaise@hitv.com', 'SINGLE', NULL, NULL, NULL, '1969-12-31', '', '', '', 'Active', 'Regular', '');

-- --------------------------------------------------------

--
-- Table structure for table `people_attendance`
--

CREATE TABLE `people_attendance` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date` date DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `timein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalhours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status_timein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status_timeout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people_attendance`
--

INSERT INTO `people_attendance` (`id`, `reference`, `idno`, `date`, `employee`, `timein`, `timeout`, `totalhours`, `status_timein`, `status_timeout`, `reason`, `comment`, `created_at`) VALUES
(1, 3, '1002', '2021-01-14', 'ANDONG, TUIJAH CHRISTIAN', '2021-01-14 07:14:34 AM', '2021-02-18 08:11:46 AM', '840.57', 'Ok', 'Ok', '', '', '2021-01-14 12:14:34'),
(2, 2, '001133', '2021-02-18', 'NGI, BENITA ', '2021-02-18 08:19:03 AM', '2021-02-18 08:19:24 AM', '0.0', 'Ok', 'Ok', '', '', '2021-02-18 13:19:03'),
(3, 4, '20201', '2021-02-18', 'JEREMY, JAY JAY', '2021-02-18 08:36:12 AM', '2021-02-18 08:36:27 AM', '0.0', 'Ok', 'Ok', '', '', '2021-02-18 13:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `people_leaves`
--

CREATE TABLE `people_leaves` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `typeid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `leavefrom` date DEFAULT NULL,
  `leaveto` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people_schedules`
--

CREATE TABLE `people_schedules` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intime` text COLLATE utf8mb4_unicode_ci,
  `outime` text COLLATE utf8mb4_unicode_ci,
  `datefrom` date DEFAULT NULL,
  `dateto` date DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `restday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_views`
--

CREATE TABLE `report_views` (
  `id` int(11) UNSIGNED NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `last_viewed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report_views`
--

INSERT INTO `report_views` (`id`, `report_id`, `last_viewed`, `title`) VALUES
(1, 1, '', 'Employee List Report'),
(2, 2, 'Jan, 14 2021', 'Employee Attendance Report'),
(3, 3, '', 'Employee Leaves Report'),
(4, 4, '', 'Employee Schedule Report'),
(5, 5, '', 'Organizational Profile'),
(6, 6, '', 'User Accounts Report'),
(7, 7, '', 'Employee Birthdays');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clock_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` int(11) DEFAULT NULL,
  `iprestriction` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `country`, `timezone`, `clock_comment`, `rfid`, `time_format`, `iprestriction`, `opt`) VALUES
(1, 'Cameroon', 'WAT/cameroon', NULL, NULL, 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `acc_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reference`, `idno`, `name`, `email`, `role_id`, `acc_type`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '001122', 'AKUM BLAISE', 'akum@hitv.com', 1, 2, 1, '$2y$10$mDAH.R8JG5ThPelt4zRXc.8sxizt.tqXQfndx5s/W/3j0Sq6xS3LG', '', '2018-10-31 12:10:04', '2018-10-31 12:10:04'),
(2, 2, '001133', 'DEMO, EMPLOYEE', 'employee@example.com', 2, 1, 1, '$2y$10$3qjhKES39RmTl4k7PQWJ.OfG4uFzzF/iYJI8A1BLgYs2uDEfe5pry', '', '2018-12-21 05:20:18', '2018-12-21 05:20:18'),
(3, 3, '1002', 'ANDONG, TUIJAH', 'tuijah@hitv.com', 2, 1, 1, '$2y$10$A/jMrrOwMtWvMlYxdgfKeuGNQ/G2P14f/RJMUI69niE3i.4SYJ.Dm', NULL, '2021-01-14 12:13:42', '2021-01-14 12:13:42'),
(4, 2, '001133', 'NGI, BENITA', 'benita@hitv.com', 2, 1, 1, '$2y$10$NlQ/qgw69MurKxcqPBDbEuzd3p7dfCGkfHsnF2ZMQ1/Rl0MrSYiJy', NULL, '2021-02-18 13:15:04', '2021-02-18 13:15:04'),
(5, 4, '20201', 'JEREMY, JAY', 'blaise@hitv.com', 2, 1, 1, '$2y$10$kAx7ef/4yuP92FSpGu50re7j9AsCqrDO1r/yCtl.MWV68HL2Gcfwu', NULL, '2021-02-18 13:32:27', '2021-02-18 13:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_permissions`
--

INSERT INTO `users_permissions` (`id`, `role_id`, `perm_id`) VALUES
(1798, 1, 1),
(1799, 1, 2),
(1800, 1, 22),
(1801, 1, 21),
(1802, 1, 23),
(1803, 1, 24),
(1804, 1, 25),
(1805, 1, 3),
(1806, 1, 31),
(1807, 1, 32),
(1808, 1, 4),
(1809, 1, 41),
(1810, 1, 42),
(1811, 1, 43),
(1812, 1, 44),
(1813, 1, 5),
(1814, 1, 52),
(1815, 1, 53),
(1816, 1, 9),
(1817, 1, 91),
(1818, 1, 7),
(1819, 1, 8),
(1820, 1, 81),
(1821, 1, 82),
(1822, 1, 83),
(1823, 1, 10),
(1824, 1, 101),
(1825, 1, 102),
(1826, 1, 103),
(1827, 1, 104),
(1828, 1, 11),
(1829, 1, 111),
(1830, 1, 112),
(1831, 1, 12),
(1832, 1, 121),
(1833, 1, 122),
(1834, 1, 13),
(1835, 1, 131),
(1836, 1, 132),
(1837, 1, 14),
(1838, 1, 141),
(1839, 1, 142),
(1840, 1, 15),
(1841, 1, 151),
(1842, 1, 152),
(1843, 1, 153);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`id`, `role_name`, `state`) VALUES
(1, 'MANAGER', 'Active'),
(2, 'EMPLOYEE', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_data`
--
ALTER TABLE `company_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_company`
--
ALTER TABLE `form_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_department`
--
ALTER TABLE `form_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_jobtitle`
--
ALTER TABLE `form_jobtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_leavegroup`
--
ALTER TABLE `form_leavegroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_leavetype`
--
ALTER TABLE `form_leavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_attendance`
--
ALTER TABLE `people_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_leaves`
--
ALTER TABLE `people_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_schedules`
--
ALTER TABLE `people_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_views`
--
ALTER TABLE `report_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_data`
--
ALTER TABLE `company_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_company`
--
ALTER TABLE `form_company`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_department`
--
ALTER TABLE `form_department`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_jobtitle`
--
ALTER TABLE `form_jobtitle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_leavegroup`
--
ALTER TABLE `form_leavegroup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_leavetype`
--
ALTER TABLE `form_leavetype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `people_attendance`
--
ALTER TABLE `people_attendance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `people_leaves`
--
ALTER TABLE `people_leaves`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `people_schedules`
--
ALTER TABLE `people_schedules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_views`
--
ALTER TABLE `report_views`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users_permissions`
--
ALTER TABLE `users_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1844;

--
-- AUTO_INCREMENT for table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
