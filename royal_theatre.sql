-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 02:55 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royal_theatre`
--

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `Price_Band` varchar(1) NOT NULL,
  `Adult` decimal(4,2) NOT NULL,
  `Child` decimal(4,2) NOT NULL,
  `Concession` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`Price_Band`, `Adult`, `Child`, `Concession`) VALUES
('A', '38.00', '12.00', '40.00'),
('B', '16.00', '8.00', '12.00'),
('C', '10.00', '5.00', '5.00'),
('D', '45.00', '0.00', '30.00');

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `Production_Reference` int(4) NOT NULL,
  `Production_Name` varchar(50) NOT NULL,
  `Genre` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `start_time` varchar(5) NOT NULL,
  `Price_Band` varchar(1) NOT NULL,
  `Product_Image_Path` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`Production_Reference`, `Production_Name`, `Genre`, `Date`, `start_time`, `Price_Band`, `Product_Image_Path`) VALUES
(1, 'Little Stars: Dance', 'Opera', '2019-06-15', '14:00', 'C', 'images\\thumbs\\4.jpg'),
(187, 'RSNO Community Orchestra', 'Musical', '2019-08-18', '19:30', 'A', 'images\\thumbs\\7.jpg'),
(188, 'Nicki Minaj', 'Concert', '2019-06-07', '20:00', 'D', 'images\\thumbs\\10.jpg'),
(189, 'Musical', 'Opera', '2019-07-10', '14:30', 'B', 'images\\thumbs\\11.jpg'),
(190, 'Alan Davies', 'Comedy', '2019-09-08', '19:30', 'D', 'images\\thumbs\\8.jpg'),
(191, 'Hannah Montana', 'Comedy', '2019-06-09', '20:00', 'B', 'images\\thumbs\\7.jpg'),
(192, 'David Bowie', 'Comedy', '2019-06-07', '15:30', 'B', 'images\\thumbs\\6.jpg'),
(193, 'Falco Des', 'Comedy', '2019-06-06', '20:00', 'A', 'images\\thumbs\\5.jpg'),
(194, 'Morana Demand', 'Musical', '2019-08-20', '19:00', 'C', 'images\\thumbs\\9.jpg'),
(195, 'Micky Mouse', 'Comedy', '2019-06-05', '09:30', 'C', 'images\\thumbs\\3.jpg'),
(196, 'Man in Black', 'Panto', '2019-06-04', '20:00', 'B', 'images\\thumbs\\1.jpg'),
(197, 'Heavy Burden', 'Comedy', '2019-06-03', '11:30', 'B', 'images\\thumbs\\2.jpg'),
(198, 'Alan Schezar', 'Concert', '2019-06-02', '17:30', 'B', 'images\\thumbs\\12.jpg'),
(199, 'Rihanna Rhino', 'Dance', '2019-06-01', '18:00', 'A', 'images\\thumbs\\3.jpg'),
(200, 'Henry DuGalle', 'Concert', '2019-01-19', '18:30', 'B', 'images\\thumbs\\13.jpg'),
(201, 'Sticky Notes', 'Dance', '2019-09-16', '16:30', 'D', 'images\\thumbs\\2.jpg'),
(202, 'Dawn of the Hawk', 'Musical', '2019-02-26', '18:00', 'B', 'images\\thumbs\\10.jpg'),
(203, 'Mercenary Band', 'Dance', '2019-03-12', '19:30', 'D', 'images\\thumbs\\1.jpg'),
(204, 'Hidden Sun', 'Opera', '2019-09-02', '13:30', 'B', 'images\\thumbs\\2.jpg'),
(205, 'Curvy Liars', 'Comedy', '2019-11-16', '19:00', 'B', 'images\\thumbs\\4.jpg'),
(206, 'Marilyn Maroon', 'Panto', '2019-09-02', '18:00', 'A', 'images\\thumbs\\13.jpg'),
(207, 'Gaia Symphony', 'Drama', '2019-06-01', '19:00', 'B', 'images\\thumbs\\6.jpg'),
(208, 'Symphatetic Doors', 'Concert', '2019-09-02', '13:30', 'A', 'images\\thumbs\\9.jpg'),
(209, 'Behind the Table', 'Drama', '2019-09-02', '18:00', 'D', 'images\\thumbs\\5.jpg'),
(210, 'On the Top', 'Concert', '2019-06-01', '15:30', 'B', 'images\\thumbs\\11.jpg'),
(211, 'Right Highway', 'Panto', '2019-09-18', '19:00', 'D', 'images\\thumbs\\3.jpg'),
(212, 'Hell on Earth', 'Drama', '2019-09-12', '13:30', 'C', 'images\\thumbs\\4.jpg'),
(213, 'Kind Jerry', 'Musical', '2019-09-11', '18:00', 'C', 'images\\thumbs\\8.jpg'),
(214, 'Bob and Proctor', 'Comedy', '2019-06-23', '11:30', 'B', 'images\\thumbs\\1.jpg'),
(215, 'Devil Inside', 'Opera', '2019-06-09', '13:00', 'A', 'images\\thumbs\\12.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`Price_Band`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`Production_Reference`),
  ADD KEY `Price Band` (`Price_Band`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `Production_Reference` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
