-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 12:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(5) NOT NULL,
  `Anme` varchar(30) NOT NULL,
  `Apassword` text NOT NULL,
  `Acontact no` int(10) NOT NULL,
  `Amail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact us`
--

CREATE TABLE `contact us` (
  `Cid` int(10) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cmail` varchar(50) NOT NULL,
  `cphone` int(10) NOT NULL,
  `cmessage` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact us`
--

INSERT INTO `contact us` (`Cid`, `cname`, `cmail`, `cphone`, `cmessage`) VALUES
(1, 'john ', 'john@mail.com', 97120070, 'bjkbfjjefjefbjdbfk');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event name` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `dept` varchar(50) NOT NULL,
  `exprience` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event experts`
--

CREATE TABLE `event experts` (
  `Expert Name` varchar(30) NOT NULL,
  `Eid` int(10) NOT NULL,
  `Ex Mail` varchar(30) NOT NULL,
  `pwd` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `oname` varchar(50) NOT NULL,
  `org event name` varchar(50) NOT NULL,
  `conatct of volunteer` int(10) NOT NULL,
  `mail of oraganizer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `registration no` int(10) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `event name` varchar(100) NOT NULL,
  `pmail` varchar(50) NOT NULL,
  `pno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Gr_number` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `U_Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Gr_number`, `uname`, `Email`, `U_Password`) VALUES
(41, 'sahil rathod', 'abc@gmail.com', 'dhruv987'),
(61, 'john', 'j@gmail.com', '123'),
(64, 'JOHN 1223', 'JOHN@GMAIL.COM', '1234'),
(71, 'ABC', 'sahilrathod350@gmail.com', ''),
(72, 'jbbu', 'johnrathod@gmail.com', ''),
(73, 'raj', 'raj@1223', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `GR no` int(5) NOT NULL,
  `Sname` varchar(30) NOT NULL,
  `Spassword` text NOT NULL,
  `Sbranch` varchar(30) NOT NULL,
  `Smail` varchar(30) NOT NULL,
  `Scontact no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `vid` int(10) NOT NULL,
  `vname` varchar(50) NOT NULL,
  `vmail` int(50) NOT NULL,
  `roles` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `work assigning faculty`
--

CREATE TABLE `work assigning faculty` (
  `Fac id` int(10) NOT NULL,
  `Fac name` varchar(30) NOT NULL,
  `Fac password` varchar(30) NOT NULL,
  `Fac Contactno` int(10) NOT NULL,
  `Fac mail` varchar(30) NOT NULL,
  `GR no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `contact us`
--
ALTER TABLE `contact us`
  ADD PRIMARY KEY (`Cid`);

--
-- Indexes for table `event experts`
--
ALTER TABLE `event experts`
  ADD PRIMARY KEY (`Eid`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`registration no`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Gr_number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`GR no`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `work assigning faculty`
--
ALTER TABLE `work assigning faculty`
  ADD PRIMARY KEY (`Fac id`),
  ADD KEY `GR no` (`GR no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Gr_number` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `vid` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `work assigning faculty`
--
ALTER TABLE `work assigning faculty`
  ADD CONSTRAINT `GR no` FOREIGN KEY (`GR no`) REFERENCES `student` (`GR no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
