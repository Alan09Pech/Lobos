-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-04-2021 a las 22:31:25
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gclobos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_académicos`
--

CREATE TABLE `datos_académicos` (
  `idLobo` int(11) NOT NULL,
  `matricula` varchar(10) NOT NULL,
  `carrera` varchar(30) NOT NULL,
  `ingreso` int(5) NOT NULL,
  `guion` varchar(5) NOT NULL,
  `lienzo` varchar(6) NOT NULL,
  `abanderado` varchar(10) NOT NULL,
  `comandanteEB` varchar(18) NOT NULL,
  `vanDer` varchar(18) NOT NULL,
  `vanIzq` varchar(20) NOT NULL,
  `retDer` varchar(19) NOT NULL,
  `retIzq` varchar(22) NOT NULL,
  `caja` varchar(4) NOT NULL,
  `corneta` varchar(7) NOT NULL,
  `CO` varchar(19) NOT NULL,
  `cabCajero` varchar(11) NOT NULL,
  `cabCor` varchar(13) NOT NULL,
  `comandanteBG` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_médicos`
--

CREATE TABLE `datos_médicos` (
  `idLobo` int(11) NOT NULL,
  `seguroSocial` varchar(30) NOT NULL,
  `Tipo_Sangre` varchar(5) NOT NULL,
  `Enfermedad_Alergia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_personales`
--

CREATE TABLE `datos_personales` (
  `idLobo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `fechaNacimiento` varchar(15) NOT NULL,
  `sexo` varchar(6) NOT NULL,
  `calle` varchar(10) NOT NULL,
  `N°` varchar(15) NOT NULL,
  `Cruce` varchar(15) NOT NULL,
  `Colonia_Fracc` varchar(20) NOT NULL,
  `Municipio` varchar(20) NOT NULL,
  `codigoPostal` int(10) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `CURP` varchar(20) NOT NULL,
  `mail_Personal` varchar(30) NOT NULL,
  `mail_Institucional` varchar(30) NOT NULL,
  `perfil_Facebook` varchar(30) NOT NULL,
  `fechaIngreso` date NOT NULL,
  `Tel_Emergencia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(15) NOT NULL,
  `contraseña` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contraseña`) VALUES
('admin', 'adminLobo'),
('lobo', 'gcLobo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `datos_académicos`
--
ALTER TABLE `datos_académicos`
  ADD PRIMARY KEY (`idLobo`);

--
-- Indices de la tabla `datos_médicos`
--
ALTER TABLE `datos_médicos`
  ADD PRIMARY KEY (`idLobo`);

--
-- Indices de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`idLobo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `datos_académicos`
--
ALTER TABLE `datos_académicos`
  MODIFY `idLobo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `datos_médicos`
--
ALTER TABLE `datos_médicos`
  MODIFY `idLobo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `datos_personales`
--
ALTER TABLE `datos_personales`
  MODIFY `idLobo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
