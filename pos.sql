-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2020 at 01:01 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pos`
--
CREATE DATABASE IF NOT EXISTS `pos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pos`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `fullname` varchar(40) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `customer_id` varchar(8) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`fullname`, `phone_no`, `customer_id`, `id`) VALUES
('Ajetumobi', '08023582526', 'KWD34429', 1),
('Dokun', '08036987756', 'KWD27539', 2),
('Olanyi', '08108082871', 'KWD65852', 3),
('Benjamin', '08162917637', 'KWD58016', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pos_category`
--

CREATE TABLE IF NOT EXISTS `pos_category` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `pos_category`
--

INSERT INTO `pos_category` (`id`, `category`) VALUES
(1, 'ELECTRONICS'),
(2, 'HOME UTENCILS'),
(3, 'WEARS'),
(4, 'COSMETICS'),
(5, 'SNACKS'),
(6, 'RAW FOODS'),
(7, 'EDUCATION'),
(8, 'SPORTS'),
(9, 'DRINKS'),
(10, 'FASHION'),
(11, 'BUILDING MATERIALS'),
(12, 'TOYS'),
(13, 'OTHERS');

-- --------------------------------------------------------

--
-- Table structure for table `pos_table`
--

CREATE TABLE IF NOT EXISTS `pos_table` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `quantity` int(22) NOT NULL,
  `category` varchar(120) NOT NULL,
  `unit_price` int(100) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `pos_table`
--

INSERT INTO `pos_table` (`id`, `product_name`, `quantity`, `category`, `unit_price`, `product_id`) VALUES
(1, 'MIRINDA', 25, 'DRINKS', 1100, 'KWD2902320192220AM'),
(2, 'FANTA', 40, 'DRINKS', 1100, 'KWD7424020192220AM'),
(3, 'PEPSI', 0, 'DRINKS', 100, 'KWD8241920192320AM'),
(5, 'BAG OF RICE', 0, 'RAW FOODS', 13500, 'KWD9702020192320AM'),
(6, 'BAG OF BEANS', 0, 'RAW FOODS', 14000, 'KWD9099020192420AM'),
(7, 'PRESSING IRON', 0, 'ELECTRONICS', 2500, 'KWD5549420192420AM'),
(8, 'SNEAKERS', 0, 'SPORTS', 5000, 'KWD7777020192420AM'),
(9, 'JOGGERS', 0, 'SPORTS', 2500, 'KWD7774320192520AM'),
(10, 'T-SHIRT', 0, 'WEARS', 2000, 'KWD5742720192520AM'),
(11, 'POLO RAPH', 0, 'WEARS', 5000, 'KWD1362720192520AM'),
(12, 'SET OF POTS', 0, 'HOME UTENCILS', 5000, 'KWD5227720192620AM'),
(13, 'MEAT PIE', 0, 'SNACKS', 200, 'KWD4384620192620AM'),
(14, 'FISH PIE', 30, 'SNACKS', 150, 'KWD9669320192620AM'),
(15, 'EGG ROLL', 0, 'SNACKS', 100, 'KWD2495120192720AM'),
(16, 'SAUSAGE', 0, 'SNACKS', 100, 'KWD7374020192720AM'),
(17, 'LIGHT BULB', 0, 'ELECTRONICS', 120, 'KWD6331220192720AM'),
(18, 'BULB HOLDER', 0, 'ELECTRONICS', 200, 'KWD5406220192720AM'),
(19, 'FUSE', 0, 'ELECTRONICS', 100, 'KWD4465720192820AM'),
(20, 'CAROTONE CREAM(SMALL)', 0, 'COSMETICS', 400, 'KWD8763720192820AM'),
(21, 'CAROTONE CREAM(BIG)', 0, 'COSMETICS', 700, 'KWD2906420192920AM'),
(22, 'CAROTONE CREAM(TUBE)', 0, 'COSMETICS', 700, 'KWD2349220192920AM'),
(23, 'Butter', 45, 'OTHERS', 250, 'KWD8697220190816PM'),
(24, 'ragolis', 10, 'DRINKS', 100, 'KWD6268620194425PM');

-- --------------------------------------------------------

--
-- Table structure for table `salesrecord`
--

CREATE TABLE IF NOT EXISTS `salesrecord` (
  `product` varchar(30) NOT NULL,
  `unitprice` int(22) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` int(22) NOT NULL,
  `customername` varchar(30) NOT NULL,
  `time_of_sales` varchar(25) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `salesrecord`
--

INSERT INTO `salesrecord` (`product`, `unitprice`, `quantity`, `totalprice`, `customername`, `time_of_sales`, `id`) VALUES
('POLO RAPH', 5000, 1, 5000, 'Ajetumobi', '10/11/2019 11:57:36 ', 1),
('FANTA', 1100, 10, 23100, 'Ajetumobi', '10/12/2019 12:50:03 ', 2),
('FANTA', 1100, 1, 1100, 'Ajetumobi', '10/12/2019 1:03:38 A', 3),
('FANTA', 1100, 9, 1100, 'Ajetumobi', '10/12/2019 1:03:59 A', 4),
('FANTA', 1100, 9, 1100, 'Ajetumobi', '10/12/2019 1:04:14 A', 5),
('FANTA', 1100, 1, 1100, 'Ajetumobi', '10/12/2019 1:04:35 A', 6),
('MIRINDA', 1100, 3, 3300, 'Ajetumobi', '10/13/2019 10:55:04 ', 7),
('MIRINDA', 1100, 10, 11000, 'unknown', '10/13/2019 10:55:52 ', 8),
('FANTA', 1100, 5, 5500, 'Dokun', '10/16/2019 2:11:37 PM', 9),
('ragolis', 100, 10, 1000, 'Dokun', '10/25/2019 5:48:46 PM', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE IF NOT EXISTS `sign_up` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone_no` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`id`, `name`, `phone_no`, `password`, `gender`) VALUES
(1, 'Owadokun', '08026393724', '1111', 'MALE');

-- --------------------------------------------------------

--
-- Table structure for table `view`
--

CREATE TABLE IF NOT EXISTS `view` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `unit_price` varchar(200) NOT NULL,
  `total_price` varchar(200) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `time_sales` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `view`
--

INSERT INTO `view` (`id`, `name`, `product_name`, `product_category`, `unit_price`, `total_price`, `amount_paid`, `time_sales`) VALUES
(1, 'AMUDA KEWULERE', 'IPHONE CHARGER', 'ELECTRONICS', '30000', '20600', '20000', ''),
(2, 'AMUDA KEWULERE', 'A BAG OF RICE', 'RAW FOODS', '12000', '12300', '12500', ''),
(3, 'AMUDA KEWULERE', 'A BAG OF BEANS', 'RAW FOODS', '15000', '15200', '15500', ''),
(4, 'AMUDA KEWULERE', 'APPLE LAPTOP', 'ELECTRONICS', '500000', '550000', '620000', ''),
(5, 'AMUDA KEWULERE', '6 TUBERS OF YAM', 'RAW FOODS', '1200', '1220', '1300', ''),
(6, 'AMUDA KEWULERE', 'EYE LIDS', 'COSMETICS', '300', '320', '350', ''),
(7, 'AMUDA KEWULERE', 'LOUBUTIN MALE SHOE, SIZE 44', 'WEARS', '10000', '10090', '11000', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
