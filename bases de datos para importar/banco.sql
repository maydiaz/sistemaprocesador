-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 03:29:35
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `cuenta` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `n_tarjeta` varchar(10) NOT NULL,
  `saldo` int(5) NOT NULL,
  `tipo_tar` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`nombre`, `apellido`, `cedula`, `cuenta`, `correo`, `n_tarjeta`, `saldo`, `tipo_tar`, `direccion`) VALUES
('Carlos', 'Alejo', '8-785-676', 89076050, 'carlos.alejo@gmai.com', '5467212123', 217, 'Visa', 'Costa del Este'),
('luis', 'matirnez', '8-786-732', 657655673, 'luis@gmail.com', '123123213', 1554, 'Visa', 'tocumen');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
