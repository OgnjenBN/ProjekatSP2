-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2024 at 07:32 AM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srecko`
--

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `id` bigint(20) NOT NULL,
  `sifra` bigint(20) DEFAULT NULL,
  `naziv` varchar(250) DEFAULT NULL,
  `godiste` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`id`, `sifra`, `naziv`, `godiste`) VALUES
(1, 1, 'Бранислав Нушић', 1864),
(2, 2, 'Јован Јовановић Змај', 1833),
(3, 3, 'Петар II Петровић Његош', 1813),
(4, 4, 'Фјодор Михајлович Достојевски', 1821),
(5, 5, 'Херман Хесе', 1877),
(6, 6, 'Tolkin', 1913),
(8, 8, 'Danila Stil', 1940),
(9, 9, 'Ivo Andric', 1892),
(10, 10, 'Бранко Ћопић', 1915),
(11, 11, 'Вилијам Шекспир', 1562),
(12, 12, 'Ернест Хемингвеј', 1899),
(13, 13, 'Браћа Грим', 1785),
(14, 14, 'Владимир Мајаковски', 1893);

-- --------------------------------------------------------

--
-- Table structure for table `clan`
--

CREATE TABLE `clan` (
  `id` bigint(20) NOT NULL,
  `sifra` bigint(20) DEFAULT NULL,
  `naziv` varchar(250) DEFAULT NULL,
  `jmb` varchar(13) DEFAULT NULL,
  `brojLk` varchar(13) DEFAULT NULL,
  `adresa` varchar(250) DEFAULT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `datumUclanjenja` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `clan`
--

INSERT INTO `clan` (`id`, `sifra`, `naziv`, `jmb`, `brojLk`, `adresa`, `telefon`, `datumUclanjenja`) VALUES
(1, 1, 'Марко Марковић', '1111111111111', '111', 'Милоша Обилића 52', '055/111-222', '2010-02-15'),
(2, 2, 'Ивана Ивић', '2222222222222', '2', 'Милоша Обилића 52', '055/111-222', '2010-05-15'),
(3, 3, 'Јелена Јовановић', '333333333333', '3', 'Милоша Обилића 52', '055/111-222', '2010-10-15'),
(4, 4, 'Борислав Дракул', '1234567890123', '456', 'Моја адреса', '055/111-222', '2011-01-02'),
(5, 5, 'Новак Југовић', '5555555555555', '5', 'Милоша Обилића 52', '055/111-222', '2011-03-12'),
(6, 6, 'ОШ Кнез Иво', '6666666666666', '6', 'Милоша Обилића 52', '055/111-222', '2011-05-25'),
(7, 7, 'Синергис ДОО', '7777777777777', '7', 'Милоша Обилића 52', '055/111-222', '2011-10-03'),
(8, 8, 'Дијана Ђукић', '8888888888888', '8', 'Милоша Обилића 52', '055/111-222', '2012-01-13'),
(9, 8, 'Дејан Петровић', '9999999999999', '9', NULL, '055/111-222', '2012-10-06'),
(10, 8, 'Милош Милошевић', '1010101010101', '10', NULL, '055/111-222', '2013-01-12'),
(12, 11, 'Dejan Mrkovic', '0710991170100', '123', 'Fruskogorska', '065/123-123', '2014-12-02'),
(13, 13, 'Дејан Анђелковић', '1210991175128', '555', 'Николе Тесле', '065/000-000', '2014-12-02'),
(14, 14, 'Марија Јефтић', '0705991185090', '333', 'Галац', '065/355-444', '2014-12-02'),
(15, 12, 'Radovan Treci', '123245234123', 'b12mi5', 'Bijeljina', '067532000', '2014-12-02'),
(16, 13, 'Мирко Мирковић', '321321321321', '3434', 'Фрушкогорска ББ', '-64.000000000', '0000-00-00'),
(17, 14, 'Борис Борислављевић', '3232344556', '5352', 'Фрушкогорска 432', '-64.883928572', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `dokument`
--

CREATE TABLE `dokument` (
  `id` bigint(20) NOT NULL,
  `broj` int(11) DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `tipDokumenta_id` bigint(20) DEFAULT NULL,
  `clan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `dokument`
--

