-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 04:21 PM
-- Server version: 10.2.10-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yep`
--

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `location`, `status`, `region`, `date`) VALUES
(1, 'Ut Pharetra Sed PC', 'warning', 'AU', '2019-10-04 00:29:11'),
(2, 'Diam Luctus Lobortis Corp.', 'ok', 'US', '2018-10-14 03:35:04'),
(3, 'Tortor Integer LLP', 'ok', 'AU', '2019-02-04 17:58:02'),
(4, 'Vitae Erat Vel PC', 'ok', 'ID', '2019-03-30 18:07:26'),
(5, 'Nunc Company', 'ok', 'HK', '2020-05-19 18:36:04'),
(6, 'Enim Non Nisi Limited', 'ok', 'HK', '2019-09-07 18:40:06'),
(7, 'Auctor Company', 'failed', 'US', '2020-01-10 06:44:01'),
(8, 'Pede Sagittis Augue Corp.', 'failed', 'HK', '2020-07-04 03:04:31'),
(9, 'Dis Incorporated', 'failed', 'AU', '2018-12-09 01:38:02'),
(10, 'Eu Ligula Aenean LLC', 'warning', 'HK', '2019-11-22 14:14:16'),
(11, 'Convallis Dolor Quisque PC', 'warning', 'US', '2018-09-10 14:58:48'),
(12, 'Eros Turpis Non Corporation', 'pending', 'AU', '2019-11-28 23:00:30'),
(13, 'Malesuada Id Inc.', 'warning', 'AU', '2019-05-06 00:21:06'),
(14, 'Augue Foundation', 'failed', 'HK', '2018-10-03 08:26:25'),
(15, 'Ornare Incorporated', 'pending', 'HK', '2019-09-02 13:11:47'),
(16, 'Mollis Dui In Corp.', 'ok', 'US', '2019-03-19 16:17:42'),
(17, 'Non Sollicitudin Corporation', 'ok', 'US', '2019-01-15 05:06:23'),
(18, 'Fermentum Risus At LLP', 'failed', 'JP', '2018-08-23 06:41:40'),
(19, 'Et LLC', 'warning', 'JP', '2020-02-15 00:21:37'),
(20, 'Arcu Associates', 'failed', 'ID', '2019-06-18 01:17:24'),
(21, 'Ridiculus Mus Proin Inc.', 'pending', 'US', '2019-11-29 11:02:18'),
(22, 'Sed Corporation', 'failed', 'ID', '2020-01-24 11:20:23'),
(23, 'Ligula Nullam PC', 'pending', 'US', '2020-06-20 21:14:43'),
(24, 'Interdum Sed Consulting', 'warning', 'US', '2019-05-02 09:36:23'),
(25, 'Lorem Associates', 'warning', 'ID', '2019-02-28 08:30:47'),
(26, 'Curabitur Ut Odio Institute', 'failed', 'US', '2018-10-13 22:52:09'),
(27, 'Blandit Viverra Donec Ltd', 'ok', 'ID', '2020-03-11 15:42:36'),
(28, 'Euismod Et Associates', 'failed', 'JP', '2018-10-18 20:46:27'),
(29, 'Non Justo Limited', 'ok', 'JP', '2019-01-27 08:36:29'),
(30, 'Sed Inc.', 'failed', 'JP', '2018-08-22 20:43:39'),
(31, 'Nulla Corporation', 'pending', 'ID', '2018-10-03 13:21:31'),
(32, 'Donec Foundation', 'ok', 'ID', '2020-02-05 21:35:50'),
(33, 'Consectetuer Rhoncus Nullam Industries', 'warning', 'JP', '2019-08-25 07:32:44'),
(34, 'Aliquam Erat Ltd', 'warning', 'US', '2019-05-23 13:56:35'),
(35, 'Et Tristique Limited', 'pending', 'JP', '2020-04-26 07:06:51'),
(36, 'Ultrices A Auctor Inc.', 'pending', 'JP', '2019-04-27 22:38:51'),
(37, 'Non Massa Company', 'pending', 'US', '2020-01-13 13:22:16'),
(38, 'Iaculis Lacus Pede Ltd', 'failed', 'JP', '2020-05-21 00:49:47'),
(39, 'Sit Amet Ltd', 'failed', 'AU', '2020-03-27 19:28:38'),
(40, 'Aliquam Gravida Incorporated', 'ok', 'JP', '2020-06-21 09:02:00'),
(41, 'Eu Company', 'ok', 'HK', '2020-01-06 21:50:06'),
(42, 'Urna Consulting', 'failed', 'US', '2019-09-29 10:24:23'),
(43, 'Turpis Non Inc.', 'ok', 'AU', '2020-04-12 13:00:07'),
(44, 'Neque Vitae Semper Limited', 'ok', 'US', '2019-07-23 11:30:52'),
(45, 'Luctus Sit Amet Incorporated', 'failed', 'HK', '2019-07-30 02:52:39'),
(46, 'Aliquam Erat Volutpat Associates', 'warning', 'JP', '2019-10-16 23:30:56'),
(47, 'Hendrerit Consulting', 'pending', 'JP', '2020-05-08 13:26:27'),
(48, 'Eu Ligula Consulting', 'pending', 'AU', '2020-03-15 06:50:00'),
(49, 'Molestie Orci Tincidunt Inc.', 'warning', 'JP', '2020-03-26 18:50:25'),
(50, 'Eu Company', 'warning', 'JP', '2019-12-26 12:09:34'),
(51, 'Dictum Eu Eleifend Company', 'failed', 'US', '2019-08-05 21:59:37'),
(52, 'Nulla In Tincidunt Corp.', 'ok', 'JP', '2020-03-28 16:54:53'),
(53, 'Eget Odio Aliquam LLP', 'warning', 'ID', '2018-11-07 01:38:18'),
(54, 'Tellus Phasellus Elit LLC', 'ok', 'US', '2019-02-25 05:11:49'),
(55, 'In Aliquet Lobortis Ltd', 'pending', 'AU', '2020-06-15 21:47:34'),
(56, 'Cras Dictum Ultricies Foundation', 'pending', 'ID', '2019-01-03 00:32:09'),
(57, 'Faucibus Orci Ltd', 'pending', 'HK', '2020-07-07 08:39:55'),
(58, 'Metus Eu Incorporated', 'pending', 'JP', '2019-09-11 04:16:11'),
(59, 'Semper Tellus Id Limited', 'ok', 'US', '2019-11-22 06:56:07'),
(60, 'Tincidunt Aliquam Foundation', 'warning', 'AU', '2019-05-29 21:18:00'),
(61, 'Tincidunt Adipiscing Mauris Company', 'warning', 'HK', '2020-03-04 21:30:46'),
(62, 'Purus Accumsan Corp.', 'ok', 'US', '2018-09-03 19:45:28'),
(63, 'Orci Luctus Et Consulting', 'pending', 'US', '2019-10-04 03:45:36'),
(64, 'Nec Enim Nunc Corp.', 'pending', 'JP', '2020-05-29 23:49:51'),
(65, 'Suspendisse PC', 'ok', 'US', '2020-03-28 14:19:40'),
(66, 'Faucibus Morbi LLC', 'ok', 'ID', '2018-10-17 00:17:42'),
(67, 'Sit Foundation', 'pending', 'HK', '2019-05-01 22:47:19'),
(68, 'Eget Lacus Mauris Incorporated', 'ok', 'ID', '2019-10-19 17:33:34'),
(69, 'Dolor Fusce Mi Limited', 'ok', 'ID', '2019-07-24 10:28:50'),
(70, 'Adipiscing Foundation', 'pending', 'ID', '2019-03-16 03:58:58'),
(71, 'Odio Auctor Vitae Ltd', 'ok', 'JP', '2018-11-24 19:37:49'),
(72, 'Nec Associates', 'ok', 'HK', '2019-05-07 08:07:51'),
(73, 'Vulputate Dui Institute', 'warning', 'AU', '2019-04-17 16:09:42'),
(74, 'Dolor Donec Corporation', 'ok', 'JP', '2018-12-26 19:28:35'),
(75, 'Neque LLP', 'ok', 'US', '2019-07-19 09:23:51'),
(76, 'Sit Amet Consectetuer Incorporated', 'pending', 'AU', '2018-07-31 05:29:43'),
(77, 'Pharetra Ut Pharetra Company', 'warning', 'HK', '2019-03-13 07:15:44'),
(78, 'Sapien Imperdiet Ornare Limited', 'failed', 'AU', '2018-11-30 01:08:49'),
(79, 'Pellentesque Limited', 'warning', 'ID', '2020-02-15 23:52:37'),
(80, 'Posuere Ltd', 'ok', 'HK', '2019-08-03 23:37:22'),
(81, 'Nunc Associates', 'failed', 'HK', '2019-04-27 00:58:31'),
(82, 'Eu Eros Corporation', 'ok', 'HK', '2019-01-04 17:07:42'),
(83, 'Sociis Natoque Associates', 'failed', 'HK', '2018-07-23 06:55:47'),
(84, 'Diam At Industries', 'pending', 'US', '2019-12-22 11:20:45'),
(85, 'Libero Proin Sed Foundation', 'pending', 'JP', '2019-07-16 12:01:14'),
(86, 'Hendrerit PC', 'failed', 'JP', '2020-03-27 05:57:29'),
(87, 'Eu Neque Corp.', 'failed', 'ID', '2020-02-02 23:44:17'),
(88, 'Phasellus LLP', 'warning', 'HK', '2018-07-21 00:28:18'),
(89, 'Mollis Dui In LLC', 'pending', 'JP', '2020-05-19 08:08:36'),
(90, 'Duis Ltd', 'failed', 'ID', '2019-01-26 08:36:30'),
(91, 'Aliquet Metus Ltd', 'failed', 'JP', '2019-12-30 05:23:21'),
(92, 'Magna Nam LLP', 'ok', 'JP', '2019-07-08 03:21:49'),
(93, 'Dolor Quisque Industries', 'failed', 'ID', '2020-04-17 09:45:37'),
(94, 'Donec Tempus Lorem Inc.', 'warning', 'AU', '2018-11-27 10:56:20'),
(95, 'Lectus Industries', 'ok', 'HK', '2019-06-02 13:08:01'),
(96, 'Ut Eros Non Institute', 'failed', 'JP', '2020-07-12 14:50:49'),
(97, 'Iaculis Odio Nam Inc.', 'ok', 'JP', '2019-02-18 01:59:09'),
(98, 'Fermentum Fermentum Arcu Associates', 'failed', 'HK', '2019-10-15 20:15:08'),
(99, 'Aliquam Gravida Incorporated', 'ok', 'ID', '2018-11-24 03:22:24'),
(100, 'Curabitur Ut Corp.', 'pending', 'US', '2019-03-30 13:18:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
