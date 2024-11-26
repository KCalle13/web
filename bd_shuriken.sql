-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2023 a las 15:55:59
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_shuriken`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(10, 'Comic'),
(11, 'Manga'),
(12, 'Figuras'),
(13, 'Funko');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `correo_electronico`, `telefono`, `direccion`) VALUES
(1, 'Rodrigo', 'Nina', 'nina@gmail.com', '999525654', 'JV AMERICAS 125'),
(2, 'Dann', 'Chipana', 'chipana@gmail.com', '996452145', 'AV PINTO 857'),
(3, 'Breyan', 'Huiza', 'breyan@gmail.com', '999954223', 'AV INTERNACIONAL NRO. 789'),
(4, 'Juan ', 'Torres', 'torres@gmail.com', '988555652', 'AV BEGONIAS 147'),
(5, 'Luis', 'Vasco', 'vasco@gmail.com', '999999999', 'AV CIRCUNVALACIÓN 896'),
(6, 'María', 'Gómez', 'maria.gomez@gmail.com', '998877665', 'Avenida Principal 456'),
(7, 'Pedro', 'López', 'pedro.lopez@gmail.com', '987654321', 'Calle Secundaria 789'),
(8, 'Ana', 'Hernández', 'ana.hernandez@gmail.com', '955443322', 'Plaza Mayor 101'),
(9, 'Carlos', 'Ramírez', 'carlos.ramirez@gmail.com', '944332211', 'Boulevard Central 222'),
(10, 'Laura', 'Pérez', 'laura.perez@gmail.com', '933221100', 'Calle Peatonal 333'),
(11, 'Sergio', 'Rodríguez', 'sergio.rodriguez@gmail.com', '922110011', 'Avenida Comercial 444'),
(12, 'Mariana', 'García', 'mariana.garcia@gmail.com', '911009988', 'Paseo del Parque 555'),
(13, 'Andrés', 'Martínez', 'andres.martinez@gmail.com', '900998877', 'Callejón Estrecho 666'),
(14, 'Gabriela', 'Vargas', 'gabriela.vargas@gmail.com', '899887766', 'Pasaje Largo 777'),
(15, 'Jorge', 'Sánchez', 'jorge.sanchez@gmail.com', '888776655', 'Camino Angosto 888');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_registro` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `fecha_registro`) VALUES
(1, 'Juan García', 'juan.garcia@gmail.com', 'Hola, me gustaría obtener más información sobre sus productos.', '2023-07-01'),
(2, 'María Rodríguez', 'maria.rodriguez@gmail.com', '¡Excelente servicio al cliente! Gracias por su ayuda.', '2023-07-02'),
(3, 'Carlos Martínez', 'carlos.martinez@gmail.com', 'Tienen una gran variedad de productos. ¿Cuál me recomiendan para un regalo?', '2023-07-03'),
(4, 'Laura López', 'laura.lopez@gmail.com', 'Estoy interesada en su promoción de descuento. ¿Hasta cuándo estará vigente?', '2023-07-04'),
(5, 'José Hernández', 'jose.hernandez@gmail.com', 'Quisiera saber si hacen envíos internacionales.', '2023-07-05'),
(6, 'Ana Morales', 'ana.morales@gmail.com', '¿Tienen disponible el producto con el ID 11? Estoy muy interesada en comprarlo.', '2023-07-06'),
(7, 'Miguel Fernández', 'miguel.fernandez@gmail.com', 'Excelente tienda, definitivamente volveré a comprar.', '2023-07-07'),
(8, 'Sofía González', 'sofia.gonzalez@gmail.com', 'Necesito ayuda con un pedido que realicé. ¿Me pueden asistir?', '2023-07-08'),
(9, 'Pedro Vargas', 'pedro.vargas@gmail.com', '¿Cuál es su política de devoluciones?', '2023-07-09'),
(10, 'Elena Jiménez', 'elena.jimenez@gmail.com', 'Me encanta su selección de figuras de acción.', '2023-07-10'),
(11, 'Alejandro Silva', 'alejandro.silva@gmail.com', '¿Cuál es el tiempo estimado de entrega para un pedido?', '2023-07-11'),
(12, 'Isabella Torres', 'isabella.torres@gmail.com', '¿Puedo cancelar un pedido si aún no ha sido enviado?', '2023-07-12'),
(13, 'Fernando Reyes', 'fernando.reyes@gmail.com', '¿Aceptan tarjetas de crédito internacionales?', '2023-07-13'),
(14, 'Gabriela Méndez', 'gabriela.mendez@gmail.com', 'Me gustaría realizar una compra al por mayor, ¿tienen descuentos por cantidad?', '2023-07-14'),
(15, 'Ricardo Guzmán', 'ricardo.guzman@gmail.com', '¿Cómo puedo realizar el seguimiento de mi pedido?', '2023-07-15'),
(16, 'Valentina Castro', 'valentina.castro@gmail.com', 'Excelente atención al cliente, muy amables.', '2023-07-16'),
(17, 'Javier Ortega', 'javier.ortega@gmail.com', '¿Tienen opciones de envío exprés?', '2023-07-17'),
(18, 'Gabriela Méndez', 'gabriela.mendez@gmail.com', 'Me gustaría saber si hacen envíos a mi país.', '2023-07-18'),
(19, 'Lucía Sánchez', 'lucia.sanchez@gmail.com', '¿Cuál es el costo de envío para pedidos internacionales?', '2023-07-19'),
(20, 'Emilio Velázquez', 'emilio.velazquez@gmail.com', 'Quisiera saber si tienen figuritas de anime.', '2023-07-20'),
(21, 'Valeria Delgado', 'valeria.delgado@gmail.com', '¿Cuál es su política de reembolsos?', '2023-07-21'),
(22, 'Diego Mendoza', 'diego.mendoza@gmail.com', 'Me gustaría hacer una consulta sobre el proceso de pago.', '2023-07-22'),
(23, 'Carmen Acosta', 'carmen.acosta@gmail.com', '¿Tienen descuentos especiales para clientes frecuentes?', '2023-07-23'),
(24, 'Gustavo Morales', 'gustavo.morales@gmail.com', '¿Cómo puedo aplicar un código de descuento?', '2023-07-24'),
(25, 'Camila Ríos', 'camila.rios@gmail.com', 'Estoy interesada en la figura de Batman, ¿la tienen disponible?', '2023-07-25'),
(26, 'Martín Peña', 'martin.pena@gmail.com', '¿Cuál es el proceso de garantía para los productos?', '2023-07-26'),
(27, 'Daniela Alvarado', 'daniela.alvarado@gmail.com', '¿Tienen figuras de películas de ciencia ficción?', '2023-07-27'),
(28, 'Roberto Rivas', 'roberto.rivas@gmail.com', 'Me gustaría saber si hacen envíos a Canadá.', '2023-07-28'),
(29, 'María Delgado', 'maria.delgado@gmail.com', '¿Cuál es el tiempo de entrega para pedidos nacionales?', '2023-07-29'),
(30, 'Joaquín Vargas', 'joaquin.vargas@gmail.com', '¿Cuál es la política de cambios y devoluciones?', '2023-07-30'),
(31, 'Gabriela Aguilar', 'gabriela.aguilar@gmail.com', 'Quisiera saber si tienen figuras de superhéroes.', '2023-07-31'),
(32, 'sdsd', 'sdsd@gamil.com', 'sdsdsd', '2023-08-01'),
(33, 'sdsd', 'sdsd@gamil.com', 'sdsdsd', '2023-08-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_pedido`
--

CREATE TABLE `detalles_pedido` (
  `id` int(11) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles_pedido`
--

INSERT INTO `detalles_pedido` (`id`, `precio`, `cantidad`, `id_pedido`, `id_producto`) VALUES
(1, 52.00, 2, 1, 11),
(2, 45.00, 1, 1, 13),
(3, 70.00, 1, 2, 12),
(4, 80.00, 1, 2, 20),
(5, 42.00, 1, 3, 15),
(6, 35.00, 1, 3, 17),
(7, 110.00, 1, 4, 19),
(8, 45.00, 1, 4, 13),
(9, 80.00, 1, 5, 12),
(10, 35.00, 1, 5, 17),
(11, 52.00, 2, 6, 11),
(12, 45.00, 1, 6, 13),
(13, 70.00, 1, 7, 12),
(14, 38.00, 1, 7, 17),
(15, 110.00, 1, 8, 19),
(16, 42.00, 1, 8, 15),
(17, 80.00, 1, 9, 20),
(18, 35.00, 1, 9, 17),
(19, 52.00, 2, 10, 11),
(20, 45.00, 1, 10, 13),
(21, 70.00, 1, 11, 12),
(22, 80.00, 1, 11, 20),
(23, 42.00, 1, 12, 15),
(24, 35.00, 1, 12, 17),
(25, 110.00, 1, 13, 19),
(26, 45.00, 1, 13, 13),
(27, 80.00, 1, 14, 12),
(28, 35.00, 1, 14, 17),
(29, 52.00, 2, 15, 11),
(30, 45.00, 1, 15, 13),
(31, 70.00, 1, 16, 12),
(32, 80.00, 1, 16, 20),
(33, 42.00, 1, 17, 15),
(34, 35.00, 1, 17, 17),
(35, 110.00, 1, 18, 19),
(36, 42.00, 1, 18, 15),
(37, 80.00, 1, 19, 12),
(38, 35.00, 1, 19, 17),
(39, 52.00, 2, 20, 11),
(40, 45.00, 1, 20, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `cantidad_disponible` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `costo_envio` decimal(12,2) NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `estado` varchar(20) NOT NULL DEFAULT '''Pendiente''',
  `tipo_pago` int(11) NOT NULL DEFAULT 1,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `fecha`, `costo_envio`, `monto`, `estado`, `tipo_pago`, `id_cliente`) VALUES
(1, '2023-08-01', 5.00, 50.00, 'Entregado', 1, 1),
(2, '2023-08-02', 7.50, 65.00, 'Entregado', 1, 1),
(3, '2023-08-02', 5.00, 80.00, 'Enviado', 1, 2),
(4, '2023-08-03', 6.00, 45.00, 'Enviado', 1, 3),
(5, '2023-08-03', 8.00, 95.00, 'Pendiente', 1, 4),
(6, '2023-08-04', 7.50, 55.00, 'Pendiente', 1, 5),
(7, '2023-08-04', 5.00, 60.00, 'Pendiente', 1, 1),
(8, '2023-08-05', 6.50, 75.00, 'Pendiente', 1, 2),
(9, '2023-08-05', 5.00, 50.00, 'Pendiente', 1, 3),
(10, '2023-08-06', 7.00, 70.00, 'Pendiente', 1, 4),
(11, '2023-08-06', 5.00, 40.00, 'Pendiente', 1, 5),
(12, '2023-08-07', 6.00, 85.00, 'Pendiente', 1, 1),
(13, '2023-08-07', 5.00, 60.00, 'Pendiente', 1, 2),
(14, '2023-08-08', 7.50, 75.00, 'Pendiente', 1, 3),
(15, '2023-08-08', 5.00, 50.00, 'Pendiente', 1, 4),
(16, '2023-08-09', 8.00, 95.00, 'Pendiente', 1, 5),
(17, '2023-08-09', 5.00, 60.00, 'Pendiente', 1, 1),
(18, '2023-08-10', 7.50, 65.00, 'Pendiente', 1, 2),
(19, '2023-08-10', 5.00, 80.00, 'Pendiente', 1, 3),
(20, '2023-08-11', 6.00, 45.00, 'Pendiente', 1, 4),
(21, '2023-08-11', 8.00, 95.00, 'Pendiente', 1, 5),
(30, '2023-08-02', 7.00, 120.00, 'Pendiente', 1, 2),
(31, '2023-08-02', 5.50, 80.00, 'Pendiente', 1, 3),
(32, '2023-08-01', 4.00, 95.00, 'Pendiente', 1, 4),
(33, '2023-08-01', 6.00, 60.00, 'Pendiente', 1, 5),
(34, '2023-08-02', 5.00, 70.00, 'Pendiente', 1, 1),
(35, '2023-08-02', 5.00, 50.00, 'Pendiente', 1, 1),
(51, '2023-08-05', 7.50, 80.00, 'Pendiente', 1, 3),
(52, '2023-08-10', 5.00, 55.00, 'Pendiente', 1, 4),
(53, '2023-08-18', 10.00, 120.00, 'Pendiente', 1, 1),
(54, '2023-08-23', 8.00, 75.00, 'Pendiente', 1, 5),
(55, '2023-08-31', 6.50, 70.00, 'Pendiente', 1, 2),
(56, '2023-09-03', 12.00, 100.00, 'Pendiente', 1, 3),
(57, '2023-09-08', 8.50, 70.00, 'Pendiente', 1, 2),
(58, '2023-09-15', 6.00, 60.00, 'Pendiente', 1, 5),
(59, '2023-09-22', 9.00, 85.00, 'Pendiente', 1, 4),
(60, '2023-09-30', 7.50, 75.00, 'Pendiente', 1, 1),
(61, '2023-10-04', 8.00, 70.00, 'Pendiente', 1, 5),
(62, '2023-10-11', 6.50, 65.00, 'Entregado', 1, 4),
(63, '2023-10-17', 10.50, 100.00, 'Entregado', 1, 3),
(64, '2023-10-24', 7.00, 75.00, 'Entregado', 1, 2),
(65, '2023-10-31', 5.50, 60.00, 'Entregado', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(11, 'Batman', 'Juguete', 56.00, 52.00, 1, '20230710031343.jpg', 13),
(12, 'Deadpool', 'juguete', 80.00, 70.00, 1, '20230710031409.jpg', 13),
(13, 'Joker', 'juguete', 50.00, 45.00, 1, '20230710031458.jpg', 13),
(15, 'Tokyo Revengers', 'manga', 45.00, 42.00, 1, '20230710031802.jpg', 11),
(17, 'Spiderman', 'historieta para niños', 38.00, 35.00, 3, '20230710035005.jpg', 10),
(19, 'Gohan - Dragon Ball Z', 'JUGUETE', 117.00, 110.00, 2, '20230710040902.jpg', 12),
(20, 'Thanos', 'Mundo Marvel', 85.00, 80.00, 3, '20230713233338.jpg', 13),
(21, 'Alphonse Elric', 'Full Metal Alchemist - Anime', 75.00, 0.00, 1, '20230713233659.jpg', 13),
(22, 'Shikamaru', 'Naruto Shipuden - Anime', 64.00, 60.00, 2, '20230713234715.jpg', 13),
(26, 'Mike Wazowski', 'monster university', 65.00, 65.00, 2, '20230728000143.jpg', 13),
(27, 'Johny Bravo', 'Cartoom', 45.00, 40.00, 1, '20230728000243.jpg', 13),
(28, 'Tanjiro', 'Demon Slayer - Anime', 85.00, 85.00, 4, '20230728000437.jpg', 13),
(29, 'Dexter', 'Cartoom', 64.00, 50.00, 2, '20230728000845.jpg', 13),
(30, 'Muzan Kibutsuji', 'Demon Slayer - Anime', 95.00, 90.00, 3, '20230728000937.jpg', 13),
(31, 'Goku', 'Dragon Ball GT - Anime', 125.00, 125.00, 2, '20230728002338.jpg', 12),
(32, 'Meliodas', 'Nanatzu No Taizai - Anime', 105.00, 100.00, 1, '20230728002436.jpg', 12),
(33, 'Giyu Tomioka', 'Demon Slayer - Anime', 300.00, 300.00, 1, '20230728070958.jpg', 12),
(34, 'Cell', 'Dragon Ball Z', 379.00, 379.00, 3, '20230728132928.jpg', 12),
(36, 'Spider-Verse', 'Marvel Legends Series Into the Spider-Verse - Spider-Man Noir & Ham', 229.00, 229.00, 2, '20230728133354.jpg', 12),
(37, 'Spider Man', 'Marvel Legends Gamerverse - Spider-Man 2', 199.90, 199.90, 2, '20230728133630.jpg', 12),
(38, 'NARUTO UZUMAKI \"KURAMA LINK MODE\"', 'NARUTO SHIPPUDEN - NARUTO UZUMAKI \"KURAMA LINK MODE\" - SH FIGUARTS', 240.00, 240.00, 2, '20230728134323.jpg', 12),
(39, 'BYAKUYA KICHIKI', 'BLEACH - BYAKUYA KICHIKI - SH FIGUARTS', 199.90, 199.90, 3, '20230728134538.jpg', 12),
(40, 'WONDER WOMAN', 'IRON STUDIOS MINICO - WONDER WOMAN', 139.00, 139.00, 2, '20230728135441.jpg', 12),
(41, 'Cooler (Final Form)', 'Bandai Ichibansho Dragon Ball Z: Back to the Film Estatua - Cooler (Final Form)', 399.90, 399.90, 3, '20230729131840.jpg', 12),
(42, 'Golden Frieza', 'Bandai Ichibansho Estatua Dragon Ball Super - Golden Frieza', 299.90, 299.90, 2, '20230729132053.jpg', 12),
(43, 'Sasuke Uchiha', 'Figura Sasuke Uchiha Naruto Shippuden Grandista Nero', 299.90, 299.90, 2, '20230729132701.jpg', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` int(11) NOT NULL,
  `fecha_reembolso` date NOT NULL,
  `monto` decimal(12,2) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(6, 'dann', 'Dann Chipana', '10e7b30d8f61e75d28a03ec651f8b112'),
(7, 'breyan', 'Breyan Huiza', 'b8aad3de4c6132e1837461f085d72d67'),
(8, 'rodrigo', 'Rodrigo Nina', '2e247e2eb505c42b362e80ed4d05b078');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido_detalle` (`id_pedido`),
  ADD KEY `id_producto_detalle` (`id_producto`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto_inventario` (`id_producto`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente_pedido` (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_pedido` (`id_pedido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles_pedido`
--
ALTER TABLE `detalles_pedido`
  ADD CONSTRAINT `id_pedido_detalle` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `id_producto_detalle` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `id_producto_inventario` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `id_cliente_pedido` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `id_categoria_productos` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `fk_reembolso_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
