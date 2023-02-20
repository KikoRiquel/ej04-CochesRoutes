-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-02-2020 a las 00:39:08
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ev`
--
CREATE DATABASE IF NOT EXISTS `ev` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ev`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
CREATE TABLE `fabricantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`id`, `nombre`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Citroën'),
(4, 'Ford'),
(5, 'Honda'),
(6, 'Hyundai'),
(7, 'Jaguar'),
(8, 'Kia'),
(9, 'Lexus'),
(10, 'Mercedes'),
(11, 'Mitsubishi'),
(12, 'Nissan'),
(13, 'Peugeot'),
(14, 'Porsche'),
(15, 'Renault'),
(16, 'Suzuki'),
(17, 'Tesla'),
(18, 'Toyota'),
(19, 'Volvo'),
(20, 'Volkswagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

DROP TABLE IF EXISTS `modelos`;
CREATE TABLE `modelos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `imagen` varchar(32) DEFAULT NULL,
  `precio` int(32) NOT NULL,
  `fabricante` int(11) NOT NULL,
  `tecnologia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre`, `imagen`, `precio`, `fabricante`, `tecnologia`) VALUES
(1, 'A3 Sportback e-tron', 'img/Audi_A3_Sportback_e-tron.jpg', 38750, 1, 3),
(2, 'Q7 e-tron quattro', 'img/Audi_Q7_e-tron_quattro.jpg', 83970, 1, 3),
(3, 'i3', 'img/BMW-i3-60Ah.jpg', 35500, 2, 1),
(4, 'Serie 2 iPerformance', 'img/BMW_225xe_iPerformance.jpg', 39500, 2, 3),
(5, 'Serie 7 iPerformance', 'img/BMW_740e_iPerformance.jpg', 102500, 2, 3),
(6, 'C-Zero', 'img/Citroen_C-ZERO.jpg', 26190, 3, 1),
(7, 'Berlingo Electric', 'img/Citroen_Berlingo.jpg', 24900, 3, 1),
(8, 'Mondeo HEV', 'img/Ford_MondeoHEV.jpg', 34500, 4, 2),
(9, 'IONIQ', 'img/Hyundai_IONIQ_Hybrid.jpg', 21375, 6, 2),
(10, 'IONIQ', 'img/Hyundai_IONIQ_Electrico.jpg', 29725, 6, 1),
(11, 'IONIQ PHEV', 'img/Hyundai_IONIQ_PHEV.jpg', 27975, 6, 3),
(12, 'i-Pace', 'img/Jaguar-i-Pace.jpg', 79100, 7, 1),
(13, 'Niro', 'img/Kia_Niro.jpg', 25400, 8, 2),
(14, 'Niro PHEV', 'img/Kia_NiroPHEV.jpg', 29070, 8, 3),
(15, 'Soul EV', 'img/Kia_SoulEV.jpg', 32840, 8, 1),
(16, 'Optima PHEV', 'img/Kia_OptimaPHEV.jpg', 45750, 8, 3),
(17, 'CT', 'img/Lexus_CT.jpg', 22900, 9, 2),
(18, 'IS', 'img/Lexus_IS.jpg', 35900, 9, 2),
(19, 'GS', 'img/Lexus_GS.jpg', 45900, 9, 2),
(20, 'LS', 'img/Lexus_LS.jpg', 121500, 9, 2),
(21, 'NX', 'img/Lexus_NX.jpg', 39750, 9, 2),
(22, 'RX', 'img/Lexus_RX.jpg', 68400, 9, 2),
(23, 'Clase C', 'img/Mercedes-C.jpg', 50225, 10, 3),
(24, 'Clase E', 'img/Mercedes-E.jpg', 64800, 10, 3),
(25, 'GLC', 'img/Mercedes-GLC.jpg', 55850, 10, 3),
(26, 'Clase S', 'img/Mercedes-S.jpg', 114325, 10, 3),
(27, 'i-MiEV', 'img/Mitsubishi_i-MIEV.jpg', 24400, 11, 1),
(28, 'Outlander PHEV', 'img/Mitsubishi_Outlander.jpg', 47200, 11, 3),
(29, 'LEAF', 'img/Nissan_LEAF_24Ah.jpg', 29235, 12, 1),
(30, 'e-NV200', 'img/Nissan_E-NV200.jpg', 25342, 12, 1),
(31, 'iOn', 'img/Peugeot_iOn.jpg', 26190, 13, 1),
(32, '508', 'img/Peugeot_508.jpg', 44880, 13, 2),
(33, 'Cayenne S E-Hybrid', 'img/Porsche_Cayenne_S.jpg', 89293, 14, 3),
(34, 'Twizy', 'img/Renault_Twizy.jpg', 7220, 15, 1),
(35, 'ZOE', 'img/Renault_ZOE.jpg', 21625, 15, 1),
(36, 'Kangoo Z.E.', 'img/Renault_Kangoo_ZE.jpg', 24800, 15, 1),
(37, 'Baleno', 'img/Suzuki_Baleno.jpg', 17225, 16, 2),
(38, 'Model S', 'img/Tesla_ModelS.jpg', 80100, 17, 1),
(39, 'Model X', 'img/Tesla_ModelX.jpg', 103100, 17, 1),
(40, 'Model 3', 'img/Tesla_Model3.jpg', 45000, 17, 1),
(41, 'Auris', 'img/Toyota_Auris.jpg', 22020, 18, 2),
(42, 'Auris Touring Sports', 'img/Toyota_Auris_Touring.jpg', 23020, 18, 2),
(43, 'Prius', 'img/Toyota_Prius.jpg', 32250, 18, 2),
(44, 'Prius+', 'img/Toyota_Prius+.jpg', 31200, 18, 2),
(45, 'RAV 4', 'img/Toyota_RAV4.jpg', 31950, 18, 2),
(46, 'Yaris', 'img/Toyota_Yaris.jpg', 18100, 18, 2),
(47, 'C-HR', 'img/Toyota_C-HR.jpg', 31900, 18, 2),
(49, 'S90 T8 Twin Engine', 'img/Volvo_S90_TS_T8_Twin.jpg', 72150, 19, 3),
(50, 'e-Up!', 'img/VW_e-Up.jpg', 27720, 20, 1),
(51, 'e-Golf', 'img/VW_e-Golf.jpg', 36850, 20, 1),
(52, 'Golf GTE', 'img/VW_Golf_GTE.jpg', 40090, 20, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnologias`
--

DROP TABLE IF EXISTS `tecnologias`;
CREATE TABLE `tecnologias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tecnologias`
--

INSERT INTO `tecnologias` (`id`, `nombre`) VALUES
(1, 'eléctricos'),
(2, 'híbridos'),
(3, 'híbridos enchufables');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fabricante` (`fabricante`),
  ADD KEY `tecnologia` (`tecnologia`);

--
-- Indices de la tabla `tecnologias`
--
ALTER TABLE `tecnologias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `tecnologias`
--
ALTER TABLE `tecnologias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`fabricante`) REFERENCES `fabricantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `modelos_ibfk_2` FOREIGN KEY (`tecnologia`) REFERENCES `tecnologias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
