-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Dez-2021 às 09:02
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `apidevbarber`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberavailability`
--

CREATE TABLE `barberavailability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberavailability`
--

INSERT INTO `barberavailability` (`id`, `id_barber`, `weekday`, `hours`) VALUES
(1, 1, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(2, 1, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(3, 1, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(4, 1, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(5, 2, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(6, 2, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(7, 2, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(8, 2, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(9, 3, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(10, 3, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(11, 3, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(12, 3, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(13, 4, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(14, 4, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(15, 4, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(16, 4, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(17, 5, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(18, 5, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(19, 5, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(20, 5, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(21, 6, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(22, 6, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(23, 6, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(24, 6, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(25, 7, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(26, 7, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(27, 7, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(28, 7, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(29, 8, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(30, 8, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(31, 8, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(32, 8, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(33, 9, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(34, 9, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(35, 9, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(36, 9, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(37, 10, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(38, 10, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(39, 10, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(40, 10, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(41, 11, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(42, 11, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(43, 11, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(44, 11, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(45, 12, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(46, 12, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(47, 12, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(48, 12, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(49, 13, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(50, 13, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(51, 13, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(52, 13, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(53, 14, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(54, 14, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(55, 14, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(56, 14, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(57, 15, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(58, 15, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(59, 15, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(60, 15, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(61, 16, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(62, 16, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(63, 16, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(64, 16, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(65, 17, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(66, 17, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(67, 17, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(68, 17, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(69, 18, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(70, 18, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(71, 18, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(72, 18, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(73, 19, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(74, 19, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(75, 19, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(76, 19, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(77, 20, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(78, 20, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(79, 20, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(80, 20, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(81, 21, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(82, 21, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(83, 21, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(84, 21, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(85, 22, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(86, 22, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(87, 22, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(88, 22, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(89, 23, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(90, 23, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(91, 23, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(92, 23, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(93, 24, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(94, 24, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(95, 24, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(96, 24, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(97, 25, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(98, 25, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(99, 25, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(100, 25, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(101, 26, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(102, 26, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(103, 26, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(104, 26, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(105, 27, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(106, 27, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(107, 27, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(108, 27, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(109, 28, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(110, 28, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(111, 28, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(112, 28, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(113, 29, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(114, 29, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(115, 29, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(116, 29, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(117, 30, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(118, 30, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(119, 30, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(120, 30, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberphotos`
--

CREATE TABLE `barberphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberphotos`
--

