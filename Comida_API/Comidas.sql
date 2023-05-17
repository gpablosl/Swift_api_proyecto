-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 17-05-2023 a las 22:44:44
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
  `imagen` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Comidas`
--

INSERT INTO `Comidas` (`id`, `nombre`, `tipo`, `costo`, `pais`, `saludable`, `rapida`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', 'Carne triple', '$355', 'Italia', 'No', 'Si', 'SW8SQFRCNgmzsIC2NoZeM2KdOaDtzbOeGTpw3P3D.jpg', '2023-05-17 20:42:38', '2023-05-18 03:55:02'),
(2, 'Hamburguesa', 'Triple bbq', '$140', 'Alemania', 'No', 'Si', 'zZ5mDE3fQ4eBIHaTEbEqCM0T4VpKZP2jqzEepZaU.jpg', '2023-05-17 20:42:38', '2023-05-18 03:55:13'),
(3, 'Spaghetti', 'Rojo', '$180', 'Italia', 'No', 'No', 'QJQIx5mOwzHo0AkaQTFkjcUy8yBWlqDGoq9wNiUA.jpg', '2023-05-17 20:42:38', '2023-05-18 03:55:22'),
(4, 'Tacos', 'bistec', '$20', 'México', 'No', 'No', '2YcwzZ4nxKNc4mr5UaT5YihkyvTI4nWvpGVVnk1u.jpg', '2023-05-17 20:42:38', '2023-05-18 03:56:04'),
(5, 'Hamburguesa', 'Doble', '$150', 'Alemania', 'No', 'No', '24I9yABEGGodxFOJOrxymNJfYuxbYVRooERSlP9S.webp', '2023-05-17 20:42:38', '2023-05-18 03:56:12'),
(6, 'Pizza', 'Pepperoni', '$220', 'Italia', 'No', 'Si', 'IwmAJc4rfZc5CwDJHnq1kRbKBIb7yNYxDEX8Nyzb.jpg', '2023-05-17 20:42:38', '2023-05-18 03:56:18'),
(7, 'Sushi', 'Nigiri', '$200', 'Japón', 'Si', 'No', 'BTJsEm2hc7dgQyGcSopu87vxejRCrXQ21e08sy2p.jpg', '2023-05-17 20:42:38', '2023-05-18 03:56:33'),
(8, 'Mole', 'Poblano', '$150', 'México', 'Si', 'No', '4E9taqjGUC6CCiR1fLmokw3wYv4s8uaZ2Y4CBKHc.jpg', '2023-05-17 20:42:38', '2023-05-18 03:56:42'),
(9, 'HotDog', 'Salchipapa', '$80', 'Estados Unidos', 'No', 'Si', 'Vpsc7X3vkKAucKbE8bJv7bJ0yK7wz1wT02AVr0Sp.jpg', '2023-05-17 20:42:38', '2023-05-18 03:56:52'),
(10, 'Torta', 'Ahogada', '$120', 'México', 'No', 'Si', 'WVCCj200FNZ8UFDUxrY7mDSuEZYFNWwmFjvAtrLw.jpg', '2023-05-17 20:42:38', '2023-05-18 03:57:20');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
