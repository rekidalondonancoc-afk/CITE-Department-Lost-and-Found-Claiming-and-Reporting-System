-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2026 at 12:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cite_lost_found`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_tb`
--

CREATE TABLE `archive_tb` (
  `archive_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(20) DEFAULT NULL,
  `archived_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `claim_id` int(11) DEFAULT NULL,
  `claimant_email` varchar(255) DEFAULT NULL,
  `archived_by` varchar(100) DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archive_tb`
--

INSERT INTO `archive_tb` (`archive_id`, `item_id`, `item_name`, `item_type`, `archived_date`, `claim_id`, `claimant_email`, `archived_by`) VALUES
(2, 1, 'Mizi', 'Found', '2026-10-11 10:04:49', 1, 'elir.tribaco.coc@phinmaed.com', 'Admin'),
(3, 1, 'Mizi', 'Found', '2026-10-11 10:08:15', 1, 'elir.tribaco.coc@phinmaed.com', 'Admin'),
(4, 2, 'Laptop Charger', 'Found', '2026-10-11 10:37:09', 3, 'dalondonan@gmail.com', 'Admin'),
(5, 3, 'Bracelet', 'Found', '2026-10-12 02:21:39', 4, 'havi.yuco.coc@pinmaed.com', 'Admin'),
(6, 1, 'Mizi', 'Found', '2026-10-12 03:04:47', 2, 'elir.tribaco.coc@phinmaed.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `claim_tb`
--

CREATE TABLE `claim_tb` (
  `claim_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `claimant_email` varchar(100) NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_name` varchar(50) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `verified_by` varchar(100) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `returned_at` datetime DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `claim_tb`
--

INSERT INTO `claim_tb` (`claim_id`, `item_id`, `claimant_email`, `request_date`, `status_name`, `admin_note`, `verified_by`, `verified_at`, `returned_at`, `status_id`) VALUES
(1, 1, 'elir.tribaco.coc@phinmaed.com', '2026-10-10 08:37:16', 'Claimed', 'Item successfully claimed', NULL, '2026-10-10 18:03:20', '2026-10-11 18:08:15', 2),
(2, 1, 'elir.tribaco.coc@phinmaed.com', '2026-10-11 10:28:37', 'Claimed', 'Item successfully claimed', NULL, '2026-10-12 11:04:39', '2026-10-12 11:04:47', 2),
(3, 2, 'dalondonan@gmail.com', '2026-10-11 10:36:22', 'Claimed', 'Item successfully claimed', NULL, '2026-10-11 18:36:47', '2026-10-11 18:37:09', 2);

-- --------------------------------------------------------

--
-- Table structure for table `founditems_tb`
--

CREATE TABLE `founditems_tb` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_location` varchar(150) NOT NULL,
  `item_date` text DEFAULT NULL,
  `item_foundby` varchar(100) NOT NULL,
  `item_description` text NOT NULL,
  `item_image` varchar(500) DEFAULT NULL,
  `status_name` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `caption` text DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `founditems_tb`
--

INSERT INTO `founditems_tb` (`item_id`, `item_name`, `item_location`, `item_date`, `item_foundby`, `item_description`, `item_image`, `status_name`, `created_at`, `caption`, `status_id`) VALUES
(1, 'Mizi', 'Alien Stage', 'September 20, 2026', 'Fan', 'she was alive but dead inside', NULL, NULL, '2026-10-10 05:49:21', NULL, 1),
(2, 'Laptop Charger', 'CL4', 'October 10, 2026', 'Dalondonan', 'Acer Laptop Charrger lost inside the CL4 front row', NULL, NULL, '2026-10-11 10:35:10', NULL, 1),
(3, 'Bracelet', 'CL2', '10/12/26', 'yuco', 'Pink', NULL, NULL, '2026-10-12 02:20:07', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lostitems_tb`
--

CREATE TABLE `lostitems_tb` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_location` varchar(150) NOT NULL,
  `item_date` varchar(50) DEFAULT NULL,
  `item_reportedby` varchar(100) NOT NULL,
  `item_description` text NOT NULL,
  `item_image` varchar(500) DEFAULT NULL,
  `status_name` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `caption` text DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lostitems_tb`
--

INSERT INTO `lostitems_tb` (`item_id`, `item_name`, `item_location`, `item_date`, `item_reportedby`, `item_description`, `item_image`, `status_name`, `created_at`, `caption`, `status_id`) VALUES
(4, 'Laptop Bag', 'CL1', 'October 11, 2026', 'Ellianah Louisse Tribaco', 'Pink with lots of anime pins', NULL, NULL, '2026-10-11 10:30:15', NULL, 1),
(5, 'Tumblr', 'CL4', 'October 20, 2026', 'Yuco', 'Purple flask tumlbr', NULL, NULL, '2026-10-11 10:32:49', NULL, 1),
(6, 'Tumbler', 'CL4 SHS', '10/11/26', 'Hannah jane Yuco', 'Purple tumbler small', NULL, NULL, '2026-10-12 02:16:50', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickup_schedule`
--

CREATE TABLE `pickup_schedule` (
  `schedule_id` int(11) NOT NULL,
  `claim_id` int(11) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` time NOT NULL,
  `pickup_location` varchar(255) NOT NULL DEFAULT 'CITE Office',
  `schedule_status` varchar(30) NOT NULL DEFAULT 'Scheduled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pickup_schedule`
--

INSERT INTO `pickup_schedule` (`schedule_id`, `claim_id`, `pickup_date`, `pickup_time`, `pickup_location`, `schedule_status`, `created_at`) VALUES
(1, 1, '2026-10-12', '09:00:00', 'CITE Office', 'Scheduled', '2026-10-11 09:55:40'),
(2, 1, '2026-10-11', '10:00:00', 'CITE Office', 'Completed', '2026-10-11 10:08:15'),
(3, 3, '2026-10-11', '10:00:00', 'CITE Office', 'Completed', '2026-10-11 10:37:09'),
(4, 4, '2026-10-12', '10:00:00', 'CITE Office', 'Completed', '2026-10-12 02:21:39'),
(5, 2, '2026-10-12', '10:00:00', 'CITE Office', 'Completed', '2026-10-12 03:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_tb`
--

CREATE TABLE `role_tb` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_tb`
--

INSERT INTO `role_tb` (`role_id`, `role_name`) VALUES
(3, 'Admin'),
(2, 'Guest'),
(1, 'IT Student');

-- --------------------------------------------------------

--
-- Table structure for table `status_tb`
--

CREATE TABLE `status_tb` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_tb`
--

INSERT INTO `status_tb` (`status_id`, `status_name`) VALUES
(3, 'Accepted'),
(2, 'Claimed'),
(1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role_id`) VALUES
(1, 'louisse', '123456789', 2),
(2, 'admin', '123456789', 3),
(3, 'ellianah', 'myangel1', 1),
(4, 'Student1', '123456789', 1),
(5, 'louisse1', '123123123', 1),
(6, 'cat', '123456789', 1),
(7, 'studentexample', '123456789', 1),
(8, 'CatAdmin', '123456789', 3),
(9, 'Hannah', 'Hannah123', 1),
(10, 'havi.yuco.coc@phinmaed.com', 'yuco25', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_tb`
--
ALTER TABLE `archive_tb`
  ADD PRIMARY KEY (`archive_id`);

--
-- Indexes for table `claim_tb`
--
ALTER TABLE `claim_tb`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `fk_claim_status` (`status_id`);

--
-- Indexes for table `founditems_tb`
--
ALTER TABLE `founditems_tb`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_found_status` (`status_id`);

--
-- Indexes for table `lostitems_tb`
--
ALTER TABLE `lostitems_tb`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_lost_status` (`status_id`);

--
-- Indexes for table `pickup_schedule`
--
ALTER TABLE `pickup_schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `role_tb`
--
ALTER TABLE `role_tb`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `status_tb`
--
ALTER TABLE `status_tb`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_users_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_tb`
--
ALTER TABLE `archive_tb`
  MODIFY `archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `claim_tb`
--
ALTER TABLE `claim_tb`
  MODIFY `claim_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `founditems_tb`
--
ALTER TABLE `founditems_tb`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lostitems_tb`
--
ALTER TABLE `lostitems_tb`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pickup_schedule`
--
ALTER TABLE `pickup_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role_tb`
--
ALTER TABLE `role_tb`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_tb`
--
ALTER TABLE `status_tb`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `claim_tb`
--
ALTER TABLE `claim_tb`
  ADD CONSTRAINT `fk_claim_status` FOREIGN KEY (`status_id`) REFERENCES `status_tb` (`status_id`);

--
-- Constraints for table `founditems_tb`
--
ALTER TABLE `founditems_tb`
  ADD CONSTRAINT `fk_found_status` FOREIGN KEY (`status_id`) REFERENCES `status_tb` (`status_id`);

--
-- Constraints for table `lostitems_tb`
--
ALTER TABLE `lostitems_tb`
  ADD CONSTRAINT `fk_lost_status` FOREIGN KEY (`status_id`) REFERENCES `status_tb` (`status_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `role_tb` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
