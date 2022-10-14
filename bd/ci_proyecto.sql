-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2018 a las 20:03:20
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ci_proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buzon`
--

CREATE TABLE `buzon` (
  `id_buzon` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `mensaje` varchar(1000) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `buzon`
--

INSERT INTO `buzon` (`id_buzon`, `nombre`, `apellido`, `email`, `mensaje`, `fecha`, `estado`) VALUES
(4, 'Lean', 'Meza', 'lean@gmail.com', 'hola si quisiera consultar si existe la posibilidad de reveer la pagina en donde usualmente o esporadicamente se menciona acerca de los productos. Gracias', '2018-06-18', 0),
(5, 'Ariel', 'Sanchez', 'ariel@hotmail.com', 'hola como estas? es posible mandarme por correo electronico el catalogo completo de los productos disponibles? muchas gracias por su molestia', '2018-06-18', 0),
(6, 'Gonzalo', 'Rodriguez', 'gonzaRo@outlook.com', 'buenas tardes me gustaria saber en que horarios se encuentra disponible la atencion al consumidor? muchas gracias', '2018-06-18', 0),
(7, 'Tani', 'Billordo', 'billordotania@gmail.com', 'Buenos dias estoy interesada en saber la disponibilidad de las bombillas de oro blanco. Gracias', '2018-06-18', 0),
(8, 'Eric', 'Ojeda', 'eric@gmail.com', 'hola como esta? necesito saber donde se encuentra la centrar mas cerca a mi domicilio, gracias.', '2018-06-18', 0),
(9, 'Jorge', 'Perez', 'jorgeperez@gmail.com', 'Buenos dias, quisiera informarme mas sobre como hacer para comprar por tarjeta de credito visa y mastercard, desde ya muchas gracias.', '2018-07-03', 1),
(10, 'Analuz', 'Dahlquist', 'analuz.dahlquist@gmail.com', 'Hola como estas bla bla blaa bla bla', '2018-07-03', 1),
(11, 'Analia', 'Perez', 'a@hotmail.com', 'hola como estas?', '2018-07-27', 0),
(12, 'antonela', 'lopez', 'anto@gmail.co', '  hola como estas', '2018-07-27', 0),
(13, 'Analuz', 'Dahlquist', 'analuz.dahlquist@gmail.com', 'hola como estas espero que muy bien', '2018-08-11', 1),
(14, 'Alberto', 'Zalazar', 'albertzalazar@gmail.com', 'buenas tardes, necesito informacion de cuanto demoraria el envio al interior de argentina y el precio de tal, muchas gracias', '2018-12-07', 1),
(15, 'Alberto', 'Zalazar', 'albertzalazar@gmail.com', 'buenas tardes, necesito informacion de cuanto demoraria el envio al interior de argentina y el precio de tal, muchas gracias', '2018-12-07', 1),
(16, 'Joaquin', 'Ibarra', 'joaiba@gmail.com', 'hola como estas?\r\n', '2018-12-07', 0),
(17, 'Joaquin', 'Ibarra', 'joaiba@gmail.com', 'hola como estas?\r\n', '2018-12-07', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `descripcion`) VALUES
(1, 'Mate'),
(2, 'Bombilla'),
(3, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_compra` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `fecha` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id_compra`, `id_persona`, `fecha`) VALUES
(1, 3, '2018-07-03 09:53:16'),
(2, 5, '2018-07-03 09:54:53'),
(3, 5, '2018-07-03 09:55:22'),
(4, 7, '2018-07-03 09:56:37'),
(5, 7, '2018-07-03 09:56:49'),
(6, 7, '2018-07-03 09:57:11'),
(7, 7, '2018-07-03 09:57:26'),
(8, 5, '2018-07-03 10:17:38'),
(9, 5, '2018-07-03 10:21:27'),
(10, 5, '2018-07-03 10:43:51'),
(11, 21, '2018-07-11 15:46:34'),
(12, 3, '2018-12-19 00:57:54'),
(13, 3, '2018-12-19 01:00:10'),
(14, 3, '2018-12-19 01:02:34'),
(15, 3, '2018-12-19 01:02:57'),
(16, 3, '2018-12-19 01:03:04'),
(17, 3, '2018-12-19 01:03:07'),
(18, 3, '2018-12-19 01:03:11'),
(19, 3, '2018-12-19 01:03:15'),
(20, 3, '2018-12-19 01:03:19'),
(21, 3, '2018-12-19 01:03:21'),
(22, 3, '2018-12-19 01:03:23'),
(23, 3, '2018-12-19 01:03:30'),
(24, 3, '2018-12-19 01:03:36'),
(25, 3, '2018-12-19 01:03:40'),
(26, 3, '2018-12-19 01:03:44'),
(27, 3, '2018-12-19 01:04:01'),
(28, 3, '2018-12-19 01:09:46'),
(29, 3, '2018-12-19 01:13:06'),
(30, 3, '2018-12-19 01:13:50'),
(31, 3, '2018-12-19 01:16:05'),
(32, 3, '2018-12-19 01:17:29'),
(33, 3, '2018-12-19 01:20:49'),
(34, 3, '2018-12-19 01:21:06'),
(35, 3, '2018-12-19 01:22:07'),
(36, 3, '2018-12-19 01:24:38'),
(37, 3, '2018-12-19 01:24:51'),
(38, 3, '2018-12-19 01:24:55'),
(39, 3, '2018-12-19 01:25:00'),
(40, 3, '2018-12-19 01:25:05'),
(41, 3, '2018-12-19 01:25:29'),
(42, 3, '2018-12-19 01:25:42'),
(43, 3, '2018-12-19 01:25:59'),
(44, 3, '2018-12-19 01:26:46'),
(45, 22, '2018-12-19 15:18:19'),
(46, 22, '2018-12-19 15:19:06'),
(47, 22, '2018-12-19 15:33:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id_detalle` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `precio` decimal(5,0) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id_detalle`, `id_compra`, `id_producto`, `precio`, `cantidad`) VALUES
(1, 1, 1, '90', 1),
(2, 1, 4, '110', 1),
(3, 1, 7, '140', 1),
(4, 1, 9, '150', 1),
(5, 2, 21, '250', 1),
(6, 2, 5, '230', 1),
(7, 2, 4, '110', 1),
(8, 3, 23, '130', 1),
(9, 4, 5, '230', 1),
(10, 5, 5, '230', 1),
(11, 6, 3, '50', 1),
(12, 7, 5, '230', 1),
(13, 8, 6, '130', 2),
(14, 8, 4, '110', 1),
(15, 8, 5, '230', 2),
(16, 9, 4, '110', 2),
(17, 10, 4, '110', 1),
(18, 10, 3, '50', 1),
(19, 11, 1, '90', 1),
(20, 12, 1, '90', 1),
(21, 28, 1, '90', 1),
(22, 35, 1, '90', 1),
(23, 44, 3, '50', 1),
(24, 45, 3, '50', 1),
(25, 45, 4, '110', 1),
(26, 46, 3, '50', 1),
(27, 47, 1, '90', 1),
(28, 47, 3, '50', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1',
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `passconf` varchar(50) NOT NULL,
  `cookie` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `estado`, `nombre`, `apellido`, `email`, `telefono`, `password`, `passconf`, `cookie`, `id_perfil`, `direccion`, `pais`) VALUES
(1, 1, 'Analuz', 'Dahlquist', 'analuz.dahlquist@gmail.com', 3794342009, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 1, 'junin 2183', ''),
(2, 1, 'Viviana', 'Acevedo', 'viviacevedo@gmail.com', 1124938347, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 1, '', ''),
(3, 1, 'Ludmila', 'Aguirre', 'ludmi@gmail.com', 3795110979, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 1, 'Uruguay 1247', 'Argentina'),
(4, 1, 'Yoselin', 'Aguirre', 'yoseaguirre@hotmail.com', 3795074788, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(5, 1, 'Mailen', 'Acevedo', 'mailen@outlook.com', 1154812444, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(6, 0, 'Mercedes', 'Zalazar', 'merci@hotmail.com', 3795074788, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(7, 1, 'Barbara', 'Arana Laviosa', 'barbi@gmail.com', 3794694318, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(8, 1, 'Tamara', 'Arana Laviosa', 'tamy@outlook.com', 1124334465, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(9, 1, 'Marta', 'Chavez', 'martachavez@outlook.com', 3795342123, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(10, 1, 'Raul', 'Lopez', 'raullopez@outlook.com.ar', 3794345906, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(11, 1, 'Santiago', 'Noguera', 'santi@outlook.com.ar', 3794231200, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(12, 1, 'Julian', 'Serrano', 'juliserrano@gmail.com', 3794455329, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(13, 1, 'Britney', 'Spears', 'britney@hotmail.com', 379442617, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(14, 1, 'Elias', 'Gomez', 'eligomez@gmail.com', 3794235477, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(15, 1, 'Armando', 'Paredes', 'armando@outlook.com', 379423009, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(16, 1, 'Eric', 'Obrian Colon', 'ericobrian@gmail.com', 1123867545, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(17, 1, 'Sergio', 'Bargas', 'sergiobargas@otlook.com', 1123456789, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(18, 1, 'Lujan', 'Sanchez', 'lujansanchez@hotmail.com.ar', 115323456767, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(19, 1, 'Luciano', 'Cheti', 'luciano@outlook.com', 3777123421, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(20, 1, 'Zaira', 'Villalba', 'zaira@hotmail.com.ar', 3793215678, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(21, 1, 'daiana', 'Arana', 'dahlquist@gmail.com', 3794342009, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', ''),
(22, 1, 'Analuz', 'Dahlaquist', 'analuz@gmail.com', 1234567678, '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad', '', 2, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `codigo` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `precio` decimal(5,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `codigo`, `nombre`, `precio`, `stock`, `descripcion`, `img`, `estado`, `categoria_id`) VALUES
(1, 'A75B', 'Mate', '90', 0, 'Mate base redonda con soporte', '41.jpg', 1, 1),
(3, 'B52T', 'Bombilla', '50', 9, 'Bombilla de Alpaca', 'IMG_22801.jpg', 1, 2),
(4, 'A12S', 'Mate', '110', 333, 'Mate con base triangular', '30062A-A-400x400.jpg', 1, 1),
(5, 'B13S', 'Bombilla', '230', 44, 'Bombilla con punta de Oro Blanco', 'IMG_22821.jpg', 1, 2),
(6, 'A13S', 'Mate', '130', 48, 'Mate de madera tallada', '51.jpg', 1, 1),
(7, 'B14A', 'Bombilla', '140', 49, 'Bombilla de Oro Blanco', 'IMG_22841.jpg', 1, 2),
(8, 'A15A', 'Mate', '100', 45, 'Mate con detalles', 'a1daabcc77b781a047019fff306292c8.jpg', 1, 1),
(9, 'B16', 'Bombilla', '150', 29, 'Bombilla de Plata', 'IMG_22881.jpg', 1, 2),
(10, 'A17', 'Mate', '90', 55, 'Mate forrado en cuero', 'Mate-forrado-en-cuero.jpg', 1, 1),
(11, 'B18', 'Bombilla', '90', 30, 'Bombilla punta de Plata', 'IMG_22931.jpg', 1, 2),
(12, 'A19', 'Mate', '130', 35, 'Mate porongo Paraguayo', 'mate-porongo-D_NQ_NP_11947-MLU20052355111_022014-F.jpg', 1, 1),
(13, 'B22T', 'Bombilla', '155', 40, 'Bombilla de Plata', 'IMG_22941.jpg', 1, 2),
(14, 'A22T', 'Mate', '265', 40, 'Mate estilo Oriental', 'b56486224fc113e024041405869153ef.jpg', 1, 1),
(15, 'B55T', 'Bombilla', '165', 55, 'Bombilla boquilla Oro Blanco', 'IMG_22961.jpg', 1, 2),
(16, 'A55D', 'Mate', '175', 60, 'Mate estilo correntino', 'mates-de-calabaza-y-alpaca-D_NQ_NP_13629-MLA3310099950_102012-F.jpg', 1, 1),
(17, 'B59D', 'Bombilla', '205', 40, 'Bombillon pico de loro', 'IMG_23131.jpg', 1, 2),
(18, 'B58X', 'Bombilla', '200', 40, 'Bombilla para mate de plata criollo', 'IMG_23081.jpg', 1, 2),
(19, 'B88P', 'Bombilla', '320', 40, 'Bombilla de Plata colonial', 'IMG_23071.jpg', 1, 2),
(20, 'B40F', 'Bombilla', '300', 35, 'Bombilla de Plata ', 'img4.jpg', 1, 2),
(21, 'A40F', 'Mate', '250', 34, 'Mate forrado con cuero de carpincho', 'mate-porongo-forrado-en-carpincho-con-tiento.jpg', 1, 1),
(22, 'A50Y', 'Mate', '120', 35, 'Mate estilo Tucumano', 'porongo uruguayo.jpg', 1, 1),
(23, 'A750Y', 'Mate', '130', 34, 'Mate de porongo ', 'yerba-mate-porongo-2.jpg', 0, 1),
(24, 'A850Y', 'Mate', '110', 35, 'Mate grabado sobre cuero', '29718353_1908009569529907_5350068326280200192_n.jpg', 1, 1),
(28, '123', 'Mate michingo', '100', 23, 'Mate organico de porongo', 'a1daabcc77b781a047019fff306292c8.jpg', 1, 1),
(29, 'zxczc', 'Mate Chileno', '23', 23, 'Mate organico', 'a1daabcc77b781a047019fff306292c8.jpg', 1, 1),
(30, 'zzzzzzzzzzzz', 'Mate Correntino', '24', 10, 'Mate con una fina terminacion', '41.jpg', 1, 1),
(31, 'ex145', 'Jarra Artesanal', '251', 2, 'Hermosa Jarra', 'IMG-20150630-WA0038-1.jpg', 1, 3),
(35, '1234', 'bombilla de metal', '60', 2, 'hermosa bombilla', 'IMG-20150630-WA0038-1.jpg', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `email`, `password`, `id_persona`) VALUES
(1, 'analuz.dahlquist@gmail.com', '25d55ad283aa400af464c76d713c07ad', 1),
(2, 'viviacevedo@gmail.com', '25d55ad283aa400af464c76d713c07ad', 2),
(3, 'ludmi@gmail.com', '25d55ad283aa400af464c76d713c07ad', 3),
(4, 'yoseaguirre@hotmail.com', '25d55ad283aa400af464c76d713c07ad', 4),
(5, 'mailen@outlook.com', '25d55ad283aa400af464c76d713c07ad', 5),
(6, 'merci@hotmail.com', '25d55ad283aa400af464c76d713c07ad', 6),
(7, 'barbi@gmail.com', '25d55ad283aa400af464c76d713c07ad', 7),
(8, 'tamy@outlook.com', '25d55ad283aa400af464c76d713c07ad', 8),
(9, 'martachavez@outlook.com', '25d55ad283aa400af464c76d713c07ad', 9),
(10, 'raullopez@outlook.com.ar', '25d55ad283aa400af464c76d713c07ad', 10),
(11, 'santi@outlook.com.ar', '25d55ad283aa400af464c76d713c07ad', 11),
(12, 'juliserrano@gmail.com', '25d55ad283aa400af464c76d713c07ad', 12),
(13, 'britney@hotmail.com', '25d55ad283aa400af464c76d713c07ad', 13),
(14, 'eligomez@gmail.com', '25d55ad283aa400af464c76d713c07ad', 14),
(15, 'armando@outlook.com', '25d55ad283aa400af464c76d713c07ad', 15),
(16, 'ericobrian@gmail.com', '25d55ad283aa400af464c76d713c07ad', 16),
(17, 'sergiobargas@otlook.com', '25d55ad283aa400af464c76d713c07ad', 17),
(18, 'lujansanchez@hotmail.com.ar', '25d55ad283aa400af464c76d713c07ad', 18),
(19, 'luciano@outlook.com', '25d55ad283aa400af464c76d713c07ad', 19),
(20, 'zaira@hotmail.com.ar', '25d55ad283aa400af464c76d713c07ad', 20),
(21, 'dahlquist@gmail.com', '25d55ad283aa400af464c76d713c07ad', 21),
(22, 'analuz@gmail.com', '25d55ad283aa400af464c76d713c07ad', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `documento` varchar(213) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `producto` varchar(255) NOT NULL,
  `precio` double(12,2) NOT NULL,
  `iva` double NOT NULL,
  `estado` varchar(213) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `documento`, `cliente`, `producto`, `precio`, `iva`, `estado`, `fecha`) VALUES
(1, 'Factura', 'David E. Gary', 'Shuttering Plywood', 1500.00, 5, 'Pendiente', '2017-01-14'),
(2, 'Factura', 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, 16, 'Rechazada', '2017-01-08'),
(3, 'Factura', 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, 17, 'Pendiente', '2016-12-29'),
(4, 'Factura', 'Clara C. Kulik', 'Spin Driller Machine', 350.00, 11, 'Pendiente', '2016-12-30'),
(5, 'Factura', 'Christopher M. Victory', 'Shopping Trolley', 100.00, 19, 'Aprobada', '2017-01-01'),
(6, 'Boleta', 'Jessica G. Fischer', 'CCTV Camera', 800.00, 10, 'Pendiente', '2017-01-02'),
(7, 'Boleta', 'Roger R. White', 'Truck Tires', 2000.00, 12, 'Rechazada', '2016-12-28'),
(8, 'Boleta', 'Susan C. Richardson', 'Glass Block', 200.00, 11, 'Aprobada', '2017-01-04'),
(9, 'Ticket', 'David C. Jury', 'Casing Pipes', 500.00, 20, 'Pendiente', '2016-12-27'),
(10, 'Ticket', 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, 17, 'Rechazada', '2016-12-30'),
(11, 'Ticket', 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, 8, 'Aprobada', '2017-01-03'),
(12, 'Factura', 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, 18, 'Rechazada', '2017-01-01'),
(13, 'Factura', 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, 15, 'Pendiente', '2016-12-30'),
(14, 'Factura', 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, 14, 'Aprobada', '2017-01-02'),
(15, 'Boleta', 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, 12, 'Pendiente', '2016-12-29'),
(16, 'Boleta', 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, 14, 'Rechazada', '2017-01-05'),
(17, 'Boleta', 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, 11, 'Aprobada', '2017-01-04'),
(18, 'Ticket', 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, 14, 'Rechazada', '2017-01-03'),
(19, 'Ticket', 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, 15, 'Pendiente', '2017-01-03'),
(20, 'Ticket', 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, 13, 'Aprobada', '2017-01-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buzon`
--
ALTER TABLE `buzon`
  ADD PRIMARY KEY (`id_buzon`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `id_perfil` (`id_perfil`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `categoria_id_2` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `id_persona` (`id_persona`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `buzon`
--
ALTER TABLE `buzon`
  MODIFY `id_buzon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD CONSTRAINT `detalle_compra_ibfk_2` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
