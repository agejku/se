# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Datenbank: mydb
# Erstellungsdauer: 2014-01-12 17:58:27 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle Evaluation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Evaluation`;

CREATE TABLE `Evaluation` (
  `id` int(11) NOT NULL,
  `matrNr` int(11) NOT NULL,
  `summary` text NOT NULL,
  `adminId` int(11) DEFAULT NULL,
  `projectId` int(11) NOT NULL,
  `create` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Evaluation` WRITE;
/*!40000 ALTER TABLE `Evaluation` DISABLE KEYS */;

INSERT INTO `Evaluation` (`id`, `matrNr`, `summary`, `adminId`, `projectId`, `create`)
VALUES
	(0,1111111,'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',1,1,'0000-00-00 00:00:00');

/*!40000 ALTER TABLE `Evaluation` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle ProjectCategory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProjectCategory`;

CREATE TABLE `ProjectCategory` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ProjectCategory` WRITE;
/*!40000 ALTER TABLE `ProjectCategory` DISABLE KEYS */;

INSERT INTO `ProjectCategory` (`id`, `title`, `description`)
VALUES
	(1,'Test','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.');

/*!40000 ALTER TABLE `ProjectCategory` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle Projects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Projects`;

CREATE TABLE `Projects` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `ProjectCategory` int(11) NOT NULL,
  `AdditionalText` text,
  `StuffID` int(11) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `finalDate` datetime DEFAULT NULL,
  `students` int(11) DEFAULT NULL,
  `ProjectStudents_id` int(11) NOT NULL,
  `ProjectCategory_id` int(11) NOT NULL,
  `evaluation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`ProjectStudents_id`),
  KEY `fk_Projects_ProjectStudents1_idx` (`ProjectStudents_id`),
  KEY `fk_Projects_ProjectCategory1_idx` (`ProjectCategory_id`),
  KEY `fk_Projects_evaluation1_idx` (`evaluation_id`),
  CONSTRAINT `fk_Projects_evaluation1` FOREIGN KEY (`evaluation_id`) REFERENCES `Evaluation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Projects_ProjectCategory1` FOREIGN KEY (`ProjectCategory_id`) REFERENCES `ProjectCategory` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Projects_ProjectStudents1` FOREIGN KEY (`ProjectStudents_id`) REFERENCES `ProjectStudents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Projects` WRITE;
/*!40000 ALTER TABLE `Projects` DISABLE KEYS */;

INSERT INTO `Projects` (`id`, `title`, `description`, `ProjectCategory`, `AdditionalText`, `StuffID`, `active`, `createDate`, `finalDate`, `students`, `ProjectStudents_id`, `ProjectCategory_id`, `evaluation_id`)
VALUES
	(1,'test','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',0,NULL,2,1,'2000-01-01 00:00:00',NULL,NULL,1,1,0),
	(2,'test2','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',0,NULL,2,1,'0000-00-00 00:00:00',NULL,NULL,1,1,0),
	(3,'test3','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',0,NULL,2,1,'0000-00-00 00:00:00',NULL,NULL,1,1,0);

/*!40000 ALTER TABLE `Projects` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle ProjectStudents
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ProjectStudents`;

CREATE TABLE `ProjectStudents` (
  `id` int(11) NOT NULL,
  `matrNr` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ProjectStudents` WRITE;
/*!40000 ALTER TABLE `ProjectStudents` DISABLE KEYS */;

INSERT INTO `ProjectStudents` (`id`, `matrNr`)
VALUES
	(1,111111);

/*!40000 ALTER TABLE `ProjectStudents` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle Roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Roles`;

CREATE TABLE `Roles` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `Users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`Users_id`),
  KEY `fk_roles_Users_idx` (`Users_id`),
  CONSTRAINT `fk_roles_Users` FOREIGN KEY (`Users_id`) REFERENCES `Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Roles` WRITE;
/*!40000 ALTER TABLE `Roles` DISABLE KEYS */;

INSERT INTO `Roles` (`id`, `title`, `description`, `Users_id`)
VALUES
	(1,'student',NULL,1),
	(2,'stuff',NULL,2);

/*!40000 ALTER TABLE `Roles` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle Roles_Kusss
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Roles_Kusss`;

CREATE TABLE `Roles_Kusss` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` text,
  `Users_Kusss_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`Users_Kusss_id`),
  KEY `fk_Roles_Kusss_Users_Kusss1_idx` (`Users_Kusss_id`),
  CONSTRAINT `fk_Roles_Kusss_Users_Kusss1` FOREIGN KEY (`Users_Kusss_id`) REFERENCES `Users_Kusss` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Roles_Kusss` WRITE;
/*!40000 ALTER TABLE `Roles_Kusss` DISABLE KEYS */;

INSERT INTO `Roles_Kusss` (`id`, `title`, `description`, `Users_Kusss_id`)
VALUES
	(1,'admin','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\n',1);

/*!40000 ALTER TABLE `Roles_Kusss` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle Users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `create` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;

INSERT INTO `Users` (`id`, `name`, `email`, `details`, `role`, `create`, `active`, `pwd`, `img`)
VALUES
	(1,'demo','demo@demo.at','testuser',1,'0000-00-00 00:00:00',1,'fe01ce2a7fbac8fafaed7c982a04e229',NULL),
	(2,'stuff',NULL,NULL,2,'0000-00-00 00:00:00',1,'9eb84090956c484e32cb6c08455a667b',NULL);

/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle Users_Kusss
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Users_Kusss`;

CREATE TABLE `Users_Kusss` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `create` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Users_Kusss` WRITE;
/*!40000 ALTER TABLE `Users_Kusss` DISABLE KEYS */;

INSERT INTO `Users_Kusss` (`id`, `name`, `email`, `details`, `role`, `create`, `active`)
VALUES
	(1,'demo','demo@demo.at','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata',1,'0000-00-00 00:00:00',1);

/*!40000 ALTER TABLE `Users_Kusss` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
