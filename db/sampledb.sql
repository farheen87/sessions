-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 06:25 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Location` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`ID`, `Name`, `Location`) VALUES
(1, 'Karachi', 'gulshan'),
(2, 'Lahore', NULL),
(3, 'Quetta', NULL),
(4, 'Islamabad', NULL),
(5, 'Karachi', 'north nazimabad');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `EmailID` varchar(35) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`EmailID`, `Password`) VALUES
('admin@gmail.com', '123'),
('student@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `Student_ID` int(11) NOT NULL,
  `FirstName` varchar(35) NOT NULL,
  `lastName` varchar(35) NOT NULL,
  `EmailID` varchar(40) DEFAULT NULL,
  `Password` varchar(30) NOT NULL,
  `city` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `FirstName`, `lastName`, `EmailID`, `Password`, `city`, `Gender`) VALUES
(1, 'Ahsan', '', '1702B1', 'Bcom', NULL, 'Male'),
(2, 'sarah', '', '1702B1', 'BE', NULL, 'Female'),
(3, 'Hassan', '', '1811B1', 'MSC', NULL, 'Male'),
(4, 'Ibrahim', '', '1811B1', 'MSC', NULL, 'Male'),
(5, 'farheen', 'moin', 'farheen@aptechnn.com', 'admin', '1', 'Female'),
(6, 'umair', 'khan', 'umair@gmail.com', '123', '5', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`EmailID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
