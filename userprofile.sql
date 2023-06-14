-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 04:18 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userprofile`
--

-- --------------------------------------------------------

--
-- Table structure for table `confirm`
--

CREATE TABLE `confirm` (
  `id` int(11) NOT NULL,
  `userid` varchar(128) NOT NULL DEFAULT '',
  `key` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`) VALUES
(1, 'chairman.gif'),
(2, 'farida.jpg'),
(10, 'ABUD JAMAL.JPG'),
(11, 'african-american-university-students-2_03.gif'),
(8, 'african-american-university-students-2_03.gif'),
(9, 'ABUD JAMAL.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `unconfirmed`
--

CREATE TABLE `unconfirmed` (
  `user_username` varchar(50) NOT NULL,
  `user_firstname` varchar(50) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `user_email` text NOT NULL,
  `user_phoneno` text NOT NULL,
  `user_password` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unconfirmed`
--

INSERT INTO `unconfirmed` (`user_username`, `user_firstname`, `user_lastname`, `user_email`, `user_phoneno`, `user_password`, `id`) VALUES
('dan', 'dan', 'driver', 'dandriver@yahoo.com', '1478596', 'fcea920f7412b5da7be0cf42b8c93759', 9),
('dan', 'dan', 'driver', 'dandriver@yahoo.com', '1478596', 'fcea920f7412b5da7be0cf42b8c93759', 10),
('vokez', 'kevin', 'vokes', 'kevinotuka@gmail.com', '216484848', 'c20ad4d76fe97759aa27a0c99bff6710', 27),
('vokes', 'vokes', 'kevin', 'kevinosanya@gmail.com', '074589652', 'fcea920f7412b5da7be0cf42b8c93759', 26),
('vokes', 'VOKES', 'KEVIN', 'kevinotuka@gmail.com', '0713665783', 'fcea920f7412b5da7be0cf42b8c93759', 19),
('ics', 'ics', 'eastafrica', 'admin@icseastafrica.org', '071458963', 'fcea920f7412b5da7be0cf42b8c93759', 18),
('vokes', 'VOKES', 'KEVIN', 'kevinotuka@gmail.com', '0713665783', 'fcea920f7412b5da7be0cf42b8c93759', 20),
('paul', 'paul', 'katana', 'paulkatana@gmail.com', '12458745', 'fcea920f7412b5da7be0cf42b8c93759', 23),
('vokez', 'kevin', 'vokes', 'kevinotuka@gmail.com', '216484848', 'c20ad4d76fe97759aa27a0c99bff6710', 28),
('vokez', 'ffsdfdf', 'sdfdsfdsf', 'kevinotuka@yahoo.com', '84842165', 'fcea920f7412b5da7be0cf42b8c93759', 29),
('vokez', 'ffsdfdf', 'sdfdsfdsf', 'kevinotuka@yahoo.com', '84842165', 'fcea920f7412b5da7be0cf42b8c93759', 30);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_firstname` varchar(30) NOT NULL,
  `user_lastname` varchar(30) NOT NULL,
  `user_username` varchar(30) NOT NULL,
  `user_email` text NOT NULL,
  `user_phoneno` int(30) NOT NULL,
  `user_password` text NOT NULL,
  `user_joindate` date NOT NULL,
  `user_avatar` blob NOT NULL,
  `user_shortbio` varchar(200) DEFAULT NULL,
  `user_profession` varchar(30) DEFAULT NULL,
  `user_address` text,
  `user_country` varchar(30) DEFAULT NULL,
  `user_gender` text,
  `user_website` text,
  `user_dob` text,
  `active` binary(250) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `user_company` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_firstname`, `user_lastname`, `user_username`, `user_email`, `user_phoneno`, `user_password`, `user_joindate`, `user_avatar`, `user_shortbio`, `user_profession`, `user_address`, `user_country`, `user_gender`, `user_website`, `user_dob`, `active`, `user_company`) VALUES
(5, 'ics', '', 'ics', 'admin@icseastafrica.org', 71458963, 'fcea920f7412b5da7be0cf42b8c93759', '2017-06-21', 0x6c6c672d3335353532383537362e706e67, '', '', '', '', 'Male', '', '', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'my_company'),
(6, 'paul', 'katana', 'paul', 'paulkatana@gmail.com', 12458745, 'fcea920f7412b5da7be0cf42b8c93759', '2017-06-24', 0x31333137383638375f313035303130393930353037313431395f373437363433323836353538303933393132385f6e2d3235303738393232312e6a7067, '', '', '', '', 'Male', '', '', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'my_company'),
(7, 'vokes', 'kevin', 'vokes', 'kevinosanya@gmail.com', 74589652, 'fcea920f7412b5da7be0cf42b8c93759', '2017-06-26', 0x64656661756c742e6a7067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 'my_company');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confirm`
--
ALTER TABLE `confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unconfirmed`
--
ALTER TABLE `unconfirmed`
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
-- AUTO_INCREMENT for table `confirm`
--
ALTER TABLE `confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `unconfirmed`
--
ALTER TABLE `unconfirmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
