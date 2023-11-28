-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 12:10 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nt3101`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindb`
--

CREATE TABLE `admindb` (
  `adminID` varchar(100) NOT NULL,
  `empid` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admindb`
--

INSERT INTO `admindb` (`adminID`, `empid`, `password`) VALUES
('admin', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `ID` int(11) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`ID`, `SR_Code`, `subject`, `message`) VALUES
(3, '21-30169', 'About Pin', 'okay oaky');

-- --------------------------------------------------------

--
-- Table structure for table `orderdb`
--

CREATE TABLE `orderdb` (
  `OrderID` int(100) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `Orderdate` date NOT NULL,
  `Status` varchar(255) NOT NULL,
  `OrderCost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdb`
--

INSERT INTO `orderdb` (`OrderID`, `SR_Code`, `Orderdate`, `Status`, `OrderCost`) VALUES
(126, '21-30169', '2023-11-24', 'Approved', 50),
(127, '21-30169', '2023-11-26', 'Approved', 3025);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(100) NOT NULL,
  `ProductID` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `TotalPrice` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderItemID`, `OrderID`, `ProductID`, `Quantity`, `TotalPrice`) VALUES
(155, 126, 34, 1, 50),
(156, 127, 35, 4, 1000),
(157, 127, 36, 3, 1500),
(158, 127, 37, 1, 5),
(159, 127, 38, 1, 250),
(160, 127, 39, 1, 270);

-- --------------------------------------------------------

--
-- Table structure for table `productdb`
--

CREATE TABLE `productdb` (
  `ProductID` int(100) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `AvailStocks` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productdb`
--

INSERT INTO `productdb` (`ProductID`, `ProductName`, `Price`, `image`, `AvailStocks`) VALUES
(34, 'Pin', '50', 'pin.png', 10),
(35, 'Department Shirt', '250', 'deptshirt.png', 6),
(36, 'Polo Shirt', '500', 'poloshirt.png', 7),
(37, 'Sticker', '5', 'sticker.png', 4),
(38, 'Jersey Sando', '250', 'jerseysando.jpg', 8),
(39, 'Jersey Shirt', '270', 'jerseyshirt.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `shopcart`
--

CREATE TABLE `shopcart` (
  `CartID` int(11) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `ProductID` int(100) NOT NULL,
  `Quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopcart`
--

INSERT INTO `shopcart` (`CartID`, `SR_Code`, `ProductID`, `Quantity`) VALUES
(68, '21-30169', 34, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `studid` int(10) NOT NULL,
  `SR_Code` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cnum` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`studid`, `SR_Code`, `pass`, `email`, `cnum`) VALUES
(1, '21-30169', 'Pol', '21-30169@g.batstate-u.edu.ph', '0909054532');

-- --------------------------------------------------------

--
-- Table structure for table `tbempinfo`
--

CREATE TABLE `tbempinfo` (
  `empid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbempinfo`
--

INSERT INTO `tbempinfo` (`empid`, `lastname`, `firstname`, `department`) VALUES
(1, 'aguila', 'nina', 'cics');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudinfo`
--

CREATE TABLE `tbstudinfo` (
  `studid` int(11) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbstudinfo`
--

INSERT INTO `tbstudinfo` (`studid`, `lastname`, `firstname`, `course`) VALUES
(1, 'parker', 'peter', 'BSIT'),
(2, 'kent', 'clark', 'bscs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindb`
--
ALTER TABLE `admindb`
  ADD PRIMARY KEY (`adminID`),
  ADD KEY `empid` (`empid`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orderdb`
--
ALTER TABLE `orderdb`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `SR-Code` (`SR_Code`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `productdb`
--
ALTER TABLE `productdb`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`CartID`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`SR_Code`);

--
-- Indexes for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  ADD PRIMARY KEY (`studid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orderdb`
--
ALTER TABLE `orderdb`
  MODIFY `OrderID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `OrderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `productdb`
--
ALTER TABLE `productdb`
  MODIFY `ProductID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbempinfo`
--
ALTER TABLE `tbempinfo`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbstudinfo`
--
ALTER TABLE `tbstudinfo`
  MODIFY `studid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdb`
--
ALTER TABLE `orderdb`
  ADD CONSTRAINT `SR-Code` FOREIGN KEY (`SR_Code`) REFERENCES `student_record` (`SR_Code`);

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `orderdb` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductID` FOREIGN KEY (`ProductID`) REFERENCES `productdb` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
