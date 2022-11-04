DROP DATABASE IF EXISTS `crm`;
CREATE DATABASE `crm`; 
USE `crm`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_first_name` varchar(50) NOT NULL,
  `employee_last_name` varchar(50) NOT NULL,
  `employee_email` varchar(50) NOT NULL,
  `employee_email_password` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `employees` VALUES (1,'cemre','koc','cemre@panfinance.net','xxhdvgemkojtfqok');
INSERT INTO `employees` VALUES (2,'charlie','koch','charlie@panfinance.net','charlienin_sifresi');


CREATE TABLE `companies` (
  `company_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `owner_id` int NOT NULL,
  `register_date` date NOT NULL,
  PRIMARY KEY (`company_id`),
  KEY `FK_owner_id` (`owner_id`),
  CONSTRAINT `FK_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `employees` (`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `companies` VALUES (1,'panfinance','uk','advertisement',1,'2022-10-10');



create table `company_contacts` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `company_id` int not null,
  `company_name` varchar(50) not null,
  `title` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `action_binary` int not null,
  `next_action` varchar(50) NOT NULL,
  `last_action_date` date NOT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `FK_company_id` (`company_id`),
  CONSTRAINT `FK_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `company_contacts` VALUES (1,'levi',1,'panfinance','CMO','levijansen046@gmail.com',0,'introduction_message','2022-10-10');
