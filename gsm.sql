-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2019 at 03:44 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gsm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `base_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`lastname`, `firstname`, `password`, `admin_email`, `base_id`) VALUES
('osuagwu', 'obinna', '827ccb0eea8a706c4c34a16891f84e7b', 'obinna@yahoo.com', '3'),
('Okechukwu', 'Chukwuma', '827ccb0eea8a706c4c34a16891f84e7b', 'oke@gmail.com', '2'),
('Emmanuel', 'Peter', '827ccb0eea8a706c4c34a16891f84e7b', 'peter@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `base_station`
--

CREATE TABLE `base_station` (
  `base_id` int(100) NOT NULL,
  `nsp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_channels` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `no_of_connection` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base_station`
--

INSERT INTO `base_station` (`base_id`, `nsp`, `city`, `state`, `no_of_channels`, `no_of_connection`) VALUES
(1, 'MTN', 'Port Harcourt', 'Rivers State', '5', '1'),
(2, 'GLO', 'Yenagoa', 'Bayelsa', '5', '1'),
(3, 'AIRTEL', 'KANU', 'KANU', '30', '1'),
(4, 'MTN', 'ENUGU', 'ENUGU', '10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `call_id` int(11) NOT NULL,
  `call_start_time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_call` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `call_destination` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `base_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`call_id`, `call_start_time`, `duration`, `date_of_call`, `call_destination`, `phone_no`, `email`, `base_id`) VALUES
(2, '04:56:14pm', '62', '05/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '1'),
(3, '04:58:31pm', '41', '05/12/2019', '07062223456', '08051113455', 'oge@gmail.com', '2'),
(6, '03:07:21pm', '73', '06/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '3'),
(7, '04:56:14pm', '62', '05/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '1'),
(8, '03:07:21pm', '73', '06/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '3'),
(9, '04:58:31pm', '41', '05/12/2019', '07062223456', '08051113455', 'oge@gmail.com', '2'),
(10, '03:07:21pm', '73', '06/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '3'),
(11, '04:58:31pm', '41', '05/12/2019', '07062223456', '08051113455', 'oge@gmail.com', '2'),
(12, '04:56:14pm', '62', '05/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '1'),
(13, '04:58:31pm', '41', '05/12/2019', '07062223456', '08051113455', 'oge@gmail.com', '2'),
(14, '03:07:21pm', '73', '06/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '3'),
(15, '04:56:14pm', '62', '05/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '1'),
(16, '03:07:21pm', '73', '06/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '3'),
(17, '04:58:31pm', '41', '05/12/2019', '07062223456', '08051113455', 'oge@gmail.com', '2'),
(18, '03:07:21pm', '73', '06/12/2019', '07062223456', '07063032259', 'oge@gmail.com', '3'),
(19, '04:58:31pm', '41', '05/12/2019', '07062223456', '08051113455', 'oge@gmail.com', '2');

-- --------------------------------------------------------

--
-- Table structure for table `network_line`
--

CREATE TABLE `network_line` (
  `id` int(11) NOT NULL,
  `sub_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nsp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `network_line`
--

INSERT INTO `network_line` (`id`, `sub_email`, `nsp`, `phone_no`) VALUES
(1, 'oge@gmail.com', 'MTN', '07063032259'),
(2, 'oge@gmail.com', 'GLO', '08051113455'),
(3, 'oge@gmail.com', 'ETISALAT', '07013032259'),
(4, 'oge@gmail.com', 'AIRTEL', '08031113455');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`lastname`, `firstname`, `sub_email`, `dob`, `sex`, `password`) VALUES
('Peter', 'Abigail', 'abigail@gmail.com', '9/03/1991', 'Female', '827ccb0eea8a706c4c34a16891f84e7b'),
('Daniel', 'Amara', 'amara@gmail.com', '6/2/1900', 'Female', '827ccb0eea8a706c4c34a16891f84e7b'),
('Chukwuma ', 'Chidimma', 'chidimma@gmail.com', '5/1/1898', 'Female', '827ccb0eea8a706c4c34a16891f84e7b'),
('Daniel', 'Ebere', 'ebere@gmail.com', '8/9/1987', 'Female', '827ccb0eea8a706c4c34a16891f84e7b'),
('Oge', 'Dan', 'oge@gmail.com', '5/5/1990', 'Male', '827ccb0eea8a706c4c34a16891f84e7b'),
('Olu', 'Dan', 'olu@gmail.com', '1990-12-12', 'female', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_email`);

--
-- Indexes for table `base_station`
--
ALTER TABLE `base_station`
  ADD PRIMARY KEY (`base_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`call_id`);

--
-- Indexes for table `network_line`
--
ALTER TABLE `network_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`sub_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base_station`
--
ALTER TABLE `base_station`
  MODIFY `base_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `call_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `network_line`
--
ALTER TABLE `network_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
