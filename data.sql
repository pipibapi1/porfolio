-- Adminer 4.8.1 MySQL 5.7.39 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `image_urls`;
CREATE TABLE `image_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `landing` tinyint(1) DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `image_urls_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `image_urls` (`id`, `url`, `landing`, `project_id`, `createdAt`, `updatedAt`) VALUES
(1,	'https://i.im.ge/2022/09/04/Og7AsD.restaurant-pos-2-0-pic1.png',	1,	1,	'2022-09-05 02:31:13',	'2022-09-05 02:31:13'),
(2,	'https://i.im.ge/2022/09/04/Og7AsD.restaurant-pos-2-0-pic1.png',	0,	1,	'2022-09-05 02:31:31',	'2022-09-05 02:31:31'),
(3,	'https://i.im.ge/2022/09/04/Og7Ct4.restaurant-pos-2-0-pic2.png',	0,	1,	'2022-09-05 02:32:09',	'2022-09-05 02:32:09'),
(4,	'https://i.im.ge/2022/09/04/Og7EzC.restaurant-pos-2-0-pic3.png',	0,	1,	'2022-09-05 02:32:36',	'2022-09-05 02:32:36'),
(5,	'https://i.im.ge/2022/09/04/Og7PYM.la-fashionale-shopping-system-pic1.png',	1,	2,	'2022-09-05 02:33:08',	'2022-09-05 02:33:08'),
(6,	'https://i.im.ge/2022/09/04/Og7PYM.la-fashionale-shopping-system-pic1.png',	0,	2,	'2022-09-05 02:33:31',	'2022-09-05 02:33:31'),
(7,	'https://i.im.ge/2022/09/04/Og7NUh.la-fashionale-shopping-system-pic2.png',	0,	2,	'2022-09-05 02:33:58',	'2022-09-05 02:33:58'),
(8,	'https://i.im.ge/2022/09/04/Og7t4Y.la-fashionale-shopping-system-pic3.png',	0,	2,	'2022-09-05 02:34:31',	'2022-09-05 02:34:31'),
(9,	'https://i.im.ge/2022/09/04/Og7hqz.la-fashionale-clerk-workspace-pic1.png',	1,	3,	'2022-09-05 02:35:11',	'2022-09-05 02:35:11'),
(10,	'https://i.im.ge/2022/09/04/Og7hqz.la-fashionale-clerk-workspace-pic1.png',	0,	3,	'2022-09-05 02:35:27',	'2022-09-05 02:35:27'),
(11,	'https://i.im.ge/2022/09/04/Og7it6.la-fashionale-clerk-workspace-pic2.png',	0,	3,	'2022-09-05 02:35:52',	'2022-09-05 02:35:52'),
(12,	'https://i.im.ge/2022/09/04/Og70zF.la-fashionale-clerk-workspace-pic3.png',	0,	3,	'2022-09-05 02:36:21',	'2022-09-05 02:36:21'),
(13,	'https://i.im.ge/2022/09/04/Og7L4S.la-fashionale-manager-workspace-pic1-png.png',	1,	4,	'2022-09-05 02:37:04',	'2022-09-05 02:37:04'),
(14,	'https://i.im.ge/2022/09/04/Og7L4S.la-fashionale-manager-workspace-pic1-png.png',	0,	4,	'2022-09-05 02:37:19',	'2022-09-05 02:37:19'),
(15,	'https://i.im.ge/2022/09/04/Og79FK.la-fashionale-manager-workspace-pic2-png.png',	0,	4,	'2022-09-05 02:37:55',	'2022-09-05 02:37:55'),
(16,	'https://i.im.ge/2022/09/04/Og7mWX.la-fashionale-manager-workspace-pic3-png.png',	0,	4,	'2022-09-05 02:38:53',	'2022-09-05 02:38:53'),
(17,	'https://i.im.ge/2022/09/04/Og76T8.la-fashionale-manager-workspace-pic4-png.png',	0,	4,	'2022-09-05 02:39:18',	'2022-09-05 02:39:18');

DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `live_link` varchar(255) DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `projects` (`id`, `project_name`, `description`, `live_link`, `github_link`, `createdAt`, `updatedAt`) VALUES
(1,	'Restaurant POS System 2.0 UI',	'This is the UI of a Fastfood Restaurant, which helps customers order food and beverage without communicating with staffs',	'https://restaurant-menu-ui-pos.netlify.app/',	'https://github.com/pipibapi1/Restaurant-POS-Sytem-2.0',	'2022-09-05 02:25:06',	'2022-09-05 02:25:06'),
(2,	'La Fashionale Shopping System',	'This is a website where customer can buy their clothes through online payment',	'https://la-fashionale-main.netlify.app/',	'https://github.com/pipibapi1/Fashion-App',	'2022-09-05 02:26:07',	'2022-09-05 02:26:07'),
(3,	'La Fashionale Clerk Workspace',	'A working space for Clerk of La Fashionale, clerks can receive and manage customer\'s orders',	'https://la-fashionale-clerk-workspace.netlify.app/',	'https://github.com/pipibapi1/Fashion-App',	'2022-09-05 02:27:04',	'2022-09-05 02:27:04'),
(4,	'La Fashionale Manager Workspace',	'A working space for Manager of La Fashionale.Manager can manage all products of the system, clerks\' accounts and revenue',	'https://la-fashionale-manager-workspace.netlify.app/',	'https://github.com/pipibapi1/Fashion-App',	'2022-09-05 02:28:08',	'2022-09-05 02:28:08');

DROP TABLE IF EXISTS `projects_technologies`;
CREATE TABLE `projects_technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `technology_id` (`technology_id`),
  CONSTRAINT `projects_technologies_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  CONSTRAINT `projects_technologies_ibfk_2` FOREIGN KEY (`technology_id`) REFERENCES `technologies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `projects_technologies` (`id`, `project_id`, `technology_id`, `createdAt`, `updatedAt`) VALUES
(1,	1,	1,	'2022-09-05 02:50:33',	'2022-09-05 02:50:33'),
(2,	1,	2,	'2022-09-05 02:50:47',	'2022-09-05 02:50:47'),
(3,	1,	3,	'2022-09-05 02:51:09',	'2022-09-05 02:51:09'),
(4,	1,	4,	'2022-09-05 02:51:23',	'2022-09-05 02:51:23'),
(5,	2,	1,	'2022-09-05 02:51:40',	'2022-09-05 02:51:40'),
(6,	2,	2,	'2022-09-05 02:51:52',	'2022-09-05 02:51:52'),
(7,	2,	3,	'2022-09-05 02:52:02',	'2022-09-05 02:52:02'),
(8,	2,	4,	'2022-09-05 02:52:13',	'2022-09-05 02:52:13'),
(9,	3,	1,	'2022-09-05 02:52:24',	'2022-09-05 02:52:24'),
(10,	3,	2,	'2022-09-05 02:52:35',	'2022-09-05 02:52:35'),
(11,	3,	3,	'2022-09-05 02:52:45',	'2022-09-05 02:52:45'),
(12,	3,	4,	'2022-09-05 02:52:56',	'2022-09-05 02:52:56'),
(13,	4,	1,	'2022-09-05 02:53:07',	'2022-09-05 02:53:07'),
(14,	4,	2,	'2022-09-05 02:53:17',	'2022-09-05 02:53:17'),
(15,	4,	3,	'2022-09-05 02:53:31',	'2022-09-05 02:53:31'),
(16,	4,	4,	'2022-09-05 02:54:07',	'2022-09-05 02:54:07');

DROP TABLE IF EXISTS `SequelizeMeta`;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20220824134928-create-user.js'),
('20220903111512-drop_users_and_add_new_tables.js'),
('20220905024050-update_technologies_relationship.js');

DROP TABLE IF EXISTS `technologies`;
CREATE TABLE `technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `technology_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `technologies` (`id`, `technology_name`, `createdAt`, `updatedAt`) VALUES
(1,	'ReactJs',	'2022-09-05 02:49:08',	'2022-09-05 02:49:08'),
(2,	'NodeJs',	'2022-09-05 02:49:27',	'2022-09-05 02:49:27'),
(3,	'ExpressJs',	'2022-09-05 02:49:45',	'2022-09-05 02:49:45'),
(4,	'MongoDB Atlas',	'2022-09-05 02:50:03',	'2022-09-05 02:50:03');

-- 2022-09-05 14:17:09
