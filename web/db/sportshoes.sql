-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 12:47 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportshoes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `email`, `message`) VALUES
(36, 'Mouradbenamar12@gmail.com', 'Contenu du message ............... ');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `firstname`, `lastname`, `address`, `country`, `zipcode`, `mobile`, `telephone`, `email`, `password`) VALUES
(1, 'Mourad', 'Benamar', 'Meknes NÂ°110', 'Meknes', '50300', '+212691118527', '+21253551233', 'Mouradbenamar12@gmail.com', 'Mourad123'),
(2, 'faahd', 'benallo', 'kenitra nÂ°58', 'Kenitea', '5312', '64552345363', '46362346', 'faahd@yopmail.Com', 'faahd123'),
(3, 'Mohammed', 'Sbaouni', 'Boufekran N 110', 'Meknes', '50300', '+2126911185', '+2126502726', 'Mohammed@yopmail.Com', '123456'),
(5, 'Youssef', 'Benamar', 'Mekens N136', 'Meknes', '50000', '+2342423432', '+4234234234', 'Youssef@yopmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_size`, `product_image`, `brand`, `category`) VALUES
(3, 'Nike Air Max Neon', '1200', '36', '1141103372nike15.jpg', 'Nike', 'basketball'),
(4, 'Nike Air Max Green', '1000', '40', '832975975nike5.jpg', 'Nike', 'basketball'),
(6, 'Adidas Gent', '1300', '38', '13634363832010-Adidas-Men-Basketball-Shoes-2.jpg', 'Adidas', 'basketball'),
(7, 'Adidas 599 LRG', '1500', '39', '872686791Adidas Basketball Shoes 599_LRG.jpg', 'Adidas', 'basketball'),
(8, 'Lebron 11 Siver', '1800', '35', '124030907nike13.jpg', 'Nike', 'basketball'),
(10, 'Adidas Adizero Blue', '900', '39', '1024158586Adidas_Rose_Shoes_009.jpg', 'Adidas', 'basketball'),
(11, 'Lebron 11 Red', '800', '42', '567507982nike10.jpg', 'Nike', 'basketball'),
(13, 'Nike Hypervenom', '850', '43', '1312216564nike-hypervenoms-customize-fg-2015-outlet-neymar-colors-soccer-shoes-professional.jpg', 'Nike', 'football'),
(14, 'Nike C Lou Generation', '1320', '45', '533123642013_Discount_Nike_C_Luo_9_Generation_Online_Blue_Green.jpg', 'Nike', 'football'),
(15, 'Nike Mercurial Vapor 7 Superfly II FG Lightning', '860', '41', '1157463277Nike-Mercurial-Vapor-7-Superfly-III-FG-Lightning-Soccer-Shoes-Fluorescent-Yellow-Black.jpg', 'Nike', 'football'),
(16, 'Nike Magista Obra', '1260', '34', '335092704Cheap-Nike-Magista-Obra-.jpg', 'Nike', 'football'),
(17, 'Adidas Chaussures', '1140', '32', '697721412chaussures001.jpg', 'Adidas', 'football'),
(19, 'Nike Flyknit Lunar Green Blue', '890', '40', '745184160Nike_Nike_Flyknit_Lunar_2_Mens_Fluorescent_Green_Blue_Running_Shoes_2015_Outlet.jpg', 'Nike', 'Running'),
(20, 'Nike Flyknit Lunar Sea Blue', '910', '39', '1239262802Nike_Nike_Flyknit_Lunar_2_Mens_Sky_Blue_Sea_Blue_Running_Shoes_2015_Cheap.jpg', 'Nike', 'Running'),
(21, 'Nike Flyknit Green', '1230', '32', '470680173flyknit.jpg', 'Nike', 'Running'),
(26, 'Nike Hypervenom Phantom', '1500', '33', '15416832542014-Nike-Hypervenom-Phantom-FG-Red-Fluorescent-Yellow.jpg', 'Nike', 'football'),
(28, 'Adidas Adizero Red', '1810', '43', '153564340adidas-all-star-basketball-shoes-adizero-shadow.jpg', 'Adidas', 'basketball'),
(29, 'Adidas Gents', '1260', '38', '14124685402-Adidas-gents-shoes-collection-2015-01.jpg', 'Adidas', 'Running'),
(30, 'Nike Flyknit Gray & Pink', '2000', '38', '948731815nw1.jpg', 'Nike', 'Running'),
(31, 'Reebok Zigtech Shake', '2100', '39', '245113227reebok-zigtech-shake-running-shoes-offer-lemonstore-1405-13-lemonstore@1.jpg', 'Reebok', 'Running'),
(157, 'Reebok Blast', '2200', '40', '547866585reebok-blast-profile.jpg', 'Reebok', 'feature'),
(21561, 'Lebron 11 ', '810', '45', '1125171488heat-lebron-11-17.jpg', 'Nike', 'feature'),
(51292, 'Adidas Adizero F50', '1000', '36', '1272267959adizero-F50-FG.jpg', 'Adidas', 'feature'),
(188250, 'Arrival', '1500', '39', '2016-new-arrival-sport-shoes-new-tennis-tennis.jpg', 'Nike', 'feature'),
(358159, 'Flyknit 360', '800', '38', '40329068flyknit.jpg', 'Nike', 'feature'),
(376453, 'JiYe ', '2000', '44', 'basklettabl.jpg', 'Adidas', 'basketball'),
(431860, 'Nike Hypervenom Neymar Jr.', '1200', '45', '852236910hypervenom.png', 'Nike', 'feature'),
(553040, 'Chaussure Nike Flight', '1300', '40', 'chaussure-flight-bonafide-pour-rJTGAV7P.jpg', 'Nike', 'feature'),
(810080, 'puma ', '2000', '44', 'puma.jpg', 'Adidas', 'feature');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `product_id`, `qty`) VALUES
(1, 71339, 20),
(2, 82631, 30),
(3, 3, 15),
(4, 4, 18),
(5, 6, 20),
(6, 7, 20),
(7, 8, 20),
(8, 9, 20),
(9, 10, 19),
(10, 11, 23),
(11, 13, 20),
(12, 14, 20),
(13, 15, 20),
(14, 16, 18),
(15, 17, 19),
(16, 19, 20),
(17, 20, 20),
(18, 21, 20),
(19, 26, 13),
(20, 28, 19),
(21, 29, 18),
(22, 30, 19),
(23, 31, 29),
(26, 431860, 35),
(27, 21561, 23),
(28, 358159, 25),
(29, 157, 27),
(30, 51292, 20),
(31, 961461, 24),
(32, 553040, 23),
(33, 80983, 3),
(34, 810080, 46),
(35, 758587, 11),
(36, 45071, 17),
(37, 0, 13),
(38, 0, 13),
(39, 0, 13),
(40, 914875, 17),
(41, 39112, 3),
(42, 2194, 6),
(43, 196, 15),
(44, 695628, 6),
(45, 550, 4),
(46, 542905, 6),
(47, 9368, 10),
(48, 8391401, 4),
(49, 370, 5),
(50, 532509, 15),
(51, 188250, 20),
(52, 376453, 16);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `customerid`, `amount`, `order_stat`, `order_date`) VALUES
(0, 1, 24000, 'Confirmed', 'May 28, 2018'),
(1, 1, 1200, 'Cancelled', 'May 30, 2018'),
(2, 2, 4200, 'ON HOLD', 'Nov 23, 2018'),
(69, 2, 2000, 'ON HOLD', 'Nov 23, 2018'),
(246, 1, 2210, 'ON HOLD', 'Jun 07, 2018'),
(393, 1, 3010, 'Confirmed', 'Jun 04, 2018'),
(4079, 1, 2160, 'ON HOLD', 'Jun 07, 2018'),
(26911, 1, 4760, 'ON HOLD', 'Jun 07, 2018');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`transacton_detail_id`, `product_id`, `order_qty`, `transaction_id`) VALUES
(1, 358159, 1, 323),
(2, 30, 1, 323),
(3, 358159, 1, 207),
(4, 358159, 1, 4),
(5, 431860, 1, 4),
(6, 4, 1, 239),
(7, 17, 1, 83),
(8, 21561, 1, 83),
(9, 358159, 1, 87775),
(10, 21561, 1, 87775),
(11, 810080, 4, 610),
(12, 157, 1, 610),
(13, 431860, 1, 610),
(14, 431860, 1, 87),
(15, 431860, 3, 43),
(16, 358159, 1, 43),
(17, 358159, 1, 57),
(18, 358159, 2, 568),
(19, 810080, 1, 568),
(20, 358159, 2, 53),
(21, 810080, 2, 53),
(22, 961461, 1, 53),
(23, 358159, 1, 76),
(24, 553040, 1, 76),
(25, 358159, 1, 2),
(26, 553040, 3, 2),
(27, 358159, 1, 297),
(28, 553040, 5, 297),
(29, 810080, 1, 4921),
(30, 810080, 3, 353),
(31, 810080, 1, 455),
(32, 810080, 3, 311),
(33, 810080, 5, 66),
(34, 810080, 6, 0),
(35, 4, 1, 0),
(36, 431860, 1, 1),
(37, 431860, 3, 19),
(38, 431860, 4, 494),
(39, 21561, 2, 494),
(40, 21561, 4, 665),
(41, 157, 3, 665),
(42, 431860, 2, 665),
(43, 16, 1, 3712),
(44, 16, 1, 7),
(45, 553040, 1, 7),
(46, 21561, 1, 7),
(47, 3, 5, 259),
(48, 11, 1, 9),
(49, 553040, 1, 9),
(50, 21561, 1, 9),
(51, 11, 1, 72),
(52, 21561, 5, 72),
(53, 553040, 1, 70),
(54, 431860, 1, 70),
(55, 51292, 2, 70),
(56, 553040, 1, 974),
(57, 21561, 1, 974),
(58, 4, 1, 974),
(59, 431860, 1, 2857),
(60, 358159, 1, 2857),
(61, 431860, 1, 3),
(62, 358159, 4, 3),
(63, 431860, 1, 92),
(64, 431860, 1, 193),
(65, 553040, 1, 193),
(66, 51292, 1, 8),
(67, 553040, 1, 371),
(68, 21561, 1, 371),
(69, 188250, 2, 137),
(70, 553040, 1, 137),
(71, 553040, 1, 93),
(72, 431860, 3, 93),
(73, 358159, 1, 729),
(74, 11, 1, 729),
(75, 553040, 1, 5),
(76, 26, 1, 5),
(77, 28, 1, 393),
(78, 431860, 1, 393),
(79, 553040, 1, 92),
(80, 51292, 1, 92),
(81, 553040, 1, 6),
(82, 30, 1, 6),
(83, 358159, 1, 380),
(84, 157, 1, 380),
(85, 961461, 2, 380),
(86, 553040, 1, 380),
(87, 553040, 1, 37),
(88, 31, 1, 37),
(89, 553040, 1, 8),
(90, 29, 3, 8),
(91, 431860, 1, 67),
(92, 15, 1, 67),
(93, 553040, 1, 4079),
(94, 15, 1, 4079),
(95, 553040, 1, 246),
(96, 20, 1, 246),
(97, 553040, 1, 26911),
(98, 21, 2, 26911),
(99, 51292, 1, 26911),
(100, 810080, 1, 2),
(101, 51292, 1, 2),
(102, 431860, 1, 2),
(103, 810080, 1, 69);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`transacton_detail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
