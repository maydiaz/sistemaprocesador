-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 03:29:09
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
-- Base de datos: `db_procesador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `nombre_banco` varchar(25) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `id_banco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`nombre_banco`, `telefono`, `id_banco`) VALUES
('Banco General', '3008000', 1),
('Banistmo', '8003000', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comerciante`
--

CREATE TABLE `comerciante` (
  `id_usuario` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `cèdula` varchar(15) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `direcciòn` varchar(15) NOT NULL,
  `negocio` int(11) NOT NULL,
  `fe_nacimi` date NOT NULL,
  `contraseña` varchar(15) NOT NULL,
  `n_operaciòn` varchar(20) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `id_cuenta` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comerciante`
--

INSERT INTO `comerciante` (`id_usuario`, `apellido`, `cèdula`, `nombre`, `direcciòn`, `negocio`, `fe_nacimi`, `contraseña`, `n_operaciòn`, `telefono`, `id_cuenta`, `correo`) VALUES
('Carlos12', 'Alejo', '8-78-796', 'Carlos', 'Panama', 1, '1995-12-07', 'Carlos12', '4345335', '60603232', 89076050, 'carlos.alejo@gmai.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id_usuario` varchar(15) NOT NULL,
  `id_banco` int(11) NOT NULL,
  `numero_cuenta` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id_usuario`, `id_banco`, `numero_cuenta`) VALUES
('Carlos12', 1, '8907605055');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deposito`
--

CREATE TABLE `deposito` (
  `monto_pago` float NOT NULL,
  `estado` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `n_tarjeta` int(11) NOT NULL,
  `tipo_tar` varchar(20) NOT NULL,
  `articulo` varchar(50) NOT NULL,
  `fe_expira` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `id_pago` varchar(15) NOT NULL,
  `fecha_pago` varchar(15) NOT NULL,
  `id_usuario` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deposito`
--

INSERT INTO `deposito` (`monto_pago`, `estado`, `nombre`, `correo`, `n_tarjeta`, `tipo_tar`, `articulo`, `fe_expira`, `telefono`, `apellido`, `id_pago`, `fecha_pago`, `id_usuario`) VALUES
(10, 'procesado', 'luis', 'luis@gmail.com', 123123213, 'Visa', ' zapatos', '01 2021', '657655673', 'matirnez', '16735', '09-12-2021 Dec:', 'Carlos12'),
(15, 'procesado', 'luis', 'luis@gmail.com', 123123213, 'Visa', ' zapatos', '01 2021', '657655673', 'matirnez', '18232', '09-12-2021 Dec:', 'Carlos12'),
(100, 'procesado', 'luis', 'luis@gmail.com', 123123213, 'Visa', ' zapatos', '01 2021', '657655673', 'matirnez', '20810', '09-12-2021 Dec:', 'Carlos12'),
(300, 'procesado', 'luis', 'luis@gmail.com', 123123213, 'Visa', ' zapatos', '01 2021', '657655673', 'matirnez', '19338', '09-12-2021 Dec:', 'Carlos12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retiro`
--

CREATE TABLE `retiro` (
  `id_usuario` varchar(15) NOT NULL,
  `monto_retir` varchar(20) NOT NULL,
  `descripción` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `n_cuenta` varchar(50) NOT NULL,
  `fecha_retiro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo`
--

CREATE TABLE `saldo` (
  `id_usuario` varchar(15) NOT NULL,
  `saldo` int(5) NOT NULL,
  `fecha_ultima` date NOT NULL,
  `cuenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `saldo`
--

INSERT INTO `saldo` (`id_usuario`, `saldo`, `fecha_ultima`, `cuenta`) VALUES
('Carlos12', 489, '0000-00-00', 89076050);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `descripción` varchar(10) NOT NULL,
  `tipo_tar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tarjeta`
--

INSERT INTO `tarjeta` (`descripción`, `tipo_tar`) VALUES
('visa', 1),
('mastercar', 2),
('AmericanE', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE `tipo_cuenta` (
  `id_cuenta` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_negocio`
--

CREATE TABLE `tipo_negocio` (
  `id_tipo` int(11) NOT NULL,
  `descripción` varchar(50) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_negocio`
--

INSERT INTO `tipo_negocio` (`id_tipo`, `descripción`, `nombre`) VALUES
(1, '\"mas 10 empleado\"', 'Corporativo'),
(2, '\"Menos de 10 personas\"', 'Individual');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indices de la tabla `comerciante`
--
ALTER TABLE `comerciante`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `negocio` (`negocio`),
  ADD KEY `id_cuenta` (`id_cuenta`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`numero_cuenta`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_banco` (`id_banco`);

--
-- Indices de la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `tipo_tar` (`tipo_tar`);

--
-- Indices de la tabla `retiro`
--
ALTER TABLE `retiro`
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`tipo_tar`);

--
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  ADD PRIMARY KEY (`id_cuenta`);

--
-- Indices de la tabla `tipo_negocio`
--
ALTER TABLE `tipo_negocio`
  ADD PRIMARY KEY (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
