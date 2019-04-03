-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-04-2019 a las 18:05:18
-- Versión del servidor: 5.6.41
-- Versión de PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add empresa', 6, 'add_empresa'),
(17, 'Can change empresa', 6, 'change_empresa'),
(18, 'Can delete empresa', 6, 'delete_empresa'),
(19, 'Can add secuencia', 7, 'add_secuencia'),
(20, 'Can change secuencia', 7, 'change_secuencia'),
(21, 'Can delete secuencia', 7, 'delete_secuencia'),
(22, 'Can add secuencia disponible', 8, 'add_secuenciadisponible'),
(23, 'Can change secuencia disponible', 8, 'change_secuenciadisponible'),
(24, 'Can delete secuencia disponible', 8, 'delete_secuenciadisponible'),
(25, 'Can add plan de cuentas', 9, 'add_plandecuentas'),
(26, 'Can change plan de cuentas', 9, 'change_plandecuentas'),
(27, 'Can delete plan de cuentas', 9, 'delete_plandecuentas'),
(28, 'Can add plan de cuentas definidas', 10, 'add_plandecuentasdefinidas'),
(29, 'Can change plan de cuentas definidas', 10, 'change_plandecuentasdefinidas'),
(30, 'Can delete plan de cuentas definidas', 10, 'delete_plandecuentasdefinidas'),
(31, 'Can add configuracion inicial', 11, 'add_configuracioninicial'),
(32, 'Can change configuracion inicial', 11, 'change_configuracioninicial'),
(33, 'Can delete configuracion inicial', 11, 'delete_configuracioninicial'),
(34, 'Can add impuestos', 12, 'add_impuestos'),
(35, 'Can change impuestos', 12, 'change_impuestos'),
(36, 'Can delete impuestos', 12, 'delete_impuestos'),
(37, 'Can add impuesto valor', 13, 'add_impuestovalor'),
(38, 'Can change impuesto valor', 13, 'change_impuestovalor'),
(39, 'Can delete impuesto valor', 13, 'delete_impuestovalor'),
(40, 'Can add area', 14, 'add_area'),
(41, 'Can change area', 14, 'change_area'),
(42, 'Can delete area', 14, 'delete_area'),
(43, 'Can add cargo', 15, 'add_cargo'),
(44, 'Can change cargo', 15, 'change_cargo'),
(45, 'Can delete cargo', 15, 'delete_cargo'),
(46, 'Can add horario', 16, 'add_horario'),
(47, 'Can change horario', 16, 'change_horario'),
(48, 'Can delete horario', 16, 'delete_horario'),
(49, 'Can add personal', 17, 'add_personal'),
(50, 'Can change personal', 17, 'change_personal'),
(51, 'Can delete personal', 17, 'delete_personal'),
(52, 'Can add user', 18, 'add_user'),
(53, 'Can change user', 18, 'change_user'),
(54, 'Can delete user', 18, 'delete_user'),
(55, 'Can add categoria', 19, 'add_categoria'),
(56, 'Can change categoria', 19, 'change_categoria'),
(57, 'Can delete categoria', 19, 'delete_categoria'),
(58, 'Can add proveedor', 20, 'add_proveedor'),
(59, 'Can change proveedor', 20, 'change_proveedor'),
(60, 'Can delete proveedor', 20, 'delete_proveedor'),
(61, 'Can add catalogo', 21, 'add_catalogo'),
(62, 'Can change catalogo', 21, 'change_catalogo'),
(63, 'Can delete catalogo', 21, 'delete_catalogo'),
(64, 'Can add bodega', 22, 'add_bodega'),
(65, 'Can change bodega', 22, 'change_bodega'),
(66, 'Can delete bodega', 22, 'delete_bodega'),
(67, 'Can add fila', 23, 'add_fila'),
(68, 'Can change fila', 23, 'change_fila'),
(69, 'Can delete fila', 23, 'delete_fila'),
(70, 'Can add columna', 24, 'add_columna'),
(71, 'Can change columna', 24, 'change_columna'),
(72, 'Can delete columna', 24, 'delete_columna'),
(73, 'Can add espacio', 25, 'add_espacio'),
(74, 'Can change espacio', 25, 'change_espacio'),
(75, 'Can delete espacio', 25, 'delete_espacio'),
(76, 'Can add medida', 26, 'add_medida'),
(77, 'Can change medida', 26, 'change_medida'),
(78, 'Can delete medida', 26, 'delete_medida'),
(79, 'Can add categoria', 27, 'add_categoria'),
(80, 'Can change categoria', 27, 'change_categoria'),
(81, 'Can delete categoria', 27, 'delete_categoria'),
(82, 'Can add producto', 28, 'add_producto'),
(83, 'Can change producto', 28, 'change_producto'),
(84, 'Can delete producto', 28, 'delete_producto'),
(85, 'Can add servicio', 29, 'add_servicio'),
(86, 'Can change servicio', 29, 'change_servicio'),
(87, 'Can delete servicio', 29, 'delete_servicio'),
(88, 'Can add movimientos', 30, 'add_movimientos'),
(89, 'Can change movimientos', 30, 'change_movimientos'),
(90, 'Can delete movimientos', 30, 'delete_movimientos'),
(91, 'Can add orden pedido', 31, 'add_ordenpedido'),
(92, 'Can change orden pedido', 31, 'change_ordenpedido'),
(93, 'Can delete orden pedido', 31, 'delete_ordenpedido'),
(94, 'Can add orden compra', 32, 'add_ordencompra'),
(95, 'Can change orden compra', 32, 'change_ordencompra'),
(96, 'Can delete orden compra', 32, 'delete_ordencompra'),
(97, 'Can add ordenes pedido', 33, 'add_ordenespedido'),
(98, 'Can change ordenes pedido', 33, 'change_ordenespedido'),
(99, 'Can delete ordenes pedido', 33, 'delete_ordenespedido'),
(100, 'Can add ordenes compra', 34, 'add_ordenescompra'),
(101, 'Can change ordenes compra', 34, 'change_ordenescompra'),
(102, 'Can delete ordenes compra', 34, 'delete_ordenescompra'),
(103, 'Can add ventas', 35, 'add_ventas'),
(104, 'Can change ventas', 35, 'change_ventas'),
(105, 'Can delete ventas', 35, 'delete_ventas'),
(106, 'Can add cliente', 36, 'add_cliente'),
(107, 'Can change cliente', 36, 'change_cliente'),
(108, 'Can delete cliente', 36, 'delete_cliente'),
(109, 'Can add custodia', 37, 'add_custodia'),
(110, 'Can change custodia', 37, 'change_custodia'),
(111, 'Can delete custodia', 37, 'delete_custodia'),
(112, 'Can add venta', 38, 'add_venta'),
(113, 'Can change venta', 38, 'change_venta'),
(114, 'Can delete venta', 38, 'delete_venta'),
(115, 'Can add respuesta sri', 39, 'add_respuestasri'),
(116, 'Can change respuesta sri', 39, 'change_respuestasri'),
(117, 'Can delete respuesta sri', 39, 'delete_respuestasri'),
(118, 'Can add cartera', 40, 'add_cartera'),
(119, 'Can change cartera', 40, 'change_cartera'),
(120, 'Can delete cartera', 40, 'delete_cartera'),
(121, 'Can add interes', 41, 'add_interes'),
(122, 'Can change interes', 41, 'change_interes'),
(123, 'Can delete interes', 41, 'delete_interes'),
(124, 'Can add impuesto', 42, 'add_impuesto'),
(125, 'Can change impuesto', 42, 'change_impuesto'),
(126, 'Can delete impuesto', 42, 'delete_impuesto'),
(127, 'Can add porcentaje impuesto', 43, 'add_porcentajeimpuesto'),
(128, 'Can change porcentaje impuesto', 43, 'change_porcentajeimpuesto'),
(129, 'Can delete porcentaje impuesto', 43, 'delete_porcentajeimpuesto'),
(130, 'Can add asiento', 44, 'add_asiento'),
(131, 'Can change asiento', 44, 'change_asiento'),
(132, 'Can delete asiento', 44, 'delete_asiento'),
(133, 'Can add libro diario', 45, 'add_librodiario'),
(134, 'Can change libro diario', 45, 'change_librodiario'),
(135, 'Can delete libro diario', 45, 'delete_librodiario'),
(136, 'Can add libro mayor', 46, 'add_libromayor'),
(137, 'Can change libro mayor', 46, 'change_libromayor'),
(138, 'Can delete libro mayor', 46, 'delete_libromayor'),
(139, 'Can add balance inicial', 47, 'add_balanceinicial'),
(140, 'Can change balance inicial', 47, 'change_balanceinicial'),
(141, 'Can delete balance inicial', 47, 'delete_balanceinicial'),
(142, 'Can add retencion', 48, 'add_retencion'),
(143, 'Can change retencion', 48, 'change_retencion'),
(144, 'Can delete retencion', 48, 'delete_retencion'),
(145, 'Can add correo', 49, 'add_correo'),
(146, 'Can change correo', 49, 'change_correo'),
(147, 'Can delete correo', 49, 'delete_correo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_usuario`
--

CREATE TABLE IF NOT EXISTS `auth_usuario` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish2_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `has_bodega` tinyint(1) NOT NULL,
  `has_financiero` tinyint(1) NOT NULL,
  `personal_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `auth_usuario`
--

INSERT INTO `auth_usuario` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `has_bodega`, `has_financiero`, `personal_id`) VALUES
(1, 'pbkdf2_sha256$24000$CDkamoHpOHbF$jM2hoB9p50outr6dACmGB7OcUmv2rBZRIaBe95b3VuE=', '2019-04-01 22:59:47.896839', 1, 'admin', '', '', 'diego.loachamin@rgmanagementcorp.com', 1, 1, '2019-01-18 17:59:58.077676', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_usuario_groups`
--

CREATE TABLE IF NOT EXISTS `auth_usuario_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_usuario_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_usuario_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas_bodega`
--

CREATE TABLE IF NOT EXISTS `bodegas_bodega` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `encargado_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas_columna`
--

CREATE TABLE IF NOT EXISTS `bodegas_columna` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas_espacio`
--

CREATE TABLE IF NOT EXISTS `bodegas_espacio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad_minima` int(11) DEFAULT NULL,
  `cantidad_maxima` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `columna_id` int(11) NOT NULL,
  `fila_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas_fila`
--

CREATE TABLE IF NOT EXISTS `bodegas_fila` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartera_cartera`
--

CREATE TABLE IF NOT EXISTS `cartera_cartera` (
  `id` int(11) NOT NULL,
  `fec_facturacion` date DEFAULT NULL,
  `dias_credito` int(11) DEFAULT NULL,
  `fec_vencimiento` date DEFAULT NULL,
  `factura` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `v_factura` double DEFAULT NULL,
  `v_total` double DEFAULT NULL,
  `interes` int(11) DEFAULT NULL,
  `abono_1` double DEFAULT NULL,
  `fec_bono_1` date DEFAULT NULL,
  `abono_2` double DEFAULT NULL,
  `fec_bono_2` date DEFAULT NULL,
  `v_pendiente` double DEFAULT NULL,
  `fec_pago` date DEFAULT NULL,
  `fec_anulado` date DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `dias_mora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartera_interes`
--

CREATE TABLE IF NOT EXISTS `cartera_interes` (
  `id` int(11) NOT NULL,
  `interes_30` int(11) NOT NULL,
  `interes_60` int(11) NOT NULL,
  `interes_90` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_cliente`
--

CREATE TABLE IF NOT EXISTS `clientes_cliente` (
  `id` int(11) NOT NULL,
  `nombres` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `ruc` varchar(13) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes_cliente`
--

INSERT INTO `clientes_cliente` (`id`, `nombres`, `ruc`, `direccion`, `telefono`, `correo`, `codigo`, `estado`) VALUES
(1, 'MARELI CORPORACIÓN TEXMARELI CIA. LTDA.', '1891767184001', 'Av. Los Chasquis y Pasaje José Ignacio Canelos', '0232406718', 'contabilidad@texmareli.com', '0000001', 1),
(2, 'Juan Carlos Freire', '1891767184001', 'SAN ANTONIO', '023433719', 'jfreire5@yahoo.com', '0000002', 1),
(3, 'Corporación  Comercial Ecuatoriana AGSO S.A', '1792624762001', 'Av. Granda Centeno Oe 4-210 y Baron de Carondelet', '022444102', 'atello@agso.com.ec', '0000003', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_asiento`
--

CREATE TABLE IF NOT EXISTS `contabilidad_asiento` (
  `id` int(11) NOT NULL,
  `asiento` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contabilidad_asiento`
--

INSERT INTO `contabilidad_asiento` (`id`, `asiento`, `estado`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_balanceinicial`
--

CREATE TABLE IF NOT EXISTS `contabilidad_balanceinicial` (
  `id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `valor` double NOT NULL,
  `cuenta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_impuesto`
--

CREATE TABLE IF NOT EXISTS `contabilidad_impuesto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contabilidad_impuesto`
--

INSERT INTO `contabilidad_impuesto` (`id`, `codigo`, `nombre`, `estado`) VALUES
(1, '1', 'RENTA', 1),
(2, '2', 'IVA', 1),
(3, '6', 'ISD', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_librodiario`
--

CREATE TABLE IF NOT EXISTS `contabilidad_librodiario` (
  `id` int(11) NOT NULL,
  `debe` double DEFAULT NULL,
  `haber` double DEFAULT NULL,
  `descripcion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `fuente` int(11) DEFAULT NULL,
  `referencia` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `comprobante` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `mayorizado` int(11) NOT NULL,
  `asiento_id` int(11),
  `cuenta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_libromayor`
--

CREATE TABLE IF NOT EXISTS `contabilidad_libromayor` (
  `id` int(11) NOT NULL,
  `librodiario_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_porcentajeimpuesto`
--

CREATE TABLE IF NOT EXISTS `contabilidad_porcentajeimpuesto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `porcentaje` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `impuesto_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contabilidad_porcentajeimpuesto`
--

INSERT INTO `contabilidad_porcentajeimpuesto` (`id`, `codigo`, `nombre`, `porcentaje`, `estado`, `impuesto_id`) VALUES
(1, '9', 'IVA 10%', '10', 1, 2),
(2, '10', 'IVA 20%', '20', 1, 2),
(3, '1', 'IVA 30%', '30', 1, 2),
(4, '11', 'IVA 50%', '50', 1, 2),
(5, '2', 'IVA 70%', '70', 1, 2),
(6, '3', 'IVA 100%', '100', 1, 2),
(7, '303', 'HONORARIOS PROFESIONALES', '10', 1, 1),
(8, '343', 'OTRAS RETENCIONES APLICABLES EL 1%', '1', 1, 1),
(9, '344', 'OTRAS RETENCIONES APLICABLES EL 2%', '2', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contabilidad_retencion`
--

CREATE TABLE IF NOT EXISTS `contabilidad_retencion` (
  `id` int(11) NOT NULL,
  `fec_emision` date NOT NULL,
  `tipo_comprobante` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `numero_comprobante` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fec_comprobante` date DEFAULT NULL,
  `ejercicio_fiscal` int(11) NOT NULL,
  `base_imponible` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_impuesto` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `porcentaje_impuesto` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `valor_retenido` double NOT NULL,
  `num_autorizacion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fec_autorizacion` datetime(6) DEFAULT NULL,
  `clave_autorizacion` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `impuesto_id` int(11) DEFAULT NULL,
  `secuencia_id` int(11),
  `estado` int(11),
  `proveedor_id` int(11)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `contabilidad_retencion`
--

INSERT INTO `contabilidad_retencion` (`id`, `fec_emision`, `tipo_comprobante`, `numero_comprobante`, `fec_comprobante`, `ejercicio_fiscal`, `base_imponible`, `cod_impuesto`, `porcentaje_impuesto`, `valor_retenido`, `num_autorizacion`, `fec_autorizacion`, `clave_autorizacion`, `impuesto_id`, `secuencia_id`, `estado`, `proveedor_id`) VALUES
(1, '2019-01-23', '01', '001001000002810', '2019-01-23', 2019, '60.0', '344', '2', 1.2, '2301201907200100200000000417924424195', '2019-01-24 00:36:03.000000', '2301201907179244241900120010020000000041234567810', 9, 2, 1, 2),
(2, '2019-01-23', '01', '001001000004498', '2019-01-23', 2019, '5.62', '1', '30', 1.69, '2301201907200100200000000517924424191', '2019-01-24 00:39:23.000000', '2301201907179244241900120010020000000051234567816', 3, 6, 1, 1),
(3, '2019-01-23', '01', '001001000004498', '2019-01-23', 2019, '46.88', '343', '1', 0.47, '2301201907200100200000000517924424191', '2019-01-24 00:39:23.000000', '2301201907179244241900120010020000000051234567816', 8, 6, 1, 1),
(4, '2019-01-25', '01', '002045000006872', '2019-01-24', 2019, '20.0', '344', '2', 0.4, '2501201907200100200000000617924424193', '2019-01-25 13:44:41.000000', '2501201907179244241900120010020000000061234567810', 9, 7, 1, 3),
(5, '2019-01-31', '01', '001001000067610', '2019-01-30', 2019, '3.57', '343', '1', 0.04, '3101201907200100200000000717924424193', '2019-01-31 14:10:55.000000', '3101201907179244241900120010020000000071234567811', 8, 8, 1, 4),
(6, '2019-01-31', '01', '001001000067609', '2019-01-30', 2019, '16.97', '343', '1', 0.17, '3101201907200100200000000817924424198', '2019-01-31 14:13:01.000000', '3101201907179244241900120010020000000081234567817', 8, 9, 1, 4),
(7, '2019-01-31', '01', '002001000000008', '2019-01-30', 2019, '17.86', '343', '1', 0.18, '3101201907200100200000000917924424192', '2019-01-31 14:15:53.000000', '3101201907179244241900120010020000000091234567812', 8, 10, 1, 5),
(8, '2019-01-31', '01', '002001000000008', '2019-01-30', 2019, '2.14', '1', '30', 0.64, '3101201907200100200000000917924424192', '2019-01-31 14:15:53.000000', '3101201907179244241900120010020000000091234567812', 3, 10, 1, 5),
(9, '2019-02-05', '01', '001001000004523', '2019-02-04', 2019, '4.0', '344', '2', 0.08, '0502201907200100200000001017924424199', '2019-02-05 15:56:35.000000', '0502201907179244241900120010020000000101234567811', 9, 11, 1, 1),
(10, '2019-02-05', '01', '001001000004523', '2019-02-04', 2019, '0.48', '1', '30', 0.14, '0502201907200100200000001017924424199', '2019-02-05 15:56:35.000000', '0502201907179244241900120010020000000101234567811', 3, 11, 1, 1),
(11, '2019-02-05', '01', '001001000067765', '2019-02-04', 2019, '16.96', '344', '2', 0.34, '0502201907200100200000001117924424193', '2019-02-05 15:59:11.000000', '0502201907179244241900120010020000000111234567817', 9, 12, 1, 4),
(13, '2019-02-07', '01', '003001000002413', '2019-02-06', 2019, '39.29', '343', '1', 0.39, '0702201907200100200000001217924424197', '2019-02-07 19:11:04.000000', '0702201907179244241900120010020000000121234567811', 8, 13, 1, 9),
(14, '2019-02-08', '01', '001001000067899', '2019-02-08', 2019, '16.96', '343', '1', 0.17, '0802201907200100200000001317924424196', '2019-02-08 14:57:37.000000', '0802201907179244241900120010020000000131234567811', 8, 18, 1, 4),
(15, '2019-02-13', '01', '001001000066256', '2019-02-13', 2019, '32.21', '343', '1', 0.32, '1302201907200100200000001417924424191', '2019-02-13 22:42:07.000000', '1302201907179244241900120010020000000141234567818', 8, 19, 1, 10),
(16, '2019-02-15', '01', '002043000730885', '2019-02-15', 2019, '15.0', '344', '2', 0.3, '1502201907200100200000001517924424195', '2019-02-15 20:36:03.000000', '1502201907179244241900120010020000000151234567812', 9, 20, 1, 3),
(17, '2019-02-15', '01', '001001000032779', '2019-02-14', 2019, '371.8', '343', '1', 3.72, '1502201907200100200000001617924424191', '2019-02-15 20:53:47.000000', '1502201907179244241900120010020000000161234567818', 8, 21, 1, 11),
(18, '2019-02-15', '01', '001001000297493', '2019-02-11', 2019, '6.88', '343', '1', 0.07, '2502201907200100200000001717924424198', '2019-02-25 14:26:04.000000', '2502201907179244241900120010020000000171234567817', 8, 22, 1, 12),
(19, '2019-02-23', '01', '001001000000326', '2019-02-23', 2019, '607.15', '343', '1', 6.07, '2502201907200100200000001817924424192', '2019-02-25 14:34:43.000000', '2502201907179244241900120010020000000181234567812', 8, 23, 1, 13),
(20, '2019-02-23', '01', '001001000000326', '2019-02-23', 2019, '72.85', '1', '30', 21.86, '2502201907200100200000001817924424192', '2019-02-25 14:34:43.000000', '2502201907179244241900120010020000000181234567812', 3, 23, 1, 13),
(21, '2019-02-27', '01', '001001000068396', '2019-02-26', 2019, '35.26', '343', '1', 0.35, '2702201907200100200000001917924424196', '2019-02-27 13:35:58.000000', '2702201907179244241900120010020000000191234567817', 8, 24, 1, 4),
(22, '2019-02-27', '01', '001001000004561', '2019-02-27', 2019, '8.0', '343', '1', 0.08, '2702201907200100200000002017924424199', '2019-02-27 14:45:17.000000', '2702201907179244241900120010020000000201234567812', 8, 25, 1, 1),
(23, '2019-02-28', '01', '001001000004561', '2019-02-27', 2019, '8.0', '344', '2', 0.16, '2802201907200100200000002117924424198', '2019-02-28 20:32:10.000000', '2802201907179244241900120010020000000211234567812', 9, 26, 1, 1),
(24, '2019-02-28', '01', '001001000004561', '2019-02-27', 2019, '0.96', '2', '70', 0.67, '2802201907200100200000002117924424198', '2019-02-28 20:32:10.000000', '2802201907179244241900120010020000000211234567812', 5, 26, 1, 1),
(25, '2019-03-08', '01', '002043000781932', '2019-03-08', 2019, '20.0', '344', '2', 0.4, '0803201907200100200000002217924424191', '2019-03-08 13:46:22.000000', '0803201907179244241900120010020000000221234567817', 9, 27, 1, 3),
(26, '2019-02-11', '01', '023912000088465', '2019-02-11', 2019, '177.36', '343', '1', 1.77, '1003201907200100200000002317924424193', '2019-03-10 14:56:02.000000', '1003201907179244241900120010020000000231234567811', 8, 29, 1, 14),
(27, '2019-02-25', '01', '014008000159917', '2019-02-25', 2019, '211.64', '343', '1', 2.12, '1003201907200100200000002417924424198', '2019-03-10 14:58:03.000000', '1003201907179244241900120010020000000241234567815', 8, 30, 1, 15),
(28, '2019-02-28', '01', '001004000000091', '2019-03-28', 2019, '480.64', '343', '1', 4.81, '1003201907200100200000002517924424192', '2019-03-10 14:59:11.000000', '1003201907179244241900120010020000000251234567810', 8, 31, 1, 16),
(29, '2019-03-26', '01', '002045000008152', '2019-03-22', 2019, '20.0', '344', '2', 0.4, '2603201907200100200000002617924424198', '2019-03-26 17:20:09.000000', '2603201907179244241900120010020000000261234567817', 9, 32, 1, 3),
(30, '2019-03-29', '01', '001001000004619', '2019-03-29', 2019, '4.0', '344', '2', 0.08, '2903201907200100200000002717924424196', '2019-03-29 15:14:28.000000', '2903201907179244241900120010020000000271234567816', 9, 33, 1, 1),
(31, '2019-03-29', '01', '001001000004619', '2019-03-29', 2019, '0.48', '2', '70', 0.34, '2903201907200100200000002717924424196', '2019-03-29 15:14:28.000000', '2903201907179244241900120010020000000271234567816', 5, 33, 1, 1),
(32, '2019-03-29', '01', '001001000069282', '2019-03-29', 2019, '17.86', '343', '1', 0.18, '2903201907200100200000002817924424190', '2019-03-29 15:28:22.000000', '2903201907179244241900120010020000000281234567811', 8, 34, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correo_correo`
--

CREATE TABLE IF NOT EXISTS `correo_correo` (
  `id` int(11) NOT NULL,
  `destinatario` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `asunto` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `mensaje` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `adjunto` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `fecha_envio` datetime(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `correo_correo`
--

INSERT INTO `correo_correo` (`id`, `destinatario`, `asunto`, `mensaje`, `adjunto`, `estado`, `fecha_envio`) VALUES
(1, '["advancedrepairs@outlook.com", "betty.romo@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimado ADVANCED REPAIRS AR&FM CIA. LTDA. se adjunta retención', '', 1, '2019-01-24 00:36:11.227277'),
(2, '["naney2016@hotmail.com", "betty.romo@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimado ZOTAMINGA CHIPANTASI LUIS JORGE se adjunta retención', '', 1, '2019-01-24 00:39:31.326242'),
(3, '["atcliente.machachi@panavial.com", "betty.romo@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimado PANAMERICANA VIAL S. A. PANAVIAL se adjunta retención', '', 1, '2019-01-25 13:44:49.761793'),
(4, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "santy_megarepuestosty@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-01-31 14:11:03.739209'),
(5, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "santy_megarepuestosty@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-01-31 14:13:14.290602'),
(6, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "darwinandy@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-01-31 14:16:07.745810'),
(7, '["betty.romo@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Saludos Cordiales mediante la presente enviamos su respectiva Factura Electronica ', '', 1, '2019-02-05 15:04:39.481358'),
(8, '["betty.romo@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Saludos Cordiales mediante la presente enviamos su respectiva Factura Electronica ', '', 1, '2019-02-05 15:04:48.492984'),
(9, '["betty.romo@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Saludos Cordiales mediante la presente enviamos su respectiva Factura Electronica ', '', 1, '2019-02-05 15:04:59.425043'),
(10, '["betty.romo@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Saludos Cordiales mediante la presente enviamos su respectiva Factura Electronica ', '', 1, '2019-02-05 15:08:31.367140'),
(11, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "naney2016@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-05 15:56:44.793665'),
(12, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "santy_megarepuestosty@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-05 15:59:20.827590'),
(13, '["contabilidad@texmareli.com", "betty.romo@rgmanagementcorp.com", "facturacion_electronica@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Estimado(a) MARELI CORPORACIÓN TEXMARELI CIA. LTDA. RGMANAGEMENTCORP agradece su compra, adjuntamos su factura electronica con los siguientes datos:  Numero Autorizacion : 0502201901200100200000000517924424191   Fecha Autorizacion : 2019-02-05 11:04:02', '', 1, '2019-02-05 16:04:10.830488'),
(14, '["atello@agso.com.ec", "betty.romo@rgmanagementcorp.com", "facturacion_electronica@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Estimado(a) Corporación  Comercial Ecuatoriana AGSO S.A RGMANAGEMENTCORP agradece su compra, adjuntamos su factura electronica con los siguientes datos:  Numero Autorizacion : 0502201901200100200000000717924424199   Fecha Autorizacion : 2019-02-05 12:01:20', '', 1, '2019-02-05 17:01:29.623010'),
(15, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "ventas@imarcreaciones.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-07 19:11:13.152454'),
(16, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "santy_megarepuestosty@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-08 14:57:45.981367'),
(17, '["diego.loachamin@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Saludos Cordiales mediante la presente enviamos su respectiva Factura Electronica ', '', 1, '2019-02-11 17:20:16.121542'),
(18, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "imp.unitech@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-13 22:42:26.743420'),
(19, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "atcliente.machachi@panavial.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-15 20:36:28.067868'),
(20, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "raquelnunez@xpc.com.ec"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-15 20:54:00.880713'),
(21, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "info@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-25 14:26:11.952239'),
(22, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "info@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-25 14:34:50.901767'),
(23, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "santy_megarepuestosty@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-27 13:36:18.035029'),
(24, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "naney2016@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-27 14:45:33.539576'),
(25, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "naney2016@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-02-28 20:32:30.440643'),
(26, '["contabilidad@texmareli.com", "betty.romo@rgmanagementcorp.com", "facturacion_electronica@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Estimado(a) MARELI CORPORACIÓN TEXMARELI CIA. LTDA. RGMANAGEMENTCORP agradece su compra, adjuntamos su factura electronica con los siguientes datos:  Numero Autorizacion : 0703201901200100200000000817924424199   Fecha Autorizacion : 2019-03-07 19:13:46', '', 1, '2019-03-08 00:13:56.360851'),
(27, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "atcliente.machachi@panavial.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-03-08 13:46:36.483593'),
(28, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-03-10 14:56:10.152713'),
(29, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-03-10 14:58:11.437084'),
(30, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-03-10 14:59:21.162112'),
(31, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "atcliente.machachi@panavial.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-03-26 17:20:29.481507'),
(32, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "naney2016@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-03-29 15:15:19.484930'),
(33, '["facturacion_electronica@rgmanagementcorp.com", "betty.romo@rgmanagementcorp.com", "santy_megarepuestosty@hotmail.com"]', 'Retencion RGManagementcorp', 'Estimados mediante la presente adjuntamos su retención.', '', 1, '2019-03-29 15:28:45.709760'),
(34, '["contabilidad@texmareli.com", "betty.romo@rgmanagementcorp.com", "facturacion_electronica@rgmanagementcorp.com"]', 'Facturacion Electronica RGmanagementcorp', 'Estimado(a) MARELI CORPORACIÓN TEXMARELI CIA. LTDA. RGMANAGEMENTCORP agradece su compra, adjuntamos su factura electronica con los siguientes datos:  Numero Autorizacion : 0104201901200100200000000917924424192   Fecha Autorizacion : 2019-04-01 15:18:26', '', 1, '2019-04-01 20:18:37.113327');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custodias_custodia`
--

CREATE TABLE IF NOT EXISTS `custodias_custodia` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `bodega_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish2_ci,
  `object_repr` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(22, 'bodegas', 'bodega'),
(24, 'bodegas', 'columna'),
(25, 'bodegas', 'espacio'),
(23, 'bodegas', 'fila'),
(40, 'cartera', 'cartera'),
(41, 'cartera', 'interes'),
(36, 'clientes', 'cliente'),
(44, 'contabilidad', 'asiento'),
(47, 'contabilidad', 'balanceinicial'),
(42, 'contabilidad', 'impuesto'),
(45, 'contabilidad', 'librodiario'),
(46, 'contabilidad', 'libromayor'),
(43, 'contabilidad', 'porcentajeimpuesto'),
(48, 'contabilidad', 'retencion'),
(4, 'contenttypes', 'contenttype'),
(49, 'correo', 'correo'),
(37, 'custodias', 'custodia'),
(11, 'empresa', 'configuracioninicial'),
(6, 'empresa', 'empresa'),
(12, 'empresa', 'impuestos'),
(13, 'empresa', 'impuestovalor'),
(9, 'empresa', 'plandecuentas'),
(10, 'empresa', 'plandecuentasdefinidas'),
(7, 'empresa', 'secuencia'),
(8, 'empresa', 'secuenciadisponible'),
(30, 'movimientos', 'movimientos'),
(32, 'ordenescompra', 'ordencompra'),
(31, 'ordenespedido', 'ordenpedido'),
(14, 'personal', 'area'),
(15, 'personal', 'cargo'),
(16, 'personal', 'horario'),
(17, 'personal', 'personal'),
(27, 'productos', 'categoria'),
(26, 'productos', 'medida'),
(28, 'productos', 'producto'),
(29, 'productos', 'servicio'),
(21, 'proveedores', 'catalogo'),
(19, 'proveedores', 'categoria'),
(20, 'proveedores', 'proveedor'),
(34, 'secuencias', 'ordenescompra'),
(33, 'secuencias', 'ordenespedido'),
(35, 'secuencias', 'ventas'),
(18, 'seguridad', 'user'),
(5, 'sessions', 'session'),
(39, 'ventas', 'respuestasri'),
(38, 'ventas', 'venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'personal', '0001_initial', '2019-01-18 17:56:51.026998'),
(2, 'contenttypes', '0001_initial', '2019-01-18 17:56:51.557817'),
(3, 'contenttypes', '0002_remove_content_type_name', '2019-01-18 17:56:52.411221'),
(4, 'auth', '0001_initial', '2019-01-18 17:56:55.420780'),
(5, 'auth', '0002_alter_permission_name_max_length', '2019-01-18 17:56:55.950925'),
(6, 'auth', '0003_alter_user_email_max_length', '2019-01-18 17:56:55.997714'),
(7, 'auth', '0004_alter_user_username_opts', '2019-01-18 17:56:56.051691'),
(8, 'auth', '0005_alter_user_last_login_null', '2019-01-18 17:56:56.105106'),
(9, 'auth', '0006_require_contenttypes_0002', '2019-01-18 17:56:56.132812'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2019-01-18 17:56:56.174855'),
(11, 'seguridad', '0001_initial', '2019-01-18 17:57:00.119678'),
(12, 'admin', '0001_initial', '2019-01-18 17:57:01.355842'),
(13, 'admin', '0002_logentry_remove_auto_add', '2019-01-18 17:57:01.472483'),
(14, 'bodegas', '0001_initial', '2019-01-18 17:57:04.539194'),
(15, 'cartera', '0001_initial', '2019-01-18 17:57:04.979724'),
(16, 'clientes', '0001_initial', '2019-01-18 17:57:05.195275'),
(17, 'empresa', '0001_initial', '2019-01-18 17:57:08.814603'),
(18, 'empresa', '0002_auto_20190118_0921', '2019-01-18 17:57:16.234914'),
(19, 'contabilidad', '0001_initial', '2019-01-18 17:57:18.928386'),
(20, 'contabilidad', '0002_auto_20190118_0921', '2019-01-18 17:57:24.781353'),
(21, 'contabilidad', '0003_respuestasri', '2019-01-18 17:57:25.576769'),
(22, 'contabilidad', '0004_retencion_estado', '2019-01-18 17:57:26.008385'),
(23, 'contabilidad', '0005_auto_20190118_1125', '2019-01-18 17:57:26.472255'),
(24, 'correo', '0001_initial', '2019-01-18 17:57:26.680932'),
(25, 'productos', '0001_initial', '2019-01-18 17:57:32.549808'),
(26, 'custodias', '0001_initial', '2019-01-18 17:57:33.775703'),
(27, 'custodias', '0002_custodia_producto', '2019-01-18 17:57:35.019002'),
(28, 'proveedores', '0001_initial', '2019-01-18 17:57:37.821825'),
(29, 'productos', '0002_producto_proveedor', '2019-01-18 17:57:39.156501'),
(30, 'movimientos', '0001_initial', '2019-01-18 17:57:40.051097'),
(31, 'movimientos', '0002_auto_20190118_0921', '2019-01-18 17:57:42.305842'),
(32, 'movimientos', '0003_movimientos_responsable', '2019-01-18 17:57:43.509139'),
(33, 'secuencias', '0001_initial', '2019-01-18 17:57:44.256390'),
(34, 'ordenespedido', '0001_initial', '2019-01-18 17:57:45.249660'),
(35, 'ordenescompra', '0001_initial', '2019-01-18 17:57:46.152850'),
(36, 'ordenescompra', '0002_auto_20190118_0921', '2019-01-18 17:57:48.969575'),
(37, 'ordenespedido', '0002_auto_20190118_0921', '2019-01-18 17:57:55.748848'),
(38, 'sessions', '0001_initial', '2019-01-18 17:57:56.105426'),
(39, 'ventas', '0001_initial', '2019-01-18 17:57:59.171215'),
(40, 'contabilidad', '0006_auto_20190123_1752', '2019-01-23 22:53:03.977313'),
(41, 'proveedores', '0002_auto_20190123_1755', '2019-01-23 22:55:38.945356'),
(42, 'proveedores', '0003_auto_20190207_0831', '2019-02-07 13:31:38.478405'),
(43, 'proveedores', '0004_auto_20190207_0835', '2019-02-07 13:35:50.108569'),
(44, 'proveedores', '0005_auto_20190213_1735', '2019-02-13 22:36:01.734100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish2_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1oklxioftcux324299e1pvt7evk1ncsa', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-21 22:55:40.198413'),
('37w90reuod20pphas1vkhfxe903451x8', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-04-15 20:14:33.482916'),
('3zz2tbnvn2r8dmh741i0t27mlxkwh6y2', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-01 20:32:25.487831'),
('6cx0ewbkss5gkz632783vyhyks1al3by', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-04-09 17:15:17.573471'),
('6rybz97xjgfq1hzxcxwkajju5htjq1qo', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-11 13:53:09.338997'),
('9t245r32gd10dx3fh89mpur4i7n3nezx', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-04-12 14:47:53.465032'),
('doj212o53p7suekp2njk05iw3ultrruo', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-22 20:52:13.578589'),
('fuiior0vzhcva7n6g69f385swsdsfmg7', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-14 20:16:04.579059'),
('gq03nwagpccmw50ecald1i0cx6f0i3ro', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-06 21:57:20.858785'),
('hfixkb2qypgqv3u663qyoqtkvhun6vub', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-06 22:49:08.188804'),
('mwowfenue56oyb31qyyzxnt083sgyd4j', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-19 15:37:39.848382'),
('naarxk8kw9s580pc0eamvpemkq1atjhp', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-21 23:45:06.092169'),
('nijszpzp68vm3doqy58gfkj0u9sf9w0a', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-06 22:21:06.011878'),
('olfhw7vcs11hkr3gy6lkcejwh8s5b4n3', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-21 18:19:35.851211'),
('oxfnf0jnup2dnf6wq50mg13yg446h1y9', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-25 22:03:44.789266'),
('sqlkdgbs6i638h71k3rfkbgfz8jne8ud', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-19 16:53:25.130460'),
('twh9lqm2ev4apc2e6uz0cil79ymh6zb9', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-24 14:26:18.023120'),
('y15x83tzr16r3buwaon54w593vaw6yfr', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-25 17:56:31.262756'),
('yeitzdkahtsmjtvc0qdhade8mfb1jshg', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-19 14:51:02.340943'),
('yeyz09icrr7h1u7e2issbvu6bcgk8x4v', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-02-27 22:25:11.591598'),
('yr9zk6d6ovbn88ofrmwnhh4j4jz9scd4', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-21 23:49:53.230040'),
('zr7lv733fmidduhd922orhtdkral39yj', 'OTBhMjI3YmMxMzkwN2NmM2U0N2FiMWVkYjI1OWJiZGVkNDMyNTY1Mjp7InRvdGFsX25vdGlmaWNhY2lvbmVzX3Byb2R1Y3RvcyI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiNWFmYTc2ZTQ4ZGY1NzhhNWNmODAwNGVmMjljNDQzM2JlMTU0NTEyNSIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJleHBpcmFfMjAiOltdLCJleHBpcmFfMzAiOltdfQ==', '2019-03-13 14:39:41.890234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_configuracioninicial`
--

CREATE TABLE IF NOT EXISTS `empresa_configuracioninicial` (
  `id` int(11) NOT NULL,
  `inicio_contabilidad` date DEFAULT NULL,
  `cuenta_caja_id` int(11),
  `cuenta_empleados_id` int(11),
  `cuenta_productos_id` int(11),
  `cuenta_proveedores_id` int(11),
  `cuenta_ventas_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_empresa`
--

CREATE TABLE IF NOT EXISTS `empresa_empresa` (
  `id` int(11) NOT NULL,
  `ruc` varchar(13) COLLATE utf8_spanish2_ci NOT NULL,
  `razon_social` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre_comercial` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `direc_matriz` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `direc_estab` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_estab` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_pto_emision` varchar(3) COLLATE utf8_spanish2_ci NOT NULL,
  `contri_esp_resolucion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `obligado_conta` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `principal` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `actualizado_por_id` int(11),
  `owner_id` int(11)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa_empresa`
--

INSERT INTO `empresa_empresa` (`id`, `ruc`, `razon_social`, `correo`, `telefono`, `nombre_comercial`, `direc_matriz`, `direc_estab`, `cod_estab`, `cod_pto_emision`, `contri_esp_resolucion`, `obligado_conta`, `imagen`, `principal`, `actualizado_por_id`, `owner_id`) VALUES
(1, '1792442419001', 'ROUTING GOAL MANAGEMENT CORP ROMO VEGA CIA. LTDA.', 'betty.romo@rgmanagementcorp.com', '3433719', 'RGMANAGEMENTCORP', 'KM 3 VIA A CALACALI URB. LA MARCA CALLE E LOTE 42', 'KM 3 VIA A CALACALI URB. LA MARCA CALLE E LOTE 42', '001', '002', '', 'SI', 'empresa/logo_reOJLVV.jpg', 'SI', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_impuestos`
--

CREATE TABLE IF NOT EXISTS `empresa_impuestos` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_impuestovalor`
--

CREATE TABLE IF NOT EXISTS `empresa_impuestovalor` (
  `id` int(11) NOT NULL,
  `codigo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `impuesto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_plandecuentas`
--

CREATE TABLE IF NOT EXISTS `empresa_plandecuentas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_estado` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `credito_debito` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `subcuentas` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_plandecuentasdefinidas`
--

CREATE TABLE IF NOT EXISTS `empresa_plandecuentasdefinidas` (
  `id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `cuenta_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_secuencia`
--

CREATE TABLE IF NOT EXISTS `empresa_secuencia` (
  `id` int(11) NOT NULL,
  `inicio_secuencia` int(11) DEFAULT NULL,
  `fin_secuencia` int(11) DEFAULT NULL,
  `numero_autorizacion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fecha_autorizacion` date DEFAULT NULL,
  `tipo_documento` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa_secuencia`
--

INSERT INTO `empresa_secuencia` (`id`, `inicio_secuencia`, `fin_secuencia`, `numero_autorizacion`, `fecha_autorizacion`, `tipo_documento`, `estado`) VALUES
(1, 5, 10000, '001', '2019-01-01', 'F', 1),
(2, 4, 10000, '001', '2019-01-01', 'CR', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_secuenciadisponible`
--

CREATE TABLE IF NOT EXISTS `empresa_secuenciadisponible` (
  `id` int(11) NOT NULL,
  `numero_secuencia` int(11) NOT NULL,
  `tipo_documento` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `secuencia_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa_secuenciadisponible`
--

INSERT INTO `empresa_secuenciadisponible` (`id`, `numero_secuencia`, `tipo_documento`, `estado`, `secuencia_id`) VALUES
(1, 5, 'F', 0, 1),
(2, 4, 'CR', 0, 2),
(3, 2, 'F', 0, 1),
(4, 3, 'F', 0, 1),
(5, 4, 'F', 0, 1),
(6, 5, 'CR', 0, 2),
(7, 6, 'CR', 0, 2),
(8, 7, 'CR', 0, 2),
(9, 8, 'CR', 0, 2),
(10, 9, 'CR', 0, 2),
(11, 10, 'CR', 0, 2),
(12, 11, 'CR', 0, 2),
(13, 12, 'CR', 0, 2),
(14, 5, 'F', 0, 1),
(15, 7, 'F', 0, 1),
(16, 8, 'F', 0, 1),
(18, 13, 'CR', 0, 2),
(19, 14, 'CR', 0, 2),
(20, 15, 'CR', 0, 2),
(21, 16, 'CR', 0, 2),
(22, 17, 'CR', 0, 2),
(23, 18, 'CR', 0, 2),
(24, 19, 'CR', 0, 2),
(25, 20, 'CR', 0, 2),
(26, 21, 'CR', 0, 2),
(27, 22, 'CR', 0, 2),
(28, 9, 'F', 0, 1),
(29, 23, 'CR', 0, 2),
(30, 24, 'CR', 0, 2),
(31, 25, 'CR', 0, 2),
(32, 26, 'CR', 0, 2),
(33, 27, 'CR', 0, 2),
(34, 28, 'CR', 0, 2),
(35, 29, 'CR', 1, 2),
(36, 10, 'F', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_movimientos`
--

CREATE TABLE IF NOT EXISTS `movimientos_movimientos` (
  `id` int(11) NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `fecha` datetime(6) NOT NULL,
  `vunitario_promedio` double DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `vunitario_compra` double DEFAULT NULL,
  `cant_ingreso` int(11) DEFAULT NULL,
  `tot_ingreso` double DEFAULT NULL,
  `cant_salida` int(11) DEFAULT NULL,
  `tot_salida` double DEFAULT NULL,
  `cant_saldo` int(11) DEFAULT NULL,
  `tot_saldo` double DEFAULT NULL,
  `bodega_id` int(11) DEFAULT NULL,
  `producto_id` int(11),
  `proveedor_id` int(11),
  `responsable_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenescompra_ordencompra`
--

CREATE TABLE IF NOT EXISTS `ordenescompra_ordencompra` (
  `id` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `iva` double NOT NULL,
  `total` double NOT NULL,
  `indicaciones` longtext COLLATE utf8_spanish2_ci,
  `estado` int(11) NOT NULL,
  `recibido` int(11) NOT NULL,
  `autoriza_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `secuencia_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenespedido_ordenpedido`
--

CREATE TABLE IF NOT EXISTS `ordenespedido_ordenpedido` (
  `id` int(11) NOT NULL,
  `fec_solicita` date NOT NULL,
  `fec_entrega` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `cantidad_recibida` int(11) DEFAULT NULL,
  `vunitario` double NOT NULL,
  `vtotal` double NOT NULL,
  `estado` int(11) NOT NULL,
  `anulado` int(11) NOT NULL,
  `autoriza_id` int(11) DEFAULT NULL,
  `medida_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `secuencia_id` int(11),
  `solicita_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_area`
--

CREATE TABLE IF NOT EXISTS `personal_area` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `detalle` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_cargo`
--

CREATE TABLE IF NOT EXISTS `personal_cargo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `detalle` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_horario`
--

CREATE TABLE IF NOT EXISTS `personal_horario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `hora_ingreso` time(6) NOT NULL,
  `hora_salida` time(6) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_personal`
--

CREATE TABLE IF NOT EXISTS `personal_personal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(9) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cedula` varchar(13) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fec_nacimiento` date DEFAULT NULL,
  `fec_ingreso` date DEFAULT NULL,
  `fec_salida` date DEFAULT NULL,
  `cta_banco` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo_sangre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nacionalidad` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cargas_familiares` int(11) DEFAULT NULL,
  `estado_civil` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `cargo_id` int(11) NOT NULL,
  `horario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categoria`
--

CREATE TABLE IF NOT EXISTS `productos_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_medida`
--

CREATE TABLE IF NOT EXISTS `productos_medida` (
  `id` int(11) NOT NULL,
  `medida` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_producto`
--

CREATE TABLE IF NOT EXISTS `productos_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `cantidad` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `stock_actual` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad_minima` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_auxiliar` varchar(150) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `lote` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fec_fabricacion` date DEFAULT NULL,
  `fec_caducidad` date DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `bodega_id` int(11) DEFAULT NULL,
  `espacio_id` int(11) DEFAULT NULL,
  `iva_1_id` int(11) DEFAULT NULL,
  `iva_2_id` int(11) DEFAULT NULL,
  `iva_3_id` int(11) DEFAULT NULL,
  `medida_id` int(11) DEFAULT NULL,
  `proveedor_id` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_producto_categoria`
--

CREATE TABLE IF NOT EXISTS `productos_producto_categoria` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_servicio`
--

CREATE TABLE IF NOT EXISTS `productos_servicio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `productos_servicio`
--

INSERT INTO `productos_servicio` (`id`, `nombre`, `codigo`, `precio`, `estado`) VALUES
(1, 'Asesoría en Gestión de Procesos 7ma cuota', '0000001', NULL, 1),
(2, 'Servicio 1', '0000002', NULL, 1),
(3, 'Proyecto AGSO', '0000003', NULL, 1),
(4, 'Asesoría en Gestión de Procesos 8va cuota', '0000004', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_catalogo`
--

CREATE TABLE IF NOT EXISTS `proveedores_catalogo` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descuento` int(11) NOT NULL,
  `precio` decimal(10,3) NOT NULL,
  `precio_final` decimal(10,3) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_categoria`
--

CREATE TABLE IF NOT EXISTS `proveedores_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores_categoria`
--

INSERT INTO `proveedores_categoria` (`id`, `nombre`, `descripcion`, `estado`) VALUES
(1, 'REPUESTOS CARRO', 'MANTENIMIENTO VEHICULOS', 1),
(2, 'ARREGLO VEHICULOS', '', 1),
(3, 'IMPLEMENTOS DE OFICINA', '', 1),
(4, 'PEAJE', '', 1),
(5, 'EQUIPOS DE COMPUTO', '', 1),
(6, 'ARREGLO DE EQUIPOS', '', 1),
(7, 'TRANSPORTE', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedores_proveedor` (
  `id` int(11) NOT NULL,
  `razon_social` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `ruc` varchar(13) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre_contacto` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cont_especial` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores_proveedor`
--

INSERT INTO `proveedores_proveedor` (`id`, `razon_social`, `ruc`, `direccion`, `codigo`, `nombre_contacto`, `telefono`, `correo`, `cont_especial`, `estado`, `categoria_id`) VALUES
(1, 'ZOTAMINGA CHIPANTASI LUIS JORGE', '1704714532001', 'El Calvario N1-262 y Pasaje Jorge Alencastro', '0000001', 'Luis Zotaminga', '022394341', 'naney2016@hotmail.com', 0, 1, 1),
(2, 'ADVANCED REPAIRS AR&FM CIA. LTDA.', '1791923901001', 'Bonifaz Cumba 60-182 y Av. del Maestro', '0000002', 'Advanced Repairs', '022478460', 'advancedrepairs@outlook.com', 0, 1, 6),
(3, 'PANAMERICANA VIAL S. A. PANAVIAL', '1791317025001', 'Abraham Lincoln N26-27 y San Ignacio', '0000003', 'PANAMERICANA VIAL S. A.', '023982500', 'atcliente.machachi@panavial.com', 0, 1, 4),
(4, 'TIMUÑO CHICAIZA SANTIAGO WLADIMIR', '1711609865001', 'Daniel Cevallos S1-127 y Equinoccial', '0000004', 'Wladimir Timuño', '023432763', 'santy_megarepuestosty@hotmail.com', 0, 1, 1),
(5, 'PEÑA DIAZ DARWIN ANDRES', '1719296210001', 'De las Culturas Lote 2 y Reino de Quito', '0000005', 'Andres Peña', '0958925963', 'darwinandy@hotmail.com', 0, 1, 2),
(9, 'GUERRA LOPERA JOSE DE JESUS', '1709486193001', 'Av La Prensa N67-94 y Ramón Chiriboga', '0000006', 'JOSE GUERRA', '022597874', 'ventas@imarcreaciones.com', 0, 1, 3),
(10, 'IMPORTADORA UNIVERSAL TECHNOLOGY VARGAS ALMEIDA CIA. LTDA. ', '1792123194001', 'JORGE WASHINGTON N20-80 Y AV. AMAZONAS', '0000007', 'Universal Technology', '022500219', 'imp.unitech@hotmail.com', 0, 1, 3),
(11, 'CORPOELYDO CIA. LTDA.', '1791999150001', 'AV GALO PLAZA LASSO N67-23 Y ENTRE CEREZOS Y CIRUELOS', '0000008', 'Raquel Nuñez', '022809088', 'raquelnunez@xpc.com.ec', 0, 1, 5),
(12, 'HERMINIA SANCHEZ E HIJOS CIA LTDA', '1791753356001', 'Antonio Marchena Oe3-54 y Antonio de Ulloa', '0000009', 'Herminia Sanchez', '2544984', 'info@rgmanagementcorp.com', 0, 1, 3),
(13, 'MANYA SIMBAÑA SEGUNDO WILSON', '1716804941001', 'Los Pinos 10 y Carlos Mantilla', '0000010', 'Wilson Manya', '2837100', 'info@rgmanagementcorp.com', 0, 1, 3),
(14, 'GERARDO ORTIZ E HIJOS CIA LTDA', '0190072002001', 'Av 10 de Agosto y Jose Arizaga', '0000011', 'Gerardo Ortiz', '042207111', 'betty.romo@rgmanagementcorp.com', 1, 1, 3),
(15, 'CORPORACION EL ROSADO S A', '0990004196001', 'Av 9 de Octubre 729 y Boyaca', '0000012', 'No Registra', '023433719', 'betty.romo@rgmanagementcorp.com', 1, 1, 3),
(16, 'VASQUEZ ORTEGA LEONIDAS ALIRIO', '1703202133001', 'Padree Rumi 58 y Pasaje Chilcapamba', '0000013', 'Rodrigo Valladares', '022395100', 'betty.romo@rgmanagementcorp.com', 1, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencias_ordenescompra`
--

CREATE TABLE IF NOT EXISTS `secuencias_ordenescompra` (
  `id` int(11) NOT NULL,
  `secuencia` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `secuencias_ordenescompra`
--

INSERT INTO `secuencias_ordenescompra` (`id`, `secuencia`, `estado`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencias_ordenespedido`
--

CREATE TABLE IF NOT EXISTS `secuencias_ordenespedido` (
  `id` int(11) NOT NULL,
  `secuencia` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `secuencias_ordenespedido`
--

INSERT INTO `secuencias_ordenespedido` (`id`, `secuencia`, `estado`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secuencias_ventas`
--

CREATE TABLE IF NOT EXISTS `secuencias_ventas` (
  `id` int(11) NOT NULL,
  `secuencia` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_respuestasri`
--

CREATE TABLE IF NOT EXISTS `ventas_respuestasri` (
  `id` int(11) NOT NULL,
  `fec_emision` date DEFAULT NULL,
  `clave_generado` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `numero_autorizacion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fec_autorizacion` datetime(6) DEFAULT NULL,
  `ambiente` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `secuencia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas_respuestasri`
--

INSERT INTO `ventas_respuestasri` (`id`, `fec_emision`, `clave_generado`, `numero_autorizacion`, `fec_autorizacion`, `ambiente`, `estado`, `secuencia_id`) VALUES
(1, '2019-01-09', '0901201901179244241900120010020000000021234597818', '0901201901200100200000000217924424198', '2019-01-10 03:02:29.000000', 2, 1, 3),
(2, '2019-01-09', '0901201901179244241900120010020000000031234597813', '0901201901200100200000000317924424192', '2019-01-10 03:10:16.000000', 2, 1, 4),
(3, '2019-01-09', '0901201901179244241900120010020000000041234597819', '0901201901200100200000000417924424197', '2019-01-10 03:19:40.000000', 2, 1, 5),
(4, '2019-02-05', '0502201901179244241900120010020000000051234597812', '0502201901200100200000000517924424191', '2019-02-05 16:04:02.000000', 2, 1, 1),
(6, '2019-02-05', '0502201901179244241900120010020000000071234597813', '0502201901200100200000000717924424199', '2019-02-05 17:01:20.000000', 2, 1, 15),
(7, '2019-03-07', '0703201901179244241900120010020000000081234597814', '0703201901200100200000000817924424199', '2019-03-08 00:13:46.000000', 2, 1, 16),
(8, '2019-04-01', '0104201901179244241900120010020000000091234597819', '0104201901200100200000000917924424192', '2019-04-01 20:18:26.000000', 2, 1, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_venta`
--

CREATE TABLE IF NOT EXISTS `ventas_venta` (
  `id` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `iva` double NOT NULL,
  `descuento` double NOT NULL,
  `total` double NOT NULL,
  `cantidad_custodia` int(11) DEFAULT NULL,
  `tipo_pago` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `unidad_tiempo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `tiempo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nro_trasferencia` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `bodega_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `secuencia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ventas_venta`
--

INSERT INTO `ventas_venta` (`id`, `fecha`, `precio`, `cantidad`, `subtotal`, `iva`, `descuento`, `total`, `cantidad_custodia`, `tipo_pago`, `unidad_tiempo`, `tiempo`, `nro_trasferencia`, `bodega_id`, `cliente_id`, `producto_id`, `secuencia_id`) VALUES
(1, '2019-01-10 03:02:27.497901', 1, 1, 1, 0.12, 0, 1.12, NULL, '01', 'dias', '30', NULL, NULL, 2, 2, 3),
(2, '2019-01-10 03:10:13.635736', 1, 1, 1, 0.12, 0, 1.12, NULL, '01', '30', 'dias', NULL, NULL, 2, 2, 4),
(3, '2019-01-10 03:19:33.060264', 776.77, 1, 776.77, 93.2124, 0, 869.9824, NULL, '01', '30', 'dias', NULL, NULL, 1, 1, 5),
(4, '2019-02-05 16:04:00.489074', 776.77, 1, 776.77, 93.2124, 0, 869.9824, NULL, '01', 'dias', '5', NULL, NULL, 1, 1, 1),
(5, '2019-02-05 16:57:43.495471', 8160, 1, 8160, 979.2, 0, 9139.2, NULL, '01', 'dias', '5', NULL, NULL, 3, 3, 14),
(6, '2019-02-05 17:01:17.514016', 8160, 1, 8160, 979.2, 0, 9139.2, NULL, '01', 'dias', '5', NULL, NULL, 3, 3, 15),
(7, '2019-03-08 00:13:32.370801', 776.77, 1, 776.77, 93.2124, 0, 869.9824, NULL, '01', 'dias', '5', NULL, NULL, 1, 1, 16),
(8, '2019-04-01 20:18:22.514971', 776.77, 1, 776.77, 93.2124, 0, 869.9824, NULL, '01', 'dias', '5', NULL, NULL, 1, 1, 28);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_usuario`
--
ALTER TABLE `auth_usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `auth_usuario_personal_id_4a913796_fk_personal_personal_id` (`personal_id`);

--
-- Indices de la tabla `auth_usuario_groups`
--
ALTER TABLE `auth_usuario_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_usuario_groups_user_id_51c4fe93_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_usuario_groups_group_id_6718fe03_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_usuario_user_permissions`
--
ALTER TABLE `auth_usuario_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_usuario_user_permissions_user_id_3dc431dc_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_usuario_user_p_permission_id_af5699f9_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `bodegas_bodega`
--
ALTER TABLE `bodegas_bodega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bodegas_bodega_encargado_id_c11f58a1_fk_personal_personal_id` (`encargado_id`);

--
-- Indices de la tabla `bodegas_columna`
--
ALTER TABLE `bodegas_columna`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bodegas_espacio`
--
ALTER TABLE `bodegas_espacio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bodegas_espacio_columna_id_90c71d4b_fk_bodegas_columna_id` (`columna_id`),
  ADD KEY `bodegas_espacio_63301691` (`fila_id`);

--
-- Indices de la tabla `bodegas_fila`
--
ALTER TABLE `bodegas_fila`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cartera_cartera`
--
ALTER TABLE `cartera_cartera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cartera_interes`
--
ALTER TABLE `cartera_interes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes_cliente`
--
ALTER TABLE `clientes_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contabilidad_asiento`
--
ALTER TABLE `contabilidad_asiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contabilidad_balanceinicial`
--
ALTER TABLE `contabilidad_balanceinicial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contabilidad_balanceinicial_69bf0062` (`cuenta_id`);

--
-- Indices de la tabla `contabilidad_impuesto`
--
ALTER TABLE `contabilidad_impuesto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contabilidad_librodiario`
--
ALTER TABLE `contabilidad_librodiario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contabilidad_librodiario_5d229800` (`asiento_id`),
  ADD KEY `contabilidad_librodiario_69bf0062` (`cuenta_id`);

--
-- Indices de la tabla `contabilidad_libromayor`
--
ALTER TABLE `contabilidad_libromayor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contabilidad_libromayor_92d2b863` (`librodiario_id`);

--
-- Indices de la tabla `contabilidad_porcentajeimpuesto`
--
ALTER TABLE `contabilidad_porcentajeimpuesto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contabilidad_porcentajeimpuesto_5a65e1d0` (`impuesto_id`);

--
-- Indices de la tabla `contabilidad_retencion`
--
ALTER TABLE `contabilidad_retencion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conta_impuesto_id_eedf1007_fk_contabilidad_porcentajeimpuesto_id` (`impuesto_id`),
  ADD KEY `contabilidad_retencion_90246e0b` (`secuencia_id`),
  ADD KEY `contabilidad_retencion_7ac33b97` (`proveedor_id`);

--
-- Indices de la tabla `correo_correo`
--
ALTER TABLE `correo_correo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `custodias_custodia`
--
ALTER TABLE `custodias_custodia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custodias_custodia_bodega_id_b5a734df_fk_bodegas_bodega_id` (`bodega_id`),
  ADD KEY `custodias_custodia_cliente_id_284aee70_fk_clientes_cliente_id` (`cliente_id`),
  ADD KEY `custodias_custodia_bb91903a` (`producto_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_usuario_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indices de la tabla `empresa_configuracioninicial`
--
ALTER TABLE `empresa_configuracioninicial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_configuracioninicial_f3a30918` (`cuenta_caja_id`),
  ADD KEY `empresa_configuracioninicial_cfe34104` (`cuenta_empleados_id`),
  ADD KEY `empresa_configuracioninicial_85fb1983` (`cuenta_productos_id`),
  ADD KEY `empresa_configuracioninicial_63dcf550` (`cuenta_proveedores_id`),
  ADD KEY `empresa_configuracioninicial_d9f9e4ec` (`cuenta_ventas_id`);

--
-- Indices de la tabla `empresa_empresa`
--
ALTER TABLE `empresa_empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ruc` (`ruc`),
  ADD KEY `empresa_empresa_6d72c7e0` (`actualizado_por_id`),
  ADD KEY `empresa_empresa_5e7b1936` (`owner_id`);

--
-- Indices de la tabla `empresa_impuestos`
--
ALTER TABLE `empresa_impuestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa_impuestovalor`
--
ALTER TABLE `empresa_impuestovalor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_impuestoval_impuesto_id_fd42ff98_fk_empresa_impuestos_id` (`impuesto_id`);

--
-- Indices de la tabla `empresa_plandecuentas`
--
ALTER TABLE `empresa_plandecuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa_plandecuentasdefinidas`
--
ALTER TABLE `empresa_plandecuentasdefinidas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_plandecue_cuenta_id_ad65953d_fk_empresa_plandecuentas_id` (`cuenta_id`),
  ADD KEY `empresa__parent_id_446941b4_fk_empresa_plandecuentasdefinidas_id` (`parent_id`);

--
-- Indices de la tabla `empresa_secuencia`
--
ALTER TABLE `empresa_secuencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa_secuenciadisponible`
--
ALTER TABLE `empresa_secuenciadisponible`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_secuenciad_secuencia_id_e6495b83_fk_empresa_secuencia_id` (`secuencia_id`);

--
-- Indices de la tabla `movimientos_movimientos`
--
ALTER TABLE `movimientos_movimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movimientos_movimientos_bodega_id_8f7a8c44_fk_bodegas_bodega_id` (`bodega_id`),
  ADD KEY `movimientos_movimientos_bb91903a` (`producto_id`),
  ADD KEY `movimientos_movimientos_7ac33b97` (`proveedor_id`),
  ADD KEY `movimientos_movimientos_1ba06e10` (`responsable_id`);

--
-- Indices de la tabla `ordenescompra_ordencompra`
--
ALTER TABLE `ordenescompra_ordencompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordenescompra_orden_autoriza_id_0864f814_fk_personal_personal_id` (`autoriza_id`),
  ADD KEY `ordenescompra_ordencompra_8253d097` (`pedido_id`),
  ADD KEY `ordenescompra_ordencompra_90246e0b` (`secuencia_id`);

--
-- Indices de la tabla `ordenespedido_ordenpedido`
--
ALTER TABLE `ordenespedido_ordenpedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordenespedido_orden_autoriza_id_27b8667d_fk_personal_personal_id` (`autoriza_id`),
  ADD KEY `ordenespedido_ordenpedido_81f1b4a5` (`medida_id`),
  ADD KEY `ordenespedido_ordenpedido_bb91903a` (`producto_id`),
  ADD KEY `ordenespedido_ordenpedido_7ac33b97` (`proveedor_id`),
  ADD KEY `ordenespedido_ordenpedido_90246e0b` (`secuencia_id`),
  ADD KEY `ordenespedido_ordenpedido_6609e974` (`solicita_id`);

--
-- Indices de la tabla `personal_area`
--
ALTER TABLE `personal_area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_cargo`
--
ALTER TABLE `personal_cargo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_cargo_area_id_11bbb9d3_fk_personal_area_id` (`area_id`);

--
-- Indices de la tabla `personal_horario`
--
ALTER TABLE `personal_horario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_personal`
--
ALTER TABLE `personal_personal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personal_personal_area_id_47bfd094_fk_personal_area_id` (`area_id`),
  ADD KEY `personal_personal_cargo_id_cd763d9a_fk_personal_cargo_id` (`cargo_id`),
  ADD KEY `personal_personal_horario_id_c11827c5_fk_personal_horario_id` (`horario_id`);

--
-- Indices de la tabla `productos_categoria`
--
ALTER TABLE `productos_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_medida`
--
ALTER TABLE `productos_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_producto`
--
ALTER TABLE `productos_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_producto_bodega_id_4bca9e57_fk_bodegas_bodega_id` (`bodega_id`),
  ADD KEY `productos_producto_espacio_id_3930c637_fk_bodegas_espacio_id` (`espacio_id`),
  ADD KEY `productos_producto_iva_1_id_0ba0b4d8_fk_contabilidad_impuesto_id` (`iva_1_id`),
  ADD KEY `productos_producto_iva_2_id_f99f3803_fk_contabilidad_impuesto_id` (`iva_2_id`),
  ADD KEY `productos_producto_iva_3_id_0d3c2dd2_fk_contabilidad_impuesto_id` (`iva_3_id`),
  ADD KEY `productos_producto_medida_id_32d962e2_fk_productos_medida_id` (`medida_id`),
  ADD KEY `productos_producto_7ac33b97` (`proveedor_id`);

--
-- Indices de la tabla `productos_producto_categoria`
--
ALTER TABLE `productos_producto_categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productos_producto_categoria_producto_id_7fd40e1c_uniq` (`producto_id`,`categoria_id`),
  ADD KEY `productos_produc_categoria_id_bfa6c8ce_fk_productos_categoria_id` (`categoria_id`);

--
-- Indices de la tabla `productos_servicio`
--
ALTER TABLE `productos_servicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores_catalogo`
--
ALTER TABLE `proveedores_catalogo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedores_catalo_producto_id_b74af5f0_fk_productos_producto_id` (`producto_id`),
  ADD KEY `proveedores_catalogo_7ac33b97` (`proveedor_id`);

--
-- Indices de la tabla `proveedores_categoria`
--
ALTER TABLE `proveedores_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores_proveedor`
--
ALTER TABLE `proveedores_proveedor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `razon_social` (`razon_social`),
  ADD UNIQUE KEY `codigo` (`codigo`),
  ADD KEY `proveedores_pr_categoria_id_c1eb090f_fk_proveedores_categoria_id` (`categoria_id`);

--
-- Indices de la tabla `secuencias_ordenescompra`
--
ALTER TABLE `secuencias_ordenescompra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secuencias_ordenespedido`
--
ALTER TABLE `secuencias_ordenespedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secuencias_ventas`
--
ALTER TABLE `secuencias_ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_respuestasri`
--
ALTER TABLE `ventas_respuestasri`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_r_secuencia_id_40975b42_fk_empresa_secuenciadisponible_id` (`secuencia_id`);

--
-- Indices de la tabla `ventas_venta`
--
ALTER TABLE `ventas_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_venta_bodega_id_425b94ef_fk_bodegas_bodega_id` (`bodega_id`),
  ADD KEY `ventas_venta_cliente_id_85f33a80_fk_clientes_cliente_id` (`cliente_id`),
  ADD KEY `ventas_venta_producto_id_130a1156_fk_productos_servicio_id` (`producto_id`),
  ADD KEY `ventas_v_secuencia_id_c8a14e14_fk_empresa_secuenciadisponible_id` (`secuencia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT de la tabla `auth_usuario`
--
ALTER TABLE `auth_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_usuario_groups`
--
ALTER TABLE `auth_usuario_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_usuario_user_permissions`
--
ALTER TABLE `auth_usuario_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bodegas_bodega`
--
ALTER TABLE `bodegas_bodega`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bodegas_columna`
--
ALTER TABLE `bodegas_columna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bodegas_espacio`
--
ALTER TABLE `bodegas_espacio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `bodegas_fila`
--
ALTER TABLE `bodegas_fila`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cartera_cartera`
--
ALTER TABLE `cartera_cartera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cartera_interes`
--
ALTER TABLE `cartera_interes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `clientes_cliente`
--
ALTER TABLE `clientes_cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `contabilidad_asiento`
--
ALTER TABLE `contabilidad_asiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `contabilidad_balanceinicial`
--
ALTER TABLE `contabilidad_balanceinicial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `contabilidad_impuesto`
--
ALTER TABLE `contabilidad_impuesto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `contabilidad_librodiario`
--
ALTER TABLE `contabilidad_librodiario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `contabilidad_libromayor`
--
ALTER TABLE `contabilidad_libromayor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `contabilidad_porcentajeimpuesto`
--
ALTER TABLE `contabilidad_porcentajeimpuesto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `contabilidad_retencion`
--
ALTER TABLE `contabilidad_retencion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `correo_correo`
--
ALTER TABLE `correo_correo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `custodias_custodia`
--
ALTER TABLE `custodias_custodia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `empresa_configuracioninicial`
--
ALTER TABLE `empresa_configuracioninicial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa_empresa`
--
ALTER TABLE `empresa_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `empresa_impuestos`
--
ALTER TABLE `empresa_impuestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa_impuestovalor`
--
ALTER TABLE `empresa_impuestovalor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa_plandecuentas`
--
ALTER TABLE `empresa_plandecuentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa_plandecuentasdefinidas`
--
ALTER TABLE `empresa_plandecuentasdefinidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa_secuencia`
--
ALTER TABLE `empresa_secuencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `empresa_secuenciadisponible`
--
ALTER TABLE `empresa_secuenciadisponible`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `movimientos_movimientos`
--
ALTER TABLE `movimientos_movimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ordenescompra_ordencompra`
--
ALTER TABLE `ordenescompra_ordencompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ordenespedido_ordenpedido`
--
ALTER TABLE `ordenespedido_ordenpedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal_area`
--
ALTER TABLE `personal_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal_cargo`
--
ALTER TABLE `personal_cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal_horario`
--
ALTER TABLE `personal_horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal_personal`
--
ALTER TABLE `personal_personal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos_categoria`
--
ALTER TABLE `productos_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos_medida`
--
ALTER TABLE `productos_medida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos_producto`
--
ALTER TABLE `productos_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos_producto_categoria`
--
ALTER TABLE `productos_producto_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos_servicio`
--
ALTER TABLE `productos_servicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `proveedores_catalogo`
--
ALTER TABLE `proveedores_catalogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `proveedores_categoria`
--
ALTER TABLE `proveedores_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `proveedores_proveedor`
--
ALTER TABLE `proveedores_proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `secuencias_ordenescompra`
--
ALTER TABLE `secuencias_ordenescompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `secuencias_ordenespedido`
--
ALTER TABLE `secuencias_ordenespedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `secuencias_ventas`
--
ALTER TABLE `secuencias_ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ventas_respuestasri`
--
ALTER TABLE `ventas_respuestasri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `ventas_venta`
--
ALTER TABLE `ventas_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_usuario`
--
ALTER TABLE `auth_usuario`
  ADD CONSTRAINT `auth_usuario_personal_id_4a913796_fk_personal_personal_id` FOREIGN KEY (`personal_id`) REFERENCES `personal_personal` (`id`);

--
-- Filtros para la tabla `auth_usuario_groups`
--
ALTER TABLE `auth_usuario_groups`
  ADD CONSTRAINT `auth_usuario_groups_group_id_6718fe03_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_usuario_groups_user_id_5850e5fd_fk_auth_usuario_id` FOREIGN KEY (`user_id`) REFERENCES `auth_usuario` (`id`);

--
-- Filtros para la tabla `auth_usuario_user_permissions`
--
ALTER TABLE `auth_usuario_user_permissions`
  ADD CONSTRAINT `auth_usuario_user_p_permission_id_af5699f9_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_usuario_user_permission_user_id_b045fb57_fk_auth_usuario_id` FOREIGN KEY (`user_id`) REFERENCES `auth_usuario` (`id`);

--
-- Filtros para la tabla `bodegas_bodega`
--
ALTER TABLE `bodegas_bodega`
  ADD CONSTRAINT `bodegas_bodega_encargado_id_c11f58a1_fk_personal_personal_id` FOREIGN KEY (`encargado_id`) REFERENCES `personal_personal` (`id`);

--
-- Filtros para la tabla `bodegas_espacio`
--
ALTER TABLE `bodegas_espacio`
  ADD CONSTRAINT `bodegas_espacio_columna_id_90c71d4b_fk_bodegas_columna_id` FOREIGN KEY (`columna_id`) REFERENCES `bodegas_columna` (`id`),
  ADD CONSTRAINT `bodegas_espacio_fila_id_e92c34bc_fk_bodegas_fila_id` FOREIGN KEY (`fila_id`) REFERENCES `bodegas_fila` (`id`);

--
-- Filtros para la tabla `contabilidad_balanceinicial`
--
ALTER TABLE `contabilidad_balanceinicial`
  ADD CONSTRAINT `contabilidad_bala_cuenta_id_792c95cb_fk_empresa_plandecuentas_id` FOREIGN KEY (`cuenta_id`) REFERENCES `empresa_plandecuentas` (`id`);

--
-- Filtros para la tabla `contabilidad_librodiario`
--
ALTER TABLE `contabilidad_librodiario`
  ADD CONSTRAINT `contabilidad_libr_asiento_id_ff1f3d88_fk_contabilidad_asiento_id` FOREIGN KEY (`asiento_id`) REFERENCES `contabilidad_asiento` (`id`),
  ADD CONSTRAINT `contabilidad_libr_cuenta_id_11666bf5_fk_empresa_plandecuentas_id` FOREIGN KEY (`cuenta_id`) REFERENCES `empresa_plandecuentas` (`id`);

--
-- Filtros para la tabla `contabilidad_libromayor`
--
ALTER TABLE `contabilidad_libromayor`
  ADD CONSTRAINT `contabili_librodiario_id_5db2648a_fk_contabilidad_librodiario_id` FOREIGN KEY (`librodiario_id`) REFERENCES `contabilidad_librodiario` (`id`);

--
-- Filtros para la tabla `contabilidad_porcentajeimpuesto`
--
ALTER TABLE `contabilidad_porcentajeimpuesto`
  ADD CONSTRAINT `contabilidad_po_impuesto_id_84049b2e_fk_contabilidad_impuesto_id` FOREIGN KEY (`impuesto_id`) REFERENCES `contabilidad_impuesto` (`id`);

--
-- Filtros para la tabla `contabilidad_retencion`
--
ALTER TABLE `contabilidad_retencion`
  ADD CONSTRAINT `conta_impuesto_id_eedf1007_fk_contabilidad_porcentajeimpuesto_id` FOREIGN KEY (`impuesto_id`) REFERENCES `contabilidad_porcentajeimpuesto` (`id`),
  ADD CONSTRAINT `contabil_secuencia_id_be510e2f_fk_empresa_secuenciadisponible_id` FOREIGN KEY (`secuencia_id`) REFERENCES `empresa_secuenciadisponible` (`id`),
  ADD CONSTRAINT `contabilidad_r_proveedor_id_7f89b4dd_fk_proveedores_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedor` (`id`);

--
-- Filtros para la tabla `custodias_custodia`
--
ALTER TABLE `custodias_custodia`
  ADD CONSTRAINT `custodias_custodia_bodega_id_b5a734df_fk_bodegas_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `bodegas_bodega` (`id`),
  ADD CONSTRAINT `custodias_custodia_cliente_id_284aee70_fk_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `clientes_cliente` (`id`),
  ADD CONSTRAINT `custodias_custodia_producto_id_423bec7a_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_usuario_id` FOREIGN KEY (`user_id`) REFERENCES `auth_usuario` (`id`);

--
-- Filtros para la tabla `empresa_configuracioninicial`
--
ALTER TABLE `empresa_configuracioninicial`
  ADD CONSTRAINT `D4cb13f6b80d6521dcd8698aaeda486d` FOREIGN KEY (`cuenta_empleados_id`) REFERENCES `empresa_plandecuentasdefinidas` (`id`),
  ADD CONSTRAINT `a3d9199e063c82af437014e78f67fc7d` FOREIGN KEY (`cuenta_productos_id`) REFERENCES `empresa_plandecuentasdefinidas` (`id`),
  ADD CONSTRAINT `e457542e69dec6ace1854ec7cf89c968` FOREIGN KEY (`cuenta_proveedores_id`) REFERENCES `empresa_plandecuentasdefinidas` (`id`),
  ADD CONSTRAINT `e_cuenta_ventas_id_9f13cf6b_fk_empresa_plandecuentasdefinidas_id` FOREIGN KEY (`cuenta_ventas_id`) REFERENCES `empresa_plandecuentasdefinidas` (`id`),
  ADD CONSTRAINT `emp_cuenta_caja_id_0e0224e8_fk_empresa_plandecuentasdefinidas_id` FOREIGN KEY (`cuenta_caja_id`) REFERENCES `empresa_plandecuentasdefinidas` (`id`);

--
-- Filtros para la tabla `empresa_empresa`
--
ALTER TABLE `empresa_empresa`
  ADD CONSTRAINT `empresa_empresa_actualizado_por_id_45b5ab87_fk_auth_usuario_id` FOREIGN KEY (`actualizado_por_id`) REFERENCES `auth_usuario` (`id`),
  ADD CONSTRAINT `empresa_empresa_owner_id_a446b8b0_fk_auth_usuario_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_usuario` (`id`);

--
-- Filtros para la tabla `empresa_impuestovalor`
--
ALTER TABLE `empresa_impuestovalor`
  ADD CONSTRAINT `empresa_impuestoval_impuesto_id_fd42ff98_fk_empresa_impuestos_id` FOREIGN KEY (`impuesto_id`) REFERENCES `empresa_impuestos` (`id`);

--
-- Filtros para la tabla `empresa_plandecuentasdefinidas`
--
ALTER TABLE `empresa_plandecuentasdefinidas`
  ADD CONSTRAINT `empresa__parent_id_446941b4_fk_empresa_plandecuentasdefinidas_id` FOREIGN KEY (`parent_id`) REFERENCES `empresa_plandecuentasdefinidas` (`id`),
  ADD CONSTRAINT `empresa_plandecue_cuenta_id_ad65953d_fk_empresa_plandecuentas_id` FOREIGN KEY (`cuenta_id`) REFERENCES `empresa_plandecuentas` (`id`);

--
-- Filtros para la tabla `empresa_secuenciadisponible`
--
ALTER TABLE `empresa_secuenciadisponible`
  ADD CONSTRAINT `empresa_secuenciad_secuencia_id_e6495b83_fk_empresa_secuencia_id` FOREIGN KEY (`secuencia_id`) REFERENCES `empresa_secuencia` (`id`);

--
-- Filtros para la tabla `movimientos_movimientos`
--
ALTER TABLE `movimientos_movimientos`
  ADD CONSTRAINT `movimientos_mo_proveedor_id_a06421fd_fk_proveedores_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedor` (`id`),
  ADD CONSTRAINT `movimientos_movimi_producto_id_95f4df6c_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`),
  ADD CONSTRAINT `movimientos_movimient_responsable_id_764ab749_fk_auth_usuario_id` FOREIGN KEY (`responsable_id`) REFERENCES `auth_usuario` (`id`),
  ADD CONSTRAINT `movimientos_movimientos_bodega_id_8f7a8c44_fk_bodegas_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `bodegas_bodega` (`id`);

--
-- Filtros para la tabla `ordenescompra_ordencompra`
--
ALTER TABLE `ordenescompra_ordencompra`
  ADD CONSTRAINT `ordenescomp_secuencia_id_972dc35d_fk_secuencias_ordenescompra_id` FOREIGN KEY (`secuencia_id`) REFERENCES `secuencias_ordenescompra` (`id`),
  ADD CONSTRAINT `ordenescompra_orden_autoriza_id_0864f814_fk_personal_personal_id` FOREIGN KEY (`autoriza_id`) REFERENCES `personal_personal` (`id`),
  ADD CONSTRAINT `ordenescompra_pedido_id_e0828d52_fk_ordenespedido_ordenpedido_id` FOREIGN KEY (`pedido_id`) REFERENCES `ordenespedido_ordenpedido` (`id`);

--
-- Filtros para la tabla `ordenespedido_ordenpedido`
--
ALTER TABLE `ordenespedido_ordenpedido`
  ADD CONSTRAINT `ordenespedi_secuencia_id_446a57d8_fk_secuencias_ordenespedido_id` FOREIGN KEY (`secuencia_id`) REFERENCES `secuencias_ordenespedido` (`id`),
  ADD CONSTRAINT `ordenespedido__proveedor_id_03642d93_fk_proveedores_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedor` (`id`),
  ADD CONSTRAINT `ordenespedido_orde_producto_id_bdb9caa6_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`),
  ADD CONSTRAINT `ordenespedido_orden_autoriza_id_27b8667d_fk_personal_personal_id` FOREIGN KEY (`autoriza_id`) REFERENCES `personal_personal` (`id`),
  ADD CONSTRAINT `ordenespedido_orden_solicita_id_6910168b_fk_personal_personal_id` FOREIGN KEY (`solicita_id`) REFERENCES `personal_personal` (`id`),
  ADD CONSTRAINT `ordenespedido_ordenped_medida_id_32559c65_fk_productos_medida_id` FOREIGN KEY (`medida_id`) REFERENCES `productos_medida` (`id`);

--
-- Filtros para la tabla `personal_cargo`
--
ALTER TABLE `personal_cargo`
  ADD CONSTRAINT `personal_cargo_area_id_11bbb9d3_fk_personal_area_id` FOREIGN KEY (`area_id`) REFERENCES `personal_area` (`id`);

--
-- Filtros para la tabla `personal_personal`
--
ALTER TABLE `personal_personal`
  ADD CONSTRAINT `personal_personal_area_id_47bfd094_fk_personal_area_id` FOREIGN KEY (`area_id`) REFERENCES `personal_area` (`id`),
  ADD CONSTRAINT `personal_personal_cargo_id_cd763d9a_fk_personal_cargo_id` FOREIGN KEY (`cargo_id`) REFERENCES `personal_cargo` (`id`),
  ADD CONSTRAINT `personal_personal_horario_id_c11827c5_fk_personal_horario_id` FOREIGN KEY (`horario_id`) REFERENCES `personal_horario` (`id`);

--
-- Filtros para la tabla `productos_producto`
--
ALTER TABLE `productos_producto`
  ADD CONSTRAINT `productos_prod_proveedor_id_3ef13ee3_fk_proveedores_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedor` (`id`),
  ADD CONSTRAINT `productos_producto_bodega_id_4bca9e57_fk_bodegas_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `bodegas_bodega` (`id`),
  ADD CONSTRAINT `productos_producto_espacio_id_3930c637_fk_bodegas_espacio_id` FOREIGN KEY (`espacio_id`) REFERENCES `bodegas_espacio` (`id`),
  ADD CONSTRAINT `productos_producto_iva_1_id_0ba0b4d8_fk_contabilidad_impuesto_id` FOREIGN KEY (`iva_1_id`) REFERENCES `contabilidad_impuesto` (`id`),
  ADD CONSTRAINT `productos_producto_iva_2_id_f99f3803_fk_contabilidad_impuesto_id` FOREIGN KEY (`iva_2_id`) REFERENCES `contabilidad_impuesto` (`id`),
  ADD CONSTRAINT `productos_producto_iva_3_id_0d3c2dd2_fk_contabilidad_impuesto_id` FOREIGN KEY (`iva_3_id`) REFERENCES `contabilidad_impuesto` (`id`),
  ADD CONSTRAINT `productos_producto_medida_id_32d962e2_fk_productos_medida_id` FOREIGN KEY (`medida_id`) REFERENCES `productos_medida` (`id`);

--
-- Filtros para la tabla `productos_producto_categoria`
--
ALTER TABLE `productos_producto_categoria`
  ADD CONSTRAINT `productos_produc_categoria_id_bfa6c8ce_fk_productos_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `productos_categoria` (`id`),
  ADD CONSTRAINT `productos_producto_producto_id_c6059488_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`);

--
-- Filtros para la tabla `proveedores_catalogo`
--
ALTER TABLE `proveedores_catalogo`
  ADD CONSTRAINT `proveedores_ca_proveedor_id_f814f293_fk_proveedores_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_proveedor` (`id`),
  ADD CONSTRAINT `proveedores_catalo_producto_id_b74af5f0_fk_productos_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_producto` (`id`);

--
-- Filtros para la tabla `proveedores_proveedor`
--
ALTER TABLE `proveedores_proveedor`
  ADD CONSTRAINT `proveedores_pr_categoria_id_c1eb090f_fk_proveedores_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `proveedores_categoria` (`id`);

--
-- Filtros para la tabla `ventas_respuestasri`
--
ALTER TABLE `ventas_respuestasri`
  ADD CONSTRAINT `ventas_r_secuencia_id_40975b42_fk_empresa_secuenciadisponible_id` FOREIGN KEY (`secuencia_id`) REFERENCES `empresa_secuenciadisponible` (`id`);

--
-- Filtros para la tabla `ventas_venta`
--
ALTER TABLE `ventas_venta`
  ADD CONSTRAINT `ventas_v_secuencia_id_c8a14e14_fk_empresa_secuenciadisponible_id` FOREIGN KEY (`secuencia_id`) REFERENCES `empresa_secuenciadisponible` (`id`),
  ADD CONSTRAINT `ventas_venta_bodega_id_425b94ef_fk_bodegas_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `bodegas_bodega` (`id`),
  ADD CONSTRAINT `ventas_venta_cliente_id_85f33a80_fk_clientes_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `clientes_cliente` (`id`),
  ADD CONSTRAINT `ventas_venta_producto_id_130a1156_fk_productos_servicio_id` FOREIGN KEY (`producto_id`) REFERENCES `productos_servicio` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
