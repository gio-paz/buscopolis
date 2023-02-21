-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2023 a las 04:10:38
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `buscopoli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add Administrador', 4, 'add_user'),
(14, 'Can change Administrador', 4, 'change_user'),
(15, 'Can delete Administrador', 4, 'delete_user'),
(16, 'Can view Administrador', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add grupo', 7, 'add_grupo'),
(26, 'Can change grupo', 7, 'change_grupo'),
(27, 'Can delete grupo', 7, 'delete_grupo'),
(28, 'Can view grupo', 7, 'view_grupo'),
(29, 'Can add grupos_de_investigacion', 8, 'add_grupos_de_investigacion'),
(30, 'Can change grupos_de_investigacion', 8, 'change_grupos_de_investigacion'),
(31, 'Can delete grupos_de_investigacion', 8, 'delete_grupos_de_investigacion'),
(32, 'Can view grupos_de_investigacion', 8, 'view_grupos_de_investigacion'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add usuario', 10, 'add_usuario'),
(38, 'Can change usuario', 10, 'change_usuario'),
(39, 'Can delete usuario', 10, 'delete_usuario'),
(40, 'Can view usuario', 10, 'view_usuario'),
(41, 'Can add investigadore', 11, 'add_investigadore'),
(42, 'Can change investigadore', 11, 'change_investigadore'),
(43, 'Can delete investigadore', 11, 'delete_investigadore'),
(44, 'Can view investigadore', 11, 'view_investigadore');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$bLwCp7YVQUgwVC7mGjYxQm$keP9mUh/8LGd/5vT+kuPyqbwvL6AW8ocb0WF+zKupl0=', '2023-02-11 23:48:22.453231', 1, 'Marlon', '', '', 'mquenoran@umariana.edu.co', 1, 1, '2023-02-11 23:47:44.474856');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-11 23:56:02.086606', '1234', 'Grupo de investigación Ambiental GIA codigo: 1234  área de conocimiento: Ambiental  clasificación MinCiencias: B  fecha formación: 2005-02-01   lider: Viviana Quintero Dallos  grupLac: https://scienti', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'grupos', 'grupo'),
(8, 'investigadores', 'grupos_de_investigacion'),
(11, 'investigadores', 'investigadore'),
(9, 'investigadores', 'producto'),
(10, 'investigadores', 'usuario'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-02-11 23:47:00.296225'),
(2, 'auth', '0001_initial', '2023-02-11 23:47:00.521647'),
(3, 'admin', '0001_initial', '2023-02-11 23:47:00.584480'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-11 23:47:00.591452'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-11 23:47:00.591452'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-11 23:47:00.631823'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-11 23:47:00.664025'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-11 23:47:00.671448'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-11 23:47:00.681420'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-11 23:47:00.700620'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-11 23:47:00.711810'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-11 23:47:00.711810'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-11 23:47:00.727836'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-11 23:47:00.739591'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-11 23:47:00.751549'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-11 23:47:00.751549'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-11 23:47:00.770757'),
(18, 'auth', '0013_alter_user_options', '2023-02-11 23:47:00.775658'),
(19, 'grupos', '0001_initial', '2023-02-11 23:47:00.789511'),
(20, 'investigadores', '0001_initial', '2023-02-11 23:47:00.860374'),
(21, 'sessions', '0001_initial', '2023-02-11 23:47:00.881506'),
(22, 'user', '0001_initial', '2023-02-11 23:47:00.950714'),
(23, 'user', '0002_delete_investigadores_delete_producto', '2023-02-11 23:47:00.969907');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vj8pjnzhwxl3rcik9r1498zqrk0dwpiw', '.eJxVjMsOwiAQRf-FtSHA8GhduvcbCMwMUjU0Ke3K-O_apAvd3nPOfYmYtrXGrfMSJxJnocXpd8sJH9x2QPfUbrPEua3LlOWuyIN2eZ2Jn5fD_TuoqddvDQg5GG8oBMgIqHQgZQKVPDpED6Wgs4CDz84qZB6QHbAiW7wZNSrx_gDooTgr:1pQzbS:7KUCwaVJ5h0AXan-JarBgjmfEoiCcrb6J80K2I0MBnQ', '2023-02-25 23:48:22.456394');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos_grupo`
--

