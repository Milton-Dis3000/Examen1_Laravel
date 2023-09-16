-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 16-09-2023 a las 19:50:39
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminusuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_15_163459_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 'Miss Nella Zboncak III', 'Bins', 'ikovacek@hotmail.com', '1993-07-11', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(2, 'Zelda Bernhard', 'Mitchell', 'darby04@deckow.com', '1998-11-15', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(3, 'Ericka Baumbach', 'Emard', 'runolfsson.jovanny@gmail.com', '1998-09-28', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(4, 'Gabriella Walker', 'Quitzon', 'hardy36@boyle.com', '1987-02-01', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(5, 'Krista Leannon', 'Conn', 'yundt.naomi@yahoo.com', '1985-10-30', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(6, 'Haskell Kshlerin Sr.', 'Marquardt', 'weldon12@yahoo.com', '1985-03-06', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(7, 'Mrs. Alba Mohr', 'Konopelski', 'jules.hagenes@gmail.com', '2002-08-19', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(8, 'Quinton Hoppe', 'Kozey', 'schamberger.lorna@flatley.biz', '1987-09-10', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(9, 'Mrs. Marcelle Lind V', 'Nitzsche', 'rogers85@mccullough.com', '2006-07-07', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(10, 'Vita Aufderhar', 'Pouros', 'jarrett.gutkowski@stroman.com', '1973-04-13', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(11, 'Ms. Billie Boehm Sr.', 'Greenfelder', 'dlangworth@langosh.com', '2012-01-27', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(12, 'Jarred Huels', 'Howe', 'mary63@gmail.com', '1984-07-08', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(13, 'Carmel Gottlieb', 'Sipes', 'schamberger.kenneth@borer.net', '1986-07-19', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(14, 'Prof. Hertha Mohr', 'Gulgowski', 'sophia25@borer.net', '1971-10-15', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(15, 'Mr. Doug Swift', 'Rolfson', 'jcartwright@quitzon.org', '1998-04-17', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(16, 'Tracey Schmitt Jr.', 'Kessler', 'oveum@hotmail.com', '1992-05-05', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(17, 'Prof. Mario Hammes III', 'Reichel', 'xmoore@gmail.com', '2006-07-11', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(18, 'Elias Volkman', 'Jacobson', 'sawayn.manley@fadel.com', '2000-10-27', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(19, 'Arno Mitchell', 'Muller', 'jeremy15@yahoo.com', '1989-05-28', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(20, 'Chaya Monahan', 'Towne', 'makenna.skiles@tremblay.org', '1982-03-23', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(21, 'Melyna Windler', 'Gusikowski', 'julianne.gutkowski@block.com', '2003-06-09', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(22, 'Mrs. Lucienne Schumm V', 'Labadie', 'kaelyn.walter@gmail.com', '2020-12-19', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(23, 'Elda Kuphal', 'Wolf', 'nikolaus.clint@gmail.com', '1971-05-07', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(24, 'Mr. Kamron Frami MD', 'Reilly', 'rita.witting@braun.net', '2008-03-11', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(25, 'Margarete Upton', 'Stamm', 'denis13@hotmail.com', '2001-07-05', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(26, 'Dr. Bennie Welch', 'Hane', 'goodwin.caleb@gmail.com', '2022-10-30', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(27, 'Kenton Kautzer', 'Hudson', 'grover.oconnell@jerde.com', '1993-06-29', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(28, 'Gwendolyn Feeney', 'Cruickshank', 'nabbott@dietrich.com', '2019-11-27', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(29, 'Claudie Oberbrunner', 'Anderson', 'carter00@gmail.com', '1974-02-04', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(30, 'Alisha Upton', 'Olson', 'wilmer.schmidt@gmail.com', '1970-03-02', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(31, 'Dr. Khalil Greenfelder', 'McKenzie', 'heath.welch@kirlin.com', '2018-08-22', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(32, 'Jessica DuBuque', 'Bergnaum', 'andreane20@hotmail.com', '1997-11-03', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(33, 'Kody Gorczany DVM', 'Glover', 'ojacobi@cartwright.info', '1991-12-19', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(34, 'Dorris Stehr', 'Padberg', 'eschultz@gmail.com', '1994-02-27', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(35, 'Prof. Elenor Kulas', 'Kirlin', 'carli82@yahoo.com', '1990-04-11', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(36, 'Levi Gislason II', 'Herman', 'jaskolski.carolyn@stracke.com', '2003-10-20', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(37, 'Al Zboncak MD', 'Abernathy', 'zrolfson@gmail.com', '2021-12-04', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(38, 'Kirstin Weissnat', 'Stark', 'wreilly@gmail.com', '1994-07-24', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(39, 'Elouise Conn', 'Marvin', 'rosalia07@yahoo.com', '1976-10-02', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(40, 'Olin Kertzmann Sr.', 'Schulist', 'keebler.sincere@huels.com', '1990-08-25', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(41, 'Reilly Boyle', 'Raynor', 'schroeder.rosemarie@gmail.com', '1975-05-08', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(42, 'Paige Steuber', 'Tillman', 'okon.imelda@stanton.com', '2010-05-01', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(43, 'Monica Jacobi IV', 'Will', 'hollie02@yahoo.com', '1978-02-01', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(44, 'Willis Herman', 'Turcotte', 'franecki.meaghan@ledner.com', '2023-09-06', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(45, 'Louisa Schumm', 'McDermott', 'denesik.gerhard@gmail.com', '1977-02-21', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(46, 'Prof. Justine Beer MD', 'Labadie', 'kohler.karelle@oberbrunner.info', '2011-06-10', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(47, 'Miss Claire McLaughlin V', 'Spinka', 'addie78@hotmail.com', '2019-09-25', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(48, 'Devante Kling', 'Walker', 'west.olaf@bernhard.com', '2017-06-23', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(49, 'Larue Sporer', 'Schaden', 'freda37@hamill.com', '2016-08-18', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(50, 'Eriberto Reilly', 'Bernhard', 'margarett.steuber@gmail.com', '1997-01-16', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(51, 'Mr. Neil Zemlak', 'Reichert', 'xcarter@hotmail.com', '2006-02-18', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(52, 'Mariah Grant', 'Satterfield', 'zelda.ebert@hotmail.com', '2021-10-27', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(53, 'Prof. Daphnee Greenholt', 'Botsford', 'krajcik.maybell@wiza.biz', '1977-02-05', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(54, 'Jamey Pagac', 'Harris', 'uokon@huel.com', '1995-08-06', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(55, 'Dr. Miracle Nienow', 'Kovacek', 'gracie09@fay.org', '1990-06-30', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(56, 'Alva Fahey', 'Orn', 'vrempel@murphy.com', '2000-01-01', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(57, 'Rosie Kuphal PhD', 'Kuhn', 'domenico.gottlieb@bode.info', '1975-02-13', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(58, 'Mrs. Abbey Weissnat', 'Huel', 'ora83@gmail.com', '2010-07-27', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(59, 'Elnora Gutkowski', 'Lockman', 'okuneva.destany@yahoo.com', '1982-12-05', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(60, 'Mr. Kenyon Collins', 'Yost', 'larue90@hotmail.com', '1973-05-10', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(61, 'Ali Brekke', 'Torp', 'jennyfer.mitchell@pfannerstill.com', '1971-03-30', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(62, 'Leo DuBuque', 'O\'Conner', 'nitzsche.dalton@boehm.org', '2006-01-01', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(63, 'Dr. Carson Cremin', 'Hackett', 'nyasia15@hotmail.com', '1989-11-18', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(64, 'Prof. Pedro Schoen DDS', 'Feil', 'bechtelar.felicita@yahoo.com', '1973-03-03', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(65, 'Prof. Jed Gorczany Sr.', 'Greenfelder', 'karmstrong@cassin.com', '2009-09-03', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(66, 'Haleigh Olson', 'Rohan', 'dandre.harris@yahoo.com', '2002-08-07', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(67, 'Emile Walker', 'Carter', 'ghirthe@yahoo.com', '1988-03-18', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(68, 'Elisha Tillman', 'Prosacco', 'opowlowski@gmail.com', '1995-01-26', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(69, 'Dr. Berry Altenwerth', 'Romaguera', 'mthiel@moen.com', '2012-08-15', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(70, 'Wilton Hyatt', 'Sauer', 'oleffler@yahoo.com', '2012-03-18', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(71, 'Merlin Mante II', 'Mosciski', 'neal.reichert@gmail.com', '2010-05-14', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(72, 'Gust Yost', 'Stanton', 'esawayn@ullrich.com', '1971-03-10', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(73, 'Cruz Wintheiser', 'Fay', 'obrakus@hotmail.com', '2018-12-02', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(74, 'Eryn Abbott', 'Hermiston', 'shad74@borer.com', '1998-03-22', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(75, 'Prof. Verona Dicki MD', 'Wintheiser', 'baylee.metz@gutmann.com', '2015-11-23', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(76, 'Prudence Huel', 'Sporer', 'louisa.blanda@lehner.biz', '2015-04-19', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(77, 'Mr. Dillan O\'Conner I', 'Crist', 'jlynch@hotmail.com', '2007-03-28', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(78, 'Dr. Verna Kiehn II', 'Kemmer', 'treva23@gmail.com', '1970-10-05', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(79, 'Mr. Nathanael Swift', 'Crooks', 'nswift@homenick.com', '2020-06-01', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(80, 'Julianne Wuckert DVM', 'Morissette', 'talon.dickinson@yahoo.com', '2019-04-08', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(81, 'Jefferey Stoltenberg', 'Bashirian', 'paula.olson@hotmail.com', '1972-08-31', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(82, 'Kale Cole', 'Wuckert', 'pietro.abbott@gmail.com', '2000-06-25', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(83, 'Archibald Gottlieb', 'Streich', 'dameon.spencer@purdy.com', '2014-05-19', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(84, 'Maxime Roob MD', 'Ernser', 'breanne.lueilwitz@gmail.com', '1985-03-18', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(85, 'Brent Cummerata V', 'Rolfson', 'nicholaus32@dach.org', '1996-06-04', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(86, 'Jody Gulgowski II', 'Walsh', 'bwisoky@koepp.net', '1982-11-19', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(87, 'Laron Abbott DDS', 'Reichert', 'kautzer.jeanette@treutel.com', '2006-10-13', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(88, 'Howard Emard', 'Bartell', 'dickens.kamille@yahoo.com', '1978-12-15', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(89, 'Dr. Ali Goyette', 'Kling', 'roman.smith@kessler.biz', '2011-03-25', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(90, 'Jedediah Satterfield II', 'Bauch', 'vpacocha@oreilly.com', '1989-01-14', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(91, 'Dr. Filiberto Borer', 'Howell', 'lflatley@maggio.com', '1997-03-09', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(92, 'Alejandrin Nicolas', 'Herman', 'bmorar@ortiz.biz', '1973-10-13', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(93, 'Spencer Ernser', 'Fadel', 'karley64@bernier.net', '1971-08-05', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(94, 'Miss Duane Botsford', 'Mayer', 'eugenia80@jerde.com', '2019-04-06', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(95, 'Ambrose O\'Connell', 'Roberts', 'mpowlowski@quitzon.com', '1993-09-01', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(96, 'Ophelia Lubowitz', 'O\'Connell', 'vinnie96@yahoo.com', '1975-05-31', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(97, 'Darrell Wilkinson', 'Schmidt', 'leuschke.oda@grimes.com', '1992-02-26', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(98, 'Jany Schoen', 'Ritchie', 'dan.lind@yahoo.com', '1999-05-07', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(99, 'Miss Nikita Goodwin II', 'Stokes', 'denesik.jay@koss.com', '2020-10-29', '2023-09-16 11:18:09', '2023-09-16 11:18:09'),
(100, 'Dimitri Klein', 'Kohler', 'wkohler@anderson.com', '2014-06-20', '2023-09-16 11:18:09', '2023-09-16 11:18:09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
