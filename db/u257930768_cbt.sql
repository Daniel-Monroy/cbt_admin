-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-07-2019 a las 15:16:53
-- Versión del servidor: 10.2.24-MariaDB
-- Versión de PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u257930768_cbt`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_groups`
--

CREATE TABLE `ia_groups` (
  `group_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `commnet` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ia_groups`
--

INSERT INTO `ia_groups` (`group_id`, `plan_id`, `name`, `status`, `user_id`, `updated_at`, `commnet`) VALUES
(1, 1, 'Grupo 1', 1, 1, '2019-07-04 00:45:46', NULL),
(2, 1, 'Grupo 2', 1, 1, '2019-07-04 03:18:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_plans`
--

CREATE TABLE `ia_plans` (
  `plan_id` int(11) NOT NULL,
  `short_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `commnet` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ia_plans`
--

INSERT INTO `ia_plans` (`plan_id`, `short_name`, `description`, `status`, `user_id`, `updated_at`, `commnet`) VALUES
(1, 'TI', 'TÉCNICO EN INFORMÁTICA', 1, 1, '2019-07-04 00:35:17', NULL),
(2, 'TLQ', 'TÉCNICO LABORATORISTA QUÍMICO', 1, 1, '2019-07-04 03:16:51', NULL),
(3, 'TBA', 'TÉCNICO EN BIOTECNOLOGÍA AGROPECUARIA, ', 1, 1, '2019-07-04 03:17:59', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_profiles`
--

CREATE TABLE `ia_profiles` (
  `profile_id` int(11) NOT NULL,
  `description` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `profile_type` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ia_profiles`
--

INSERT INTO `ia_profiles` (`profile_id`, `description`, `profile_type`, `status`, `user_id`, `updated_at`, `comment`) VALUES
(1, 'Administrador', 'A', 1, 1, '2019-07-08 18:30:41', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_records`
--

CREATE TABLE `ia_records` (
  `record_id` int(11) NOT NULL,
  `code` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `student_account` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `student_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `student_email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `invited_list` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `total_guest` int(11) NOT NULL,
  `date_registred` timestamp NULL DEFAULT current_timestamp(),
  `registration_code` text COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `commnet` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ia_records`
--

INSERT INTO `ia_records` (`record_id`, `code`, `student_account`, `plan_id`, `group_id`, `student_name`, `student_email`, `invited_list`, `total_guest`, `date_registred`, `registration_code`, `status`, `user_id`, `updated_at`, `commnet`) VALUES
(1, '9999', '0000', 1, 1, 'Prueba Irving', 'isantamad@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"RICARDO OLIVER\"},{\"invited_id\":2,\"student_invited\":\"JESUS ALEJANDRO\"},{\"invited_id\":3,\"student_invited\":\"JESUS FABILA\"}]', 3, '2019-07-08 17:58:42', 'irving_2019', 1, 0, '2019-07-08 18:12:48', NULL),
(2, '10000', '3831', 2, 1, 'ANA EVELYN SANTAMARIA DOMINGUEZ', 'evestamadguez@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JOSE ARTURO SANTAMARIA SANCHEZ\"},{\"invited_id\":2,\"student_invited\":\"MARIA DEL ROCIO DOMINGUEZ VAZQUEZ\"},{\"invited_id\":3,\"student_invited\":\"JUANA SANCHEZ MILLAN \"}]', 3, '2019-07-09 12:58:04', 'irving_2019', 1, 0, '2019-07-09 12:58:04', NULL),
(3, '10001', '3739', 2, 1, 'EDER ANDRES CASTAÑEDA RODRIGUEZ', 'ederjeftthekiller077@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA DEL ROCIO RODRIGUEZ HONORATO\"},{\"invited_id\":2,\"student_invited\":\"HECTOR CASTAÑEDA SANCHEZ\"},{\"invited_id\":3,\"student_invited\":\"HECTOR MIGUEL CASTAÑEDA RODRIGUEZ\"}]', 3, '2019-07-09 12:58:33', 'irving_2019', 1, 0, '2019-07-09 12:58:33', NULL),
(4, '10002', '3857', 2, 1, 'MELANI GUADARRAMA GUTIERREZ', 'melaniguadarrama2016@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA ISABEL GUTIERREZ SERRANO\"},{\"invited_id\":2,\"student_invited\":\"JOSE MARTIN GUADARRAMA MONTES DE OCA\"},{\"invited_id\":3,\"student_invited\":\"LINDA SOFIA GUADARRAMA GUTIERREZ\"}]', 3, '2019-07-09 13:00:18', 'irving_2019', 1, 0, '2019-07-09 13:00:18', NULL),
(5, '10003', '3792', 2, 1, 'DANIELA JIMENEZ LERA', 'luxen4d@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"OLGA LILIA LERA IBARRA \"},{\"invited_id\":2,\"student_invited\":\"HUGO JIMENEZ ROMERO \"},{\"invited_id\":3,\"student_invited\":\"SELENE ARANZA JIMENEZ LERA \"}]', 3, '2019-07-09 13:00:46', 'irving_2019', 1, 0, '2019-07-09 13:00:46', NULL),
(6, '10004', '3730', 2, 1, 'YOSSELINE FLORES LARA', 'yosselineflores84@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"NORMA DE JESUS LARA GARCIA\"},{\"invited_id\":2,\"student_invited\":\"RENE FLORES MILLAN\"},{\"invited_id\":3,\"student_invited\":\"JOSUE GARCIA FUENTES\"}]', 3, '2019-07-09 13:03:11', 'irving_2019', 1, 0, '2019-07-09 13:03:11', NULL),
(7, '10005', '3815', 3, 1, 'ISIDRO ARMENTA SANCHEZ', 'Isidro05151998@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MIGUEL ANGEL ARMENTA GUADARRAMA\"},{\"invited_id\":2,\"student_invited\":\"RICARDO MENDOZA\"},{\"invited_id\":3,\"student_invited\":\"MARCELINO SANCHEZ TORREZ\"}]', 3, '2019-07-09 13:13:10', 'irving_2019', 1, 0, '2019-07-09 13:13:10', NULL),
(8, '10006', '3750', 1, 2, 'ALEJANDRA AYALA GIL', 'alejandragil0826@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"BERENICE GIL TORRES\"},{\"invited_id\":2,\"student_invited\":\"LORENZO AYALA TAPIA\"},{\"invited_id\":3,\"student_invited\":\"FLORENCIO ACOSTA ACOSTA\"}]', 3, '2019-07-09 13:13:32', 'irving_2019', 1, 0, '2019-07-09 13:13:32', NULL),
(9, '10007', '3679', 1, 1, 'Manuel Ayala Villegas', 'TrollencioEpix@icloud.com', '[{\"invited_id\":1,\"student_invited\":\"MANUEL AYALA SANCHEZ\"},{\"invited_id\":2,\"student_invited\":\"EUSTOQUIA VILLEGAS ARMENTA \"},{\"invited_id\":3,\"student_invited\":\"EMERENCIANA ARMENTA GONZALEZ\"}]', 3, '2019-07-09 13:14:14', 'irving_2019', 1, 0, '2019-07-09 13:14:14', NULL),
(10, '10008', '3836', 1, 2, 'MARISOL ESPINOZA SANCHEZ', 'espinozamarisol266@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"IMELDA JIMENEZ \"},{\"invited_id\":2,\"student_invited\":\"ROBERTO GONZALEZ \"},{\"invited_id\":3,\"student_invited\":\"MA DEL ROCIO SANCHEZ \"}]', 3, '2019-07-09 13:14:32', 'irving_2019', 1, 0, '2019-07-09 13:14:32', NULL),
(11, '10009', '3760', 1, 2, 'JESUS BLANCAS PEREZ', 'perezchiminojesus@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"SILVINO MENDOZA\"},{\"invited_id\":2,\"student_invited\":\"MINERVA PEREZ \"},{\"invited_id\":3,\"student_invited\":\"JUAN FRANCO\"}]', 3, '2019-07-09 13:14:49', 'irving_2019', 1, 0, '2019-07-09 13:14:49', NULL),
(12, '10010', '3726', 3, 1, 'ANA PAOLA MENDEZ CAMACHO', 'APMENDEZ54@GMAIL.COM', '[{\"invited_id\":1,\"student_invited\":\"FIDEL MENDEZ FIGUEROA \"},{\"invited_id\":2,\"student_invited\":\"AMPARO HERNANDEZ \"},{\"invited_id\":3,\"student_invited\":\"PAULA CAMACHO REYES \"}]', 3, '2019-07-09 13:18:29', 'irving_2019', 1, 0, '2019-07-09 13:18:29', NULL),
(14, '10012', '3798', 3, 1, 'JOSE EDUARDO GUADARRAMA TREVIÑO', 'tlaloguadarrama@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ALICIA TREVIÑO PICHARDO\"},{\"invited_id\":2,\"student_invited\":\"GUILLERMO TOLENTINO\"},{\"invited_id\":3,\"student_invited\":\"LURDES\"}]', 3, '2019-07-09 13:27:40', 'irving_2019', 1, 0, '2019-07-09 13:27:40', NULL),
(15, '10013', '3741', 1, 2, 'JORGE LUIS SANCHEZ ARIZMENDI', 'coke.sanchez@outlook.com', '[{\"invited_id\":1,\"student_invited\":\"ALICIA ARIZMENDI GOMEZ\"},{\"invited_id\":2,\"student_invited\":\"JORGE LUIS SANCHEZ CASTAÑEDA\"},{\"invited_id\":3,\"student_invited\":\"VERONICA ARIZMENDI GOMEZ\"}]', 3, '2019-07-09 13:29:09', 'irving_2019', 1, 0, '2019-07-09 13:29:09', NULL),
(16, '10014', '3840', 3, 1, 'ALEXIS URIEL AYALA CHAVEZ', 'urielayala110@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"REYES AYALA LOPEZ\"},{\"invited_id\":2,\"student_invited\":\"NOEMI IVONE CHAVEZ DIAZ\"},{\"invited_id\":3,\"student_invited\":\"BELEM DIAZ\"}]', 3, '2019-07-09 13:29:50', 'irving_2019', 1, 0, '2019-07-09 13:29:50', NULL),
(17, '10015', '3826', 1, 2, 'IVAN ALEJANDRO MENDEZ ROMANIZ', 'ivanmy.922@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ANDREA MENDEZ\"},{\"invited_id\":2,\"student_invited\":\"EMMANUEL ARCE\"},{\"invited_id\":3,\"student_invited\":\"JESUS ARCE\"}]', 3, '2019-07-09 13:30:17', 'irving_2019', 1, 0, '2019-07-09 13:30:17', NULL),
(18, '10016', '3758', 1, 2, 'EDGAR GEOVANNI TELLECHEA CANALES', 'canalesedgar660@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JAVIER TELLECHEA ORTIZ\"},{\"invited_id\":2,\"student_invited\":\"TERESITA CANALES GUADARRAMA\"},{\"invited_id\":3,\"student_invited\":\"MATILDE CANALES GUADARRAMA\"}]', 3, '2019-07-09 13:31:58', 'irving_2019', 1, 0, '2019-07-09 13:31:58', NULL),
(19, '10017', '3648', 1, 2, 'ANTONIO DE JESUS ARENAS GUADARRAMA', 'antonio221001@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARCO ANTONIO ARENAS TRUJILLO\"},{\"invited_id\":2,\"student_invited\":\"MARICELA GUADARRAMA AYALA\"},{\"invited_id\":3,\"student_invited\":\"NELLI AZUCENA ARENAS GUADARRAMA\"}]', 3, '2019-07-09 13:32:28', 'irving_2019', 1, 0, '2019-07-09 13:32:28', NULL),
(20, '10018', '3655', 1, 2, 'JESUS URIEL ORTIZ GONZALEZ', 'jesus866komander@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"JOSE CRUZ ORTIZ MILLAN \"},{\"invited_id\":2,\"student_invited\":\"JESUS LARA CERON \"},{\"invited_id\":3,\"student_invited\":\"LOURDES GUADARRAMA ROMERO \"}]', 3, '2019-07-09 13:32:56', 'irving_2019', 1, 0, '2019-07-09 13:32:56', NULL),
(21, '10019', '3786', 1, 2, 'JAVIER MANCILLA SEGURA', 'javier.mancilla.segura@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"SILVIA SEGURA SANCHEZ\"},{\"invited_id\":2,\"student_invited\":\"JAVIER MANCILLA ARIZMENDI\"},{\"invited_id\":3,\"student_invited\":\"ALFREDO ULISES GUADARRAMA CERECER\"}]', 3, '2019-07-09 13:33:42', 'irving_2019', 1, 0, '2019-07-09 13:33:42', NULL),
(22, '10020', '3625', 1, 2, 'JESUS ALDAIR CASTAÑEDA RODRIGUEZ', 'castanedarodriguezjesusaldair@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA GUADALUPE VARA MILLAN\"},{\"invited_id\":2,\"student_invited\":\"MARIA DEL ROCIO RODRIGUEZ HONORATO\"},{\"invited_id\":3,\"student_invited\":\"HECTOR CASTAÑEDA SANCHEZ\"}]', 3, '2019-07-09 13:33:58', 'irving_2019', 1, 0, '2019-07-09 13:33:58', NULL),
(23, '10021', '3830', 3, 1, 'RICARDO DE JESUS DIAZ NOVERON', 'ricardodiaz210364@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"NORA ANGELICA NOVERON VAZQUEZ\"},{\"invited_id\":2,\"student_invited\":\"JESUS DIAZ GARCIA\"},{\"invited_id\":3,\"student_invited\":\"DANIELA ALITZEL HERNANDEZ MOLINA\"}]', 3, '2019-07-09 13:35:02', 'irving_2019', 1, 0, '2019-07-09 13:35:02', NULL),
(24, '10022', '3691', 1, 2, 'JOSE FRANCISCO GONZALEZ SANCHEZ', 'hol24jf@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"GRACIELA SANCHEZ BRAVO\"},{\"invited_id\":2,\"student_invited\":\"SANDRA SANCHEZ BRAVO\"},{\"invited_id\":3,\"student_invited\":\"ARTURO YAEL ESTRADA\"}]', 3, '2019-07-09 13:41:17', 'irving_2019', 1, 0, '2019-07-09 13:41:17', NULL),
(25, '10023', '3834', 1, 2, 'LORELY BELEN VAZQUEZ SEGURA', 'lore_vz20011@hotmail.com', '[{\"invited_id\":\"1\",\"student_invited\":\"ARCENIO VAZQUEZ GARDUÑO\"},{\"invited_id\":\"2\",\"student_invited\":\"EDUARDO ARCENIO VAZQUEZ SEGURA\"},{\"invited_id\":3,\"student_invited\":\"EDITH VALDEZ GARCIA \"}]', 3, '2019-07-09 13:46:39', 'irving_2019', 1, 0, '2019-07-09 13:46:39', NULL),
(26, '10024', '3728', 2, 1, 'SHALI PEREZ MENDEZ', 'shali33toto@outlook.es', '[{\"invited_id\":1,\"student_invited\":\"FERNANDO ANTONIO PEREZ MENDEZ\"},{\"invited_id\":2,\"student_invited\":\"CRISTINA MENDEZ FLORES\"},{\"invited_id\":3,\"student_invited\":\"IVAN GONZALEZ MENDEZ\"}]', 3, '2019-07-09 13:47:52', 'irving_2019', 1, 0, '2019-07-09 13:47:52', NULL),
(27, '10025', '3787', 2, 1, 'ANGL ANDRES FENANDEZ GUADARRAMA', 'andresfg966@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MA DE LOS ANGELES GUADARRAMA MACEDO\"},{\"invited_id\":2,\"student_invited\":\"ANDRES FERNANDEZ ALBARRAN\"},{\"invited_id\":3,\"student_invited\":\"PABLO ARTURO FERNANDEZ GUADARRAMA\"}]', 3, '2019-07-09 13:48:55', 'irving_2019', 1, 0, '2019-07-09 13:48:55', NULL),
(28, '10026', '3725', 1, 2, 'ESTHER ESTEPHANIA SANTANA VELAZQUEZ', 'estephania20santana@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"JUANA CABALLERO MENIS\"},{\"invited_id\":2,\"student_invited\":\"FELIPE SANTANA MENIS\"},{\"invited_id\":3,\"student_invited\":\"JAZMIN VELAZQUEZ ARIAS\"}]', 3, '2019-07-09 13:52:04', 'irving_2019', 1, 0, '2019-07-09 13:52:04', NULL),
(29, '10027', '3704', 2, 1, 'DULCE MICHELLE ACACIO MARTINEZ', 'dulceacacio13@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"NELLY MARTINEZ MONTIEL \"},{\"invited_id\":2,\"student_invited\":\"RODOLFO ACACIO TURRAL \"},{\"invited_id\":3,\"student_invited\":\"MARIANA ATZARETH LOPEZ MILLAN \"}]', 3, '2019-07-09 13:52:21', 'irving_2019', 1, 0, '2019-07-09 13:52:21', NULL),
(30, '10028', '3657', 2, 1, 'GABRIEL MARTINEZ SANCHEZ', 'gabmartsanch02@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARICARMEN SANCHEZ MARTINEZ\"},{\"invited_id\":2,\"student_invited\":\"JAIME KEVIN MARTINEZ SANCHEZ\"},{\"invited_id\":3,\"student_invited\":\"AMAIRANY ZATARAIN FLORES\"}]', 3, '2019-07-09 13:52:38', 'irving_2019', 1, 0, '2019-07-09 13:52:38', NULL),
(31, '10029', '3701', 2, 1, 'GABRIEL GARCIA BRAVO', 'gg1262664@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARTHA BRAVO MENDOZA\"},{\"invited_id\":2,\"student_invited\":\"CHRISTIAN GARCIA BRAVO\"},{\"invited_id\":3,\"student_invited\":\"PAULINA NUÑEZ SANTAMARIA\"}]', 3, '2019-07-09 13:52:50', 'irving_2019', 1, 0, '2019-07-09 13:52:50', NULL),
(33, '10031', '3716', 1, 1, 'ULISES RICARDO ESTRADA VILCHIS', 'ueztrada@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"BENITO ESTRADA MENDIOLA\"},{\"invited_id\":2,\"student_invited\":\"MARGARITA VILCHIS LOPEZ\"},{\"invited_id\":3,\"student_invited\":\"LUCINA GOMEZ OLMEDO\"}]', 3, '2019-07-09 14:04:34', 'irving_2019', 1, 0, '2019-07-09 14:04:34', NULL),
(34, '10032', '3707', 1, 1, 'PEDRO GONZALEZ SEGURA', 'pedrinsegura0903@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"PEDRO GONZALEZ SANDOVAL\"},{\"invited_id\":2,\"student_invited\":\"MA DEL SOCCORRO SEGURA MARTINEZ\"},{\"invited_id\":3,\"student_invited\":\"MARIA MONSERRATH GONZALEZ SEGURA\"}]', 3, '2019-07-09 14:05:04', 'irving_2019', 1, 0, '2019-07-09 14:05:04', NULL),
(35, '10033', '3797', 1, 2, 'BRENDA YASMIN MERIDA ALONSO', 'dagoalonso95@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ALICIA ALONSO GUTIERREZ\"},{\"invited_id\":2,\"student_invited\":\"BRENDA JOVANA MENDEZ JUAN DE DIOS\"},{\"invited_id\":3,\"student_invited\":\"MARISOL ALONSO GUTIERREZ\"}]', 3, '2019-07-09 14:05:23', 'irving_2019', 1, 0, '2019-07-09 14:05:23', NULL),
(36, '10034', '4069', 1, 1, 'JESUS ISRAEL LARA ROMERO', 'jameslr002@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARICRUZ VILLEGAS GONZALEZ\"},{\"invited_id\":2,\"student_invited\":\"JESUS LARA CAMACHO\"},{\"invited_id\":3,\"student_invited\":\"VERONICA ROMERO PEDROZA\"}]', 3, '2019-07-09 14:09:07', 'irving_2019', 1, 0, '2019-07-09 14:09:07', NULL),
(38, '10036', '3727', 3, 1, 'FELIPE DE JESUS MORALES  URBINA', 'moralex.pelon@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"TERESA URBINA VILLA\"},{\"invited_id\":2,\"student_invited\":\"PEDRO MORALES DIAZ LEAL\"},{\"invited_id\":3,\"student_invited\":\"ANAHI FUENTES ESPINOZA\"}]', 3, '2019-07-09 14:09:48', 'irving_2019', 1, 0, '2019-07-09 14:09:48', NULL),
(39, '10037', '3363', 3, 1, 'MAYRA JOSSELINE BUSTOS MORALES', 'mayrita.999@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"DANIEL BHENUMEA NIETO\"},{\"invited_id\":2,\"student_invited\":\"JAQUELINE BUSTOS MORALES\"},{\"invited_id\":3,\"student_invited\":\"SOFIA MENDOZA HINOJOSA\"}]', 3, '2019-07-09 14:10:07', 'irving_2019', 1, 0, '2019-07-09 14:10:07', NULL),
(40, '10038', '3652', 1, 1, 'JONATHAN ALEJANDRO HERNANDEZ OCAMPO', 'jonathanocampo338@yahoo.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA OCAMPO GUTIERREZ\"},{\"invited_id\":2,\"student_invited\":\"ALEJANDRO HERNANDEZ ESPINOSA\"},{\"invited_id\":3,\"student_invited\":\"ESTRELLA LIZETH HERNANDEZ OCAMPO\"}]', 3, '2019-07-09 14:10:20', 'irving_2019', 1, 0, '2019-07-09 14:10:20', NULL),
(42, '10040', '3675', 1, 1, 'CELIA DEL CARMEN GARCIA SANTAMARIA', 'celiagarcia2810@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JOSE ANTONIO GARCIA MILLAN\"},{\"invited_id\":2,\"student_invited\":\"VIOLETA SANTAMARIA BERNAL \"},{\"invited_id\":3,\"student_invited\":\"GUILIBALDO GARCIA SANTAMARIA\"}]', 3, '2019-07-09 14:11:18', 'irving_2019', 1, 0, '2019-07-09 14:11:18', NULL),
(43, '10041', '3692', 1, 1, 'LUIS JAVIER BECERRA GONZALEZ', 'govegueto2@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JUAN BECERRA SANCHEZ\"},{\"invited_id\":2,\"student_invited\":\"TERESA DE JESUS SANCHEZ ESTRADA\"},{\"invited_id\":3,\"student_invited\":\"RAYMUNDO GONZALEZ DIAZ\"}]', 3, '2019-07-09 14:17:57', 'irving_2019', 1, 0, '2019-07-09 14:17:57', NULL),
(44, '10042', '3775', 2, 2, 'CLARA KAREN NUÑEZ DOMINGUEZ', 'karencitadom6@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"EUSTOLIA DOMINGUEZ NAVA \"},{\"invited_id\":2,\"student_invited\":\"SALVADOR GARCIA AGUILAR \"},{\"invited_id\":3,\"student_invited\":\"AURORA PEREZ NAVA \"}]', 3, '2019-07-09 14:22:03', 'irving_2019', 1, 0, '2019-07-09 14:22:03', NULL),
(45, '10043', '3709', 2, 2, 'LYNDA ANNELIESE FUENTES CAMACHO', 'lyndafuentes56@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"DAVID HUGO FUENTES TORRES\"},{\"invited_id\":2,\"student_invited\":\"BLANCA SILVIA TORRES PEDROZA\"},{\"invited_id\":3,\"student_invited\":\"ANA LILIAM MIRELLA PICHARDO ESTRADA\"}]', 3, '2019-07-09 14:23:09', 'irving_2019', 1, 0, '2019-07-09 14:23:09', NULL),
(46, '10044', '3711', 2, 2, 'LUCERO GARCÍA GIL', 'luceritho14_ga@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"MA ELENA GIL TORRES \"},{\"invited_id\":2,\"student_invited\":\"MIGUEL GARCÍA ARIAS \"},{\"invited_id\":3,\"student_invited\":\"DIEGO HERNAN BERNAL COLIN\"}]', 3, '2019-07-09 14:24:19', 'irving_2019', 1, 0, '2019-07-09 14:24:19', NULL),
(47, '10045', '3705', 2, 2, 'VIOLETA NAVA SEGURA', 'violetanava1705@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA MAGDALENA SEGURA NAVA\"},{\"invited_id\":2,\"student_invited\":\"ALAN LÓPEZ VILLEGAS \"},{\"invited_id\":3,\"student_invited\":\"FELIPE NAVA MENDOZA\"}]', 3, '2019-07-09 14:25:43', 'irving_2019', 1, 0, '2019-07-09 14:25:43', NULL),
(48, '10046', '3683', 2, 2, 'ALEJANDRA VAZQUEZ RUIZ', 'ale_vr05@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"AMPARO RUIZ POPOCA\"},{\"invited_id\":2,\"student_invited\":\"ALBERTO VAZQUEZ SANCHEZ\"},{\"invited_id\":3,\"student_invited\":\"JUANA SANCHEZ FUENTES\"}]', 3, '2019-07-09 14:26:30', 'irving_2019', 1, 0, '2019-07-09 14:26:30', NULL),
(49, '10047', '3742', 2, 2, 'OCTAVIO TRUJILLO SANCHEZ', 'trujillooctavio123@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"EDUARDO TRUJILLO MORALES\"},{\"invited_id\":2,\"student_invited\":\"MAXIMINA SANCHEZ CRUZ\"},{\"invited_id\":3,\"student_invited\":\"RICARDO\"}]', 3, '2019-07-09 14:26:48', 'irving_2019', 1, 0, '2019-07-09 14:26:48', NULL),
(50, '10048', '3736', 2, 2, 'Luis Angel Vargas Olmedo', 'luis2525angelav@outlook.com', '[{\"invited_id\":1,\"student_invited\":\"AURORA OLMEDO MOLINA\"},{\"invited_id\":2,\"student_invited\":\"JUAN ANTONIO VARGAS CANALES \"},{\"invited_id\":3,\"student_invited\":\"JANETH VARA RUBI\"}]', 3, '2019-07-09 14:27:17', 'irving_2019', 1, 0, '2019-07-09 14:27:17', NULL),
(51, '10049', '3790', 2, 2, 'MARIA BELEM CARBAJAL MENDOZA', 'marymendozacar17@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MAYRA LETICIA MARTINEZ MENDOZA \"},{\"invited_id\":2,\"student_invited\":\"LETICIA MENDOZA NAVA \"},{\"invited_id\":3,\"student_invited\":\"JOSE CARMELO CARBAJAL REA \"}]', 3, '2019-07-09 14:27:42', 'irving_2019', 1, 0, '2019-07-09 14:27:42', NULL),
(52, '10050', '3768', 2, 2, 'YEIMI JOSSELINE GARCIA RODA', 'yossroda_16@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"HUMBERTO GARCIA MILLAN \"},{\"invited_id\":2,\"student_invited\":\"MARIA DEL CONSUELO MONTES DE OCA ORTIZ\"},{\"invited_id\":3,\"student_invited\":\"MIGUEL ANGEL GUADARRAMA AYON\"}]', 3, '2019-07-09 14:27:59', 'irving_2019', 1, 0, '2019-07-09 14:27:59', NULL),
(53, '10051', '3674', 2, 2, 'AZUCENA ALBARRAN TRUJILLO', 'azucenaalbarran7@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MA EUGENIA TRUJILLO FLORES\"},{\"invited_id\":2,\"student_invited\":\"ARTURO ALBARRAN GUADARRAMA\"},{\"invited_id\":3,\"student_invited\":\"JONHY ERIK CARBAJAL MENDOZA \"}]', 3, '2019-07-09 14:28:09', 'irving_2019', 1, 0, '2019-07-09 14:28:09', NULL),
(54, '10052', '3804', 2, 2, 'NORMA MILLÁN SUÁREZ', 'normiszuares@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"GONZALO MILLÁN GONZÁLEZ\"},{\"invited_id\":2,\"student_invited\":\"CRISTOBALINA SUÁREZ GUADARRAMA\"},{\"invited_id\":3,\"student_invited\":\"DANIEL MILLÁN SUÁREZ\"}]', 3, '2019-07-09 14:28:37', 'irving_2019', 1, 0, '2019-07-09 14:28:37', NULL),
(55, '10053', '3684', 2, 2, 'BLANCA STELLA GUADARRAMA PEREZ', 'blancaguadarrama0956@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"GILBERTO GUADARRAMA TRUJILLO\"},{\"invited_id\":2,\"student_invited\":\"ROSA MARIA PEREZ PEDROZA\"},{\"invited_id\":3,\"student_invited\":\"NANCY GABRIELA OSORNIO GUADARRAMA\"}]', 3, '2019-07-09 14:40:11', 'irving_2019', 1, 0, '2019-07-09 14:40:11', NULL),
(56, '10054', '3700', 2, 2, 'CINTIA JAZMIN ESTRADA GARCÍA', 'Cintia.jazmin066@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"PEDRO RAYMUNDO ESTRADA AGUILAR\"},{\"invited_id\":2,\"student_invited\":\"MA DE LOS ANGELES GARCÍA FLORES\"},{\"invited_id\":3,\"student_invited\":\"JUAN MANUEL NAVA GUADARRAMA\"}]', 3, '2019-07-09 14:40:29', 'irving_2019', 1, 0, '2019-07-09 14:40:29', NULL),
(57, '10055', '3690', 2, 2, 'AXEL HUGO VERA GARCIA', 'axelhugoverag@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"EVELIA GARCIA VILCHIS\"},{\"invited_id\":2,\"student_invited\":\"JOSE MARIA GARCIA VELAZQUEZ\"},{\"invited_id\":3,\"student_invited\":\"ANGEL VERA MEZA\"}]', 3, '2019-07-09 14:41:08', 'irving_2019', 1, 0, '2019-07-09 14:41:08', NULL),
(58, '10056', '3731', 2, 2, 'ANAHI ALEXANDRA SOTELO ACACIO', 'anahisotelo17@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"LETICIA ACACIO BERNAL\"},{\"invited_id\":2,\"student_invited\":\"JORGE ALBERTO SOTELO GUADARRAMA\"},{\"invited_id\":3,\"student_invited\":\"JEIMY ISABEL URBINA SOTELO\"}]', 3, '2019-07-09 14:41:25', 'irving_2019', 1, 0, '2019-07-09 14:41:25', NULL),
(59, '10057', '3688', 2, 2, 'MIRIAM SÁNCHEZ GÓMEZ', 'miri40355@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"RUFINA GÓMEZ BRAVO\"},{\"invited_id\":2,\"student_invited\":\"ESTEBAN HERMELO SÁNCHEZ CARBAJAL\"},{\"invited_id\":3,\"student_invited\":\"CHRISTIAN URIEL GUADARRAMA GUADARRAMA \"}]', 3, '2019-07-09 14:41:38', 'irving_2019', 1, 0, '2019-07-09 14:41:38', NULL),
(60, '10058', '4080', 2, 2, 'MOISES TOMAS ROMERO CARMONA', 'Thomascarmona888@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ANA ISABEL CARMONA MANCILLA\"},{\"invited_id\":2,\"student_invited\":\"ANDRES FUENTES GONZALES\"},{\"invited_id\":3,\"student_invited\":\"KARLA MAYTE ROMERO CARMONA\"}]', 3, '2019-07-09 14:41:53', 'irving_2019', 1, 0, '2019-07-09 14:41:53', NULL),
(61, '10059', '3812', 2, 1, 'ANA MARIA MONTERO MONTES DE OCA', 'David_Iturve@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"DAVID ITURBE AYALA\"},{\"invited_id\":2,\"student_invited\":\"OLGA AYALA GUADARRAMA\"},{\"invited_id\":3,\"student_invited\":\"DAVID ITURBE GALINDO\"}]', 3, '2019-07-09 14:42:19', 'irving_2019', 1, 0, '2019-07-09 14:42:19', NULL),
(62, '10060', '3854', 2, 1, 'ALONDRA ARELLANO OSCOS', 'alo.oscos@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"SUSANA OSCOS FUENTES \"},{\"invited_id\":2,\"student_invited\":\"EDGAR DAVID ARELLANO OSCOS \"},{\"invited_id\":3,\"student_invited\":\"YAHIR ARELLANO OSCOS \"}]', 3, '2019-07-09 14:42:31', 'irving_2019', 1, 0, '2019-07-09 14:42:31', NULL),
(63, '10061', '3767', 2, 2, 'MARIANA MORALES HERNADEZ', 'Marianamoralesjb29@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARICARMEN HERNANDEZ DIAZ\"},{\"invited_id\":2,\"student_invited\":\"HIPOLITO MORALES MANCILLA\"},{\"invited_id\":3,\"student_invited\":\"ESTEFANIA MORALES HERNANDEZ\"}]', 3, '2019-07-09 14:43:00', 'irving_2019', 1, 0, '2019-07-09 14:43:00', NULL),
(64, '10062', '3777', 2, 2, 'MARIBEL PEDROZA GONZALEZ', 'marupedgon@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MIGUEL ANGEL PEDROZA GOMEZ \"},{\"invited_id\":2,\"student_invited\":\"MAGALI ADILENNE PEDROZA GONZALEZ \"},{\"invited_id\":3,\"student_invited\":\"LOURDES GONZALEZ DIAZ LEAL \"}]', 3, '2019-07-09 14:43:17', 'irving_2019', 1, 0, '2019-07-09 14:43:17', NULL),
(66, '10064', '3770', 2, 2, 'DANIELA CERON VELASQUEZ', 'cerond265@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ANGEL CERON HERNANDEZ\"},{\"invited_id\":2,\"student_invited\":\"OLIVIA VELASQUEZ LARA\"},{\"invited_id\":3,\"student_invited\":\"JASURI CERON VELASQUEZ\"}]', 3, '2019-07-09 14:44:01', 'irving_2019', 1, 0, '2019-07-09 14:44:01', NULL),
(67, '10065', '3744', 2, 2, 'KARLA ITZEL MORENO FLORES', 'karitzelmoreno@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"SOCORRO FLORES GARCIA \"},{\"invited_id\":2,\"student_invited\":\"CARLOS ALBERTO MORENO GARCIA \"},{\"invited_id\":3,\"student_invited\":\"ROSA MARIA FLORES GARCIA \"}]', 3, '2019-07-09 14:44:14', 'irving_2019', 1, 0, '2019-07-09 14:44:14', NULL),
(68, '10066', '3833', 2, 2, 'JOCE SANCHEZ SANCHEZ', 'JoceSanchez158@outlook.com', '[{\"invited_id\":1,\"student_invited\":\"JOSE LUIS SANCHEZ GUADARRAMA \"},{\"invited_id\":2,\"student_invited\":\"AZUCENA SANCHEZ GOMEZ \"},{\"invited_id\":3,\"student_invited\":\"EVELYN SANCHEZ SANCHEZ\"}]', 3, '2019-07-09 14:47:04', 'irving_2019', 1, 0, '2019-07-09 14:47:04', NULL),
(69, '10067', '3713', 1, 1, 'JESUS EDUARDO CALZADA MARTINEZ', 'joseeduardos@hotmail.es', '[{\"invited_id\":1,\"student_invited\":\"DIANA ISABEL CALZADA MARTINEZ\"},{\"invited_id\":2,\"student_invited\":\"MARIA GUADALUPE CALZADA MARTINEZ\"},{\"invited_id\":3,\"student_invited\":\"MARIA DE LOS ANGELES MARTINEZ UC\"}]', 3, '2019-07-09 14:57:26', 'irving_2019', 1, 0, '2019-07-09 14:57:26', NULL),
(70, '10068', '3748', 2, 2, 'AIMME FERNANDA VILLEGAS GUADARRAMA', 'aimeoats1510@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"VIOLA GUADARRAMA GONZALEZ\"},{\"invited_id\":2,\"student_invited\":\"JAIME VILLEGAS ESTRADA\"},{\"invited_id\":3,\"student_invited\":\"ANAHI GUADARRAMA GONZALEZ\"}]', 3, '2019-07-09 14:58:23', 'irving_2019', 1, 0, '2019-07-09 14:58:23', NULL),
(71, '10069', '3667', 1, 1, 'IRVING FABIAN GARCIA HERNANDEZ', 'irvingfabian2001@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"PATRICIA HERNANDEZ PEDROZA\"},{\"invited_id\":2,\"student_invited\":\"FRANCISCO GARCIA FRANCO\"},{\"invited_id\":3,\"student_invited\":\"ARACELI GARCIA HERNADEZ\"}]', 3, '2019-07-09 14:58:43', 'irving_2019', 1, 0, '2019-07-09 14:58:43', NULL),
(72, '10070', '3794', 2, 1, 'JOSE ANDRES NEIDHART MOLINA', 'joseneidhart735@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA DEL CARMEN MOLINA MONTES DE OCA\"},{\"invited_id\":2,\"student_invited\":\"FERNANDO CENAIDO ROSALES NIETO\"},{\"invited_id\":3,\"student_invited\":\"NATHALY NEIDHART MOLINA\"}]', 3, '2019-07-09 14:58:57', 'irving_2019', 1, 0, '2019-07-09 14:58:57', NULL),
(73, '10071', '3808', 1, 1, 'CHRISTIAN OMAR SANCHEZ MENDOZA', 'omarsanchez25072000@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ABEL MENDOZA VERA\"},{\"invited_id\":2,\"student_invited\":\"JONATHAN MENDOZA\"},{\"invited_id\":3,\"student_invited\":\"ISABEL SANCHEZ MILLAN\"}]', 3, '2019-07-09 14:59:25', 'irving_2019', 1, 0, '2019-07-09 14:59:25', NULL),
(74, '10072', '3809', 1, 2, 'GILBERTO PEDROZA TORRES', 'gilpedroza010310@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JAIME JAVIER FLORES MILLAN\"},{\"invited_id\":2,\"student_invited\":\"VERONICA TORRES CASTILLO\"},{\"invited_id\":3,\"student_invited\":\"CINTHIA STEPHANIA PEDROZA TORRES\"}]', 3, '2019-07-09 15:00:40', 'irving_2019', 1, 0, '2019-07-09 15:00:40', NULL),
(75, '10073', '3656', 1, 1, 'BRENDA YAZMIN SUAREZ ARIZMENDI', 'brenditharojiariz@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"BASILISA ARIZMENDI GONZALEZ\"},{\"invited_id\":2,\"student_invited\":\"MARISOL SUAREZ ARIZMENDI\"},{\"invited_id\":3,\"student_invited\":\"JUAN DIEGO BRAVO PEDROZA\"}]', 3, '2019-07-09 15:00:54', 'irving_2019', 1, 0, '2019-07-09 15:00:54', NULL),
(76, '10074', '3706', 1, 1, 'YARELI OLMEDO MERCADO', 'yarisfer1720@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"NANCY ALEJANDRA OLMEDO MERCADO\"},{\"invited_id\":2,\"student_invited\":\"ANGEL OLMEDO MERCADO\"},{\"invited_id\":3,\"student_invited\":\"MIRNA MIREYA VERA ITURBE\"}]', 3, '2019-07-09 15:01:23', 'irving_2019', 1, 0, '2019-07-09 15:01:23', NULL),
(77, '10075', '3793', 2, 1, 'IVAN DE JESUS MONTES DE OCA FUENTES', 'montesdeocaivan013@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"GONZALO MONTES DE OCA GARCIA\"},{\"invited_id\":2,\"student_invited\":\"ESMERALDA LOPEZ MALDONADO\"},{\"invited_id\":3,\"student_invited\":\"MARIA DE JESUS FUENTES DIAZ\"}]', 3, '2019-07-09 15:01:57', 'irving_2019', 1, 0, '2019-07-09 15:01:57', NULL),
(78, '10076', '3810', 2, 2, 'FRANCISCO JULIAN FLORES SALAS', 'judvafa@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"CLAUDIA ALEJANDRA FLORES SALAS \"},{\"invited_id\":2,\"student_invited\":\"FRANCISCA SALAS GARCIA \"},{\"invited_id\":3,\"student_invited\":\"FAUSTO MEZA MILLAN \"}]', 3, '2019-07-09 15:02:18', 'irving_2019', 1, 0, '2019-07-09 15:02:18', NULL),
(79, '10077', '3799', 3, 1, 'OWEN DOMINIC VAZQUEZ SERRANO', 'Dominic280501@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"CARLOS GERARDO VAZQUEZ TRUJILLO\"},{\"invited_id\":2,\"student_invited\":\"LILIANA SERRANO JARDON \"},{\"invited_id\":3,\"student_invited\":\"COLIN MARLON VAZQUEZ SERRANO \"}]', 3, '2019-07-09 15:02:30', 'irving_2019', 1, 0, '2019-07-09 15:02:30', NULL),
(80, '10078', '3651', 3, 1, 'FRANCISCO PUEBLA TAPIA', 'franciscotapia14@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"ANA MARIA TAPIA DIAZ \"},{\"invited_id\":2,\"student_invited\":\"EUSTOLIA DIAZ MILLAN\"},{\"invited_id\":3,\"student_invited\":\"GUILLERMINA MENDOZA ARIZMENDI \"}]', 3, '2019-07-09 15:02:43', 'irving_2019', 1, 0, '2019-07-09 15:02:43', NULL),
(81, '10079', '3680', 2, 2, 'DIANA CECILIA LOPEZ COLIN', 'dianacecilialopezcolin@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"GUILLERMINA COLIN GUADARRAMA\"},{\"invited_id\":2,\"student_invited\":\"ELIZABETH ARMENTA COLIN\"},{\"invited_id\":3,\"student_invited\":\"MERIBETH ARMENTA COLIN\"}]', 3, '2019-07-09 15:02:57', 'irving_2019', 1, 0, '2019-07-09 15:02:57', NULL),
(82, '10080', '3849', 1, 1, 'carlos alberto ygueldo garcía', 'ygueldocarlos@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ARACELI GARCÍA GONZALEZ\"},{\"invited_id\":2,\"student_invited\":\"JUAN YGUELDO PELAYO\"},{\"invited_id\":3,\"student_invited\":\"SAMARA JOANA YGUELDO GARCÍA\"}]', 3, '2019-07-09 15:10:29', 'irving_2019', 1, 0, '2019-07-09 15:10:29', NULL),
(83, '10081', '3662', 1, 1, 'RAYMUNDO DE JESUS BERNAL GARCIA', 'raygar1593@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"CATALINA GARCIA MILLAN\"},{\"invited_id\":2,\"student_invited\":\"ESTEBAN BERNAL ORTEGA\"},{\"invited_id\":3,\"student_invited\":\"FERNANDO GARCIA GONZALEZ\"}]', 3, '2019-07-09 15:10:47', 'irving_2019', 1, 0, '2019-07-09 15:10:47', NULL),
(84, '10082', '3751', 3, 1, 'Melgar Mejia Saul', 'melgarsaul140@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"VERONICA MEJIA DURAN \"},{\"invited_id\":2,\"student_invited\":\"SAUL ROSENDO MELGAR ALANIS \"},{\"invited_id\":3,\"student_invited\":\"JUANA EDITH DURAN ESQUIVEL \"}]', 3, '2019-07-09 15:11:24', 'irving_2019', 1, 0, '2019-07-09 15:11:24', NULL),
(85, '10083', '3766', 2, 1, 'MARIANA MILLAN ESTRADA', 'mariana10801@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"ROSA MARIA ESTRADA TRUJILLO\"},{\"invited_id\":2,\"student_invited\":\"ALBERTO MILLAN ESTRADA\"},{\"invited_id\":3,\"student_invited\":\"CONSUELO ESTRADA TRUJILLO\"}]', 3, '2019-07-09 15:11:36', 'irving_2019', 1, 0, '2019-07-09 15:11:36', NULL),
(86, '10084', '3673', 1, 1, 'YESENIA MONSERRAT MUÑOZ BUENAVENTURA', 'mm1114028@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"FELIPA BUENAVENTURA LOPEZ\"},{\"invited_id\":2,\"student_invited\":\"BLANCA DAMARIS MUÑOZ BUENAVENTURA\"},{\"invited_id\":3,\"student_invited\":\"FELIPE MUÑOZ BUENAVENTURA\"}]', 3, '2019-07-09 15:12:19', 'irving_2019', 1, 0, '2019-07-09 15:12:19', NULL),
(87, '10085', '3669', 3, 1, 'MARICRUZ REA MILLAN', 'mari03rea@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"LETICIA MILLAN FUENTES \"},{\"invited_id\":2,\"student_invited\":\"IGNACIO REA SANCHEZ \"},{\"invited_id\":3,\"student_invited\":\"HECTOR REA MILLAN \"}]', 3, '2019-07-09 15:13:06', 'irving_2019', 1, 0, '2019-07-09 15:13:06', NULL),
(89, '10087', '3813', 1, 2, 'LEONARDO MANUEL TRINIDAD', 'leonardomt575272753@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JUANA TRINIDAD NAZARIO\"},{\"invited_id\":2,\"student_invited\":\"GONZALO MANUEL FABELA\"},{\"invited_id\":3,\"student_invited\":\"ELIZABETH MANUEL TRINIDAD\"}]', 3, '2019-07-09 15:21:47', 'irving_2019', 1, 0, '2019-07-09 15:21:47', NULL),
(90, '10088', '3865', 3, 1, 'YENY SANCHEZ AYALA', 'yeniizayala3169@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"HUMBERTO SANCHEZ SEGUNDO\"},{\"invited_id\":2,\"student_invited\":\"MARIBEL AYALA MANCILLA\"},{\"invited_id\":3,\"student_invited\":\"VIRGINIA SANCHEZ SEGUNDO\"}]', 3, '2019-07-09 15:22:47', 'irving_2019', 1, 0, '2019-07-09 15:22:47', NULL),
(91, '10089', '3827', 1, 1, 'JESUS ISRAEL DIAZ ESTRADA', 'israuestrada69@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA TERESA ESTRADA VALENTIN\"},{\"invited_id\":2,\"student_invited\":\"MARIA NATIVIDAD ESTRADA VALENTIN\"},{\"invited_id\":3,\"student_invited\":\"DANA ESTRELLA HERNANDEZ GARCIA\"}]', 3, '2019-07-09 15:23:07', 'irving_2019', 1, 0, '2019-07-09 15:23:07', NULL),
(92, '10090', '3832', 3, 1, 'yuridia victoria garcia jaime', 'wiki.teamo3@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARCO LEOPOLDO GARCIA ARIAS \"},{\"invited_id\":2,\"student_invited\":\"VERONICA JAIME SANCHEZ\"},{\"invited_id\":3,\"student_invited\":\"CITLALI HUITZILIN GARCIA JAIME\"}]', 3, '2019-07-09 15:23:57', 'irving_2019', 1, 0, '2019-07-09 15:23:57', NULL),
(94, '10092', '3784', 2, 1, 'IVETTE ARIDAY VILLEGAS ESCOBAR', 'ivettearidayvillegasescobar@outlook.com', '[{\"invited_id\":1,\"student_invited\":\"VIRGINIA ESCOBAR AVILA\"},{\"invited_id\":2,\"student_invited\":\"RENE VILLEGAS PEDROZA\"},{\"invited_id\":3,\"student_invited\":\"GUADALUPE VILLEGAS ESCOBAR\"}]', 3, '2019-07-09 15:25:00', 'irving_2019', 1, 0, '2019-07-09 15:25:00', NULL),
(95, '10093', '3649', 3, 1, 'RAUL BERNAL SALINAS', 'bernal1raul@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ANTONIO BERNAL BERNAL\"},{\"invited_id\":2,\"student_invited\":\"FIDELINA SALINAS FLORES\"},{\"invited_id\":3,\"student_invited\":\"EUGENIO BERNAL MOLINA\"}]', 3, '2019-07-09 15:26:15', 'irving_2019', 1, 0, '2019-07-09 15:26:15', NULL),
(97, '10095', '3682', 1, 2, 'JOSE ROBERTO NAVA MENDEZ', 'pichardopepe42@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"OLGA MENDEZ MENA\"},{\"invited_id\":2,\"student_invited\":\"ALESSANDRA MISHEL NAVA MENDEZ\"},{\"invited_id\":3,\"student_invited\":\"CATALINA AYALA ESTRADA\"}]', 3, '2019-07-09 15:35:44', 'irving_2019', 1, 0, '2019-07-09 15:35:44', NULL),
(98, '10096', '3846', 3, 1, 'EDUARDO CASTAÑEDA GARCIA', 'eduardocarga141@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"EDUARDO CASTAÑEDA ALVARADO\"},{\"invited_id\":2,\"student_invited\":\"IRENE GARCIA BAHENA\"},{\"invited_id\":3,\"student_invited\":\"INES PIÑA RODRIGUEZ\"}]', 3, '2019-07-09 15:38:22', 'irving_2019', 1, 0, '2019-07-09 15:38:22', NULL),
(100, '10098', '3738', 1, 1, 'EDUARDO RAUL LOPEZ BELTRAN', 'eduardo.lobe890@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MA ESPERANZA BELTRAN FLORES\"},{\"invited_id\":2,\"student_invited\":\"OMAR FLORES HERNANDEZ\"},{\"invited_id\":3,\"student_invited\":\"ERIC LEANDRO MENDEZ FUENTES\"}]', 3, '2019-07-09 15:39:00', 'irving_2019', 1, 0, '2019-07-09 15:39:00', NULL),
(101, '10099', '3715', 1, 2, 'ALEXIS YAIR MILLAN GONZALEZ', 'Dark91545@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ROBERTO FIGUEROA ROMAN\"},{\"invited_id\":2,\"student_invited\":\"MARIA DE LA LUZ GONZALEZ SANCHEZ\"},{\"invited_id\":3,\"student_invited\":\"MA GUADALUPE GONZALEZ SANCHEZ\"}]', 3, '2019-07-09 15:39:50', 'irving_2019', 1, 0, '2019-07-09 15:39:50', NULL),
(102, '10100', '3665', 1, 1, 'ANGEL CRISTIAN AVILA HERNANDEZ', 'hernandezavilq@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JOSE BERNABE AVILA RAYON\"},{\"invited_id\":2,\"student_invited\":\"BERTHA HERNANDEZ PEDROZA\"},{\"invited_id\":3,\"student_invited\":\"NATALIA PEDROZA DIAZ LEAL\"}]', 3, '2019-07-09 15:43:30', 'irving_2019', 1, 0, '2019-07-09 15:43:30', NULL),
(103, '10101', '3765', 1, 2, 'KARLA LIZBETH GARCIA GUADARRAMA', 'Beth_gicii.0115@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"ROBERTO GARCIA GUADARRAMA\"},{\"invited_id\":2,\"student_invited\":\"CARLOTA GUADARRAMA MORALES\"},{\"invited_id\":3,\"student_invited\":\"JUAN ALBERTO GUADARRAMA MORALES\"}]', 3, '2019-07-09 15:49:00', 'irving_2019', 1, 0, '2019-07-09 15:49:00', NULL),
(104, '10102', '3714', 1, 2, 'DIANA ELENA GONZALEZ GUTIERREZ', 'dianegg77@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARTIN GONZALEZ JUAYEK\"},{\"invited_id\":2,\"student_invited\":\"ELENA GUTIERREZ SANCHEZ\"},{\"invited_id\":3,\"student_invited\":\"MARTIN FERNANDO GONZALEZ GUTIERREZ\"}]', 3, '2019-07-09 16:40:59', 'irving_2019', 1, 0, '2019-07-09 16:40:59', NULL),
(107, '10105', '3781', 1, 2, 'ANA KAREN INIESTRA PEDROZA', 'anakareniniestra5@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA DEL CARMEN PEDROZA ARAUJO\"},{\"invited_id\":2,\"student_invited\":\"MARIA VICTORIA BECERRA MENDOZA\"},{\"invited_id\":3,\"student_invited\":\"BLANCA ESTELA PEDROZA ARAUJO\"}]', 3, '2019-07-09 16:47:18', 'irving_2019', 1, 0, '2019-07-09 16:47:18', NULL),
(109, '10107', '3695', 1, 2, 'MARIBEL ORTEGA SEGURA', 'mariortega.07cbt@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"CHRISTIAN MENDOZA GUADARRAMA\"},{\"invited_id\":2,\"student_invited\":\"RUBEN ORTEGA HERNANDEZ\"},{\"invited_id\":3,\"student_invited\":\"MA ISABEL SEGURA BERNAL\"}]', 3, '2019-07-09 16:48:58', 'irving_2019', 1, 0, '2019-07-09 16:48:58', NULL),
(111, '10109', '3811', 1, 1, 'ALONDRA PATRICIA ROGEL LOPEZ', 'alondrarogellopez2911@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ARTURO EFRAIN ROGEL TRUJILLO\"},{\"invited_id\":2,\"student_invited\":\"CARMEN PATRICIA LOPEZ FLORES\"},{\"invited_id\":3,\"student_invited\":\"SANDYBEL TRUJILLO SANCHES\"}]', 3, '2019-07-09 17:07:31', 'irving_2019', 1, 0, '2019-07-09 17:07:31', NULL),
(128, '10110', '00001', 1, 1, 'Daniel Monroy', 'danielmonroydominguez@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"Daniel Monroy\"}]', 1, '2019-07-09 19:50:13', 'irving_2019', 1, 0, '2019-07-09 19:50:13', NULL),
(129, '10111', '3708', 1, 2, 'BRYAN MILTON PEREZ VERA', 'chivista1205@outlook.es', '[{\"invited_id\":1,\"student_invited\":\"KAROL VERA ARIAS\"},{\"invited_id\":2,\"student_invited\":\"MAYTE YAÑEZ ACEVEDO\"},{\"invited_id\":3,\"student_invited\":\"OLIVA ARIAS\"}]', 3, '2019-07-10 12:44:15', 'irving_2019', 1, 0, '2019-07-10 12:44:15', NULL),
(130, '10112', '4090', 1, 2, 'LEONILA ESPERANZA GASPAR CRUZ', 'esperanzagaspar2000@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"HUMBERTA CRUZ FLORES\"},{\"invited_id\":2,\"student_invited\":\"DANIEL GASPAR MARTINEZ\"},{\"invited_id\":3,\"student_invited\":\"ROBERTO CRUZ FLORES\"}]', 3, '2019-07-10 12:57:49', 'irving_2019', 1, 0, '2019-07-10 12:57:49', NULL),
(134, '10116', '3729', 1, 2, 'KEVIN GUSTAVO VAZQUEZ COTERO', 'Kevingustavovazquezcotero@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"VICTOR VAZQUEZ MILLAN\"},{\"invited_id\":2,\"student_invited\":\"ANA LIDIA COTERO TAPIA\"},{\"invited_id\":3,\"student_invited\":\"MARTHA FRANCO\"}]', 3, '2019-07-10 14:17:53', 'irving_2019', 1, 0, '2019-07-10 14:17:53', NULL),
(135, '10117', '3807', 3, 1, 'JAIME OSIEL PEREZ TRUJILLO', 'mvzosiel1@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JAIME PEREZ VASQUEZ\"},{\"invited_id\":2,\"student_invited\":\"MARIA CRISTINA TRUJILLO ROGEL\"},{\"invited_id\":3,\"student_invited\":\"MARITZA ELIZABETH PEREZ TRUJILLO\"}]', 3, '2019-07-10 14:29:35', 'irving_2019', 1, 0, '2019-07-10 14:29:35', NULL),
(136, '10118', '3721', 1, 1, 'YOSELIN ABIGAIL FUENTES VILLEGAS', 'ponchis_viyegas@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"YURELY VILLEGAS ESTRADA\"},{\"invited_id\":2,\"student_invited\":\"MIGUEL ANGEL FUENTES ZATARAIN\"},{\"invited_id\":3,\"student_invited\":\"LIDIA TERESA FUENTES ZATARAIN\"}]', 3, '2019-07-10 14:45:51', 'irving_2019', 1, 0, '2019-07-10 14:45:51', NULL),
(137, '10119', '3676', 1, 1, 'Angel Mendez Fuentes', 'chety29@hotmail.com', '[{\"invited_id\":\"3\",\"student_invited\":\"ELIZETH FUENTES ESTRADA\"},{\"invited_id\":2,\"student_invited\":\"LEANDRO MENDEZ FLORES\"},{\"invited_id\":3,\"student_invited\":\"JOSE MENDEZ PEDRAZA\"}]', 3, '2019-07-10 15:13:57', 'irving_2019', 1, 0, '2019-07-10 15:13:57', NULL),
(138, '10120', '3762', 1, 1, 'ALEJANDRO FUENTES PEÑA', 'alexfuentes090901@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ERIKA PEÑA FUENTES\"},{\"invited_id\":2,\"student_invited\":\"FROYLAN FUENTES JIMENEZ\"},{\"invited_id\":3,\"student_invited\":\"MA DEL CARMEN SANCHEZ VILLEGAS \"}]', 3, '2019-07-10 15:15:06', 'irving_2019', 1, 0, '2019-07-10 15:15:06', NULL),
(139, '10121', '3756', 2, 1, 'OMAR GUADARRAMA MOLINA', 'guadarramamolinaomar10@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"YEIMI MOLINA ALBARRAN\"},{\"invited_id\":2,\"student_invited\":\"NADIA CARREÑO PUEBLA\"},{\"invited_id\":3,\"student_invited\":\"ERIK MIGUEL GUADARRAMA MOLINA\"}]', 3, '2019-07-10 15:38:50', 'irving_2019', 1, 0, '2019-07-10 15:38:50', NULL),
(141, '10123', '3817', 1, 1, 'MARIA ELENA MERCADO DIAZ', 'maelenamercadod@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JULIA DIAZ REYES\"},{\"invited_id\":2,\"student_invited\":\"VICTOR MANUEL MERCADO ALPIZAR\"},{\"invited_id\":3,\"student_invited\":\"JUSTINA ALPIZAR FLORES\"}]', 3, '2019-07-10 16:29:21', 'irving_2019', 1, 0, '2019-07-10 16:29:21', NULL),
(142, '10124', '3664', 1, 1, 'CARLA GUADALUPE AVILA BEDOLLA', 'avilak332@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"IRENE BEDOLLA BAZ\"},{\"invited_id\":2,\"student_invited\":\"JATZURY JOCELYN AVILA BEDOLLA\"},{\"invited_id\":3,\"student_invited\":\"MARIA MAGDALENA CRUZ VELASCO\"}]', 3, '2019-07-10 16:29:41', 'irving_2019', 1, 0, '2019-07-10 16:29:41', NULL),
(143, '10125', '3693', 1, 2, 'jose luis', 'joseluisped0123@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ROSA MARIA PEDROZA CERON \"},{\"invited_id\":2,\"student_invited\":\"MARIA DEL PILAR SOLORZANO PEDROZA\"},{\"invited_id\":3,\"student_invited\":\"KARINA SOLORZANO PEDROZA\"}]', 3, '2019-07-10 16:30:57', 'irving_2019', 1, 0, '2019-07-10 16:30:57', NULL),
(144, '10126', '3689', 2, 1, 'SALVDOR EMMANUEL ALONSO PADILLA', 'emanuel.ac101@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA LUISA ALONSO PADILLA\"},{\"invited_id\":2,\"student_invited\":\"JULIA ALONSO PADILLA\"},{\"invited_id\":3,\"student_invited\":\"MARIA DE LOURDES PADILLA MARTINEZ\"}]', 3, '2019-07-10 16:33:19', 'irving_2019', 1, 0, '2019-07-10 16:33:19', NULL),
(145, '10127', '3733', 1, 2, 'AYLIN DANIELA MOCIñO VEGA', 'tolucapepe100@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ADRIANA HERRERA MANCILLA\"},{\"invited_id\":2,\"student_invited\":\"J SOCORRO VEGA ARIAS\"},{\"invited_id\":3,\"student_invited\":\"M ESPERANZA MANCILLA VILCHIS\"}]', 3, '2019-07-10 16:46:09', 'irving_2019', 1, 0, '2019-07-10 16:46:09', NULL),
(146, '10128', '3719', 2, 1, 'EDUARDO ARELLANO REZA', 'laloarellanorza555@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"PEDRO ARELLANO JIMENEZ\"},{\"invited_id\":2,\"student_invited\":\"MARGARITA REZA DIAZ LEAL\"},{\"invited_id\":3,\"student_invited\":\"KAROL ESTRELLA ARELLANO REZA\"}]', 3, '2019-07-10 16:46:31', 'irving_2019', 1, 0, '2019-07-10 16:46:31', NULL),
(147, '10129', '3806', 2, 2, 'ESTHELA GONZALEZ ELGUEA', 'esthelagonzalezelguea010806@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ALEJANDRO GONZALEZ GUADARRAMA\"},{\"invited_id\":2,\"student_invited\":\"MARIA ELENA GONZALEZ GUADARRAMA\"},{\"invited_id\":3,\"student_invited\":\"RAFAELA LETICIA ELGUEA RODRIGUEZ\"}]', 3, '2019-07-10 16:46:39', 'irving_2019', 1, 0, '2019-07-10 16:46:39', NULL),
(148, '10130', '3838', 3, 1, 'JUAN CARLOS ROGEL FLORES', 'rogelfloresjuancarlos@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JUAN ROGEL MARTINEZ\"},{\"invited_id\":2,\"student_invited\":\"MARIA DE LOS ANGELES FLORES REZA\"},{\"invited_id\":3,\"student_invited\":\"MARIA ROSARIO PEDROZA RAMIREZ\"}]', 3, '2019-07-10 16:46:53', 'irving_2019', 1, 0, '2019-07-10 16:46:53', NULL),
(149, '10131', '3672', 3, 1, 'ISRAEL GARCIA GUADARRAMA', 'isragg87@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"EVA GUADARRAMA TRUJILLO\"},{\"invited_id\":2,\"student_invited\":\"BERTA TRUJILLO FUENTES\"},{\"invited_id\":3,\"student_invited\":\"ANA BERTA OSORNIO GUADARRAMA\"}]', 3, '2019-07-10 16:47:44', 'irving_2019', 1, 0, '2019-07-10 16:47:44', NULL),
(150, '10132', '3653', 1, 2, 'YULIANA JAQUELINE ORTEGA CRUZ', 'yuli_jaque1703@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"RAQUEL CRUZ ROMERO\"},{\"invited_id\":2,\"student_invited\":\"JULIO ORTEGA TAPIA\"},{\"invited_id\":3,\"student_invited\":\"JULIO ANGEL ORTEGA CRUZ\"}]', 3, '2019-07-10 16:48:19', 'irving_2019', 1, 0, '2019-07-10 16:48:19', NULL),
(151, '10133', '3856', 1, 1, 'KAREN ANGELICA BERNAL BRAVO', 'krenbernal8@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MAXIMINO BERNAL PEDROZA\"},{\"invited_id\":2,\"student_invited\":\"GUILLERMINA BRAVO REA\"},{\"invited_id\":3,\"student_invited\":\"KEVIN ALEXIS SANCHEZ PEDROZA\"}]', 3, '2019-07-10 16:52:28', 'irving_2019', 1, 0, '2019-07-10 16:52:28', NULL),
(152, '10134', '3312', 3, 1, 'ANA KAREN FUENTES PIÑA', 'estebanvelazco1995@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ESTEBAN GEOVANNY VELASCO NAGERA\"},{\"invited_id\":2,\"student_invited\":\"ROBERTO ACACIO GONZALEZ\"},{\"invited_id\":3,\"student_invited\":\"MARIA FELIX GONZALEZ SANCHEZ\"}]', 3, '2019-07-10 16:52:51', 'irving_2019', 1, 0, '2019-07-10 16:52:51', NULL),
(153, '10135', '3534', 1, 2, 'ALEXIS DE JESUS MONTES DE OCA TRUJILLO', 'jesusAlex.2000.16@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"Magdaleno Montes de Oca Morales\"},{\"invited_id\":2,\"student_invited\":\"Maria Isabel Trujillo Pedroza\"},{\"invited_id\":3,\"student_invited\":\"Flor de Maria Montes de Oca Trujillo\"}]', 3, '2019-07-10 17:06:36', 'irving_2019', 1, 0, '2019-07-10 17:06:36', NULL),
(154, '10136', '36860', 1, 1, 'MANUEL AYALA VILLEGAS', 'maneayala2001@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"CIRO VILLEGAS GOMEZ\"},{\"invited_id\":2,\"student_invited\":\"MANUEL AYALA FRANCO\"},{\"invited_id\":3,\"student_invited\":\"RUFINA SANCHEZ VILCHIS\"}]', 3, '2019-07-10 17:34:55', 'irving_2019', 1, 0, '2019-07-10 17:34:55', NULL),
(155, '10137', '3754', 1, 1, 'JULIETA FLORES ROGEL', 'ruthfloel@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"EMMANUEL RUIZ\"},{\"invited_id\":2,\"student_invited\":\"ALBERTO DELGADO\"},{\"invited_id\":3,\"student_invited\":\"MANUEL FLORES DELGADO\"}]', 3, '2019-07-10 17:45:14', 'irving_2019', 1, 0, '2019-07-10 17:45:14', NULL),
(156, '10138', '3668', 1, 2, 'ISRAEL MENDOZA ACACIO', 'adolfoisraelm@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JUAN PABLO MENDOZA BRAVO\"},{\"invited_id\":2,\"student_invited\":\"EUFRACIA ARELI ACACIO ARIAS\"},{\"invited_id\":3,\"student_invited\":\"NANCY PAOLA BECERRA ACACIO\"}]', 3, '2019-07-10 17:47:43', 'irving_2019', 1, 0, '2019-07-10 17:47:43', NULL),
(158, '10140', '3647', 1, 1, 'MARIA GUADALUPE HERNANDEZ VALENZUELA', 'lupitahv37@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ANA LUZ VALENZUELA RUIZ\"},{\"invited_id\":2,\"student_invited\":\"MARIA FERNANDA HERNANDEZ VALENZUELA\"},{\"invited_id\":3,\"student_invited\":\"ALEJANDRO HERNANDEZ HERNANDEZ\"}]', 3, '2019-07-10 17:51:46', 'irving_2019', 1, 0, '2019-07-10 17:51:46', NULL),
(159, '10141', '3764', 1, 1, 'Maria del Carmne Gonzalez Iturbe', 'gonzaleziturbecarmen@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"Silvia Iturbe Peña\"},{\"invited_id\":2,\"student_invited\":\"Antonio Gonzalez Mendoza\"},{\"invited_id\":3,\"student_invited\":\"Maria de Lourdes Villegas Albarran\"}]', 3, '2019-07-10 17:52:06', 'irving_2019', 1, 0, '2019-07-10 17:52:06', NULL),
(160, '10142', '3755', 1, 1, 'RUTH FLORES ROGEL', 'ruthflores090@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MA DEL CARMEN ROGEL GOMEZ\"},{\"invited_id\":2,\"student_invited\":\"VALENTINA YESENIA DELGADO\"},{\"invited_id\":3,\"student_invited\":\"MARTHA DELGADO\"}]', 3, '2019-07-10 18:04:48', 'irving_2019', 1, 0, '2019-07-10 18:04:48', NULL),
(161, '10143', '3712', 1, 2, 'JOSUE ISRAEL FLORES ACACIO', 'galletitajosuefloresgalletita@outlook.com', '[{\"invited_id\":1,\"student_invited\":\"JUVENTINO FLORES CAMACHO\"},{\"invited_id\":2,\"student_invited\":\"MARIA DEL CARMEN ACACIO TURRAL\"},{\"invited_id\":3,\"student_invited\":\"ALMA MARIA ACACIO TURRAL\"}]', 3, '2019-07-10 18:06:21', 'irving_2019', 1, 0, '2019-07-10 18:06:21', NULL),
(162, '10144', '3841', 1, 1, 'DULCE MARIA PEDROZA GARCIA', 'dulce.0105pg@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"JONATHAN ISRAEL LARA ALBARRAN\"},{\"invited_id\":2,\"student_invited\":\"ANGELICA GARCIA GOMEZ\"},{\"invited_id\":3,\"student_invited\":\"LETICIA GUDALUPE PEDROZA GARCIA\"}]', 3, '2019-07-10 18:48:03', 'irving_2019', 1, 0, '2019-07-10 18:48:03', NULL),
(163, '10145', '3722', 2, 2, 'EMILIANO GARCIA GARCIA', 'garciaemiliano1543@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MIGUEL GARCIA\"},{\"invited_id\":2,\"student_invited\":\"MIRELIA GARCIA\"},{\"invited_id\":3,\"student_invited\":\"SANTIAGO GARCIA\"}]', 3, '2019-07-10 19:17:14', 'irving_2019', 1, 0, '2019-07-10 19:17:14', NULL),
(164, '10146', '3678', 1, 1, 'CARLOS FRANCISCO ESTRADA GONZALEZ', 'cfeg358@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"AZUCENA RIVERA COLIN\"},{\"invited_id\":2,\"student_invited\":\"ARACELI GONZALEZ RUIZ\"},{\"invited_id\":3,\"student_invited\":\"DOLORES GUADALUPE VILCHIS\"}]', 3, '2019-07-11 13:04:07', 'irving_2019', 1, 0, '2019-07-11 13:04:07', NULL),
(165, '10147', '3753', 2, 1, 'ZURIZADAY SANCHEZ ENRIQUEZ', 'zuri97san@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ARIANA MARGARITA ENRIQUEZ SOLIS \"},{\"invited_id\":2,\"student_invited\":\"MIGUEL SANCHEZ MILLAN\"},{\"invited_id\":3,\"student_invited\":\"MARIA DE LA PAZ ENRIQUEZ SOLIS\"}]', 3, '2019-07-11 14:11:40', 'irving_2019', 1, 0, '2019-07-11 14:11:40', NULL),
(166, '10148', '3401', 2, 2, 'VICTOR ALFREDO VERA VILLEGAS', 'veravillegasvictoralfredo@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"VICTOR MANUEL VERA BERNAL \"},{\"invited_id\":2,\"student_invited\":\"MARTINA VILLEGAS VERA\"},{\"invited_id\":3,\"student_invited\":\"KAREN ALEJANDRA VERA VILLEGAS\"}]', 3, '2019-07-11 14:28:30', 'irving_2019', 1, 0, '2019-07-11 14:28:30', NULL),
(167, '10149', '3735', 1, 2, 'YANELI ARELI ROCHA AVILA', 'ROCHAAVILAYARA@GMAIL.COM', '[{\"invited_id\":1,\"student_invited\":\"JUAN EMMANUEL ROCHA AVILA\"},{\"invited_id\":2,\"student_invited\":\"LAURA AVILA TRUJILLO\"},{\"invited_id\":3,\"student_invited\":\"NAHUN ROCHA GOMEZ\"}]', 3, '2019-07-11 14:33:48', 'irving_2019', 1, 0, '2019-07-11 14:33:48', NULL),
(168, '10150', '3670', 1, 1, 'WANDA PAULINA VERA FUENTES', 'paulinavera955@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARIA DOLORES FUENTES GARCIA\"},{\"invited_id\":2,\"student_invited\":\"ANDRES VERA MORALES\"},{\"invited_id\":3,\"student_invited\":\"ANGEL FRANCO CRUZ\"}]', 3, '2019-07-11 14:49:13', 'irving_2019', 1, 0, '2019-07-11 14:49:13', NULL);
INSERT INTO `ia_records` (`record_id`, `code`, `student_account`, `plan_id`, `group_id`, `student_name`, `student_email`, `invited_list`, `total_guest`, `date_registred`, `registration_code`, `status`, `user_id`, `updated_at`, `commnet`) VALUES
(169, '10151', '3763', 3, 1, 'JESUS ANTONIO VILLEGAS NAVA', 'jesustoni2901@gmail.com', '[{\"invited_id\":\"1\",\"student_invited\":\"MARCO ANTONIO VILLEGAS ESTRADA\"},{\"invited_id\":\"3\",\"student_invited\":\"MARIBEL ESTRADA MENDIOLA\"},{\"invited_id\":3,\"student_invited\":\"GRISENIA NAVA VELASQUEZ\"}]', 3, '2019-07-11 15:00:46', 'irving_2019', 1, 0, '2019-07-11 15:00:46', NULL),
(170, '10152', '3686', 1, 1, 'ESTRELLA AYALA SEGURA', 'estrellaayala_@outlook.com', '[{\"invited_id\":1,\"student_invited\":\"ANA ROSA SEGURA CASTILLO \"},{\"invited_id\":2,\"student_invited\":\"BENITO AYALA HINOJOSA \"},{\"invited_id\":3,\"student_invited\":\"JOSE IVAN MARTINEZ HERNANDEZ \"}]', 3, '2019-07-11 15:05:56', 'irving_2019', 1, 0, '2019-07-11 15:05:56', NULL),
(172, '10154', '3666', 1, 2, 'ANGEL GARCIA BARRERA', 'angelgarbar18@icloud.com', '[{\"invited_id\":1,\"student_invited\":\"MARCO ANTONIO GARCIA AYALA\"},{\"invited_id\":2,\"student_invited\":\"ALMA KARINA BARRERA SALAZAR\"},{\"invited_id\":3,\"student_invited\":\"ALEJANDRA VELASQUEZ CASTILLO\"}]', 3, '2019-07-11 15:31:25', 'irving_2019', 1, 0, '2019-07-11 15:31:25', NULL),
(173, '10155', '3677', 2, 1, 'IRVING ALBARRAN SANCHEZ', 'irvingchivas1000@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MAURO ALBARRAN ARIZMENDI\"},{\"invited_id\":2,\"student_invited\":\"MARIA TERESA ROGEL BUSTOS\"},{\"invited_id\":3,\"student_invited\":\"CLAUDIA ALBARRAN ARIZMENDI\"}]', 3, '2019-07-11 15:32:10', 'irving_2019', 1, 0, '2019-07-11 15:32:10', NULL),
(174, '10156', '3100', 2, 1, 'MAYTE ARACELI PEREZ ARIAS', 'perezmayte866@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MIGUEL PEREZ PALMA\"},{\"invited_id\":2,\"student_invited\":\"ALICIA ARIAS LOPEZ\"},{\"invited_id\":3,\"student_invited\":\"SERGIO ELIAS MONTES DE OCA\"}]', 3, '2019-07-11 15:42:53', 'irving_2019', 1, 0, '2019-07-11 15:42:53', NULL),
(175, '10157', '3650', 2, 1, 'MAYTE SANCHEZ ESTRADA', 'smayte20@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MIGUEL SANCHEZ MORALES \"},{\"invited_id\":2,\"student_invited\":\"MARIA TERESA ESTRADA FUENTES \"},{\"invited_id\":3,\"student_invited\":\"DIANA SANCHEZ ESTRADA \"}]', 3, '2019-07-11 15:43:49', 'irving_2019', 1, 0, '2019-07-11 15:43:49', NULL),
(176, '10158', '3745', 2, 2, 'ANDREA SABINA PERDOMO OSORNIO', 'julia_perdomo28@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"ALICIA OSORNIO MONTES DE OCA\"},{\"invited_id\":2,\"student_invited\":\"LUIS VICENTE PERDOMO RIVERA\"},{\"invited_id\":3,\"student_invited\":\"LUIS ANTONIO PERDOMO OSORNIO\"}]', 3, '2019-07-11 15:51:23', 'irving_2019', 1, 0, '2019-07-11 15:51:23', NULL),
(177, '10159', '3740', 3, 1, 'ABIMAEL RIZO VERA', 'yonel_rizo13@hotmail.com', '[{\"invited_id\":1,\"student_invited\":\"HERIBERTO VICTORINO RIZO FUENTES\"},{\"invited_id\":2,\"student_invited\":\"LILIA RIZO FUENTES\"},{\"invited_id\":3,\"student_invited\":\"ABEL SANTAMARIA VILCHIS\"}]', 3, '2019-07-11 16:11:17', 'irving_2019', 1, 0, '2019-07-11 16:11:17', NULL),
(178, '10160', '3661', 3, 1, 'RAFAEL ARIAS GUADARRAMA', 'ra0309144@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"RAFAEL ARIAS SOLIS \"},{\"invited_id\":2,\"student_invited\":\"LAURA MARIA GUADARRAMA FUENTES\"},{\"invited_id\":3,\"student_invited\":\"IVAN ARIAS GUADARRAMA\"}]', 3, '2019-07-11 16:12:12', 'irving_2019', 1, 0, '2019-07-11 16:12:12', NULL),
(179, '10161', '3697', 2, 1, 'ROSA ITZEL MONTES DE OCA BERNAL', 'itzelmontesdeoca7@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"VIRGINIA BERNAL LUGO\"},{\"invited_id\":2,\"student_invited\":\"ANSELMO MONTES DE OCA GONZALEZ\"},{\"invited_id\":3,\"student_invited\":\"MARIO ALBERTO SOLORZANO MARTINEZ\"}]', 3, '2019-07-11 16:21:21', 'irving_2019', 1, 0, '2019-07-11 16:21:21', NULL),
(180, '10162', '3773', 2, 1, 'HEIDI ANGELICA SANCHEZ DIAZ LEAL', 'heidisanchezdiazleal@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MA GUADALUPE DIAZ LEAL\"},{\"invited_id\":2,\"student_invited\":\"FERNANDO SANCHEZ PEREZ\"},{\"invited_id\":3,\"student_invited\":\"MARTHA DIAZ LEAL\"}]', 3, '2019-07-11 16:22:43', 'irving_2019', 1, 0, '2019-07-11 16:22:43', NULL),
(181, '10163', '3761', 2, 1, 'odalis lopez montes de oca', 'ivettearidayv@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"DANIEL LOPEZ ROJAS\"},{\"invited_id\":2,\"student_invited\":\"YOLANDA MONTES DE OCA DIAZ\"},{\"invited_id\":3,\"student_invited\":\"JESUS ADRIAN VAZQUEZ LOPEZ \"}]', 3, '2019-07-11 16:28:11', 'irving_2019', 1, 0, '2019-07-11 16:28:11', NULL),
(182, '10164', '3663', 1, 1, 'JAVIER PEREZ PUGA', 'javier5657perez12@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ARIADNA MARLENNE VARA FUENTES\"},{\"invited_id\":2,\"student_invited\":\"YOLANDA PUGA MACEDO\"},{\"invited_id\":3,\"student_invited\":\"JAVIER PEREZ MILLAN \"}]', 3, '2019-07-11 16:39:04', 'irving_2019', 1, 0, '2019-07-11 16:39:04', NULL),
(183, '10165', '3699', 2, 1, 'SELENE YARID ARIAS MILLAN', 'seleneariasmillan1956@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"WALFRE ARIAS MILLAN\"},{\"invited_id\":2,\"student_invited\":\"CIRILA OCAMPO ARIAS\"},{\"invited_id\":3,\"student_invited\":\"GLORIA ARIAS MILLAN\"}]', 3, '2019-07-11 16:43:34', 'irving_2019', 1, 0, '2019-07-11 16:43:34', NULL),
(184, '10166', '3822', 1, 2, 'JACQUELINE ALEJANDRA ESPINOZA GARCIA', 'jg7370907@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ALEJANDRA GARCIA PEDROZA\"},{\"invited_id\":2,\"student_invited\":\"MARGARITA ESPINOZA SANCHEZ\"},{\"invited_id\":3,\"student_invited\":\"JOSE MARIA SOLIS SANCHEZ\"}]', 3, '2019-07-11 16:51:28', 'irving_2019', 1, 0, '2019-07-11 16:51:28', NULL),
(185, '10167', '3776', 1, 1, 'JESUS ANTONIO ESTRADA TEPETLA', 'JESUSESTRADA1379@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"ALONDRA NATALI SIERRA GUADARRAMA\"},{\"invited_id\":2,\"student_invited\":\"MIGUEL ESTRADA TEPETLA\"},{\"invited_id\":3,\"student_invited\":\"ANDREA SARA TEPETLA GUADARRAMA\"}]', 3, '2019-07-11 17:18:32', 'irving_2019', 1, 0, '2019-07-11 17:18:32', NULL),
(186, '10168', '3795', 2, 1, 'ANGEL EMMANUEL SORIANO GONZALEZ', 'angel36soriano@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"RAMIRO SORIANO TORRES \"},{\"invited_id\":2,\"student_invited\":\"MA ISABEL GONZALEZ BERNAL\"},{\"invited_id\":3,\"student_invited\":\"FRIDA ISABEL SORIANO GONZALEZ \"}]', 3, '2019-07-11 17:46:17', 'irving_2019', 1, 0, '2019-07-11 17:46:17', NULL),
(187, '10169', '3698', 2, 1, 'MARIA DANIELA BENHUMEA PEDROZA', 'daniela26benhumea@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"VICTORICO BENHUMEA SANCHEZ\"},{\"invited_id\":2,\"student_invited\":\"MA AURELIA PEDROZA MONTES DE OCA\"},{\"invited_id\":3,\"student_invited\":\"MARGARITA MONTES DE OCA FRANCO\"}]', 3, '2019-07-12 15:02:48', 'irving_2019', 1, 0, '2019-07-12 15:02:48', NULL),
(188, '10170', '3803', 3, 1, 'MEILY ARAID AVILA VELAZQUEZ', 'Meilyavila50@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARGARITA VELAZQUEZ SUAREZ\"},{\"invited_id\":2,\"student_invited\":\"OSCAR AVILA ARIAS \"},{\"invited_id\":3,\"student_invited\":\"SERENHI AVILA VELAZQUEZ\"}]', 3, '2019-07-12 15:10:41', 'irving_2019', 1, 0, '2019-07-12 15:10:41', NULL),
(189, '10171', '3791', 2, 1, 'juan jose de jesus millan', 'dejesusmillanjuanjose@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"FLORENTINO DE JESUS VASQUEZ\"},{\"invited_id\":2,\"student_invited\":\"JOSEFINA MILLAN PEDROZA\"},{\"invited_id\":3,\"student_invited\":\"MARIA DEL ZOCORRO VASQUEZ SANCHEZ\"}]', 3, '2019-07-12 15:17:56', 'irving_2019', 1, 0, '2019-07-12 15:17:56', NULL),
(190, '10172', '3824', 3, 1, 'MARCO ANTONIO FLORES ROGEL', 'marcoantoniofr999@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"MARCO ANTONIO FLORES ROGEL\"},{\"invited_id\":2,\"student_invited\":\"OLGA ROGEL ROGEL\"},{\"invited_id\":3,\"student_invited\":\"LIZBETH FLORES ROGEL\"}]', 3, '2019-07-12 18:30:09', 'irving_2019', 1, 0, '2019-07-12 18:30:09', NULL),
(191, '10173', '3723', 2, 1, 'MARCO RAUL RODRIGUEZ LOPEZ', 'raul_876@icloud.com', '[{\"invited_id\":1,\"student_invited\":\"JUANITA LOPEZ TRUJILLO\"},{\"invited_id\":2,\"student_invited\":\"FIDEL RODRIGUEZ VAZQUEZ\"},{\"invited_id\":3,\"student_invited\":\"GASPAR RODRIGUEZ BERNAL\"}]', 3, '2019-07-15 15:16:00', 'irving_2019', 1, 0, '2019-07-15 15:16:00', NULL),
(192, '10174', '2104', 1, 2, 'Juana Lopez Barraza', 'mikerider613@gmail.com', '[{\"invited_id\":1,\"student_invited\":\"Adrian Galindo Segura\"},{\"invited_id\":2,\"student_invited\":\"Andres Vega\"},{\"invited_id\":3,\"student_invited\":\"Javier Nava\"},{\"invited_id\":4,\"student_invited\":\"Dulce Vilchis\"},{\"invited_id\":5,\"student_invited\":\"Juan Perez\"}]', 5, '2019-07-16 03:54:57', 'irving_2019', 1, 0, '2019-07-16 03:54:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_sessions`
--

CREATE TABLE `ia_sessions` (
  `id` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `user_agent` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ia_sessions`
--

INSERT INTO `ia_sessions` (`id`, `ip_address`, `user_agent`, `timestamp`, `data`, `user_id`) VALUES
('474d310ba15b55434d1b43b37f8d1f6b4c1b736f', '189.138.84.179', '', 1562778326, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737383332363b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('9c317ab0d04bbbb352410361b3427b8558db2ae1', '189.251.55.132', '', 1562779515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737393531353b, NULL),
('f69991866d9c4515fe830369ed194dc21df2acfd', '189.251.55.132', '', 1562779446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737393434363b, NULL),
('ddaa9134c79de84d618b99c39b67c77c3741a137', '189.251.55.132', '', 1562778397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737363936353b6d73675f737563636573737c733a3237363a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e526567697374726f2070726f63657361646f2065786974c3b373616d656e74653c2f6469763e203c7363726970743e6c6f63616c53746f726167652e72656d6f76654974656d28226362745f67756573747322293b6c6f63616c53746f726167652e72656d6f76654974656d28226362745f7265636f72647322293b3c2f7363726970743e223b5f5f63695f766172737c613a313a7b733a31313a226d73675f73756363657373223b733a333a226f6c64223b7d, NULL),
('7cf79a9df1b551fe7c001276d73e17f61414798a', '189.251.55.132', '', 1562777306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737373036303b, NULL),
('0ddb7bab80a599b14af54275825f500c4cae2762', '189.251.55.132', '', 1562779603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737393630333b, NULL),
('42af156f256b1e1197a1fe217acc4b1e28790c0a', '189.251.55.132', '', 1562777548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737373235303b6d73675f737563636573737c733a3237363a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e526567697374726f2070726f63657361646f2065786974c3b373616d656e74653c2f6469763e203c7363726970743e6c6f63616c53746f726167652e72656d6f76654974656d28226362745f67756573747322293b6c6f63616c53746f726167652e72656d6f76654974656d28226362745f7265636f72647322293b3c2f7363726970743e223b5f5f63695f766172737c613a313a7b733a31313a226d73675f73756363657373223b733a333a226f6c64223b7d, NULL),
('6b19f81aacde211f020ffaa0e0f5bfbe2183dccf', '189.138.127.47', '', 1562780944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738303934343b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('fb2b914696a1a30b095e2fb2e082ed32879bd24e', '189.251.55.132', '', 1562780863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323737393434363b6d73675f737563636573737c733a3237363a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e526567697374726f2070726f63657361646f2065786974c3b373616d656e74653c2f6469763e203c7363726970743e6c6f63616c53746f726167652e72656d6f76654974656d28226362745f67756573747322293b6c6f63616c53746f726167652e72656d6f76654974656d28226362745f7265636f72647322293b3c2f7363726970743e223b5f5f63695f766172737c613a313a7b733a31313a226d73675f73756363657373223b733a333a226f6c64223b7d, NULL),
('3f112feb2f2372725a2c3b7222b51cbf0f4e08cf', '189.251.55.132', '', 1562781379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738313337393b6d73675f737563636573737c733a3237363a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e526567697374726f2070726f63657361646f2065786974c3b373616d656e74653c2f6469763e203c7363726970743e6c6f63616c53746f726167652e72656d6f76654974656d28226362745f67756573747322293b6c6f63616c53746f726167652e72656d6f76654974656d28226362745f7265636f72647322293b3c2f7363726970743e223b5f5f63695f766172737c613a313a7b733a31313a226d73675f73756363657373223b733a333a226f6c64223b7d, NULL),
('d052e92420fa4e3e1832a197ed46367fe6666fe3', '189.251.55.132', '', 1562781808, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738313830383b6d73675f737563636573737c733a3237363a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e526567697374726f2070726f63657361646f2065786974c3b373616d656e74653c2f6469763e203c7363726970743e6c6f63616c53746f726167652e72656d6f76654974656d28226362745f67756573747322293b6c6f63616c53746f726167652e72656d6f76654974656d28226362745f7265636f72647322293b3c2f7363726970743e223b5f5f63695f766172737c613a313a7b733a31313a226d73675f73756363657373223b733a333a226f6c64223b7d, NULL),
('90dfdb3a280fee39fa05f244164e6864c724eb33', '189.251.55.132', '', 1562781476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738303139363b, NULL),
('36dbf2ffbc4b16de31eeb0151e2b2e7bb4573be9', '189.251.55.132', '', 1562783603, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738333630333b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('46390f0510c1deb05fdec311f2a3bcec3516a587', '189.251.119.211', '', 1562781014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738313031343b, NULL),
('01d61477e8ff2a971d0c2bb3a29d7109c4ee9c67', '189.251.55.132', '', 1562781379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738313337393b, NULL),
('6059027f598f5dd956d7c1d959e39ef91e7042f2', '189.251.55.132', '', 1562782758, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738313830383b, NULL),
('8f8f60438e50592057db734ed4e88649fc23394b', '189.251.55.132', '', 1562786160, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738363136303b, NULL),
('2f2fd8a7f8f7751bdc7d29179008c07041115e17', '189.251.55.132', '', 1562786246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323738363136303b, NULL),
('c2457b3b5332bae8a932723fe90bcf27e9056593', '189.251.55.132', '', 1562849776, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323834393737353b, NULL),
('e4165f419e0d156a43287a61607f95553aafa7cb', '189.251.55.132', '', 1562852717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835323731373b6d73675f737563636573737c733a3237363a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e526567697374726f2070726f63657361646f2065786974c3b373616d656e74653c2f6469763e203c7363726970743e6c6f63616c53746f726167652e72656d6f76654974656d28226362745f67756573747322293b6c6f63616c53746f726167652e72656d6f76654974656d28226362745f7265636f72647322293b3c2f7363726970743e223b5f5f63695f766172737c613a313a7b733a31313a226d73675f73756363657373223b733a333a226f6c64223b7d, NULL),
('b293087b643ed44d483db9086a7102a481adc0cc', '189.251.55.132', '', 1562856277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835363237373b, NULL),
('6d367adccb87c03dadc95636260bef96e565d24f', '189.251.55.132', '', 1562855021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835353032313b, NULL),
('2b3d7b38f9cd97b973a19e40355d6b65b19e402d', '189.251.55.132', '', 1562858507, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835383530373b, NULL),
('ef2059634fb820bb35aa62956310f87068722324', '189.251.55.132', '', 1562858132, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835383133323b, NULL),
('afc40624249117ac0df1dff34b9ed9a815029d6c', '189.138.61.223', '', 1562858479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835383437393b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('3378dab0bd3c6d834bef8bf0203a73da4329967e', '189.251.55.132', '', 1562858660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835383636303b, NULL),
('7efb7357df913335c53b73c5e4eadc2750374446', '189.251.55.132', '', 1562860542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836303534323b6d73675f737563636573737c733a3237363a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e526567697374726f2070726f63657361646f2065786974c3b373616d656e74653c2f6469763e203c7363726970743e6c6f63616c53746f726167652e72656d6f76654974656d28226362745f67756573747322293b6c6f63616c53746f726167652e72656d6f76654974656d28226362745f7265636f72647322293b3c2f7363726970743e223b5f5f63695f766172737c613a313a7b733a31313a226d73675f73756363657373223b733a333a226f6c64223b7d, NULL),
('33566d89a8100addfbf6b7a16feefa903e42771f', '189.138.84.179', '', 1562860540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836303534303b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('f98e0025e114acf3532d1864378e133abc231a4e', '189.251.55.132', '', 1562861258, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836313235383b, NULL),
('7d0a056bb7437aee5c2e8e991ba9c5b0a9e7ae25', '189.251.55.132', '', 1562861825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836313832353b, NULL),
('fa4602c5f049ac2646d16089c32b37e9b78088cd', '189.251.55.132', '', 1562860289, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323835383636303b, NULL),
('f862f9c0c64087b70e1ec917ec84e0f16e21c36f', '189.251.55.132', '', 1562861761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836303534303b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('05cc42fea2a82a323e5805c845e0662ff13c1bc7', '189.251.55.132', '', 1562862635, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836323633353b, NULL),
('5736ea36b41f31e2df6e863a7effdeb1643c93ea', '189.251.55.132', '', 1562861590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836313235383b, NULL),
('e4e17def4f0ff19ba8a3604cdde93ed468143439', '189.251.55.132', '', 1562863627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836333632373b, NULL),
('3484c665a6383343b76b9d1c4ca465c5528b9b5c', '189.251.55.132', '', 1562865090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836353039303b, NULL),
('403db20f0e52dff3d7a3214379e63e24588ef375', '189.251.55.132', '', 1562863893, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836333632373b, NULL),
('35b11a495e70677b341c929e81c23ffb7695f441', '189.251.55.132', '', 1562866931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836363933313b, NULL),
('55e00f0eb7fe8f533e495869d5a8b0996baa1f2c', '189.251.55.132', '', 1562865647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836353537333b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('08986c179f1b1f8dbe918b75b69120f954d9bc59', '189.251.55.132', '', 1562867182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323836363933313b, NULL),
('2ac7f3100b4bc1891ca41236e3bf43248cf02fd9', '189.251.144.4', '', 1562871151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323837313134383b, NULL),
('aa06ba13c1e286b90b36023390c9b760c49bba4e', '189.251.144.4', '', 1562899402, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323839393339393b, NULL),
('9dc73912b5b0664c556a4127c4fa1ad0314f0fca', '189.251.55.132', '', 1562944657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323934343635373b, NULL),
('1c6fff8bf8ec621735894d0270a0812fec809d7d', '189.251.55.132', '', 1562944311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323934343330393b, NULL),
('d72d64325194aab977aff434a579040094fc5336', '189.251.55.132', '', 1562944683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323934343635373b, NULL),
('e66fe902753c2741beeb4b600a794bdb0a35db50', '189.251.55.132', '', 1562958408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323935383430383b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('5940cea058a11e7fcc4fd3ca2afb1fd6876815e9', '189.138.84.179', '', 1562958408, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323935383430383b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('d4e44f7f5a25904caca0549537bf368f3cb3ae7d', '201.175.203.202', '', 1562960680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323935393436383b726566657265645f66726f6d7c4e3b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32343a2244616e69656c204d6f6e726f7920446f6dc3ad6e6775657a223b656d61696c7c733a33313a2264616e69656c6d6f6e726f79646f6d696e6775657a40676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('efe42f58da01e3607a0103b385d544a6c4818e7d', '201.175.203.202', '', 1562961958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536323936313935383b, NULL),
('375d55397d27e8f06d92da17ba9208915349c0e9', '189.251.32.170', '', 1563127257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333132373235373b, NULL),
('6ae0163abc0ef3f27b25d4b4e58fa9607e29928d', '173.252.87.3', '', 1563134297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333133343239373b, NULL),
('4f7b964580b7d18e503166e411ccd5e65f264bf5', '173.252.87.3', '', 1563134298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333133343239383b, NULL),
('348b7179edb943c2288b20b9da079da1ed28a851', '173.252.87.15', '', 1563134299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333133343239393b, NULL),
('a5e4b6942a361087e6f2d904c4e10d32180ec3dc', '173.252.87.15', '', 1563134299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333133343239393b, NULL),
('c4399ea57466bdbf0ff22c0271518127b92ee162', '201.175.202.222', '', 1563134303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333133343330323b, NULL),
('1d6d75f98811843b23b270a3e4621d702812d24b', '201.175.203.77', '', 1563155646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353634363b, NULL),
('e35ce104ba38f5761bd561f4bc154daf28cb8111', '201.175.203.77', '', 1563155647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353634373b, NULL),
('22e9d019d66c08fcd8aca08b45a67d86cc482681', '201.175.203.77', '', 1563155656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353635363b, NULL),
('fe791778fc5a76f70e958574976b09e7b348beb7', '201.175.203.77', '', 1563155656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353635363b, NULL),
('e5ad1251cd63a09be83e4409f022e617a40ba86f', '201.175.203.77', '', 1563155658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353635383b, NULL),
('7ab6b31f4ce6a5196430a0bbbdfdc0a551bce375', '201.175.203.77', '', 1563155658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353635383b, NULL),
('c66e26acdbe12e583f6f86e855b86bdca4b2349e', '201.175.203.77', '', 1563155660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353636303b, NULL),
('017a42c760a1934ceea26597c00c667e74ccd026', '201.175.203.77', '', 1563155660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333135353636303b, NULL),
('0c8d3678357d523d1fff6e7494bbfebd889a284f', '189.251.125.139', '', 1563198400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333139383430303b, NULL),
('fd3f3905833ad743952c44ae59a0a16f9b82f9fd', '189.251.163.225', '', 1563200564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333230303536333b, NULL),
('223babe3a354ae739b3d9a48b120aebca986c200', '173.252.87.28', '', 1563200586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333230303538363b, NULL),
('c78ec029d1f69c9ae5dcd57cd98ff8d8272fc553', '173.252.87.28', '', 1563200586, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333230303538363b, NULL),
('8f9533c5a9dc9e0dd5c3c2baa277d61feaafa410', '173.252.87.14', '', 1563200587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333230303538373b, NULL),
('64a865b662664bd5278669107bcc1e7dfd96d5df', '173.252.87.14', '', 1563200587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333230303538373b, NULL),
('ce48febc93b2c938f48d9363b10344b7760b7a3f', '189.251.55.132', '', 1563203766, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333230333333363b, NULL),
('2ab7251886cd80e1320b0eb2249016076240ce40', '189.251.55.132', '', 1563213484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333231333038343b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('8276d94de2d7bbe89d60a52f164104e2121a051d', '173.252.87.10', '', 1563231555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333233313535353b, NULL),
('f58b304cb328dbd68e3ab93cfa0906640af1ac95', '173.252.87.10', '', 1563231555, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333233313535353b, NULL),
('3b0b976436ffd81d68ae054e5c3c63e1074cf56a', '173.252.87.28', '', 1563231556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333233313535363b, NULL),
('38c70ec9cbe8b0b3580d733bb73bba5ed7f2432b', '173.252.87.28', '', 1563231556, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333233313535363b, NULL),
('dd335055185b970a2357e3c8ec87bfa0b68b2c02', '173.252.87.4', '', 1563234548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333233343534383b, NULL),
('62da41f3afcda0ad7cb40324a36a6e31b97f62dd', '173.252.87.4', '', 1563234549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333233343534393b, NULL),
('b8498ad13ca6c8dd34d2eec958325d82af47e442', '189.251.32.170', '', 1563245959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333234353935393b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32343a2244616e69656c204d6f6e726f7920446f6dc3ad6e6775657a223b656d61696c7c733a33313a2264616e69656c6d6f6e726f79646f6d696e6775657a40676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('b682dd062cd4ec5f475a2736d914d2b9542f2cf9', '189.251.32.170', '', 1563249613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333234393631333b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32343a2244616e69656c204d6f6e726f7920446f6dc3ad6e6775657a223b656d61696c7c733a33313a2264616e69656c6d6f6e726f79646f6d696e6775657a40676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('5b619e968d8045210ca3a12924ed458cc67de4b9', '201.175.203.77', '', 1563251668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333235313636383b, NULL),
('6e74bb0354a476368b223b6bf345d6737143c1b2', '189.251.32.170', '', 1563251763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333235313736333b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32343a2244616e69656c204d6f6e726f7920446f6dc3ad6e6775657a223b656d61696c7c733a33313a2264616e69656c6d6f6e726f79646f6d696e6775657a40676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('fda9be3b01f9f24493abaf00adf869199c66b4af', '189.138.84.179', '', 1563249954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333234393933353b757365725f69647c733a313a2232223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32393a22497276696e672053616e74616d6172c3ad6120446f6dc3ad6e6775657a223b656d61696c7c733a31393a226973616e74616d616440676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('5692326658e691cdac50876c73d0b75c467a10a4', '177.247.117.188', '', 1563250099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333235303039393b, NULL),
('1d60e471057df25f962f088e774bb5ab19930f6b', '201.175.203.77', '', 1563251668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333235313636383b, NULL),
('defa8fc87f92fd6f68e339236850d4309f1ce653', '189.251.32.170', '', 1563252495, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333235313736333b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32343a2244616e69656c204d6f6e726f7920446f6dc3ad6e6775657a223b656d61696c7c733a33313a2264616e69656c6d6f6e726f79646f6d696e6775657a40676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('444230c34472b7a1585d833c1328ade6b732059c', '201.175.203.77', '', 1563258727, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333235383730333b726566657265645f66726f6d7c4e3b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32343a2244616e69656c204d6f6e726f7920446f6dc3ad6e6775657a223b656d61696c7c733a33313a2264616e69656c6d6f6e726f79646f6d696e6775657a40676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('6d2175c59704d44456067edbc80f135a4abdc1a9', '201.175.203.73', '', 1563289875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333238393832383b726566657265645f66726f6d7c4e3b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b70726f66696c655f6465736372697074696f6e7c733a31333a2241646d696e6973747261646f72223b646973745f6e616d657c733a32343a2244616e69656c204d6f6e726f7920446f6dc3ad6e6775657a223b656d61696c7c733a33313a2264616e69656c6d6f6e726f79646f6d696e6775657a40676d61696c2e636f6d223b70686f6e657c733a31303a2237323231303233333032223b70686f746f5f6d61696e7c4e3b6c6f676765645f696e7c623a313b, NULL),
('495985ece447c576466a732eb7f011a4f7c3d78b', '189.251.125.139', '', 1563303815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333330333831353b, NULL),
('56c14ac7cb5347fd6eabb8e6b8791980160a85b8', '201.175.203.67', '', 1563313884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333331333838343b, NULL),
('884f13c392a6b87c2feeedf8d5b9837af8183323', '201.175.203.168', '', 1563333699, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333333333335343b, NULL),
('d7bd4bef3f95d6141f7181662e2375396c4f418c', '201.175.203.168', '', 1563333454, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333333333435343b, NULL),
('3dbd56648f9eab1eda83bcc7e060eb053745f52a', '201.175.203.168', '', 1563333456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333333333435363b, NULL),
('bd7b8d64cd7cbc87e69db1b4c4f6ec113731bc38', '189.251.52.233', '', 1563336933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333333363933333b, NULL),
('841baadd0b70e6fae0d33eba659bb381af551c3f', '189.251.52.233', '', 1563337046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333333363933333b, NULL),
('8c0b50cb76c99c2429ac7a4d3e3a50f38642b4d9', '201.175.203.168', '', 1563337017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333333373031353b, NULL),
('25d81d56f0fb19f43c4a048bf473bfa33a35f8e0', '189.251.125.139', '', 1563373372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333337333032323b, NULL),
('f8971d57e2e49045303b14467eee65e42bd62aba', '200.68.143.28', '', 1563375223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333337353232323b, NULL),
('ec43203b016079395bcb7cabed5086d2e5f3c82b', '78.58.191.123', '', 1563389859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333338393833363b, NULL),
('e2e44db10f5dfeb877cd6d8271ae2df503420c2e', '201.175.203.168', '', 1563404312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333430343331323b, NULL),
('1e944817993e62528f682ba9cd7b20652821c458', '187.210.189.227', '', 1563409489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333430393438393b, NULL),
('937f1fb7b9c8471a6ce4839255e75a5a5b40ddd8', '189.251.112.39', '', 1563847836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333834373833363b, NULL),
('d1c35e57e1d6880f49e34d996cff3c87bd6dd85b', '189.251.112.39', '', 1563856582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333835363538323b, NULL),
('b21e1de16cbb24128811a4216cf3abb7f68df3ac', '[2a02:4780:4:0:2199:808d:81c0:7f06]', '', 1563872868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536333837323836383b, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_settings`
--

CREATE TABLE `ia_settings` (
  `settings_id` int(11) NOT NULL,
  `settings_email` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `registration_code` text COLLATE utf8_spanish_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ia_settings`
--

INSERT INTO `ia_settings` (`settings_id`, `settings_email`, `sender_name`, `registration_code`, `status`, `user_id`, `updated_at`, `comment`) VALUES
(1, 'dafsystems01@gmail.com', 'CBT-GRADUACIÓN 2019', '5fcc241d07c43cd2ac3f056b090058481334164d5053cb4fca794fce6608b05716a3515da658ca4666186c38b385c7019c2d624be3bb4dff111260f475eb3359evwqGQRKyoi/dIpaU4QWPN71VGGjNBxaP8I6ZZW9h93sEsmLSdpkvZCUEq8JjyKo', 1, 1, '2019-07-15 23:18:03', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ia_users`
--

CREATE TABLE `ia_users` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `user_name` text COLLATE utf8_spanish_ci NOT NULL,
  `dist_name` text COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `title` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `phone` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `password_reset` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `access_level` int(11) NOT NULL DEFAULT 1,
  `last_login` int(11) DEFAULT NULL,
  `photo_main` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `account_authorizer` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` tinyint(1) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ia_users`
--

INSERT INTO `ia_users` (`id`, `profile_id`, `user_name`, `dist_name`, `status`, `title`, `email`, `phone`, `password`, `password_reset`, `access_level`, `last_login`, `photo_main`, `account_authorizer`, `user_id`, `updated_at`, `comment`) VALUES
(1, 1, 'admin', 'Daniel Monroy Domínguez', 1, 'DAFSystems', 'danielmonroydominguez@gmail.com', '7221023302', '78e013b652b7c5c9160172eebe8622b6543965fb9189368ae6073bd1f877c752bf7f6479bb163e02047441ff1c6581fa89c678be3d57f81f45210331fce9409em7cnWdrT2Y6JfjXz/Ix/+f0YdGk4RpY/BRIxi95U8gw=', '', 1, 1563289845, NULL, 'Daniel Monroy Domínguez', 1, '2019-07-08 16:48:30', NULL),
(2, 1, 'irving_01', 'Irving Santamaría Domínguez', 1, 'Docente CBT', 'isantamad@gmail.com', '7221023302', '78e013b652b7c5c9160172eebe8622b6543965fb9189368ae6073bd1f877c752bf7f6479bb163e02047441ff1c6581fa89c678be3d57f81f45210331fce9409em7cnWdrT2Y6JfjXz/Ix/+f0YdGk4RpY/BRIxi95U8gw=', '', 1, 1563249948, NULL, 'Daniel Monroy Domínguez', 1, '2019-07-08 18:39:31', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ia_groups`
--
ALTER TABLE `ia_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indices de la tabla `ia_plans`
--
ALTER TABLE `ia_plans`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indices de la tabla `ia_profiles`
--
ALTER TABLE `ia_profiles`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indices de la tabla `ia_records`
--
ALTER TABLE `ia_records`
  ADD PRIMARY KEY (`record_id`);

--
-- Indices de la tabla `ia_settings`
--
ALTER TABLE `ia_settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indices de la tabla `ia_users`
--
ALTER TABLE `ia_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ia_groups`
--
ALTER TABLE `ia_groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ia_plans`
--
ALTER TABLE `ia_plans`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ia_profiles`
--
ALTER TABLE `ia_profiles`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ia_records`
--
ALTER TABLE `ia_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT de la tabla `ia_settings`
--
ALTER TABLE `ia_settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ia_users`
--
ALTER TABLE `ia_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
