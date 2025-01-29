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
-- Database: `Sklad`
--

-- --------------------------------------------------------

--
-- Table structure for table `Historia`
--

CREATE TABLE `Historia` (
  `ID` int NOT NULL,
  `TypOperacie` text NOT NULL,
  `Pocet` int NOT NULL,
  `ID_Suciastky` int NOT NULL,
  `ID_Uzivatela` int NOT NULL,
  `Cas` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Suciastky`
--

CREATE TABLE `Suciastky` (
  `ID` int NOT NULL,
  `Kategória` text NOT NULL,
  `Podkategoria` text NOT NULL,
  `Nazov` text NOT NULL,
  `Hodnota` text NOT NULL,
  `Pocet` int DEFAULT NULL,
  `minPocet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Uzivatelia`
--

CREATE TABLE `Uzivatelia` (
  `ID` int NOT NULL,
  `Meno` text NOT NULL,
  `Heslo` text NOT NULL,
  `Prava` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Vypozicane`
--

CREATE TABLE `Vypozicane` (
  `ID` int NOT NULL,
  `ID_Suciastky` int NOT NULL,
  `ID_Uzivatela` int NOT NULL,
  `Pocet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Historia`
--
ALTER TABLE `Historia`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Suciastky` (`ID_Suciastky`),
  ADD KEY `ID_Uzivatela` (`ID_Uzivatela`);

--
-- Indexes for table `Suciastky`
--
ALTER TABLE `Suciastky`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Uzivatelia`
--
ALTER TABLE `Uzivatelia`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Vypozicane`
--
ALTER TABLE `Vypozicane`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_Suciastky` (`ID_Suciastky`),
  ADD KEY `ID_Uzivatela` (`ID_Uzivatela`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Historia`
--
ALTER TABLE `Historia`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Suciastky`
--
ALTER TABLE `Suciastky`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Uzivatelia`
--
ALTER TABLE `Uzivatelia`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Vypozicane`
--
ALTER TABLE `Vypozicane`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Historia`
--
ALTER TABLE `Historia`
  ADD CONSTRAINT `Historia_ibfk_1` FOREIGN KEY (`ID_Suciastky`) REFERENCES `Suciastky` (`ID`),
  ADD CONSTRAINT `Historia_ibfk_2` FOREIGN KEY (`ID_Uzivatela`) REFERENCES `Uzivatelia` (`ID`);

--
-- Constraints for table `Vypozicane`
--
ALTER TABLE `Vypozicane`
  ADD CONSTRAINT `Vypozicane_ibfk_1` FOREIGN KEY (`ID_Suciastky`) REFERENCES `Suciastky` (`ID`),
  ADD CONSTRAINT `Vypozicane_ibfk_2` FOREIGN KEY (`ID_Uzivatela`) REFERENCES `Uzivatelia` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
