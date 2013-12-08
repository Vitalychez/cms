-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.34-0ubuntu0.13.10.1 - (Ubuntu)
-- ОС Сервера:                   debian-linux-gnu
-- HeidiSQL Версия:              8.1.0.4640
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных hatt
CREATE DATABASE IF NOT EXISTS `hatt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hatt`;


-- Дамп структуры для таблица hatt.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `auth_token` char(32) DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `reg_date` datetime NOT NULL,
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `reg_ip` int(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `gender` enum('0','1','2') NOT NULL DEFAULT '0',
  `birthday` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `auth_token` (`auth_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы hatt.users: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `auth_token`, `login`, `email`, `pass`, `reg_date`, `level`, `reg_ip`, `avatar`, `gender`, `birthday`) VALUES
	(1, 'cdec3d1ee82ddb07f7de11005d5f87d4', 'dimka3210', 'dimka3210@gmail.com', '202cb962ac59075b964b07152d234b70', '2013-12-05 23:47:19', 1, 0, NULL, '1', '2013-12-05 23:47:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
