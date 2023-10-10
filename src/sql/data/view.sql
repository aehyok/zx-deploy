-- MySQL dump 10.16  Distrib 10.2.36-MariaDB, for Linux (aarch64)
--
-- Host: 192.168.0.104    Database: dvsdb30
-- ------------------------------------------------------
-- Server version	10.2.36-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `view_CollectDataHouseholdStatus_202305`
--

DROP TABLE IF EXISTS `view_CollectDataHouseholdStatus_202305`;
/*!50001 DROP VIEW IF EXISTS `view_CollectDataHouseholdStatus_202305`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_CollectDataHouseholdStatus_202305` (
  `id` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `hid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `reason` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `isDeleted` tinyint NOT NULL,
  `robotStatus` tinyint NOT NULL,
  `robotDescribe` tinyint NOT NULL,
  `type` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_CollectDataHouseholdStatus_202305`
--

/*!50001 DROP TABLE IF EXISTS `view_CollectDataHouseholdStatus_202305`*/;
/*!50001 DROP VIEW IF EXISTS `view_CollectDataHouseholdStatus_202305`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_CollectDataHouseholdStatus_202305` AS select `t`.`id` AS `id`,`t`.`nf` AS `nf`,`t`.`hid` AS `hid`,`t`.`areaid` AS `areaid`,`t`.`status` AS `status`,`t`.`reason` AS `reason`,`t`.`createdAt` AS `createdAt`,`t`.`updatedAt` AS `updatedAt`,`t`.`createdBy` AS `createdBy`,`t`.`updatedBy` AS `updatedBy`,`t`.`isDeleted` AS `isDeleted`,`t`.`robotStatus` AS `robotStatus`,`t`.`robotDescribe` AS `robotDescribe`,`t`.`type` AS `type` from `CollectDataHouseholdStatus` `t` where `t`.`type` = 2 and `t`.`isDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10 10:39:04
