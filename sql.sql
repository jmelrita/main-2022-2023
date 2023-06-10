-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 01:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it_imdbsys32_semifinals_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `payment_id` int(11) UNSIGNED NOT NULL,
  `payment_date` date DEFAULT NULL,
  `tenant_id` mediumint(7) UNSIGNED DEFAULT NULL,
  `payment_type` smallint(3) UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`payment_id`, `payment_date`, `tenant_id`, `payment_type`, `amount`) VALUES
(202201001, '2022-01-16', 1, 3, '2000.00'),
(202201002, '2022-01-16', 1, 4, '200.00'),
(202201003, '2022-01-16', 1, 5, '100.00'),
(202201004, '2022-01-16', 2, 3, '2000.00'),
(202201005, '2022-01-16', 2, 4, '300.00'),
(202201006, '2022-01-16', 2, 5, '100.00'),
(202201007, '2022-01-16', 3, 3, '2000.00'),
(202201008, '2022-01-16', 3, 4, '200.00'),
(202201009, '2022-01-16', 3, 5, '100.00'),
(2022010010, '2022-01-16', 4, 3, '2000.00'),
(2022010011, '2022-01-16', 4, 4, '300.00'),
(2022010012, '2022-01-16', 4, 5, '100.00'),
(2022010013, '2022-01-16', 5, 3, '2000.00'),
(2022010014, '2022-01-16', 5, 4, '200.00'),
(2022010015, '2022-01-16', 5, 5, '100.00'),
(2022010016, '2022-01-16', 6, 3, '2000.00'),
(2022010017, '2022-01-16', 6, 4, '300.00'),
(2022010018, '2022-01-16', 6, 5, '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_type`
--

CREATE TABLE `tblpayment_type` (
  `payment_type_id` mediumint(3) UNSIGNED NOT NULL,
  `payment_type_desc` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpayment_type`
--

INSERT INTO `tblpayment_type` (`payment_type_id`, `payment_type_desc`) VALUES
(1, 'Month Advance'),
(2, 'Month Deposit'),
(3, 'Monthly Rental'),
(4, 'Electricity'),
(5, 'Water');

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `room_id` smallint(3) UNSIGNED NOT NULL,
  `room_name` varchar(10) DEFAULT NULL,
  `room_desc` varchar(30) DEFAULT NULL,
  `room_type` mediumint(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`room_id`, `room_name`, `room_desc`, `room_type`) VALUES
(1, '101', 'First Floor, First Room', 3),
(2, '102', 'First Floor, Second Room', 3),
(3, '103', 'First Floor, Third Room', 3),
(4, '104', 'Second Floor, First Room', 2),
(5, '105', 'Second Floor, Second Room', 2),
(6, '106', 'Second Floor, Third Room', 2),
(7, '107', 'Third Floor, First Room', 1),
(8, '108', 'Third Floor, Second Room', 1),
(9, '109', 'Third Floor, Third Room', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblroom_type`
--

CREATE TABLE `tblroom_type` (
  `room_type_id` mediumint(6) UNSIGNED NOT NULL,
  `room_type_name` varchar(20) DEFAULT NULL,
  `room_type_desc` varchar(30) DEFAULT NULL,
  `room_type_rental` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblroom_type`
--

INSERT INTO `tblroom_type` (`room_type_id`, `room_type_name`, `room_type_desc`, `room_type_rental`) VALUES
(1, 'SINGLE', 'Good for single person occupan', '2000.00'),
(2, 'DOUBLE', 'Good for double or two-person ', '3000.00'),
(3, 'FAMILY', 'Good for a family occupancy', '4000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbltenant`
--

CREATE TABLE `tbltenant` (
  `tenant_id` mediumint(7) UNSIGNED NOT NULL,
  `tenant_name` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `civil_status` varchar(10) DEFAULT NULL,
  `contact_number` varchar(30) DEFAULT NULL,
  `room_id` smallint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltenant`
--

INSERT INTO `tbltenant` (`tenant_id`, `tenant_name`, `gender`, `date_of_birth`, `civil_status`, `contact_number`, `room_id`) VALUES
(1, 'Rafael T. Abenasa Jr', 'M', '1990-01-05', 'Single', '09421234567', 4),
(2, 'Lirba C. Bansaag', 'F', '1991-11-02', 'Single', '09171357911', 5),
(3, 'Sario E. Cabanog', 'M', '1990-03-17', 'Single', '0926248102', 6),
(4, 'Michelle M. Delector', 'F', '1991-04-23', 'Single', '09231471013', 7),
(5, 'Alexander S. Escoria', 'M', '1990-05-29', 'Single', '09102581114', 8),
(6, 'Cathy G. Franco', 'F', '1991-06-03', 'Single', '09183579113', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `tenant_id` (`tenant_id`),
  ADD KEY `payment_type` (`payment_type`);

--
-- Indexes for table `tblpayment_type`
--
ALTER TABLE `tblpayment_type`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type` (`room_type`);

--
-- Indexes for table `tblroom_type`
--
ALTER TABLE `tblroom_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `tbltenant`
--
ALTER TABLE `tbltenant`
  ADD PRIMARY KEY (`tenant_id`),
  ADD KEY `room_id` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `payment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2022010019;

--
-- AUTO_INCREMENT for table `tblpayment_type`
--
ALTER TABLE `tblpayment_type`
  MODIFY `payment_type_id` mediumint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `room_id` smallint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblroom_type`
--
ALTER TABLE `tblroom_type`
  MODIFY `room_type_id` mediumint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltenant`
--
ALTER TABLE `tbltenant`
  MODIFY `tenant_id` mediumint(7) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
