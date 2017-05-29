-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-05-2017 a las 17:26:05
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `geo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `box`
--

CREATE TABLE `box` (
  `id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `box`
--

INSERT INTO `box` (`id`, `created_at`) VALUES
(1, '2017-01-25 20:22:04'),
(2, '2017-03-26 21:01:51'),
(3, '2017-04-04 23:00:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `image`, `name`, `description`, `created_at`) VALUES
(3, NULL, 'geo01f01', NULL, '2017-05-28 21:29:12'),
(4, NULL, 'geo01f02', NULL, '2017-05-28 21:29:51'),
(5, NULL, 'geo01f03', NULL, '2017-05-28 21:29:57'),
(6, NULL, 'geo01f04', NULL, '2017-05-28 21:30:03'),
(7, NULL, 'geo01f05', NULL, '2017-05-28 21:30:09'),
(8, NULL, 'geo01f06', NULL, '2017-05-28 21:30:14'),
(9, NULL, 'geo01f07', NULL, '2017-05-28 21:30:18'),
(10, NULL, 'geo01f08', NULL, '2017-05-28 21:30:23'),
(11, NULL, 'geo01f09', NULL, '2017-05-28 21:30:27'),
(12, NULL, 'geo01f10', NULL, '2017-05-28 21:30:35'),
(13, NULL, 'geo01f11', NULL, '2017-05-28 21:30:42'),
(14, NULL, 'geo01f12', NULL, '2017-05-28 21:30:47'),
(15, NULL, 'geo01f13', NULL, '2017-05-28 21:30:51'),
(16, NULL, 'geo01f14', NULL, '2017-05-28 21:30:55'),
(17, NULL, 'geo01f15', NULL, '2017-05-28 21:31:00'),
(18, NULL, 'geo01f16', NULL, '2017-05-28 21:31:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `short` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `val` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`id`, `short`, `name`, `kind`, `val`) VALUES
(1, 'title', 'Titulo del Sistema', 2, 'geo'),
(2, 'use_image_product', 'Utilizar Imagenes en los productos', 1, '1'),
(3, 'active_clients', 'Activar clientes', 1, '1'),
(4, 'active_providers', 'Activar proveedores', 1, '1'),
(5, 'active_categories', 'Activar categorias', 1, '1'),
(6, 'active_reports_word', 'Activar reportes en Word', 1, '1'),
(7, 'active_reports_excel', 'Activar reportes en Excel', 1, '1'),
(8, 'active_reports_pdf', 'Activar reportes en PDF', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geo01f01`
--

CREATE TABLE `geo01f01` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `correlativo` varchar(30) NOT NULL,
  `nombre_instalador` varchar(30) NOT NULL,
  `nombre_proyecto` varchar(30) NOT NULL,
  `localizacion` varchar(30) NOT NULL,
  `contrato_orden_trabajo` varchar(30) NOT NULL,
  `sector_trabajo` varchar(30) NOT NULL,
  `area_aceptada` tinyint(1) NOT NULL,
  `fecha_proyecto` datetime NOT NULL,
  `aceptado_rechazado` varchar(11) NOT NULL,
  `fecha_aceptacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `geo01f01`
--

INSERT INTO `geo01f01` (`id`, `id_usuario`, `correlativo`, `nombre_instalador`, `nombre_proyecto`, `localizacion`, `contrato_orden_trabajo`, `sector_trabajo`, `area_aceptada`, `fecha_proyecto`, `aceptado_rechazado`, `fecha_aceptacion`) VALUES
(12, 1, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 127, '2017-05-30 00:00:00', '1', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `q` float DEFAULT NULL,
  `operation_type_id` int(11) DEFAULT NULL,
  `sell_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operation_type`
--

CREATE TABLE `operation_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operation_type`
--

INSERT INTO `operation_type` (`id`, `name`) VALUES
(1, 'entrada'),
(2, 'salida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `phone1` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id`, `image`, `name`, `lastname`, `company`, `address1`, `address2`, `phone1`, `phone2`, `email1`, `email2`, `kind`, `created_at`) VALUES
(1, NULL, 'upsa', 'upsa', NULL, 'upsa', NULL, '7000000', NULL, 'upsa@gmail.com', NULL, 1, '2017-01-24 16:08:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_form`
--

CREATE TABLE `solicitud_form` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `correlativo` varchar(30) NOT NULL,
  `nombre_instalador` varchar(30) NOT NULL,
  `nombre_proyecto` varchar(30) NOT NULL,
  `localizacion` varchar(30) NOT NULL,
  `contrato_orden_trabajo` varchar(30) NOT NULL,
  `sector_trabajo` varchar(30) NOT NULL,
  `area_aceptada` int(11) NOT NULL,
  `fecha_proyecto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitud_form`
--

INSERT INTO `solicitud_form` (`id`, `id_usuario`, `correlativo`, `nombre_instalador`, `nombre_proyecto`, `localizacion`, `contrato_orden_trabajo`, `sector_trabajo`, `area_aceptada`, `fecha_proyecto`) VALUES
(14, 1, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 200, '2017-05-30'),
(15, 1, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 200, '2017-05-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `email`, `password`, `image`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'upsa', 'upsa', 'admin', 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', NULL, 1, 1, '2017-01-24 14:58:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short` (`short`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `geo01f01`
--
ALTER TABLE `geo01f01`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `operation_type_id` (`operation_type_id`),
  ADD KEY `sell_id` (`sell_id`);

--
-- Indices de la tabla `operation_type`
--
ALTER TABLE `operation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitud_form`
--
ALTER TABLE `solicitud_form`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `box`
--
ALTER TABLE `box`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `geo01f01`
--
ALTER TABLE `geo01f01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `operation_type`
--
ALTER TABLE `operation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `solicitud_form`
--
ALTER TABLE `solicitud_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_type` (`id`),
  ADD CONSTRAINT `operation_ibfk_3` FOREIGN KEY (`sell_id`) REFERENCES `sell` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
