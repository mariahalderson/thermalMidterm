-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2018 at 08:19 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermosecure`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

DROP TABLE IF EXISTS `tbl_color`;
CREATE TABLE IF NOT EXISTS `tbl_color` (
  `color_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(100) NOT NULL,
  `color_hex` varchar(6) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`, `color_hex`) VALUES
(1, 'red', 'ff0000'),
(2, 'blue', '0000ff');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feature`
--

DROP TABLE IF EXISTS `tbl_feature`;
CREATE TABLE IF NOT EXISTS `tbl_feature` (
  `feature_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(100) NOT NULL,
  `feature_desc` text NOT NULL,
  PRIMARY KEY (`feature_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_feature`
--

INSERT INTO `tbl_feature` (`feature_id`, `feature_name`, `feature_desc`) VALUES
(1, 'Multiple Abilities', 'The ability to view\r\nCurrent indoor\r\ntemperature, outdoor\r\ntemperature, daily forecast, weekly\r\nforecast. '),
(2, 'Proximity sensor', 'Actives system to on state when viewer is close. '),
(3, 'Facial recognition camera', 'To allow admin users to manipulate settings (child proofing) '),
(4, 'Temperature', 'The ability increase/decrease the temperature difference between my heat/cool setpoints.\r\n'),
(5, 'Alexa Control', 'Comes with built-in Amazon Alexa Voice Service '),
(6, 'Regulation', 'Regulates indoor humidity to prevent frost buildup on outside windows'),
(7, 'Full Temperature Check', 'The ability to view current indoor temperature, outdoor temperature, daily forecast,weekly forecast.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `product_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `tagline` varchar(200) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `tagline`) VALUES
(1, 'ThermoSecure', 'Complete Control.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_feature`
--

DROP TABLE IF EXISTS `tbl_product_feature`;
CREATE TABLE IF NOT EXISTS `tbl_product_feature` (
  `product_feature_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `product_id` smallint(6) NOT NULL,
  `feature_id` smallint(6) NOT NULL,
  PRIMARY KEY (`product_feature_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_feature`
--

INSERT INTO `tbl_product_feature` (`product_feature_id`, `product_id`, `feature_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
