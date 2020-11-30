-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 17:35:11
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fix_contract`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_inter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id`, `name`, `description`, `img`, `texto`, `img_inter`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ELECTRICIDAD', 'Profesionales en Instalación y Arreglos eléctricos en general..', 'electricidad.jpg', '\"Sabias que una conexión eléctrica defectuosa, incrementa el costo de tu factura hasta en un 40% mas?\"', 'BANNER-T2.jpg', 1, '2019-09-04 20:27:07', '2019-11-12 07:59:47'),
(2, 'PLOMERIA', 'Profesionales en instalaciones hidrosanitarias y destapes en general.', 'plomeria.jpg', '\"Sabias que puedes ahorrar miles de litros de agua al año, con solo reparar una simple gotera?...', 'BANNER-D2.jpg', 1, '2019-09-04 21:13:35', '2019-11-12 08:00:23'),
(3, 'REMODELACIÓN Y ACABADOS', 'Profesionales en decoración y revestimientos arquitectónicos', 'acabados.jpg', '\"Sabias que los colores que te rodean pueden influir significativamente en tu estado de ánimo...\"', 'BANNER-S2.jpg', 1, '2019-09-05 04:39:44', '2019-11-12 08:01:45'),
(4, 'REPARACIÓN DE BICICLETAS', 'Sin salir de casa! Técnicos profesionales a domicilio.', 'bicicletaTodaru.jpg', '\"Sabias que gracias a ti y a tu bici, se reducen toneladas de CO2 al año…\"', 'BANNER-F2.jpg', 1, '2019-09-05 04:43:29', '2019-11-12 08:01:08'),
(5, 'INSTALACIONES Y MONTAJES', 'No lo aplaces más! Nosotros lo hacemos.', 'instalacionesYmontajes.jpg', '\"Sin mucho presupuesto, dar un aire nuevo a tu casa es más fácil de lo que parece.”', 'BANNER-C2.jpg', 1, '2019-09-06 21:43:36', '2019-11-12 08:00:04'),
(6, 'ARMADO DE MUEBLES', 'Que no te sobren partes! Nosotros lo armamos..', 'armadoMuebles.jpg', '\"Sabias que un mal armado del mueble le disminuye su vida útil en un 60%, que no te sobren piezas. Llamanos!”', 'BANNER-R2.jpg', 1, '2019-09-06 21:46:08', '2019-11-12 07:59:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `puntaje` int(11) NOT NULL,
  `id_orden` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacion`
--

INSERT INTO `calificacion` (`id`, `description`, `puntaje`, `id_orden`, `created_at`, `updated_at`, `type`, `status`) VALUES
(10, 'perdedor', 4, 16, '2019-10-16 23:47:38', '2019-10-16 23:47:38', '2', 1),
(11, 'jjjj', 3, 16, '2019-11-12 08:04:19', '2019-11-12 08:04:19', '1', 1),
(12, 'Excelente servicio', 5, 18, '2019-11-12 08:42:23', '2019-11-12 08:42:23', '2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_departamento` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `description`, `id_departamento`, `created_at`, `updated_at`) VALUES
(1, 'Bogota', 1, NULL, NULL),
(2, 'Bojaca', 1, NULL, NULL),
(3, 'Medellin', 2, NULL, NULL),
(4, 'Andes', 2, NULL, NULL),
(5, 'Anta', 3, NULL, NULL),
(6, 'Cachi', 3, NULL, NULL),
(7, 'Baradero', 4, NULL, NULL),
(8, 'Bolivar', 4, NULL, NULL),
(9, 'Agua Dose', 5, NULL, NULL),
(10, 'Arabuta', 5, NULL, NULL),
(11, 'Abatia', 6, NULL, NULL),
(12, 'Andira', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codigos_promocionales`
--

CREATE TABLE `codigos_promocionales` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaVencimiento` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `codigos_promocionales`
--

INSERT INTO `codigos_promocionales` (`id`, `codigo`, `fechaVencimiento`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ASD76F', '2019-09-04', 1, NULL, NULL),
(2, 'ASD77F', '2019-09-04', 1, NULL, NULL),
(3, 'DN25MM', '2019-11-04 22:16:26', 1, NULL, NULL),
(4, 'DHCRXP', '2019-11-04 22:17:01', 1, NULL, NULL),
(5, 'N37RGT', '2019-11-04 22:17:02', 1, NULL, NULL),
(6, 'SKF5TZ', '2019-11-04 22:17:02', 1, NULL, NULL),
(7, 'RER4UM', '2019-11-04 22:17:02', 1, NULL, NULL),
(8, 'XYY56A', '2019-11-04 22:17:02', 1, NULL, NULL),
(9, '5AGXRC', '2019-11-04 22:17:02', 1, NULL, NULL),
(10, 'B5TF3L', '2019-11-04 22:17:02', 1, NULL, NULL),
(11, '5LBAMJ', '2019-11-04 22:17:02', 1, NULL, NULL),
(12, 'UQPGDP', '2019-11-04 22:17:02', 1, NULL, NULL),
(13, 'QC8W4E', '2019-11-04 22:17:02', 1, NULL, NULL),
(14, '3CEVNZ', '2019-11-04 22:17:02', 1, NULL, NULL),
(15, 'SFAQCH', '2019-11-04 22:17:02', 1, NULL, NULL),
(16, 'R4KKCB', '2019-11-04 22:17:02', 1, NULL, NULL),
(17, 'CANA2U', '2019-11-04 22:17:02', 1, NULL, NULL),
(18, 'U6SEC4', '2019-11-04 22:17:02', 1, NULL, NULL),
(19, 'HYLUP3', '2019-11-04 22:17:02', 1, NULL, NULL),
(20, 'SBK74R', '2019-11-04 22:17:02', 1, NULL, NULL),
(21, 'EUHKSC', '2019-11-04 22:17:02', 1, NULL, NULL),
(22, 'F2Z5DL', '2019-11-04 22:17:02', 1, NULL, NULL),
(23, 'MNHARU', '2019-11-04 22:17:03', 1, NULL, NULL),
(24, 'SJWT8L', '2019-11-04 22:17:03', 1, NULL, NULL),
(25, 'G7MJ3F', '2019-11-04 22:17:03', 1, NULL, NULL),
(26, 'GQ8BJB', '2019-11-04 22:17:03', 1, NULL, NULL),
(27, 'LHGVTN', '2019-11-04 22:17:03', 1, NULL, NULL),
(28, 'DQKDWA', '2019-11-04 22:17:03', 1, NULL, NULL),
(29, 'PUV63V', '2019-11-04 22:17:03', 1, NULL, NULL),
(30, 'KDVP2V', '2019-11-04 22:17:03', 1, NULL, NULL),
(31, 'HKYTKV', '2019-11-04 22:17:03', 1, NULL, NULL),
(32, 'S7LDMJ', '2019-11-04 22:17:03', 1, NULL, NULL),
(33, '2W22YW', '2019-11-04 22:17:03', 1, NULL, NULL),
(34, 'E7YXMA', '2019-11-04 22:17:03', 1, NULL, NULL),
(35, 'DHCPUB', '2019-11-04 22:17:03', 1, NULL, NULL),
(36, 'ZK6V96', '2019-11-04 22:17:03', 1, NULL, NULL),
(37, 'NUNWAR', '2019-11-04 22:17:03', 1, NULL, NULL),
(38, 'J6SJ9P', '2019-11-04 22:17:03', 1, NULL, NULL),
(39, '8DY427', '2019-11-04 22:17:03', 1, NULL, NULL),
(40, 'WZTNS2', '2019-11-04 22:17:03', 1, NULL, NULL),
(41, 'CJCG3T', '2019-11-04 22:17:03', 1, NULL, NULL),
(42, 'RMAM4J', '2019-11-04 22:17:03', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactenos`
--

CREATE TABLE `contactenos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `mensaje` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contactenos`
--

INSERT INTO `contactenos` (`id`, `name`, `email`, `telefono`, `mensaje`, `created_at`, `updated_at`) VALUES
(1, 'carla olarte', 'jdaniel.afranco@gmail.com', 32083772, 'pruebas si funciona', '2019-09-17 03:10:18', '2019-09-17 03:10:18'),
(2, 'Daniel Angel', 'nnchia@gmail.com', 3209338, 'nininin', '2019-10-04 03:56:40', '2019-10-04 03:56:40'),
(3, 'Juan Daniel Angel Franco', 'jdaniel.afranco@gmail.com', 32083772, 'ninfinrinfi', '2019-10-04 03:59:21', '2019-10-04 03:59:21'),
(4, 'Juan Daniel Angel Franco', 'jdaniel.afranco@gmail.com', 32083772, 'ninfinrinfi', '2019-10-04 03:59:38', '2019-10-04 03:59:38'),
(5, 'Prueba', 'jdanguel@misena.edu.co', 32083772, '23456789', '2019-10-04 04:01:54', '2019-10-04 04:01:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizacion`
--

CREATE TABLE `cotizacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `mensaje` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cotizacion`
--

INSERT INTO `cotizacion` (`id`, `name`, `email`, `telefono`, `mensaje`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Angel', 'jdaniel.afranco@gmail.com', 32093387, 'Necesito cotizar comida', '2019-09-17 18:14:54', '2019-09-17 18:14:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pais` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `description`, `id_pais`, `created_at`, `updated_at`) VALUES
(1, 'Cundinamarca', 1, NULL, NULL),
(2, 'Antioquia', 1, NULL, NULL),
(3, 'San Juan', 2, NULL, NULL),
(4, 'Buenos Aires', 2, NULL, NULL),
(5, 'Sau Paulo', 3, NULL, NULL),
(6, 'Parana', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacion_adicional`
--

CREATE TABLE `informacion_adicional` (
  `id` int(10) UNSIGNED NOT NULL,
  `identificacion` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `img_foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transporte` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `documento_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificado_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachiller_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eps_doc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experiencia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perfil` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_tipo_documento` int(10) UNSIGNED NOT NULL,
  `id_ciudad` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `informacion_adicional`
--

INSERT INTO `informacion_adicional` (`id`, `identificacion`, `fecha_nacimiento`, `img_foto`, `direccion`, `transporte`, `documento_doc`, `certificado_doc`, `bachiller_doc`, `eps_doc`, `experiencia`, `perfil`, `id_user`, `id_tipo_documento`, `id_ciudad`, `created_at`, `updated_at`) VALUES
(11, 1033811376, '2019-09-16', '11_foto_descarga.jpg', 'cra 5c #53d33 sur', 'MOTO', '11_documento_ConstanciaImpresa.pdf', '11_documento_ConstanciaImpresa.pdf', '11_bachiller_comprobante de pago.pdf', '11_comprobante de pago.pdf', '10', 'Maestro de la construccion', 2, 1, 1, '2019-09-17 00:59:35', '2019-11-12 08:40:13'),
(15, 1033811376, '2019-10-16', '15_foto_Diagrama Arquitectura.svg', 'cra 5c #53d33 sur', 'MOTO', '15_documento_6- SenaSoft (1).pdf', '15_documento_6- SenaSoft (1).pdf', '15_bachiller_6- SenaSoft (1).pdf', '15_6- SenaSoft (1).pdf', '5', 'naiania', 45, 1, 1, '2019-10-18 04:43:27', '2019-11-05 05:05:12'),
(16, 1033811376, '2019-11-11', '16_foto_jackdaniels.jpg', 'cra 5c #53d33 sur', 'MOTO', '16_documento_1033811376_RB201903051525.pdf', '16_certificado_536317548.pdf', '16_bachiller_ConstanciaImpresa.pdf', '16_15_certificado_6- SenaSoft (1).pdf', '10', 'ninguno', 48, 1, 1, '2019-11-12 09:11:24', '2019-11-12 09:11:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_03_012600_type_user', 1),
(5, '2019_05_03_015402_relation_typeUser', 1),
(6, '2019_08_28_174724_area', 1),
(7, '2019_08_28_195400_codigos_promocionales', 1),
(8, '2019_08_28_195530_nuevos_servicios', 1),
(9, '2019_08_28_195543_pqr', 1),
(10, '2019_08_28_195553_contactenos', 1),
(11, '2019_08_28_195604_cotizacion', 1),
(12, '2019_08_28_195639_order_servicio', 1),
(13, '2019_08_28_195715_detalle_servicio', 1),
(14, '2019_08_28_195720_calificar_servicio', 1),
(15, '2019_08_30_201043_relation_servicio_orden', 1),
(17, '2019_09_09_141056_alter_table_orden', 2),
(19, '2019_09_10_124636_alter_table_orden_servicio', 3),
(20, '2019_09_11_124627_relation_orden_user', 4),
(21, '2019_09_12_130842_alter_table_relation_users', 5),
(22, '2019_09_12_180519_crear_tabla_pais', 6),
(23, '2019_09_12_180621_crear_tabla_departamento', 6),
(24, '2019_09_12_180630_crear_tabla_ciudad', 6),
(25, '2019_09_12_180731_crear_tabla_tipo_documento', 6),
(34, '2019_09_12_183605_create_table_informacion_adicional', 7),
(35, '2019_09_12_183712_create_table_relation_user_area', 7),
(37, '2019_10_08_224933_alter_table_calificacion', 8),
(39, '2019_11_05_181821_retiros', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nuevo_servicio`
--

CREATE TABLE `nuevo_servicio` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_area` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_servicio`
--

CREATE TABLE `orden_servicio` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `id_codigo` int(11) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orden_servicio`
--

INSERT INTO `orden_servicio` (`id`, `description`, `total`, `id_codigo`, `id_user`, `created_at`, `updated_at`, `telefono`, `address`, `date`, `status`) VALUES
(16, 'Ninguna', 70000, 1, 44, '2019-09-17 02:25:43', '2019-10-16 23:35:38', '3208377372', 'calle 137 #113-13', '2019-09-16 17:30:00', '4'),
(17, 'Ninguna', 20000, 1, 46, '2019-11-05 05:06:03', '2019-11-05 05:06:03', '3208377372', 'calle 137 #113-13', '2019-11-13 14:50:00', '1'),
(18, 'Que no te sobren partes! Nosotros lo armamos...', 80000, 1, 47, '2019-11-12 08:17:19', '2019-11-13 02:09:33', '3224665291', 'calle 106', '2019-12-04 06:20:00', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Colombia', NULL, NULL),
(2, 'Argentina', NULL, NULL),
(3, 'Brasil', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqr`
--

CREATE TABLE `pqr` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_orden_user`
--

CREATE TABLE `relation_orden_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_orden` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `relation_orden_user`
--

INSERT INTO `relation_orden_user` (`id`, `id_user`, `id_orden`, `created_at`, `updated_at`) VALUES
(21, 2, 16, '2019-10-16 23:35:26', '2019-10-16 23:35:26'),
(22, 2, 18, '2019-11-12 08:41:04', '2019-11-12 08:41:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_servicio_orden`
--

CREATE TABLE `relation_servicio_orden` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_orden` int(10) UNSIGNED NOT NULL,
  `id_servicio` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `relation_servicio_orden`
--

INSERT INTO `relation_servicio_orden` (`id`, `id_orden`, `id_servicio`, `created_at`, `updated_at`) VALUES
(24, 16, 5, '2019-09-17 02:25:43', '2019-09-17 02:25:43'),
(25, 16, 6, '2019-09-17 02:25:43', '2019-09-17 02:25:43'),
(26, 17, 5, '2019-11-05 05:06:03', '2019-11-05 05:06:03'),
(27, 18, 5, '2019-11-12 08:17:19', '2019-11-12 08:17:19'),
(28, 18, 9, '2019-11-12 08:17:19', '2019-11-12 08:17:19'),
(29, 18, 10, '2019-11-12 08:17:19', '2019-11-12 08:17:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_typeuser`
--

CREATE TABLE `relation_typeuser` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `relation_typeuser`
--

INSERT INTO `relation_typeuser` (`id`, `id_user`, `id_type`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 3, '2019-09-04 20:25:19', '2019-09-04 20:25:19', '1'),
(2, 2, 1, '2019-09-06 20:02:01', '2019-09-19 03:55:51', '1'),
(16, 44, 2, '2019-09-12 02:10:42', '2019-09-12 02:10:42', '1'),
(17, 45, 1, '2019-10-18 00:17:34', '2019-10-18 04:46:19', '3'),
(18, 46, 2, '2019-11-05 05:06:03', '2019-11-05 05:06:03', '1'),
(19, 47, 2, '2019-11-12 08:17:19', '2019-11-12 08:17:19', '1'),
(20, 48, 1, '2019-11-12 09:05:58', '2019-11-12 09:12:32', '1'),
(21, 49, 1, '2019-11-13 04:22:07', '2019-11-13 04:22:07', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relation_user_area`
--

CREATE TABLE `relation_user_area` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_area` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `relation_user_area`
--

INSERT INTO `relation_user_area` (`id`, `id_user`, `id_area`, `created_at`, `updated_at`) VALUES
(1, 45, 1, '2019-10-18 04:43:27', '2019-10-18 04:43:27'),
(2, 45, 5, '2019-10-18 04:43:27', '2019-10-18 04:43:27'),
(3, 45, 1, '2019-10-21 23:02:17', '2019-10-21 23:02:17'),
(4, 45, 3, '2019-10-21 23:02:17', '2019-10-21 23:02:17'),
(5, 45, 5, '2019-10-21 23:02:17', '2019-10-21 23:02:17'),
(6, 45, 6, '2019-10-21 23:02:17', '2019-10-21 23:02:17'),
(7, 45, 1, '2019-11-05 05:05:12', '2019-11-05 05:05:12'),
(8, 45, 3, '2019-11-05 05:05:12', '2019-11-05 05:05:12'),
(9, 45, 5, '2019-11-05 05:05:12', '2019-11-05 05:05:12'),
(10, 45, 6, '2019-11-05 05:05:12', '2019-11-05 05:05:12'),
(11, 2, 1, '2019-11-12 08:40:13', '2019-11-12 08:40:13'),
(12, 2, 2, '2019-11-12 08:40:13', '2019-11-12 08:40:13'),
(13, 2, 3, '2019-11-12 08:40:13', '2019-11-12 08:40:13'),
(14, 48, 1, '2019-11-12 09:11:24', '2019-11-12 09:11:24'),
(15, 48, 2, '2019-11-12 09:11:24', '2019-11-12 09:11:24'),
(16, 48, 4, '2019-11-12 09:11:24', '2019-11-12 09:11:24'),
(17, 48, 6, '2019-11-12 09:11:24', '2019-11-12 09:11:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retiros`
--

CREATE TABLE `retiros` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `retiros`
--

INSERT INTO `retiros` (`id`, `cantidad`, `status`, `id_user`, `created_at`, `updated_at`) VALUES
(3, 34500, 2, 2, '2019-11-11 02:22:50', '2019-11-12 04:02:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` int(11) NOT NULL,
  `id_area` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id`, `name`, `description`, `img`, `precio`, `id_area`, `created_at`, `updated_at`) VALUES
(1, 'Instalar toma Corriente', 'Ninguna', '1metro.jpg', 20000, 1, '2019-09-04 20:27:36', '2019-09-04 20:27:36'),
(2, 'INSTALACIÓN DE GRIFO', 'NINGUNO', 'grifo.jpg', 25000, 2, '2019-09-04 21:14:26', '2019-09-04 21:14:26'),
(3, 'VISITA TÉCNICA', 'Ninguna', 'pintura.jpg', 15000, 3, '2019-09-05 04:41:06', '2019-09-05 04:41:06'),
(5, 'INSTALACIÓN DE LUMINARIAS PEQUEÑA', 'Ninguna', 'iluminarias.jpg', 25000, 1, '2019-09-10 23:54:24', '2019-09-10 23:54:24'),
(6, 'INSTALACIÓN DE LUMINARIA MEDIANA', 'Ninguna', 'electricidadMediana.jpg', 45000, 1, '2019-09-10 23:54:57', '2019-09-10 23:54:57'),
(7, 'INSTALACIÓN DE TOMACORRIENTES', 'Ninguna', 'tomacorriente.jpg', 25000, 1, '2019-09-10 23:55:28', '2019-09-10 23:55:28'),
(8, 'INSTALACIÓN SWICH ELÉCTRICOS', 'Ninguna', 'swich.jpg', 25000, 1, '2019-09-10 23:56:00', '2019-09-10 23:56:00'),
(9, 'INSTALACIÓN TACOS ELÉCTRICOS', 'Ninguna', 'tacos.jpg', 25000, 1, '2019-09-10 23:56:30', '2019-09-10 23:56:30'),
(10, 'REVISIÓN ELÉCTRICA HOGAR', 'Ninguna', 'revisionElectrica.jpg', 35000, 1, '2019-09-10 23:59:44', '2019-09-10 23:59:44'),
(11, 'INSTALACIÓN DE MEZCLADOR', 'Ninguna', 'mezclador.jpg', 25000, 2, '2019-09-11 00:00:46', '2019-09-11 00:00:46'),
(12, 'INSTALACIÓN DE LAVADORA', 'Ninguna', 'ducha.jpg', 39000, 2, '2019-09-11 04:16:23', '2019-09-11 04:16:23'),
(13, 'INSTALACIÓN DE FLOTADOR CISTERNA', 'Ninguna', 'cisterna.jpg', 25000, 2, '2019-09-11 04:17:14', '2019-09-11 04:17:14'),
(14, 'INSTALACIÓN DE LAVAMANOS', 'Ninguna', 'lavamanos.jpg', 55000, 2, '2019-09-11 04:18:01', '2019-09-11 04:18:01'),
(15, 'INSTALACIÓN MUEBLE Y LAVAMANOS', 'Ninguna', 'muebleBaño.jpg', 75000, 2, '2019-09-11 04:19:36', '2019-09-11 04:19:36'),
(16, 'INSTALACIÓN INODORO O SANITARIO', 'Ninguna', 'inodoros.jpg', 65000, 2, '2019-09-11 04:20:31', '2019-09-11 04:20:31'),
(17, 'INSTALACIÓN COMBO DE BAÑO', 'Ninguna', 'comboBaño.jpg', 95000, 2, '2019-09-11 04:21:00', '2019-09-11 04:21:00'),
(18, 'INSTALACIÓN DESAGUE SENCILLO', 'Ninguna', 'desague.jpg', 25000, 2, '2019-09-11 04:22:22', '2019-09-11 04:22:22'),
(19, 'INSTALACIÓN DESAGUE DOBLE', 'Ninguna', 'desagueDoble.jpg', 30000, 2, '2019-09-11 04:22:50', '2019-09-11 04:22:50'),
(20, 'DESTAPE DE CAÑERIAS', 'Ninguna.', 'grifo.jpg', 80000, 1, '2019-09-11 04:23:27', '2019-11-13 04:47:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Cedula de Ciudadania', NULL, NULL),
(2, 'Tarjeta de Identidad', NULL, NULL),
(3, 'Pasaporte', NULL, NULL),
(4, 'Cedula de Extrageria', NULL, NULL),
(5, 'Nit', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_users`
--

CREATE TABLE `type_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `type_users`
--

INSERT INTO `type_users` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Profesional', NULL, NULL),
(2, 'Cliente', NULL, NULL),
(3, 'Administrador', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Daniel Angel', 'jdaniel.afranco@gmail.com', '$2y$10$An0V4c12d1qsI4VoFrtjXOL6YK5Wr.dHdnNhhy5fSZyW.1EWOiz8m', '0tc1NX2dM701HZGq8Jpf0GJXLhzd8qQ20ec1OnnLABA7Ti3fO0MIcsCjKRIm', '2019-09-04 20:25:19', '2019-09-04 20:25:19'),
(2, 'Camilo Ordoñes', 'jdanguel@misena.edu.co', '$2y$10$zgJkOcUufNBwM9xZ6Hep5eRxdiKx.uM7gRhCe4Ya2ft1mUFiHfz16', 'HDRX3BXSe5v6umkTpawtTLs9R0qdgKwg4FVMb6wSShUQLGANt0OOdnfQ5pId', '2019-09-06 20:02:00', '2019-09-06 20:02:00'),
(44, 'Pepito Perez', 'njarizas@hotmail.com', '$2y$10$mNrp5vEDuWnJbfA4MinnmuEKytaPZEnd5PCvEK7OZ6iqtITo5O7iq', '5u5YusgJC9fyFl91ATK0dPGQsEV56qm6Hyd9ArMXELesPkVqTe8FUOigIPWw', '2019-09-12 02:10:42', '2019-09-12 02:10:42'),
(45, 'Pepito Perez angel', 'prueba123@gmail.com', '$2y$10$lS/Cnt8l/fEgHpNoiddOluE8xP52XIwD2fXBwgWvk0LW3x088ip5m', 'AlhBIHwebBthAweuwj61F9GLbUmRfSqF7z2rFv1qR7gttm9mXAxMRCgaiiAo', '2019-10-18 00:17:34', '2019-10-18 00:17:34'),
(46, 'Daniel Angel', 'angelpu@gmail.com', '$2y$10$M8/PR6odKVY/cs1K3l0Y7.hQq2gKEmoE6lPM/Bl87EOTOFLvp83Ri', 'hSZE9ns0nSofTs7Xskw6eECLmWsVEGfBdVBSEXx9AwUKJxlthIoTYIqdcP2T', '2019-11-05 05:06:03', '2019-11-05 05:06:03'),
(47, 'nathalia vega', 'nicol.chia@cun.edu.co', '$2y$10$RnmHl6e9ws7N3S/q98oGoOlbINOZRmg8GMKhAq0wb4mK8BIE/usuS', 'YHnh0bkmFGHm5SURYFKQVynx3exrK2IyMDd9G16TnmI4mW4ELVzjo2fudHYb', '2019-11-12 08:17:18', '2019-11-12 08:17:18'),
(48, 'prueba 1111', 'nicol123@gmail.com', '$2y$10$OnjBKD9uYlkWOK.eO3D2keUXVOaFOHjHsiHvBPKfBWTFB97NG82hq', 'eDqw89luAnCg9uIyxe6hNO8U6zA2Lc2TXGHWJJOESEw0QNwsvsy9JIXs5dEf', '2019-11-12 09:05:58', '2019-11-12 09:05:58'),
(49, 'OMAR   J. INFANTE  ORTEGA', 'omar.j.infante@hotmail.com', '$2y$10$PV72JJ/0/IjLPpKbwo/7T.gOdCsUvZqNzmiuMSGT6Zs5qF/YgdYf6', '0ck0TWLTyIO8k90bTneC1waxO8ED42YmpUcQ8ZzfQUM7vOoWBPEcjnSnvgCt', '2019-11-13 04:22:07', '2019-11-13 04:22:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calificacion_id_orden_foreign` (`id_orden`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciudad_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `codigos_promocionales`
--
ALTER TABLE `codigos_promocionales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contactenos`
--
ALTER TABLE `contactenos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamento_id_pais_foreign` (`id_pais`);

--
-- Indices de la tabla `informacion_adicional`
--
ALTER TABLE `informacion_adicional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `informacion_adicional_id_user_foreign` (`id_user`),
  ADD KEY `informacion_adicional_id_tipo_documento_foreign` (`id_tipo_documento`),
  ADD KEY `informacion_adicional_id_ciudad_foreign` (`id_ciudad`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nuevo_servicio`
--
ALTER TABLE `nuevo_servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nuevo_servicio_id_area_foreign` (`id_area`);

--
-- Indices de la tabla `orden_servicio`
--
ALTER TABLE `orden_servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orden_servicio_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pqr`
--
ALTER TABLE `pqr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqr_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `relation_orden_user`
--
ALTER TABLE `relation_orden_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relation_orden_user_id_user_foreign` (`id_user`),
  ADD KEY `relation_orden_user_id_orden_foreign` (`id_orden`);

--
-- Indices de la tabla `relation_servicio_orden`
--
ALTER TABLE `relation_servicio_orden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relation_servicio_orden_id_orden_foreign` (`id_orden`),
  ADD KEY `relation_servicio_orden_id_servicio_foreign` (`id_servicio`);

--
-- Indices de la tabla `relation_typeuser`
--
ALTER TABLE `relation_typeuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relation_typeuser_id_user_foreign` (`id_user`),
  ADD KEY `relation_typeuser_id_type_foreign` (`id_type`);

--
-- Indices de la tabla `relation_user_area`
--
ALTER TABLE `relation_user_area`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relation_user_area_id_user_foreign` (`id_user`),
  ADD KEY `relation_user_area_id_area_foreign` (`id_area`);

--
-- Indices de la tabla `retiros`
--
ALTER TABLE `retiros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `retiros_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicio_id_area_foreign` (`id_area`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `type_users`
--
ALTER TABLE `type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `codigos_promocionales`
--
ALTER TABLE `codigos_promocionales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `contactenos`
--
ALTER TABLE `contactenos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cotizacion`
--
ALTER TABLE `cotizacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `informacion_adicional`
--
ALTER TABLE `informacion_adicional`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `nuevo_servicio`
--
ALTER TABLE `nuevo_servicio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `orden_servicio`
--
ALTER TABLE `orden_servicio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pqr`
--
ALTER TABLE `pqr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `relation_orden_user`
--
ALTER TABLE `relation_orden_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `relation_servicio_orden`
--
ALTER TABLE `relation_servicio_orden`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `relation_typeuser`
--
ALTER TABLE `relation_typeuser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `relation_user_area`
--
ALTER TABLE `relation_user_area`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `retiros`
--
ALTER TABLE `retiros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `type_users`
--
ALTER TABLE `type_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `calificacion_id_orden_foreign` FOREIGN KEY (`id_orden`) REFERENCES `orden_servicio` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`);

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `informacion_adicional`
--
ALTER TABLE `informacion_adicional`
  ADD CONSTRAINT `informacion_adicional_id_ciudad_foreign` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `informacion_adicional_id_tipo_documento_foreign` FOREIGN KEY (`id_tipo_documento`) REFERENCES `tipo_documento` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `informacion_adicional_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `nuevo_servicio`
--
ALTER TABLE `nuevo_servicio`
  ADD CONSTRAINT `nuevo_servicio_id_area_foreign` FOREIGN KEY (`id_area`) REFERENCES `area` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orden_servicio`
--
ALTER TABLE `orden_servicio`
  ADD CONSTRAINT `orden_servicio_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pqr`
--
ALTER TABLE `pqr`
  ADD CONSTRAINT `pqr_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `relation_orden_user`
--
ALTER TABLE `relation_orden_user`
  ADD CONSTRAINT `relation_orden_user_id_orden_foreign` FOREIGN KEY (`id_orden`) REFERENCES `orden_servicio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relation_orden_user_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `relation_servicio_orden`
--
ALTER TABLE `relation_servicio_orden`
  ADD CONSTRAINT `relation_servicio_orden_id_orden_foreign` FOREIGN KEY (`id_orden`) REFERENCES `orden_servicio` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relation_servicio_orden_id_servicio_foreign` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `relation_typeuser`
--
ALTER TABLE `relation_typeuser`
  ADD CONSTRAINT `relation_typeuser_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relation_typeuser_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `relation_user_area`
--
ALTER TABLE `relation_user_area`
  ADD CONSTRAINT `relation_user_area_id_area_foreign` FOREIGN KEY (`id_area`) REFERENCES `area` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relation_user_area_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `retiros`
--
ALTER TABLE `retiros`
  ADD CONSTRAINT `retiros_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `servicio_id_area_foreign` FOREIGN KEY (`id_area`) REFERENCES `area` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
