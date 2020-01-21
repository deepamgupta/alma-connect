-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2020 at 05:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

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
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `to_user_id`, `from_user_id`, `chat_message`, `status`, `timestamp`) VALUES
(1, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(2, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(3, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(4, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(5, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(6, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(7, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(8, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(9, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(10, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(11, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(12, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(13, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(14, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(15, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(16, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(17, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(18, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(19, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(20, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(21, 1, 3, 'hello', '0', '2020-01-20 16:01:33'),
(22, 1, 3, 'h', '0', '2020-01-20 16:01:33'),
(23, 1, 3, 'hmm', '0', '2020-01-20 16:01:33'),
(24, 1, 3, 'hmm', '0', '2020-01-20 16:01:33'),
(25, 1, 3, 'hmm', '0', '2020-01-20 16:01:33'),
(26, 1, 3, 'hmm', '0', '2020-01-20 16:01:33'),
(27, 1, 3, 'l', '0', '2020-01-20 16:01:33'),
(28, 1, 3, 'l', '0', '2020-01-20 16:01:33'),
(29, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(30, 1, 3, 'k', '0', '2020-01-20 16:01:33'),
(31, 1, 3, 'ki', '0', '2020-01-20 16:01:33'),
(32, 1, 3, 'ki', '0', '2020-01-20 16:01:33'),
(33, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(34, 1, 3, 'h', '0', '2020-01-20 16:01:33'),
(35, 1, 3, 'ko', '0', '2020-01-20 16:01:33'),
(36, 1, 3, 'hj', '0', '2020-01-20 16:01:33'),
(37, 1, 3, 'uo', '0', '2020-01-20 16:01:33'),
(38, 1, 3, 'hg\n', '0', '2020-01-20 16:01:33'),
(39, 1, 3, 'uy', '0', '2020-01-20 16:01:33'),
(40, 3, 1, 'hello', '0', '2020-01-20 07:25:21'),
(41, 3, 1, 'hello', '0', '2020-01-20 07:25:21'),
(42, 3, 1, 'hello', '0', '2020-01-20 07:25:21'),
(43, 3, 1, 'hello', '0', '2020-01-20 07:25:21'),
(44, 3, 1, 'hello', '0', '2020-01-20 07:25:21'),
(45, 3, 1, 'hello', '0', '2020-01-20 07:25:21'),
(46, 3, 1, 'hello', '0', '2020-01-20 07:25:21'),
(47, 2, 1, 'jp', '1', '2020-01-19 21:01:32'),
(48, 2, 1, 'jp', '1', '2020-01-19 21:01:34'),
(49, 2, 3, 'ji', '0', '2020-01-20 07:31:50'),
(50, 3, 1, 'hi', '0', '2020-01-20 07:25:21'),
(51, 3, 1, 'hi', '0', '2020-01-20 07:25:21'),
(52, 3, 1, 'hi', '0', '2020-01-20 07:25:21'),
(53, 1, 3, 'hello', '0', '2020-01-20 16:01:33'),
(54, 3, 1, 'hl', '0', '2020-01-20 07:25:21'),
(55, 1, 3, 'hi', '0', '2020-01-20 16:01:33'),
(56, 1, 3, 'ko', '0', '2020-01-20 16:01:33'),
(57, 1, 3, 'ko', '0', '2020-01-20 16:01:33'),
(58, 1, 3, '', '0', '2020-01-20 16:01:33'),
(59, 1, 3, 'ooo', '0', '2020-01-20 16:01:33'),
(60, 1, 3, 'hi\n', '0', '2020-01-20 16:01:33'),
(61, 3, 2, 'hello', '0', '2020-01-20 07:24:05'),
(62, 3, 2, 'ravindra', '0', '2020-01-20 07:24:05'),
(63, 2, 3, 'kushwaha', '0', '2020-01-20 07:31:50'),
(64, 2, 3, 'kumar\n', '0', '2020-01-20 07:31:50'),
(65, 3, 2, 'Prashant', '0', '2020-01-20 07:24:05'),
(66, 2, 3, 'patel', '0', '2020-01-20 07:31:50'),
(67, 2, 3, 'jsglkdhg', '0', '2020-01-20 07:31:50'),
(68, 1, 3, 'dsa', '0', '2020-01-20 16:02:40'),
(69, 1, 3, 'dsp', '0', '2020-01-20 16:03:02'),
(70, 3, 1, 'toc', '0', '2020-01-20 16:03:46'),
(71, 3, 1, 'dt', '1', '2020-01-20 16:04:38'),
(72, 3, 1, 'dt', '1', '2020-01-20 16:04:43'),
(73, 3, 1, 'dt', '1', '2020-01-20 16:04:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_messages_ibfk_1` (`to_user_id`),
  ADD KEY `from_user_id` (`from_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`to_user_id`) REFERENCES `chat_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`from_user_id`) REFERENCES `chat_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
