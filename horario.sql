-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2023 a las 03:08:21
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `horario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `modulo_id` int(11) DEFAULT NULL,
  `Semestral` varchar(100) NOT NULL,
  `docente_vespertino_id` int(11) DEFAULT NULL,
  `horas_semestrales` int(11) DEFAULT NULL,
  `horas_semanales` int(11) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `carrera` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `modulo_id`, `Semestral`, `docente_vespertino_id`, `horas_semestrales`, `horas_semanales`, `nivel`, `carrera`) VALUES
(1, 1, 'Semestral', 1, 108, 6, 'I', 'Técnico en Ciberseguridad'),
(2, 2, 'Semestral', 2, 108, 6, 'I', 'Técnico en Ciberseguridad'),
(3, 3, 'Semestral', 3, 72, 4, 'I', 'Técnico en Ciberseguridad'),
(4, 4, 'Semestral', 4, 54, 3, 'I', 'Técnico en Ciberseguridad'),
(5, 5, 'Semestral', 5, 72, 4, 'I', 'Técnico en Ciberseguridad'),
(6, 6, 'Semestral', 6, 72, 4, 'I', 'Técnico en Ciberseguridad'),
(7, 7, 'Semestral', 7, 36, 2, 'I', 'Técnico en Ciberseguridad'),
(20, 8, 'Semestral', 1, 108, 6, 'III', 'Técnico en Ciberseguridad'),
(21, 9, 'Semestral', 2, 108, 6, 'III', 'Técnico en Ciberseguridad'),
(22, 10, 'Semestral', 8, 72, 4, 'III', 'Técnico en Ciberseguridad'),
(23, 11, 'Semestral', 3, 72, 4, 'III', 'Técnico en Ciberseguridad'),
(24, 12, 'Semestral', 9, 72, 4, 'III', 'Técnico en Ciberseguridad'),
(25, 13, 'Semestral', 10, 54, 3, 'III', 'Técnico en Ciberseguridad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clase`
--

CREATE TABLE `clase` (
  `id` int(11) NOT NULL,
  `bloque` varchar(50) DEFAULT NULL,
  `sala` varchar(50) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `id_modulo` int(11) DEFAULT NULL,
  `dia` varchar(50) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clase`
--

INSERT INTO `clase` (`id`, `bloque`, `sala`, `id_docente`, `id_modulo`, `dia`, `orden`, `nivel`) VALUES
(1, '19:15 - 19:55', 'LABORATORIO N°5', 2, 2, 'Lunes', 1, 'I'),
(2, '19:15 - 19:55', 'LABORATORIO N°5', 7, 7, 'Martes', 1, 'I'),
(3, '19:15 - 19:55', 'LABORATORIO N°5', 2, 2, 'Miercoles', 1, 'I'),
(4, '19:15 - 19:55', 'LABORATORIO N°5', 3, 3, 'Jueves', 1, 'I'),
(5, '19:15 - 19:55', 'LABORATORIO N°5', 5, 5, 'Viernes', 1, 'I'),
(6, '19:55 - 20:35', 'LABORATORIO N°5', 2, 2, 'Lunes', 2, 'I'),
(7, '19:55 - 20:35', 'LABORATORIO N°5', 7, 7, 'Martes', 2, 'I'),
(8, '19:55 - 20:35', 'LABORATORIO N°5', 2, 2, 'Miercoles', 2, 'I'),
(9, '19:55 - 20:35', 'LABORATORIO N°5', 3, 3, 'Jueves', 2, 'I'),
(10, '19:55 - 20:35', 'LABORATORIO N°5', 5, 5, 'Viernes', 2, 'I'),
(11, '20:45 - 21:25', 'LABORATORIO N°5', 2, 2, 'Lunes', 3, 'I'),
(12, '20:45 - 21:25', 'LABORATORIO N°5', 3, 3, 'Martes', 3, 'I'),
(13, '20:45 - 21:25', 'LABORATORIO N°5', 2, 2, 'Miercoles', 3, 'I'),
(14, '20:45 - 21:25', 'LABORATORIO N°5', 6, 6, 'Jueves', 3, 'I'),
(15, '20:45 - 21:25', 'LABORATORIO N°5', 4, 4, 'Viernes', 3, 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `nombre`) VALUES
(1, 'CRISTIAN MUÑOZ'),
(2, 'FRANCISO DIAZ'),
(3, 'PABLO VILCHES'),
(4, 'JORGE GODOY'),
(5, 'VANESSA CERDA'),
(6, 'HUGO ESCOBAR'),
(7, 'CRISTIAN ALBORNOZ'),
(8, 'ALVARO BASTIAS'),
(9, 'ROCIO VASQUEZ'),
(10, 'YASMINA STAPPUNG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`id`, `nombre`) VALUES
(1, 'Fundamentos de Redes de Datos (CCNA 1)'),
(2, 'Soporte en Hardware y Software'),
(3, 'Programación Básica'),
(4, 'Matemáticas'),
(5, 'Comunicación'),
(6, 'Uso de Tecnologías de la Información'),
(7, 'Desarrollo Personal'),
(8, 'Taller de Seguridad en Redes (CCNA Security)'),
(9, 'Administración de Sistemas Operativos de Red Windows'),
(10, 'Emprendimiento'),
(11, 'Seguridad en Aplicaciones Web y BBDD'),
(12, 'English Level Elementary'),
(13, 'Taller de Innovación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'cft', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modulo_id` (`modulo_id`),
  ADD KEY `docente_vespertino_id` (`docente_vespertino_id`);

--
-- Indices de la tabla `clase`
--
ALTER TABLE `clase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_docente` (`id_docente`),
  ADD KEY `id_modulo` (`id_modulo`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `clase`
--
ALTER TABLE `clase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`modulo_id`) REFERENCES `modulo` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`docente_vespertino_id`) REFERENCES `docente` (`id`);

--
-- Filtros para la tabla `clase`
--
ALTER TABLE `clase`
  ADD CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`),
  ADD CONSTRAINT `clase_ibfk_2` FOREIGN KEY (`id_modulo`) REFERENCES `modulo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
