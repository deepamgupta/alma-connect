-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2020 at 06:32 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sih2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email_id` varchar(225) DEFAULT NULL,
  `password` text,
  `mob_no` varchar(12) DEFAULT NULL,
  `college_id` int(11) DEFAULT NULL COMMENT 'ID of college from which the admin belongs',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=> Inactive 1=> active',
  `privilege` int(11) DEFAULT NULL COMMENT 'Type of Admin linked to admin_type table',
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email_id`, `password`, `mob_no`, `college_id`, `status`, `privilege`, `last_activity`) VALUES
(1, 'Sumit Kr Singh', 'singh.sumit684@gmail.com', 'Sumit@123', '9929321677', 1, 1, 1, '2020-01-16 21:09:34'),
(2, 'Pratik Mehta', 'pratikjain17291729@gmail.com', 'Pratik@123', '7722833474', 1, 1, 1, '2020-01-16 21:58:36'),
(3, 'Ravindra Kumar Kushwaha', 'ravindrakushwahanwg@gmail.com', 'Ravindra@123', '7047178936', 1, 1, 1, '2020-01-16 22:00:32'),
(4, 'Niti Mangwani', 'nitimangwani@gmail.com', 'Niti@123', '7047178936', 3, 1, 1, '2020-01-16 22:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `fname` varchar(225) NOT NULL,
  `lname` varchar(225) NOT NULL,
  `year_adm` int(11) NOT NULL,
  `year_leaving` int(11) NOT NULL,
  `email_id` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `college_id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `enroll_no` int(11) NOT NULL,
  `mob_no` varchar(12) NOT NULL,
  `marital_stat` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `occupation` text NOT NULL,
  `brief_profile` text NOT NULL,
  `achievements` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id`, `fname`, `lname`, `year_adm`, `year_leaving`, `email_id`, `password`, `college_id`, `course`, `enroll_no`, `mob_no`, `marital_stat`, `dob`, `gender`, `address`, `occupation`, `brief_profile`, `achievements`, `status`) VALUES
(1, 'Sumit Kr Singh', '', 0, 0, 'singh.sumit684@gmail.com', '123456', 1, '', 0, '9929321677', '', '1999-05-27', 'Male', 'Vill & Post - Dharhara, Munger, Bihar\r\nPincode - 811212', 'Software Engg.', ' ABC Technologies mein kaam karta hun', '0', 1),
(2, 'Sumit', 'Singh', 2018, 2019, 'singh.sumit684@gmail.com', 'Singh@684', 1, '', 0, '9929321677', 'single', '0000-00-00', 'on', 'addfasdf', 'BUSINESS', 'asdfads', 'asdfsadf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `id` int(11) NOT NULL,
  `college_name` varchar(225) NOT NULL,
  `address` text,
  `type` tinyint(4) NOT NULL COMMENT 'Govt. = 1, Govt. Aided = 2, Private = 3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`id`, `college_name`, `address`, `type`) VALUES
(1, 'IET-DAVV', 'Khandwa, Road Indore M.P', 1),
(2, 'SGSITS', 'Indore', 1),
(3, 'BITS GOA', 'GOA', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_id` (`college_id`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`id`);

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
