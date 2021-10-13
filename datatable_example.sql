-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 03:11 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datatable_example`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mobile`, `city`) VALUES
(7, 'pki-validation', 'user@gmail.com', '8887919632', 'Lucknow'),
(8, 'pki-validation', 'user@gmail.com', '8887919632', 'Lucknow'),
(9, 'Rajs', 'user@gmail.com', '8887919632', 'Lucknow'),
(10, 'Amrendra', 'user@gmail.com', '434334', 'Lucknow'),
(12, 'Alok Kumar bisht', 'user@gmail.com', '434334', 'Lucknow'),
(13, 'admin', 'admin@gmail.com', '9988999999', 'Lucknow'),
(15, 'ninebroadband', 'superadmin@gmail.com', '8127956219', 'Lucknow'),
(16, 'index.html', 'superadmin@gmail.com', '8127956219', 'Lucknow'),
(18, 'index.html', 'user@gmail.com', '8127956219', 'Lucknow'),
(19, 'sfd', 'sfdasf@Gmail.com', 'adsffsaf', 'safdsa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
