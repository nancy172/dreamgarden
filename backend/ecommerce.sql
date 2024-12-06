-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2024 a las 08:15:52
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Cactáceas'),
(2, 'Colgantes'),
(3, 'Exóticas'),
(4, 'Tropicales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) UNSIGNED NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `imagen`, `id_categoria`) VALUES
(1, 'Cactus San Pedro', 7610.00, 'cactus_san_pedro.jpg', 1),
(2, 'Monstera Deliciosa', 7510.00, 'monstera_deliciosa.jpg', 4),
(3, 'Potus Colgante', 4800.00, 'potus_colgante.jpg', 2),
(4, 'Orquídea Phalaenopsis', 21300.00, 'orquidea_phalaenopsis.jpg', 3),
(5, 'Cactus Peyote', 3400.00, 'cactus_peyote.jpg', 1),
(6, 'Palmera Areca', 9800.00, 'palmera_areca.jpg', 4),
(7, 'Hiedra Inglesa', 6700.00, 'hiedra_inglesa.jpg', 2),
(8, 'Ave del Paraíso', 26300.00, 'ave_del_paraiso.jpg', 3),
(9, 'Cactus Espina de Pescado', 5200.00, 'cactus_espina_pescado.jpg', 1),
(10, 'Bromelia Guzmania', 12400.00, 'bromelia_guzmania.jpg', 4),
(11, 'Fucsia Colgante', 9500.00, 'fucsia_colgante.jpg', 2),
(12, 'Anthurium', 25300.00, 'anthurium.jpg', 3),
(13, 'Cactus Echinopsis', 5700.00, 'cactus_echinopsis.jpg', 1),
(14, 'Filodendro Xanadú', 8800.00, 'filodendro_xanadu.jpg', 4),
(15, 'Sedum Morganianum', 3500.00, 'sedum_morganianum.jpg', 2),
(16, 'Orquídea Dendrobium', 21000.00, 'orquidea_dendrobium.jpg', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
