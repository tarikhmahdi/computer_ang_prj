-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema computer_solution
--

CREATE DATABASE IF NOT EXISTS computer_solution;
USE computer_solution;

--
-- Definition of table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`,`name`,`address`,`district`,`zip`,`phone`,`email`,`image`) VALUES 
 (1,'Md. Emran Hossain','136, New Circular Road, Moghbazar Wireless, Moghbazar','Dhaka','1217','01670932273','emranhos1@gmail.com','Emran.jpg'),
 (2,'Ahamed Saki','149/2, Arambag','Dhaka','1010','01925163127','ahamedsaki@gmail.com','saki.jpg'),
 (3,'AAA','AA, AAA, AAAAA','AAAAA','0000','091XXXXXXX','XXXXX@gmail.com','AAA.jpg');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `p_id` int(10) unsigned NOT NULL auto_increment,
  `sa_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `desc` varchar(3000) NOT NULL,
  `image` varchar(400) default NULL,
  PRIMARY KEY  USING BTREE (`p_id`),
  KEY `FK_product_sa_id` (`sa_id`),
  CONSTRAINT `FK_product_sa_id` FOREIGN KEY (`sa_id`) REFERENCES `services` (`sa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`p_id`,`sa_id`,`name`,`price`,`desc`,`image`) VALUES 
 (1,1,'RAM',25000,'Good','ram.jpg'),
 (2,1,'Mouse',250,'Good','mouse.jpg'),
 (3,1,'Keybord',500,'Nice','keyboard.jpg'),
 (4,2,'Anti Virus',900,'Protective','antivirus.jpg'),
 (5,2,'WinRAR',400,'Ziper','winrar.jpg'),
 (6,3,'R',500,'Cable','r.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `sa_id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `desc` varchar(4000) NOT NULL,
  `image` varchar(300) NOT NULL,
  PRIMARY KEY  (`sa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`sa_id`,`name`,`desc`,`image`) VALUES 
 (1,'Hardware','Computer hardware is the collection of physical components that constitute a computer system. Computer hardware is the physical parts or components of a computer, such as monitor, keyboard, computer data storage, hard disk drive (HDD), graphic card, sound card, memory (RAM), motherboard, and so on, all of which are tangible physical objects.[1] By contrast, software is instructions that can be stored and run by hardware.\r Computer hardware is the collection of physical components that constitute a computer system. Computer hardware is the physical parts or components of a computer, such as monitor, keyboard, computer data storage, hard disk drive (HDD), graphic card, sound card, memory (RAM), motherboard, and so on, all of which are tangible physical objects.[1] By contrast, software is instructions that can be stored and run by hardware.\r \r Hardware is directed by the software to execute any command or instruction. A combination of hardware and software forms a usable computing system.\r Hardware is directed by the software to execute any command or instruction. A combination of hardware and software forms a usable computing system.','Home-Server-icon.png'),
 (2,'Software','Computer software, or simply software, is that part of a computer system that consists of encoded information or computer instructions, in contrast to the physical hardware from which the system is built.\r \r The term \"software\" was first proposed by Alan Turing and used in this sense by John W. Tukey in 1957. In computer science and software engineering, computer software is all information processed by computer systems, programs and data.','Software.png'),
 (3,'Cables','A cable is two or more wires running side by side and bonded, twisted, or braided together to form a single assembly. The term originally referred to a nautical line of specific length where multiple ropes, each laid clockwise, are then laid together anti-clockwise and shackled to produce a strong thick line, resistant to water absorption, that was used to anchor large ships.\r\n \r\n In mechanics, cables, otherwise known as wire ropes, are used for lifting, hauling, and towing or conveying force through tension.\r\n \r\n In electrical engineering cables are used to carry electric currents. An optical cable contains one or more optical fibers in a protective jacket that supports the fibers.','Cable-icon.png');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
