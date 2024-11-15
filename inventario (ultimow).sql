-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2024 a las 22:37:57
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
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_inv` date DEFAULT curdate(),
  `unidad` varchar(50) DEFAULT 'Und'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `item`, `descripcion`, `cantidad`, `fecha_inv`, `unidad`) VALUES
(1, '0000001', 'LAMINA AC.LC. A-36 25mm.', 100, '2024-10-02', 'kg'),
(3, '0000003', 'LAMPARA LED 4\"VSM4458 V24 F/NEGRO.', 30, '2024-10-04', 'und'),
(6, '0000008', 'ANGULO AC.CIAL.2 1/2x2 1/2x3/16', 5, '2024-10-07', 'kg'),
(7, '0000009', 'TUERCA HEX ARTILLERA RO.3/4\"', 6, '2024-10-08', 'und'),
(8, '0000010', 'ACOPLE HEMBRA PARA LUCES 7-POLOS.', 0, '2024-10-09', 'und'),
(9, '0000011', 'ARANDELA PLANA GALV.3/8\".', 2, '2024-10-10', 'und'),
(10, '0000012', 'ARANDELA PLANA GALV.5/16\".', 3, '2024-10-11', 'und'),
(11, '0000013', 'BISAGRA TUBULAR 1/2\" O.', 0, '2024-10-12', 'und'),
(12, '0000014', 'CABEZA ACOPLAMIENTO 1/2NPTF 1011:E/S.', 450, '2024-10-13', 'und'),
(13, '0000015', 'CABLE COBRE ENCAUCHETADO 2x16 T/VEHICULO', 25, '2024-10-14', 'm'),
(14, '0000016', 'CABLE AC.PLASTIFICADO 1/16\" A 1/8\".', 100, '2024-10-15', 'm'),
(15, '0000017', 'PERFIL ALUM.DUCTO CAJA MH AB-19300008', 66, '2024-10-16', 'm'),
(16, '0000018', 'CALCOM.  12 VOLTIOS EH-1403000.', 55, '2024-10-17', 'und'),
(17, '0000019', 'CALCOM.  CONEX.ELECT.ABS+PG EH-1200100', 44, '2024-10-18', 'und'),
(18, '0000020', 'CALCOM.  DE APRIETE EH-0500200.', 87, '2024-10-19', 'und'),
(19, '0000021', 'CALCOM. INSPECCION FINAL EH-0200300.', 9, '2024-10-20', 'und'),
(20, '0000022', 'CALCOM. ROMARCO-90x1500mm+TEL-40x930m', 2, '2024-10-21', 'und'),
(21, '0000023', 'CALCOMANIA TAPACUBO ROMARCO.', 545, '2024-10-22', 'und'),
(22, '0000024', 'CAMARA FRENO AIRE T-3030 3/8NPT 1/2PASA', 650, '2024-10-23', 'und'),
(23, '0000025', 'CAUCHO GUARDAPOLVO-610x800mm-.', 2, '2024-10-24', 'und'),
(24, '0000026', 'CAUCHO PARACHOQUE CONICO EH-0100100', 125, '2024-10-25', 'und'),
(25, '0000027', 'otro', 250, '2024-10-29', 'Unidad'),
(26, '0000028', 'otromas', 120, '2024-10-29', 'Unidad'),
(27, '0000029', 'otro registro editado', 256, '2024-10-30', 'Unidad'),
(29, '0000030', 'item repetido', 50, '2024-10-23', '30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `tipo` enum('Administrador','Usuario') DEFAULT 'Usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `contrasena`, `tipo`) VALUES
(1, 'admin', 'admin@example.com', '1234', 'Administrador'),
(2, 'wilton', 'wilton@example.com', '1234', 'Usuario'),
(3, 'Gerardo', 'gerardo@gmail.com', '1234', 'Usuario'),
(4, 'yuliana C', 'yulio@gmail.com', '1234', 'Usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_item` (`item`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
