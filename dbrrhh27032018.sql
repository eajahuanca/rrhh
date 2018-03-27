CREATE DATABASE  IF NOT EXISTS `dbrrhh` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbrrhh`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbrrhh
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bio`
--

DROP TABLE IF EXISTS `bio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `id_biometrico` int(11) NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bio`
--

LOCK TABLES `bio` WRITE;
/*!40000 ALTER TABLE `bio` DISABLE KEYS */;
/*!40000 ALTER TABLE `bio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `correlativos`
--

DROP TABLE IF EXISTS `correlativos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `correlativos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cor_cite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cor_valor` int(11) NOT NULL,
  `cor_gestion` int(10) unsigned NOT NULL,
  `cor_descripcion` text COLLATE utf8mb4_unicode_ci,
  `cor_estado` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correlativos_cor_cite_unique` (`cor_cite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `correlativos`
--

LOCK TABLES `correlativos` WRITE;
/*!40000 ALTER TABLE `correlativos` DISABLE KEYS */;
INSERT INTO `correlativos` VALUES (1,'RRHH',5,2018,'PERMISOS',1,'2018-03-05 19:00:00','2018-03-05 22:44:20');
/*!40000 ALTER TABLE `correlativos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(12,'2017_11_25_122223_create_table_bio',2),(13,'2018_02_19_170949_create_correlativos_table',2),(15,'2018_02_19_171011_create_permiso_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('edwincon85@hotmail.com','$2y$10$oi7dON/9aWYtygr5EVpm2uGuXjGDMXu/5Y0tteVMKMTBZ/NtzNJee','2017-11-01 21:03:38'),('sistemas@zaire.com.bo','$2y$10$wM6g.FXZAz3Pn33Xy265Ae05IEMfEBpSdyrC3Q/t3PdpC/395LgzK','2017-11-01 21:24:40');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `per_cite` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_fechapermiso` date NOT NULL,
  `per_horasalida` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00:00',
  `per_horaretorno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00:00',
  `per_tiempo` int(11) NOT NULL DEFAULT '0',
  `per_sinretorno` tinyint(1) NOT NULL DEFAULT '0',
  `pre_motivo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_tipo` enum('COMISION','PERSONAL','OTROS') COLLATE utf8mb4_unicode_ci NOT NULL,
  `idusersol` int(10) unsigned NOT NULL,
  `pre_estadosol` enum('ENVIADO','PENDIENTE','CANCELAR','APROBADO','RECHAZADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `idusersup` int(10) unsigned NOT NULL,
  `pre_estadosup` enum('SOL','PENDIENTE','APROBADO','RECHAZADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_obssup` text COLLATE utf8mb4_unicode_ci,
  `pre_fechasup` datetime DEFAULT NULL,
  `iduserrrhh` int(10) unsigned NOT NULL,
  `pre_estadorrhh` enum('SOL','PENDIENTE','APROBADO','RECHAZADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_obsrrhh` text COLLATE utf8mb4_unicode_ci,
  `pre_fecharrhh` datetime DEFAULT NULL,
  `iduserdg` int(10) unsigned NOT NULL,
  `pre_estadodg` enum('SOL','PENDIENTE','APROBADO','RECHAZADO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pre_obsdg` text COLLATE utf8mb4_unicode_ci,
  `pre_fechadg` datetime DEFAULT NULL,
  `pre_documento` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_documento_nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permisos_per_cite_unique` (`per_cite`),
  KEY `permisos_idusersol_foreign` (`idusersol`),
  KEY `permisos_idusersup_foreign` (`idusersup`),
  KEY `permisos_iduserrrhh_foreign` (`iduserrrhh`),
  KEY `permisos_iduserdg_foreign` (`iduserdg`),
  CONSTRAINT `permisos_iduserdg_foreign` FOREIGN KEY (`iduserdg`) REFERENCES `users` (`id`),
  CONSTRAINT `permisos_iduserrrhh_foreign` FOREIGN KEY (`iduserrrhh`) REFERENCES `users` (`id`),
  CONSTRAINT `permisos_idusersol_foreign` FOREIGN KEY (`idusersol`) REFERENCES `users` (`id`),
  CONSTRAINT `permisos_idusersup_foreign` FOREIGN KEY (`idusersup`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,'RRHH-0003/2018','2018-03-16','15:30','16:30',60,1,'<p>Atencion en la caja CORDES</p>','PERSONAL',2,'ENVIADO',2,'APROBADO',NULL,NULL,2,'APROBADO',NULL,NULL,55,'APROBADO',NULL,NULL,NULL,NULL,'2018-03-05 22:39:20','2018-03-05 22:39:20'),(2,'RRHH-0004/2018','2018-03-07','10:30','12:30',120,0,'<p>Comision, sembradio de planitines con los super cos</p>','OTROS',2,'ENVIADO',2,'PENDIENTE',NULL,NULL,2,'RECHAZADO','Por ser la 1ra feria de aprovechamiento sostenible de nuestros y falta de personal, se denega la solictud de permiso correspondiente.',NULL,2,'SOL','pongase la camiseta compañero',NULL,NULL,NULL,'2018-03-05 22:44:20','2018-03-05 22:44:20');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `us_ci` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_paterno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_materno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_genero` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_cuenta` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_tipo` enum('ADMINISTRADOR','USUARIO') COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `us_estado` tinyint(1) NOT NULL DEFAULT '1',
  `us_obs` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `us_estadociv` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `us_condicion` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `us_sueldo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `us_cargo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `us_direccion` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `us_unidad` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'0','Administrador','Fonabosque','Fonabosque','MASCULINO','infofonabosque@gmail.com','admin.fonabosque','ADMINISTRADOR','$2y$10$D2ZwWpwlzA8Ahr/XLoFU2O0MePQQ/QRY9Ks5dFar0863OxKlSHADW',1,NULL,'ufriSLAgFjZUHqfLEO1Jl1LdLIS1jc0QJsDF8Xo8MhzWlaxnsQJOPapDvW3m','2017-11-27 15:53:28','2017-11-27 15:53:28','SOLTERO','PERMANENTE','0','Administrador','DIRECCION','LEGAL'),(4,'4803940','Jenny Kitty','Laura','Vidal','Femenina','jenny.laura@fonabosque.gob.bo','jenny.laura','USUARIO','$2y$10$t2WTej84yvbntd.EWcUN/ejqVz2eeLBSJKq1tVmrfra.0to81X8m6',1,NULL,NULL,'2018-01-12 15:10:20','2018-01-12 15:10:20','CASADO','PERMANENTE','0','Contador a.i.','CAF','ADMINISTRATIVA'),(5,'4755128','Silvia','Rodriguez','Cusicanqui','Femenina','silvia.rodriguez@fonabosque.gob.bo','silvia.rodriguez','USUARIO','$2y$10$VB1yn4jEiWLL4ZQxTA/Olec9oYNuhqUDXymk9/s9imClTUheqbuCm',1,NULL,'67Q0mWPrXPSdHvhypUxqbdDurOx6Vty3iHHE1vx7E5JPLHTNN7HmFG04fmxx','2018-01-04 19:12:00','2018-01-04 19:12:00','SOLTERO','CONSULTOR','0','Profesional en Recursos Humanos','CAF','ADMINISTRATIVA'),(8,'4924940','Naja Ericka','Vargas','Noriega','Femenina','ericka.vargas@fonabosque.gob.bo','ericka.vargas','USUARIO','$2y$10$X8N2gcTD7jd25BzdEQnmI.Mo30rD6IgcHBbdpjM0hIwggPzSrd2Xu',1,NULL,'ISzmdY6AYQ6wwCnvPmLxFGHYNOWUs6wDsz8aJfWOsD1XjIy2I7Xzkzu1bGEr','2018-01-11 18:39:31','2018-01-11 18:39:31','SOLTERO','PERMANENTE','11707','Especialista en Planificación y Evaluación de Proyectos a.i.','CPYEP','LEGAL'),(11,'6746059','Juan Carlos','Acho','Ayala','Masculino','juan.acho@fonabosque.gob.bo','juan.acho','USUARIO','$2y$10$gA4vW2cygs8azqUFWHBD2OVjHzL68EjwxE6zAxZLa8s71Jn3KoO3i',1,'-','1UJnYao6R4kmrFyX8B2cZ2dslFPt4DC4dcznbo1Ufql3vChrH0dhtHraGhGr','2017-10-09 04:00:00','2018-01-26 20:56:45','SOLTERO','PERMANENTE','','ENCARGADO DE TECNOLOGIAS DE INFORMACION Y COMUNICACION',NULL,NULL),(12,'7031014','Rene','Mamani','Amaru','Masculino','rene.mamani@fonabosque.gob.bo','rene.mamani','USUARIO','$2y$10$2LSFQDV75BG6iYnUy4Xbb.hiVdah8EXh833uFRzEi6RcMGprxboBS',0,'-','b7Cwizb04tdz0dkK8cHqML83nuDSamKwxGNcmQsOAuvOJ5rly6nIgEwRDnjU','2017-11-27 20:33:59','2018-03-16 15:23:28','SOLTERO','CONSULTOR','4500','TECNICO EN SOPORTE Y REDES','CAF','ADMINISTRATIVA'),(14,'4879453','Leslie Karem','Arauco','Flores','Femenina','leslie.arauco@fonabosque.gob.bo','leslie.arauco','USUARIO','$2y$10$PNc5jLzyVagqkExSCmJ40etWp/pIQ.aNjnI4lEKLWsqfWxozKOQEe',1,NULL,NULL,'2018-01-12 14:48:29','2018-01-12 14:48:29','SOLTERO','CONSULTOR','0','Profesional en Recursos Humanos','CAF','ADMINISTRATIVA'),(18,'5173200','Jeanneth','Villalobos','Cayo.','Femenina','jeanneth.villalobos@fonabosque.gob.bo','jeanneth.villalobos','USUARIO','$2y$10$YJCh./jkA2WYhybUEfhAg.RlQ2lutoI8m9RrNc7wZcayBzbZAFOmu',1,NULL,NULL,'2018-01-12 13:59:52','2018-01-12 13:59:52','SOLTERO','PERMANENTE','0','Especialista en Seguimiento y Monitoreo de Programas y Proyectos a.i.','CPYEP','LEGAL'),(24,'7840589','Mariela','Flores','Tito.','Femenina','mariela.flores@fonabosque.gob.bo','mariela.flores','USUARIO','$2y$10$njVxD60.7wmnOjpXU4iHFuq0EpFjfY9P8Hb8HwlD2Dw3oQjUbu2bu',1,NULL,NULL,'2018-01-12 14:02:38','2018-01-12 14:02:38','SOLTERO','PERMANENTE','0','Responsable de Planificación y Evaluación de Proyectos a.i.','CPYEP','LEGAL'),(27,'2207578','Daniel','Fernandez','Rios.','Masculino','daniel.fernandez@fonabosque.gob.bo','daniel.fernandez','USUARIO','$2y$10$T2ZAQW9WljFyPaBzlCd4y.RJo69XkWRUSF188odtI7R6W88wG6jkS',1,NULL,NULL,'2018-01-12 14:11:29','2018-01-12 14:11:29','SOLTERO','PERMANENTE','0','Encargado de Gestión Institucional y Desarrollo Organizacional a.i.','DIRECCION','LEGAL'),(32,'3359536','Carlos Eduardo','Medinaceli','Muñoz','Masculino','carlos.medinaceli@fonabosque.gob.bo','carlos.medinaceli','USUARIO','$2y$10$djEAYC3LwTtf/VChpe1tv.WoaiDvsLbOGe28V2OCiMkDoOHmxANsu',1,NULL,'90VtV6IWWKwuzdu7HePnvlA5FtSPJCAnBNdb9MbG0nXHccrpyCcBB249BGaA','2018-01-04 19:18:44','2018-01-04 19:18:44','SOLTERO','PERMANENTE','0','Asesor Legal','DIRECCION','LEGAL'),(37,'4769790','Sonia Flora','Najera','Tarqui','Femenina','sonia.najera@fonabosque.gob.bo','sonia.najera','USUARIO','$2y$10$8d4laFhgvIOMQPMZ/TLO2uD89nXfpdzD7TOcDQ9bMp44MmJN3CDyS',1,NULL,'qUrmlvtnUfbV6pEfux3HT6GdjUuI4wDGASMaasEpBUVxbdxkA8He4sTVQR5P','2018-01-04 19:14:52','2018-01-04 19:14:52','CASADO','PERMANENTE','0','Cordinadora Administrativa FInanciera','CAF','ADMINISTRATIVA'),(41,'4319749','Walter Luis','Chuquimia','Choque','Masculino','walter.chuquimia@fonabosque.gob.bo','walter.chuquimia','USUARIO','$2y$10$gH8tRpOhxKjYAelJj4j1HujO9jEhdr2NYNPLAhtFdBztL0dPAABJK',1,NULL,'dujZvtPGvsO0VMVcQyVzTeBIA6HZFUMyIrM6yg4GnVygZKUDUXp5UVxBJAWL','2018-01-11 11:53:38','2018-01-11 11:53:38','SOLTERO','CONSULTOR','6253','Tecnico Financiero en Proyectos','CPYEP','LEGAL'),(49,'5070760','Esther','Venegas','Saldivar','Femenina','esther.venegas@fonabosque.gob.bo','esther.venegas','USUARIO','$2y$10$/jnkC9tTZgcD7uKGjjZZXuvp/d76wwshOwYVgjsDbVrj4rYoj7WKm',1,NULL,'3PHOvELpy3ERpzgtmIgawQab2nqBqEvGMjtkp5O3AdowP5JsJBf7PvSggOeX','2018-01-12 15:23:27','2018-01-25 21:43:04','SOLTERO','PERMANENTE','0','Secretaria General','DIRECCION','LEGAL'),(51,'3753005','Marco Antonio','Funes','Condarco','Masculino','marco.funes@fonabosque.gob.bo','marco.funes','USUARIO','$2y$10$3od176t6Rp.y2P19dxbFTu1pivAiCQhPeE8zXJtldwcNHCCdGlaV2',1,NULL,NULL,'2018-01-12 15:06:17','2018-01-12 15:06:17','SOLTERO','PERMANENTE','0','Encargado Financiero a.i.','CAF','ADMINISTRATIVA'),(55,'4843470','Edgar','Varnoux','Bustillos','Masculino','edgar.varnoux@fonabosque.gob.bo','edgar.varnoux','USUARIO','$2y$10$L3ma1Ln6whp7R8JuGmFIDu.iAgY0hTqlMS8UuWBmT.4.XA9/i9sPO',1,NULL,'DZFbIfZNWqtnPULgmTW22pbUkaRJt72aiQIeDND6zHYunZavFzmhT0zdsiW2','2018-01-04 16:06:23','2018-01-04 16:06:23','SOLTERO','PERMANENTE','0','Encargado Administrativo a.i.','CAF','ADMINISTRATIVA'),(60,'4801839','Edgar Alejandro','Guerra','Monroy','Masculino','edgar.guerra@fonabosque.gob.bo','edgar.guerra','USUARIO','$2y$10$p2MfoL08pIn2NeeUYRrWeua.oZtqWjRAsRY6oF6KRo6LE.ADQWNf2',1,NULL,'oLBfNN2FYsVPcAGcNWGarG1ILSyR6Ew7H1jme59q5TipaCugcuTGUEedQYCP','2018-01-12 14:37:26','2018-01-12 14:37:26','CASADO','PERMANENTE','0','Asesor Legal a.i.','DIRECCION','LEGAL'),(61,'4876798','Imelda Iris','Saavedra','Duran','Femenina','imelda.saavedra@fonabosque.gob.bo','imelda.saavedra','USUARIO','$2y$10$8keaex0R7ys6LZgscvdRYeCMCMWWLEKBlLToLwKuTxlAFgqN30Kkm',1,NULL,NULL,'2018-01-12 14:29:02','2018-01-12 14:29:02','CASADO','CONSULTOR','0','Auditor Interno II','DIRECCION','AUDITORIA'),(69,'4294797','Nelfa Brigitte','Lazarte','Salinas','Femenina','nelfa.lazarte@fonabosque.gob.bo','nelfa.lazarte','USUARIO','$2y$10$pY6oSieh0DZ.5UqWEP2CUe6ZBVABafG9R4juvw5CqEuHWHyT0zJSq',1,NULL,'hp33jHn9RuCh1RufWhifa0Cc8293rPnA7yZFw32kpnCoe86zODltwDjmuevI','2018-01-12 14:59:25','2018-01-12 14:59:25','SOLTERO','PERMANENTE','0','Profesional II en Contrataciones','CAF','ADMINISTRATIVA'),(72,'6847289','Yovana','Luna','Loza','Femenina','yovana.luna@fonabosque.gob.bo','yovana.luna','USUARIO','$2y$10$NpynxKEqFE527hjifkluP.9X4nn4shlgBfG8Mjo268b1XpwpEps6i',0,NULL,NULL,'2018-01-12 15:25:23','2018-03-16 15:25:55','SOLTERO','EVENTUAL','0','Apoyo Administrativo I','DIRECCION','LEGAL'),(77,'3464641','Maria del carmen','Trigo','Chavez','Femenina','maria.trigo@fonabosque.gob.bo','maria.trigo','USUARIO','$2y$10$F4csknltDkxixhU46TQC2uFgL8Dtu1h5S8dJA7gr709WGyTgsXhgy',1,NULL,NULL,'2018-01-25 20:27:56','2018-01-25 20:27:56','SOLTERO','CONSULTOR','0','Técnico Administrativo CAF','DIRECCION','LEGAL'),(81,'5063064','Jhonny  Valerio','Choque','Valencia','Masculino','jhonny.choque@fonabosque.gob.bo','jhonny.choque','USUARIO','$2y$10$FwCsNwXBzJGlfCcJaxJxd.AwfRy02TJEkSdXmi3v4QGPzWZ2iEBAe',1,NULL,NULL,'2018-01-12 14:08:09','2018-01-12 14:08:09','SOLTERO','PERMANENTE','0','Coordinador de Planificacion y Evaluacion de Proyectos ai','CPYEP','LEGAL'),(87,'4776977','Cristian Efrain','Jimenez','Mariaca','Masculino','cristian.jimenez@fonabosque.gob.bo','cristian.jimenez','USUARIO','$2y$10$vBpFVp86XvsvnJLHpTh1Bu4CymrptKPEjFKkmwiGaq9bTk57m24gG',1,NULL,'B6r3YMbEpAOv9B7zNwAchJucfTBczJvakKLQ9f1nCGJuzwMNpZsGqcXWCLt1','2018-01-12 14:43:36','2018-01-12 14:43:36','CASADO','PERMANENTE','0','Especialista en Activos Fijos','CAF','ADMINISTRATIVA'),(90,'2620096','Luis Benancio','Loza','Molina','Masculino','luis.loza@fonabosque.gob.bo','luis.loza','USUARIO','$2y$10$PAvtlwPDlnFSR2ecFFATpOwyspc3J9wFhAibElBG7KawegPY9dhOi',0,NULL,NULL,'2018-01-12 15:13:52','2018-03-16 15:25:36','SOLTERO','EVENTUAL','0','Auxiliar Financiero','CAF','ADMINISTRATIVA'),(95,'5906728','Diego Ronal','Vargas','Amurrio','Masculino','diego.vargas@fonabosque.gob.bo','diego.vargas','USUARIO','$2y$10$smAwNdjzHwjBOoS2OAlO1.QsVzFVCT9slGxn/uOcaRlwfh93PDLQe',1,NULL,'O04bYDAUxCmn3qhGTFrufOClsb0QxJLCnK0WtpGNl9z2nFZCQukkbRnmQ2wd','2018-01-04 19:31:50','2018-01-04 19:31:50','SOLTERO','CONSULTOR','0','Asistente de Recursos Humanos','CAF','ADMINISTRATIVA'),(96,'4944393','Micaela','Tejada','Ricaldi','Femenina','micaela.tejada@fonabosque.gob.bo','micaela.tejada','USUARIO','$2y$10$nA.gVi2zFxYITwEh/e1vVe6NWP8oB.3awXj1Ljhe3KptD6qRn0f7i',1,NULL,'2DDi4imadCkkeBZAD0JeU4bCfsrs74HTkQtl3KFEwUEc2axi6mntr8VSdep4','2018-01-12 14:39:11','2018-01-12 14:39:11','SOLTERO','EVENTUAL','0','Analista en Procesos Administrativos','DIRECCION','LEGAL'),(97,'8367193','Daniela Ibeth','Tumiri','Botello','Femenina','daniela.tumiri@fonabosque.gob.bo','daniela.tumiri','USUARIO','$2y$10$XRU9zC6JERr6zTbnCnDcxeWbXn5TpOMk8MKCJR6TlHixeg36BxWEe',1,NULL,'Cf4TzSJ5df7ANq4aqcgwHysx1Uh6Rfeovmj0vwEKcxYBl01Yp8FxDYU1IDok','2018-01-12 14:33:37','2018-01-12 14:33:37','SOLTERO','CONSULTOR','0','Asistente de Auditoria','DIRECCION','AUDITORIA'),(98,'0','Ruben','Gosalvez','Canedo','Masculino','ruben.gosalvez@fonabosque.gob.bo','ruben.gosalvez','USUARIO','$2y$10$s4unIPGIkZGTEzxdqCvKXe1G9dU9yYqoyq7ZL2mrNx2CKCWNHDqxS',0,NULL,'RnpTTWNdMJWvZqa29p2naTzoZGdcQJGolHg2CbSiCOKquAUaKcTrc6kfvFpr','2018-01-12 13:30:23','2018-03-16 15:23:59','SOLTERO','PERMANENTE','0','Responsable de Control, Seguimiento y Monitoreo de Proyectos a.i.','CPYEP','LEGAL'),(100,'4271856','Elena Beatriz','Mejia','Leon.','Femenina','elena.mejia@fonabosque.gob.bo','elena.mejia','USUARIO','$2y$10$lVG6jQnYIEU0eQv45oQieOMt4JTmSEBfZZQWC4ucjSX4ylNQLcD/u',1,NULL,'qvk45Z10aniRPhP3ZLvroCheyheftflycpdAuwVIcFgBWq7wb1YByH51RzY6','2018-01-12 14:30:23','2018-01-12 14:30:23','SOLTERO','CONSULTOR','0','Auditor Senior','DIRECCION','AUDITORIA'),(101,'3741283','Exequiel','Reque','Ovando','Masculino','exequiel.reque@fonabosque.gob.bo','exequiel.reque','USUARIO','$2y$10$WatjVSO5PUlCuy2LqndMvubrhmGUQLAEAkQVGH0vvgE3EZGuSRLAy',1,NULL,NULL,'2018-01-12 14:04:44','2018-01-12 14:04:44','SOLTERO','PERMANENTE','0','Especialista en Planificación y Gestión de Proyectos a.i.','CPYEP','LEGAL'),(102,'4326926','Waldo','Lopez','Gutierrez','Masculino','waldo.lopez@fonabosque.gob.bo','waldo.lopez','USUARIO','$2y$10$2L9m6/cPNlTHrioDS.u4m.1hap9u6yJgfVwfRtaLcDyHQcUWcDiVK',1,NULL,'rcuWyZMj3ZbhpfL9rTU2YJoevY4JdOJTs2z3DDYKsuorcVIK8GKmNxCKthTU','2018-01-25 18:50:36','2018-01-25 19:07:54','CASADO','CONSULTOR','0','Especialista en SIG','DIRECCION','LEGAL'),(104,'6154812','Warner Willy','Concha','Flores','Masculino','warner.concha@fonabosque.gob.bo','warner.concha','USUARIO','$2y$10$xEXLrcU5LJzrCMmiizdyeO6mnbQVnonH.rn0m0MBnZhxzmfB20GSe',1,NULL,'ykIiLwduKX5fh802VkTHfHfBXUBq4aCojoBjNouoeZT2jksU7ZrafdDLvdIb','2018-01-25 21:04:55','2018-01-25 21:33:21','SOLTERO','CONSULTOR','0','Analista Legal','DIRECCION','LEGAL'),(117,'0','Nestor Ramiro','Flores','Quispe','Masculino','nestor.flores@fonabosque.gob.bo','nestor.flores','USUARIO','$2y$10$OgBU//OxJWkILQ3L1fPFv.y8dNwMXib1WHC8u6AyJRoR435cJAx4a',0,NULL,NULL,'2018-01-12 15:20:31','2018-03-16 15:25:15','SOLTERO','CONSULTOR','0','Profesional II en Gestión de Medios y Campañas de Difusión','DIRECCION','COMUNICACION'),(136,'3425483','Maria Jasivia','Gonzales','Rocabado','Femenina','jasivia.gonzales@fonabosque.gob.bo','jasivia.gonzales','USUARIO','$2y$10$kCuLy4obVpUOvkCj9hzNs.0BJud5RQVqIKgua1xbApSbFlvSe6vry',1,NULL,'FRYfTbJDpA1mkSXb8f8TIGPb4clz7zwvnvIACSJ3lMS3UwU67RVGcpqAmrtr','2018-01-12 13:55:47','2018-01-12 13:55:47','CASADO','PERMANENTE','0','Especialista III en Seguimiento y Monitoreo de Programas y Proyectos a.i.','CPYEP','LEGAL'),(137,'4288034','Marco Antonio','Rojas','Rojas','Masculino','marco.rojas@fonabosque.gob.bo','marco.rojas','USUARIO','$2y$10$TakAtZe1HKwUcfa4Atu0k.Ag48kaojAYOYaBtS3POv24Vqust5R.C',1,NULL,NULL,'2018-01-12 14:27:27','2018-01-12 14:27:27','CASADO','PERMANENTE','0','Auditor Interno a.i.','DIRECCION','AUDITORIA');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-27  8:28:44
