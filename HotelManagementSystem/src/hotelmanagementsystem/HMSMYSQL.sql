
CREATE DATABASE `hms` ;

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

insert  into `reservation`(`Room_No`,`Room_Type`,`Name`,`Address`,`City`,`Sex`,`Age`,`Mobile`,`Arrival`,`Departure`,`Charges`,`Advance`) values (202,'Single','aaaaaa','aaaaaaaa','Hyderabad','Female',22,'9582161515','2014-10-16','2014-10-31','2500','3000'),(303,'Double','GK','KKKKK','Chennai','Male ',20,'95656565656','2014-10-10','2014-10-20','2500','3000');

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

insert  into `room`(`Room_No`,`Room_Type`,`Booking`) values (101,'','Unbooked'),(102,'','Unbooked'),(103,'','Unbooked'),(201,'','Unbooked'),(202,'','Unbooked'),(203,'','Unbooked'),(301,'','Unbooked'),(302,'','Unbooked'),(303,'','Unbooked');

UNLOCK TABLES;

