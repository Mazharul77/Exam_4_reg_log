-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 03:21 PM
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
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `username` varchar(47) NOT NULL,
  `email` varchar(47) NOT NULL,
  `password` varchar(47) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(2, 'fdgg', 'fgfgf', '144c527ee6827ac129a794890507c712', '2021-10-13 05:49:39'),
(3, 'fdgg', 'fgfgf', '144c527ee6827ac129a794890507c712', '2021-10-13 05:49:52'),
(4, 'Mukto Bhy', 'mkt@gmail.com', '6a0ea785fd391b68d3c5d746fa89b638', '2021-10-13 07:16:17'),
(5, 'Mukto Bhy', 'mkt@gmail.com', '6a0ea785fd391b68d3c5d746fa89b638', '2021-10-13 07:17:14'),
(6, 'Mukto Bhy', 'mkt@gmail.com', '6a0ea785fd391b68d3c5d746fa89b638', '2021-10-13 07:17:34'),
(7, 'mazharul', 'mazharul15-1425@diu.edu.bd', 'a6865fb58bb7887dab1415ae15dff749', '2021-10-13 07:18:11'),
(8, 'bhuiyan', 'mazarulbd34@gmail.com', 'afd53cf72b119d95cd8080d112687e21', '2021-10-13 07:18:54'),
(9, 'Mukto Bhy', 'mkt@gmail.com', '6a0ea785fd391b68d3c5d746fa89b638', '2021-10-13 07:29:42'),
(10, 'tester1', 'tester1@gmail.com', 'fdfd8b73fa344727d5402ccbc9710cd8', '2021-10-13 08:00:27'),
(11, 'Abdullah', 'a@diu.edu.bd', '8bb0c112dd118dff05061ec85ee43c0f', '2021-10-13 08:51:03'),
(12, 'karim', 'karim@gmail.com', '041421b18d59ee2a934a75fef9c7aaa9', '2021-10-13 09:10:23'),
(13, 'fkarim', '', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 09:10:31'),
(14, 'fkarim', '', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 09:43:26'),
(15, 'ABS', 'mazarulbd34@gmail.com', 'afd53cf72b119d95cd8080d112687e21', '2021-10-13 09:43:55'),
(16, 'tester1', '', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 09:44:02'),
(17, 'tester1', '', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 09:46:10'),
(18, 'tester1', '', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 09:46:39'),
(19, 'tester1', '', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 09:48:27'),
(27, 'tester1', '', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 09:58:41'),
(28, 'Abdul', 'abdul@gmail.com', 'ec74f28cfdaa7fd2845848b99a900a3e', '2021-10-13 09:59:41'),
(29, 'rahim', 'mazarulbd34@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '2021-10-13 10:02:17'),
(33, 'rahim', 'rahim@gmail.com', '2342a6d662e4c2ba13d77d7e4cbe6849', '2021-10-13 10:06:07'),
(81, 'imran', 'hh@gmail.com', '0871d3ef54fb30d790450642fd15787b', '2021-10-13 15:07:42');

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
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
