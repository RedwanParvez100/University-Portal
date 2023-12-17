-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 09:37 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE `add_student` (
  `id` int(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  `address` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`id`, `name`, `father_name`, `mother_name`, `mobile`, `email`, `nationality`, `blood_group`, `address`, `course`) VALUES
(1, 'sajid', 'sajid rahman', 'khatun', '01877982092', 'sajid21@gmail.com', '', 'A+', 'uttora', ''),
(2, 'anis', 'Anis Ahmed', 'Begum', '01821782290', 'anisahmed@gmail.com', 'dawd', 'A-', 'mirpur-10', 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `mail`, `password`) VALUES
(1, 'sajid@gmail.com', 'sajid');

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birth` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_user`
--

INSERT INTO `student_user` (`id`, `name`, `mail`, `password`, `birth`) VALUES
(1, 'anis', 'hridoy@gmail.com', 'hridoy', '19/02/1999'),
(2, 'hridoy', 'hello@gmail.com', '1234', '2/3/1919'),
(3, 'khan', 'khan@gmail.com', '321', '1/2/1990');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_user`
--

CREATE TABLE `teacher_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birth` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_user`
--

INSERT INTO `teacher_user` (`id`, `name`, `mail`, `password`, `birth`) VALUES
(1, 'anis', 'anis@gmail.com', 'anis', '2/1/1990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_student`
--
ALTER TABLE `add_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_user`
--
ALTER TABLE `student_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_user`
--
ALTER TABLE `teacher_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_student`
--
ALTER TABLE `add_student`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_user`
--
ALTER TABLE `student_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher_user`
--
ALTER TABLE `teacher_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
