CREATE DATABASE hotelsdb;
USE hotelsdb;

CREATE TABLE cities (
  cityID int NOT NULL AUTO_INCREMENT,
  cityName varchar(20) DEFAULT NULL,
  PRIMARY KEY (cityID)
);

INSERT INTO cities VALUES 
(1,'Kyiv'),(2,'Lviv'),(3,'Lutsk'),(4,'Rivne'),(5,'Khmelnitsk'),(6,'Dnipro'),
(7,'Zaporija'),(8,'Chernigiv'),(9,'Symi'),(10,'Kharkiv'),(11,'Jitomir'),
(12,'Ivano-Frankivsk'),(13,'Ughorod'),(14,'Ternopil'),(15,'Chernivci'),
(16,'Vinnitsya'),(17,'Odesa'),(18,'Poltava'),(19,'Lugansk'),(20,'Donetsk'),
(21,'Krym'),(22,'Kherson'),(23,'Mykholaiv'),(24,'Kropivnitskiy'),(25,'Cherkasy');

CREATE TABLE clients (
  clientID int NOT NULL AUTO_INCREMENT,
  clientName varchar(50) DEFAULT NULL,
  clientNumber mediumtext,
  clientage int DEFAULT NULL,
  PRIMARY KEY (clientID)
);

INSERT INTO clients VALUES 
(1,'Roman','380999999999',23),(2,'Vitaliy','380923737283',25),(3,'Maksym','380986547265',30),
(4,'Inna','380677265345',40),(5,'George','380928374658',34),(6,'Vasyl','288394728293',28),
(7,'Klark','288373849939',39),(8,'Petro','380927464783',22),(9,'Dmitro','380938477838',88),
(10,'Frank','380938778487',37),(11,'Jamil','380909090909',78),(12,'Robert','380000000009',26),
(13,'Bob','380000000008',63),(14,'Humdarts','380900000001',26),(15,'Zahar','380987654321',30),
(16,'Muhamed','380987651234',56),(17,'Durkostan','380928746882',46),(18,'Mikhailo','380929837382',36),
(19,'Mikhailo','380926648282',18),(20,'Jabril','380276483872',19),(21,'Joshua','380929829228',49),
(22,'Varenuk','122333444455',37),(23,'Jopashnuk','999888777666',21);

CREATE TABLE hotels (
  hotelID int NOT NULL AUTO_INCREMENT,
  hotelName varchar(20) DEFAULT NULL,
  starsCounts int NOT NULL,
  creationDate date DEFAULT NULL,
  cityId int DEFAULT NULL,
  PRIMARY KEY (hotelID),
  KEY (cityId),
  FOREIGN KEY (cityId) REFERENCES cities (cityID)
);

INSERT INTO hotels VALUES 
(1,'Halichina',4,'2020-09-08',13),(2,'Leva',5,'2017-12-02',2),(3,'Frankhurt',3,'2010-10-10',12),
(4,'Babel',4,'2023-10-09',1),(5,'Dniprov',4,'2014-12-17',6),(6,'Lipoviy',5,'2021-06-20',3),
(7,'Jija',3,'2005-05-05',11),(8,'Rivniy',4,'2006-06-06',4),(9,'Kmilniy',5,'2012-12-12',5),
(10,'Hortitsya',5,'2002-02-10',7),(11,'CherNiger',4,'2014-10-24',8),(12,'Veseliy',3,'2022-04-13',9),
(13,'Grust',5,'2008-08-10',10),(14,'Ternopil',2,'2003-01-09',14),(15,'Mads',5,'2008-05-05',15),
(16,'CerkvaVi',4,'2009-09-06',16),(17,'AdesskiyDvij',1,'2011-11-29',17),(18,'Poltavka',4,'2003-02-14',18),
(19,'Kuzkiy',1,'2017-10-19',19),(20,'Plano',1,'2017-09-19',20),(21,'Jordanka',1,'2017-08-19',21),
(22,'Kavunyaka',4,'2019-09-02',22),(23,'Qavun2',5,'2020-10-02',23),(24,'Kirova',3,'2024-12-04',24),
(25,'Deyan',2,'2010-10-02',25),(26,'Iankovich',5,'2009-12-03',2);

CREATE TABLE rooms (
  roomID int NOT NULL AUTO_INCREMENT,
  comfortLevel varchar(20) DEFAULT NULL,
  hotelID int DEFAULT NULL,
  PRIMARY KEY (roomID),
  KEY (hotelID),
  FOREIGN KEY (hotelID) REFERENCES hotels (hotelID)
);

INSERT INTO rooms VALUES 
(1,'min',1),(2,'mid',1),(3,'lux',1),(4,'min',2),(5,'mid',2),(6,'lux',2),
(7,'min',3),(8,'mid',3),(9,'lux',3),(10,'min',4),(11,'mid',4),(12,'lux',4),
(13,'min',5),(14,'mid',5),(15,'lux',5),(16,'min',6),(17,'mid',6),(18,'lux',6),
(19,'min',7),(20,'mid',7),(21,'lux',7),(22,'min',8),(23,'mid',8),(24,'lux',8),
(25,'min',9),(26,'mid',9),(27,'lux',9),(28,'min',10),(29,'mid',10),(30,'lux',10),
(31,'min',11),(32,'mid',11),(33,'lux',11),(34,'min',12),(35,'mid',12),(36,'lux',12),
(37,'min',13),(38,'mid',13),(39,'lux',13),(40,'min',14),(41,'mid',14),(42,'lux',14),
(43,'min',15),(44,'mid',15),(45,'lux',15),(46,'min',16),(47,'mid',16),(48,'lux',16),
(49,'min',17),(50,'mid',17),(51,'lux',17),(52,'min',18),(53,'mid',18),(54,'lux',18),
(55,'min',19),(56,'mid',19),(57,'lux',19),(58,'min',20),(59,'mid',20),(60,'lux',20),
(61,'min',21),(62,'mid',21),(63,'lux',21),(64,'min',22),(65,'mid',22),(66,'lux',22),
(67,'min',23),(68,'mid',23),(69,'lux',23),(70,'min',24),(71,'mid',24),(72,'lux',24),
(73,'min',25),(74,'mid',25),(75,'lux',25);

CREATE TABLE orders (
  orderID int NOT NULL AUTO_INCREMENT,
  clientID int DEFAULT NULL,
  roomId int DEFAULT NULL,
  PRIMARY KEY (orderID),
  KEY (clientID),
  KEY (roomId),
  FOREIGN KEY (clientID) REFERENCES clients (clientID),
  FOREIGN KEY (roomId) REFERENCES rooms (roomID)
);

INSERT INTO orders VALUES 
(1,1,3),(2,2,6),(3,3,9),(4,4,10),(5,5,13),(6,6,15),(7,7,16),(8,8,20),
(9,9,24),(10,10,27),(11,11,30),(12,12,33),(13,13,36),(14,14,37),(15,15,38),
(16,16,39),(17,17,42),(18,18,47),(19,19,49),(20,20,52),(21,21,55),
(22,22,58),(23,23,62),(24,15,75);
