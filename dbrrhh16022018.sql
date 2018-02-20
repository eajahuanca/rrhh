/*
Navicat MySQL Data Transfer

Source Server         : RRHH-PRODUCCION
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : dbrrhh

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-02-16 18:50:19
*/

SET FOREIGN_KEY_CHECKS=0;


-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('edwincon85@hotmail.com', '$2y$10$oi7dON/9aWYtygr5EVpm2uGuXjGDMXu/5Y0tteVMKMTBZ/NtzNJee', '2017-11-01 17:03:38');
INSERT INTO `password_resets` VALUES ('sistemas@zaire.com.bo', '$2y$10$wM6g.FXZAz3Pn33Xy265Ae05IEMfEBpSdyrC3Q/t3PdpC/395LgzK', '2017-11-01 17:24:40');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
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

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', '0', 'Administrador', 'Fonabosque', 'Fonabosque', 'MASCULINO', 'infofonabosque@gmail.com', 'admin.fonabosque', 'ADMINISTRADOR', '$2y$10$D2ZwWpwlzA8Ahr/XLoFU2O0MePQQ/QRY9Ks5dFar0863OxKlSHADW', '1', null, 'qHLOaEJEWbrfY4ivrJlRpZnMl05869hw37c40f5IMu4BgS8psZGSiYd2tcts', '2017-11-27 11:53:28', '2017-11-27 11:53:28', 'SOLTERO', 'PERMANENTE', '0', 'Administrador', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('4', '4803940', 'Jenny Kitty', 'Laura', 'Vidal', 'Femenina', 'jenny.laura@fonabosque.gob.bo', 'jenny.laura', 'USUARIO', '$2y$10$t2WTej84yvbntd.EWcUN/ejqVz2eeLBSJKq1tVmrfra.0to81X8m6', '1', null, null, '2018-01-12 11:10:20', '2018-01-12 11:10:20', 'CASADO', 'PERMANENTE', '0', 'Contador a.i.', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('5', '4755128', 'Silvia', 'Rodriguez', 'Cusicanqui', 'Femenina', 'silvia.rodriguez@fonabosque.gob.bo', 'silvia.rodriguez', 'USUARIO', '$2y$10$VB1yn4jEiWLL4ZQxTA/Olec9oYNuhqUDXymk9/s9imClTUheqbuCm', '1', null, '67Q0mWPrXPSdHvhypUxqbdDurOx6Vty3iHHE1vx7E5JPLHTNN7HmFG04fmxx', '2018-01-04 15:12:00', '2018-01-04 15:12:00', 'SOLTERO', 'CONSULTOR', '0', 'Profesional en Recursos Humanos', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('8', '4924940', 'Naja Ericka', 'Vargas', 'Noriega', 'Femenina', 'ericka.vargas@fonabosque.gob.bo', 'ericka.vargas', 'USUARIO', '$2y$10$X8N2gcTD7jd25BzdEQnmI.Mo30rD6IgcHBbdpjM0hIwggPzSrd2Xu', '1', null, 'ISzmdY6AYQ6wwCnvPmLxFGHYNOWUs6wDsz8aJfWOsD1XjIy2I7Xzkzu1bGEr', '2018-01-11 14:39:31', '2018-01-11 14:39:31', 'SOLTERO', 'PERMANENTE', '11707', 'Especialista en Planificación y Evaluación de Proyectos a.i.', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('11', '6746059', 'Juan Carlos', 'Acho', 'Ayala', 'Masculino', 'juan.acho@fonabosque.gob.bo', 'juan.acho', 'USUARIO', '$2y$10$gA4vW2cygs8azqUFWHBD2OVjHzL68EjwxE6zAxZLa8s71Jn3KoO3i', '1', '-', 'JzrShrIFFvpSYuIUbF9xjtEwQA29P9FvKD15dlE5IoptskjuQ6JB3g0avTMS', '2017-10-09 00:00:00', '2018-01-26 16:56:45', 'SOLTERO', 'PERMANENTE', '', 'ENCARGADO DE TECNOLOGIAS DE INFORMACION Y COMUNICACION', null, null);
INSERT INTO `users` VALUES ('12', '7031014', 'Rene', 'Mamani', 'Amaru', 'Masculino', 'rene.mamani@fonabosque.gob.bo', 'rene.mamani', 'USUARIO', '$2y$10$2LSFQDV75BG6iYnUy4Xbb.hiVdah8EXh833uFRzEi6RcMGprxboBS', '1', '-', 'b7Cwizb04tdz0dkK8cHqML83nuDSamKwxGNcmQsOAuvOJ5rly6nIgEwRDnjU', '2017-11-27 16:33:59', '2017-11-27 16:33:59', 'SOLTERO', 'CONSULTOR', '4500', 'TECNICO EN SOPORTE Y REDES', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('14', '4879453', 'Leslie Karem', 'Arauco', 'Flores', 'Femenina', 'leslie.arauco@fonabosque.gob.bo', 'leslie.arauco', 'USUARIO', '$2y$10$PNc5jLzyVagqkExSCmJ40etWp/pIQ.aNjnI4lEKLWsqfWxozKOQEe', '1', null, null, '2018-01-12 10:48:29', '2018-01-12 10:48:29', 'SOLTERO', 'CONSULTOR', '0', 'Profesional en Recursos Humanos', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('18', '5173200', 'Jeanneth', 'Villalobos', 'Cayo.', 'Femenina', 'jeanneth.villalobos@fonabosque.gob.bo', 'jeanneth.villalobos', 'USUARIO', '$2y$10$YJCh./jkA2WYhybUEfhAg.RlQ2lutoI8m9RrNc7wZcayBzbZAFOmu', '1', null, null, '2018-01-12 09:59:52', '2018-01-12 09:59:52', 'SOLTERO', 'PERMANENTE', '0', 'Especialista en Seguimiento y Monitoreo de Programas y Proyectos a.i.', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('24', '7840589', 'Mariela', 'Flores', 'Tito.', 'Femenina', 'mariela.flores@fonabosque.gob.bo', 'mariela.flores', 'USUARIO', '$2y$10$njVxD60.7wmnOjpXU4iHFuq0EpFjfY9P8Hb8HwlD2Dw3oQjUbu2bu', '1', null, null, '2018-01-12 10:02:38', '2018-01-12 10:02:38', 'SOLTERO', 'PERMANENTE', '0', 'Responsable de Planificación y Evaluación de Proyectos a.i.', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('27', '2207578', 'Daniel', 'Fernandez', 'Rios.', 'Masculino', 'daniel.fernandez@fonabosque.gob.bo', 'daniel.fernandez', 'USUARIO', '$2y$10$T2ZAQW9WljFyPaBzlCd4y.RJo69XkWRUSF188odtI7R6W88wG6jkS', '1', null, null, '2018-01-12 10:11:29', '2018-01-12 10:11:29', 'SOLTERO', 'PERMANENTE', '0', 'Encargado de Gestión Institucional y Desarrollo Organizacional a.i.', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('32', '3359536', 'Carlos Eduardo', 'Medinaceli', 'Muñoz', 'Masculino', 'carlos.medinaceli@fonabosque.gob.bo', 'carlos.medinaceli', 'USUARIO', '$2y$10$djEAYC3LwTtf/VChpe1tv.WoaiDvsLbOGe28V2OCiMkDoOHmxANsu', '1', null, '90VtV6IWWKwuzdu7HePnvlA5FtSPJCAnBNdb9MbG0nXHccrpyCcBB249BGaA', '2018-01-04 15:18:44', '2018-01-04 15:18:44', 'SOLTERO', 'PERMANENTE', '0', 'Asesor Legal', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('37', '4769790', 'Sonia Flora', 'Najera', 'Tarqui', 'Femenina', 'sonia.najera@fonabosque.gob.bo', 'sonia.najera', 'USUARIO', '$2y$10$8d4laFhgvIOMQPMZ/TLO2uD89nXfpdzD7TOcDQ9bMp44MmJN3CDyS', '1', null, 'qUrmlvtnUfbV6pEfux3HT6GdjUuI4wDGASMaasEpBUVxbdxkA8He4sTVQR5P', '2018-01-04 15:14:52', '2018-01-04 15:14:52', 'CASADO', 'PERMANENTE', '0', 'Cordinadora Administrativa FInanciera', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('41', '4319749', 'Walter Luis', 'Chuquimia', 'Choque', 'Masculino', 'walter.chuquimia@fonabosque.gob.bo', 'walter.chuquimia', 'USUARIO', '$2y$10$gH8tRpOhxKjYAelJj4j1HujO9jEhdr2NYNPLAhtFdBztL0dPAABJK', '1', null, 'dujZvtPGvsO0VMVcQyVzTeBIA6HZFUMyIrM6yg4GnVygZKUDUXp5UVxBJAWL', '2018-01-11 07:53:38', '2018-01-11 07:53:38', 'SOLTERO', 'CONSULTOR', '6253', 'Tecnico Financiero en Proyectos', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('49', '5070760', 'Esther', 'Venegas', 'Saldivar', 'Femenina', 'esther.venegas@fonabosque.gob.bo', 'esther.venegas', 'USUARIO', '$2y$10$/jnkC9tTZgcD7uKGjjZZXuvp/d76wwshOwYVgjsDbVrj4rYoj7WKm', '1', null, '3PHOvELpy3ERpzgtmIgawQab2nqBqEvGMjtkp5O3AdowP5JsJBf7PvSggOeX', '2018-01-12 11:23:27', '2018-01-25 17:43:04', 'SOLTERO', 'PERMANENTE', '0', 'Secretaria General', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('51', '3753005', 'Marco Antonio', 'Funes', 'Condarco', 'Masculino', 'marco.funes@fonabosque.gob.bo', 'marco.funes', 'USUARIO', '$2y$10$3od176t6Rp.y2P19dxbFTu1pivAiCQhPeE8zXJtldwcNHCCdGlaV2', '1', null, null, '2018-01-12 11:06:17', '2018-01-12 11:06:17', 'SOLTERO', 'PERMANENTE', '0', 'Encargado Financiero a.i.', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('55', '4843470', 'Edgar', 'Varnoux', 'Bustillos', 'Masculino', 'edgar.varnoux@fonabosque.gob.bo', 'edgar.varnoux', 'USUARIO', '$2y$10$L3ma1Ln6whp7R8JuGmFIDu.iAgY0hTqlMS8UuWBmT.4.XA9/i9sPO', '1', null, 'DZFbIfZNWqtnPULgmTW22pbUkaRJt72aiQIeDND6zHYunZavFzmhT0zdsiW2', '2018-01-04 12:06:23', '2018-01-04 12:06:23', 'SOLTERO', 'PERMANENTE', '0', 'Encargado Administrativo a.i.', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('60', '4801839', 'Edgar Alejandro', 'Guerra', 'Monroy', 'Masculino', 'edgar.guerra@fonabosque.gob.bo', 'edgar.guerra', 'USUARIO', '$2y$10$p2MfoL08pIn2NeeUYRrWeua.oZtqWjRAsRY6oF6KRo6LE.ADQWNf2', '1', null, 'oLBfNN2FYsVPcAGcNWGarG1ILSyR6Ew7H1jme59q5TipaCugcuTGUEedQYCP', '2018-01-12 10:37:26', '2018-01-12 10:37:26', 'CASADO', 'PERMANENTE', '0', 'Asesor Legal a.i.', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('61', '4876798', 'Imelda Iris', 'Saavedra', 'Duran', 'Femenina', 'imelda.saavedra@fonabosque.gob.bo', 'imelda.saavedra', 'USUARIO', '$2y$10$8keaex0R7ys6LZgscvdRYeCMCMWWLEKBlLToLwKuTxlAFgqN30Kkm', '1', null, null, '2018-01-12 10:29:02', '2018-01-12 10:29:02', 'CASADO', 'CONSULTOR', '0', 'Auditor Interno II', 'DIRECCION', 'AUDITORIA');
INSERT INTO `users` VALUES ('69', '4294797', 'Nelfa Brigitte', 'Lazarte', 'Salinas', 'Femenina', 'nelfa.lazarte@fonabosque.gob.bo', 'nelfa.lazarte', 'USUARIO', '$2y$10$pY6oSieh0DZ.5UqWEP2CUe6ZBVABafG9R4juvw5CqEuHWHyT0zJSq', '1', null, 'hp33jHn9RuCh1RufWhifa0Cc8293rPnA7yZFw32kpnCoe86zODltwDjmuevI', '2018-01-12 10:59:25', '2018-01-12 10:59:25', 'SOLTERO', 'PERMANENTE', '0', 'Profesional II en Contrataciones', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('72', '6847289', 'Yovana', 'Luna.', 'Loza.', 'Femenina', 'yovana.luna@fonabosque.gob.bo', 'yovana.luna', 'USUARIO', '$2y$10$NpynxKEqFE527hjifkluP.9X4nn4shlgBfG8Mjo268b1XpwpEps6i', '1', null, null, '2018-01-12 11:25:23', '2018-01-12 11:25:23', 'SOLTERO', 'EVENTUAL', '0', 'Apoyo Administrativo I', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('77', '3464641', 'Maria del carmen', 'Trigo', 'Chavez', 'Femenina', 'maria.trigo@fonabosque.gob.bo', 'maria.trigo', 'USUARIO', '$2y$10$F4csknltDkxixhU46TQC2uFgL8Dtu1h5S8dJA7gr709WGyTgsXhgy', '1', null, null, '2018-01-25 16:27:56', '2018-01-25 16:27:56', 'SOLTERO', 'CONSULTOR', '0', 'Técnico Administrativo CAF', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('81', '5063064', 'Jhonny  Valerio', 'Choque', 'Valencia', 'Masculino', 'jhonny.choque@fonabosque.gob.bo', 'jhonny.choque', 'USUARIO', '$2y$10$FwCsNwXBzJGlfCcJaxJxd.AwfRy02TJEkSdXmi3v4QGPzWZ2iEBAe', '1', null, null, '2018-01-12 10:08:09', '2018-01-12 10:08:09', 'SOLTERO', 'PERMANENTE', '0', 'Coordinador de Planificacion y Evaluacion de Proyectos ai', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('87', '4776977', 'Cristian Efrain', 'Jimenez', 'Mariaca', 'Masculino', 'cristian.jimenez@fonabosque.gob.bo', 'cristian.jimenez', 'USUARIO', '$2y$10$vBpFVp86XvsvnJLHpTh1Bu4CymrptKPEjFKkmwiGaq9bTk57m24gG', '1', null, 'B6r3YMbEpAOv9B7zNwAchJucfTBczJvakKLQ9f1nCGJuzwMNpZsGqcXWCLt1', '2018-01-12 10:43:36', '2018-01-12 10:43:36', 'CASADO', 'PERMANENTE', '0', 'Especialista en Activos Fijos', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('90', '2620096', 'Luis Benancio', 'Loza.', 'Molina', 'Masculino', 'luis.loza@fonabosque.gob.bo', 'luis.loza', 'USUARIO', '$2y$10$PAvtlwPDlnFSR2ecFFATpOwyspc3J9wFhAibElBG7KawegPY9dhOi', '1', null, null, '2018-01-12 11:13:52', '2018-01-30 12:23:48', 'SOLTERO', 'EVENTUAL', '0', 'Auxiliar Financiero', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('95', '5906728', 'Diego Ronal', 'Vargas', 'Amurrio', 'Masculino', 'diego.vargas@fonabosque.gob.bo', 'diego.vargas', 'USUARIO', '$2y$10$smAwNdjzHwjBOoS2OAlO1.QsVzFVCT9slGxn/uOcaRlwfh93PDLQe', '1', null, 'O04bYDAUxCmn3qhGTFrufOClsb0QxJLCnK0WtpGNl9z2nFZCQukkbRnmQ2wd', '2018-01-04 15:31:50', '2018-01-04 15:31:50', 'SOLTERO', 'CONSULTOR', '0', 'Asistente de Recursos Humanos', 'CAF', 'ADMINISTRATIVA');
INSERT INTO `users` VALUES ('96', '4944393', 'Micaela', 'Tejada', 'Ricaldi', 'Femenina', 'micaela.tejada@fonabosque.gob.bo', 'micaela.tejada', 'USUARIO', '$2y$10$nA.gVi2zFxYITwEh/e1vVe6NWP8oB.3awXj1Ljhe3KptD6qRn0f7i', '1', null, '2DDi4imadCkkeBZAD0JeU4bCfsrs74HTkQtl3KFEwUEc2axi6mntr8VSdep4', '2018-01-12 10:39:11', '2018-01-12 10:39:11', 'SOLTERO', 'EVENTUAL', '0', 'Analista en Procesos Administrativos', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('97', '8367193', 'Daniela Ibeth', 'Tumiri', 'Botello', 'Femenina', 'daniela.tumiri@fonabosque.gob.bo', 'daniela.tumiri', 'USUARIO', '$2y$10$XRU9zC6JERr6zTbnCnDcxeWbXn5TpOMk8MKCJR6TlHixeg36BxWEe', '1', null, 'Cf4TzSJ5df7ANq4aqcgwHysx1Uh6Rfeovmj0vwEKcxYBl01Yp8FxDYU1IDok', '2018-01-12 10:33:37', '2018-01-12 10:33:37', 'SOLTERO', 'CONSULTOR', '0', 'Asistente de Auditoria', 'DIRECCION', 'AUDITORIA');
INSERT INTO `users` VALUES ('98', '0', 'Ruben', 'Gosalvez', 'Canedo', 'Masculino', 'ruben.gosalvez@fonabosque.gob.bo', 'ruben.gosalvez', 'USUARIO', '$2y$10$s4unIPGIkZGTEzxdqCvKXe1G9dU9yYqoyq7ZL2mrNx2CKCWNHDqxS', '1', null, 'RnpTTWNdMJWvZqa29p2naTzoZGdcQJGolHg2CbSiCOKquAUaKcTrc6kfvFpr', '2018-01-12 09:30:23', '2018-01-12 09:30:23', 'SOLTERO', 'PERMANENTE', '0', 'Responsable de Control, Seguimiento y Monitoreo de Proyectos a.i.', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('100', '4271856', 'Elena Beatriz', 'Mejia', 'Leon.', 'Femenina', 'elena.mejia@fonabosque.gob.bo', 'elena.mejia', 'USUARIO', '$2y$10$lVG6jQnYIEU0eQv45oQieOMt4JTmSEBfZZQWC4ucjSX4ylNQLcD/u', '1', null, 'qvk45Z10aniRPhP3ZLvroCheyheftflycpdAuwVIcFgBWq7wb1YByH51RzY6', '2018-01-12 10:30:23', '2018-01-12 10:30:23', 'SOLTERO', 'CONSULTOR', '0', 'Auditor Senior', 'DIRECCION', 'AUDITORIA');
INSERT INTO `users` VALUES ('101', '3741283', 'Exequiel', 'Reque', 'Ovando', 'Masculino', 'exequiel.reque@fonabosque.gob.bo', 'exequiel.reque', 'USUARIO', '$2y$10$WatjVSO5PUlCuy2LqndMvubrhmGUQLAEAkQVGH0vvgE3EZGuSRLAy', '1', null, null, '2018-01-12 10:04:44', '2018-01-12 10:04:44', 'SOLTERO', 'PERMANENTE', '0', 'Especialista en Planificación y Gestión de Proyectos a.i.', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('102', '4326926', 'Waldo', 'Lopez', 'Gutierrez', 'Masculino', 'waldo.lopez@fonabosque.gob.bo', 'waldo.lopez', 'USUARIO', '$2y$10$2L9m6/cPNlTHrioDS.u4m.1hap9u6yJgfVwfRtaLcDyHQcUWcDiVK', '1', null, 'rcuWyZMj3ZbhpfL9rTU2YJoevY4JdOJTs2z3DDYKsuorcVIK8GKmNxCKthTU', '2018-01-25 14:50:36', '2018-01-25 15:07:54', 'CASADO', 'CONSULTOR', '0', 'Especialista en SIG', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('104', '6154812', 'Warner Willy', 'Concha', 'Flores', 'Masculino', 'warner.concha@fonabosque.gob.bo', 'warner.concha', 'USUARIO', '$2y$10$xEXLrcU5LJzrCMmiizdyeO6mnbQVnonH.rn0m0MBnZhxzmfB20GSe', '1', null, 'ykIiLwduKX5fh802VkTHfHfBXUBq4aCojoBjNouoeZT2jksU7ZrafdDLvdIb', '2018-01-25 17:04:55', '2018-01-25 17:33:21', 'SOLTERO', 'CONSULTOR', '0', 'Analista Legal', 'DIRECCION', 'LEGAL');
INSERT INTO `users` VALUES ('117', '0', 'Nestor Ramiro', 'Flores', 'Quispe', 'Masculino', 'nestor.flores@fonabosque.gob.bo', 'nestor.flores', 'USUARIO', '$2y$10$OgBU//OxJWkILQ3L1fPFv.y8dNwMXib1WHC8u6AyJRoR435cJAx4a', '1', null, null, '2018-01-12 11:20:31', '2018-01-12 11:20:31', 'SOLTERO', 'CONSULTOR', '0', 'Profesional II en Gestión de Medios y Campañas de Difusión', 'DIRECCION', 'COMUNICACION');
INSERT INTO `users` VALUES ('136', '3425483', 'Maria Jasivia', 'Gonzales', 'Rocabado', 'Femenina', 'jasivia.gonzales@fonabosque.gob.bo', 'jasivia.gonzales', 'USUARIO', '$2y$10$kCuLy4obVpUOvkCj9hzNs.0BJud5RQVqIKgua1xbApSbFlvSe6vry', '1', null, 'FRYfTbJDpA1mkSXb8f8TIGPb4clz7zwvnvIACSJ3lMS3UwU67RVGcpqAmrtr', '2018-01-12 09:55:47', '2018-01-12 09:55:47', 'CASADO', 'PERMANENTE', '0', 'Especialista III en Seguimiento y Monitoreo de Programas y Proyectos a.i.', 'CPYEP', 'LEGAL');
INSERT INTO `users` VALUES ('137', '4288034', 'Marco Antonio', 'Rojas', 'Rojas', 'Masculino', 'marco.rojas@fonabosque.gob.bo', 'marco.rojas', 'USUARIO', '$2y$10$TakAtZe1HKwUcfa4Atu0k.Ag48kaojAYOYaBtS3POv24Vqust5R.C', '1', null, null, '2018-01-12 10:27:27', '2018-01-12 10:27:27', 'CASADO', 'PERMANENTE', '0', 'Auditor Interno a.i.', 'DIRECCION', 'AUDITORIA');
