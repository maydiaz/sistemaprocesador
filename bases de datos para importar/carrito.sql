-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 03:29:22
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
-- Base de datos: `carrito`
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
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `imagen` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Mujeres', 'Ropar para dama', 'women.jpg'),
(2, 'Hombres', 'Ropa para hombre', 'men.jpg'),
(3, 'Niños', 'Ropa para niños', 'children.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colore`
--

CREATE TABLE `colore` (
  `id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colore`
--

INSERT INTO `colore` (`id`, `color`, `codigo`) VALUES
(1, 'red', '#f00'),
(2, 'blue', '#05F');

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
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE `cupones` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL,
  `fecha_vencimiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cupones`
--

INSERT INTO `cupones` (`id`, `codigo`, `status`, `tipo`, `valor`, `fecha_vencimiento`) VALUES
(1, '24418', 'utilizado', 'moneda', '100', '2020-07-29'),
(2, '65342', 'activo', 'moneda', '200', '2020-07-28'),
(3, '36150', 'utilizado', 'porcentaje', '10', '2020-07-30');

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
  `tipo_tar` int(11) NOT NULL,
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
(10, '10', '10', '10', 10, 10, '10', '10', '10', '10', '10', '0000-00-00', '10'),
(1, '1', '1', '1', 1, 1, '1', '1', '1', '1', '1', '0000-00-00', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id_envio` int(11) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id_envio`, `pais`, `company`, `direccion`, `estado`, `cp`, `id_venta`) VALUES
(1, '4', 'asd', 'asdasd', '123', '123', 14),
(2, '4', 'asd', '', 'asd', '123', 15),
(3, '7', 'asd', 'asdsad', 'asdasd', 'asdasd', 16),
(4, '3', 'asd', 'asdas', 'asdasd', '123', 17),
(5, '3', '222', 'calle', 'asdasd', '123', 18),
(6, '4', '', 'PaquimÃ© #2302', 'Chihuahua', '31770', 19),
(7, '1', '', '', '', '', 20),
(8, '1', '', '', '', '', 21),
(9, '6', 'ad', 'asda', 'asd', '123', 22),
(10, '2', 'asd', 'asd', 'asd', '123', 23),
(11, '3', 'dasdsad', 'PaquimÃ© #2302', 'Chihuahua', '31770', 24),
(12, '3', 'qwe', 'qwe', '3qwe', '1', 25),
(13, '7', 'asd', 'asd', 'Chihuahua', '111', 26),
(14, '2', 'asd', 'asd', 'asd', '123', 27),
(15, '2', 'asd', 'asd', 'asd', '123', 28),
(16, '1', '', '', '', '', 29),
(17, '1', '', '', '', '', 30),
(18, '1', '', '', '', '', 31),
(19, '1', '', '', '', '', 32),
(20, '1', '', '', '', '', 33),
(21, '1', '', '', '', '', 34),
(22, '1', '', '', '', '', 35),
(23, '1', '', '', '', '', 36),
(24, '1', '', '', '', '', 37),
(25, '1', '', '', '', '', 38),
(26, '1', '', '', '', '', 39),
(27, '1', '', '', '', '', 40),
(28, '1', '', '', '', '', 41),
(29, '1', '', '', '', '', 42),
(30, '1', '', '', '', '', 43),
(31, '1', '', '', '', '', 44),
(32, '1', '', '', '', '', 45),
(33, '1', '', '', '', '', 46),
(34, '1', '', '', '', '', 47),
(35, '1', '', '', '', '', 48),
(36, '1', '', '', '', '', 49),
(37, '1', '', '', '', '', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `metodo` varchar(50) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `metodo`, `id_venta`) VALUES
(1, 'paypal', 22),
(2, 'mercado_pago', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `inventario` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `talla` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `inventario`, `id_categoria`, `talla`, `color`) VALUES
(1, 'Tank Top', 'Finding perfect t-shirt', 60, 'cloth_1.jpg', 3, 3, 'XL', 'white'),
(2, 'Corater', 'Finding perfect products', 20, 'shoe_1.jpg', -7, 2, '25.5', 'blue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

CREATE TABLE `productos_venta` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_venta`
--

INSERT INTO `productos_venta` (`id`, `id_venta`, `id_producto`, `cantidad`, `precio`, `subtotal`) VALUES
(1, 1, 3, 7, 40, 280),
(2, 1, 2, 30, 20, 600),
(3, 2, 3, 1, 40, 40),
(4, 2, 2, 1, 20, 20),
(5, 3, 2, 1, 20, 20),
(6, 4, 3, 1, 40, 40),
(7, 6, 3, 1, 40, 40),
(8, 7, 2, 1, 20, 20),
(9, 7, 1, 1, 60, 60),
(10, 8, 1, 1, 60, 60),
(11, 9, 1, 1, 60, 60),
(12, 11, 1, 1, 60, 60),
(13, 12, 1, 1, 60, 60),
(14, 13, 2, 1, 20, 20),
(15, 14, 2, 1, 20, 20),
(16, 15, 1, 1, 60, 60),
(17, 16, 1, 6, 60, 360),
(18, 17, 52, 2, 109, 218),
(19, 17, 3, 3, 844, 2532),
(20, 18, 52, 2, 109, 218),
(21, 18, 44, 3, 291, 873),
(22, 19, 51, 1, 259, 259),
(23, 20, 52, 1, 109, 109),
(24, 21, 57, 3, 123, 369),
(25, 22, 52, 1, 109, 109),
(26, 23, 53, 1, 123, 123),
(27, 24, 56, 2, 123, 246),
(28, 24, 48, 2, 889, 1778),
(29, 25, 55, 1, 123, 123),
(30, 25, 45, 1, 922, 922),
(31, 26, 54, 1, 123, 123),
(32, 27, 52, 5, 109, 545),
(33, 27, 50, 1, 187, 187),
(34, 28, 51, 1, 259, 259),
(35, 29, 19, 2, 121.95, 243.9),
(36, 29, 2, 1, 20, 20),
(37, 29, 24, 1, 25.95, 25.95),
(38, 29, 23, 1, 166.95, 166.95),
(39, 30, 1, 1, 60, 60),
(40, 31, 1, 5, 60, 300),
(41, 32, 1, 1, 60, 60),
(42, 33, 1, 1, 60, 60),
(43, 34, 1, 1, 60, 60),
(44, 36, 1, 1, 60, 60),
(45, 37, 1, 1, 60, 60),
(46, 38, 1, 1, 60, 60),
(47, 39, 1, 1, 60, 60),
(48, 40, 1, 1, 60, 60),
(49, 41, 1, 1, 60, 60),
(50, 42, 2, 1, 20, 20),
(51, 43, 2, 2, 20, 40),
(52, 44, 2, 2, 20, 40),
(53, 45, 2, 2, 20, 40),
(54, 46, 2, 2, 20, 40),
(55, 47, 1, 6, 60, 360),
(56, 48, 1, 2, 60, 120),
(57, 49, 1, 2, 60, 120),
(58, 50, 1, 2, 60, 120);

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
('Carlos12', 53, '0000-00-00', 89076050);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img_perfil` varchar(300) NOT NULL,
  `nivel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `telefono`, `email`, `password`, `img_perfil`, `nivel`) VALUES
(16, 'Luis Alberto Romero', '123123', 'grijalvaromero@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'admin'),
(21, 'Luis Alberto Romero', '+526361167434', 'grijalvaromero@gmail.com', '994b579fe9db3e4b8b4642b13f126b407c1d11e2', 'default.jpg', 'cliente'),
(22, 'qwe qw', '123', 'test@gmail.ccom', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente'),
(23, '12 123', '123', 'grijalvaromero@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente'),
(24, 'asd asd', '123', 'test@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 'default.jpg', 'cliente'),
(25, ' ', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'default.jpg', 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `total` double NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_usuario`, `total`, `fecha`) VALUES
(29, 25, 456.8, '2021-12-07 17:12:06'),
(30, 25, 60, '2021-12-07 17:12:42'),
(31, 25, 300, '2021-12-07 10:12:17'),
(32, 25, 60, '2021-12-07 10:12:36'),
(33, 25, 60, '2021-12-07 10:12:49'),
(34, 25, 60, '2021-12-07 16:12:30'),
(35, 25, 0, '2021-12-07 16:12:31'),
(36, 25, 60, '2021-12-07 16:12:21'),
(37, 25, 60, '2021-12-07 16:12:06'),
(38, 25, 60, '2021-12-07 16:12:54'),
(39, 25, 60, '2021-12-07 16:12:32'),
(40, 25, 60, '2021-12-08 17:12:04'),
(41, 25, 60, '2021-12-08 17:12:36'),
(42, 25, 20, '2021-12-08 17:12:59'),
(43, 25, 40, '2021-12-08 13:12:10'),
(44, 25, 40, '2021-12-08 14:12:19'),
(45, 25, 40, '2021-12-08 14:12:10'),
(46, 25, 40, '2021-12-08 14:12:11'),
(47, 25, 360, '2021-12-08 14:12:53'),
(48, 25, 120, '2021-12-08 14:12:06'),
(49, 25, 120, '2021-12-08 14:12:06'),
(50, 25, 120, '2021-12-08 14:12:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id_banco`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colore`
--
ALTER TABLE `colore`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deposito`
--
ALTER TABLE `deposito`
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `tipo_tar` (`tipo_tar`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id_envio`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  ADD PRIMARY KEY (`id`);

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

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `colore`
--
ALTER TABLE `colore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cupones`
--
ALTER TABLE `cupones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `productos_venta`
--
ALTER TABLE `productos_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
