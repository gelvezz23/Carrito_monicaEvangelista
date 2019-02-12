-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-03-2017 a las 17:42:36
-- Versión del servidor: 5.5.52-cll
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `modulext_carritodecompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `identidad` int(60) DEFAULT NULL,
  `nombre` text COLLATE utf8_bin NOT NULL,
  `apellido` text COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `celular` varchar(100) COLLATE utf8_bin NOT NULL,
  `fijo` int(11) NOT NULL,
  `correo` varchar(100) COLLATE utf8_bin NOT NULL,
  `terminos` text COLLATE utf8_bin NOT NULL,
  `cumplean` date NOT NULL,
  `fecharegistro` date NOT NULL,
  `barrio` text COLLATE utf8_bin NOT NULL,
  `frecuensede` text COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pais` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`identidad`, `nombre`, `apellido`, `direccion`, `celular`, `fijo`, `correo`, `terminos`, `cumplean`, `fecharegistro`, `barrio`, `frecuensede`, `id`, `pais`) VALUES
(1090503315, 'carlos mario', 'gomez gelvez', 'calle 20 bn # 4 - 53', '3124967845', 0, 'mao_23_@hotmail.com', 'si', '1997-02-22', '2015-05-15', 'tasajero', 'grancolombia', 1, 'colombia'),
(1090451648, 'YOLKI KAMILA', 'ORTIZ RODRIGUEZ ', 'MZ 2 C5 18 URB GIRASOLES', '2147483647', 5878345, 'KAMI_1821@HOTMAIL.COM', 'si', '1997-07-21', '2015-05-15', 'EL TRIGAL', 'AV GRAN COLOMBIA', 2, 'COLOMBIA'),
(1090, 'gabriel', 'hernandez', 'erp', '311', 1234, 'jghernandez15@gmail.com', 'si', '0000-00-00', '0000-00-00', 'erp', 'erp', 3, 'colombia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprar`
--

CREATE TABLE IF NOT EXISTS `comprar` (
  `nombre` text NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` int(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cedula` int(100) NOT NULL,
  `preciototal` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `productoimg` varchar(250) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `comprar`
--

INSERT INTO `comprar` (`nombre`, `correo`, `telefono`, `direccion`, `cedula`, `preciototal`, `cantidad`, `productoimg`, `id`) VALUES
('asfsa', 'paladines@hotmail.com', 12312, 'asfas', 123123, 1, 1, 'https://scontent-mia1-2.xx.fbcdn.net/v/t1.0-9/15589864_882815468487820_4470594232646790874_n.jpg?oh=5389430a5fa0c430b8b57c7260b07ecd&oe=58DA9579', 1),
('asfsa', 'paladines@hotmail.com', 12312, 'asfas', 123123, 1, 2, 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/13000196_1695412870739110_5186478584159048352_n.jpg?oh=d431786d9a9714ac0625d3cc12b4cf1f&oe=5777A810', 2),
('asfsa', 'paladines@hotmail.com', 12312, 'asfas', 123123, 1, 1, 'https://scontent-mia1-2.xx.fbcdn.net/v/t1.0-9/15589864_882815468487820_4470594232646790874_n.jpg?oh=5389430a5fa0c430b8b57c7260b07ecd&oe=58DA9579', 3),
('asfsa', 'paladines@hotmail.com', 12312, 'asfas', 123123, 1, 2, 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/13000196_1695412870739110_5186478584159048352_n.jpg?oh=d431786d9a9714ac0625d3cc12b4cf1f&oe=5777A810', 4),
('Jdjsbndd', '@gmail', 946495, 'Bsjsbd', 1090, 1, 1, 'https://scontent-mia1-2.xx.fbcdn.net/v/t1.0-9/15589864_882815468487820_4470594232646790874_n.jpg?oh=5389430a5fa0c430b8b57c7260b07ecd&oe=58DA9579', 5),
('gabriel', 'jghernandez15@gmail.com', 300, 'dsdfdf', 88211182, 1, 1, 'http://modulexts.com/img/logo.png', 6),
('Prueba 2', '@prueba2', 1234, 'Calls', 976421, 1, 1, 'http://modulexts.com/img/logo.png', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `categoria` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=53 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`, `categoria`) VALUES
(21, 'ejemplo sfas', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(29, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'pan'),
(30, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'torta'),
(31, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png\n', 1000, 'rcomida'),
(32, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(33, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(34, 'ejemplo', 'reloj', 'http://modulexts.com/img/logo.png', 1000, 'bebidas'),
(35, 'ejemplo', 'reloj', 'http://modulexts.com/img/logo.png', 1000, 'bebidas'),
(36, 'ejemplo', 'reloj', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(37, 'ejemplo', 'reloj', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(38, 'ejemplo', 'reloj', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(39, 'ejemplo', 'reloj', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(40, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png\n', 1000, 'pan'),
(41, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(42, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(43, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(44, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(45, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(46, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(47, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(48, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(49, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(50, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(51, 'ejemplo', 'accesorio', 'http://modulexts.com/img/logo.png', 1000, 'postre'),
(52, 'ejemplo', 'ropa', 'http://modulexts.com/img/logo.png', 1000, 'torta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Usuario` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Password` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Imagen` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nivel` text COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellido`, `Usuario`, `Password`, `Imagen`, `Nivel`) VALUES
(1, 'modulex', 'ts', 'modulex', '123456', '', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
