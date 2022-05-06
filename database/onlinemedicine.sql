-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2019 at 01:11 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ram`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `image` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `password`, `image`) VALUES
(1, 'admin', '7896541258', 'admin@gmail.com', 'password', 'admin2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(6) NOT NULL,
  `elecid` int(6) NOT NULL,
  `userid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `elecid`, `userid`) VALUES
(2, 18, 1),
(3, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `elecid` int(9) NOT NULL,
  `Title` varchar(40) NOT NULL,
  `category` varchar(40) NOT NULL,
  `elec_rating` int(3) NOT NULL,
  `image` varchar(90) NOT NULL,
  `discription` varchar(800) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`elecid`, `Title`, `category`, `elec_rating`, `image`, `discription`, `price`) VALUES
(1, 'Unda #20', 'HOMEOPATHY', 5, 'Capture.JPG', '', '70'),
(2, 'Lymphomyosot Rx Injectables', 'HOMEOPATHY', 3, 'lym.JPG', '', '80'),
(3, 'Serotonin Dopamine Liquescence', 'HOMEOPATHY', 2, 'amine.JPG', '', '320'),
(4, 'T-Relief Pain Gel', 'HOMEOPATHY', 5, 't-relife.JPG', '', '39'),
(5, 'BodyAnew Cleanse Oral Drops', 'HOMEOPATHY', 5, 'bodyanew.JPG', '', '999'),
(6, 'Inlife Multivitamin and Minerals Supplem', 'VITAMINSSUPPLEMENTS', 5, '81fcH-PvlxL._SL1500_.jpg', '', '635'),
(7, 'HealthKart Multivitamin with Ginseng Ext', 'VITAMINSSUPPLEMENTS', 5, '61UaZaYCHfL._SL1100_.jpg', '', '325'),
(8, 'NutrineLife Multivitamin Supplement with', 'VITAMINSSUPPLEMENTS', 5, '61MS9JgMncL._SL1450_.jpg', '', '963'),
(9, 'Sapien Body Total B Vitamin Complex - 60', 'VITAMINSSUPPLEMENTS', 5, '51LuEFQNgxL._SL1050_.jpg', '', '1500'),
(10, 'Purayati Multivitamin Tablets for Men - ', 'VITAMINSSUPPLEMENTS', 5, '51b1j63plTL._SL1024_.jpg', '', '70'),
(11, 'Himalaya Liv.52 Tablets - 100 Counts', 'AYURVEDA', 5, '61sus85P5BL._SL1000_.jpg', '', '520'),
(12, 'Zandu Kesari Jivan - 900 g', 'AYURVEDA', 5, '81J8thIJSnL._SL1500_.jpg', '', '521'),
(13, 'Dabur Chyawanprash - 1 kg with Free Dabu', 'AYURVEDA', 5, '61EhUbk23wL._SL1200_.jpg', '', '320'),
(14, 'Himalaya Confido Tablets - 60 Counts', 'AYURVEDA', 5, '61Cim3CxGOL._SL1000_.jpg', '', '300'),
(15, 'Himalaya Wellness Pure Herbs Ashvagandha', 'AYURVEDA', 5, '71WufUyijvL._SL1500_.jpg', '', '500'),
(16, 'Merck SevenSeas Original Cod liver Oil C', 'HEALTHFOOdDRINKS', 5, '51hFiMx0lQL.jpg', '', '400'),
(17, 'Herbalife Afresh Energy Drink- Lemon 50 ', 'HEALTHFOOdDRINKS', 5, '51tCiPwbkjL._SL1001_.jpg', '', '50'),
(18, 'Protinex Vanilla Delight - 400 g', 'HEALTHFOOdDRINKS', 5, '81cWOEqymLL._SL1500_.jpg', '', '420'),
(19, 'Neuherbs Organic Green Coffee Beans for ', 'HEALTHFOOdDRINKS', 5, '61D4KsVelyL._SL1500_.jpg', '', '40'),
(20, 'Wow Biotin Maximum Strength Veg Capsule ', 'HEALTHFOOdDRINKS', 5, '719yVsL8HEL._SL1500_.jpg', '', '360'),
(21, 'c-Rest Neck Massager Pillow,Massage Tool', 'HEALTHCAREDEVICES', 5, '612OHFmRX4L._SL1000_.jpg', '', '500'),
(22, 'Dr Physio (USA) Electric Heat Shiatsu Ma', 'HEALTHCAREDEVICES', 5, '81PfC3qz7WL._SL1500_.jpg', '', '1000'),
(23, 'Flamingo HC 1002 Orthopaedic Heating Bel', 'HEALTHCAREDEVICES', 5, '41lN8XJRKDL.jpg', '', '300'),
(24, 'Equinox Hot Water Bottle with Cover EQ-H', 'HEALTHCAREDEVICES', 5, '71Vn0S5iivL._SL1200_.jpg', '', '900'),
(25, 'Thermocare Gel Electric Warm Bag Multi C', 'HEALTHCAREDEVICES', 5, '71iJO1kqqdL._SL1500_.jpg', '', '1200'),
(26, 'Vaseline Intensive Care Deep Restore Bod', 'SKINCARE', 5, '51R-KubhnlL._SL1000_.jpg', '', '300'),
(27, 'Nivea Nourishing Lotion Body Milk with D', 'SKINCARE', 5, '71h3tcA8VUL._SL1500_.jpg', '', '400'),
(28, 'Parachute Advansed Body Lotion Deep Nour', 'SKINCARE', 5, '61Oc9yvHdPL._SL1500_.jpg', '', '450'),
(29, 'Lakme Absolute Perfect Radiance Skin Lig', 'SKINCARE', 5, '51amgXm0IwL._SL1000_.jpg', '', '260'),
(30, 'Lakme Blush and Glow Strawberry Gel Face', 'SKINCARE', 5, '616pyi18tXL._SL1000_.jpg', '', '420');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(3) NOT NULL,
  `cardnumber` int(10) NOT NULL,
  `card_expairy` varchar(60) NOT NULL,
  `cvc_code` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `userid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `cardnumber`, `card_expairy`, `cvc_code`, `amount`, `userid`) VALUES
(1, 2147483647, '12/1', 589, 920, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `mobile`, `email`, `password`) VALUES
(1, 'anshu', '7896541236', 'anshu@gmail.com', '111111'),
(2, 'vishal', '7896541236', 'vishal@gmail.com', '111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`elecid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `elecid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
