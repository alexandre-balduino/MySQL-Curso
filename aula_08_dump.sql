Enter password: 
/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for Android (armv7-a)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) unsigned DEFAULT NULL,
  `total_horas` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT 2026,
  PRIMARY KEY (`id_curso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `cursos` VALUES
(1,'HTML5','Curso de HTML5',40,37,2014),
(2,'Algoritmos','Lógica de Programação',20,15,2014),
(3,'Photoshop','Dicas de Photoshop CC',10,8,2014),
(4,'PHP','Curso de PHP para iniciantes',40,20,2015),
(5,'Java','Introdução à Linguagem Java',40,29,2015),
(6,'MySQL','Banco de Dados MySQL',30,15,2016),
(7,'Word','Curso completo de Word',40,30,2016);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nascionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pessoas` VALUES
(1,'Godofredo','1984-01-02','M',78.50,1.83,'Brasil'),
(2,'Maria','1999-12-30','F',55.20,1.83,'Brasil'),
(3,'Maria','1999-12-30','F',55.20,1.65,'Portugal'),
(4,'Creuza','1920-12-30','F',50.20,1.65,'Brasil'),
(5,'Adalgiza','1930-11-02','F',53.20,1.75,'Irlanda'),
(6,'Claudio','1975-12-03','M',99.90,2.15,'Brasil'),
(7,'Ana','1975-12-22','F',52.30,1.45,'EUA'),
(8,'Pedro','2000-07-15','M',53.10,1.46,'Brasil'),
(9,'Gertrudes','1999-05-30','F',75.90,1.70,'Portugal'),
(10,'Janaina','1987-11-12','F',75.40,1.66,'EUA');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-02-04 11:56:20
