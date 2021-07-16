-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 01:46 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travsim`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `simID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `deliveryAddress` varchar(50) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`simID`, `customerID`, `deliveryAddress`, `orderID`, `status`, `createdAt`) VALUES
(1, 1, '59 South Road', 1, 'Processing', '2021-07-09 12:08:58'),
(2, 2, '60 North Ave', 2, 'Processing', '2021-07-09 14:11:39'),
(3, 3, '61 South Ave', 3, 'Processing', '2021-07-10 17:01:50'),
(4, 4, '62 West Ave', 4, 'Pending', '2021-07-11 06:56:49'),
(5, 5, '01 Main Road', 5, 'Pending', '2021-07-11 06:59:07'),
(6, 6, '02 Second Road', 6, 'Pending', '2021-07-11 07:00:27'),
(7, 7, '03 Third Road', 7, 'Pending', '2021-07-11 08:03:13'),
(8, 8, '04 Fourth Road', 8, 'Pending', '2021-07-11 08:04:04'),
(9, 9, '05 Fifth Road', 9, 'Pending', '2021-07-11 08:11:58'),
(10, 10, '06 Sixth Road', 10, 'Pending', '2021-07-11 09:31:50'),
(11, 11, '07 Seventh Road', 11, 'Pending', '2021-07-11 09:35:18'),
(12, 12, '08 Eighth Road', 12, 'Pending', '2021-07-11 09:37:08'),
(13, 13, '09 Ninth Road', 13, 'Pending', '2021-07-11 09:38:36'),
(14, 14, '10 My Str', 14, 'Pending', '2021-07-11 09:51:55'),
(15, 15, '11 Your Str', 15, 'Pending', '2021-07-11 09:53:02'),
(16, 16, '12 Theirs Str', 16, 'Pending', '2021-07-11 10:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `sim_cards`
--

CREATE TABLE `sim_cards` (
  `simID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sim_cards`
--

INSERT INTO `sim_cards` (`simID`, `name`) VALUES
(1, 'Unique Name'),
(2, 'Unique namw 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
