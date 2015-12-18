-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2015 at 04:01 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epoliceclearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE IF NOT EXISTS `applicant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `dateofbirth` int(11) NOT NULL,
  `civilstatus` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `clearance`
--

CREATE TABLE IF NOT EXISTS `clearance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `police _clearance _no` varchar(200) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `or_number` varchar(200) NOT NULL,
  `investigator_id` int(11) NOT NULL,
  `officer_id` int(11) NOT NULL,
  `findings` varchar(200) NOT NULL,
  `residentcertnumber` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE IF NOT EXISTS `station` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
