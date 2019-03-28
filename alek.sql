-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2019 at 03:22 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fann`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `image`) VALUES
(2, 'Sandal Swallow', 'Army Motif', 50000000, 'upload/Untitled-3 copy.JPG'),
(3, 'NIKE Men Air Presto Mid Acronym Sepatu Sneakers Pr', 'Brown Colour', 5600000, 'upload/Untitled-1 copy.jpg'),
(6, 'Adidas NMD x Bape', 'Army Colour', 3000000, 'upload/Untitled-2 copy.JPG'),
(7, 'Vans Checkerboard', 'Checkerboard Colour', 1500000, 'upload/Untitled-1 .JPG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(13) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usia` int(30) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `biografi` varchar(30) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `usia`, `nim`, `jurusan`, `biografi`, `gender`, `email`, `website`, `level`) VALUES
(17, 'fanmuh', 'fandra', 23, '09031281823055', 'Sistem Informasi', 'fandramuh', 'Male', 'www.gmail.com', 'fandraekapratama.mfep@gmail.com', 'admin'),
(18, 'fann', '123', 13, '09031281823055', 'Sistem Informasi', '123', 'Male', 'www.gmail.com', 'fandraekapratama.mfep@gmail.com', 'admin'),
(19, 'fanmuhh', '11', 13, '09031281823055', 'Sistem Informasi', '123', 'Male', 'www.gmail.com', 'fandraekapratama.mfep@gmail.com', 'admin'),
(20, 'as', 'as', 13, '09031281823055', 'Sistem Informasi', 'as', 'Male', 'www.gmail.com', 'fandraekapratama.mfep@gmail.com', 'manager');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(13) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
