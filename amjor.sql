-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2022 a las 02:37:27
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `amjor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anchetas`
--

CREATE TABLE `anchetas` (
  `ID` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `descripcion` text NOT NULL,
  `insumo` text NOT NULL,
  `precio` int(11) NOT NULL,
  `disponible` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `anchetas`
--

INSERT INTO `anchetas` (`ID`, `nombre`, `descripcion`, `insumo`, `precio`, `disponible`) VALUES
(3, 'Halloween', 'bruja miedo', 'chocolate, maiz', 75000, 'si'),
(4, 'Padre', 'para mi papa que lqm', 'chocolate, maiz', 75000, 'si'),
(6, 'Padre', 'padre feliz', 'chocolate, maiz', 53000, 'si');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anchetas`
--
ALTER TABLE `anchetas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anchetas`
--
ALTER TABLE `anchetas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
