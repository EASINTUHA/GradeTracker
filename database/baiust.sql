-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 10:40 AM
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
-- Database: `baiust`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Designation` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_by` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Id`, `Name`, `Department`, `Email`, `Designation`, `password`, `create_by`, `create_at`) VALUES
(5, 'Easin', 'CSE', 'mdeasintuha@gmail.com', 'A', '1234', 'Easin', '2024-05-19 06:45:00'),
(6, 'Tuha', 'CSE', 'mdeasintuha1@gmail.com', 'A', '1234', 'Easin', '2024-05-19 06:45:22'),
(7, 'Tuha', 'CSE', 'mdeasintuha2@gmail.com', 'student', '1234', 'Easin', '2024-05-19 06:45:42'),
(8, 'q', 'a', 'a', 'a', 'a', 'a', '2024-05-19 06:57:20'),
(9, 'a', 'a', 'a', 'a', 'a', 'a', '2024-05-19 07:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `studentresults`
--

CREATE TABLE `studentresults` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `level_term` varchar(10) NOT NULL,
  `section` varchar(5) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentresults`
--

INSERT INTO `studentresults` (`id`, `student_id`, `department`, `level_term`, `section`, `subject`, `marks`) VALUES
(1, '12345', 'CSE', 'L1-T1', 'A', 'CSE-101', 85),
(3, '50', 'EEE', 'L1-T2', 'B', 'HUM-102', 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `studentresults`
--
ALTER TABLE `studentresults`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `studentresults`
--
ALTER TABLE `studentresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
