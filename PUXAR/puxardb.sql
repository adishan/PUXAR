-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.11-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.5055
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for puxardb
CREATE DATABASE IF NOT EXISTS `puxardb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `puxardb`;

-- Dumping structure for table puxardb.products
CREATE TABLE IF NOT EXISTS `products` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `PNAME` varchar(100) DEFAULT '0',
  `PCODE` bigint(100) DEFAULT NULL,
  `PDESC` varchar(10000) DEFAULT NULL,
  `PIMG` varchar(10000) DEFAULT NULL,
  `HEAVY` int(11) DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table puxardb.products: ~3 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`PID`, `PNAME`, `PCODE`, `PDESC`, `PIMG`, `HEAVY`, `PRICE`) VALUES
	(1, 'Sharp R-21LCF Commercial Microwave Oven', 252677338838338, '<li> Stainless Steel Interior and Door </li>\r\n <li>Sturdy Grab Handle </li>\r\n <li>Lighted 6-Minute Dial Timer </li>\r\n <li>1.0 Cubic Feet </li>\r\n<li> Polished ceramic bottom shelf with rubber seal</li>', '/stylesheets/images/prodimg/microwave.jpg', 1, 249),
	(2, 'Beyution Bluetooth Wireless Hi-fi Stereo Headphone', 5839390202205, '<li>HiFi--Bluetooth V4.1 version - Best Audio Performance - Hi-Fi - Stereo - Sports - Wireless Bluetooth - Over the head </li>\r\n<li>Built-in microphone Allows clear Phone communication; Enables use as a headset. Music and phone controls ensure ease of use </li>\r\n<li>Built-in rechargeable lithium-polymer battery. and also have a free Pouch as free gift.</li>', '/stylesheets/images/prodimg/headphones.jpg', 0, 30),
	(3, 'Georgia Pacific Spectrum Paper', 473674849438, '<li>Convenience Pack Contains 3 Reams of Paper at 500 Sheets Each 1500 Total Sheets </li>\r\n<li>Buyers Laboratory Certified (BLI) </li>\r\n<li>Sustainable Forestry Initiative Certified Chain of Custody </li>\r\n<li>92 Bright White 20 Pound Standard Weight 8.5 x 11 Inches Letter Size Paper</li>\r\n<li>Packaging may vary</li>', '/stylesheets/images/prodimg/paper.jpg', 0, 19);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
