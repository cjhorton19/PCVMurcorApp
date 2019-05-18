 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applicationaccess`
--

DROP TABLE IF EXISTS `applicationaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `applicationaccess` (
  `userID` int(11) NOT NULL,
  `VMSroleGroup` varchar(255) DEFAULT NULL,
  `addAccess` varchar(4) DEFAULT NULL,
  `OTSAccess` varchar(255) DEFAULT NULL,
  `BPORoleGroup` varchar(255) DEFAULT NULL,
  `LRVroleGroup` varchar(255) DEFAULT NULL,
  `mas500Access` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  CONSTRAINT `applicationaccess_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user_table` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;