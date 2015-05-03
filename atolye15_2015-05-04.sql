# ************************************************************
# Sequel Pro SQL dump
# Version 4135
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.38)
# Database: atolye15
# Generation Time: 2015-05-03 22:36:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `actions`;

CREATE TABLE `actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;

INSERT INTO `actions` (`id`, `actor_id`, `film_id`, `created_at`, `updated_at`)
VALUES
	(1,2,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(2,5,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(3,4,2,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(4,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(5,3,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
	(6,4,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table actors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `actors`;

CREATE TABLE `actors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `born` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;

INSERT INTO `actors` (`id`, `name`, `born`, `photo`, `gender`, `bio`, `created_at`, `updated_at`)
VALUES
	(1,'Rıza Sabuncu','01-03-1997','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:30:28','2015-05-02 13:30:28'),
	(2,'Alperen Türköz','01-03-1997','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:30:36','2015-05-02 13:30:36'),
	(3,'Oğuz Güç','01-03-1985','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:31:10','2015-05-02 13:31:10'),
	(4,'Muhittin Özer','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:31:25','2015-05-02 13:31:25'),
	(5,'Doğum Tarihleri Temsili :p','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:31:34','2015-05-02 13:31:34'),
	(6,'Cem Yılmaz','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:31:43','2015-05-02 13:31:43');

/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table directors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `directors`;

CREATE TABLE `directors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `born` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;

INSERT INTO `directors` (`id`, `name`, `born`, `photo`, `gender`, `bio`, `created_at`, `updated_at`)
VALUES
	(1,'Cem Yılmaz','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:36:27','2015-05-02 13:36:27'),
	(2,'Cağan Irmak','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:36:46','2015-05-02 13:36:46'),
	(3,'Alperen Türköz','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:36:50','2015-05-02 13:36:50'),
	(4,'Rıza Sabuncu','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:36:54','2015-05-02 13:36:54'),
	(5,'Oğuz Güç','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:36:58','2015-05-02 13:36:58'),
	(6,'Uğur Aydoğdu','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:37:07','2015-05-02 13:37:07'),
	(7,'Uğur Arıcı','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:37:12','2015-05-02 13:37:12'),
	(8,'Emir Karşıyakalı','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:37:17','2015-05-02 13:37:17'),
	(9,'Muhittin Özer','01-03-1980','me.svg','M','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','2015-05-02 13:37:21','2015-05-02 13:37:21');

/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table films
# ------------------------------------------------------------

DROP TABLE IF EXISTS `films`;

CREATE TABLE `films` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `releaseDay` int(11) NOT NULL,
  `releaseMonth` int(11) NOT NULL,
  `releaseYear` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `imdb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `genre` int(11) NOT NULL,
  `director` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;

