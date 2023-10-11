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
-- Temporary table structure for view `Options`
--

DROP TABLE IF EXISTS `Options`;
/*!50001 DROP VIEW IF EXISTS `Options`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `Options` (
  `Id` tinyint NOT NULL,
  `Key` tinyint NOT NULL,
  `Value` tinyint NOT NULL,
  `Remark` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

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
-- Temporary table structure for view `view_DAS_xzc_jbqk`
--

DROP TABLE IF EXISTS `view_DAS_xzc_jbqk`;
/*!50001 DROP VIEW IF EXISTS `view_DAS_xzc_jbqk`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DAS_xzc_jbqk` (
  `id` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `cid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `NAME` tinyint NOT NULL,
  `zrcsl` tinyint NOT NULL,
  `jdzrcsl` tinyint NOT NULL,
  `czlx` tinyint NOT NULL,
  `czdm` tinyint NOT NULL,
  `sfclc` tinyint NOT NULL,
  `sfmlyjc` tinyint NOT NULL,
  `hjs` tinyint NOT NULL,
  `hjrk` tinyint NOT NULL,
  `czhs` tinyint NOT NULL,
  `czrk` tinyint NOT NULL,
  `xzqhmj` tinyint NOT NULL,
  `cmjzmj` tinyint NOT NULL,
  `jtjjsr` tinyint NOT NULL,
  `jtjjsrly` tinyint NOT NULL,
  `jtcyfzyy` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DAS_xzc_status`
--

DROP TABLE IF EXISTS `view_DAS_xzc_status`;
/*!50001 DROP VIEW IF EXISTS `view_DAS_xzc_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DAS_xzc_status` (
  `id` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `cid` tinyint NOT NULL,
  `collectid` tinyint NOT NULL,
  `logtype` tinyint NOT NULL,
  `reportby` tinyint NOT NULL,
  `reporttime` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `auditby` tinyint NOT NULL,
  `audittime` tinyint NOT NULL,
  `reason` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `isDeleted` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_bgjs`
--

DROP TABLE IF EXISTS `view_DCLN_bgjs`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_bgjs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_bgjs` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `bggg` tinyint NOT NULL,
  `bgjscd` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_ccllwl`
--

DROP TABLE IF EXISTS `view_DCLN_ccllwl`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ccllwl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_ccllwl` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `ccllwlsslx` tinyint NOT NULL,
  `sssbmc` tinyint NOT NULL,
  `ccnl` tinyint NOT NULL,
  `fgnl` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_czgh`
--

DROP TABLE IF EXISTS `view_DCLN_czgh`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_czgh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_czgh` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sf` tinyint NOT NULL,
  `trje` tinyint NOT NULL,
  `ghbzdw` tinyint NOT NULL,
  `czghlx` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_czlh`
--

DROP TABLE IF EXISTS `view_DCLN_czlh`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_czlh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_czlh` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `ldgg` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `jgjl` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_dllh`
--

DROP TABLE IF EXISTS `view_DCLN_dllh`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_dllh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_dllh` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `dllhlx` tinyint NOT NULL,
  `cd` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `bz` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_dlyh`
--

DROP TABLE IF EXISTS `view_DCLN_dlyh`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_dlyh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_dlyh` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `lmyhlx` tinyint NOT NULL,
  `cd` tinyint NOT NULL,
  `kd` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_dqfwzx`
--

DROP TABLE IF EXISTS `view_DCLN_dqfwzx`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_dqfwzx`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_dqfwzx` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sf` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `jssj` tinyint NOT NULL,
  `gm` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `hyfs` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_gbyey`
--

DROP TABLE IF EXISTS `view_DCLN_gbyey`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gbyey`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_gbyey` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `gm` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `jssj` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_gcjs`
--

DROP TABLE IF EXISTS `view_DCLN_gcjs`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gcjs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_gcjs` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `zje` tinyint NOT NULL,
  `sgfy` tinyint NOT NULL,
  `jlfy` tinyint NOT NULL,
  `zbdqtfy` tinyint NOT NULL,
  `qtfy` tinyint NOT NULL,
  `bz` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_gdjs`
--

DROP TABLE IF EXISTS `view_DCLN_gdjs`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gdjs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_gdjs` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `gdjslx` tinyint NOT NULL,
  `sjnr` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `gznr` tinyint NOT NULL,
  `xlcd` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_ggflfw`
--

DROP TABLE IF EXISTS `view_DCLN_ggflfw`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ggflfw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_ggflfw` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_gssb`
--

DROP TABLE IF EXISTS `view_DCLN_gssb`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gssb`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_gssb` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `gsbzjslx` tinyint NOT NULL,
  `sbmc` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `cd` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_gyxgm`
--

DROP TABLE IF EXISTS `view_DCLN_gyxgm`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gyxgm`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_gyxgm` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `gm` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_htgqqysj`
--

DROP TABLE IF EXISTS `view_DCLN_htgqqysj`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_htgqqysj`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_htgqqysj` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `gcnr` tinyint NOT NULL,
  `gcl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_jianhcjs`
--

DROP TABLE IF EXISTS `view_DCLN_jianhcjs`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_jianhcjs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_jianhcjs` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `gclx` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `bz` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_jzyzjgq`
--

DROP TABLE IF EXISTS `view_DCLN_jzyzjgq`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_jzyzjgq`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_jzyzjgq` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `yzxqlb` tinyint NOT NULL,
  `jzyzqgm` tinyint NOT NULL,
  `hs` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_jzzhjg`
--

DROP TABLE IF EXISTS `view_DCLN_jzzhjg`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_jzzhjg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_jzzhjg` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `gm` tinyint NOT NULL,
  `gs` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_ljfl`
--

DROP TABLE IF EXISTS `view_DCLN_ljfl`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ljfl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_ljfl` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `ljxrj` tinyint NOT NULL,
  `gs` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_ljqy`
--

DROP TABLE IF EXISTS `view_DCLN_ljqy`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ljqy`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_ljqy` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `ljclx` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_ljsj`
--

DROP TABLE IF EXISTS `view_DCLN_ljsj`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ljsj`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_ljsj` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `ljzcc` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_mlsfc`
--

DROP TABLE IF EXISTS `view_DCLN_mlsfc`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_mlsfc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_mlsfc` (
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `sfwmlsfxc` tinyint NOT NULL,
  `mlsfcxq` tinyint NOT NULL,
  `czzj2022` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `xmmc` tinyint NOT NULL,
  `zjly` tinyint NOT NULL,
  `zjed` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_nfjs`
--

DROP TABLE IF EXISTS `view_DCLN_nfjs`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_nfjs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_nfjs` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `bz` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_nwgz`
--

DROP TABLE IF EXISTS `view_DCLN_nwgz`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_nwgz`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_nwgz` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `gznr` tinyint NOT NULL,
  `gzsl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_nwwlmgz`
--

DROP TABLE IF EXISTS `view_DCLN_nwwlmgz`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_nwwlmgz`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_nwwlmgz` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `dhmj` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_qjny`
--

DROP TABLE IF EXISTS `view_DCLN_qjny`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_qjny`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_qjny` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nylx` tinyint NOT NULL,
  `sbmc` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `hs` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_slzl`
--

DROP TABLE IF EXISTS `view_DCLN_slzl`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_slzl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_slzl` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `zljtnr` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `bz` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_sxzl`
--

DROP TABLE IF EXISTS `view_DCLN_sxzl`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_sxzl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_sxzl` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sxzllx` tinyint NOT NULL,
  `gcnr` tinyint NOT NULL,
  `gcl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_szxcjs`
--

DROP TABLE IF EXISTS `view_DCLN_szxcjs`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_szxcjs`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_szxcjs` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `ptlx` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `gm` tinyint NOT NULL,
  `syqzsl` tinyint NOT NULL,
  `gs` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `ptxz` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_whgcggwsj`
--

DROP TABLE IF EXISTS `view_DCLN_whgcggwsj`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_whgcggwsj`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_whgcggwsj` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `mj` tinyint NOT NULL,
  `gs` tinyint NOT NULL,
  `kws` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `ywzrwx` tinyint NOT NULL,
  `rs` tinyint NOT NULL,
  `gz` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_whgcjg`
--

DROP TABLE IF EXISTS `view_DCLN_whgcjg`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_whgcjg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_whgcjg` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `jglx` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `gg` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_whhdgc`
--

DROP TABLE IF EXISTS `view_DCLN_whhdgc`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_whhdgc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_whhdgc` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `yt` tinyint NOT NULL,
  `mj` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_wszl`
--

DROP TABLE IF EXISTS `view_DCLN_wszl`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_wszl`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_wszl` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `wszlss` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `rclnl` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_xsdwmsj`
--

DROP TABLE IF EXISTS `view_DCLN_xsdwmsj`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_xsdwmsj`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_xsdwmsj` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sf` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `jssj` tinyint NOT NULL,
  `gm` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `hyfs` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_xxjcss`
--

DROP TABLE IF EXISTS `view_DCLN_xxjcss`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_xxjcss`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_xxjcss` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `xxjcsslx` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_xxwhhclz`
--

DROP TABLE IF EXISTS `view_DCLN_xxwhhclz`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_xxwhhclz`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_xxwhhclz` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `mj` tinyint NOT NULL,
  `gs` tinyint NOT NULL,
  `rclnl` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_ylfw`
--

DROP TABLE IF EXISTS `view_DCLN_ylfw`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ylfw`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_ylfw` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `jssj` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_ylwss`
--

DROP TABLE IF EXISTS `view_DCLN_ylwss`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ylwss`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_ylwss` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sf` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `jssj` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `hyfs` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_yygh`
--

DROP TABLE IF EXISTS `view_DCLN_yygh`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_yygh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_yygh` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `yyghlx` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `bz` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `sbgg` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `rypbsl` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_zhwhfwzx`
--

DROP TABLE IF EXISTS `view_DCLN_zhwhfwzx`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_zhwhfwzx`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_zhwhfwzx` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `sf` tinyint NOT NULL,
  `jsnr` tinyint NOT NULL,
  `gm` tinyint NOT NULL,
  `jssj` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `hyfs` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_zjtrqk`
--

DROP TABLE IF EXISTS `view_DCLN_zjtrqk`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_zjtrqk`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_zjtrqk` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `xmmc` tinyint NOT NULL,
  `zcnr` tinyint NOT NULL,
  `zjed` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_DCLN_zzlh`
--

DROP TABLE IF EXISTS `view_DCLN_zzlh`;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_zzlh`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_DCLN_zzlh` (
  `id` tinyint NOT NULL,
  `fundid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `fundnf` tinyint NOT NULL,
  `zzzl` tinyint NOT NULL,
  `sl` tinyint NOT NULL,
  `je` tinyint NOT NULL,
  `bz` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL,
  `fundtype` tinyint NOT NULL,
  `financial` tinyint NOT NULL,
  `socialfunds` tinyint NOT NULL,
  `project` tinyint NOT NULL,
  `investor` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_FFPHouseholdIncomeCompare`
--

DROP TABLE IF EXISTS `view_FFPHouseholdIncomeCompare`;
/*!50001 DROP VIEW IF EXISTS `view_FFPHouseholdIncomeCompare`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_FFPHouseholdIncomeCompare` (
  `id` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `hid` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `lx` tinyint NOT NULL,
  `gzxsr` tinyint NOT NULL,
  `scjyxsr` tinyint NOT NULL,
  `ccxsr` tinyint NOT NULL,
  `zyxsr` tinyint NOT NULL,
  `scjyxzc` tinyint NOT NULL,
  `jtcsr` tinyint NOT NULL,
  `jtrjcsr` tinyint NOT NULL,
  `jtlpsr` tinyint NOT NULL,
  `hgzfzc` tinyint NOT NULL,
  `nrjcdxsrckfw` tinyint NOT NULL,
  `nrjcdxrjsrckfw` tinyint NOT NULL,
  `createby` tinyint NOT NULL,
  `updateby` tinyint NOT NULL,
  `createtime` tinyint NOT NULL,
  `updatetime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_Region`
--

DROP TABLE IF EXISTS `view_Region`;
/*!50001 DROP VIEW IF EXISTS `view_Region`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_Region` (
  `Id` tinyint NOT NULL,
  `Name` tinyint NOT NULL,
  `Code` tinyint NOT NULL,
  `ParentId` tinyint NOT NULL,
  `Level` tinyint NOT NULL,
  `Order` tinyint NOT NULL,
  `IdSequences` tinyint NOT NULL,
  `Remark` tinyint NOT NULL,
  `IsDeleted` tinyint NOT NULL,
  `CreatedAt` tinyint NOT NULL,
  `CreatedBy` tinyint NOT NULL,
  `UpdatedAt` tinyint NOT NULL,
  `UpdatedBy` tinyint NOT NULL,
  `ShortName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_VillagePopulation`
--

DROP TABLE IF EXISTS `view_VillagePopulation`;
/*!50001 DROP VIEW IF EXISTS `view_VillagePopulation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_VillagePopulation` (
  `id` tinyint NOT NULL,
  `areaId` tinyint NOT NULL,
  `realName` tinyint NOT NULL,
  `sex` tinyint NOT NULL,
  `nation` tinyint NOT NULL,
  `birthday` tinyint NOT NULL,
  `relationship` tinyint NOT NULL,
  `idCard` tinyint NOT NULL,
  `mobile` tinyint NOT NULL,
  `political` tinyint NOT NULL,
  `education` tinyint NOT NULL,
  `marital` tinyint NOT NULL,
  `religion` tinyint NOT NULL,
  `income` tinyint NOT NULL,
  `headImageId` tinyint NOT NULL,
  `headImageUrl` tinyint NOT NULL,
  `tags` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `deleteReason` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `populationType` tinyint NOT NULL,
  `syncId` tinyint NOT NULL,
  `syncRes` tinyint NOT NULL,
  `isSync` tinyint NOT NULL,
  `syncDate` tinyint NOT NULL,
  `mobileShort` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_VillageStatisticTag`
--

DROP TABLE IF EXISTS `view_VillageStatisticTag`;
/*!50001 DROP VIEW IF EXISTS `view_VillageStatisticTag`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_VillageStatisticTag` (
  `id` tinyint NOT NULL,
  `nf` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `tagName` tinyint NOT NULL,
  `tagStatus` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `isDeleted` tinyint NOT NULL,
  `robotStatus` tinyint NOT NULL,
  `robotDescribe` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_basicarea`
--

DROP TABLE IF EXISTS `view_basicarea`;
/*!50001 DROP VIEW IF EXISTS `view_basicarea`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_basicarea` (
  `id` tinyint NOT NULL,
  `pid` tinyint NOT NULL,
  `areaid` tinyint NOT NULL,
  `areaCode` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `czlx` tinyint NOT NULL,
  `zydx` tinyint NOT NULL,
  `zhqkfl` tinyint NOT NULL,
  `hjs` tinyint NOT NULL,
  `rks` tinyint NOT NULL,
  `czhs` tinyint NOT NULL,
  `czrks` tinyint NOT NULL,
  `xzqhmj` tinyint NOT NULL,
  `cmjzqmj` tinyint NOT NULL,
  `cmzs` tinyint NOT NULL,
  `nf` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_ffpsubmithousehold`
--

DROP TABLE IF EXISTS `view_ffpsubmithousehold`;
/*!50001 DROP VIEW IF EXISTS `view_ffpsubmithousehold`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_ffpsubmithousehold` (
  `AreaId` tinyint NOT NULL,
  `HouseholdId` tinyint NOT NULL,
  `SubmitId` tinyint NOT NULL,
  `TaskId` tinyint NOT NULL,
  `C200001` tinyint NOT NULL,
  `C200002` tinyint NOT NULL,
  `C200003` tinyint NOT NULL,
  `C200004` tinyint NOT NULL,
  `C200005` tinyint NOT NULL,
  `C200006` tinyint NOT NULL,
  `C200007` tinyint NOT NULL,
  `C200008` tinyint NOT NULL,
  `C200008001` tinyint NOT NULL,
  `C200008002` tinyint NOT NULL,
  `C200008003` tinyint NOT NULL,
  `C200008004` tinyint NOT NULL,
  `C200008005` tinyint NOT NULL,
  `C200009` tinyint NOT NULL,
  `C200010` tinyint NOT NULL,
  `C200011` tinyint NOT NULL,
  `C200012` tinyint NOT NULL,
  `C200013` tinyint NOT NULL,
  `C200014` tinyint NOT NULL,
  `C200016` tinyint NOT NULL,
  `C200017` tinyint NOT NULL,
  `C200018` tinyint NOT NULL,
  `C200019` tinyint NOT NULL,
  `C200020` tinyint NOT NULL,
  `C200022` tinyint NOT NULL,
  `C200023` tinyint NOT NULL,
  `C200024` tinyint NOT NULL,
  `100A23` tinyint NOT NULL,
  `100A23001` tinyint NOT NULL,
  `100A24` tinyint NOT NULL,
  `100A24001` tinyint NOT NULL,
  `100A25` tinyint NOT NULL,
  `100A25001` tinyint NOT NULL,
  `100A23001001` tinyint NOT NULL,
  `100A23001002` tinyint NOT NULL,
  `100A24001001` tinyint NOT NULL,
  `100A24001002` tinyint NOT NULL,
  `100A25001001` tinyint NOT NULL,
  `100A25001002` tinyint NOT NULL,
  `100A25001003` tinyint NOT NULL,
  `100A25001004` tinyint NOT NULL,
  `100AB03003` tinyint NOT NULL,
  `100AB32001` tinyint NOT NULL,
  `100AB32002` tinyint NOT NULL,
  `100AB28001` tinyint NOT NULL,
  `100AB28002` tinyint NOT NULL,
  `100AB28003` tinyint NOT NULL,
  `100AB28004` tinyint NOT NULL,
  `100AB28005` tinyint NOT NULL,
  `100AB28006` tinyint NOT NULL,
  `100AB28007` tinyint NOT NULL,
  `100AB28008` tinyint NOT NULL,
  `100AB28009` tinyint NOT NULL,
  `100A28` tinyint NOT NULL,
  `100A32` tinyint NOT NULL,
  `100A33` tinyint NOT NULL,
  `100A35` tinyint NOT NULL,
  `100A36` tinyint NOT NULL,
  `100A37` tinyint NOT NULL,
  `100A40` tinyint NOT NULL,
  `100A40001` tinyint NOT NULL,
  `100A40002` tinyint NOT NULL,
  `100A41` tinyint NOT NULL,
  `100A41001` tinyint NOT NULL,
  `100A41002` tinyint NOT NULL,
  `100A42` tinyint NOT NULL,
  `100A42001` tinyint NOT NULL,
  `100AB04` tinyint NOT NULL,
  `100AB04001` tinyint NOT NULL,
  `100A40001001` tinyint NOT NULL,
  `100A40001002` tinyint NOT NULL,
  `100A40001003` tinyint NOT NULL,
  `100A40001004` tinyint NOT NULL,
  `100AB05` tinyint NOT NULL,
  `100AB05001` tinyint NOT NULL,
  `100A27` tinyint NOT NULL,
  `100A27001` tinyint NOT NULL,
  `100A27002` tinyint NOT NULL,
  `100A27003` tinyint NOT NULL,
  `100A27005` tinyint NOT NULL,
  `100A27004` tinyint NOT NULL,
  `100A27006` tinyint NOT NULL,
  `100A27007` tinyint NOT NULL,
  `100A27008` tinyint NOT NULL,
  `100A27010` tinyint NOT NULL,
  `100A27009` tinyint NOT NULL,
  `100A27011` tinyint NOT NULL,
  `100B27` tinyint NOT NULL,
  `100B27001` tinyint NOT NULL,
  `100B27003` tinyint NOT NULL,
  `100B27005` tinyint NOT NULL,
  `100B27007` tinyint NOT NULL,
  `100B27006` tinyint NOT NULL,
  `100B27004` tinyint NOT NULL,
  `100B27002` tinyint NOT NULL,
  `100A26` tinyint NOT NULL,
  `100A26001` tinyint NOT NULL,
  `100A26001005` tinyint NOT NULL,
  `100A26001001` tinyint NOT NULL,
  `100A26001002` tinyint NOT NULL,
  `100A26001003` tinyint NOT NULL,
  `100A26001004` tinyint NOT NULL,
  `100AB29001` tinyint NOT NULL,
  `100AB29002` tinyint NOT NULL,
  `100AB29003` tinyint NOT NULL,
  `100AB29004` tinyint NOT NULL,
  `100AB29005` tinyint NOT NULL,
  `100AB29006` tinyint NOT NULL,
  `100AB29007` tinyint NOT NULL,
  `100AB29008` tinyint NOT NULL,
  `100AB29009` tinyint NOT NULL,
  `100A29` tinyint NOT NULL,
  `100AB30001` tinyint NOT NULL,
  `100AB30002` tinyint NOT NULL,
  `100AB30003` tinyint NOT NULL,
  `100AB30004` tinyint NOT NULL,
  `100AB30005` tinyint NOT NULL,
  `100AB30006` tinyint NOT NULL,
  `100AB30007` tinyint NOT NULL,
  `100AB30008` tinyint NOT NULL,
  `100A30` tinyint NOT NULL,
  `100AB31001` tinyint NOT NULL,
  `100AB31002` tinyint NOT NULL,
  `100AB31003` tinyint NOT NULL,
  `100AB31004` tinyint NOT NULL,
  `100AB31005` tinyint NOT NULL,
  `100AB31006` tinyint NOT NULL,
  `100AB31007` tinyint NOT NULL,
  `100AB31008` tinyint NOT NULL,
  `100AB31009` tinyint NOT NULL,
  `100AB31010` tinyint NOT NULL,
  `100AB31011` tinyint NOT NULL,
  `100AB31012` tinyint NOT NULL,
  `100AB31013` tinyint NOT NULL,
  `100AB31014` tinyint NOT NULL,
  `100AB31015` tinyint NOT NULL,
  `100AB31016` tinyint NOT NULL,
  `100AB31017` tinyint NOT NULL,
  `100AB31018` tinyint NOT NULL,
  `100AB31019` tinyint NOT NULL,
  `100AB31020` tinyint NOT NULL,
  `100AB31021` tinyint NOT NULL,
  `100AB31022` tinyint NOT NULL,
  `100A31` tinyint NOT NULL,
  `100A39` tinyint NOT NULL,
  `100A39001` tinyint NOT NULL,
  `100A39002` tinyint NOT NULL,
  `100A43` tinyint NOT NULL,
  `100A43001` tinyint NOT NULL,
  `100A44` tinyint NOT NULL,
  `100A44001` tinyint NOT NULL,
  `100A45` tinyint NOT NULL,
  `100A45001` tinyint NOT NULL,
  `100A45002` tinyint NOT NULL,
  `100A46` tinyint NOT NULL,
  `100A46001` tinyint NOT NULL,
  `100A46002` tinyint NOT NULL,
  `100A47` tinyint NOT NULL,
  `100A47001` tinyint NOT NULL,
  `100A47002` tinyint NOT NULL,
  `100A48` tinyint NOT NULL,
  `100A48001` tinyint NOT NULL,
  `100A48002` tinyint NOT NULL,
  `100A49` tinyint NOT NULL,
  `100A49001` tinyint NOT NULL,
  `100A49002` tinyint NOT NULL,
  `100A50` tinyint NOT NULL,
  `100A50001` tinyint NOT NULL,
  `100A51` tinyint NOT NULL,
  `100A51001` tinyint NOT NULL,
  `100A52` tinyint NOT NULL,
  `100A52001` tinyint NOT NULL,
  `100A53` tinyint NOT NULL,
  `100A53001` tinyint NOT NULL,
  `100A54` tinyint NOT NULL,
  `100A55` tinyint NOT NULL,
  `100A56` tinyint NOT NULL,
  `100A39001001` tinyint NOT NULL,
  `100A39001002` tinyint NOT NULL,
  `100A46001001` tinyint NOT NULL,
  `100A46001002` tinyint NOT NULL,
  `100A48001001` tinyint NOT NULL,
  `100A48001002` tinyint NOT NULL,
  `100AB01` tinyint NOT NULL,
  `100AB01002` tinyint NOT NULL,
  `100AB01003` tinyint NOT NULL,
  `100AB01004` tinyint NOT NULL,
  `100AB02` tinyint NOT NULL,
  `100AB02001` tinyint NOT NULL,
  `100AB02002` tinyint NOT NULL,
  `100AB03001` tinyint NOT NULL,
  `100A34` tinyint NOT NULL,
  `100A38` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_submitstatistics`
--

DROP TABLE IF EXISTS `view_submitstatistics`;
/*!50001 DROP VIEW IF EXISTS `view_submitstatistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_submitstatistics` (
  `Id` tinyint NOT NULL,
  `AreaId` tinyint NOT NULL,
  `TaskId` tinyint NOT NULL,
  `S300001` tinyint NOT NULL,
  `S300002` tinyint NOT NULL,
  `S300003` tinyint NOT NULL,
  `S300004` tinyint NOT NULL,
  `S300005001` tinyint NOT NULL,
  `S300005002` tinyint NOT NULL,
  `S300005003` tinyint NOT NULL,
  `S300005004` tinyint NOT NULL,
  `S300005` tinyint NOT NULL,
  `S300006001` tinyint NOT NULL,
  `S300006002` tinyint NOT NULL,
  `S300006003` tinyint NOT NULL,
  `S300006` tinyint NOT NULL,
  `S300007` tinyint NOT NULL,
  `S300008` tinyint NOT NULL,
  `S300009` tinyint NOT NULL,
  `S300010001001` tinyint NOT NULL,
  `S300010001002` tinyint NOT NULL,
  `S300010001003` tinyint NOT NULL,
  `S300010001004` tinyint NOT NULL,
  `S300010002001` tinyint NOT NULL,
  `S300010002002` tinyint NOT NULL,
  `S300010002003` tinyint NOT NULL,
  `S300010002004` tinyint NOT NULL,
  `S300010003001` tinyint NOT NULL,
  `S300010003002` tinyint NOT NULL,
  `S300010003003` tinyint NOT NULL,
  `S300010003004` tinyint NOT NULL,
  `S300010003005` tinyint NOT NULL,
  `S300011001001` tinyint NOT NULL,
  `S300011001002` tinyint NOT NULL,
  `S300011001003` tinyint NOT NULL,
  `S300011001004` tinyint NOT NULL,
  `S300011001005` tinyint NOT NULL,
  `S300011002001` tinyint NOT NULL,
  `S300011002002` tinyint NOT NULL,
  `S300011002003` tinyint NOT NULL,
  `S300011002004` tinyint NOT NULL,
  `S300011003001` tinyint NOT NULL,
  `S300011003002` tinyint NOT NULL,
  `S300011003003` tinyint NOT NULL,
  `S300011003004` tinyint NOT NULL,
  `S300012` tinyint NOT NULL,
  `S30001200100101` tinyint NOT NULL,
  `S30001200100102` tinyint NOT NULL,
  `S30001200100201` tinyint NOT NULL,
  `S30001200100202` tinyint NOT NULL,
  `S30001200100301` tinyint NOT NULL,
  `S30001200100302` tinyint NOT NULL,
  `S30001200100401` tinyint NOT NULL,
  `S30001200100402` tinyint NOT NULL,
  `S30001200100501` tinyint NOT NULL,
  `S30001200100502` tinyint NOT NULL,
  `S30001200200101` tinyint NOT NULL,
  `S30001200200102` tinyint NOT NULL,
  `S30001200200201` tinyint NOT NULL,
  `S30001200200202` tinyint NOT NULL,
  `S30001200200301` tinyint NOT NULL,
  `S30001200200302` tinyint NOT NULL,
  `S30001200200401` tinyint NOT NULL,
  `S30001200200402` tinyint NOT NULL,
  `S30001200200501` tinyint NOT NULL,
  `S30001200200502` tinyint NOT NULL,
  `S30001200300101` tinyint NOT NULL,
  `S30001200300102` tinyint NOT NULL,
  `S30001200300201` tinyint NOT NULL,
  `S30001200300202` tinyint NOT NULL,
  `S30001200300301` tinyint NOT NULL,
  `S30001200300302` tinyint NOT NULL,
  `S30001200300401` tinyint NOT NULL,
  `S30001200300402` tinyint NOT NULL,
  `S30001200300501` tinyint NOT NULL,
  `S30001200300502` tinyint NOT NULL,
  `S30001200400101` tinyint NOT NULL,
  `S30001200400102` tinyint NOT NULL,
  `S30001200400201` tinyint NOT NULL,
  `S30001200400202` tinyint NOT NULL,
  `S30001200400301` tinyint NOT NULL,
  `S30001200400302` tinyint NOT NULL,
  `S30001200400401` tinyint NOT NULL,
  `S30001200400402` tinyint NOT NULL,
  `S30001200400501` tinyint NOT NULL,
  `S30001200400502` tinyint NOT NULL,
  `S300013001` tinyint NOT NULL,
  `S300013002` tinyint NOT NULL,
  `S300014001` tinyint NOT NULL,
  `S300014002` tinyint NOT NULL,
  `S300014003001` tinyint NOT NULL,
  `S300014003002` tinyint NOT NULL,
  `S300014004001` tinyint NOT NULL,
  `S300014004002` tinyint NOT NULL,
  `S300014005001` tinyint NOT NULL,
  `S300014005002` tinyint NOT NULL,
  `S300015` tinyint NOT NULL,
  `S300016` tinyint NOT NULL,
  `Problems` tinyint NOT NULL,
  `S300017` tinyint NOT NULL,
  `S300018` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_v3_UserRole`
--

DROP TABLE IF EXISTS `view_v3_UserRole`;
/*!50001 DROP VIEW IF EXISTS `view_v3_UserRole`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_v3_UserRole` (
  `Id` tinyint NOT NULL,
  `UserId` tinyint NOT NULL,
  `RoleId` tinyint NOT NULL,
  `RegionId` tinyint NOT NULL,
  `RoleName` tinyint NOT NULL,
  `RegionName` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_v3_VillageHouse`
--

DROP TABLE IF EXISTS `view_v3_VillageHouse`;
/*!50001 DROP VIEW IF EXISTS `view_v3_VillageHouse`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_v3_VillageHouse` (
  `id` tinyint NOT NULL,
  `RegionId` tinyint NOT NULL,
  `HouseName` tinyint NOT NULL,
  `HouseNumber` tinyint NOT NULL,
  `HouseCode` tinyint NOT NULL,
  `HouseholdName` tinyint NOT NULL,
  `HouseholdIdCard` tinyint NOT NULL,
  `Gender` tinyint NOT NULL,
  `Birthday` tinyint NOT NULL,
  `TotalPopulation` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_v3_reftable`
--

DROP TABLE IF EXISTS `view_v3_reftable`;
/*!50001 DROP VIEW IF EXISTS `view_v3_reftable`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_v3_reftable` (
  `TypeName` tinyint NOT NULL,
  `Type` tinyint NOT NULL,
  `Id` tinyint NOT NULL,
  `Name` tinyint NOT NULL,
  `Code` tinyint NOT NULL,
  `DictionaryGroupId` tinyint NOT NULL,
  `ParentId` tinyint NOT NULL,
  `Order` tinyint NOT NULL,
  `IsEnable` tinyint NOT NULL,
  `Remark` tinyint NOT NULL,
  `IsVisible` tinyint NOT NULL,
  `IsDeleted` tinyint NOT NULL,
  `CreatedAt` tinyint NOT NULL,
  `CreatedBy` tinyint NOT NULL,
  `UpdatedAt` tinyint NOT NULL,
  `UpdatedBy` tinyint NOT NULL,
  `IsSystem` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_consphotoanywhere`
--

DROP TABLE IF EXISTS `view_consphotoanywhere`;
/*!50001 DROP VIEW IF EXISTS `view_consphotoanywhere`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_consphotoanywhere` (
  `id` tinyint NOT NULL,
  `userId` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `descript` tinyint NOT NULL,
  `imageIds` tinyint NOT NULL,
  `videoIds` tinyint NOT NULL,
  `isReply` tinyint NOT NULL,
  `replyDesc` tinyint NOT NULL,
  `replyImageIds` tinyint NOT NULL,
  `replyDateTime` tinyint NOT NULL,
  `replyer` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `isDeleted` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `createdByDeptId` tinyint NOT NULL,
  `address` tinyint NOT NULL,
  `longitude` tinyint NOT NULL,
  `latitude` tinyint NOT NULL,
  `syncId` tinyint NOT NULL,
  `syncRes` tinyint NOT NULL,
  `isSync` tinyint NOT NULL,
  `syncDate` tinyint NOT NULL,
  `householdId` tinyint NOT NULL,
  `areaId` tinyint NOT NULL,
  `populationId` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_ffpsubmithouseholdmember`
--

DROP TABLE IF EXISTS `view_ffpsubmithouseholdmember`;
/*!50001 DROP VIEW IF EXISTS `view_ffpsubmithouseholdmember`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_ffpsubmithouseholdmember` (
  `Id` tinyint NOT NULL,
  `AreaId` tinyint NOT NULL,
  `HouseholdId` tinyint NOT NULL,
  `PopulationId` tinyint NOT NULL,
  `SubmitId` tinyint NOT NULL,
  `TaskId` tinyint NOT NULL,
  `C200011001` tinyint NOT NULL,
  `C200011002` tinyint NOT NULL,
  `C200011003` tinyint NOT NULL,
  `C200011004` tinyint NOT NULL,
  `C200011005` tinyint NOT NULL,
  `C200011006` tinyint NOT NULL,
  `C200011007` tinyint NOT NULL,
  `C200011008` tinyint NOT NULL,
  `C200011009` tinyint NOT NULL,
  `C200011010` tinyint NOT NULL,
  `C200011011` tinyint NOT NULL,
  `C200011012` tinyint NOT NULL,
  `C200011013` tinyint NOT NULL,
  `C200011014` tinyint NOT NULL,
  `C200011015` tinyint NOT NULL,
  `C200011016` tinyint NOT NULL,
  `C200011017` tinyint NOT NULL,
  `C200011018` tinyint NOT NULL,
  `C200011019` tinyint NOT NULL,
  `C200011020` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_householdcode`
--

DROP TABLE IF EXISTS `view_householdcode`;
/*!50001 DROP VIEW IF EXISTS `view_householdcode`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_householdcode` (
  `id` tinyint NOT NULL,
  `areaId` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `idCard` tinyint NOT NULL,
  `houseName` tinyint NOT NULL,
  `houseNumber` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `peopleCount` tinyint NOT NULL,
  `imageIds` tinyint NOT NULL,
  `imageUrls` tinyint NOT NULL,
  `tags` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `isDeleted` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `syncId` tinyint NOT NULL,
  `syncRes` tinyint NOT NULL,
  `isSync` tinyint NOT NULL,
  `syncDate` tinyint NOT NULL,
  `houseNameId` tinyint NOT NULL,
  `HouseNameSequence` tinyint NOT NULL,
  `householdId` tinyint NOT NULL,
  `populationId` tinyint NOT NULL,
  `isHouseholder` tinyint NOT NULL,
  `householderName` tinyint NOT NULL,
  `hzidCard` tinyint NOT NULL,
  `householderMobile` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_population`
--

DROP TABLE IF EXISTS `view_population`;
/*!50001 DROP VIEW IF EXISTS `view_population`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_population` (
  `id` tinyint NOT NULL,
  `areaId` tinyint NOT NULL,
  `realName` tinyint NOT NULL,
  `sex` tinyint NOT NULL,
  `nation` tinyint NOT NULL,
  `birthday` tinyint NOT NULL,
  `relationship` tinyint NOT NULL,
  `idCard` tinyint NOT NULL,
  `mobile` tinyint NOT NULL,
  `political` tinyint NOT NULL,
  `education` tinyint NOT NULL,
  `marital` tinyint NOT NULL,
  `religion` tinyint NOT NULL,
  `income` tinyint NOT NULL,
  `headImageId` tinyint NOT NULL,
  `headImageUrl` tinyint NOT NULL,
  `tags` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `isDeleted` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `deleteReason` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `populationType` tinyint NOT NULL,
  `syncId` tinyint NOT NULL,
  `syncRes` tinyint NOT NULL,
  `isSync` tinyint NOT NULL,
  `syncDate` tinyint NOT NULL,
  `mobileShort` tinyint NOT NULL,
  `householdId` tinyint NOT NULL,
  `populationId` tinyint NOT NULL,
  `isHouseholder` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_v3_HouseholdOfPopulation`
--

DROP TABLE IF EXISTS `view_v3_HouseholdOfPopulation`;
/*!50001 DROP VIEW IF EXISTS `view_v3_HouseholdOfPopulation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_v3_HouseholdOfPopulation` (
  `id` tinyint NOT NULL,
  `VillageHouseholdId` tinyint NOT NULL,
  `VillagePopulationId` tinyint NOT NULL,
  `PopulationId` tinyint NOT NULL,
  `Relationship` tinyint NOT NULL,
  `RegionId` tinyint NOT NULL,
  `HouseName` tinyint NOT NULL,
  `HouseNumber` tinyint NOT NULL,
  `no` tinyint NOT NULL,
  `TotalPopulation` tinyint NOT NULL,
  `State` tinyint NOT NULL,
  `hzxm` tinyint NOT NULL,
  `hzIdCard` tinyint NOT NULL,
  `hzxb` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_v3_VillageHouseholdPopulation`
--

DROP TABLE IF EXISTS `view_v3_VillageHouseholdPopulation`;
/*!50001 DROP VIEW IF EXISTS `view_v3_VillageHouseholdPopulation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_v3_VillageHouseholdPopulation` (
  `id` tinyint NOT NULL,
  `VillageHouseholdId` tinyint NOT NULL,
  `VillagePopulationId` tinyint NOT NULL,
  `PopulationId` tinyint NOT NULL,
  `Relationship` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `IdCard` tinyint NOT NULL,
  `Gender` tinyint NOT NULL,
  `Birthday` tinyint NOT NULL,
  `Contact` tinyint NOT NULL,
  `Education` tinyint NOT NULL,
  `MaritalStatus` tinyint NOT NULL,
  `Nation` tinyint NOT NULL,
  `Political` tinyint NOT NULL,
  `SecondaryContact` tinyint NOT NULL,
  `ReligiousBelief` tinyint NOT NULL,
  `ZYSHLY` tinyint NOT NULL,
  `CurrentAddress` tinyint NOT NULL,
  `HouseholdAddress` tinyint NOT NULL,
  `NativePlaceAddress` tinyint NOT NULL,
  `RegionId` tinyint NOT NULL,
  `SFCGB` tinyint NOT NULL,
  `SFCZRK` tinyint NOT NULL,
  `SFHJRK` tinyint NOT NULL,
  `SFKGH` tinyint NOT NULL,
  `SFLDRK` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_v3_VillageRegionPopulation`
--

DROP TABLE IF EXISTS `view_v3_VillageRegionPopulation`;
/*!50001 DROP VIEW IF EXISTS `view_v3_VillageRegionPopulation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_v3_VillageRegionPopulation` (
  `id` tinyint NOT NULL,
  `RegionId` tinyint NOT NULL,
  `VillagePopulationId` tinyint NOT NULL,
  `PopulationId` tinyint NOT NULL,
  `sfcgb` tinyint NOT NULL,
  `SFCZRK` tinyint NOT NULL,
  `sfhjrk` tinyint NOT NULL,
  `sfkgh` tinyint NOT NULL,
  `sfldrk` tinyint NOT NULL,
  `IsRemoved` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `IdCard` tinyint NOT NULL,
  `gender` tinyint NOT NULL,
  `birthday` tinyint NOT NULL,
  `Contact` tinyint NOT NULL,
  `Education` tinyint NOT NULL,
  `MaritalStatus` tinyint NOT NULL,
  `Nation` tinyint NOT NULL,
  `Political` tinyint NOT NULL,
  `SecondaryContact` tinyint NOT NULL,
  `ReligiousBelief` tinyint NOT NULL,
  `ZYSHLY` tinyint NOT NULL,
  `CurrentAddress` tinyint NOT NULL,
  `HouseholdAddress` tinyint NOT NULL,
  `NativePlaceAddress` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_v3_user`
--

DROP TABLE IF EXISTS `view_v3_user`;
/*!50001 DROP VIEW IF EXISTS `view_v3_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_v3_user` (
  `Id` tinyint NOT NULL,
  `Mobile` tinyint NOT NULL,
  `RealName` tinyint NOT NULL,
  `UserName` tinyint NOT NULL,
  `NickName` tinyint NOT NULL,
  `Password` tinyint NOT NULL,
  `PasswordSalt` tinyint NOT NULL,
  `IsEnable` tinyint NOT NULL,
  `Gender` tinyint NOT NULL,
  `Avatar` tinyint NOT NULL,
  `LastLoginTime` tinyint NOT NULL,
  `IsDeleted` tinyint NOT NULL,
  `CreatedAt` tinyint NOT NULL,
  `CreatedBy` tinyint NOT NULL,
  `UpdatedAt` tinyint NOT NULL,
  `UpdatedBy` tinyint NOT NULL,
  `Remark` tinyint NOT NULL,
  `Email` tinyint NOT NULL,
  `PopulationId` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_villageepidemic`
--

DROP TABLE IF EXISTS `view_villageepidemic`;
/*!50001 DROP VIEW IF EXISTS `view_villageepidemic`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_villageepidemic` (
  `id` tinyint NOT NULL,
  `populationId` tinyint NOT NULL,
  `sourceOrgCodes` tinyint NOT NULL,
  `sourceAddress` tinyint NOT NULL,
  `reversalDate` tinyint NOT NULL,
  `recorDate` tinyint NOT NULL,
  `temperature` tinyint NOT NULL,
  `health` tinyint NOT NULL,
  `isFever` tinyint NOT NULL,
  `isInAreas` tinyint NOT NULL,
  `remark` tinyint NOT NULL,
  `createdBy` tinyint NOT NULL,
  `updatedBy` tinyint NOT NULL,
  `isDeleted` tinyint NOT NULL,
  `createdAt` tinyint NOT NULL,
  `updatedAt` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `syncId` tinyint NOT NULL,
  `syncRes` tinyint NOT NULL,
  `isSync` tinyint NOT NULL,
  `syncDate` tinyint NOT NULL,
  `householdId` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Options`
--

/*!50001 DROP TABLE IF EXISTS `Options`*/;
/*!50001 DROP VIEW IF EXISTS `Options`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Options` AS select `dvsv3`.`Options`.`Id` AS `Id`,`dvsv3`.`Options`.`Key` AS `Key`,`dvsv3`.`Options`.`Value` AS `Value`,`dvsv3`.`Options`.`Remark` AS `Remark` from `dvsv3`.`Options` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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

--
-- Final view structure for view `view_DAS_xzc_jbqk`
--

/*!50001 DROP TABLE IF EXISTS `view_DAS_xzc_jbqk`*/;
/*!50001 DROP VIEW IF EXISTS `view_DAS_xzc_jbqk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DAS_xzc_jbqk` AS select `t`.`id` AS `id`,`b`.`nf` AS `nf`,`b`.`id` AS `cid`,`t`.`id` AS `areaid`,`t`.`name` AS `NAME`,`b`.`zrcsl` AS `zrcsl`,`b`.`jdzrcsl` AS `jdzrcsl`,`b`.`czlx` AS `czlx`,`b`.`czdm` AS `czdm`,`b`.`sfclc` AS `sfclc`,`b`.`sfmlyjc` AS `sfmlyjc`,`b`.`hjs` AS `hjs`,`b`.`hjrk` AS `hjrk`,`b`.`czhs` AS `czhs`,`b`.`czrk` AS `czrk`,`b`.`xzqhmj` AS `xzqhmj`,`b`.`cmjzmj` AS `cmjzmj`,`b`.`jtjjsr` AS `jtjjsr`,`b`.`jtjjsrly` AS `jtjjsrly`,`b`.`jtcyfzyy` AS `jtcyfzyy` from (`BasicArea` `t` left join `DAS_xzc_jbqk` `b` on(`b`.`areaid` = `t`.`id` and `b`.`nf` = 2022)) where `t`.`isDeleted` = 0 and `t`.`isStatistics` = 1 and `t`.`level` = 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DAS_xzc_status`
--

/*!50001 DROP TABLE IF EXISTS `view_DAS_xzc_status`*/;
/*!50001 DROP VIEW IF EXISTS `view_DAS_xzc_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DAS_xzc_status` AS select `CollectDataSummaryLog`.`id` AS `id`,`CollectDataSummaryLog`.`nf` AS `nf`,`CollectDataSummaryLog`.`areaid` AS `areaid`,`CollectDataSummaryLog`.`cid` AS `cid`,`CollectDataSummaryLog`.`collectid` AS `collectid`,`CollectDataSummaryLog`.`logtype` AS `logtype`,`CollectDataSummaryLog`.`reportby` AS `reportby`,`CollectDataSummaryLog`.`reporttime` AS `reporttime`,`CollectDataSummaryLog`.`remark` AS `remark`,`CollectDataSummaryLog`.`status` AS `status`,`CollectDataSummaryLog`.`auditby` AS `auditby`,`CollectDataSummaryLog`.`audittime` AS `audittime`,`CollectDataSummaryLog`.`reason` AS `reason`,`CollectDataSummaryLog`.`createdAt` AS `createdAt`,`CollectDataSummaryLog`.`updatedAt` AS `updatedAt`,`CollectDataSummaryLog`.`createdBy` AS `createdBy`,`CollectDataSummaryLog`.`updatedBy` AS `updatedBy`,`CollectDataSummaryLog`.`isDeleted` AS `isDeleted` from `CollectDataSummaryLog` where `CollectDataSummaryLog`.`logtype` = 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_bgjs`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_bgjs`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_bgjs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_bgjs` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`bggg` AS `bggg`,`t`.`bgjscd` AS `bgjscd`,`t`.`je` AS `je`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_bgjs` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_ccllwl`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_ccllwl`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ccllwl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_ccllwl` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`ccllwlsslx` AS `ccllwlsslx`,`t`.`sssbmc` AS `sssbmc`,`t`.`ccnl` AS `ccnl`,`t`.`fgnl` AS `fgnl`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_ccllwl` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_czgh`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_czgh`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_czgh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_czgh` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sf` AS `sf`,`t`.`trje` AS `trje`,`t`.`ghbzdw` AS `ghbzdw`,`t`.`czghlx` AS `czghlx`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_czgh` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_czlh`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_czlh`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_czlh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_czlh` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`ldgg` AS `ldgg`,`t`.`sl` AS `sl`,`t`.`jgjl` AS `jgjl`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`t`.`je` AS `je`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_czlh` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_dllh`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_dllh`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_dllh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_dllh` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`dllhlx` AS `dllhlx`,`t`.`cd` AS `cd`,`t`.`je` AS `je`,`t`.`bz` AS `bz`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_dllh` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_dlyh`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_dlyh`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_dlyh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_dlyh` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`lmyhlx` AS `lmyhlx`,`t`.`cd` AS `cd`,`t`.`kd` AS `kd`,`t`.`je` AS `je`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_dlyh` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_dqfwzx`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_dqfwzx`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_dqfwzx`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_dqfwzx` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sf` AS `sf`,`t`.`jsnr` AS `jsnr`,`t`.`jssj` AS `jssj`,`t`.`gm` AS `gm`,`t`.`je` AS `je`,`t`.`hyfs` AS `hyfs`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_dqfwzx` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_gbyey`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_gbyey`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gbyey`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_gbyey` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`gm` AS `gm`,`t`.`sl` AS `sl`,`t`.`jssj` AS `jssj`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_gbyey` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_gcjs`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_gcjs`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gcjs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_gcjs` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`zje` AS `zje`,`t`.`sgfy` AS `sgfy`,`t`.`jlfy` AS `jlfy`,`t`.`zbdqtfy` AS `zbdqtfy`,`t`.`qtfy` AS `qtfy`,`t`.`bz` AS `bz`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_gcjs` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_gdjs`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_gdjs`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gdjs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_gdjs` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`gdjslx` AS `gdjslx`,`t`.`sjnr` AS `sjnr`,`t`.`je` AS `je`,`t`.`gznr` AS `gznr`,`t`.`xlcd` AS `xlcd`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_gdjs` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_ggflfw`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_ggflfw`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ggflfw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_ggflfw` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_ggflfw` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_gssb`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_gssb`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gssb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_gssb` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`gsbzjslx` AS `gsbzjslx`,`t`.`sbmc` AS `sbmc`,`t`.`sl` AS `sl`,`t`.`cd` AS `cd`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_gssb` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_gyxgm`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_gyxgm`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_gyxgm`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_gyxgm` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sl` AS `sl`,`t`.`gm` AS `gm`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_gyxgm` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_htgqqysj`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_htgqqysj`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_htgqqysj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_htgqqysj` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`gcnr` AS `gcnr`,`t`.`gcl` AS `gcl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_htgqqysj` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_jianhcjs`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_jianhcjs`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_jianhcjs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_jianhcjs` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`gclx` AS `gclx`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`bz` AS `bz`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_jianhcjs` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_jzyzjgq`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_jzyzjgq`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_jzyzjgq`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_jzyzjgq` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`yzxqlb` AS `yzxqlb`,`t`.`jzyzqgm` AS `jzyzqgm`,`t`.`hs` AS `hs`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_jzyzjgq` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_jzzhjg`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_jzzhjg`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_jzzhjg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_jzzhjg` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`je` AS `je`,`t`.`gm` AS `gm`,`t`.`gs` AS `gs`,`t`.`jsnr` AS `jsnr`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_jzzhjg` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_ljfl`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_ljfl`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ljfl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_ljfl` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`areaid` AS `areaid`,`t`.`ljxrj` AS `ljxrj`,`t`.`gs` AS `gs`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_ljfl` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_ljqy`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_ljqy`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ljqy`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_ljqy` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`ljclx` AS `ljclx`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_ljqy` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_ljsj`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_ljsj`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ljsj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_ljsj` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`ljzcc` AS `ljzcc`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_ljsj` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_mlsfc`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_mlsfc`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_mlsfc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_mlsfc` AS select `t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`t`.`id` AS `id`,`t`.`sfwmlsfxc` AS `sfwmlsfxc`,`t`.`mlsfcxq` AS `mlsfcxq`,`t`.`czzj2022` AS `czzj2022`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`m`.`xmmc` AS `xmmc`,`m`.`zjly` AS `zjly`,`m`.`zjed` AS `zjed`,`m`.`nf` AS `fundnf` from (`DCLN_mlsfc` `t` left join `DCLN_mlyjxmzj` `m` on(`t`.`id` = `m`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_nfjs`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_nfjs`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_nfjs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_nfjs` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`bz` AS `bz`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_nfjs` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_nwgz`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_nwgz`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_nwgz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_nwgz` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`gznr` AS `gznr`,`t`.`gzsl` AS `gzsl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_nwgz` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_nwwlmgz`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_nwwlmgz`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_nwwlmgz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_nwwlmgz` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`dhmj` AS `dhmj`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_nwwlmgz` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_qjny`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_qjny`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_qjny`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_qjny` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`areaid` AS `areaid`,`t`.`nylx` AS `nylx`,`t`.`sbmc` AS `sbmc`,`t`.`sl` AS `sl`,`t`.`hs` AS `hs`,`t`.`jsnr` AS `jsnr`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_qjny` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_slzl`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_slzl`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_slzl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_slzl` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`zljtnr` AS `zljtnr`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`bz` AS `bz`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_slzl` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_sxzl`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_sxzl`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_sxzl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_sxzl` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sxzllx` AS `sxzllx`,`t`.`gcnr` AS `gcnr`,`t`.`gcl` AS `gcl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_sxzl` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_szxcjs`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_szxcjs`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_szxcjs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_szxcjs` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`ptlx` AS `ptlx`,`t`.`jsnr` AS `jsnr`,`t`.`gm` AS `gm`,`t`.`syqzsl` AS `syqzsl`,`t`.`gs` AS `gs`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`t`.`ptxz` AS `ptxz`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_szxcjs` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_whgcggwsj`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_whgcggwsj`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_whgcggwsj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_whgcggwsj` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`mj` AS `mj`,`t`.`gs` AS `gs`,`t`.`kws` AS `kws`,`t`.`je` AS `je`,`t`.`ywzrwx` AS `ywzrwx`,`t`.`rs` AS `rs`,`t`.`gz` AS `gz`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_whgcggwsj` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_whgcjg`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_whgcjg`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_whgcjg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_whgcjg` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`jglx` AS `jglx`,`t`.`jsnr` AS `jsnr`,`t`.`gg` AS `gg`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_whgcjg` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_whhdgc`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_whhdgc`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_whhdgc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_whhdgc` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`yt` AS `yt`,`t`.`mj` AS `mj`,`t`.`je` AS `je`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_whhdgc` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_wszl`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_wszl`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_wszl`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_wszl` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`wszlss` AS `wszlss`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`t`.`rclnl` AS `rclnl`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_wszl` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_xsdwmsj`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_xsdwmsj`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_xsdwmsj`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_xsdwmsj` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sf` AS `sf`,`t`.`jsnr` AS `jsnr`,`t`.`jssj` AS `jssj`,`t`.`gm` AS `gm`,`t`.`je` AS `je`,`t`.`hyfs` AS `hyfs`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_xsdwmsj` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_xxjcss`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_xxjcss`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_xxjcss`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_xxjcss` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`xxjcsslx` AS `xxjcsslx`,`t`.`jsnr` AS `jsnr`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_xxjcss` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_xxwhhclz`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_xxwhhclz`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_xxwhhclz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_xxwhhclz` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`t`.`mj` AS `mj`,`t`.`gs` AS `gs`,`t`.`rclnl` AS `rclnl`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`t`.`je` AS `je`,`g`.`nf` AS `fundnf`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_xxwhhclz` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_ylfw`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_ylfw`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ylfw`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_ylfw` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sl` AS `sl`,`t`.`jsnr` AS `jsnr`,`t`.`jssj` AS `jssj`,`t`.`je` AS `je`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_ylfw` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_ylwss`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_ylwss`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_ylwss`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_ylwss` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sf` AS `sf`,`t`.`sl` AS `sl`,`t`.`jssj` AS `jssj`,`t`.`je` AS `je`,`t`.`hyfs` AS `hyfs`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_ylwss` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_yygh`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_yygh`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_yygh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_yygh` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`yyghlx` AS `yyghlx`,`t`.`je` AS `je`,`t`.`bz` AS `bz`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`t`.`sbgg` AS `sbgg`,`t`.`sl` AS `sl`,`t`.`rypbsl` AS `rypbsl`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_yygh` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_zhwhfwzx`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_zhwhfwzx`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_zhwhfwzx`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_zhwhfwzx` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`sf` AS `sf`,`t`.`jsnr` AS `jsnr`,`t`.`gm` AS `gm`,`t`.`jssj` AS `jssj`,`t`.`je` AS `je`,`t`.`hyfs` AS `hyfs`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_zhwhfwzx` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_zjtrqk`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_zjtrqk`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_zjtrqk`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_zjtrqk` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`areaid` AS `areaid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`xmmc` AS `xmmc`,`t`.`zcnr` AS `zcnr`,`t`.`zjed` AS `zjed`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_zjtrqk` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_DCLN_zzlh`
--

/*!50001 DROP TABLE IF EXISTS `view_DCLN_zzlh`*/;
/*!50001 DROP VIEW IF EXISTS `view_DCLN_zzlh`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_DCLN_zzlh` AS select ifnull(`g`.`id`,`t`.`id`) AS `id`,`t`.`id` AS `fundid`,`t`.`nf` AS `nf`,`g`.`nf` AS `fundnf`,`t`.`zzzl` AS `zzzl`,`t`.`sl` AS `sl`,`t`.`je` AS `je`,`t`.`bz` AS `bz`,`t`.`areaid` AS `areaid`,`t`.`createby` AS `createby`,`t`.`updateby` AS `updateby`,`t`.`createtime` AS `createtime`,`t`.`updatetime` AS `updatetime`,`g`.`fundtype` AS `fundtype`,`g`.`financial` AS `financial`,`g`.`socialfunds` AS `socialfunds`,`g`.`project` AS `project`,`g`.`investor` AS `investor` from (`DCLN_zzlh` `t` left join `GovProjectFundsDetail` `g` on(`t`.`id` = `g`.`fundid`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_FFPHouseholdIncomeCompare`
--

/*!50001 DROP TABLE IF EXISTS `view_FFPHouseholdIncomeCompare`*/;
/*!50001 DROP VIEW IF EXISTS `view_FFPHouseholdIncomeCompare`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_FFPHouseholdIncomeCompare` AS select `pcs2309_jch_szqk`.`id` AS `id`,`pcs2309_jch_szqk`.`areaid` AS `areaid`,`pcs2309_jch_szqk`.`hid` AS `hid`,`pcs2309_jch_szqk`.`nf` AS `nf`,`pcs2309_jch_szqk`.`lx` AS `lx`,`pcs2309_jch_szqk`.`gzxsr` AS `gzxsr`,`pcs2309_jch_szqk`.`scjyxsr` AS `scjyxsr`,`pcs2309_jch_szqk`.`ccxsr` AS `ccxsr`,`pcs2309_jch_szqk`.`zyxsr` AS `zyxsr`,`pcs2309_jch_szqk`.`scjyxzc` AS `scjyxzc`,`pcs2309_jch_szqk`.`jtcsr` AS `jtcsr`,`pcs2309_jch_szqk`.`jtrjcsr` AS `jtrjcsr`,`pcs2309_jch_szqk`.`jtlpsr` AS `jtlpsr`,`pcs2309_jch_szqk`.`hgzfzc` AS `hgzfzc`,`pcs2309_jch_szqk`.`nrjcdxsrckfw` AS `nrjcdxsrckfw`,`pcs2309_jch_szqk`.`nrjcdxrjsrckfw` AS `nrjcdxrjsrckfw`,`pcs2309_jch_szqk`.`createby` AS `createby`,`pcs2309_jch_szqk`.`updateby` AS `updateby`,`pcs2309_jch_szqk`.`createtime` AS `createtime`,`pcs2309_jch_szqk`.`updatetime` AS `updatetime` from `pcs2309_jch_szqk` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_Region`
--

/*!50001 DROP TABLE IF EXISTS `view_Region`*/;
/*!50001 DROP VIEW IF EXISTS `view_Region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_Region` AS select `dvsv3`.`Region`.`Id` AS `Id`,`dvsv3`.`Region`.`Name` AS `Name`,`dvsv3`.`Region`.`Code` AS `Code`,`dvsv3`.`Region`.`ParentId` AS `ParentId`,`dvsv3`.`Region`.`Level` AS `Level`,`dvsv3`.`Region`.`Order` AS `Order`,`dvsv3`.`Region`.`IdSequences` AS `IdSequences`,`dvsv3`.`Region`.`Remark` AS `Remark`,`dvsv3`.`Region`.`IsDeleted` AS `IsDeleted`,`dvsv3`.`Region`.`CreatedAt` AS `CreatedAt`,`dvsv3`.`Region`.`CreatedBy` AS `CreatedBy`,`dvsv3`.`Region`.`UpdatedAt` AS `UpdatedAt`,`dvsv3`.`Region`.`UpdatedBy` AS `UpdatedBy`,`dvsv3`.`Region`.`ShortName` AS `ShortName` from `dvsv3`.`Region` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_VillagePopulation`
--

/*!50001 DROP TABLE IF EXISTS `view_VillagePopulation`*/;
/*!50001 DROP VIEW IF EXISTS `view_VillagePopulation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_VillagePopulation` AS select `t`.`id` AS `id`,`t`.`areaId` AS `areaId`,`t`.`realName` AS `realName`,`t`.`sex` AS `sex`,`t`.`nation` AS `nation`,`t`.`birthday` AS `birthday`,`t`.`relationship` AS `relationship`,`t`.`idCard` AS `idCard`,`t`.`mobile` AS `mobile`,`t`.`political` AS `political`,`t`.`education` AS `education`,`t`.`marital` AS `marital`,`t`.`religion` AS `religion`,`t`.`income` AS `income`,`t`.`headImageId` AS `headImageId`,`t`.`headImageUrl` AS `headImageUrl`,`t`.`tags` AS `tags`,`t`.`remark` AS `remark`,`t`.`status` AS `status`,`t`.`createdBy` AS `createdBy`,`t`.`updatedBy` AS `updatedBy`,`t`.`deleteReason` AS `deleteReason`,`t`.`createdAt` AS `createdAt`,`t`.`updatedAt` AS `updatedAt`,`t`.`populationType` AS `populationType`,`t`.`syncId` AS `syncId`,`t`.`syncRes` AS `syncRes`,`t`.`isSync` AS `isSync`,`t`.`syncDate` AS `syncDate`,`t`.`mobileShort` AS `mobileShort` from `VillagePopulation` `t` where `t`.`isDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_VillageStatisticTag`
--

/*!50001 DROP TABLE IF EXISTS `view_VillageStatisticTag`*/;
/*!50001 DROP VIEW IF EXISTS `view_VillageStatisticTag`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_VillageStatisticTag` AS select `CollectDataStatisticTag`.`id` AS `id`,`CollectDataStatisticTag`.`nf` AS `nf`,`CollectDataStatisticTag`.`areaid` AS `areaid`,`CollectDataStatisticTag`.`tagName` AS `tagName`,`CollectDataStatisticTag`.`tagStatus` AS `tagStatus`,`CollectDataStatisticTag`.`createdAt` AS `createdAt`,`CollectDataStatisticTag`.`updatedAt` AS `updatedAt`,`CollectDataStatisticTag`.`createdBy` AS `createdBy`,`CollectDataStatisticTag`.`updatedBy` AS `updatedBy`,`CollectDataStatisticTag`.`isDeleted` AS `isDeleted`,`CollectDataStatisticTag`.`robotStatus` AS `robotStatus`,`CollectDataStatisticTag`.`robotDescribe` AS `robotDescribe` from `CollectDataStatisticTag` where `CollectDataStatisticTag`.`tagName` = 'cun' and `CollectDataStatisticTag`.`isDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_basicarea`
--

/*!50001 DROP TABLE IF EXISTS `view_basicarea`*/;
/*!50001 DROP VIEW IF EXISTS `view_basicarea`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_basicarea` AS select `t`.`id` AS `id`,`t`.`pid` AS `pid`,`t`.`id` AS `areaid`,`t`.`areaCode` AS `areaCode`,`t`.`name` AS `name`,`t`.`description` AS `description`,`b`.`czlx` AS `czlx`,`b`.`zydx` AS `zydx`,`b`.`zhqkfl` AS `zhqkfl`,`c`.`hjs` AS `hjs`,`c`.`rks` AS `rks`,`c`.`czhs` AS `czhs`,`c`.`czrks` AS `czrks`,`c`.`xzqhmj` AS `xzqhmj`,`c`.`cmjzqmj` AS `cmjzqmj`,`c`.`cmzs` AS `cmzs`,`c`.`nf` AS `nf` from ((`BasicArea` `t` left join `DCLN_czfl` `b` on(`t`.`id` = `b`.`areaid` and `b`.`nf` = 2022)) left join `DCLN_jbqk` `c` on(`t`.`id` = `c`.`areaid` and `c`.`nf` = 2022)) where `t`.`isDeleted` = 0 and `t`.`level` = 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_ffpsubmithousehold`
--

/*!50001 DROP TABLE IF EXISTS `view_ffpsubmithousehold`*/;
/*!50001 DROP VIEW IF EXISTS `view_ffpsubmithousehold`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_ffpsubmithousehold` AS select `Query_FFPSubmitHousehold`.`AreaId` AS `AreaId`,`Query_FFPSubmitHousehold`.`HouseholdId` AS `HouseholdId`,`Query_FFPSubmitHousehold`.`SubmitId` AS `SubmitId`,`Query_FFPSubmitHousehold`.`TaskId` AS `TaskId`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200001`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200002`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200003`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200004`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200005`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200006',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200006`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200007',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200007`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200008',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200008`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200008001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200008001`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200008002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200008002`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200008003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200008003`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200008004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200008004`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200008005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200008005`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200009',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200009`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200010',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200010`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200011',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200011`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200012',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200012`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200013',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200013`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200014',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200014`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200016',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200016`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200017',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200017`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200018',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200018`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200019',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200019`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200020',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200020`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200022',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200022`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200023',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200023`,max(if(`Query_FFPSubmitHousehold`.`Key` = 'C200024',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `C200024`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A23',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A23`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A23001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A23001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A24',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A24`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A24001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A24001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A25',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A25`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A25001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A25001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A23001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A23001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A23001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A23001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A24001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A24001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A24001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A24001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A25001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A25001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A25001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A25001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A25001003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A25001003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A25001004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A25001004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB03003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB03003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB32001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB32001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB32002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB32002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28005`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28006',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28006`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28007',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28007`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28008',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28008`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB28009',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB28009`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A28',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A28`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A32',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A32`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A33',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A33`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A35',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A35`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A36',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A36`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A37',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A37`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A40',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A40`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A40001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A40001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A40002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A40002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A41',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A41`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A41001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A41001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A41002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A41002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A42',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A42`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A42001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A42001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB04',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB04`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB04001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB04001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A40001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A40001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A40001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A40001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A40001003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A40001003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A40001004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A40001004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB05',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB05`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB05001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB05001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27005`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27006',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27006`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27007',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27007`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27008',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27008`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27010',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27010`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27009',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27009`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A27011',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A27011`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27005`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27007',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27007`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27006',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27006`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100B27002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100B27002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A26',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A26`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A26001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A26001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A26001005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A26001005`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A26001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A26001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A26001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A26001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A26001003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A26001003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A26001004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A26001004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29005`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29006',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29006`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29007',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29007`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29008',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29008`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB29009',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB29009`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A29',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A29`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30005`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30006',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30006`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30007',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30007`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB30008',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB30008`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A30',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A30`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31005',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31005`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31006',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31006`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31007',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31007`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31008',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31008`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31009',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31009`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31010',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31010`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31011',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31011`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31012',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31012`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31013',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31013`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31014',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31014`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31015',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31015`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31016',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31016`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31017',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31017`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31018',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31018`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31019',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31019`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31020',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31020`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31021',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31021`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB31022',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB31022`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A31',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A31`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A39',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A39`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A39001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A39001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A39002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A39002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A43',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A43`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A43001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A43001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A44',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A44`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A44001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A44001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A45',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A45`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A45001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A45001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A45002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A45002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A46',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A46`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A46001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A46001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A46002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A46002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A47',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A47`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A47001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A47001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A47002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A47002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A48',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A48`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A48001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A48001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A48002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A48002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A49',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A49`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A49001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A49001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A49002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A49002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A50',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A50`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A50001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A50001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A51',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A51`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A51001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A51001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A52',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A52`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A52001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A52001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A53',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A53`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A53001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A53001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A54',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A54`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A55',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A55`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A56',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A56`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A39001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A39001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A39001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A39001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A46001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A46001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A46001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A46001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A48001001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A48001001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A48001002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A48001002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB01',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB01`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB01002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB01002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB01003',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB01003`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB01004',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB01004`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB02',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB02`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB02001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB02001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB02002',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB02002`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100AB03001',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100AB03001`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A34',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A34`,max(if(`Query_FFPSubmitHousehold`.`Key` = '100A38',`Query_FFPSubmitHousehold`.`Value`,NULL)) AS `100A38` from `Query_FFPSubmitHousehold` group by `Query_FFPSubmitHousehold`.`SubmitId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_submitstatistics`
--

/*!50001 DROP TABLE IF EXISTS `view_submitstatistics`*/;
/*!50001 DROP VIEW IF EXISTS `view_submitstatistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_submitstatistics` AS select concat(`FFPSubmitStatistics`.`AreaId`,'_',`FFPSubmitStatistics`.`TaskId`) AS `Id`,`FFPSubmitStatistics`.`AreaId` AS `AreaId`,`FFPSubmitStatistics`.`TaskId` AS `TaskId`,max(if(`FFPSubmitStatistics`.`Key` = 'S300001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300005001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300005001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300005002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300005002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300005003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300005003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300005004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300005004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300005',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300005`,max(if(`FFPSubmitStatistics`.`Key` = 'S300006001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300006001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300006002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300006002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300006003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300006003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300006',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300006`,max(if(`FFPSubmitStatistics`.`Key` = 'S300007',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300007`,max(if(`FFPSubmitStatistics`.`Key` = 'S300008',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300008`,max(if(`FFPSubmitStatistics`.`Key` = 'S300009',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300009`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010001001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010001001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010001002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010001002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010001003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010001003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010001004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010001004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010002001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010002001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010002002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010002002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010002003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010002003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010002004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010002004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010003001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010003001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010003002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010003002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010003003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010003003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010003004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010003004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300010003005',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300010003005`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011001001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011001001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011001002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011001002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011001003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011001003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011001004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011001004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011001005',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011001005`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011002001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011002001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011002002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011002002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011002003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011002003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011002004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011002004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011003001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011003001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011003002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011003002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011003003',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011003003`,max(if(`FFPSubmitStatistics`.`Key` = 'S300011003004',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300011003004`,max(if(`FFPSubmitStatistics`.`Key` = 'S300012',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300012`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100101',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100101`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100102',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100102`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100201',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100201`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100202',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100202`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100301',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100301`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100302',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100302`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100401',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100401`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100402',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100402`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100501',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100501`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200100502',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200100502`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200101',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200101`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200102',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200102`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200201',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200201`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200202',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200202`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200301',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200301`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200302',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200302`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200401',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200401`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200402',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200402`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200501',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200501`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200200502',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200200502`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300101',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300101`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300102',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300102`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300201',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300201`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300202',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300202`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300301',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300301`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300302',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300302`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300401',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300401`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300402',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300402`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300501',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300501`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200300502',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200300502`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400101',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400101`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400102',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400102`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400201',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400201`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400202',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400202`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400301',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400301`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400302',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400302`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400401',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400401`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400402',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400402`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400501',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400501`,max(if(`FFPSubmitStatistics`.`Key` = 'S30001200400502',`FFPSubmitStatistics`.`Value`,NULL)) AS `S30001200400502`,max(if(`FFPSubmitStatistics`.`Key` = 'S300013001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300013001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300013002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300013002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014003001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014003001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014003002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014003002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014004001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014004001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014004002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014004002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014005001',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014005001`,max(if(`FFPSubmitStatistics`.`Key` = 'S300014005002',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300014005002`,max(if(`FFPSubmitStatistics`.`Key` = 'S300015',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300015`,max(if(`FFPSubmitStatistics`.`Key` = 'S300016',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300016`,max(if(`FFPSubmitStatistics`.`Key` = 'Problems',`FFPSubmitStatistics`.`Value`,NULL)) AS `Problems`,max(if(`FFPSubmitStatistics`.`Key` = 'S300017',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300017`,max(if(`FFPSubmitStatistics`.`Key` = 'S300018',`FFPSubmitStatistics`.`Value`,NULL)) AS `S300018` from `FFPSubmitStatistics` group by `FFPSubmitStatistics`.`AreaId`,`FFPSubmitStatistics`.`TaskId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_v3_UserRole`
--

/*!50001 DROP TABLE IF EXISTS `view_v3_UserRole`*/;
/*!50001 DROP VIEW IF EXISTS `view_v3_UserRole`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_v3_UserRole` AS select `t`.`Id` AS `Id`,`t`.`UserId` AS `UserId`,`t`.`RoleId` AS `RoleId`,`t`.`RegionId` AS `RegionId`,`a1`.`Name` AS `RoleName`,`a2`.`Name` AS `RegionName` from ((`dvsv3`.`UserRole` `t` left join `dvsv3`.`Role` `a1` on(`t`.`RoleId` = `a1`.`Id` and `a1`.`IsDeleted` = 0)) left join `dvsv3`.`Region` `a2` on(`t`.`RegionId` = `a2`.`Id` and `a2`.`IsDeleted` = 0)) where `t`.`IsDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_v3_VillageHouse`
--

/*!50001 DROP TABLE IF EXISTS `view_v3_VillageHouse`*/;
/*!50001 DROP VIEW IF EXISTS `view_v3_VillageHouse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_v3_VillageHouse` AS select `t1`.`Id` AS `id`,`t1`.`RegionId` AS `RegionId`,`t4`.`Name` AS `HouseName`,`t1`.`HouseNumber` AS `HouseNumber`,`t1`.`No` AS `HouseCode`,`t2`.`Name` AS `HouseholdName`,`t2`.`IdCard` AS `HouseholdIdCard`,`t2`.`Gender` AS `Gender`,`t2`.`Birthday` AS `Birthday`,`t1`.`TotalPopulation` AS `TotalPopulation` from ((`dvsv3`.`VillageHousehold` `t1` left join `dvsv3`.`Population` `t2` on(`t2`.`Id` = `t1`.`HeadPopulationId` and `t2`.`IsDeleted` = 0)) left join `dvsv3`.`VillageHouseName` `t4` on(`t4`.`Id` = `t1`.`HouseNameId` and `t4`.`IsDeleted` = 0)) where `t1`.`IsDeleted` = 0 and `t1`.`State` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_v3_reftable`
--

/*!50001 DROP TABLE IF EXISTS `view_v3_reftable`*/;
/*!50001 DROP VIEW IF EXISTS `view_v3_reftable`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_v3_reftable` AS select `g`.`Name` AS `TypeName`,`g`.`Code` AS `Type`,`d`.`Id` AS `Id`,`d`.`Name` AS `Name`,`d`.`Code` AS `Code`,`d`.`DictionaryGroupId` AS `DictionaryGroupId`,`d`.`ParentId` AS `ParentId`,`d`.`Order` AS `Order`,`d`.`IsEnable` AS `IsEnable`,`d`.`Remark` AS `Remark`,`d`.`IsVisible` AS `IsVisible`,`d`.`IsDeleted` AS `IsDeleted`,`d`.`CreatedAt` AS `CreatedAt`,`d`.`CreatedBy` AS `CreatedBy`,`d`.`UpdatedAt` AS `UpdatedAt`,`d`.`UpdatedBy` AS `UpdatedBy`,`d`.`IsSystem` AS `IsSystem` from (`dvsv3`.`DictionaryItem` `d` left join `dvsv3`.`DictionaryGroup` `g` on(`d`.`DictionaryGroupId` = `g`.`Id`)) where `d`.`IsDeleted` = 0 and `g`.`Code` is not null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_consphotoanywhere`
--

/*!50001 DROP TABLE IF EXISTS `view_consphotoanywhere`*/;
/*!50001 DROP VIEW IF EXISTS `view_consphotoanywhere`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_consphotoanywhere` AS select `c`.`id` AS `id`,`c`.`userId` AS `userId`,`c`.`type` AS `type`,`c`.`descript` AS `descript`,`c`.`imageIds` AS `imageIds`,`c`.`videoIds` AS `videoIds`,`c`.`isReply` AS `isReply`,`c`.`replyDesc` AS `replyDesc`,`c`.`replyImageIds` AS `replyImageIds`,`c`.`replyDateTime` AS `replyDateTime`,`c`.`replyer` AS `replyer`,`c`.`createdAt` AS `createdAt`,`c`.`createdBy` AS `createdBy`,`c`.`isDeleted` AS `isDeleted`,`c`.`updatedAt` AS `updatedAt`,`c`.`updatedBy` AS `updatedBy`,`c`.`createdByDeptId` AS `createdByDeptId`,`c`.`address` AS `address`,`c`.`longitude` AS `longitude`,`c`.`latitude` AS `latitude`,`c`.`syncId` AS `syncId`,`c`.`syncRes` AS `syncRes`,`c`.`isSync` AS `isSync`,`c`.`syncDate` AS `syncDate`,`c`.`householdId` AS `householdId`,`c`.`areaId` AS `areaId`,`u`.`populationId` AS `populationId` from (`ConsPhotoAnywhere` `c` left join `BasicUser` `u` on(`c`.`userId` = `u`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_ffpsubmithouseholdmember`
--

/*!50001 DROP TABLE IF EXISTS `view_ffpsubmithouseholdmember`*/;
/*!50001 DROP VIEW IF EXISTS `view_ffpsubmithouseholdmember`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_ffpsubmithouseholdmember` AS select concat(`Query_FFPSubmitHouseholdMember`.`HouseholdId`,'_',`Query_FFPSubmitHouseholdMember`.`PopulationId`,'_',`Query_FFPSubmitHouseholdMember`.`TaskId`) AS `Id`,`Query_FFPSubmitHouseholdMember`.`AreaId` AS `AreaId`,`Query_FFPSubmitHouseholdMember`.`HouseholdId` AS `HouseholdId`,`Query_FFPSubmitHouseholdMember`.`PopulationId` AS `PopulationId`,`Query_FFPSubmitHouseholdMember`.`SubmitId` AS `SubmitId`,`Query_FFPSubmitHouseholdMember`.`TaskId` AS `TaskId`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011001',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011001`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011002',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011002`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011003',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011003`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011004',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011004`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011005',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011005`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011006',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011006`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011007',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011007`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011008',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011008`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011009',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011009`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011010',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011010`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011011',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011011`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011012',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011012`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011013',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011013`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011014',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011014`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011015',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011015`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011016',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011016`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011017',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011017`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011018',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011018`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011019',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011019`,max(if(`Query_FFPSubmitHouseholdMember`.`Key` = 'C200011020',`Query_FFPSubmitHouseholdMember`.`Value`,NULL)) AS `C200011020` from `Query_FFPSubmitHouseholdMember` group by `Query_FFPSubmitHouseholdMember`.`SubmitId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_householdcode`
--

/*!50001 DROP TABLE IF EXISTS `view_householdcode`*/;
/*!50001 DROP VIEW IF EXISTS `view_householdcode`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_householdcode` AS select `c`.`id` AS `id`,`c`.`areaId` AS `areaId`,`t1`.`realName` AS `name`,`t1`.`idCard` AS `idCard`,`c`.`houseName` AS `houseName`,`c`.`houseNumber` AS `houseNumber`,`c`.`remark` AS `remark`,ifnull(`t1`.`peopleCount`,0) AS `peopleCount`,`c`.`imageIds` AS `imageIds`,`c`.`imageUrls` AS `imageUrls`,`c`.`tags` AS `tags`,`c`.`status` AS `status`,`c`.`isDeleted` AS `isDeleted`,`c`.`createdBy` AS `createdBy`,`c`.`updatedBy` AS `updatedBy`,`c`.`createdAt` AS `createdAt`,`c`.`updatedAt` AS `updatedAt`,`c`.`syncId` AS `syncId`,`c`.`syncRes` AS `syncRes`,`c`.`isSync` AS `isSync`,`c`.`syncDate` AS `syncDate`,`c`.`houseNameId` AS `houseNameId`,`c`.`HouseNameSequence` AS `HouseNameSequence`,`t1`.`householdId` AS `householdId`,`t1`.`populationId` AS `populationId`,`t1`.`isHouseholder` AS `isHouseholder`,`t2`.`realName` AS `householderName`,`t2`.`idCard` AS `hzidCard`,`t2`.`mobile` AS `householderMobile` from ((`dvsdb30`.`VillageHouseholdCode` `c` left join (select `n`.`householdId` AS `householdId`,(select count(`c`.`id`) from `dvsdb30`.`VillageHouseCodeMember` `c` where `c`.`householdId` = `n`.`householdId`) AS `peopleCount`,`n`.`populationId` AS `populationId`,`p`.`realName` AS `realName`,`p`.`idCard` AS `idCard`,`n`.`isHouseholder` AS `isHouseholder` from (`dvsdb30`.`VillageHouseCodeMember` `n` join `dvsdb30`.`VillagePopulation` `p` on(`p`.`id` = `n`.`populationId`)) where `n`.`isDeleted` = 0 and `n`.`householdId` > 0) `t1` on(`c`.`id` = `t1`.`householdId`)) left join (select `n`.`householdId` AS `householdId`,`n`.`populationId` AS `populationId`,`p`.`realName` AS `realName`,`p`.`idCard` AS `idCard`,`p`.`mobile` AS `mobile`,`n`.`isHouseholder` AS `isHouseholder` from (`dvsdb30`.`VillageHouseCodeMember` `n` join `dvsdb30`.`VillagePopulation` `p` on(`p`.`id` = `n`.`populationId`)) where `n`.`isDeleted` = 0 and `n`.`householdId` > 0 and `n`.`isHouseholder` = 1) `t2` on(`c`.`id` = `t2`.`householdId`)) where `c`.`isDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_population`
--

/*!50001 DROP TABLE IF EXISTS `view_population`*/;
/*!50001 DROP VIEW IF EXISTS `view_population`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_population` AS select `p`.`id` AS `id`,`p`.`areaId` AS `areaId`,`p`.`realName` AS `realName`,`p`.`sex` AS `sex`,`p`.`nation` AS `nation`,`p`.`birthday` AS `birthday`,`p`.`relationship` AS `relationship`,`p`.`idCard` AS `idCard`,`p`.`mobile` AS `mobile`,`p`.`political` AS `political`,`p`.`education` AS `education`,`p`.`marital` AS `marital`,`p`.`religion` AS `religion`,`p`.`income` AS `income`,`p`.`headImageId` AS `headImageId`,`p`.`headImageUrl` AS `headImageUrl`,`p`.`tags` AS `tags`,`p`.`remark` AS `remark`,`p`.`status` AS `status`,`p`.`isDeleted` AS `isDeleted`,`p`.`createdBy` AS `createdBy`,`p`.`updatedBy` AS `updatedBy`,`p`.`deleteReason` AS `deleteReason`,`p`.`createdAt` AS `createdAt`,`p`.`updatedAt` AS `updatedAt`,`p`.`populationType` AS `populationType`,`p`.`syncId` AS `syncId`,`p`.`syncRes` AS `syncRes`,`p`.`isSync` AS `isSync`,`p`.`syncDate` AS `syncDate`,`p`.`mobileShort` AS `mobileShort`,`m`.`householdId` AS `householdId`,`m`.`populationId` AS `populationId`,`m`.`isHouseholder` AS `isHouseholder` from (`VillagePopulation` `p` left join `VillageHouseCodeMember` `m` on(`m`.`populationId` = `p`.`id`)) where `p`.`isDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_v3_HouseholdOfPopulation`
--

/*!50001 DROP TABLE IF EXISTS `view_v3_HouseholdOfPopulation`*/;
/*!50001 DROP VIEW IF EXISTS `view_v3_HouseholdOfPopulation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_v3_HouseholdOfPopulation` AS select `t1`.`Id` AS `id`,`t1`.`VillageHouseholdId` AS `VillageHouseholdId`,`t1`.`VillagePopulationId` AS `VillagePopulationId`,`t1`.`PopulationId` AS `PopulationId`,`t1`.`Relationship` AS `Relationship`,`t2`.`RegionId` AS `RegionId`,`t3`.`Name` AS `HouseName`,`t2`.`HouseNumber` AS `HouseNumber`,`t2`.`No` AS `no`,`t2`.`TotalPopulation` AS `TotalPopulation`,`t2`.`State` AS `State`,`t4`.`Name` AS `hzxm`,`t4`.`IdCard` AS `hzIdCard`,`t4`.`Gender` AS `hzxb` from (((`dvsv3`.`VillageHouseholdPopulation` `t1` left join `dvsv3`.`VillageHousehold` `t2` on(`t2`.`Id` = `t1`.`VillageHouseholdId` and `t2`.`IsDeleted` = 0)) left join `dvsv3`.`VillageHouseName` `t3` on(`t3`.`Id` = `t2`.`HouseNameId` and `t3`.`IsDeleted` = 0)) left join `dvsv3`.`Population` `t4` on(`t4`.`Id` = `t2`.`HeadPopulationId` and `t4`.`IsDeleted` = 0)) where `t1`.`IsDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_v3_VillageHouseholdPopulation`
--

/*!50001 DROP TABLE IF EXISTS `view_v3_VillageHouseholdPopulation`*/;
/*!50001 DROP VIEW IF EXISTS `view_v3_VillageHouseholdPopulation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_v3_VillageHouseholdPopulation` AS select `t1`.`Id` AS `id`,`t1`.`VillageHouseholdId` AS `VillageHouseholdId`,`t1`.`VillagePopulationId` AS `VillagePopulationId`,`t1`.`PopulationId` AS `PopulationId`,`t1`.`Relationship` AS `Relationship`,`t2`.`Name` AS `name`,`t2`.`IdCard` AS `IdCard`,`t2`.`Gender` AS `Gender`,`t2`.`Birthday` AS `Birthday`,`t3`.`Contact` AS `Contact`,`t3`.`Education` AS `Education`,`t3`.`MaritalStatus` AS `MaritalStatus`,`t3`.`Nation` AS `Nation`,`t3`.`Political` AS `Political`,`t3`.`SecondaryContact` AS `SecondaryContact`,`t3`.`ReligiousBelief` AS `ReligiousBelief`,`t3`.`ZYSHLY` AS `ZYSHLY`,concat(`t4`.`Province`,`t4`.`City`,`t4`.`County`,`t4`.`Town`,`t4`.`Detail`) AS `CurrentAddress`,concat(`t5`.`Province`,`t5`.`City`,`t5`.`County`,`t5`.`Town`,`t5`.`Detail`) AS `HouseholdAddress`,concat(`t6`.`Province`,`t6`.`City`,`t6`.`County`,`t6`.`Town`,`t6`.`Detail`) AS `NativePlaceAddress`,`t8`.`RegionId` AS `RegionId`,`t8`.`SFCGB` AS `SFCGB`,`t8`.`SFCZRK` AS `SFCZRK`,`t8`.`SFHJRK` AS `SFHJRK`,`t8`.`SFKGH` AS `SFKGH`,`t8`.`SFLDRK` AS `SFLDRK` from (((((((`dvsv3`.`VillageHouseholdPopulation` `t1` left join `dvsv3`.`Population` `t2` on(`t2`.`Id` = `t1`.`PopulationId` and `t2`.`IsDeleted` = 0)) left join `dvsv3`.`VillagePopulation` `t3` on(`t3`.`Id` = `t1`.`VillagePopulationId` and `t3`.`IsDeleted` = 0)) left join `dvsv3`.`Address` `t4` on(`t4`.`Id` = `t3`.`CurrentAddressId` and `t4`.`IsDeleted` = 0)) left join `dvsv3`.`Address` `t5` on(`t5`.`Id` = `t3`.`HouseholdAddressId` and `t5`.`IsDeleted` = 0)) left join `dvsv3`.`Address` `t6` on(`t6`.`Id` = `t3`.`NativePlaceAddressId` and `t6`.`IsDeleted` = 0)) left join `dvsv3`.`VillageHousehold` `t7` on(`t7`.`Id` = `t1`.`VillageHouseholdId` and `t7`.`IsDeleted` = 0)) left join `dvsv3`.`VillageRegionPopulation` `t8` on(`t8`.`VillagePopulationId` = `t3`.`Id` and `t8`.`RegionId` = `t7`.`RegionId` and `t8`.`IsDeleted` = 0)) where `t1`.`IsDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_v3_VillageRegionPopulation`
--

/*!50001 DROP TABLE IF EXISTS `view_v3_VillageRegionPopulation`*/;
/*!50001 DROP VIEW IF EXISTS `view_v3_VillageRegionPopulation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_v3_VillageRegionPopulation` AS select `t1`.`Id` AS `id`,`t1`.`RegionId` AS `RegionId`,`t1`.`VillagePopulationId` AS `VillagePopulationId`,`t1`.`PopulationId` AS `PopulationId`,`t1`.`SFCGB` AS `sfcgb`,`t1`.`SFCZRK` AS `SFCZRK`,`t1`.`SFHJRK` AS `sfhjrk`,`t1`.`SFKGH` AS `sfkgh`,`t1`.`SFLDRK` AS `sfldrk`,`t1`.`IsRemoved` AS `IsRemoved`,`t2`.`Name` AS `name`,`t2`.`IdCard` AS `IdCard`,`t2`.`Gender` AS `gender`,`t2`.`Birthday` AS `birthday`,`t3`.`Contact` AS `Contact`,`t3`.`Education` AS `Education`,`t3`.`MaritalStatus` AS `MaritalStatus`,`t3`.`Nation` AS `Nation`,`t3`.`Political` AS `Political`,`t3`.`SecondaryContact` AS `SecondaryContact`,`t3`.`ReligiousBelief` AS `ReligiousBelief`,`t3`.`ZYSHLY` AS `ZYSHLY`,concat(`t4`.`Province`,`t4`.`City`,`t4`.`County`,`t4`.`Town`,`t4`.`Detail`) AS `CurrentAddress`,concat(`t5`.`Province`,`t5`.`City`,`t5`.`County`,`t5`.`Town`,`t5`.`Detail`) AS `HouseholdAddress`,concat(`t6`.`Province`,`t6`.`City`,`t6`.`County`,`t6`.`Town`,`t6`.`Detail`) AS `NativePlaceAddress` from (((((`dvsv3`.`VillageRegionPopulation` `t1` left join `dvsv3`.`Population` `t2` on(`t2`.`Id` = `t1`.`PopulationId` and `t2`.`IsDeleted` = 0)) left join `dvsv3`.`VillagePopulation` `t3` on(`t3`.`Id` = `t1`.`VillagePopulationId` and `t3`.`IsDeleted` = 0)) left join `dvsv3`.`Address` `t4` on(`t4`.`Id` = `t3`.`CurrentAddressId` and `t4`.`IsDeleted` = 0)) left join `dvsv3`.`Address` `t5` on(`t5`.`Id` = `t3`.`HouseholdAddressId` and `t5`.`IsDeleted` = 0)) left join `dvsv3`.`Address` `t6` on(`t6`.`Id` = `t3`.`NativePlaceAddressId` and `t6`.`IsDeleted` = 0)) where `t1`.`IsDeleted` = 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_v3_user`
--

/*!50001 DROP TABLE IF EXISTS `view_v3_user`*/;
/*!50001 DROP VIEW IF EXISTS `view_v3_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_v3_user` AS select `dvsv3`.`User`.`Id` AS `Id`,`dvsv3`.`User`.`Mobile` AS `Mobile`,`dvsv3`.`User`.`RealName` AS `RealName`,`dvsv3`.`User`.`UserName` AS `UserName`,`dvsv3`.`User`.`NickName` AS `NickName`,`dvsv3`.`User`.`Password` AS `Password`,`dvsv3`.`User`.`PasswordSalt` AS `PasswordSalt`,`dvsv3`.`User`.`IsEnable` AS `IsEnable`,`dvsv3`.`User`.`Gender` AS `Gender`,`dvsv3`.`User`.`Avatar` AS `Avatar`,`dvsv3`.`User`.`LastLoginTime` AS `LastLoginTime`,`dvsv3`.`User`.`IsDeleted` AS `IsDeleted`,`dvsv3`.`User`.`CreatedAt` AS `CreatedAt`,`dvsv3`.`User`.`CreatedBy` AS `CreatedBy`,`dvsv3`.`User`.`UpdatedAt` AS `UpdatedAt`,`dvsv3`.`User`.`UpdatedBy` AS `UpdatedBy`,`dvsv3`.`User`.`Remark` AS `Remark`,`dvsv3`.`User`.`Email` AS `Email`,`dvsv3`.`User`.`PopulationId` AS `PopulationId` from `dvsv3`.`User` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_villageepidemic`
--

/*!50001 DROP TABLE IF EXISTS `view_villageepidemic`*/;
/*!50001 DROP VIEW IF EXISTS `view_villageepidemic`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_villageepidemic` AS select `e`.`id` AS `id`,`e`.`populationId` AS `populationId`,`e`.`sourceOrgCodes` AS `sourceOrgCodes`,`e`.`sourceAddress` AS `sourceAddress`,`e`.`reversalDate` AS `reversalDate`,`e`.`recorDate` AS `recorDate`,`e`.`temperature` AS `temperature`,`e`.`health` AS `health`,`e`.`isFever` AS `isFever`,`e`.`isInAreas` AS `isInAreas`,`e`.`remark` AS `remark`,`e`.`createdBy` AS `createdBy`,`e`.`updatedBy` AS `updatedBy`,`e`.`isDeleted` AS `isDeleted`,`e`.`createdAt` AS `createdAt`,`e`.`updatedAt` AS `updatedAt`,`e`.`year` AS `year`,`e`.`syncId` AS `syncId`,`e`.`syncRes` AS `syncRes`,`e`.`isSync` AS `isSync`,`e`.`syncDate` AS `syncDate`,`m`.`householdId` AS `householdId` from (`VillageEpidemic` `e` left join `VillageHouseCodeMember` `m` on(`m`.`populationId` = `e`.`populationId`)) */;
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

-- Dump completed on 2023-10-10 14:11:35
