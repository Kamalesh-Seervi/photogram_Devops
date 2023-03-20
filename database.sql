-- Adminer 4.8.1 MySQL 8.0.30 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `photogram`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `ph` varchar(10) NOT NULL,
  `blocked` int NOT NULL DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`(120)),
  UNIQUE KEY `email` (`email`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `auth` (`id`, `username`, `password`, `email`, `ph`, `blocked`, `active`) VALUES
(19,	'Jeeva',	'ae692434f65d90c7278805646810ab56',	'abc@gmail.com',	'9999999999',	0,	0),
(20,	'kamalesh2020',	'bb2d3d70605106d5fb65c68648618a93',	'kkamalesh117@gmail.com',	'1234567890',	0,	0),
(22,	'kamalesh20',	'2c6abe677246466c178991cc2f8ebba3',	'kkamalesh117434@gmail.com',	'1234567890',	0,	0),
(24,	'kamalesh2',	'90c1b0d1e27050fa08e6e655370fd62f',	'kkamalesh11r2427434@gmail.com',	'1234567890',	0,	0),
(25,	'Lover of kamy',	'b973a7a6da6cc62fdab096af063dc7a2',	'kkspn99@gmail.com',	'999999999',	0,	0),
(26,	'Roghan',	'92796b8d636b5aaa7395fa110b072f7b',	'roghan.jawaharlal@gmail.com',	'7358171473',	0,	0),
(27,	'rwe',	'bd134207f74532a8b094676c4a2ca9ed',	'reerwe@gmail.com',	'1234567890',	0,	0),
(32,	'qwoidhqoda',	'a456c6e47cd02b2a4d9476eb6fabfad1',	'ed1@gmail.com',	'1234567890',	0,	0),
(33,	'nehaal',	'bf0540c35a889afc60d3985097d42012',	'neg@gmail.com',	'1234567890',	0,	0),
(34,	'Kamy',	'a0a74ac1156c421c2fef7169a0834182',	'fgjhsdhjv@gmail.com',	'1234567890',	0,	0),
(35,	'sgbsuhsh',	'$2y$09$.CutRTnhbpS9dZ6h7Xsjmee6FdmSR9a.PRhfvBOp2lxVw0E537zhe',	'sunrwijnc@gmail.com',	'1234567890',	0,	0),
(37,	'foo',	'$2y$09$51TMxkLp7q.sruSOaAkD8ue2/zoAZG52KWmbuQu8w6osca26WKvh.',	'jbjvjvj@gmail.com',	'3434534345',	0,	0),
(39,	'+916382784036',	'$2y$09$..dvfMj5NFnutMIR7Y.ZY.vO/tgFImCDJ/sSn.IUXodlT2ropCso2',	'kkamahujbjlesh117@gmail.com',	'3423847321',	0,	0);

DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `token` varchar(32) NOT NULL,
  `login_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(20) NOT NULL,
  `user_agent` varchar(256) NOT NULL,
  `active` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `session_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `auth` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `bio` longtext NOT NULL,
  `avatar` varchar(1024) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `dob` int NOT NULL,
  `instagram` varchar(256) NOT NULL,
  `twitter` varchar(256) NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `auth` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 2023-03-20 17:48:01