INSERT INTO `films` (`id`, `title`, `releaseDay`, `releaseMonth`, `releaseYear`, `description`, `imdb`, `genre`, `director`, `created_at`, `updated_at`)
VALUES
	(2,'Film Adı',1,5,2001,'Açıklama falan yok.','5.0',1,1,'2015-05-02 13:26:51','2015-05-03 22:24:36'),
	(3,'deneme',1,1,1990,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','5.0',1,5,'2015-05-02 13:27:12','2015-05-03 22:20:23'),
	(4,'İsim Bulamadım : Rızanın Dönüşü',1,1,1950,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','5.0',3,5,'2015-05-02 13:28:06','2015-05-03 22:20:23'),
	(5,'Dabbe 9',1,1,2005,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','5.0',2,5,'2015-05-02 13:28:19','2015-05-03 22:20:23'),
	(6,'Laravel Candır <3',1,1,1994,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum accumsan blandit arcu ut consequat. Nam ornare bibendum posuere. Cras a elementum ipsum, ut pulvinar mi. Cras et consectetur dolor, id gravida neque. Sed iaculis lobortis leo, dictum ultrices libero dignissim eu. Integer lacinia augue purus, non porttitor libero molestie nec. Nam euismod porta nibh, non efficitur risus malesuada eu. Morbi imperdiet sodales mi, nec mattis mi tincidunt vel. Ut non mi varius felis sollicitudin tempus.','5.0',3,5,'2015-05-02 13:28:37','2015-05-03 22:20:23'),
	(7,'Onder',1,5,1990,'Selam','10',2,2,'2015-05-02 17:31:11','2015-05-03 22:20:23'),
	(16,'selam',1,5,1990,'Selam','10',3,3,'2015-05-02 17:31:48','2015-05-03 22:20:23'),
	(34,'Film Adı',1,5,2001,'Açıklama falan yok.','5.0',1,1,'2015-05-03 20:48:51','2015-05-03 22:20:23');

/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table genres
# ------------------------------------------------------------

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;

INSERT INTO `genres` (`id`, `genre`, `created_at`, `updated_at`)
VALUES
	(1,'Horror','2015-05-02 13:29:09','2015-05-02 13:29:09'),
	(2,'Comedy','2015-05-02 13:29:14','2015-05-02 13:29:14'),
	(3,'TV Series','2015-05-02 13:29:18','2015-05-02 13:29:18'),
	(4,'Music','2015-05-02 13:29:23','2015-05-02 13:29:23'),
	(5,'Love','2015-05-02 13:29:26','2015-05-02 13:29:26'),
	(14,'Yeni Tür','2015-05-03 20:59:36','2015-05-03 20:59:36');

/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table keys
# ------------------------------------------------------------

DROP TABLE IF EXISTS `keys`;

CREATE TABLE `keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `keys` WRITE;
/*!40000 ALTER TABLE `keys` DISABLE KEYS */;

INSERT INTO `keys` (`id`, `key`, `created_at`, `updated_at`)
VALUES
	(1,'$2y$10$F9PxHXr9Lx3Prka4DS3XT.vJcJrOGWgs2TclbMMkqnbtPxiZaq1ja','2015-05-03 21:48:23','2015-05-03 21:48:23'),
	(2,'$2y$10$m7gfsVzOCXTbvkRGQwjsaeJgQ/M.RmKM5ZVJSA038k51RrfrhQaPi','2015-05-03 21:52:27','2015-05-03 21:52:27'),
	(3,'$2y$10$HARNFPQrpSjJXGzrNl7ktOVlPK2Xl7JwES5A69hy58vzxoiBvzxQG','2015-05-03 21:54:01','2015-05-03 21:54:01'),
	(4,'$2y$10$S0mJ4kEqvZxrrLrY5iUrhuNFkCGJXbcg1nVxDoJUQloLuNKpX/0Rq','2015-05-03 21:55:17','2015-05-03 21:55:17'),
	(5,'$2y$10$PngiWsxU9AezR6Of8Yv3TetlsAjoc2xFD59pK11e8WJ8cDpymCATe','2015-05-03 21:57:28','2015-05-03 21:57:28'),
	(6,'$2y$10$sSTxH8FV3v54h3I.5Nl0sOxuqLknr16EdwROePD.zZEsSnrfzVf/e','2015-05-03 22:03:03','2015-05-03 22:03:03'),
	(7,'$2y$10$.Ubfxl75GGIaHKqit0KRdOBdFWq0vBxUwmaIRLSOTdUKphiAKCBLW','2015-05-03 22:12:42','2015-05-03 22:12:42'),
	(8,'$2y$10$fa4BOjPm/zB5kV88P6VNfei1JyBjRJGWeZHSCJKeSf/IbEj3NozSe','2015-05-03 22:29:38','2015-05-03 22:29:38');

/*!40000 ALTER TABLE `keys` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2015_05_02_102642_film_create',1),
	('2015_05_02_102656_kisiler_create',1),
	('2015_05_02_102709_tur_create',1),
	('2015_05_02_112913_actions',1),
	('2015_05_02_132109_directors',1),
	('2015_05_03_213707_keys',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
