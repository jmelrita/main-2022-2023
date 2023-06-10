-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 07:29 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `it_imdbsys32_midterm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE IF NOT EXISTS `tblcustomer` (
`customer_id` int(11) unsigned NOT NULL,
  `customer_name` varchar(40) DEFAULT NULL,
  `customer_gender` varchar(1) DEFAULT NULL,
  `customer_address` varchar(60) DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`customer_id`, `customer_name`, `customer_gender`, `customer_address`, `order_id`, `order_date`) VALUES
(1, 'ALBARAN, EMMANUEL B.', 'M', 'Bulacao, Cebu City, Cebu', 0, '0000-00-00'),
(2, 'BANSAG, LORNA C.', 'F', 'Tabunok, Talisay City, Cebu', 0, '0000-00-00'),
(3, 'CABANOG, SARIOD D.', 'M', 'Subangdaku, Mandaue City, Cebu', 0, '0000-00-00'),
(4, 'DELOS REYES, MARIE E.', 'F', 'Poblacion, Minglanilla, Cebu', 0, '0000-00-00'),
(5, 'ESCOBIDO, SUPLICIO F.', 'M', 'Pusok, Lapu-Lapu City, Cebu', 0, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
 ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
MODIFY `customer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
