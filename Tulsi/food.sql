-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 03:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `person` int(255) NOT NULL,
  `table` int(255) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `stock` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pname`, `img`, `price`, `stock`) VALUES
(4, 'Delicious Burger', 'f2.png', 250, 1200),
(5, 'Veg Pizza', 'f3.png', 180, 2000),
(9, 'Delicious Pasta', 'f4.png', 150, 600),
(10, 'French Fries', 'f5.png', 200, 2500),
(11, 'Italian Pizza', 'f6.png', 250, 1500),
(12, 'Tomato Stuffed Burger', 'f7.png', 100, 500),
(13, 'Chilli burger With Pepper Relish', 'f8.png', 150, 1000),
(14, 'Macaroni Pasta', 'f9.png', 220, 1800),
(17, 'Cheese Pizza', 'f1.png', 130, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `password`, `image`) VALUES
(1, 'Dhruvil Mangukiya', 'mangukiyadhruvil876@gmail.com', '6352145263', '$2y$10$7KdQKGe5frKn2jCBowXbpOC6lGFM5gSxShx5c04S8moPtXjyI0h9q', NULL),
(2, 'Kenil Chovatiya', 'kenilhchovatiya333@gmail.com', '9510014520', '$2y$10$jXM6Yj3ce9b2hwLrIZk4GOEtbHipdbwoqlx.I/e5n2sGoF2JRbal6', NULL),
(3, 'Dhruv Vaghara', 'dhruv100@gmail.com', '8521496325', '$2y$10$NN9KJlqwSDOeZlsuwwdZIu6FKc1TWDCaXXsmymfuFO9nIoT118e7u', NULL),
(4, 'Raj', 'raj100@gmail.com', '9541236521', '$2y$10$lBgXp/EybNb/l3oym/lLhuvrMWFigEJWq5mzhLx3lIqbeVPOswg46', NULL),
(5, 'Steeve Herington', 'steeve@gmail.com', '9856321475', '$2y$10$wyMgX92heKj4mZ/WTeZvSuczrNnPlEYs5IVa7X0nE6U2LAc1Bpw.q', NULL),
(6, 'Kenil Chovatiya', 'kenilchovatiya333@gmail.com', '9510010180', '$2y$10$H6LIbvrThsb5qAG2ZaXEm.Z16DrtfCw4.X.xfVqdU.PNLzeWVOk7q', 'kenil.jpg'),
(7, 'Dustin Hendersons', 'dustin111@gmail.com', '3696995862', '$2y$10$8AcC7Wk1UPy3Izul7l8MGOUyq8CATMfuqWJdeaPTh.fIRg60pB1cG', ''),
(8, 'Raj Radadiya', 'raj@gmail.com', '9624109779', '$2y$10$p4fulTNbc5iVcb8gc.j40.th/YdennsuC2RSAeMw7fvckQXHjP9Za', NULL),
(9, 'Kenil Chovatiya', 'kenil100@gmail.com', '9510010890', '$2y$10$IghBQuHKprdtdLo8odzmLuOU9z4w.ED55Z1wOYpaMQ//uRIhLDR0C', 'kenil.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
