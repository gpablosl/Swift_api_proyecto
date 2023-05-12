-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 10-05-2023 a las 22:01:37
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comidas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comidas`
--

CREATE TABLE `Comidas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `costo` varchar(255) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `saludable` varchar(255) NOT NULL,
  `rapida` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Comidas`
--

INSERT INTO `Comidas` (`id`, `nombre`, `tipo`, `costo`, `pais`, `saludable`, `rapida`, `imagen`) VALUES
(1, 'Pizza', 'Carne triple', '$355', 'Italia', 'No', 'Si', 'pizza'),
(2, 'Hamburguesa', 'Triple bbq', '$140 ', 'Alemania', 'No', 'Si', 'hamburguesa'),
(3, 'Spaghetti', 'Rojo', '$180', 'Italia', 'No', 'No', 'imagen'),
(4, 'Tacos', 'bistec', '$20', 'México', 'No', 'No', 'imagen'),
(5, 'Hamburguesa', 'Doble', '$150', 'Alemania', 'No', 'No', 'Imagen'),
(6, 'Pizza', 'Pepperoni', '$220', 'Italia', 'No', 'Si', 'Imagen'),
(7, 'Sushi', 'Nigiri', '$200', 'Japón', 'Si', 'No', 'Imagen'),
(8, 'Mole', 'Poblano', '$150', 'México', 'Si', 'No', 'Imagen'),
(9, 'HotDog', 'Salchipapa', '$80', 'Estados Unidos', 'No', 'Si', 'Imagen'),
(10, 'Torta', 'Ahogada', '$120', 'México', 'No', 'Si', 'Imagen');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Comidas`
--
ALTER TABLE `Comidas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Comidas`
--
ALTER TABLE `Comidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
