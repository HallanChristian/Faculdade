CREATE DATABASE  IF NOT EXISTS `faculdademuitonova` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `faculdademuitonova`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: faculdademuitonova
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `idaluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  PRIMARY KEY (`idaluno`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Aroldo',34,'12','sd',60),(2,'Arnaldo',23,'12','fs',2),(3,'Ariana',43,'12','dfs',2),(4,'Arlene',32,'12','df',2),(5,'Ana',23,'1','sdf',2),(6,'Ana Maria',21,'2','sd',2),(7,'Alberto',31,'2','fs',2),(8,'Roberto',41,'23','df',2),(9,'Alice',24,'2','sdf',2),(10,'Aline',25,'342','sd',2),(11,'qqq',23,'34','fs',2),(12,'aaa',24,'234','df',2),(13,'sss',43,'2','sdf',2),(14,'xxx',50,'342','sd',2),(15,'ccc',32,'34','fs',2),(16,'vvv',31,'234','df',2),(17,'bbb',18,'2','sdf',2),(18,'nnn',19,'342','sdf',2),(19,'mmm',17,'342',NULL,2),(20,'mmm',19,'234','sdf',2),(21,'kkk',NULL,NULL,'',NULL),(24,'iii',16,NULL,NULL,6),(25,'uuu',23,NULL,NULL,8),(26,'yyy',16,NULL,NULL,6),(27,'joaozin',17,'0000','abc',6);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  `quantsemestres` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Sistemas de Informação',3000,8),(2,'Engenharia da computação',3500,8),(3,'Ciência da Computação',3500,8),(4,'Direito',4000,10),(5,'Medicina',6000,12),(6,'Engenharia de Produção',3000,8),(7,'Educação Física',3000,8),(8,'Design de Interiores',2800,6),(9,'Logística',2800,6),(10,'Agronomia',4500,9);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `iddisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  `ementa` varchar(200) DEFAULT NULL,
  `valor` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`iddisciplina`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (2,'PRogramação',60,'asd',100.00),(3,'Redes',240,'asd',100.00),(4,'História do Direito',45,'asd',100.00),(5,'Informática legal',45,'a',80.00),(6,'Cálculo',60,'sda',80.00),(7,'Estatística',60,'sd',100.00),(8,'Metodologia Científica',60,'asd',100.00),(9,'Filosofia',30,'asda',100.00),(10,'Sociologia',30,'dasd',80.00);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listaespera`
--

DROP TABLE IF EXISTS `listaespera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listaespera` (
  `idlistaespera` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` int(11) DEFAULT NULL,
  `oferta` int(11) DEFAULT NULL,
  `entrada` datetime DEFAULT NULL,
  PRIMARY KEY (`idlistaespera`),
  KEY `estudante_idx` (`aluno`),
  KEY `offer_idx` (`oferta`),
  CONSTRAINT `estudante` FOREIGN KEY (`aluno`) REFERENCES `aluno` (`idaluno`),
  CONSTRAINT `offer` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`idoferta`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listaespera`
--

LOCK TABLES `listaespera` WRITE;
/*!40000 ALTER TABLE `listaespera` DISABLE KEYS */;
INSERT INTO `listaespera` VALUES (5,4,2,'2021-10-28 08:37:17');
/*!40000 ALTER TABLE `listaespera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `idmatricula` int(11) NOT NULL AUTO_INCREMENT,
  `aluno` int(11) DEFAULT NULL,
  `oferta` int(11) DEFAULT NULL,
  `frequencia` float DEFAULT NULL,
  `nota1` float DEFAULT NULL,
  `nota2` float DEFAULT NULL,
  `media` float GENERATED ALWAYS AS (((`nota1` + `nota2`) / 2)) STORED,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmatricula`),
  KEY `mat_alu_idx` (`aluno`),
  KEY `mat_oferta_idx` (`oferta`),
  CONSTRAINT `mat_alu` FOREIGN KEY (`aluno`) REFERENCES `aluno` (`idaluno`),
  CONSTRAINT `mat_oferta` FOREIGN KEY (`oferta`) REFERENCES `oferta` (`idoferta`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` (`idmatricula`, `aluno`, `oferta`, `frequencia`, `nota1`, `nota2`, `status`) VALUES (7,1,2,0,10,NULL,'Cursando'),(8,2,2,100,10,2,NULL),(9,3,2,NULL,10,4,NULL);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oferta`
--

DROP TABLE IF EXISTS `oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oferta` (
  `idoferta` int(11) NOT NULL AUTO_INCREMENT,
  `disciplina` int(11) DEFAULT NULL,
  `curso` int(11) DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  `semestre` varchar(45) DEFAULT NULL,
  `turno` varchar(45) DEFAULT NULL,
  `vagas` int(11) DEFAULT '0',
  PRIMARY KEY (`idoferta`),
  KEY `oferta_curso_idx` (`curso`),
  KEY `oferta_disc_idx` (`disciplina`),
  KEY `oferta_prof_idx` (`professor`),
  CONSTRAINT `oferta_curso` FOREIGN KEY (`curso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `oferta_disc` FOREIGN KEY (`disciplina`) REFERENCES `disciplina` (`iddisciplina`),
  CONSTRAINT `oferta_prof` FOREIGN KEY (`professor`) REFERENCES `professor` (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oferta`
--

LOCK TABLES `oferta` WRITE;
/*!40000 ALTER TABLE `oferta` DISABLE KEYS */;
INSERT INTO `oferta` VALUES (2,2,1,1,'2021-1','Noturno',3),(3,3,2,1,'2021-1','Noturno',NULL),(4,4,3,1,'2021-1','Noturno',NULL),(5,5,4,1,'2021-1','Noturno',NULL),(6,6,5,1,'2021-1','Noturno',NULL),(7,6,1,1,'2020-1','Noturno',NULL),(8,5,2,2,'2021-1','Matutino',NULL),(11,3,3,1,'2021-1','Noturno',NULL),(13,3,3,3,'2023-1','Noturno',0);
/*!40000 ALTER TABLE `oferta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `idprofessor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  `formacao` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `cargahoraria` int(11) DEFAULT NULL,
  `salario` float DEFAULT NULL,
  `valorhoraaula` float DEFAULT NULL,
  PRIMARY KEY (`idprofessor`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Alejandro de la Vega','Esgrima','Mestre',45,38,20,200),(2,'Girafales','Geral','Especialista',43,0,0,100),(3,'Pardal','Ciências','Doutor',32,12,0,120),(4,'Carter','Educação física','Especialista',23,0,0,150),(5,'Willian Wallace','Sociologia','Mestre',43,0,0,300),(6,'Fulano','Karateca','10 dan',56,20,400,20),(7,'Ezequiel','Adm','Doutorado',25,20,400,20),(8,'Ezequiel','Adm','Mestrado',25,20,400,20),(9,'João do Caminhão','Motora Profissa','Roda Federal',40,8,4000,500);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responsavel` (
  `idResponsavel` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idResponsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel`
--

LOCK TABLES `responsavel` WRITE;
/*!40000 ALTER TABLE `responsavel` DISABLE KEYS */;
INSERT INTO `responsavel` VALUES (4,'pai','0','joao@'),(5,'Dr Estranho','54654','strange@sanctum.com');
/*!40000 ALTER TABLE `responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `todomundo`
--

DROP TABLE IF EXISTS `todomundo`;
/*!50001 DROP VIEW IF EXISTS `todomundo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `todomundo` AS SELECT 
 1 AS `nome`,
 1 AS `idade`,
 1 AS `nivel`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vinculo`
--

DROP TABLE IF EXISTS `vinculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinculo` (
  `aluno` int(11) NOT NULL,
  `responsavel` int(11) NOT NULL,
  KEY `aluno_idx` (`aluno`),
  KEY `responsavel_idx` (`responsavel`),
  CONSTRAINT `aluno` FOREIGN KEY (`aluno`) REFERENCES `aluno` (`idaluno`),
  CONSTRAINT `responsavel` FOREIGN KEY (`responsavel`) REFERENCES `responsavel` (`idResponsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinculo`
--

LOCK TABLES `vinculo` WRITE;
/*!40000 ALTER TABLE `vinculo` DISABLE KEYS */;
INSERT INTO `vinculo` VALUES (27,4),(4,5),(1,5),(2,4),(3,4),(8,5);
/*!40000 ALTER TABLE `vinculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `todomundo`
--

/*!50001 DROP VIEW IF EXISTS `todomundo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `todomundo` AS select `aluno`.`nome` AS `nome`,`aluno`.`idade` AS `idade`,'aluno' AS `nivel` from `aluno` union select `professor`.`nome` AS `nome`,`professor`.`idade` AS `idade`,`professor`.`nivel` AS `nivel` from `professor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09 10:11:37
