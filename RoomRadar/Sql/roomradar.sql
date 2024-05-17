-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 07:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roomradar`
--

-- --------------------------------------------------------

--
-- Table structure for table `doorm`
--

CREATE TABLE `doorm` (
  `dorm_id` int(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `zip_code` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doorm`
--

INSERT INTO `doorm` (`dorm_id`, `street`, `barangay`, `city`, `province`, `zip_code`) VALUES
(1, 'Main Street', 'Ulonggapo', 'Manila', 'Metro Manila', 123),
(2, 'Libaong', 'Saavedra', 'Cebu', 'Moalboal', 6032),
(3, 'Main Street', 'Central', 'Manila', 'Metro Politan', 123),
(4, '3rd Street', 'Mambaling', 'Cebu', 'Cebu City', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `dorm_id` int(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`dorm_id`, `password`) VALUES
(1, 'user123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doorm`
--
ALTER TABLE `doorm`
  ADD PRIMARY KEY (`dorm_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD KEY `dorm_id` (`dorm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doorm`
--
ALTER TABLE `doorm`
  MODIFY `dorm_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`dorm_id`) REFERENCES `doorm` (`dorm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
