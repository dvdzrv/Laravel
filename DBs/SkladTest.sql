-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2025 at 08:44 PM
-- Server version: 8.0.40-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SkladTest`
--

-- --------------------------------------------------------

--
-- Table structure for table `Suciastky`
--

CREATE TABLE `Suciastky` (
  `ID` int NOT NULL,
  `Kategória` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Podkategoria` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Nazov` text NOT NULL,
  `Hodnota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Pocet` int DEFAULT NULL,
  `minPocet` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Suciastky`
--

INSERT INTO `Suciastky` (`ID`, `Kategória`, `Podkategoria`, `Nazov`, `Hodnota`, `Pocet`, `minPocet`) VALUES
(1, 'Pasívne súčiastky', NULL, 'Rezistor', '0.22R', 39, NULL),
(2, 'Pasívne súčiastky', NULL, 'Rezistor', '0.33R', 32, NULL),
(3, 'Pasívne súčiastky', NULL, 'Rezistor', '0.47R', 47, NULL),
(4, 'Pasívne súčiastky', NULL, 'Rezistor', '1R', 147, NULL),
(5, 'Pasívne súčiastky', NULL, 'Rezistor', '1.2R', 144, NULL),
(6, 'Pasívne súčiastky', NULL, 'Rezistor', '1.5R', 174, NULL),
(7, 'Pasívne súčiastky', NULL, 'Rezistor', '1.8R', 180, NULL),
(8, 'Pasívne súčiastky', NULL, 'Rezistor', '2.2R', 145, NULL),
(9, 'Pasívne súčiastky', NULL, 'Rezistor', '2.7R', 123, NULL),
(10, 'Pasívne súčiastky', NULL, 'Rezistor', '3.3R', 119, NULL),
(11, 'Pasívne súčiastky', NULL, 'Rezistor', '3.9R', 118, NULL),
(12, 'Pasívne súčiastky', NULL, 'Rezistor', '4.7R', 143, NULL),
(13, 'Pasívne súčiastky', NULL, 'Rezistor', '5.6R', 173, NULL),
(14, 'Pasívne súčiastky', NULL, 'Rezistor', '6.8R', 115, NULL),
(15, 'Pasívne súčiastky', NULL, 'Rezistor', '8.2R', 147, NULL),
(16, 'Pasívne súčiastky', NULL, 'Rezistor', '10R', 115, NULL),
(17, 'Pasívne súčiastky', NULL, 'Rezistor', '12R', 307, NULL),
(18, 'Pasívne súčiastky', NULL, 'Rezistor', '15R', 117, NULL),
(19, 'Pasívne súčiastky', NULL, 'Rezistor', '18R', 136, NULL),
(20, 'Pasívne súčiastky', NULL, 'Rezistor', '22R', 155, NULL),
(21, 'Pasívne súčiastky', NULL, 'Rezistor', '24R', 178, NULL),
(22, 'Pasívne súčiastky', NULL, 'Rezistor', '27R', 146, NULL),
(23, 'Pasívne súčiastky', NULL, 'Rezistor', '29R', 0, NULL),
(24, 'Pasívne súčiastky', NULL, 'Rezistor', '33R', 74, NULL),
(25, 'Pasívne súčiastky', NULL, 'Rezistor', '39R', 183, NULL),
(26, 'Pasívne súčiastky', NULL, 'Rezistor', '47R', 115, NULL),
(27, 'Pasívne súčiastky', NULL, 'Rezistor', '56R', 106, NULL),
(28, 'Pasívne súčiastky', NULL, 'Rezistor', '62R', 126, NULL),
(29, 'Pasívne súčiastky', NULL, 'Rezistor', '68R', 100, NULL),
(30, 'Pasívne súčiastky', NULL, 'Rezistor', '75R', 168, NULL),
(31, 'Pasívne súčiastky', NULL, 'Rezistor', '82R', 102, NULL),
(32, 'Pasívne súčiastky', NULL, 'Rezistor', '91R', 100, NULL),
(33, 'Pasívne súčiastky', NULL, 'Rezistor', '100R', 16, NULL),
(34, 'Pasívne súčiastky', NULL, 'Rezistor', '120R', 49, NULL),
(35, 'Pasívne súčiastky', NULL, 'Rezistor', '150R', 5, NULL),
(36, 'Pasívne súčiastky', NULL, 'Rezistor', '180R', 49, NULL),
(37, 'Pasívne súčiastky', NULL, 'Rezistor', '220R', 68, NULL),
(38, 'Pasívne súčiastky', NULL, 'Rezistor', '240R', 41, NULL),
(39, 'Pasívne súčiastky', NULL, 'Rezistor', '270R', 23, NULL),
(40, 'Pasívne súčiastky', NULL, 'Rezistor', '330R', 296, NULL),
(41, 'Pasívne súčiastky', NULL, 'Rezistor', '360R', 104, NULL),
(42, 'Pasívne súčiastky', NULL, 'Rezistor', '390R', 42, NULL),
(43, 'Pasívne súčiastky', NULL, 'Rezistor', '470R', 70, NULL),
(44, 'Pasívne súčiastky', NULL, 'Rezistor', '510R', 31, NULL),
(45, 'Pasívne súčiastky', NULL, 'Rezistor', '560R', 77, NULL),
(46, 'Pasívne súčiastky', NULL, 'Rezistor', '620R', 28, NULL),
(47, 'Pasívne súčiastky', NULL, 'Rezistor', '680R', 1, NULL),
(48, 'Pasívne súčiastky', NULL, 'Rezistor', '750R', 75, NULL),
(49, 'Pasívne súčiastky', NULL, 'Rezistor', '820R', 72, NULL),
(50, 'Pasívne súčiastky', NULL, 'Rezistor', '1K', 18, NULL),
(51, 'Pasívne súčiastky', NULL, 'Rezistor', '1.5K', 22, NULL),
(52, 'Pasívne súčiastky', NULL, 'Rezistor', '1.8K', 2, NULL),
(53, 'Pasívne súčiastky', NULL, 'Rezistor', '2K', 105, NULL),
(54, 'Pasívne súčiastky', NULL, 'Rezistor', '2.4K', 111, NULL),
(55, 'Pasívne súčiastky', NULL, 'Rezistor', '2.7K', 138, NULL),
(56, 'Pasívne súčiastky', NULL, 'Rezistor', '3.3K', 45, NULL),
(57, 'Pasívne súčiastky', NULL, 'Rezistor', '3.9K', 22, NULL),
(58, 'Pasívne súčiastky', NULL, 'Rezistor', '4.3K', 48, NULL),
(59, 'Pasívne súčiastky', NULL, 'Rezistor', '4.7K', 87, NULL),
(60, 'Pasívne súčiastky', NULL, 'Rezistor', '5.1K', 47, NULL),
(61, 'Pasívne súčiastky', NULL, 'Rezistor', '5.6K', 37, NULL),
(62, 'Pasívne súčiastky', NULL, 'Rezistor', '6.2K', 161, NULL),
(63, 'Pasívne súčiastky', NULL, 'Rezistor', '6.8K', 89, NULL),
(64, 'Pasívne súčiastky', NULL, 'Rezistor', '7.5K', 47, NULL),
(65, 'Pasívne súčiastky', NULL, 'Rezistor', '8.2K', 9, NULL),
(66, 'Pasívne súčiastky', NULL, 'Rezistor', '10K', 113, NULL),
(67, 'Pasívne súčiastky', NULL, 'Rezistor', '12K', 101, NULL),
(68, 'Pasívne súčiastky', NULL, 'Rezistor', '15K', 89, NULL),
(69, 'Pasívne súčiastky', NULL, 'Rezistor', '18K', 142, NULL),
(70, 'Pasívne súčiastky', NULL, 'Rezistor', '20K', 136, NULL),
(71, 'Pasívne súčiastky', NULL, 'Rezistor', '22K', 6, NULL),
(72, 'Pasívne súčiastky', NULL, 'Rezistor', '24K', 183, NULL),
(73, 'Pasívne súčiastky', NULL, 'Rezistor', '27K', 56, NULL),
(74, 'Pasívne súčiastky', NULL, 'Rezistor', '33K', 102, NULL),
(75, 'Pasívne súčiastky', NULL, 'Rezistor', '36K', 167, NULL),
(76, 'Pasívne súčiastky', NULL, 'Rezistor', '39K', 79, NULL),
(77, 'Pasívne súčiastky', NULL, 'Rezistor', '43K', 71, NULL),
(78, 'Pasívne súčiastky', NULL, 'Rezistor', '47K', 115, NULL),
(79, 'Pasívne súčiastky', NULL, 'Rezistor', '51K', 83, NULL),
(80, 'Pasívne súčiastky', NULL, 'Rezistor', '56K', 45, NULL),
(81, 'Pasívne súčiastky', NULL, 'Rezistor', '62K', 93, NULL),
(82, 'Pasívne súčiastky', NULL, 'Rezistor', '68K', 119, NULL),
(83, 'Pasívne súčiastky', NULL, 'Rezistor', '75K', 53, NULL),
(84, 'Pasívne súčiastky', NULL, 'Rezistor', '82K', 82, NULL),
(85, 'Pasívne súčiastky', NULL, 'Rezistor', '91K', 116, NULL),
(86, 'Pasívne súčiastky', NULL, 'Rezistor', '100K', 71, NULL),
(87, 'Pasívne súčiastky', NULL, 'Rezistor', '120K', 117, NULL),
(88, 'Pasívne súčiastky', NULL, 'Rezistor', '150K', 113, NULL),
(89, 'Pasívne súčiastky', NULL, 'Rezistor', '180K', 168, NULL),
(90, 'Pasívne súčiastky', NULL, 'Rezistor', '220K', 62, NULL),
(91, 'Pasívne súčiastky', NULL, 'Rezistor', '270K', 50, NULL),
(92, 'Pasívne súčiastky', NULL, 'Rezistor', '330K', 59, NULL),
(93, 'Pasívne súčiastky', NULL, 'Rezistor', '390K', 253, NULL),
(94, 'Pasívne súčiastky', NULL, 'Rezistor', '470K', 120, NULL),
(95, 'Pasívne súčiastky', NULL, 'Rezistor', '560K', 126, NULL),
(96, 'Pasívne súčiastky', NULL, 'Rezistor', '680K', 142, NULL),
(97, 'Pasívne súčiastky', NULL, 'Rezistor', '750K', 77, NULL),
(98, 'Pasívne súčiastky', NULL, 'Rezistor', '820K', 144, NULL),
(99, 'Pasívne súčiastky', NULL, 'Rezistor', '910K', 106, NULL),
(100, 'Pasívne súčiastky', NULL, 'Rezistor', '1M', 48, NULL),
(101, 'Pasívne súčiastky', NULL, 'Rezistor', '1.2M', 104, NULL),
(102, 'Pasívne súčiastky', NULL, 'Rezistor', '1.5M', 121, NULL),
(103, 'Pasívne súčiastky', NULL, 'Rezistor', '1.8M', 146, NULL),
(104, 'Pasívne súčiastky', NULL, 'Rezistor', '2.2M', 119, NULL),
(105, 'Pasívne súčiastky', NULL, 'Rezistor', '2.7M', 116, NULL),
(106, 'Pasívne súčiastky', NULL, 'Rezistor', '3.3M', 66, NULL),
(107, 'Pasívne súčiastky', NULL, 'Rezistor', '3.9M', 125, NULL),
(108, 'Pasívne súčiastky', NULL, 'Rezistor', '4.7M', 139, NULL),
(109, 'Pasívne súčiastky', NULL, 'Rezistor', '5.6M', 138, NULL),
(110, 'Pasívne súčiastky', NULL, 'Rezistor', '6.8M', 105, NULL),
(111, 'Pasívne súčiastky', NULL, 'Rezistor', '8.2M', 138, NULL),
(112, 'Pasívne súčiastky', NULL, 'Rezistor', '1.2K', 3, NULL),
(113, 'Pasívne súčiastky', NULL, 'Rezistor', '3.6K', 150, NULL),
(114, 'Pasívne súčiastky', NULL, 'Varistor', '250A', 20, NULL),
(115, 'Pasívne súčiastky', NULL, 'Varistor', '100A', 20, NULL),
(116, 'Pasívne súčiastky', NULL, 'Varistor', '4500A', 17, NULL),
(117, 'Aktívne súčiastky', 'unipolárny', 'Tranzistor', '1500W', 19, NULL),
(118, 'Aktívne súčiastky', 'bipolárny', 'Tranzistor', '600W', 19, NULL),
(119, 'Aktívne súčiastky', 'unipolárny', 'Tranzistor', '600W', 10, NULL),
(120, 'Aktívne súčiastky', 'unipolárny', 'Tranzistor', '1500W', 19, NULL),
(121, 'Aktívne súčiastky', 'bipolárny', 'Tranzistor', '1500W', 17, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Suciastky`
--
ALTER TABLE `Suciastky`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Suciastky`
--
ALTER TABLE `Suciastky`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