CREATE TABLE `grupos_grupo` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `contenido` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigadores_grupos_de_investigacion`
--

CREATE TABLE `investigadores_grupos_de_investigacion` (
  `codigo` varchar(10) NOT NULL,
  `nombre_Grupo` varchar(50) NOT NULL,
  `area_Conocimiento` varchar(50) NOT NULL,
  `clasificacion_MinCiencias` varchar(50) NOT NULL,
  `fecha_Formacion` date NOT NULL,
  `lider` varchar(70) NOT NULL,
  `segundo_lider` varchar(70) NOT NULL,
  `grupLac` varchar(70) NOT NULL,
  `linea_investigacion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `investigadores_grupos_de_investigacion`
--

INSERT INTO `investigadores_grupos_de_investigacion` (`codigo`, `nombre_Grupo`, `area_Conocimiento`, `clasificacion_MinCiencias`, `fecha_Formacion`, `lider`, `segundo_lider`, `grupLac`, `linea_investigacion`) VALUES
('1234', 'Grupo de investigación Ambiental GIA', 'Ambiental', 'B', '2005-02-01', 'Viviana Quintero Dallos', 'Viviana Quintero Dallos', 'https://scienti.minciencias.gov.co/gruplac/jsp/visualiza/visualizagr.j', 'Ambiental');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigadores_investigadore`
--

CREATE TABLE `investigadores_investigadore` (
  `cedula` varchar(10) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellidos` varchar(35) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `categoriaMinciencias` varchar(30) NOT NULL,
  `gmail` varchar(40) NOT NULL,
  `contrasenia` varchar(30) NOT NULL,
  `telefono` bigint(20) UNSIGNED NOT NULL CHECK (`telefono` >= 0),
  `direccion` varchar(60) NOT NULL,
  `diplomados` varchar(200) NOT NULL,
  `especializaciones` varchar(200) NOT NULL,
  `maestrias` varchar(200) NOT NULL,
  `doctorados` varchar(200) NOT NULL,
  `tipoinvestigacionsentidoestricto` varchar(100) NOT NULL,
  `convocatorias` varchar(200) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `grupoinvestigacion_id` varchar(10) NOT NULL,
  `productos_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigadores_producto`
--

CREATE TABLE `investigadores_producto` (
  `codigo` varchar(10) NOT NULL,
  `referenciasBibliograficas` varchar(10) NOT NULL,
  `url` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `investigadores_usuario`
--

CREATE TABLE `investigadores_usuario` (
  `cedula` varchar(10) NOT NULL,
  `nombres` varchar(35) NOT NULL,
  `apellidos` varchar(35) NOT NULL,
  `gmail` varchar(40) NOT NULL,
  `contrasenia` varchar(30) NOT NULL,
  `telefono` bigint(20) UNSIGNED NOT NULL CHECK (`telefono` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `grupos_grupo`
--
ALTER TABLE `grupos_grupo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `investigadores_grupos_de_investigacion`
--
ALTER TABLE `investigadores_grupos_de_investigacion`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `investigadores_investigadore`
--
ALTER TABLE `investigadores_investigadore`
  ADD PRIMARY KEY (`cedula`),
  ADD KEY `investigadores_inves_grupoinvestigacion_i_46f60ed1_fk_investiga` (`grupoinvestigacion_id`),
  ADD KEY `investigadores_inves_productos_id_3ca7aeca_fk_investiga` (`productos_id`);

--
-- Indices de la tabla `investigadores_producto`
--
ALTER TABLE `investigadores_producto`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `investigadores_usuario`
--
ALTER TABLE `investigadores_usuario`
  ADD PRIMARY KEY (`cedula`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `grupos_grupo`
--
ALTER TABLE `grupos_grupo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `investigadores_investigadore`
--
ALTER TABLE `investigadores_investigadore`
  ADD CONSTRAINT `investigadores_inves_grupoinvestigacion_i_46f60ed1_fk_investiga` FOREIGN KEY (`grupoinvestigacion_id`) REFERENCES `investigadores_grupos_de_investigacion` (`codigo`),
  ADD CONSTRAINT `investigadores_inves_productos_id_3ca7aeca_fk_investiga` FOREIGN KEY (`productos_id`) REFERENCES `investigadores_producto` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
