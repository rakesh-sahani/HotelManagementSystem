/*
SQLyog Community v12.01 (32 bit)
MySQL - 5.1.33-community : Database - hms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hms`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

LOCK TABLES `login` WRITE;

insert  into `login`(`username`,`password`) values ('admin','admin');

UNLOCK TABLES;

/*Table structure for table `reservation` */

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
  `Room_No` int(20) DEFAULT NULL,
  `Room_Type` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `Sex` varchar(20) DEFAULT NULL,
  `Age` int(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Arrival` date DEFAULT NULL,
  `Departure` date DEFAULT NULL,
  `Charges` varchar(20) DEFAULT NULL,
  `Advance` varchar(20) DEFAULT NULL,
  KEY `No` (`Room_No`),
  CONSTRAINT `No` FOREIGN KEY (`Room_No`) REFERENCES `room` (`Room_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reservation` */

LOCK TABLES `reservation` WRITE;

insert  into `reservation`(`Room_No`,`Room_Type`,`Name`,`Address`,`City`,`Sex`,`Age`,`Mobile`,`Arrival`,`Departure`,`Charges`,`Advance`) values (202,'Single','aaaaaa','aaaaaaaa','Hyderabad','Female',22,'9582161515','2014-10-16','2014-10-31','2500','3000'),(303,'Double','GK','KKKKK','Chennai','Male ',20,'95656565656','2014-10-10','2014-10-20','2500','3000'),(101,'Single','as','a','Mumbai ','Male ',2,'21','2014-10-03','2014-10-02','2500','2'),(103,'Double','x','s','Hyderabad','Female',2,'3','2014-10-04','2014-10-17','2500','2'),(103,'Double','x','s','Hyderabad','Female',2,'3','2014-10-04','2014-10-17','2500','2'),(102,'Double','d','s','Bangalore','Female',2,'3','2014-10-03','2014-10-24','1000','2'),(102,'Double','gf','d','Bangalore','Male ',33,'44','2014-10-04','2014-10-24','1000','2');

UNLOCK TABLES;

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `Room_No` int(20) NOT NULL,
  `Room_Type` varchar(20) DEFAULT NULL,
  `Booking` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Room_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `room` */

LOCK TABLES `room` WRITE;

insert  into `room`(`Room_No`,`Room_Type`,`Booking`) values (101,'','Unbooked'),(102,'Double','Unbooked'),(103,'','Unbooked'),(201,'','Unbooked'),(202,'','Unbooked'),(203,'','Unbooked'),(301,'','Unbooked'),(302,'','Unbooked'),(303,'Single','Booked');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
