-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-06-2017 a las 21:08:49
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
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id`, `image`, `name`, `description`, `created_at`) VALUES
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
(17, NULL, 'geo01f15', NULL, '2017-05-28 21:31:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geo01f01`
--

CREATE TABLE `geo01f01` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_solicitud_form` int(11) NOT NULL,
  `aceptado_rechazado` varchar(11) NOT NULL,
  `fecha_aceptacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `geo01f01`
--

INSERT INTO `geo01f01` (`id`, `id_usuario`, `id_solicitud_form`, `aceptado_rechazado`, `fecha_aceptacion`) VALUES
(5, 1, 18, '1', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `person`
--

INSERT INTO `person` (`id`, `name`, `lastname`, `address`, `phone`, `email`, `kind`, `created_at`) VALUES
(1, 'upsa', 'upsa', 'upsa', '7000000', 'upsa@gmail.com', 1, '2017-01-24 16:08:55');

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
(18, 1, 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 'prueba', 600, '2017-02-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `id_person`, `username`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 1, 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2017-01-24 14:58:12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `geo01f01`
--
ALTER TABLE `geo01f01`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_solicitud_form` (`id_solicitud_form`);

--
-- Indices de la tabla `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitud_form`
--
ALTER TABLE `solicitud_form`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_person` (`id_person`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `geo01f01`
--
ALTER TABLE `geo01f01`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `solicitud_form`
--
ALTER TABLE `solicitud_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `geo01f01`
--
ALTER TABLE `geo01f01`
  ADD CONSTRAINT `geo01f01_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `geo01f01_ibfk_2` FOREIGN KEY (`id_solicitud_form`) REFERENCES `solicitud_form` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_form`
--
ALTER TABLE `solicitud_form`
  ADD CONSTRAINT `solicitud_form_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_person`) REFERENCES `person` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