INSERT INTO `barberphotos` (`id`, `id_barber`, `url`) VALUES
(1, 1, '3.png'),
(2, 1, '4.png'),
(3, 1, '5.png'),
(4, 1, '5.png'),
(5, 2, '5.png'),
(6, 2, '4.png'),
(7, 2, '2.png'),
(8, 2, '4.png'),
(9, 3, '3.png'),
(10, 3, '2.png'),
(11, 3, '5.png'),
(12, 3, '2.png'),
(13, 4, '2.png'),
(14, 4, '2.png'),
(15, 4, '2.png'),
(16, 4, '1.png'),
(17, 5, '4.png'),
(18, 5, '1.png'),
(19, 5, '5.png'),
(20, 5, '2.png'),
(21, 6, '2.png'),
(22, 6, '5.png'),
(23, 6, '1.png'),
(24, 6, '1.png'),
(25, 7, '5.png'),
(26, 7, '3.png'),
(27, 7, '2.png'),
(28, 7, '3.png'),
(29, 8, '3.png'),
(30, 8, '5.png'),
(31, 8, '4.png'),
(32, 8, '2.png'),
(33, 9, '4.png'),
(34, 9, '3.png'),
(35, 9, '3.png'),
(36, 9, '3.png'),
(37, 10, '5.png'),
(38, 10, '4.png'),
(39, 10, '4.png'),
(40, 10, '2.png'),
(41, 11, '3.png'),
(42, 11, '1.png'),
(43, 11, '2.png'),
(44, 11, '1.png'),
(45, 12, '1.png'),
(46, 12, '3.png'),
(47, 12, '3.png'),
(48, 12, '4.png'),
(49, 13, '3.png'),
(50, 13, '5.png'),
(51, 13, '5.png'),
(52, 13, '2.png'),
(53, 14, '1.png'),
(54, 14, '3.png'),
(55, 14, '3.png'),
(56, 14, '5.png'),
(57, 15, '3.png'),
(58, 15, '4.png'),
(59, 15, '5.png'),
(60, 15, '4.png'),
(61, 16, '3.png'),
(62, 16, '5.png'),
(63, 16, '5.png'),
(64, 16, '5.png'),
(65, 17, '1.png'),
(66, 17, '3.png'),
(67, 17, '3.png'),
(68, 17, '3.png'),
(69, 18, '3.png'),
(70, 18, '1.png'),
(71, 18, '5.png'),
(72, 18, '2.png'),
(73, 19, '1.png'),
(74, 19, '5.png'),
(75, 19, '4.png'),
(76, 19, '4.png'),
(77, 20, '2.png'),
(78, 20, '4.png'),
(79, 20, '1.png'),
(80, 20, '4.png'),
(81, 21, '3.png'),
(82, 21, '3.png'),
(83, 21, '1.png'),
(84, 21, '1.png'),
(85, 22, '4.png'),
(86, 22, '3.png'),
(87, 22, '1.png'),
(88, 22, '2.png'),
(89, 23, '2.png'),
(90, 23, '2.png'),
(91, 23, '5.png'),
(92, 23, '4.png'),
(93, 24, '1.png'),
(94, 24, '1.png'),
(95, 24, '3.png'),
(96, 24, '3.png'),
(97, 25, '3.png'),
(98, 25, '3.png'),
(99, 25, '2.png'),
(100, 25, '3.png'),
(101, 26, '2.png'),
(102, 26, '1.png'),
(103, 26, '2.png'),
(104, 26, '4.png'),
(105, 27, '5.png'),
(106, 27, '4.png'),
(107, 27, '2.png'),
(108, 27, '3.png'),
(109, 28, '5.png'),
(110, 28, '4.png'),
(111, 28, '3.png'),
(112, 28, '4.png'),
(113, 29, '3.png'),
(114, 29, '4.png'),
(115, 29, '2.png'),
(116, 29, '3.png'),
(117, 30, '2.png'),
(118, 30, '5.png'),
(119, 30, '2.png'),
(120, 30, '5.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberreviews`
--

CREATE TABLE `barberreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbers`
--

CREATE TABLE `barbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `stars` double(8,2) NOT NULL DEFAULT 0.00,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbers`
--

INSERT INTO `barbers` (`id`, `name`, `avatar`, `stars`, `latitude`, `longitude`) VALUES
(1, 'Tereza Mercury', '3.png', 4.80, '-23.5130907', '-46.6582795'),
(2, 'Francisco Sampaio', '3.png', 4.40, '-23.5830907', '-46.6282795'),
(3, 'Bonieky Santos', '4.png', 2.60, '-23.5430907', '-46.6582795'),
(4, 'Leticia Galileu', '4.png', 2.70, '-23.5830907', '-46.6882795'),
(5, 'Francisco Menegate', '3.png', 2.70, '-23.5630907', '-46.6682795'),
(6, 'Gonçalo Sampaio', '4.png', 4.20, '-23.5230907', '-46.6382795'),
(7, 'Geraldo Silva', '1.png', 2.10, '-23.5030907', '-46.6882795'),
(8, 'Francisco Moraes', '3.png', 3.20, '-23.5030907', '-46.6482795'),
(9, 'Tereza Menegate', '2.png', 4.80, '-23.5130907', '-46.6482795'),
(10, 'Tereza Souza', '4.png', 4.60, '-23.5630907', '-46.6382795'),
(11, 'Leticia Moraes', '1.png', 2.60, '-23.5130907', '-46.6782795'),
(12, 'Betinho Sampaio', '4.png', 2.00, '-23.5030907', '-46.6582795'),
(13, 'Leticia Menegate', '4.png', 3.30, '-23.5230907', '-46.6182795'),
(14, 'Leticia Fortlaide', '4.png', 3.50, '-23.5730907', '-46.6982795'),
(15, 'Leandro Silva', '3.png', 2.20, '-23.5530907', '-46.6682795'),
(16, 'Betinho Fortlaide', '4.png', 4.00, '-23.5430907', '-46.6682795'),
(17, 'Paulo Galileu', '3.png', 2.90, '-23.5430907', '-46.6282795'),
(18, 'Paulo Sampaio', '1.png', 4.90, '-23.5830907', '-46.6182795'),
(19, 'Betinho Gromash', '3.png', 3.30, '-23.5730907', '-46.6082795'),
(20, 'Betinho Gromash', '1.png', 2.30, '-23.5030907', '-46.6682795'),
(21, 'Geraldo Gromash', '1.png', 4.70, '-23.5730907', '-46.6282795'),
(22, 'Francisco Souza', '4.png', 4.10, '-23.5130907', '-46.6682795'),
(23, 'Amanda Sampaio', '1.png', 2.50, '-23.5730907', '-46.6782795'),
(24, 'Leandro Silva', '1.png', 2.60, '-23.5930907', '-46.6682795'),
(25, 'Geraldo Gromash', '4.png', 3.10, '-23.5830907', '-46.6482795'),
(26, 'Amanda Galileu', '3.png', 3.90, '-23.5530907', '-46.6282795'),
(27, 'Paulo Mercury', '4.png', 3.60, '-23.5130907', '-46.6982795'),
(28, 'Amanda Moraes', '3.png', 4.80, '-23.5330907', '-46.6482795'),
(29, 'Bonieky Gromash', '3.png', 2.20, '-23.5930907', '-46.6482795'),
(30, 'Francisco Gromash', '3.png', 2.20, '-23.5430907', '-46.6782795');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberservices`
--

CREATE TABLE `barberservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberservices`
--

INSERT INTO `barberservices` (`id`, `id_barber`, `name`, `price`) VALUES
(1, 1, 'Pintura de Unha', 94.94),
(2, 1, 'Corte de Unha', 76.16),
(3, 1, 'Pintura de Unha', 16.75),
(4, 1, 'Corte de Sobrancelhas', 42.21),
(5, 2, 'Pintura de Unha', 54.84),
(6, 2, 'Pintura de Cabelo', 97.16),
(7, 2, 'Pintura de Sobrancelhas', 79.79),
(8, 2, 'Corte de Unha', 68.74),
(9, 3, 'Enfeite de Pernas', 79.43),
(10, 3, 'Corte de Unha', 88.33),
(11, 3, 'Aparação de Cabelo', 66.15),
(12, 4, 'Pintura de Cabelo', 73.37),
(13, 4, 'Enfeite de Sobrancelhas', 54.97),
(14, 4, 'Pintura de Cabelo', 8.67),
(15, 4, 'Pintura de Cabelo', 74.93),
(16, 4, 'Pintura de Unha', 64.20),
(17, 4, 'Enfeite de Unha', 60.99),
(18, 5, 'Corte de Sobrancelhas', 87.67),
(19, 5, 'Corte de Sobrancelhas', 96.54),
(20, 5, 'Corte de Unha', 56.60),
(21, 5, 'Aparação de Pernas', 71.50),
(22, 5, 'Aparação de Cabelo', 97.40),
(23, 6, 'Aparação de Sobrancelhas', 2.38),
(24, 6, 'Corte de Cabelo', 29.12),
(25, 6, 'Corte de Pernas', 12.66),
(26, 6, 'Corte de Cabelo', 36.17),
(27, 6, 'Corte de Unha', 60.78),
(28, 6, 'Corte de Pernas', 17.11),
(29, 7, 'Pintura de Cabelo', 63.40),
(30, 7, 'Enfeite de Unha', 51.48),
(31, 7, 'Corte de Sobrancelhas', 86.50),
(32, 7, 'Pintura de Cabelo', 84.72),
(33, 7, 'Corte de Unha', 11.85),
(34, 7, 'Pintura de Pernas', 86.14),
(35, 8, 'Pintura de Sobrancelhas', 79.41),
(36, 8, 'Pintura de Cabelo', 39.95),
(37, 8, 'Corte de Sobrancelhas', 57.71),
(38, 8, 'Enfeite de Sobrancelhas', 82.32),
(39, 8, 'Aparação de Pernas', 17.27),
(40, 9, 'Enfeite de Sobrancelhas', 37.11),
(41, 9, 'Corte de Cabelo', 53.54),
(42, 9, 'Enfeite de Pernas', 40.48),
(43, 9, 'Pintura de Pernas', 49.33),
(44, 10, 'Pintura de Unha', 17.60),
(45, 10, 'Corte de Cabelo', 95.28),
(46, 10, 'Corte de Sobrancelhas', 90.72),
(47, 10, 'Corte de Pernas', 83.69),
(48, 10, 'Enfeite de Sobrancelhas', 38.12),
(49, 11, 'Aparação de Sobrancelhas', 72.16),
(50, 11, 'Enfeite de Unha', 41.50),
(51, 11, 'Aparação de Cabelo', 52.70),
(52, 12, 'Enfeite de Cabelo', 26.91),
(53, 12, 'Pintura de Cabelo', 68.58),
(54, 12, 'Enfeite de Cabelo', 7.39),
(55, 12, 'Aparação de Pernas', 56.87),
(56, 12, 'Pintura de Unha', 64.48),
(57, 13, 'Enfeite de Sobrancelhas', 30.73),
(58, 13, 'Aparação de Sobrancelhas', 63.36),
(59, 13, 'Corte de Sobrancelhas', 14.37),
(60, 14, 'Pintura de Unha', 23.88),
(61, 14, 'Enfeite de Pernas', 39.93),
(62, 14, 'Pintura de Sobrancelhas', 74.64),
(63, 14, 'Pintura de Unha', 55.69),
(64, 14, 'Pintura de Pernas', 55.32),
(65, 15, 'Enfeite de Sobrancelhas', 38.24),
(66, 15, 'Enfeite de Cabelo', 95.21),
(67, 15, 'Pintura de Pernas', 63.79),
(68, 15, 'Aparação de Pernas', 34.56),
(69, 15, 'Corte de Unha', 96.00),
(70, 16, 'Aparação de Pernas', 78.81),
(71, 16, 'Corte de Pernas', 33.22),
(72, 16, 'Aparação de Pernas', 27.41),
(73, 17, 'Aparação de Cabelo', 92.18),
(74, 17, 'Aparação de Sobrancelhas', 96.88),
(75, 17, 'Enfeite de Sobrancelhas', 62.10),
(76, 17, 'Enfeite de Unha', 46.30),
(77, 17, 'Aparação de Cabelo', 39.50),
(78, 17, 'Corte de Pernas', 43.60),
(79, 18, 'Enfeite de Cabelo', 51.21),
(80, 18, 'Corte de Cabelo', 11.50),
(81, 18, 'Corte de Pernas', 24.44),
(82, 19, 'Pintura de Pernas', 4.33),
(83, 19, 'Corte de Unha', 65.69),
(84, 19, 'Enfeite de Sobrancelhas', 27.17),
(85, 19, 'Pintura de Unha', 53.57),
(86, 19, 'Pintura de Unha', 57.97),
(87, 19, 'Pintura de Cabelo', 48.77),
(88, 20, 'Pintura de Unha', 9.96),
(89, 20, 'Enfeite de Pernas', 91.70),
(90, 20, 'Corte de Pernas', 36.10),
(91, 20, 'Enfeite de Unha', 22.54),
(92, 20, 'Corte de Sobrancelhas', 57.42),
(93, 20, 'Enfeite de Pernas', 59.70),
(94, 21, 'Enfeite de Sobrancelhas', 2.90),
(95, 21, 'Enfeite de Pernas', 34.80),
(96, 21, 'Aparação de Unha', 88.56),
(97, 21, 'Aparação de Unha', 63.72),
(98, 22, 'Aparação de Pernas', 68.62),
(99, 22, 'Pintura de Pernas', 53.41),
(100, 22, 'Enfeite de Unha', 99.26),
(101, 23, 'Corte de Pernas', 16.48),
(102, 23, 'Enfeite de Cabelo', 37.27),
(103, 23, 'Pintura de Sobrancelhas', 35.71),
(104, 23, 'Aparação de Cabelo', 48.97),
(105, 23, 'Corte de Sobrancelhas', 54.50),
(106, 23, 'Pintura de Pernas', 44.12),
(107, 24, 'Enfeite de Unha', 22.60),
(108, 24, 'Corte de Unha', 87.96),
(109, 24, 'Pintura de Sobrancelhas', 39.90),
(110, 24, 'Enfeite de Cabelo', 37.26),
(111, 25, 'Aparação de Unha', 8.67),
(112, 25, 'Enfeite de Unha', 68.32),
(113, 25, 'Pintura de Unha', 2.49),
(114, 25, 'Corte de Unha', 43.53),
(115, 25, 'Enfeite de Cabelo', 97.69),
(116, 26, 'Enfeite de Pernas', 45.63),
(117, 26, 'Corte de Pernas', 57.67),
(118, 26, 'Enfeite de Unha', 92.61),
(119, 26, 'Enfeite de Pernas', 58.63),
(120, 26, 'Pintura de Pernas', 13.66),
(121, 26, 'Pintura de Pernas', 38.89),
(122, 27, 'Enfeite de Cabelo', 47.25),
(123, 27, 'Corte de Sobrancelhas', 67.80),
(124, 27, 'Aparação de Sobrancelhas', 79.31),
(125, 27, 'Pintura de Sobrancelhas', 9.38),
(126, 27, 'Corte de Unha', 78.70),
(127, 27, 'Corte de Cabelo', 27.70),
(128, 28, 'Aparação de Sobrancelhas', 77.92),
(129, 28, 'Aparação de Unha', 47.33),
(130, 28, 'Pintura de Cabelo', 87.11),
(131, 28, 'Enfeite de Sobrancelhas', 69.40),
(132, 28, 'Aparação de Sobrancelhas', 26.98),
(133, 29, 'Aparação de Cabelo', 73.92),
(134, 29, 'Corte de Pernas', 49.83),
(135, 29, 'Aparação de Cabelo', 99.00),
(136, 29, 'Pintura de Unha', 57.35),
(137, 30, 'Pintura de Sobrancelhas', 15.30),
(138, 30, 'Corte de Sobrancelhas', 50.89),
(139, 30, 'Enfeite de Pernas', 26.34),
(140, 30, 'Corte de Unha', 3.87),
(141, 30, 'Corte de Cabelo', 98.80),
(142, 30, 'Aparação de Sobrancelhas', 83.55);

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbertestimonials`
--

CREATE TABLE `barbertestimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbertestimonials`
--

INSERT INTO `barbertestimonials` (`id`, `id_barber`, `name`, `rate`, `body`) VALUES
(1, 1, 'Leandro', 4.80, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(2, 1, 'Francisco', 2.90, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(3, 1, 'Paulo', 3.80, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(4, 2, 'Leticia', 4.80, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(5, 2, 'Paulo', 2.80, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(6, 2, 'Paulo', 3.10, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(7, 3, 'Paulo', 3.10, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(8, 3, 'Geraldo', 3.20, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(9, 3, 'Leandro', 2.90, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(10, 4, 'Bonieky', 2.20, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(11, 4, 'Leandro', 4.00, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(12, 4, 'Paulo', 4.60, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(13, 5, 'Francisco', 3.80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(14, 5, 'Gonçalo', 4.70, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(15, 5, 'Amanda', 3.60, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(16, 6, 'Paulo', 2.70, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(17, 6, 'Leandro', 3.30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(18, 6, 'Bonieky', 4.80, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(19, 7, 'Amanda', 2.30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(20, 7, 'Bonieky', 4.90, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(21, 7, 'Gonçalo', 3.90, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(22, 8, 'Paulo', 3.20, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(23, 8, 'Geraldo', 2.40, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(24, 8, 'Amanda', 4.30, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(25, 9, 'Tereza', 2.30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(26, 9, 'Betinho', 2.50, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(27, 9, 'Tereza', 2.40, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(28, 10, 'Francisco', 4.20, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(29, 10, 'Leandro', 4.70, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(30, 10, 'Betinho', 4.60, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(31, 11, 'Gonçalo', 3.90, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(32, 11, 'Amanda', 2.40, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(33, 11, 'Leticia', 3.70, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(34, 12, 'Leticia', 3.40, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(35, 12, 'Geraldo', 3.60, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(36, 12, 'Paulo', 2.20, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(37, 13, 'Bonieky', 4.10, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(38, 13, 'Paulo', 2.90, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(39, 13, 'Gonçalo', 2.90, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(40, 14, 'Paulo', 2.20, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(41, 14, 'Amanda', 2.30, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(42, 14, 'Gonçalo', 2.90, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(43, 15, 'Tereza', 4.10, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(44, 15, 'Betinho', 3.10, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(45, 15, 'Paulo', 2.50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(46, 16, 'Amanda', 4.20, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(47, 16, 'Amanda', 3.50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(48, 16, 'Leandro', 4.00, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(49, 17, 'Paulo', 3.40, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(50, 17, 'Bonieky', 2.50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(51, 17, 'Betinho', 3.80, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(52, 18, 'Francisco', 2.60, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(53, 18, 'Amanda', 2.10, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(54, 18, 'Betinho', 4.00, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(55, 19, 'Bonieky', 2.70, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(56, 19, 'Leticia', 2.80, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(57, 19, 'Amanda', 2.00, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(58, 20, 'Paulo', 2.30, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(59, 20, 'Geraldo', 2.40, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(60, 20, 'Geraldo', 4.20, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(61, 21, 'Francisco', 3.50, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(62, 21, 'Gonçalo', 2.10, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(63, 21, 'Betinho', 3.40, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(64, 22, 'Geraldo', 3.20, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(65, 22, 'Tereza', 2.30, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(66, 22, 'Geraldo', 4.10, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(67, 23, 'Leandro', 2.90, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(68, 23, 'Geraldo', 4.50, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(69, 23, 'Amanda', 2.30, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(70, 24, 'Tereza', 3.60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(71, 24, 'Francisco', 4.60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(72, 24, 'Francisco', 4.30, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(73, 25, 'Betinho', 4.50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(74, 25, 'Bonieky', 3.20, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(75, 25, 'Leandro', 2.50, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(76, 26, 'Bonieky', 4.90, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(77, 26, 'Leandro', 3.80, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(78, 26, 'Leandro', 3.60, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(79, 27, 'Paulo', 3.10, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don.'),
(80, 27, 'Leticia', 4.30, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(81, 27, 'Tereza', 4.40, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(82, 28, 'Gonçalo', 2.10, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(83, 28, 'Francisco', 2.60, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(84, 28, 'Tereza', 3.00, 'Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy.'),
(85, 29, 'Bonieky', 2.60, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(86, 29, 'Leticia', 2.20, 'Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(87, 29, 'Tereza', 2.10, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(88, 30, 'Leandro', 2.60, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
(89, 30, 'Bonieky', 3.00, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.'),
(90, 30, 'Amanda', 3.50, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_05_27_012234_create_all_tables', 1),
(2, '2021_06_01_000200_alter_appointment_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `userappointments`
--

CREATE TABLE `userappointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `ap_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `userappointments`
--

INSERT INTO `userappointments` (`id`, `id_user`, `id_barber`, `id_service`, `ap_datetime`) VALUES
(2, 1, 3, 11, '2021-06-01 12:00:00'),
(3, 1, 6, 9, '2021-06-01 10:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `userfavorites`
--

CREATE TABLE `userfavorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `userfavorites`
--

INSERT INTO `userfavorites` (`id`, `id_user`, `id_barber`) VALUES
(6, 1, 3),
(8, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`) VALUES
(1, 'Carlos', 'ed0e265399e16bb64380a6a7e1e83305.jpg', 'carlos@gmail.com', '$2y$10$922pXAKNoSj/6OUrC1oEieCXesx9VpzKHzUa.LbBd/mjfW6m6Mp/a');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbers`
--
ALTER TABLE `barbers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberservices`
--
ALTER TABLE `barberservices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userappointments`
--
ALTER TABLE `userappointments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `barbers`
--
ALTER TABLE `barbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `barberservices`
--
ALTER TABLE `barberservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `userappointments`
--
ALTER TABLE `userappointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