INSERT INTO `dokument` (`id`, `broj`, `datum`, `tipDokumenta_id`, `clan_id`) VALUES
(1, 1, '2010-05-01', 1, 1),
(2, 1, '2010-05-10', 2, 1),
(3, 2, '2010-05-02', 1, 2),
(4, 2, '2010-05-11', 2, 2),
(5, 3, '2011-03-01', 1, 3),
(6, 4, '2011-03-02', 1, 4),
(7, 3, '2011-03-15', 2, 3),
(8, 4, '2011-03-16', 2, 4),
(9, 10, '2013-11-04', 1, 6),
(10, 10, '2013-11-03', 1, 6),
(11, 10, '2013-11-04', 1, 6),
(12, 9, '2013-11-07', 1, 3),
(13, 10, '2013-11-03', 1, 3),
(14, 8, '2013-11-04', 1, 3),
(15, 5, '2013-11-06', 1, 8),
(16, 6, '2013-11-19', 1, 8),
(17, 7, '2013-11-01', 1, 4),
(18, 1, '0000-00-00', 1, 9),
(19, 2, '2013-11-01', 1, 6),
(20, 20, '2014-12-02', 1, 12),
(21, 21, '2014-12-05', 2, 12),
(22, 22, '2014-12-03', 1, 12),
(23, 23, '2014-12-12', 2, 12),
(24, 24, '2014-12-02', 1, 13),
(25, 24, '2014-12-03', 2, 13),
(26, 26, '2014-12-16', 1, 12),
(27, 27, '2014-12-31', 2, 12),
(31, 28, '2014-06-05', 1, 12),
(32, 29, '2014-08-05', 1, 12),
(33, 30, '2014-10-05', 1, 12),
(34, 31, '2014-07-05', 2, 12),
(35, 32, '2014-09-05', 2, 12),
(36, 33, '2014-11-05', 2, 12),
(45, 34, '2014-01-13', 1, 13),
(46, 35, '2014-02-13', 2, 13),
(47, 36, '2014-03-13', 1, 13),
(48, 37, '2014-04-13', 2, 13),
(49, 38, '2014-05-13', 1, 13),
(50, 39, '2014-06-13', 2, 13),
(51, 40, '2013-06-13', 1, 5),
(52, 41, '2013-07-13', 2, 5),
(53, 42, '2013-08-13', 1, 5),
(54, 43, '2013-09-13', 2, 5),
(55, 44, '2013-10-13', 1, 5),
(56, 45, '2013-12-13', 2, 5),
(57, 46, '2015-01-19', 1, 5),
(58, 47, '2015-03-19', 2, 5),
(65, 48, '2014-01-16', 1, 8),
(66, 49, '2015-01-04', 2, 8),
(67, 50, '2015-01-13', 1, 8),
(68, 51, '2015-05-06', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `dokumentst`
--

CREATE TABLE `dokumentst` (
  `id` bigint(20) NOT NULL,
  `kolicinaZad` int(11) DEFAULT NULL,
  `kolicinaRaz` int(11) DEFAULT NULL,
  `dokument_id` bigint(20) DEFAULT NULL,
  `knjiga_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `dokumentst`
--

INSERT INTO `dokumentst` (`id`, `kolicinaZad`, `kolicinaRaz`, `dokument_id`, `knjiga_id`) VALUES
(1, 1, 0, 1, 5),
(2, 1, 0, 1, 1),
(3, 1, 0, 1, 18),
(4, 0, 1, 2, 5),
(5, 0, 1, 2, 1),
(6, 1, 0, 3, 11),
(7, 1, 0, 3, 10),
(8, 1, 0, 3, 15),
(9, 0, 1, 4, 15),
(10, 0, 1, 4, 11),
(11, 1, 0, 5, 3),
(12, 1, 0, 5, 7),
(13, 1, 0, 6, 13),
(14, 1, 0, 6, 11),
(15, 0, 1, 7, 3),
(16, 0, 1, 7, 7),
(17, 0, 1, 8, 11),
(18, 1, 0, 11, 3),
(19, 1, 0, 11, 3),
(20, 1, 0, 11, 3),
(21, 1, 0, 11, 12),
(22, 1, 0, 11, 12),
(23, 1, 0, 11, 12),
(24, 1, 0, 6, 12),
(25, 1, 0, 9, 11),
(26, 1, 0, 7, 13),
(27, 1, 0, 7, 13),
(28, 1, 0, 6, 17),
(29, 1, 0, 12, 6),
(30, 1, 0, 6, 14),
(31, 0, 1, 3, 12),
(32, 1, 0, 20, 20),
(33, 0, 1, 21, 20),
(34, 1, 0, 22, 21),
(35, 0, 1, 23, 21),
(36, 1, 0, 20, 23),
(37, 1, 0, 26, 22),
(38, 0, 1, 27, 22),
(39, 1, 0, 27, 27),
(40, 1, 0, 27, 28),
(41, 1, 0, 23, 23),
(42, 1, 0, 24, 24),
(48, 1, 0, 31, 11),
(49, 2, 0, 32, 5),
(50, 3, 0, 33, 9),
(51, 0, 1, 34, 11),
(52, 0, 2, 35, 5),
(53, 0, 3, 36, 9),
(54, 1, 0, 45, 3),
(55, 0, 1, 46, 3),
(56, 2, 0, 47, 19),
(57, 0, 2, 48, 19),
(58, 3, 0, 49, 15),
(59, 0, 3, 50, 15),
(60, 2, 0, 51, 23),
(61, 0, 2, 52, 23),
(62, 3, 0, 53, 30),
(63, 0, 3, 54, 30),
(64, 1, 0, 55, 14),
(65, 0, 1, 56, 14),
(66, 4, 0, 57, 1),
(67, 0, 4, 58, 1),
(68, 2, 0, 65, 4),
(69, 0, 2, 66, 4),
(70, 2, 0, 67, 22),
(71, 0, 1, 68, 22);

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `id` bigint(20) NOT NULL,
  `sifra` bigint(20) DEFAULT NULL,
  `naziv` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`id`, `sifra`, `naziv`) VALUES
(1, 1, 'Роман'),
(2, 2, 'Приповетка'),
(3, 3, 'Драма'),
(4, 4, 'Комедија'),
(5, 5, 'Поезија'),
(6, 6, 'Трагедија');

-- --------------------------------------------------------

--
-- Table structure for table `knjiga`
--

CREATE TABLE `knjiga` (
  `id` bigint(20) NOT NULL,
  `sifra` bigint(20) DEFAULT NULL,
  `naslov` varchar(150) DEFAULT NULL,
  `autor_id` bigint(20) DEFAULT NULL,
  `kategorija_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `knjiga`
--

INSERT INTO `knjiga` (`id`, `sifra`, `naslov`, `autor_id`, `kategorija_id`) VALUES
(1, 1, 'Ожалошћена породица', 1, 2),
(2, 2, 'Госпођа министарка', 1, 2),
(3, 3, 'Сумњиво лице', 1, 2),
(4, 4, 'Ђулићи увеоци', 2, 2),
(5, 5, 'Ђулићи', 2, 2),
(6, 6, 'Луча микрокозма', 3, 2),
(7, 7, 'Горски вијенац', 3, 2),
(8, 8, 'Лажни цар Шћепан Мали', 3, 2),
(9, 9, 'Идиот', 4, 1),
(10, 10, 'Понижени и увређени', 4, 1),
(11, 11, 'Браћа Карамазов', 4, 1),
(12, 12, 'Злочин и казна', 4, 1),
(13, 13, 'Записи из мртвог дома', 4, 1),
(14, 14, 'Записи из подземља', 4, 1),
(15, 15, 'Коцкар', 4, 1),
(16, 16, 'Сидарта', 5, 1),
(17, 17, 'Степски вук', 5, 1),
(18, 18, 'Криза', 5, 1),
(19, 19, 'Тумарања', 5, 1),
(20, 20, 'Silmarilion', 6, 1),
(21, 21, 'Gospodar prstenova', 6, 1),
(22, 22, 'Hobit', 6, 1),
(23, 23, 'Орлови рано лете', 10, 1),
(24, 24, 'Na Drini cuprija', 9, 1),
(25, 25, 'Gospodjica', 9, 1),
(26, 26, 'Prokleta avlija', 9, 1),
(27, 27, 'Битка у златној долини', 10, 1),
(28, 28, 'Славно војевање', 10, 1),
(29, 29, 'Хамлет', 11, 6),
(30, 30, 'Старац и море', 12, 1),
(32, 31, 'Дјечије и породичне приче', 13, 1),
(34, 32, 'Човек', 14, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tipdokumenta`
--

CREATE TABLE `tipdokumenta` (
  `id` bigint(20) NOT NULL,
  `sifra` int(11) DEFAULT NULL,
  `naziv` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tipdokumenta`
--

INSERT INTO `tipdokumenta` (`id`, `sifra`, `naziv`) VALUES
(1, 1, 'Задужење'),
(2, 2, 'Раздужење');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokument`
--
ALTER TABLE `dokument`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokument_ix1` (`tipDokumenta_id`),
  ADD KEY `dokument_ix2` (`clan_id`);

--
-- Indexes for table `dokumentst`
--
ALTER TABLE `dokumentst`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumentst_ix1` (`dokument_id`),
  ADD KEY `dokumentSt_ix2` (`knjiga_id`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `knjiga_fk1` (`autor_id`),
  ADD KEY `knjiga_fk2` (`kategorija_id`);

--
-- Indexes for table `tipdokumenta`
--
ALTER TABLE `tipdokumenta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `clan`
--
ALTER TABLE `clan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dokument`
--
ALTER TABLE `dokument`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `dokumentst`
--
ALTER TABLE `dokumentst`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `kategorija`
--
ALTER TABLE `kategorija`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `knjiga`
--
ALTER TABLE `knjiga`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tipdokumenta`
--
ALTER TABLE `tipdokumenta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokument`
--
ALTER TABLE `dokument`
  ADD CONSTRAINT `dokument_fk1` FOREIGN KEY (`tipDokumenta_id`) REFERENCES `tipdokumenta` (`id`),
  ADD CONSTRAINT `dokument_fk2` FOREIGN KEY (`clan_id`) REFERENCES `clan` (`id`);

--
-- Constraints for table `dokumentst`
--
ALTER TABLE `dokumentst`
  ADD CONSTRAINT `dokumentst_fk1` FOREIGN KEY (`dokument_id`) REFERENCES `dokument` (`id`),
  ADD CONSTRAINT `dokumentst_fk2` FOREIGN KEY (`knjiga_id`) REFERENCES `knjiga` (`id`);

--
-- Constraints for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD CONSTRAINT `knjiga_fk1` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `knjiga_fk2` FOREIGN KEY (`kategorija_id`) REFERENCES `kategorija` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
