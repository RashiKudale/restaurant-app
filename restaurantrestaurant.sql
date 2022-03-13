-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 13, 2022 at 09:56 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `food items`
--

CREATE TABLE IF NOT EXISTS `food items` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `food items`
--


-- --------------------------------------------------------

--
-- Table structure for table `manage_category`
--

CREATE TABLE IF NOT EXISTS `manage_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `manage_category`
--

INSERT INTO `manage_category` (`id`, `name`, `status`) VALUES
(1, 'Noodles', 'Active'),
(2, 'chicken', 'Active'),
(3, 'Salad', 'Active'),
(4, 'Soup', 'Active'),
(5, 'Drinks', 'Active'),
(6, 'Veg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `manage_reservation`
--

CREATE TABLE IF NOT EXISTS `manage_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `attendences` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `manage_reservation`
--

INSERT INTO `manage_reservation` (`id`, `name`, `email`, `phone`, `date`, `time`, `attendences`) VALUES
(2, 'rashi kudale', 'rashi@gmail.com', 1234567898, '2022-02-26', '22:38:00', '6');

-- --------------------------------------------------------

--
-- Table structure for table `manage_stores`
--

CREATE TABLE IF NOT EXISTS `manage_stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `manage_stores`
--

INSERT INTO `manage_stores` (`id`, `storename`, `status`) VALUES
(1, 'store 1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `manage_table`
--

CREATE TABLE IF NOT EXISTS `manage_table` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `table_capacity` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `manage_table`
--

INSERT INTO `manage_table` (`id`, `table_name`, `table_capacity`, `status`) VALUES
(1, 'e24', '2', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `manage_users`
--

CREATE TABLE IF NOT EXISTS `manage_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `group` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `manage_users`
--

INSERT INTO `manage_users` (`id`, `full_name`, `email`, `phone`, `password`, `group`, `gender`) VALUES
(1, 'Rashi Kudale', 'rashi@gmail.com', '1234567890', 'rashi', 'Manager', 'Female'),
(2, 'Sanskruti Nangre', 'sanskruti@gmail.com', '5635841563', 'sarthak', 'Cashier', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'sheela kudale', 'srkudale77@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'rashi kudale', 'rashikudale2002@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');
