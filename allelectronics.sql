-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 07:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allelectronics`
--
create database allelectronics;
use allelectronics;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `name`, `address`) VALUES
(190032, 'hardwell', 'uk'),
(190152, 'rukhmini', 'amravati'),
(190156, 'alexis', 'nagpure'),
(190318, 'tommrowland', 'usa'),
(190329, 'quinnen', 'mumbai'),
(190359, 'shakira', 'uae');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `credit_info` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `name`, `address`, `age`, `income`, `credit_info`, `category`) VALUES
('c0032', 'aastha', 'uae', 21, 89500, 3, 5),
('c0152', 'aditya', 'france', 21, 89000, 1, 3),
('c0156', 'janvi', 'uae', 21, 89600, 4, 5),
('c0318', 'harshal', 'kuwait', 21, 89655, 6, 7),
('c0329', 'tejal', 'usa', 21, 89500, 2, 4),
('c0359', 'kiran', 'uk', 21, 89650, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empl_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `group_name` varchar(50) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `commission` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empl_id`, `name`, `category`, `group_name`, `salary`, `commission`) VALUES
(101, 'riya', NULL, 'manager', 175000, '2'),
(202, 'kumud', NULL, 'worker', 169000, '3'),
(303, 'kusum', NULL, 'worker', 168000, '4'),
(404, 'nayra', NULL, 'worker', 1666000, '6'),
(505, 'kiyra', NULL, 'worker', 155000, '4');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `place_mode` varchar(50) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `brand`, `category`, `type`, `price`, `place_mode`, `supplier`, `cost`) VALUES
(1, 'alian ware', 'dell', 'laptop', 'computer', 45000, 'japan', 'dell', 40000),
(2, '2 tb hard disk', 'toshiba', 'disk_drive', 'secondary_disk', 10000, 'japan', 'toshiba', 8000),
(3, '13 pro max', 'apple', 'phone', 'mini_computer', 179000, 'india', 'apple', 179000),
(4, 'aspire', 'lg', 'ac', 'ac', 50000, 'usa', 'lg', 45000),
(5, 'led light', 'bajaj', 'led_light', 'light', 4000, 'india', 'bajaj', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `items_sold`
--

CREATE TABLE `items_sold` (
  `trans_id` varchar(50) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_sold`
--

INSERT INTO `items_sold` (`trans_id`, `item_id`, `qty`) VALUES
('T1000paid', 1, 1),
('T1000paid', 1, 5),
('T2000paid', 1, 1),
('T2000paid', 2, 1),
('T3000paid', 3, 1),
('T4000paid', 1, 1),
('T4000paid', 5, 1),
('T5000paid', 4, 1),
('T5000paid', 2, 1),
('T6000paid', 1, 1),
('T6000paid', 4, 1),
('T6000paid', 2, 1),
('T7000paid', 1, 1),
('T7000paid', 2, 1),
('T8000paid', 1, 1),
('T8000paid', 2, 1),
('T9000paid', 1, 1),
('T9000paid', 2, 2),
('T10000paid', 1, 1),
('T11000paid', 1, 1),
('T11000paid', 5, 1),
('T11000paid', 2, 1),
('T12000paid', 3, 1),
('T12000paid', 2, 1),
('T13000paid', 1, 1),
('T13000paid', 4, 1),
('T14000paid', 3, 1),
('T14000paid', 5, 1),
('T15000paid', 4, 1),
('T16000paid', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `trans_id` varchar(50) NOT NULL,
  `cust_id` varchar(50) DEFAULT NULL,
  `empl_id` int(11) DEFAULT NULL,
  `date_purchases` date DEFAULT NULL,
  `time_purchases` time DEFAULT NULL,
  `method_paid` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`trans_id`, `cust_id`, `empl_id`, `date_purchases`, `time_purchases`, `method_paid`, `amount`) VALUES
('T10000paid', 'c0152', 303, '2022-04-26', NULL, 'phone pay', 45000),
('T1000paid', 'c0032', 101, '2019-10-10', NULL, 'visa', 44000),
('T11000paid', 'c0032', 505, '2021-09-01', NULL, 'visa', 64000),
('T12000paid', 'c0318', 101, '2021-10-19', NULL, 'google pay', 189000),
('T13000paid', 'c0359', 303, '2021-11-15', NULL, 'google pay', 95000),
('T14000paid', 'c0359', 404, '2021-12-11', NULL, 'yono sbi', 183000),
('T15000paid', 'c0329', 505, '2021-12-20', NULL, 'yono sbi', 50000),
('T16000paid', 'c0152', 202, '2022-03-06', NULL, 'rupay', 45000),
('T2000paid', 'c0152', 202, '2019-11-12', NULL, 'rupay', 50000),
('T3000paid', 'c0152', 303, '2020-01-01', NULL, 'cash', 179000),
('T4000paid', 'c0152', 404, '2020-02-01', NULL, 'visa', 44000),
('T5000paid', 'c0152', 505, '2020-04-01', NULL, 'rupay', 60000),
('T6000paid', 'c0329', 101, '2021-05-05', NULL, 'bank transfer', 105000),
('T7000paid', 'c0329', 303, '2021-06-05', NULL, 'cash', 50000),
('T8000paid', 'c0329', 202, '2021-07-06', NULL, 'cash', 55000),
('T9000paid', 'c0318', 404, '2021-08-09', NULL, 'bank transfer', 65000);

-- --------------------------------------------------------

--
-- Table structure for table `works_at`
--

CREATE TABLE `works_at` (
  `empl_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_at`
--

INSERT INTO `works_at` (`empl_id`, `branch_id`) VALUES
(101, 190152),
(202, 190156),
(303, 190329),
(404, 190032),
(505, 190156),
(202, 190032),
(101, 190152),
(303, 190032),
(404, 190329),
(505, 190156),
(101, 190359),
(202, 190152),
(303, 190329),
(404, 190359),
(505, 190359),
(101, 190318),
(303, 190318),
(404, 190318);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empl_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items_sold`
--
ALTER TABLE `items_sold`
  ADD KEY `trans_id` (`trans_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `works_at`
--
ALTER TABLE `works_at`
  ADD KEY `empl_id` (`empl_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_sold`
--
ALTER TABLE `items_sold`
  ADD CONSTRAINT `items_sold_ibfk_1` FOREIGN KEY (`trans_id`) REFERENCES `purchases` (`trans_id`),
  ADD CONSTRAINT `items_sold_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `works_at`
--
ALTER TABLE `works_at`
  ADD CONSTRAINT `works_at_ibfk_1` FOREIGN KEY (`empl_id`) REFERENCES `employee` (`empl_id`),
  ADD CONSTRAINT `works_at_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
