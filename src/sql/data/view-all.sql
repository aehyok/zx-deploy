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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `Id` bigint(20) NOT NULL,
  `ProvinceId` bigint(20) NOT NULL,
  `CityId` bigint(20) NOT NULL,
  `CountyId` bigint(20) NOT NULL,
  `VillageId` bigint(20) NOT NULL,
  `Detail` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文字内容',
  `images` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1图文，2视频',
  `videos` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频',
  `status` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '1 TV上线，2运营商审核中，3运营商审核不通过，4用户删除，5业务审核中，6业务审核不通过, 7 下线',
  `sysDeleteReason` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '系统删除的理由',
  `offlineReason` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下线的理由',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `category` tinyint(4) NOT NULL DEFAULT 0 COMMENT '模块类型，1农技达人，2村友圈，3乡村交易',
  `ownerType` tinyint(4) unsigned zerofill NOT NULL DEFAULT 0000 COMMENT '用户类型，1 mpoa,2 app',
  `likeCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '点赞次数',
  `commentCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '回复次数',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Article_copy1`
--

DROP TABLE IF EXISTS `Article_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article_copy1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文字内容',
  `images` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1图文，2视频',
  `videos` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '视频',
  `status` tinyint(1) unsigned NOT NULL DEFAULT 1 COMMENT '1 TV上线，2运营商审核中，3运营商审核不通过，4用户删除，5业务审核中，6业务审核不通过, 7 下线',
  `sysDeleteReason` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '系统删除的理由',
  `offlineReason` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下线的理由',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `category` tinyint(4) NOT NULL DEFAULT 0 COMMENT '模块类型，1农技达人，2村友圈，3乡村交易',
  `ownerType` tinyint(4) unsigned zerofill NOT NULL DEFAULT 0000 COMMENT '用户类型，1 mpoa,2 app',
  `likeCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '点赞次数',
  `commentCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '回复次数',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BP_AssetsManagement`
--

DROP TABLE IF EXISTS `BP_AssetsManagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BP_AssetsManagement` (
  `bh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编号',
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '县',
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '乡镇',
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `areacode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区域编码',
  `idSequences` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区域序列',
  `fareacode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父区域编码',
  `zcmc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产名称',
  `zcjc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产简称',
  `zclb1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产一级类别',
  `zclb2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产二级类别',
  `gjsj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '购建时间',
  `syzk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用状况',
  `syfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用方式',
  `sl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数量',
  `dw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位',
  `ysjzxj` decimal(12,6) DEFAULT NULL COMMENT '原始价值小计',
  `sfnrsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否纳入三资管理',
  `cqgslb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产权归属类别',
  `cqsyr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产权所有人',
  `htnx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合同年限',
  `zcsynx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产使用年限',
  `zcljsyxj` decimal(12,6) DEFAULT NULL COMMENT '资产累计收益小计',
  `fzzdcjtjj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发展壮大村集体经济',
  `pkhzsy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '贫困户总收益',
  `ytzjnx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '已提折旧年限',
  `ljzj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '累计折旧',
  `zmjz` decimal(12,6) DEFAULT NULL COMMENT '账面净值',
  `czfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处置方式',
  `gkqk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公开情况',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `wd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  `jd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'icon名称',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片名称',
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '视频名称',
  `cameraurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '摄像头链接',
  PRIMARY KEY (`bh`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BP_AssetsManagement_beipiao`
--

DROP TABLE IF EXISTS `BP_AssetsManagement_beipiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BP_AssetsManagement_beipiao` (
  `bh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编号',
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '县',
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '乡镇',
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `zcmc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产名称',
  `zcjc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产简称',
  `zclb1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '资产一级类别',
  `zclb2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产二级类别',
  `gjsj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '购建时间',
  `syzk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用状况',
  `syfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用方式',
  `sl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数量',
  `dw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位',
  `ysjzxj` decimal(12,6) DEFAULT NULL COMMENT '原始价值小计',
  `sfnrsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否纳入三资管理',
  `cqgslb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产权归属类别',
  `cqsyr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产权所有人',
  `htnx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合同年限',
  `zcsynx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产使用年限',
  `zcljsyxj` decimal(12,6) DEFAULT NULL COMMENT '资产累计收益小计',
  `fzzdcjtjj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发展壮大村集体经济',
  `pkhzsy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '贫困户总收益',
  `ytzjnx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '已提折旧年限',
  `ljzj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '累计折旧',
  `zmjz` decimal(12,6) DEFAULT NULL COMMENT '账面净值',
  `czfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处置方式',
  `gkqk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公开情况',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `wd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  `jd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'icon名称',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片名称',
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '视频名称',
  `cameraurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '摄像头链接',
  PRIMARY KEY (`bh`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='北票资产管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicArea`
--

DROP TABLE IF EXISTS `BasicArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicArea` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL COMMENT '父id',
  `areaCode` bigint(12) NOT NULL DEFAULT 0 COMMENT '行政编码',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `level` tinyint(4) NOT NULL COMMENT '层级，1:省份 2:地市 3:区县 4:乡镇 5:社区/村',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ipsCompanyId` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `committeeAddress` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '村委详址',
  `villageHeadName` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '村长姓名',
  `villageFileId` int(10) NOT NULL DEFAULT 0 COMMENT '村情文件id',
  `isStatistics` int(1) NOT NULL DEFAULT 1 COMMENT '是否默认统计，默认为1，不统计为2',
  `idSequences` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Id 串',
  `rule` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '村规民约',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `idSequences` (`idSequences`(768))
) ENGINE=InnoDB AUTO_INCREMENT=36438 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='区域';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicAreaEx`
--

DROP TABLE IF EXISTS `BasicAreaEx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicAreaEx` (
  `id` varchar(50) NOT NULL COMMENT 'ID（先用BasicArea的id，后改为GUID）',
  `pid` varchar(50) DEFAULT NULL COMMENT '父行政区域id',
  `areaCode` varchar(12) DEFAULT NULL COMMENT '行政编码',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `ffpCode` varchar(50) DEFAULT NULL COMMENT '防返贫国家平台Code',
  `ffpname` varchar(255) DEFAULT NULL COMMENT '防返贫国家平台名称',
  `level` tinyint(4) DEFAULT NULL COMMENT '层级，1:省份 2:地市 3:区县 4:乡镇 5:社区/村',
  `sequence` int(8) DEFAULT NULL COMMENT '排顺序值，值越小越靠前',
  `isDeleted` tinyint(1) DEFAULT 0,
  `createAt` timestamp NULL DEFAULT current_timestamp(),
  `updateAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `synonyms` longtext DEFAULT NULL COMMENT '同义词',
  `idSequences` varchar(2048) DEFAULT NULL COMMENT 'Id 层级序列串',
  `matchhistory` longtext DEFAULT NULL COMMENT '历史匹配过的值',
  `fullName` varchar(2000) DEFAULT NULL COMMENT '行政区域全称',
  `ffpFullName` varchar(2000) DEFAULT NULL COMMENT '防返贫全称',
  `ffpFullCode` varchar(255) DEFAULT NULL COMMENT '防返贫各级完整code',
  `RegionId` varchar(50) DEFAULT NULL COMMENT '新版行政区域id',
  `RegionIdSequences` varchar(255) DEFAULT NULL COMMENT '新版Id 层级序列串',
  PRIMARY KEY (`id`),
  KEY `index_id` (`id`),
  KEY `index_pid` (`pid`),
  KEY `index_code` (`areaCode`),
  KEY `index_regionid` (`RegionId`),
  KEY `index_idSequences` (`idSequences`(768)),
  KEY `index_regionIdSequences` (`RegionIdSequences`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域扩展表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicAreaEx_ly`
--

DROP TABLE IF EXISTS `BasicAreaEx_ly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicAreaEx_ly` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `bid` int(10) NOT NULL COMMENT 'BasicArea的ID',
  `name` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '名称',
  `lid` int(10) DEFAULT NULL COMMENT '凌源市的ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=699 DEFAULT CHARSET=utf8 COMMENT='凌源环境区域对照表（临时用）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicBannerMedia`
--

DROP TABLE IF EXISTS `BasicBannerMedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicBannerMedia` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `platform` int(10) NOT NULL DEFAULT 0 COMMENT '平台，1:web, 2:村委App, 3:村民公众号, 4:企业App',
  `position` int(10) NOT NULL DEFAULT 0 COMMENT 'banner展示位置',
  `mediaUrl` varchar(2048) NOT NULL DEFAULT '',
  `mediaFileId` int(10) NOT NULL DEFAULT 0 COMMENT '媒体文件id',
  `mediaName` varchar(256) NOT NULL DEFAULT '',
  `jumpUrl` varchar(2048) NOT NULL DEFAULT '',
  `sequence` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COMMENT='banner媒体表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicCategory`
--

DROP TABLE IF EXISTS `BasicCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicCategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `parentId` int(11) NOT NULL DEFAULT 0 COMMENT '上级类目id',
  `categoryName` varchar(255) NOT NULL DEFAULT '' COMMENT '类目名称',
  `categoryDetail` text NOT NULL COMMENT '类目详细描述',
  `categoryPicId` bigint(20) NOT NULL DEFAULT 0 COMMENT '类目图片文件id',
  `categoryPicUrl` varchar(2048) NOT NULL DEFAULT '' COMMENT '类目图片相对地址',
  `sequence` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) DEFAULT 0,
  `updatedBy` int(11) DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0 COMMENT '层级 第一级是1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1159 DEFAULT CHARSET=utf8 COMMENT='类目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicDepartment`
--

DROP TABLE IF EXISTS `BasicDepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicDepartment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '区域id',
  `pid` int(10) NOT NULL COMMENT '父id',
  `name` varchar(256) NOT NULL COMMENT '名称',
  `description` varchar(2048) NOT NULL DEFAULT '' COMMENT '描述',
  `level` tinyint(4) NOT NULL COMMENT '层级，1,2,3,4,5，数字越小，层级越高',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicDictionary`
--

DROP TABLE IF EXISTS `BasicDictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicDictionary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `typeCode` int(10) NOT NULL COMMENT '字典类型编码',
  `name` varchar(256) NOT NULL COMMENT '名称',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `description` varchar(8192) NOT NULL DEFAULT '' COMMENT '描述',
  `iconFileId` int(10) NOT NULL DEFAULT 0 COMMENT '图标文件id',
  `iconFileUrl` varchar(2048) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `code` int(10) NOT NULL DEFAULT 0 COMMENT '字典编码',
  `fontColor` varchar(64) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `remark` varchar(2048) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=utf8 COMMENT='字典选项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicDictionaryType`
--

DROP TABLE IF EXISTS `BasicDictionaryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicDictionaryType` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL COMMENT '名称',
  `code` int(10) NOT NULL COMMENT '类型编码',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` int(10) DEFAULT 0,
  `updatedBy` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicFileTemplate`
--

DROP TABLE IF EXISTS `BasicFileTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicFileTemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` bigint(20) NOT NULL DEFAULT 1 COMMENT '修改人id',
  `code` varchar(1024) NOT NULL COMMENT '模板文件code',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '名称',
  `variables` mediumtext NOT NULL DEFAULT '' COMMENT '模板变量',
  `description` mediumtext NOT NULL DEFAULT '' COMMENT '描述',
  `detail` mediumtext NOT NULL DEFAULT '' COMMENT '内容详情',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '创建人id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='模板文件管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicFlyConf`
--

DROP TABLE IF EXISTS `BasicFlyConf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicFlyConf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '区域id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `regionLongitude` double NOT NULL DEFAULT 0 COMMENT '经度',
  `regionLatitude` double NOT NULL DEFAULT 0 COMMENT '纬度',
  `regionAltitude` double NOT NULL DEFAULT 0 COMMENT '海拔高度',
  `animationDuration` float NOT NULL DEFAULT 0 COMMENT '动画时长秒',
  `headingVal` float NOT NULL DEFAULT 0 COMMENT '飞行姿态heading值',
  `pitchVal` float NOT NULL DEFAULT 0 COMMENT '飞行姿态pitch值',
  `rollVal` float NOT NULL DEFAULT 0 COMMENT '飞行姿态roll值',
  `syncBigData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已同步大数据大屏 0未同步 1同步中 2同步完成',
  `lastSyncAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上次同步时间',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='区域飞行配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicIncome`
--

DROP TABLE IF EXISTS `BasicIncome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicIncome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `yearOfIncome` int(11) NOT NULL DEFAULT 0 COMMENT '年份',
  `incomeOfAvgYear` double NOT NULL DEFAULT 0 COMMENT '年均收入',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='年均收入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicIntegral`
--

DROP TABLE IF EXISTS `BasicIntegral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicIntegral` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '积分项',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '分值',
  `ceiling` int(10) NOT NULL DEFAULT 0 COMMENT '上限值',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='积分管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicIntegralInfo`
--

DROP TABLE IF EXISTS `BasicIntegralInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicIntegralInfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '当前户码Id',
  `item` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '积分项',
  `scoreChange` int(10) NOT NULL DEFAULT 0 COMMENT '分值变化',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userId` int(10) NOT NULL DEFAULT 0 COMMENT '用户Id',
  `tag` int(10) NOT NULL DEFAULT 0 COMMENT '特殊加分情况标记，1=村委发放积分',
  `number` int(10) NOT NULL DEFAULT 1 COMMENT '积分增减次数',
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`)
) ENGINE=InnoDB AUTO_INCREMENT=1104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='积分明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicMapConf`
--

DROP TABLE IF EXISTS `BasicMapConf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicMapConf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '区域id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `mapName` varchar(128) NOT NULL DEFAULT '' COMMENT '地图名称',
  `mapUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '地图url',
  `urlParam` varchar(128) NOT NULL DEFAULT '' COMMENT 'url参数',
  `maxMapZoom` smallint(6) NOT NULL DEFAULT 0 COMMENT '地图最大缩放',
  `minMapZoom` smallint(6) NOT NULL DEFAULT 0 COMMENT '地图最小缩放',
  `maxNativeZoom` smallint(6) NOT NULL DEFAULT 0 COMMENT 'nativeZoom最大缩放',
  `minNativeZoom` smallint(6) NOT NULL DEFAULT 0 COMMENT 'nativeZoom最小缩放',
  `sequence` int(10) NOT NULL DEFAULT 0 COMMENT '顺序值，值越小越靠前',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='地图信息配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicMenu`
--

DROP TABLE IF EXISTS `BasicMenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicMenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pcode` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级编码',
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编码',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '显示名称',
  `uiPath` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '前端路由',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `biggest` int(10) NOT NULL DEFAULT 0 COMMENT '最大权限',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `roleTypeBit` int(10) NOT NULL DEFAULT 0 COMMENT '角色类型，1村委，2政务，4园区',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `pcode` (`pcode`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicMenuExtension`
--

DROP TABLE IF EXISTS `BasicMenuExtension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicMenuExtension` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编码',
  `resetBiggest` int(10) NOT NULL DEFAULT 0 COMMENT '最大权限',
  `roleType` int(10) NOT NULL COMMENT '角色类型，1村委，2政务，4园区',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单扩展表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicMenu_copy1`
--

DROP TABLE IF EXISTS `BasicMenu_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicMenu_copy1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pcode` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '上级编码',
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编码',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '显示名称',
  `uiPath` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '前端路由',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `biggest` int(10) NOT NULL DEFAULT 0 COMMENT '最大权限',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `roleTypeBit` int(10) NOT NULL DEFAULT 0 COMMENT '角色类型，1村委，2政务，4园区',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `pcode` (`pcode`)
) ENGINE=InnoDB AUTO_INCREMENT=436 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicMobileBanner`
--

DROP TABLE IF EXISTS `BasicMobileBanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicMobileBanner` (
  `Id` bigint(20) NOT NULL,
  `AreaId` int(11) NOT NULL DEFAULT 0 COMMENT '区域编号',
  `MediaUrl` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
  `Name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `Url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'url',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  `Size` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '尺寸',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='移动端Banner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicObliquePhotographyConf`
--

DROP TABLE IF EXISTS `BasicObliquePhotographyConf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicObliquePhotographyConf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '区域id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `confName` varchar(128) NOT NULL DEFAULT '' COMMENT '名称',
  `modelUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '建模url',
  `thumbPicUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图url',
  `displayPrecision` float NOT NULL DEFAULT 0 COMMENT '显示精度 0-32',
  `maxMemory` smallint(6) NOT NULL DEFAULT 0 COMMENT '最大内存 1-1024 兆',
  `displayMatrixParam` varchar(255) NOT NULL DEFAULT '' COMMENT '显示矩阵参数',
  `preLoadTile` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否预加载相邻瓦片 0不加载 1加载',
  `enableMobile` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否支持移动端 0不支持 1支持',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `syncBigData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已同步大数据大屏 0未同步 1同步中 2同步完成',
  `lastSyncAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上次同步时间',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='倾斜摄影配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicPlatformConf`
--

DROP TABLE IF EXISTS `BasicPlatformConf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicPlatformConf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `regionName` varchar(128) NOT NULL DEFAULT '' COMMENT '区域名称',
  `regionCode` varchar(128) NOT NULL DEFAULT '' COMMENT '区域编码',
  `regionLongitude` double NOT NULL DEFAULT 0 COMMENT '经度',
  `regionLatitude` double NOT NULL DEFAULT 0 COMMENT '纬度',
  `platformName` varchar(128) NOT NULL DEFAULT '' COMMENT '平台名称',
  `platformLogo` varchar(128) NOT NULL DEFAULT '' COMMENT '平台logo',
  `subLogo` varchar(128) NOT NULL DEFAULT '' COMMENT '子系统logo',
  `surveyName` varchar(128) NOT NULL DEFAULT '' COMMENT '平台概况名称',
  `surveyAbstract` varchar(255) NOT NULL DEFAULT '' COMMENT '平台概况内容摘要',
  `surveyDetail` mediumtext DEFAULT NULL COMMENT '平台概况内容详情',
  `shortRegionName` varchar(128) NOT NULL DEFAULT '' COMMENT '区域简称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='平台信息配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicRole`
--

DROP TABLE IF EXISTS `BasicRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicRole` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL COMMENT '名称',
  `description` varchar(2048) NOT NULL DEFAULT '' COMMENT '描述',
  `sequence` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `dataAccess` varchar(256) NOT NULL DEFAULT '' COMMENT '数据权限all,group,self',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` tinyint(2) NOT NULL DEFAULT 2 COMMENT '公众1村委2政务3企业4',
  `code` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicRoleAuthority`
--

DROP TABLE IF EXISTS `BasicRoleAuthority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicRoleAuthority` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `roleId` int(10) NOT NULL DEFAULT 0 COMMENT '角色id',
  `menuCode` varchar(256) NOT NULL COMMENT '菜单编码',
  `action` int(10) NOT NULL DEFAULT 0 COMMENT '权限值',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42028 DEFAULT CHARSET=utf8 COMMENT='角色权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicSatePhotographyConf`
--

DROP TABLE IF EXISTS `BasicSatePhotographyConf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicSatePhotographyConf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '区域id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `confName` varchar(128) NOT NULL DEFAULT '' COMMENT '名称',
  `satePhotographyUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '卫星影像url',
  `maxLevel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '最大级别',
  `minLevel` tinyint(4) NOT NULL DEFAULT 0 COMMENT '最小级别',
  `tileServerParam` varchar(255) NOT NULL DEFAULT '' COMMENT '瓦片服务器参数',
  `displayRegionParam` varchar(255) NOT NULL DEFAULT '' COMMENT '显示区域参数',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `syncBigData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已同步大数据大屏 0未同步 1同步中 2同步完成',
  `lastSyncAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上次同步时间',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='卫星影像配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicScreenConf`
--

DROP TABLE IF EXISTS `BasicScreenConf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicScreenConf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '区域id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `screenName` varchar(128) NOT NULL DEFAULT '' COMMENT '屏幕名称',
  `screenLogo` varchar(255) NOT NULL DEFAULT '' COMMENT '屏幕logo url',
  `mapInitParam` varchar(255) NOT NULL DEFAULT '' COMMENT '地图初始化参数',
  `mapType` tinyint(4) NOT NULL DEFAULT 0 COMMENT '地图类型 x维',
  `maxMapZoom` smallint(6) NOT NULL DEFAULT 0 COMMENT '地图最大缩放',
  `minMapZoom` smallint(6) NOT NULL DEFAULT 0 COMMENT '地图最小缩放',
  `satePicUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '卫星影像url',
  `maxSatePicLevel` smallint(6) NOT NULL DEFAULT 0 COMMENT '卫星影像最大级别',
  `minSatePicLevel` smallint(6) NOT NULL DEFAULT 0 COMMENT '卫星影像最小级别',
  `roadPicUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '路网图层url',
  `maxRoadPic` smallint(6) NOT NULL DEFAULT 0 COMMENT '路网最大图层',
  `minRoadPic` smallint(6) NOT NULL DEFAULT 0 COMMENT '路网最小图层',
  `highPicUrl` varchar(255) NOT NULL DEFAULT '' COMMENT '高程url',
  `showSatePic` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否显示卫星影像 0不显示 1显示',
  `showRoadPic` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否显示路网 0不显示 1显示',
  `showHighPic` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否显示高程 0不显示 1显示',
  `showObliquePic` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否显示倾斜摄影 0不显示 1显示',
  `tileServerParam` varchar(255) NOT NULL DEFAULT '' COMMENT '瓦片服务器参数',
  `displayRegionParam` varchar(255) NOT NULL DEFAULT '' COMMENT '显示区域参数',
  `syncBigData` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已同步大数据大屏 0未同步 1同步中 2同步完成',
  `lastSyncAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上次同步时间',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大屏基础信息配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicServiceInformation`
--

DROP TABLE IF EXISTS `BasicServiceInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicServiceInformation` (
  `Id` bigint(20) NOT NULL,
  `ServiceType` int(11) NOT NULL DEFAULT 0 COMMENT '服务类型',
  `Name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `ConfigType` int(11) NOT NULL DEFAULT 0 COMMENT '配置类型',
  `ContentUrl` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '二维码/url',
  `IsSkipDetails` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否跳过详情',
  `MediaUrl` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务图标',
  `Introduce` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务介绍',
  `Explain` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '补充说明',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  `WeChatID` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信小程序id',
  `AreaId` int(11) NOT NULL DEFAULT 0 COMMENT '区域id',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='服务指南';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicSystemParameter`
--

DROP TABLE IF EXISTS `BasicSystemParameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicSystemParameter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `paramName` varchar(256) NOT NULL DEFAULT '',
  `paramValue` varchar(2048) NOT NULL DEFAULT '',
  `paramDesc` varchar(2048) NOT NULL DEFAULT '',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `paramName` (`paramName`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='系统参数表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicUser`
--

DROP TABLE IF EXISTS `BasicUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicUser` (
  `id` int(10) NOT NULL DEFAULT 0,
  `account` varchar(256) NOT NULL COMMENT '用户账号，兼容微信id',
  `password` varchar(256) NOT NULL,
  `nickName` varchar(256) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT 0 COMMENT '男性1，女性2，未知0',
  `mobile` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `address` varchar(2048) NOT NULL DEFAULT '' COMMENT '地址',
  `areaId` int(10) NOT NULL COMMENT '所属区域',
  `departmentIds` varchar(256) NOT NULL DEFAULT '' COMMENT '所属部门Id',
  `roleIds` varchar(64) NOT NULL DEFAULT '0' COMMENT '角色id',
  `type` tinyint(2) NOT NULL COMMENT '公众1村委2政务3企业4',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '户籍人口表Id',
  `isAuth` int(10) NOT NULL DEFAULT 0 COMMENT '公众用户是否已认证，0未审核， 1待审核，2审核通过，3审核不通过',
  `isLeader` tinyint(2) NOT NULL DEFAULT 0 COMMENT '是否主管人员',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `loginedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parkAreaId` bigint(20) NOT NULL DEFAULT 0 COMMENT '园区id',
  `portraitFileId` bigint(20) NOT NULL DEFAULT 0 COMMENT '头像id',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `wxopenid` varchar(256) NOT NULL COMMENT '小程序openid',
  `description` varchar(2048) NOT NULL DEFAULT '' COMMENT '描述/职务',
  `isGrid` int(10) NOT NULL DEFAULT 0 COMMENT '是否网格员，0否， 1一级网格员，2二级网格员(网格长)',
  `handWrittingSign` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手工签名',
  `userKey` varchar(256) NOT NULL DEFAULT '' COMMENT '用户登录Key',
  `IsSyncMobile` bit(1) NOT NULL DEFAULT b'0' COMMENT '同步手机号状态',
  `wxUnionId` varchar(256) NOT NULL DEFAULT '' COMMENT '微信用户的unionid',
  `createdBy` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BasicUserLogin`
--

DROP TABLE IF EXISTS `BasicUserLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BasicUserLogin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(10) NOT NULL DEFAULT 0 COMMENT '用户Id',
  `pushId` varchar(1024) DEFAULT '' COMMENT '极光推动别名',
  `manufacturer` varchar(50) DEFAULT '' COMMENT '手机厂商名称',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `miniOpenId` varchar(50) DEFAULT NULL COMMENT '小程序openId',
  `urgentTplMsgAccept` tinyint(1) NOT NULL DEFAULT 0 COMMENT '应急发布订阅消息是否接受推送',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='用户登录信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `Id` bigint(20) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ParentId` bigint(20) NOT NULL,
  `PictureUrl` varchar(1024) NOT NULL,
  `Sequence` int(11) NOT NULL,
  `Type` tinyint(4) NOT NULL,
  `Remark` text NOT NULL,
  `IdSequences` varchar(1024) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Chat`
--

DROP TABLE IF EXISTS `Chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Chat` (
  `Id` bigint(20) NOT NULL,
  `Type` int(11) DEFAULT NULL,
  `UnreadMessage` bit(1) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL,
  `IsDeleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ChatMessage`
--

DROP TABLE IF EXISTS `ChatMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChatMessage` (
  `Id` bigint(20) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ChatId` bigint(20) NOT NULL,
  `Type` int(11) NOT NULL,
  `Content` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Unread` bit(1) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ChatUser`
--

DROP TABLE IF EXISTS `ChatUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChatUser` (
  `Id` bigint(20) NOT NULL,
  `ChatId` bigint(20) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL,
  `IsDeleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataHouseholdStatus`
--

DROP TABLE IF EXISTS `CollectDataHouseholdStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataHouseholdStatus` (
  `id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户id',
  `areaid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属的组织机构ID',
  `status` int(11) DEFAULT 1 COMMENT '状态 0 待提交(审核不通过、主动撤回) 1 采集完成(已上报、待审批) 2 审核通过  审批不通过状态由2转为0',
  `reason` varchar(1024) CHARACTER SET utf8 DEFAULT NULL COMMENT '不通过原因',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '创建人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `robotStatus` int(11) DEFAULT 0 COMMENT '机器人同步状态0 未同步 1 正在同步 200成功 500失败',
  `robotDescribe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '机器人同步返回结果描述',
  `type` int(11) DEFAULT 1 COMMENT '类型，默认为1第一次采集，2为202305第二次户采集,3为202309第三次采集',
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chid_nf` (`hid`,`nf`,`type`) USING BTREE,
  KEY `areaid_index` (`areaid`) USING BTREE,
  KEY `hid_index` (`hid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='采集数据户的状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataHouseholdSummary`
--

DROP TABLE IF EXISTS `CollectDataHouseholdSummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataHouseholdSummary` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属区域ID',
  `total` int(11) NOT NULL DEFAULT 0 COMMENT '总户数',
  `tobeSubmitted` int(11) NOT NULL DEFAULT 0 COMMENT '待提交',
  `submitted` int(11) NOT NULL DEFAULT 0 COMMENT '已提交(待审批)',
  `pass` int(11) NOT NULL DEFAULT 0 COMMENT '审批通过',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '创建人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `type` int(11) DEFAULT 1 COMMENT '类型，默认为1第一次采集，2为202305第二次户采集 3第三次',
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='采集数据户统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataStatisticTag`
--

DROP TABLE IF EXISTS `CollectDataStatisticTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataStatisticTag` (
  `id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属的组织机构ID',
  `tagName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标记名称 村标识cun 户标识hu',
  `tagStatus` int(11) NOT NULL DEFAULT 0 COMMENT '标识状态 0数据已修改 1统计计算中 2计算完成\r\n业务数据修改会把状态改为0',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '创建人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `robotStatus` int(11) DEFAULT 0 COMMENT '机器人同步状态0 未同步 1 正在同步 200成功 500失败',
  `robotDescribe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '机器人同步返回结果描述',
  `robotMode` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areaid_tag` (`areaid`,`tagName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='数据统计标识状态表，业务数据修改时会更新此表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataStatus`
--

DROP TABLE IF EXISTS `CollectDataStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataStatus` (
  `id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '表单名称，不能重名',
  `objectid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对应表业务表的ID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户ID,户对应的记录需插入',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属的组织机构ID',
  `needreport` int(11) DEFAULT 1 COMMENT '是否需要填报 0 否 1 是',
  `reason` varchar(1024) CHARACTER SET utf8 DEFAULT NULL COMMENT '不通过原因',
  `status` int(11) DEFAULT 0 COMMENT '上报状态 0 待上报 1 已上报 2 审核通过 3 不通过',
  `writeStatus` int(11) DEFAULT 1 COMMENT '填报状态 1已填写 2 填写完成 3已退回',
  `data` text CHARACTER SET utf8 DEFAULT NULL COMMENT '汇总后的JSON字符串(数组)',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '创建人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `robotStatus` int(11) DEFAULT 0 COMMENT '机器人同步状态0 未同步 1 正在执行 200成功 500失败',
  `robotDescribe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '机器人同步返回结果描述',
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `name_objectId` (`objectid`,`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='采集数据状态记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataSumTablemMetaData`
--

DROP TABLE IF EXISTS `CollectDataSumTablemMetaData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataSumTablemMetaData` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumtablename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '统计表名称(不可重复）',
  `titlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '显示名称',
  `definedata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '定义元数据',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对应的行政区域id',
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '命名空间',
  PRIMARY KEY (`id`,`sumtablename`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='录入模型统计表设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataSumTablemMetaData_back`
--

DROP TABLE IF EXISTS `CollectDataSumTablemMetaData_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataSumTablemMetaData_back` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumtablename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '统计表名称(不可重复）',
  `titlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '显示名称',
  `definedata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '定义元数据',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对应的行政区域id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataSummary`
--

DROP TABLE IF EXISTS `CollectDataSummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataSummary` (
  `id` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '表单名称，不能重名',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) DEFAULT NULL COMMENT '所属的组织机构ID',
  `needreport` int(11) DEFAULT 1 COMMENT '是否需要填报 0 否 1 是',
  `status` int(11) DEFAULT 0 COMMENT '上报状态 0 待上报 1 已上报 2 审核通过 3 不通过',
  `reason` varchar(1024) DEFAULT NULL COMMENT '不通过原因',
  `data` text DEFAULT '' COMMENT '金额等数据汇总后的JSON字符串(数组)',
  `verify` text DEFAULT '' COMMENT '逻辑校验结果JSON字符串',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `auditstatus` int(11) DEFAULT 0 COMMENT '审核状态 0 待审核 1 审核通过 2 审核不通过',
  `funddata` text DEFAULT '' COMMENT '项目自己汇总后的JSON字符串(数组)',
  `isWrite` int(4) DEFAULT 0 COMMENT '是否填报，默认为0大于0为已填报',
  PRIMARY KEY (`id`),
  KEY `dataindex` (`areaid`,`nf`,`name`) USING BTREE,
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采集数据汇总表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataSummaryLog`
--

DROP TABLE IF EXISTS `CollectDataSummaryLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataSummaryLog` (
  `id` varchar(50) NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) DEFAULT NULL COMMENT '所属的组织机构ID',
  `cid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id(采集二期添加)',
  `collectid` varchar(50) DEFAULT NULL COMMENT '采集数据汇总表id',
  `logtype` int(11) DEFAULT 0 COMMENT '日志类型 1 操作日志 2 上报日志 3 审核日志 4 撤销日志    10 二期村上报日志',
  `reportby` int(11) DEFAULT 0 COMMENT '上报人',
  `reporttime` datetime DEFAULT current_timestamp() COMMENT '上报时间',
  `remark` varchar(1024) DEFAULT NULL COMMENT '上报备注',
  `status` int(11) DEFAULT 0 COMMENT '上报状态 0 待上报 1 已上报 2 审核通过 3 不通过',
  `auditby` int(11) DEFAULT 0 COMMENT '审核人',
  `audittime` datetime DEFAULT current_timestamp() COMMENT '审核时间',
  `reason` varchar(1024) DEFAULT NULL COMMENT '不通过原因',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `collectid` (`collectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上报审核日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectDataTask`
--

DROP TABLE IF EXISTS `CollectDataTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectDataTask` (
  `id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `taskId` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务ID',
  `taskName` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '任务名称',
  `taskType` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务类型',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态 1 可用 2 不可用',
  `startDate` timestamp NULL DEFAULT NULL COMMENT '开始日期',
  `endData` timestamp NULL DEFAULT NULL COMMENT '结束日期',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '创建人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='数据采集任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectFormGroupMetaData`
--

DROP TABLE IF EXISTS `CollectFormGroupMetaData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectFormGroupMetaData` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '组名称(不可重复）',
  `titlename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '显示名称',
  `definedata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '定义元数据',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对应的行政区域id',
  PRIMARY KEY (`id`,`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='录入模型分组设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectFormMetaData`
--

DROP TABLE IF EXISTS `CollectFormMetaData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectFormMetaData` (
  `id` bigint(50) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '表单名称，不能重名',
  `inputDefine` longtext CHARACTER SET utf8 DEFAULT NULL COMMENT '表单结构定义，JSON字符串(数组)',
  `childrenInputDefine` text CHARACTER SET utf8 DEFAULT NULL COMMENT '子表单，JSON字符串(数组)',
  `getInitSQL` text CHARACTER SET utf8 DEFAULT NULL COMMENT '初始化SQL',
  `getDataSQL` text CHARACTER SET utf8 DEFAULT NULL COMMENT '获取数据SQL',
  `behindSQL` text CHARACTER SET utf8 DEFAULT NULL COMMENT '后置执行的SQL',
  `writeTables` text CHARACTER SET utf8 DEFAULT NULL COMMENT '写入数据表JSON字符串(数组)',
  `tableDefine` text CHARACTER SET utf8 DEFAULT NULL COMMENT '表结构定义',
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT 1 COMMENT '状态，1正常2停用',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `manualRTF` longtext CHARACTER SET utf8 DEFAULT NULL COMMENT '使用说明的RTF格式数据',
  `manualPDF` longblob DEFAULT NULL COMMENT '使用说明的PDF格式数据',
  `bizType` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '本模型对应的业务类型',
  UNIQUE KEY `unique-name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectFormMetaData_copy1`
--

DROP TABLE IF EXISTS `CollectFormMetaData_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectFormMetaData_copy1` (
  `id` bigint(50) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '表单名称，不能重名',
  `inputDefine` longtext CHARACTER SET utf8 DEFAULT NULL COMMENT '表单结构定义，JSON字符串(数组)',
  `childrenInputDefine` text CHARACTER SET utf8 DEFAULT NULL COMMENT '子表单，JSON字符串(数组)',
  `getInitSQL` text CHARACTER SET utf8 DEFAULT NULL COMMENT '初始化SQL',
  `getDataSQL` text CHARACTER SET utf8 DEFAULT NULL COMMENT '获取数据SQL',
  `behindSQL` text CHARACTER SET utf8 DEFAULT NULL COMMENT '后置执行的SQL',
  `writeTables` text CHARACTER SET utf8 DEFAULT NULL COMMENT '写入数据表JSON字符串(数组)',
  `tableDefine` text CHARACTER SET utf8 DEFAULT NULL COMMENT '表结构定义',
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `status` int(11) DEFAULT 1 COMMENT '状态，1正常2停用',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `manualRTF` longtext CHARACTER SET utf8 DEFAULT NULL COMMENT '使用说明的RTF格式数据',
  `manualPDF` longblob DEFAULT NULL COMMENT '使用说明的PDF格式数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectHistory`
--

DROP TABLE IF EXISTS `CollectHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectHistory` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `formName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表单名称',
  `objectid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对应表业务表的ID',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '操作类型 create、update、delete',
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON数据内容',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '创建人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='采集修改历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CollectivePropertyCompany`
--

DROP TABLE IF EXISTS `CollectivePropertyCompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CollectivePropertyCompany` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `propertyId` varchar(255) NOT NULL DEFAULT '' COMMENT '公共设施(GISCollectiveProperty)的id',
  `companyId` varchar(255) NOT NULL DEFAULT '' COMMENT '责任公司(CompanyInfo)的id',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='公共设施的责任单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Id` bigint(20) NOT NULL,
  `AreaId` int(11) NOT NULL,
  `Name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Website` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `UnifiedCode` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `VRUrl` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `LegalPerson` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ContactPerson` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Mobile` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ContactMobile` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `AddressId` bigint(20) NOT NULL,
  `MediaUrls` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Remark` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Longitude` decimal(21,9) NOT NULL,
  `Latitude` decimal(21,9) NOT NULL,
  `State` int(11) NOT NULL,
  `QRCode` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `QRCodeFileId` int(11) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  `Altitude` decimal(21,9) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyBusiness`
--

DROP TABLE IF EXISTS `CompanyBusiness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyBusiness` (
  `Id` bigint(20) NOT NULL,
  `CompanyId` bigint(20) NOT NULL,
  `BusinessScope` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `SalesArea` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Links` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Remark` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `MaterielSource` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `FactoryBuildYear` int(11) NOT NULL,
  `HasQSLicense` bit(1) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业经营信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyFeedback`
--

DROP TABLE IF EXISTS `CompanyFeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyFeedback` (
  `Id` bigint(20) NOT NULL,
  `CompanyId` bigint(20) NOT NULL,
  `CategoryId` bigint(20) NOT NULL,
  `ContentText` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ContentVoice` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `MediaUrls` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AreaId` int(11) NOT NULL,
  `FeedbackUserId` int(11) NOT NULL,
  `FeedbackDate` datetime NOT NULL,
  `ReplyUserId` int(11) NOT NULL,
  `ReplyDate` datetime NOT NULL,
  `ReplyContent` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ReplyMediaUrls` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyMsgTip`
--

DROP TABLE IF EXISTS `CompanyMsgTip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyMsgTip` (
  `Id` bigint(20) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `Time` datetime DEFAULT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='消息提示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyProduct`
--

DROP TABLE IF EXISTS `CompanyProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyProduct` (
  `Id` bigint(20) NOT NULL,
  `CompanyId` bigint(20) NOT NULL,
  `ProductName` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CategoryId` bigint(20) NOT NULL,
  `Quantity` decimal(20,16) NOT NULL,
  `UnitPrice` decimal(20,16) NOT NULL DEFAULT 0.0000000000000000 COMMENT '单价',
  `ClosingDate` datetime NOT NULL,
  `PublishUserId` int(11) NOT NULL,
  `MediaUrls` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ProductDetails` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  `AreaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域编号',
  `ContactPhone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `ProductType` int(10) NOT NULL DEFAULT 0 COMMENT '产品类型',
  `AuditStatus` int(10) NOT NULL DEFAULT 0 COMMENT '审核状态',
  `IsAdminDelete` bit(1) NOT NULL DEFAULT b'0' COMMENT '村委端是否删除',
  `UnitName` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位名称',
  `SalesStatus` int(11) NOT NULL DEFAULT 0 COMMENT '销售状态',
  `CollectionURL` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收款图片url',
  `ClicksNumber` bigint(20) NOT NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyProductMessage`
--

DROP TABLE IF EXISTS `CompanyProductMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyProductMessage` (
  `Id` bigint(20) NOT NULL,
  `CompanyProductId` bigint(20) NOT NULL,
  `ContactMobile` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Message` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `MessageUserId` int(11) NOT NULL,
  `MessageDate` datetime NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业产品留言';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyRecruit`
--

DROP TABLE IF EXISTS `CompanyRecruit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyRecruit` (
  `Id` bigint(20) NOT NULL,
  `RecruitName` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CompanyId` bigint(20) NOT NULL,
  `ContactPerson` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ContactMobile` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `PublishUserId` int(11) NOT NULL,
  `PublishDate` datetime NOT NULL,
  `State` int(11) NOT NULL,
  `AbilityRequire` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Salary` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `WorkingPlace` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `OtherDescriptions` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `OfflineReason` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业招工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyServices`
--

DROP TABLE IF EXISTS `CompanyServices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyServices` (
  `Id` bigint(20) NOT NULL,
  `CompanyId` bigint(20) NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CategoryId` bigint(20) NOT NULL,
  `UnitPrice` decimal(20,16) NOT NULL,
  `ServiceTime` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `PublishUserId` int(11) NOT NULL,
  `PublishDate` datetime NOT NULL,
  `MediaUrls` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Details` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanySign`
--

DROP TABLE IF EXISTS `CompanySign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanySign` (
  `Id` bigint(20) NOT NULL,
  `CompanyId` bigint(20) NOT NULL,
  `Remark` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Point` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `PointItems` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业标记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompanyTag`
--

DROP TABLE IF EXISTS `CompanyTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompanyTag` (
  `Id` bigint(20) NOT NULL,
  `CompanyId` bigint(20) NOT NULL,
  `TagId` int(11) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='企业标签';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConfigureCache`
--

DROP TABLE IF EXISTS `ConfigureCache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConfigureCache` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缓存对象名称 from、guideline、reftable',
  `isDevelop` int(11) DEFAULT 1 COMMENT '是否开发环境 1开发环境0正式环境',
  `updatedAt` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='配置缓存表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsArticle`
--

DROP TABLE IF EXISTS `ConsArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsArticle` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '行政代码Id',
  `title` varchar(2048) NOT NULL DEFAULT '' COMMENT '标题',
  `descrition` varchar(1024) DEFAULT NULL COMMENT '副标题',
  `content` longtext DEFAULT NULL COMMENT '内容详情',
  `articleType` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1图文，2视频，3图片',
  `imageIds` varchar(1024) DEFAULT NULL COMMENT '图片Ids',
  `imageUrls` varchar(2048) DEFAULT NULL COMMENT '图片地址',
  `audioUrls` varchar(2048) DEFAULT NULL COMMENT '音频地址',
  `videoUrls` varchar(2048) DEFAULT NULL COMMENT '视频地址',
  `top` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否置顶，1是，0否',
  `likeCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '点赞次数',
  `commentCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '评论次数',
  `viewCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '浏览数',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0 草稿，1 已发布，2 撤回',
  `category` tinyint(4) NOT NULL DEFAULT 0 COMMENT '模块类型，1农技指导，2村友圈，3求职，4招聘',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `subCategory` varchar(50) NOT NULL COMMENT '文章类别',
  `offlineReason` varchar(512) NOT NULL DEFAULT '' COMMENT '下线原因',
  `topDateTime` timestamp NULL DEFAULT NULL COMMENT '置顶时间',
  `AuditStatus` int(10) NOT NULL DEFAULT 0 COMMENT '审核状态',
  `IsAdminDelete` bit(1) NOT NULL DEFAULT b'0' COMMENT '村委端是否删除',
  `SalesStatus` int(11) NOT NULL DEFAULT 0 COMMENT '销售状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsArticleComment`
--

DROP TABLE IF EXISTS `ConsArticleComment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsArticleComment` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `articleId` bigint(20) NOT NULL DEFAULT 0,
  `lastCommentId` bigint(20) NOT NULL DEFAULT 0 COMMENT '上一条评论Id',
  `content` varchar(2048) DEFAULT NULL COMMENT '评论内容',
  `top` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否置顶，1是，0否',
  `likeCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '赞数',
  `unLikeCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '踩数',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0 未审核，1 已审核',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `articleId` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章评论记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsArticleLike`
--

DROP TABLE IF EXISTS `ConsArticleLike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsArticleLike` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `articleId` bigint(20) NOT NULL DEFAULT 0,
  `likeType` tinyint(4) NOT NULL DEFAULT 1 COMMENT '点赞类型，1点赞，2踩',
  `articleType` tinyint(4) NOT NULL DEFAULT 1 COMMENT '文章类型 1文章类，2评论类',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0 未审核，1 已审核',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `articleId` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章点赞记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsInfoPublic`
--

DROP TABLE IF EXISTS `ConsInfoPublic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsInfoPublic` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `messageName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `messageText` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `type` tinyint(4) NOT NULL COMMENT '1三务公开、2党建宣传、3精神文明、4便民服务',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主题图片',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1有效（启用），0无效（禁用）',
  `viewcnt` int(11) DEFAULT 0 COMMENT '浏览次数',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createdByDeptId` int(11) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) DEFAULT NULL,
  `areaId` int(10) DEFAULT 0 COMMENT '创建区域',
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发布人员',
  `pinTopExpireAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '置顶截止日期',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `pinTopExpireAt` (`pinTopExpireAt`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsPhotoAnywhere`
--

DROP TABLE IF EXISTS `ConsPhotoAnywhere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsPhotoAnywhere` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户id，匿名时为空',
  `type` varchar(50) NOT NULL COMMENT '类型，垃圾处理、环境污染、饮水问题等',
  `descript` varchar(2048) NOT NULL COMMENT '问题描述',
  `imageIds` longtext DEFAULT NULL COMMENT '图片ID',
  `videoIds` longtext DEFAULT NULL COMMENT '视频ID',
  `isReply` tinyint(2) NOT NULL DEFAULT 1 COMMENT '是否回复 1 待回复，2 已回复',
  `replyDesc` varchar(1024) DEFAULT NULL COMMENT '回复文字',
  `replyImageIds` longtext DEFAULT NULL COMMENT '回复图片',
  `replyDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '回复时间',
  `replyer` varchar(20) DEFAULT NULL COMMENT '回复人',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) DEFAULT NULL,
  `createdByDeptId` int(11) NOT NULL DEFAULT 0,
  `address` varchar(200) DEFAULT NULL COMMENT '事发地址',
  `longitude` decimal(17,14) NOT NULL DEFAULT 0.00000000000000 COMMENT '经度',
  `latitude` decimal(17,14) NOT NULL DEFAULT 0.00000000000000 COMMENT '纬度',
  `syncId` varchar(255) DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '行政代码Id',
  `isAnonymous` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否匿名 1：是，0：否',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `userId` (`userId`),
  KEY `isReply` (`isReply`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 COMMENT='随手拍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsProduceSale`
--

DROP TABLE IF EXISTS `ConsProduceSale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsProduceSale` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL COMMENT '农产品Id',
  `name` varchar(100) NOT NULL COMMENT '农产品名称',
  `number` decimal(10,0) NOT NULL COMMENT '数量',
  `price` decimal(10,2) NOT NULL COMMENT '价格',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `expDate` datetime NOT NULL COMMENT '截至日期',
  `viewcnt` int(11) DEFAULT 0 COMMENT '浏览次数',
  `publishId` int(11) DEFAULT 0,
  `publisher` varchar(255) NOT NULL COMMENT '发布人员',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `createdBy` int(11) DEFAULT NULL COMMENT '创建者',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdByDeptId` int(11) NOT NULL DEFAULT 0,
  `updatedBy` int(11) DEFAULT NULL,
  `createdUserType` tinyint(2) NOT NULL DEFAULT 2 COMMENT '1:公众, 2:村委, 3:政务, 4:企业',
  `parkAreaId` int(10) NOT NULL DEFAULT 0 COMMENT '园区id',
  `AuditStatus` int(10) NOT NULL DEFAULT 0 COMMENT '审核状态',
  `IsAdminDelete` bit(1) NOT NULL DEFAULT b'0' COMMENT '村委端是否删除',
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  KEY `publishId` (`publishId`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsServiceChannel`
--

DROP TABLE IF EXISTS `ConsServiceChannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsServiceChannel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '名称',
  `description` varchar(2048) DEFAULT NULL COMMENT '介绍',
  `remark` varchar(2048) DEFAULT NULL COMMENT '补充说明',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `url` varchar(100) NOT NULL COMMENT 'URL',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AreaId` int(11) NOT NULL DEFAULT 0 COMMENT '区域id',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsServiceGuide`
--

DROP TABLE IF EXISTS `ConsServiceGuide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsServiceGuide` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `condition` varchar(2048) DEFAULT '' COMMENT '受理条件',
  `material` varchar(2048) DEFAULT NULL COMMENT '准备材料',
  `description` varchar(2048) DEFAULT '' COMMENT '办理信息',
  `step` varchar(2048) DEFAULT NULL COMMENT '办理流程',
  `stepImages` longtext DEFAULT NULL COMMENT '办事流程图片',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `url` varchar(100) DEFAULT NULL COMMENT 'URL',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) DEFAULT NULL,
  `AreaId` int(11) NOT NULL DEFAULT 0 COMMENT '区域id',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsTruthEvaluate`
--

DROP TABLE IF EXISTS `ConsTruthEvaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsTruthEvaluate` (
  `Id` bigint(20) NOT NULL,
  `AreaId` int(11) NOT NULL DEFAULT 0 COMMENT '区域编号',
  `ContradictionType` int(11) NOT NULL DEFAULT 0 COMMENT '矛盾类型',
  `ContentText` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容 文本',
  `ContentVoice` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容 语音',
  `MediaImgUrls` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体文件 图片',
  `MediaVideoUrls` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体文件 视频',
  `HandlingStatus` int(11) NOT NULL DEFAULT 0 COMMENT '办理状态',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='有理大家评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsTruthEvaluateDetails`
--

DROP TABLE IF EXISTS `ConsTruthEvaluateDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsTruthEvaluateDetails` (
  `Id` bigint(20) NOT NULL,
  `ParentId` bigint(20) NOT NULL DEFAULT 0 COMMENT '父级id',
  `ContentText` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容 文本',
  `ContentVoice` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容 语音',
  `MediaImgUrls` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体文件 图片',
  `MediaVideoUrls` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体文件 视频',
  `HandlingStatus` int(11) NOT NULL DEFAULT 0 COMMENT '办理状态',
  `HandlingType` int(11) NOT NULL DEFAULT 0 COMMENT '办理类型',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='有理大家评 子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsUrgentPublish`
--

DROP TABLE IF EXISTS `ConsUrgentPublish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsUrgentPublish` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '行政代码Id',
  `title` varchar(512) NOT NULL DEFAULT '' COMMENT '标题',
  `descrition` varchar(2048) NOT NULL DEFAULT '' COMMENT '预警说明',
  `signal` varchar(512) NOT NULL DEFAULT '' COMMENT '预警信号',
  `publishTime` timestamp NULL DEFAULT NULL COMMENT '预警发布时间',
  `startTime` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `endTime` timestamp NULL DEFAULT NULL COMMENT '有效时间',
  `content` longtext DEFAULT NULL COMMENT '内容详情',
  `status` int(10) NOT NULL DEFAULT 0 COMMENT '状态 0 草稿，1 已发布，2 撤回',
  `imageUrl` varchar(1024) NOT NULL DEFAULT '' COMMENT '图片地址',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `top` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否置顶，1是，0否',
  `topDateTime` timestamp NULL DEFAULT NULL COMMENT '指定时间',
  `CreatedByDeptId` int(10) NOT NULL DEFAULT 0 COMMENT '部门Id',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `viewCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '浏览数',
  `viewPeopleCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '浏览人次',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='应急发布表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsUrgentPublishViewRecord`
--

DROP TABLE IF EXISTS `ConsUrgentPublishViewRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsUrgentPublishViewRecord` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `publishId` int(10) NOT NULL DEFAULT 0 COMMENT '应急发布文章Id',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `publishId` (`publishId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应急发布浏览记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ConsWorkAccount`
--

DROP TABLE IF EXISTS `ConsWorkAccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsWorkAccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL COMMENT '用户id，匿名时为空',
  `type` varchar(50) NOT NULL COMMENT '类型，垃圾处理、环境污染、饮水问题等',
  `descript` varchar(2048) NOT NULL COMMENT '问题描述',
  `imageIds` longtext DEFAULT NULL COMMENT '图片ID',
  `videoIds` longtext DEFAULT NULL COMMENT '视频ID',
  `isReply` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否回复 1 待回复，2 已回复',
  `replyDesc` varchar(1024) DEFAULT NULL COMMENT '回复文字',
  `replyImageIds` longtext DEFAULT NULL COMMENT '回复图片',
  `replyDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '回复时间',
  `replyer` varchar(20) DEFAULT NULL COMMENT '回复人',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) DEFAULT NULL,
  `createdByDeptId` int(11) NOT NULL DEFAULT 0,
  `address` varchar(200) DEFAULT NULL COMMENT '事发地址',
  `longitude` decimal(17,14) NOT NULL DEFAULT 0.00000000000000 COMMENT '经度',
  `latitude` decimal(17,14) NOT NULL DEFAULT 0.00000000000000 COMMENT '纬度',
  `syncId` varchar(255) DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(4) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `areaId` int(11) NOT NULL DEFAULT 0 COMMENT '行政代码Id',
  `isAnonymous` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否匿名 1：是，0：否',
  `StandardAddress` varchar(2048) NOT NULL DEFAULT '' COMMENT '标准地址信息',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `userId` (`userId`) USING BTREE,
  KEY `isReply` (`isReply`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='工作台账';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_IdCardRecord`
--

DROP TABLE IF EXISTS `DAS_IdCardRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_IdCardRecord` (
  `id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `areaid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属的组织机构ID',
  `newIdCard` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新身份证号',
  `oldIdCard` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '旧身份证号',
  `type` int(11) DEFAULT 0 COMMENT '类型 0修改 1删除',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) DEFAULT 0 COMMENT '创建人id',
  `updatedBy` bigint(20) DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(4) DEFAULT 0 COMMENT '0未删除 1删除',
  `robotStatus` int(11) DEFAULT 0 COMMENT '机器人同步状态0 未同步 1 正在同步 200成功 500失败',
  `robotDescribe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '机器人同步返回结果描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='身份证修改记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_LocationData`
--

DROP TABLE IF EXISTS `DAS_LocationData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_LocationData` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `longitude` decimal(20,15) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(20,15) DEFAULT NULL COMMENT '纬度',
  `descript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置文字描述',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='坐标位置记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_bglcs`
--

DROP TABLE IF EXISTS `DAS_child_bglcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_bglcs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `bgxs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '边沟形式,使用代码表[dm_bgxs]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传边沟照片（间隔300~500米拍摄一张照片，反应该边沟具体情况）',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT ' 关联字段',
  `lcs` decimal(10,2) DEFAULT NULL COMMENT '里程数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-边沟里程数-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_gcsczp`
--

DROP TABLE IF EXISTS `DAS_child_gcsczp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_gcsczp` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `gclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公厕类型,使用代码表[dm_gclx1]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-公厕上传照片--规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_gcsl`
--

DROP TABLE IF EXISTS `DAS_child_gcsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_gcsl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `gclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公厕类型,使用代码表[dm_gclx1]',
  `gcwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公厕位置,使用代码表[dm_gcwz]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传公厕照片',
  `hqdw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '获取定位',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-公厕数量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_gjzsl`
--

DROP TABLE IF EXISTS `DAS_child_gjzsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_gjzsl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `gjzlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公交站类型,使用代码表[dm_gjzlx]',
  `xlmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公交线路名称',
  `qd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '起点',
  `zd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '终点',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传公交站照片（每一处公交站拍摄1张照片，注明位置）',
  `hqwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '获取公交站位置',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-公交站-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_gqss`
--

DROP TABLE IF EXISTS `DAS_child_gqss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_gqss` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `gqssnr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供气设施内容,使用代码表[dm_gqssnr]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（对村内燃气储存、调压设施进行拍照，每处设施2-3照片，反映主要设施及设备情况）',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-供气设施燃气--规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_jcssydsssl`
--

DROP TABLE IF EXISTS `DAS_child_jcssydsssl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_jcssydsssl` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `ydsslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基础设施用电设施类型,使用代码表[dm_zyyt1]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传基础设施用电设施照片',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-基础设施用电设施数量-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_jgwz`
--

DROP TABLE IF EXISTS `DAS_child_jgwz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_jgwz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `jgwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '景观位置,使用代码表[dm_jgwz1]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-村容村貌景观位置-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_jtbpsl`
--

DROP TABLE IF EXISTS `DAS_child_jtbpsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_jtbpsl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `jtbplx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '交通标牌类型,使用代码表[dm_jtbplx]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传交通标牌照片',
  `hqwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '获取交通标牌位置',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-交通标识-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_ldys`
--

DROP TABLE IF EXISTS `DAS_child_ldys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_ldys` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `ldys` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路灯样式,使用代码表[dm_ldys]',
  `scldzp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `ldxs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路灯形式',
  `fbwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '该路灯样式主要分布位置',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-路灯样式--规划院的';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_lhdmx`
--

DROP TABLE IF EXISTS `DAS_child_lhdmx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_lhdmx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `lhdlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '绿化带类型,使用代码表[dm_lhdlx]',
  `cd` decimal(10,2) DEFAULT NULL COMMENT '绿化带长度',
  `kd` decimal(10,2) DEFAULT NULL COMMENT '绿化带宽度',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `wzxx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置信息',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-绿化带明细-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_lhwz`
--

DROP TABLE IF EXISTS `DAS_child_lhwz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_lhwz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `lhwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '绿化位置,使用代码表[dm_lhwz]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-村容村貌绿化位置-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_pzbz`
--

DROP TABLE IF EXISTS `DAS_child_pzbz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_pzbz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-拍照和备注';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_scqmjscdsszp`
--

DROP TABLE IF EXISTS `DAS_child_scqmjscdsszp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_scqmjscdsszp` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `cdwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '场地位置',
  `sszl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设施种类',
  `sssl` int(10) DEFAULT NULL COMMENT '设施数量',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-文化体育-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_slsssl`
--

DROP TABLE IF EXISTS `DAS_child_slsssl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_slsssl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `slsslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水利设施类型,使用代码表[dm_slsslx]',
  `sssl` int(10) DEFAULT NULL COMMENT '设施数量',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传水利设施照片',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-水利设施数量-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_sxlh`
--

DROP TABLE IF EXISTS `DAS_child_sxlh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_sxlh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `lhdkd` decimal(10,2) DEFAULT NULL COMMENT '绿化带宽度',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-水系治理-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_sysl`
--

DROP TABLE IF EXISTS `DAS_child_sysl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_sysl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `sylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水源类型,使用代码表[dm_sylx]',
  `qtsylx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他水源类型',
  `gsnl` decimal(10,2) DEFAULT NULL COMMENT '水源供水能力',
  `gssc` int(10) DEFAULT NULL COMMENT '每天供水时长',
  `szqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '各水源水水质情况,使用代码表[dm_szqk]',
  `sfyclss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有处理设施,使用代码表[dm_yesno]',
  `clgy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理工艺,使用代码表[dm_clgy]',
  `qtgy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他工艺',
  `sfyxdcs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有消毒措施,使用代码表[dm_yesno]',
  `zdmj` decimal(10,2) DEFAULT NULL COMMENT '水源地占地面积',
  `sydsfyjk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水源地是否有监控,使用代码表[dm_yesno]',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（水源井、净水设施分别拍1-2张照片，照片拍摄完整设施及主要设备）',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-水源数量-规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_tccsl`
--

DROP TABLE IF EXISTS `DAS_child_tccsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_tccsl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `tcclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '停车场类型,使用代码表[dm_tcclx]',
  `tccmj` int(10) DEFAULT NULL COMMENT '该停车场面积',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传该停车场照片（每一处停车场拍摄2-3张照片，注明位置）',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-停车场数量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_whhdgcsl`
--

DROP TABLE IF EXISTS `DAS_child_whhdgcsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_whhdgcsl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `gcwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '广场位置',
  `mj` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `lqj` int(10) DEFAULT NULL COMMENT '篮球架数量',
  `jsqc` int(10) DEFAULT NULL COMMENT '健身器材',
  `zisl` int(10) DEFAULT NULL COMMENT '座椅数量',
  `ljsl` int(10) DEFAULT NULL COMMENT '廊架数量',
  `tzsl` int(10) DEFAULT NULL COMMENT '亭子数量',
  `qtsssl` int(10) DEFAULT NULL COMMENT '其他设施个数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-文化活动广场数量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_xclldsl`
--

DROP TABLE IF EXISTS `DAS_child_xclldsl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_xclldsl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（进行拍照反应具体情况）',
  `hqwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '获取路灯位置',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-需处理的路灯数量--规划院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_xfss`
--

DROP TABLE IF EXISTS `DAS_child_xfss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_xfss` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  `sswz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消防设施位置',
  `ssnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消防设施内容',
  `sczp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传消防设施照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-人居环境-安全韧性-消防设施位置及内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_child_zbjwz`
--

DROP TABLE IF EXISTS `DAS_child_zbjwz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_child_zbjwz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  `zbjlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村内适合自备井类型,使用代码表[dm_zbjlx]',
  `zbjwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自备井的位置',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='子模型-基础设施-给排水-打自备井位置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_clc_fzxz`
--

DROP TABLE IF EXISTS `DAS_clc_fzxz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_clc_fzxz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `jtjjsr` decimal(10,2) DEFAULT NULL COMMENT 'B18 村级集体经济收入(万)',
  `cjylbxrs` int(10) DEFAULT NULL COMMENT 'B19 参加城乡居民医疗保险人数',
  `cjczylbxrs` int(10) DEFAULT NULL COMMENT 'B20 参加城镇职工基本养老保险人数',
  `cjcxylbxrs` int(10) DEFAULT NULL COMMENT 'B21 参加城乡居民基本养老保险人数',
  `cjdbbxrs` int(10) DEFAULT NULL COMMENT 'B22 参加大病保险人数',
  `wysaqh` int(10) DEFAULT NULL COMMENT 'B23 未实现饮水安全户',
  `tscydzrc` int(10) DEFAULT NULL COMMENT 'B24 通生产用电自然村个数',
  `wfhs` int(10) DEFAULT NULL COMMENT 'B25 危房户数',
  `hzzzgs` int(10) DEFAULT NULL COMMENT 'B26 农民专业合作组织个数',
  `cjhzzztphs` int(10) DEFAULT NULL COMMENT 'B27 参加农民专业合作组织脱贫户数',
  `sfytscy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B28 是否有特色产业,使用代码表[dm_yesno]',
  `tscyzl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B29 特色产业种类,使用代码表[]',
  `tscygm` int(10) DEFAULT NULL COMMENT 'B30 特色产业规模(数量)',
  `xclyhs` int(10) DEFAULT NULL COMMENT 'B31 经营休闲农业和乡村旅游的户数',
  `xclyhnjsr` decimal(10,2) DEFAULT NULL COMMENT 'B32 经营休闲农业和乡村旅游的户年均收入',
  `ljdfdgs` int(10) DEFAULT NULL COMMENT 'B33 垃圾集中堆放点个数',
  `whsgs` int(10) DEFAULT NULL COMMENT 'B34 文化（图书）室个数',
  `tkdhs` int(10) DEFAULT NULL COMMENT 'B35 通宽带户数',
  `tkdcxxgs` int(10) DEFAULT NULL COMMENT 'B36 通宽带的村小学个数',
  `nysjswhs` int(10) DEFAULT NULL COMMENT 'B37 能用手机上网的户数',
  `sfjrgxkd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B38 是否接入光纤宽带,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='出列村-发展现状';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_clc_jbqk`
--

DROP TABLE IF EXISTS `DAS_clc_jbqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_clc_jbqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `czsxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B1 村支书姓名',
  `czsdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B2 村支书电话',
  `sfbzs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B3 是否兵支书,使用代码表[dm_yesno]',
  `czrxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B4 村主任姓名',
  `czrdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B5 村主任电话',
  `ghfx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B6 规划方向（单选）,使用代码表[dm_ghfx]',
  `zgdysl` int(10) DEFAULT NULL COMMENT 'B7 中共党员数量（人)',
  `dxscgsl` int(10) DEFAULT NULL COMMENT 'B8 大学生村官数量（人）',
  `zrcs` int(10) DEFAULT NULL COMMENT 'B9 自然村（村民小组）数',
  `zhs` int(10) DEFAULT NULL COMMENT 'B10 总户数（户）',
  `dbhs` int(10) DEFAULT NULL COMMENT 'B10a 低保户数（户）',
  `tkgyhs` int(10) DEFAULT NULL COMMENT 'B10b 特困供养户数（户）',
  `zrks` int(10) DEFAULT NULL COMMENT 'B11 总人口数（人）',
  `dbrks` int(10) DEFAULT NULL COMMENT 'B11a 低保人口数（人）',
  `cjrks` int(10) DEFAULT NULL COMMENT 'B11b 残疾人口数（人）',
  `tkgyrs` int(10) DEFAULT NULL COMMENT 'B11c 特困供养人口数（人）',
  `ssmzrks` int(10) DEFAULT NULL COMMENT 'B11d 少数民族人口数（人）',
  `nxrkks` int(10) DEFAULT NULL COMMENT 'B11e 女性人口数（人）',
  `ldlrs` int(10) DEFAULT NULL COMMENT 'B12 劳动力人数（人）',
  `xwwgrs` int(10) DEFAULT NULL COMMENT 'B12a 乡外务工人数（人）',
  `cydtrrs` int(10) DEFAULT NULL COMMENT 'B13 行政村创业致富带头人人数（人）',
  `gdmj` decimal(10,2) DEFAULT NULL COMMENT 'B14 耕地面积（亩）',
  `yxggmj` decimal(10,2) DEFAULT NULL COMMENT 'B14a 有效灌溉面积（亩）',
  `ldmj` decimal(10,2) DEFAULT NULL COMMENT 'B15 林地面积（亩）',
  `tghlmj` decimal(10,2) DEFAULT NULL COMMENT 'B15a 退耕还林面积（亩）',
  `lgmj` decimal(10,2) DEFAULT NULL COMMENT 'B15b 林果面积（亩）',
  `mcdmj` decimal(10,2) DEFAULT NULL COMMENT 'B16 牧草地面积（亩）',
  `stmj` decimal(10,2) DEFAULT NULL COMMENT 'B17 水面面积（亩）',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='出列村-基本情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_clc_qyylfwd`
--

DROP TABLE IF EXISTS `DAS_clc_qyylfwd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_clc_qyylfwd` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `qyysxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签约医生姓名',
  `qyysdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签约医生电话',
  `ssyljg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属医疗机构',
  `sftdfzr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否团队负责人,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='出列村--签约医疗服务团队';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_clc_zcgzd`
--

DROP TABLE IF EXISTS `DAS_clc_zcgzd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_clc_zcgzd` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `dyxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '队员姓名',
  `bfdwc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶单位名,使用代码表[]',
  `zwjb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职务级别,使用代码表[]',
  `xl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历,使用代码表[]',
  `zzmm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌,使用代码表[]',
  `lxdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `jstc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '技术特长',
  `dwdsgx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位隶属关系,使用代码表[]',
  `sfdysj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否第一书记,使用代码表[]',
  `sfdz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否队长,使用代码表[]',
  `zckssj` datetime DEFAULT NULL COMMENT '驻村开始时间',
  `zcjssj` datetime DEFAULT NULL COMMENT '驻村结束时间',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='出列村-驻村工作队情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_householdcode`
--

DROP TABLE IF EXISTS `DAS_householdcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_householdcode` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号，国家平台的编号',
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzxb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主性别',
  `hzzjlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件类型',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码，存残疾人证',
  `hzidCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '户主证件号码',
  `hzmz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主民族',
  `hzzzmm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主政治面貌',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类型',
  `jtrks` int(11) DEFAULT NULL COMMENT '家庭人口数',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zrcmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique-hzidCard` (`hzidCard`),
  KEY `areaid_index` (`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='采集户码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_householdcode1124`
--

DROP TABLE IF EXISTS `DAS_householdcode1124`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_householdcode1124` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号，国家平台的编号',
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzxb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主性别',
  `hzzjlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件类型',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码，存残疾人证',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件号码',
  `hzmz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主民族',
  `hzzzmm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主政治面貌',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类型',
  `jtrks` int(11) DEFAULT NULL COMMENT '家庭人口数',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zrcmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='采集户码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_householdcode_1125`
--

DROP TABLE IF EXISTS `DAS_householdcode_1125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_householdcode_1125` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号，国家平台的编号',
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzxb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主性别',
  `hzzjlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件类型',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码，存残疾人证',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件号码',
  `hzmz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主民族',
  `hzzzmm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主政治面貌',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类型',
  `jtrks` int(11) DEFAULT NULL COMMENT '家庭人口数',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zrcmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_idcard` (`hzidCard`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='采集户码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_householdcode_jcss`
--

DROP TABLE IF EXISTS `DAS_householdcode_jcss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_householdcode_jcss` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '外链的户ID (DAS_householdcode)',
  `nf` int(11) NOT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `rhdlsfyh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户道路是否硬化',
  `sftzls` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通自来水',
  `gssjsfdy24h` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自来水供水间隔时间是否低于24小时',
  `sfysaq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否饮水安全',
  `sfsyqjny` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否使用清洁能源',
  `syqjnylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用清洁能源的类型',
  `sfwf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否危房',
  `wfsflrgzjh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '危房是否列入改造计划',
  `sfylyss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有淋浴设施',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `qtbz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `hid_nf` (`hid`,`nf`),
  KEY `areaid_index` (`areaid`,`nf`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='基础设施-农户信息表-三个合成一个了';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_householdcode_new`
--

DROP TABLE IF EXISTS `DAS_householdcode_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_householdcode_new` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号，国家平台的编号',
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzxb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主性别',
  `hzzjlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件类型',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码，存残疾人证',
  `hzidCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '户主证件号码',
  `hzmz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主民族',
  `hzzzmm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主政治面貌',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类型',
  `jtrks` int(11) DEFAULT NULL COMMENT '家庭人口数',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zrcmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique-hzidCard` (`hzidCard`) USING BTREE,
  KEY `areaid_index` (`areaid`) USING BTREE,
  KEY `hlx_index` (`hlx`) USING BTREE,
  KEY `id_index` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_householdcode_rjhj`
--

DROP TABLE IF EXISTS `DAS_householdcode_rjhj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_householdcode_rjhj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID (DAS_householdcode)',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfywshc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有卫生户厕',
  `wshclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生厕所类型',
  `wshcsfnzcsy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生厕所是否能正常使用',
  `wshcsfrs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生户厕是否入室',
  `wshcsfry` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生户厕是否入院',
  `sfjxgtymh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否进行过庭院美化',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `hid_nf` (`hid`,`nf`),
  KEY `areaid_index` (`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='人居环境-农户信息表-三个合成一个了';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_householdcode_xe`
--

DROP TABLE IF EXISTS `DAS_householdcode_xe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_householdcode_xe` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号，国家平台的编号',
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzxb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主性别',
  `hzzjlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件类型',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码，存残疾人证',
  `hzidCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '户主证件号码',
  `hzmz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主民族',
  `hzzzmm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主政治面貌',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类型',
  `jtrks` int(11) DEFAULT NULL COMMENT '家庭人口数',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zrcmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村',
  UNIQUE KEY `unique-hzidCard` (`hzidCard`) USING BTREE,
  KEY `areaid_index` (`areaid`) USING BTREE,
  KEY `hlx_index` (`hlx`) USING BTREE,
  KEY `id_index` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_jch_bfzrr`
--

DROP TABLE IF EXISTS `DAS_jch_bfzrr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_jch_bfzrr` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `zzmm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌',
  `bfdwmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶单位名称',
  `bfkssj` datetime DEFAULT NULL COMMENT '帮扶开始时间',
  `bfjssj` datetime DEFAULT NULL COMMENT '帮扶结束时间',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='监测户信息采集表(帮扶责任人)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_jch_jcxx`
--

DROP TABLE IF EXISTS `DAS_jch_jcxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_jch_jcxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `zrc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村,使用代码表[]',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `hlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型,使用代码表[]',
  `jls` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否军烈属,使用代码表[]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='监测户信息采集表(基础信息)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_jch_scshtj`
--

DROP TABLE IF EXISTS `DAS_jch_scshtj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_jch_scshtj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gdmj` decimal(10,2) DEFAULT NULL COMMENT 'A28 耕地面积(亩)',
  `mcdmj` decimal(10,2) DEFAULT NULL COMMENT 'A29 牧草地面积(亩)',
  `smmj` decimal(10,2) DEFAULT NULL COMMENT 'A30 水面面积(亩)',
  `ldmj` decimal(10,2) DEFAULT NULL COMMENT 'A31 林地面积(亩)',
  `tghlcmj` decimal(10,2) DEFAULT NULL COMMENT 'A31a退耕还林面积(亩)',
  `lgmj` decimal(10,2) DEFAULT NULL COMMENT 'A31b林果面积(亩)',
  `rhllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A32 入户路类型,使用代码表[dm_rhllx]',
  `yczgljl` decimal(10,2) DEFAULT NULL COMMENT 'A33 与村主干路距离(公里)',
  `sfjrzz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A34 是否加入农民专业合作组织,使用代码表[dm_yesno]',
  `wfdj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A35危房等级,使用代码表[]',
  `zfmj` decimal(10,2) DEFAULT NULL COMMENT 'A36 住房面积(平方米)',
  `zyrllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A37 主要燃料类型,使用代码表[dm_rllx]',
  `sfyqydd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A38是否有龙头企业带动,使用代码表[dm_yesno]',
  `sfydtr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A39是否有创业致富带头人带动,使用代码表[dm_yesno]',
  `sftgbds` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A40是否通广播电视,使用代码表[dm_yesno]',
  `dhcybflx` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'A41到户产业帮扶类型,使用代码表[dm_dhcybflx]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='监测户信息采集表(生产生活条件)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_jch_srqk`
--

DROP TABLE IF EXISTS `DAS_jch_srqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_jch_srqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `gzxsr` decimal(10,2) DEFAULT NULL COMMENT 'A23工资性收入(元)',
  `zyxsr` decimal(10,2) DEFAULT NULL COMMENT 'A24转移性收入(元)',
  `ylbxj` decimal(10,2) DEFAULT NULL COMMENT 'A24d养老保险金(元)',
  `scjyxsr` decimal(10,2) DEFAULT NULL COMMENT 'A25生产经营性收入(元)',
  `jhsyj` decimal(10,2) DEFAULT NULL COMMENT 'A24a计划生育金(元)',
  `stbcj` decimal(10,2) DEFAULT NULL COMMENT 'A24e生态补偿金(元)',
  `ccxsr` decimal(10,2) DEFAULT NULL COMMENT 'A26财产性收入(元)',
  `dbj` decimal(10,2) DEFAULT NULL COMMENT 'A24b低保金(元)',
  `qtzyxsr` decimal(10,2) DEFAULT NULL COMMENT 'A24f其他转移性收(元)',
  `zcsyfpfhsr` decimal(10,2) DEFAULT NULL COMMENT 'A26a资产收益扶贫分红收入(元)',
  `tkgyj` decimal(10,2) DEFAULT NULL COMMENT 'A24c 特困供养金(元)',
  `qtccxsr` decimal(10,2) DEFAULT NULL COMMENT 'A26b其他财产性收入(元)',
  `scjyxzc` decimal(10,2) DEFAULT NULL COMMENT 'A27 生产经营性支出(元)',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='监测户信息采集表(收入情况)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_jch_wjyqk`
--

DROP TABLE IF EXISTS `DAS_jch_wjyqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_jch_wjyqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `wjyyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应届毕业生未就业原因,使用代码表[]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='监测户信息采集表(未就业情况)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_aqrx`
--

DROP TABLE IF EXISTS `DAS_mlxc_aqrx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_aqrx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `pssfws` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B90排水设施是否完善,使用代码表[dm_yesno]',
  `sffshz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B91今年是否发生涝灾,使用代码表[dm_yesno]',
  `pssfxyst` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B92村屯内排水设施是否需要疏通,使用代码表[dm_yesno]',
  `lbgsfst` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B93路边沟是否畅通,使用代码表[dm_yesno]',
  `sxsfxyfhp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B94村屯内河流水系是否有需要防护的岸坡,使用代码表[dm_yesno]',
  `tjqdsfxyst` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B95田间渠道是否需要疏通,使用代码表[dm_yesno]',
  `sfyft` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B96是否有方塘,使用代码表[dm_yesno]',
  `sfxxjft` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B97是否需要新建方塘,使用代码表[dm_yesno]',
  `xjftrl` int(10) DEFAULT NULL COMMENT '需要新建方塘容量',
  `sfzsslss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B98是否需要增设田间水利设施（闸、桥、涵）,使用代码表[dm_yesno]',
  `zsslsssl` int(11) DEFAULT NULL COMMENT '需要增设的水利设施数量',
  `sfxdj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B99田间是否需要打水源井,使用代码表[dm_yesno]',
  `tjqdsfws` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B100田间渠道是否完善（有无灌溉和排水渠道）,使用代码表[dm_yesno]',
  `tjsfxyap` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B101田间河流水系是否有需要防护的岸坡,使用代码表[dm_yesno]',
  `xjhpcd` int(10) DEFAULT NULL COMMENT '需要新建护坡长度',
  `tjsfxjhz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B102田间支渠、斗渠是否有需要新建的涵、闸,使用代码表[dm_yesno]',
  `wxslsssl` int(11) DEFAULT NULL COMMENT '需要维修水利设施数量',
  `zqdqsfxwx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B103田间支渠、斗渠是否需要维修,使用代码表[dm_yesno]',
  `sfxjpgz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B104 田间是否有需要新建的排灌站,使用代码表[dm_yesno]',
  `xjpgzsl` int(10) DEFAULT NULL COMMENT '田间需要新建的排灌站数量',
  `sfypsz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B105是否有排水站,使用代码表[dm_yesno]',
  `xxjpszsl` int(10) DEFAULT NULL COMMENT '需要新建排灌站数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `xfsswznr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消防设施位置及内容',
  `sfxjxfss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否需要新建消防设施,使用代码表[dm_yesno]',
  `xjxfssnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新建消防设施内容',
  `xjxfsssl` int(10) DEFAULT NULL COMMENT '新建消防设施数量',
  `sfyxfss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有消防设施,使用代码表[dm_yesno]',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-人居环境-安全韧性';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_bg`
--

DROP TABLE IF EXISTS `DAS_mlxc_bg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_bg` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `dlsfybg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B21村内道路是否有边沟,使用代码表[dm_yesno]',
  `bglcs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '边沟里程数',
  `xxfbglcs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B23村内破损需修复边沟里程数',
  `xjbglcs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B24村内道路新建边沟里程数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-基础设施-边沟-新';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_cdz`
--

DROP TABLE IF EXISTS `DAS_mlxc_cdz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_cdz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfycdz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B23村内是否有公共充电桩,使用代码表[dm_yesno]',
  `cdzsl` int(10) DEFAULT NULL COMMENT '充电桩数量',
  `sccdzzp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传充电桩照片',
  `sfxjcdz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B24村内是否需要新建公共充电桩,使用代码表[dm_yesno]',
  `xjcdzsl` int(10) DEFAULT NULL COMMENT '需新建充电桩数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-基础设施-充电桩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_czts`
--

DROP TABLE IF EXISTS `DAS_mlxc_czts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_czts` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfyzht` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有民宿、景点、农业综合体,使用代码表[dm_yesno]',
  `cztscylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄特色产业类型,使用代码表[dm_cztscylx]',
  `qtlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他村庄特色产业类型',
  `scjgzp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传景观照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-规划院人居环境-村庄特色-新';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_dllh`
--

DROP TABLE IF EXISTS `DAS_mlxc_dllh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_dllh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `dllcsfylh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B29村内道路两侧是否有绿化,使用代码表[dm_yesno]',
  `lhdmx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '绿化带明细',
  `sfxjxflhd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B30村内道路两侧是否需要新增或修复绿化带,使用代码表[dm_yesno]',
  `xjlhdcd` decimal(10,2) DEFAULT NULL COMMENT '需新建绿化带长度',
  `xjlhdkd` decimal(10,2) DEFAULT NULL COMMENT '需新建绿化带宽度',
  `xflhdcd` decimal(10,2) DEFAULT NULL COMMENT '需修复绿化带长度',
  `xflhdkd` decimal(10,2) DEFAULT NULL COMMENT '需修复绿化带宽度',
  `tslhdcd` decimal(10,2) DEFAULT NULL COMMENT '需提升绿化带长度',
  `tslhdkd` decimal(10,2) DEFAULT NULL COMMENT '需提升绿化带宽度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-基础设施-道路绿化';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_gjz`
--

DROP TABLE IF EXISTS `DAS_mlxc_gjz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_gjz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfygjz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B29村内是否有公交站,使用代码表[dm_yesno]',
  `gjzsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公交站数量',
  `sfxjgjz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B30村内是否需要新建公交站,使用代码表[dm_yesno]',
  `xjgjzsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新建公交站数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-基础设施-公交站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_jtbs`
--

DROP TABLE IF EXISTS `DAS_mlxc_jtbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_jtbs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfyjtbp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B29村内道路是否有交通标牌,使用代码表[dm_yesno]',
  `jtbpsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '交通标识数量',
  `sfxjjtbp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B30村内是否需要新建交通标牌,使用代码表[dm_yesno]',
  `xjjtbpsl` int(10) DEFAULT NULL COMMENT '需新建交通标牌数量',
  `xjjtbplx` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需新建交通标牌类型,使用代码表[dm_jtbplx]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-基础设施-交通标识';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_ld`
--

DROP TABLE IF EXISTS `DAS_mlxc_ld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_ld` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `xyldsl` int(10) DEFAULT NULL COMMENT 'B19村内现有路灯数量(盏)',
  `ldys` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路灯样式',
  `czwtldsl` int(10) DEFAULT NULL COMMENT 'B20村内存在问题路灯数量(盏)',
  `xjxwxldsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需进行维修路灯数量',
  `xjxghldsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需进行更换路灯数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-基础设施-路灯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_sxzl`
--

DROP TABLE IF EXISTS `DAS_mlxc_sxzl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_sxzl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfystbccs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B87是否有水系两侧水土保持措施,使用代码表[dm_yesno]',
  `zycs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要措施',
  `sclhzp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `sfyjgqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有水体净化结合景观情况,使用代码表[dm_yesno]',
  `scjsjgzp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传水体净化结合景观照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-规划院人居环境-水系治理-新';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_mlxc_tcc`
--

DROP TABLE IF EXISTS `DAS_mlxc_tcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_mlxc_tcc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfytcc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B25村内是否有停车场,使用代码表[dm_yesno]',
  `tccsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现状停车场数量',
  `sfxjtcc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B26村内是否需要新建停车场,使用代码表[dm_yesno]',
  `xjtccsl` int(10) DEFAULT NULL COMMENT '村内需新建停车场数量（处）',
  `xjtccmj` decimal(10,2) DEFAULT NULL COMMENT '村内需新建停车场面积（平方米）',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽乡村-基础设施-停车场';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_pc_bfcslsqk`
--

DROP TABLE IF EXISTS `DAS_pc_bfcslsqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_pc_bfcslsqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfzdbfjh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否根据家庭成员劳动能力和发展需求，因人因\r\n户制定了切实可行的帮扶计划',
  `sfkfsbf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否坚持开发式帮扶方针，对有劳动能力、有意\r\n愿户落实了开发式帮扶措施',
  `sfddbz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否对符合条件的无劳动能力监测户做好兜底保\r\n障',
  `sftsbf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否对弱劳力半劳力，创造条件探索落实了开发\r\n式帮扶措施',
  `czjg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n处置结果：是否',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hid` (`hid`) USING BTREE,
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='排查帮扶措施落实情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_pc_fhfxxcbzjch`
--

DROP TABLE IF EXISTS `DAS_pc_fhfxxcbzjch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_pc_fhfxxcbzjch` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sflsbfcs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否落实针对性帮扶措施半年以上',
  `srsfcjcfw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭人均纯收入是否稳定超过省监测范围7550元',
  `sfcxgg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '“三保障”和饮水安全是否持续巩固',
  `fxsfwdxc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '风险是否稳定消除',
  `sfcxxzfx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否出现新增风险',
  `zcsfwdjj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大额刚性支出问题是否稳定解决',
  `sffhbz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n\r\n处置结果：是否符合风险消除标准',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hid` (`hid`) USING BTREE,
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='排查符合风险消除标准监测户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_pc_fxxcwdqk`
--

DROP TABLE IF EXISTS `DAS_pc_fxxcwdqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_pc_fxxcwdqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `srsfcjcfw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭收入是否稳定超过省监测范围7550元',
  `sfcxgg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '“三保障”和饮水安全是否持续巩固',
  `fxsfwdxc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '风险是否稳定消除',
  `sfcxxzfx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否出现新增风险',
  `zcsfwdjj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大额刚性支出问题是否稳定解决',
  `sfht` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否应回退为未消除风险状态',
  `sfcxsb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否出现新增风险，需重新识别为监测对象',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hid` (`hid`) USING BTREE,
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='排查风险消除稳定情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_pc_wldlbzh`
--

DROP TABLE IF EXISTS `DAS_pc_wldlbzh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_pc_wldlbzh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfwldnl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否为整户无劳动能力',
  `czjg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n处置结果：是否',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hid` (`hid`) USING BTREE,
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='排查整户无劳动能力兜底保障户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_pc_xzjcdx`
--

DROP TABLE IF EXISTS `DAS_pc_xzjcdx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_pc_xzjcdx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfzdgzh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否属于重点关注农户',
  `zdgzyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '属于重点关注农户原因',
  `rjsrqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人均收入情况',
  `sfczfpfx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否存在致贫返贫风险',
  `czfpfxyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存在致贫返贫风险原因',
  `sfzzyd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否具备自主应对能力',
  `bnydyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '不具备自主应对能力原因',
  `czjg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\r\n处置结果：是否应纳入监测对象进行管理',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hid` (`hid`) USING BTREE,
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='识别认定新增检测对象';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_population`
--

DROP TABLE IF EXISTS `DAS_population`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_population` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链人口id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `zjlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件类型,使用代码表[]',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `yhzgx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与户主关系,使用代码表[1010]',
  `mz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族,使用代码表[1013]',
  `zzmm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌,使用代码表[1015]',
  `whcd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化程度,使用代码表[1016]',
  `zxsqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '在校生情况,使用代码表[]',
  `jkzk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '健康状况,使用代码表[]',
  `ldjn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '劳动技能,使用代码表[]',
  `wgszd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工所在地,使用代码表[]',
  `wgsc` decimal(10,0) DEFAULT NULL COMMENT '务工时长',
  `scxyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '失辍学原因,使用代码表[]',
  `sfcjylaobx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加养老保险,使用代码表[dm_yesno]',
  `sfcjyliaobx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加医疗保险,使用代码表[dm_yesno]',
  `sfcjdbbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加大病保险,使用代码表[dm_yesno]',
  `sfcjsybcbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加商业补充保险,使用代码表[dm_yesno]',
  `sfjsyljz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接受医疗救助,使用代码表[dm_yesno]',
  `gygw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公益岗位,使用代码表[]',
  `pyys` int(10) DEFAULT NULL COMMENT '聘用月数',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '状态  默认为0，已减少1',
  `zjyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员增加原因',
  `jsyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员减少原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='人员信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xe_jcdxqk`
--

DROP TABLE IF EXISTS `DAS_xe_jcdxqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xe_jcdxqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nrjcbfsj` date DEFAULT NULL COMMENT '纳入监测帮扶时间',
  `sfyxcfx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否已消除风险',
  `zyfxlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要风险类型',
  `zyfxlxRemark` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要风险类型说明',
  `sfsskfsbf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否实施开发式帮扶',
  `ylsbfcsjs` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '已落实帮扶措施简述',
  `sfwldlh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否属于整户无劳动力兜底保障户',
  `bfcssfdy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测帮扶措施是否与风险类型对应',
  `fxxcsfwd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '风险消除是否稳定',
  `sffhjcbftj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否符合监测帮扶条件',
  `sffhjcbftjRemark` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否符合监测帮扶条件说明',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`),
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='2023宣恩防返贫排查监测对象情况\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xe_jyqk`
--

DROP TABLE IF EXISTS `DAS_xe_jyqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xe_jyqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `jydz` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业详细地址',
  `jygw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业岗位工种',
  `srbz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '月收入标准',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`),
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='2023宣恩防返贫排查_家庭人员就业情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xe_nhjbqk`
--

DROP TABLE IF EXISTS `DAS_xe_nhjbqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xe_nhjbqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `rjsrsfdb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人均纯收入是否达到7600元',
  `sfyywjyxs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有义务教育学生',
  `ywjysfybz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '义务教育是否有保障',
  `ywjyrs` int(11) DEFAULT NULL COMMENT '义务教育阶段学生人数',
  `sfjxxsx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否存在间歇性上学',
  `jxxsxyy` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '间歇性上学具体原因',
  `sfyrzy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家中一年内是否有人住院',
  `jbylsfybz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基本医疗是否有保障',
  `zfaqsfybz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '住房安全是否有保障',
  `wfdj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '危房等级 C级、D级、无法判定',
  `aqyssfybz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全饮水是否有保障',
  `gsfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供水方式',
  `remark` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '选择“否”的项作简要说明',
  `sffhjcsbtj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '初判是否符合监测识别条件',
  `sbqkRemark` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '识别情况备注',
  `rhqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户情况',
  `xwwgrs` int(11) DEFAULT NULL COMMENT '县外务工人数',
  `xnjyrs` int(11) DEFAULT NULL COMMENT '县内就近就业人数',
  `gygw` int(11) DEFAULT NULL COMMENT '公益岗位',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `sign` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签名',
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`),
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='2023宣恩防返贫排查农户基本情况\r\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xe_srqk`
--

DROP TABLE IF EXISTS `DAS_xe_srqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xe_srqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID ',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `gzxsr` decimal(10,2) DEFAULT 0.00 COMMENT '工资性收入(元)',
  `dlgsr` decimal(10,2) DEFAULT 0.00 COMMENT '打零工收入(元)',
  `scjyxsr` decimal(10,2) DEFAULT 0.00 COMMENT '生产经营性收入(元)',
  `scjyxsrRemark` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产经营性收入备注',
  `scjyxzc` decimal(10,2) DEFAULT 0.00 COMMENT '生产经营性支出(元)',
  `jhsyj` decimal(10,2) DEFAULT 0.00 COMMENT '计划生育金(元)_转移性收入',
  `dbj` decimal(10,2) DEFAULT 0.00 COMMENT '低保金(元)_转移性收入',
  `ylbxj` decimal(10,2) DEFAULT 0.00 COMMENT '养老保险金(元)_转移性收入',
  `stbcj` decimal(10,2) DEFAULT 0.00 COMMENT '生态补偿金(元)_转移性收入',
  `tkgyj` decimal(10,2) DEFAULT 0.00 COMMENT '特困供养金(元)_转移性收入',
  `qtzyxsr` decimal(10,2) DEFAULT 0.00 COMMENT '其他转移性收(元)_转移性收入',
  `sysr` decimal(10,2) DEFAULT 0.00 COMMENT '赡养收入(元)_转移性收入',
  `zyxsrhj` decimal(10,2) DEFAULT 0.00 COMMENT '转移性收入合计(元)_转移性收入',
  `ccxsr` decimal(10,2) DEFAULT 0.00 COMMENT '财产性收入(元)',
  `jtzsr` decimal(10,2) DEFAULT 0.00 COMMENT '家庭总收入(元)',
  `jtrjcsr` decimal(10,2) DEFAULT 0.00 COMMENT '家庭人均纯收入(元)',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`),
  KEY `hid` (`hid`),
  KEY `areaid` (`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='2023宣恩防返贫排查_农户收入测算';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_crcm`
--

DROP TABLE IF EXISTS `DAS_xzc_crcm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_crcm` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfkzqjxd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B80是否开展村庄清洁行动,使用代码表[dm_yesno]',
  `sfjxczlh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B81是否进行村庄绿化,使用代码表[dm_yesno]',
  `cpsfjxczlh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村旁进行村庄绿化,使用代码表[]',
  `lpsfjxczlh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路旁是否进行村庄绿化,使用代码表[dm_yesno]',
  `spsfjxczlh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水旁是否进行村庄绿化,使用代码表[dm_yesno]',
  `zpsfjxczlh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '宅旁是否进行村庄绿化,使用代码表[dm_yesno]',
  `lhzp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '绿化照片',
  `sfjxsxzz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B82是否进行“三线”整治,使用代码表[dm_yesno]',
  `sftygk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B83是否对风貌统一进行管控,使用代码表[dm_yesno]',
  `sfyggzm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B84是否有公共照明,使用代码表[dm_yesno]',
  `sfygczmd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B85是否有广场照明灯,使用代码表[dm_yesno]',
  `sfyld` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有路灯,使用代码表[dm_yesno]',
  `sfyzyjgjd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有重要景观节点,使用代码表[dm_yesno]',
  `zyjgjdwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B86重要景观节点位置,使用代码表[dm_jgwz1]',
  `jgzp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '景观照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-人居环境-村容村貌';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_czgh`
--

DROP TABLE IF EXISTS `DAS_xzc_czgh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_czgh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `sfbzczgh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B8是否编制村庄规划,使用代码表[dm_yesno]',
  `bzzt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄规划编制状态,使用代码表[dm_bzzt]',
  `czghmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄规划名称',
  `sfygssjs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B9是否依规实施建设,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表--村庄规划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_dl`
--

DROP TABLE IF EXISTS `DAS_xzc_dl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_dl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sftyhdl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通硬化道路,使用代码表[dm_yesno]',
  `scdlzp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `yhdlsl` int(10) DEFAULT NULL COMMENT '较大自然村通硬化路的数量',
  `yhdllcs` decimal(10,2) DEFAULT NULL COMMENT '村内现有硬化道路里程数',
  `hslmlcs` decimal(10,2) DEFAULT NULL COMMENT '黑色路面里程数',
  `hslmpjkd` decimal(10,2) DEFAULT NULL COMMENT '黑色路面平均宽度',
  `snlmlcs` decimal(10,2) DEFAULT NULL COMMENT '水泥路面里程数',
  `snlmpjkd` decimal(10,2) DEFAULT NULL COMMENT '水泥路面平均宽度',
  `xxfyhdl` decimal(10,2) DEFAULT NULL COMMENT '破损需修复的硬化道路里程数',
  `xxfhslmcd` decimal(10,2) DEFAULT NULL COMMENT '村内破损需修复的黑色路面里程数',
  `xxfhslmkd` decimal(10,2) DEFAULT NULL COMMENT '村内破损需修复的黑色路面平均宽度',
  `xxfsnlmcd` decimal(10,2) DEFAULT NULL COMMENT '村内破损需修复的水泥路面里程数',
  `xxfsnlmkd` decimal(10,2) DEFAULT NULL COMMENT '村内破损需修复的水泥路面平均宽度',
  `xxjyhdl` decimal(10,2) DEFAULT NULL COMMENT '村内需新建硬化道路里程数',
  `xxjhsdl` decimal(10,2) DEFAULT NULL COMMENT '村内需新建的黑色路面里程数',
  `xxjhsdlkd` decimal(10,2) DEFAULT NULL COMMENT '村内需新建黑色路面平均宽度',
  `xxjsndl` decimal(10,2) DEFAULT NULL COMMENT '村内需新建水泥路面里程数',
  `xxjsndlkd` decimal(10,2) DEFAULT NULL COMMENT '村内需新建水泥路面平均宽度',
  `xyyhcyl` decimal(10,2) DEFAULT NULL COMMENT '现有硬化产业路、旅游路、资源路里程数',
  `xyyhcylkd` decimal(10,2) DEFAULT NULL COMMENT '现有硬化产业路、旅游路、资源路平均宽度',
  `xypxcyl` decimal(10,2) DEFAULT NULL COMMENT '现有破损需修复的硬化产业路、旅游路、资源路里程数',
  `xypxcylkd` decimal(10,2) DEFAULT NULL COMMENT '现有破损需修复的硬化产业路、旅游路、资源路平均宽度',
  `xxjcyl` decimal(10,2) DEFAULT NULL COMMENT '村内需新建的硬化产业路、旅游路、资源路里程数',
  `xxjcylkd` decimal(10,2) DEFAULT NULL COMMENT '村内需新建的硬化产业路、旅游路、资源路平均宽度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-基础设施-道路';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_jbqk`
--

DROP TABLE IF EXISTS `DAS_xzc_jbqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_jbqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村名称',
  `zrcsl` int(10) DEFAULT NULL COMMENT '自然村数量',
  `jdzrcsl` int(10) DEFAULT NULL COMMENT '较大人口规模自然村（组）数量',
  `czlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄类型,使用代码表[dm_czlx1]',
  `czdm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄地貌（单选）,使用代码表[dm_zydx]',
  `sfclc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否出列村,使用代码表[dm_yesno]',
  `sfmlyjc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否美丽宜居/示范村,使用代码表[dm_yesno]',
  `hjs` int(11) DEFAULT NULL COMMENT '户籍数(户)',
  `hjrk` int(11) DEFAULT NULL COMMENT '户籍人口(人)',
  `czhs` int(11) DEFAULT NULL COMMENT '常住户数(户)',
  `czrk` int(11) DEFAULT NULL COMMENT '常住人口(人)',
  `xzqhmj` decimal(20,2) DEFAULT NULL COMMENT '行政区划面积',
  `cmjzmj` decimal(20,2) DEFAULT NULL COMMENT '村民居住区面积',
  `jtjjsr` decimal(20,2) DEFAULT NULL COMMENT '集体经济收入',
  `jtjjsrly` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '集体经济收入来源',
  `jtcyfzyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村集体产业发展意愿',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `areaid_index` (`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-基本情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_jps`
--

DROP TABLE IF EXISTS `DAS_xzc_jps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_jps` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sftzls` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B35是否通自来水,使用代码表[dm_yesno]',
  `sysl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现状水源个数',
  `xysssfnmzgsxq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现有设施是否能满足供水要求,使用代码表[dm_yesno]',
  `wfmzgsxqhs` int(10) DEFAULT NULL COMMENT '无法满足供水需求的户数',
  `xzgsgxcd` decimal(10,2) DEFAULT NULL COMMENT '现状供水管线长度',
  `sggc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管材',
  `sggj` decimal(10,2) DEFAULT NULL COMMENT '管径',
  `sfxjsyj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否新建水源井,使用代码表[dm_yesno]',
  `xjsyjsl` int(10) DEFAULT NULL COMMENT '新建水源井数量',
  `sfwxsyss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否维修水源设施,使用代码表[dm_yesno]',
  `xywxsysssl` int(10) DEFAULT NULL COMMENT '需要维修水源设施数量',
  `sfxjjsss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否新建净水设施,使用代码表[dm_yesno]',
  `xjjssssl` int(10) DEFAULT NULL COMMENT '新建净水设施数量',
  `sfwxjsss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否维修净水设施,使用代码表[dm_yesno]',
  `wxjssssl` int(10) DEFAULT NULL COMMENT '维修净水设施数量',
  `ssxjjsgd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否新建供水管道,使用代码表[dm_yesno]',
  `xjgsgdcd` int(10) DEFAULT NULL COMMENT '新建供水管道长度',
  `sfwxgsgd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否维修供水管道,使用代码表[dm_yesno]',
  `wxgsgdcd` int(10) DEFAULT NULL COMMENT '维修供水管道长度',
  `sfghgsgd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否更换供水管道,使用代码表[dm_yesno]',
  `ghgsgdcd` int(10) DEFAULT NULL COMMENT '更换供水管道长度',
  `jlszgxjl` int(10) DEFAULT NULL COMMENT '距离市政自来水管线距离',
  `sfypsss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B36是否有排水设施,使用代码表[dm_yesno]',
  `psssxs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '排水设施形式,使用代码表[dm_psssxs]',
  `qt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他排水设施形式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-基础设施-给排水';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_jy`
--

DROP TABLE IF EXISTS `DAS_xzc_jy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_jy` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfyxx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B114是否有小学,使用代码表[dm_yesno]',
  `xxss` int(10) DEFAULT NULL COMMENT 'B109小学生数',
  `zxcrxrs` int(10) DEFAULT NULL COMMENT 'B110在乡、村入学人数',
  `zzjsrs` int(10) DEFAULT NULL COMMENT 'B113专职教师人数',
  `sfyyey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B115是否有幼儿园,使用代码表[dm_yesno]',
  `ryets` int(10) DEFAULT NULL COMMENT 'B111入园儿童数',
  `zxcryrs` int(10) DEFAULT NULL COMMENT 'B112在乡、村入园人数',
  `sfxxjyey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B116是否需要新建幼儿园,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-公共服务-教育';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_kdwl`
--

DROP TABLE IF EXISTS `DAS_xzc_kdwl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_kdwl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `sfyqzgxfg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B49是否有千兆光纤覆盖,使用代码表[dm_yesno]',
  `sfwgwlfg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B50 是否5G网络覆盖,使用代码表[dm_yesno]',
  `dxsfrh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B51电信是否入户,使用代码表[dm_yesno]',
  `dxrhfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电信入户方式,使用代码表[dm_dxrhfs]',
  `dxwrhyy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电信未入户原因',
  `sfyszpt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B52是否有数字平台,使用代码表[dm_yesno]',
  `ptnr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '数字平台内容,使用代码表[dm_szptnr]',
  `sfjsszpt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B53是否需要建设数字平台,使用代码表[dm_yesno]',
  `xjptnr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需新建平台内容,使用代码表[dm_szptnr]',
  `sfssxlgc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B54是否实施“雪亮工程”,使用代码表[dm_yesno]',
  `sxtsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '摄像头数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `wrhhs` int(10) DEFAULT NULL COMMENT '电信未入户户数',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-基础设施-宽带网络';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_ljzl`
--

DROP TABLE IF EXISTS `DAS_xzc_ljzl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_ljzl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `ljsfjzsj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B67垃圾是否集中收集,使用代码表[dm_yesno]',
  `ljxzp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传垃圾箱或垃圾池照片',
  `ljxcsl` int(10) DEFAULT NULL COMMENT '垃圾箱或垃圾池数量',
  `sfljfl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B68是否进行垃圾分类收集,使用代码表[dm_yesno]',
  `scljxczp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（对垃圾箱或垃圾池进行拍照）',
  `ljtsl` int(10) DEFAULT NULL COMMENT '垃圾桶数量',
  `ljfsl` int(10) DEFAULT NULL COMMENT '垃圾房数量',
  `sfpbljc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B69是否配备垃圾清运车,使用代码表[dm_yesno]',
  `scljqyczp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（对垃圾清运车进行拍照）',
  `zyzzl` decimal(10,2) DEFAULT NULL COMMENT '转运总质量',
  `sfpbbjy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B70是否配备保洁员,使用代码表[dm_yesno]',
  `bjysl` int(10) DEFAULT NULL COMMENT '保洁员人数',
  `scljdfszp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（对公共区域垃圾堆放点进行拍照）',
  `sfyljtmc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B71是否存在垃圾填埋场,使用代码表[dm_yesno]',
  `sctmczp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（对垃圾填埋场进行拍照）',
  `tmcclnl` decimal(10,2) DEFAULT NULL COMMENT '处理能力',
  `ljsfzycl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B72生活垃圾是否中转至县、镇处理,使用代码表[dm_yesno]',
  `scljzzzzp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片（对垃圾中转站进行拍照）',
  `ljzzzsl` int(10) DEFAULT NULL COMMENT '垃圾中转站数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `sfycqfw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村内是否有畜禽粪污,使用代码表[dm_yesno]',
  `cqfwclfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '畜禽粪污处理方式,使用代码表[dm_cqfwclfs]',
  `sfynybzfqw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村内是否有农药包装废弃物,使用代码表[dm_yesno]',
  `nybzclfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农药包装废弃物处理方式,使用代码表[dm_nybzclfs]',
  `jgclfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农作物秸秆处理方式,使用代码表[dm_jgclfs]',
  `dmclfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农业生产地膜处理方式 ,使用代码表[dm_dmclfs]',
  `sfyqtnyfqw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '除以上外村内是否有其他农业生产废弃物,使用代码表[dm_yesno]',
  `qtnyscfqw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他农业生产废弃物包括',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-人居环境-垃圾治理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_llwl`
--

DROP TABLE IF EXISTS `DAS_xzc_llwl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_llwl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfkddc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B55是否实现快递服务到村,使用代码表[dm_yesno]',
  `sfyllwlss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B56是否有农产品仓储保鲜冷链物流设施,使用代码表[dm_yesno]',
  `sczp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `xjllwlss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B57是否需要新建农产品仓储保鲜冷链物流设施,使用代码表[dm_yesno]',
  `xjllwlsssl` int(10) DEFAULT NULL COMMENT '新建农产品仓储保鲜冷链物流设施数量',
  `ncpzynr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农产品主要内容,使用代码表[dm_zyncp]',
  `sfyzhfwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B58是否建有村级快递物流综合服务站,使用代码表[dm_yesno]',
  `zhfwzszfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现有村级快递物流综合服务站设置方式,使用代码表[dm_fwzszfs]',
  `xjzhfwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B59是否需要新建村级快递物流综合服务站,使用代码表[dm_yesno]',
  `xjzhfwzszfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需要新建村级快递物流综合服务站的设置方式,使用代码表[dm_fwzszfs]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-基础设施-冷链物流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_nybz`
--

DROP TABLE IF EXISTS `DAS_xzc_nybz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_nybz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sftscyd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B37是否通生产用电,使用代码表[dm_yesno]',
  `sftshyd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B38是否通生活用电,使用代码表[dm_yesno]',
  `syqjnyhs` int(10) DEFAULT NULL COMMENT 'B39使用清洁能源的户数',
  `sfycdss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B40是否有电动汽车充电设施,使用代码表[dm_yesno]',
  `sfyydsb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B41是否有基础设施用电设备,使用代码表[dm_yesno]',
  `jcssydsbsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基础设施用电设施数量',
  `sfxyydsb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B42是否需要新建基础设施用电设备,使用代码表[dm_yesno]',
  `xjydsbsl` int(10) DEFAULT NULL COMMENT '需要新建基础设施用电设备数量',
  `xsszyyt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新建基础设施用电设备主要用途,使用代码表[dm_zyyt1]',
  `sfygqss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B39村内现状是否有供气设施,使用代码表[dm_yesno]',
  `rqlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '燃气类型,使用代码表[dm_rqlx]',
  `rqyt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '燃气用途,使用代码表[dm_rqyt]',
  `rqqy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村内燃气气源,使用代码表[dm_rqqy]',
  `rqsszp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传燃气设施照片',
  `sfyrqgd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B44村内是否有燃气管道,使用代码表[dm_yesno]',
  `gdqd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管道起点',
  `gdzd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管道终点',
  `gdcd` decimal(10,2) DEFAULT NULL COMMENT '管道长度',
  `gdgj` decimal(10,2) DEFAULT NULL COMMENT '管道管径',
  `cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管道材质',
  `sfxjgqss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B45村内是否需要新建供气设施,使用代码表[dm_yesno]',
  `xjgqssnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新建供气设施内容,使用代码表[dm_gqssnr]',
  `sfyxnyss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B46村内是否有太阳能、风能等设施,使用代码表[dm_yesno]',
  `ssnr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设施内容,使用代码表[dm_tynssnr]',
  `xnypjfdl` int(10) DEFAULT NULL COMMENT '太阳能/风能月平均发电量',
  `xnyssgg` int(10) DEFAULT NULL COMMENT '太阳能/风能设施规格',
  `tynsszj` decimal(10,2) DEFAULT NULL COMMENT '太阳能设施造价',
  `xnyswdl` int(10) DEFAULT NULL COMMENT '太阳能/风能上网电量',
  `xnyswjg` decimal(10,2) DEFAULT NULL COMMENT '太阳能/风能上网价格',
  `fdsszp` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传发电设施照片',
  `sfxjxnyss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B47村内是否需要新建太阳能、风能等设施,使用代码表[dm_yesno]',
  `xjssnr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B48新建设施内容,使用代码表[dm_tynssnr]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-基础设施--能源保障';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_whty`
--

DROP TABLE IF EXISTS `DAS_xzc_whty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_whty` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfywhfwzx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B127是否有村级综合性文化服务中心,使用代码表[dm_yesno]',
  `sfydqfwzx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B128是否建有党群服务中心,使用代码表[dm_yesno]',
  `sfxjdqfwzx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B129是否需要建设党群服务中心,使用代码表[dm_yesno]',
  `sfywmsjz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B130是否建有新时代文明实践站,使用代码表[dm_yesno]',
  `sfxjwmsjz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B131是否需要建设新时代文明实践站,使用代码表[dm_yesno]',
  `sfycsg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B132是否建有村史馆,使用代码表[dm_yesno]',
  `sfxjcsg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B133是否需要建村史馆,使用代码表[dm_yesno]',
  `sfyjscdss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B134是否有全民健身场地设施,使用代码表[dm_yesno]',
  `jscdsszp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传全民健身场地设施照片',
  `sfxjjscdss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B135是否需要新建或增加全民健身场地设施,使用代码表[dm_yesno]',
  `xxjssnr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需新建设施内容,使用代码表[]',
  `whhdgcsl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化活动广场数量',
  `sfxjwhhdgc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B137是否需要新建设文化活动广场,使用代码表[dm_yesno]',
  `xjwhhdgcsl` int(10) DEFAULT NULL COMMENT '需新建文化活动广场数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-公共服务-文化体育';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_wscs`
--

DROP TABLE IF EXISTS `DAS_xzc_wscs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_wscs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `wsgcsl` int(11) DEFAULT NULL COMMENT 'B60现状公厕数量',
  `sfzrgh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否专人管护,使用代码表[dm_yesno]',
  `xjgcsl` int(10) DEFAULT NULL COMMENT '需新建公厕数量',
  `xjhcsl` int(10) DEFAULT NULL COMMENT '需新建旱厕数量',
  `xjwsgcsl` int(10) DEFAULT NULL COMMENT '需新建卫生公厕数量',
  `xjgcwz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新建公厕位置,使用代码表[dm_gcwz]',
  `ygcnhsl` int(10) DEFAULT NULL COMMENT 'B62现状已改厕农户数量',
  `ygswnhsl` int(10) DEFAULT NULL COMMENT '已改室外卫生厕所农户数',
  `ygsnnhsl` int(10) DEFAULT NULL COMMENT '已改室内卫生厕所农户数',
  `ygcsfczwt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现状已改厕是否存在问题,使用代码表[dm_yesno]',
  `ygczywt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '已改厕主要问题,使用代码表[dm_gczywt]',
  `sczp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `xgcnhsl` int(10) DEFAULT NULL COMMENT 'B63需要改厕农户数量',
  `xgswnhsl` int(10) DEFAULT NULL COMMENT '需要改厕室外卫生厕所数量',
  `xgsnnhsl` int(10) DEFAULT NULL COMMENT '需要改厕室内卫生厕所数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-人居环境-卫生厕所';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_wszl`
--

DROP TABLE IF EXISTS `DAS_xzc_wszl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_wszl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfywsss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B64是否有污水处理设施覆盖,使用代码表[dm_yesno]',
  `wssslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现有污水处理设施类型,使用代码表[dm_wsclsslx]',
  `jzclnl` int(10) DEFAULT NULL COMMENT '集中处理能力',
  `fsclssgs` int(10) DEFAULT NULL COMMENT '分散处理设施个数',
  `fsdgclnl` int(10) DEFAULT NULL COMMENT '分散处理设施单个处理能力',
  `wsclgy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '污水处理工艺,使用代码表[dm_wsclgy]',
  `sszdmj` int(10) DEFAULT NULL COMMENT '集中处理设施占地面积',
  `sssfyjk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理设施是否有监控,使用代码表[dm_yesno]',
  `prstmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理后污水排入水体名称',
  `sssfmzxq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现有污水处理设施是否满足需求,使用代码表[dm_yesno]',
  `wssjwfghs` int(10) DEFAULT NULL COMMENT '污水收集未覆盖户数',
  `wsgdcd` int(10) DEFAULT NULL COMMENT '污水管道长度',
  `wsgdgj` decimal(10,2) DEFAULT NULL COMMENT '现有污水管道管径',
  `xywsgdcz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现有污水管道材质',
  `sczp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传照片',
  `sfxjwsss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B65是否需要新建污水处理设施,使用代码表[dm_yesno]',
  `xjwssslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需要新建污水处理设施类型,使用代码表[dm_wsclsslx]',
  `wxwssslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需要维修污水处理设施类型,使用代码表[dm_wsclsslx]',
  `zjwscll` int(10) DEFAULT NULL COMMENT '需要增加污水处理量',
  `xjwsgdcd` int(10) DEFAULT NULL COMMENT '需要新建污水管道长度',
  `wxwsgdcd` int(10) DEFAULT NULL COMMENT '需要维修污水管道长度',
  `wztzdw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '可选作为污水处理设施的位置',
  `xjwsprstmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新建污水处理后可排入水体名称',
  `wshrhl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村内水体最终汇入哪条河流',
  `sfnrwsgw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B66是否纳入城镇污水处理管网,使用代码表[]',
  `yczwsgxjl` int(10) DEFAULT NULL COMMENT '与城镇市政污水管线或处理设施距离',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-人居环境-污水治理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_yl`
--

DROP TABLE IF EXISTS `DAS_xzc_yl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_yl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfyyljgfg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B122是否有区域养老服务机构覆盖,使用代码表[dm_yesno]',
  `sfxjylss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B123是否需要新建养老设施,使用代码表[dm_yesno]',
  `xjylsslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '需新建养老设施类型,使用代码表[dm_xjylsslx]',
  `sfyhzd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B124是否有村级邻里互助点或农村幸福院,使用代码表[dm_yesno]',
  `sfygyxmd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B125是否有公益性墓地,使用代码表[dm_yesno]',
  `sfxjgyxmd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B126是否需要建设公益性墓地,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-公共服务-养老';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_ylws`
--

DROP TABLE IF EXISTS `DAS_xzc_ylws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_ylws` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `wsssl` int(10) DEFAULT NULL COMMENT 'B117卫生室数量',
  `wssjzmj` int(10) DEFAULT NULL COMMENT 'B118卫生室建筑面积',
  `xjwsssl` int(10) DEFAULT NULL COMMENT 'B119需要新建卫生室数量',
  `xcyssl` int(10) DEFAULT NULL COMMENT 'B120乡村医生数量',
  `zyyss` int(10) DEFAULT NULL COMMENT 'B121执业(助理)医师数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-公共服务-医疗卫生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_xzc_zhfw`
--

DROP TABLE IF EXISTS `DAS_xzc_zhfw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_xzc_zhfw` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `cid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联的村id',
  `sfyzhfwz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B138是否建有村级综合服务站点,使用代码表[dm_yesno]',
  `sfktgjbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'B139是否开通公交运行班线,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique_cid_nf` (`cid`,`nf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行政村信息采集表-公共服务-综合服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DAS_zrc`
--

DROP TABLE IF EXISTS `DAS_zrc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DAS_zrc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `zrccm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村村名',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `relationid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联id',
  `relationfield` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '关联字段',
  `ffpCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '国家平台自然村code',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_areaid` (`areaid`) USING BTREE,
  KEY `index_relationid` (`relationid`),
  KEY `index_relationfield` (`relationfield`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自然村';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_bgjs`
--

DROP TABLE IF EXISTS `DCLN_bgjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_bgjs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `bglx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '边沟类型',
  `bggg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '边沟规格',
  `bgjscd` decimal(10,0) DEFAULT NULL COMMENT '边沟建设长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `sd` decimal(10,2) DEFAULT NULL COMMENT '边沟深度',
  `jscz` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设材质',
  `xkkd` decimal(10,2) DEFAULT NULL COMMENT '下口宽度',
  `skkd` decimal(10,2) DEFAULT NULL COMMENT '上口宽度',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE,
  KEY `nf` (`nf`,`areaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）边沟建设情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_bgjs_demand`
--

DROP TABLE IF EXISTS `DCLN_bgjs_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_bgjs_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `bggg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '边沟规格',
  `bgjscd` decimal(10,0) DEFAULT NULL COMMENT '边沟建设长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  `bglx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '边沟类型',
  `sd` decimal(10,2) DEFAULT NULL COMMENT '边沟深度',
  `jscz` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设材质',
  `xkkd` decimal(10,2) DEFAULT NULL COMMENT '下口宽度',
  `skkd` decimal(10,2) DEFAULT NULL COMMENT '上口宽度',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）边沟建设需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_bjy`
--

DROP TABLE IF EXISTS `DCLN_bjy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_bjy` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `rs` decimal(9,0) DEFAULT NULL COMMENT '人数',
  `zgz` decimal(9,2) DEFAULT NULL COMMENT '总工资',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）保洁员情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_bjy_demand`
--

DROP TABLE IF EXISTS `DCLN_bjy_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_bjy_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `rs` decimal(9,0) DEFAULT NULL COMMENT '人数',
  `zgz` decimal(9,2) DEFAULT NULL COMMENT '总工资',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）保洁员需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ccllwl`
--

DROP TABLE IF EXISTS `DCLN_ccllwl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ccllwl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `ccllwlsslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓储冷链物流设施类型,使用代码表[dm_ccllwlsslx]',
  `sssbmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备名称',
  `ccnl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '储藏能力',
  `fgnl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '覆盖能力',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='仓储和冷链物流建设';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ccllwl_demand`
--

DROP TABLE IF EXISTS `DCLN_ccllwl_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ccllwl_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `ccllwlsslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '仓储冷链物流设施类型,使用代码表[dm_ccllwlsslx]',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `ccnl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '储藏能力',
  `fgnl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '覆盖能力',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `sssbmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备名称',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='仓储和冷链物流建设-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_cjtsr`
--

DROP TABLE IF EXISTS `DCLN_cjtsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_cjtsr` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `srly` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收入来源',
  `nsr` decimal(10,2) DEFAULT NULL COMMENT '年收入',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `srbfnr` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '收入/拨付内容',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）集体经济收入（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_cwh`
--

DROP TABLE IF EXISTS `DCLN_cwh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_cwh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `jzsj` datetime DEFAULT NULL COMMENT '建筑时间',
  `mj` decimal(9,0) DEFAULT NULL COMMENT '建筑面积',
  `csgn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '场所功能',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `sfjbqtgn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '0' COMMENT '是否具备其他功能',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）村委会情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_czfl`
--

DROP TABLE IF EXISTS `DCLN_czfl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_czfl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `czlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建成情况分类',
  `zydx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地形地貌类型分类',
  `zhqkfl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '综合情况分类',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）村庄分类情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_czgh`
--

DROP TABLE IF EXISTS `DCLN_czgh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_czgh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否建立村庄规划,使用代码表[dm_yesno]',
  `trje` decimal(10,2) DEFAULT NULL COMMENT '投入金额',
  `ghbzdw` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规划编制单位',
  `czghlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄规划类型,使用代码表[dm_czghlx]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='村庄规划';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_czgh_demand`
--

DROP TABLE IF EXISTS `DCLN_czgh_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_czgh_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `sf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否建立村庄规划',
  `trje` decimal(10,2) DEFAULT 0.00 COMMENT '投入金额',
  `ghbzdw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规划编制单位',
  `czghlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄规划类型',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）村庄规划需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_czlh`
--

DROP TABLE IF EXISTS `DCLN_czlh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_czlh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `ldgg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路灯规格',
  `sl` decimal(10,2) DEFAULT NULL COMMENT '数量',
  `jgjl` decimal(10,2) DEFAULT NULL COMMENT '间隔距离',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `je` decimal(10,2) DEFAULT 0.00 COMMENT '投入金额',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）村庄亮化情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_czlh_demand`
--

DROP TABLE IF EXISTS `DCLN_czlh_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_czlh_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `ldgg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路灯规格',
  `sl` decimal(10,2) DEFAULT NULL COMMENT '数量',
  `jgjl` decimal(10,2) DEFAULT NULL COMMENT '间隔距离',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `je` decimal(10,2) DEFAULT 0.00 COMMENT '金额',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）村庄亮化需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_czqk`
--

DROP TABLE IF EXISTS `DCLN_czqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_czqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `czlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄类型',
  `zydx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要地形',
  `cmzs` int(7) DEFAULT NULL COMMENT '村民组数',
  `cwgysl` int(7) DEFAULT NULL COMMENT '村网格员数量',
  `zmj` decimal(10,2) DEFAULT NULL COMMENT '总面积',
  `gdmj` decimal(10,2) DEFAULT NULL COMMENT '耕地面积',
  `ldmj` decimal(10,2) DEFAULT NULL COMMENT '林地面积',
  `ssnymj` decimal(10,2) DEFAULT NULL COMMENT '设施农业面积',
  `jsydmj` decimal(10,2) DEFAULT NULL COMMENT '建设用地面积',
  `cndl` decimal(10,2) DEFAULT NULL COMMENT '村内道路长度',
  `czgh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村庄规划',
  `ghje` decimal(10,2) DEFAULT NULL COMMENT '规划金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）村庄情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_dllh`
--

DROP TABLE IF EXISTS `DCLN_dllh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_dllh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `dllhlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '道路绿化类型',
  `cd` decimal(9,2) DEFAULT NULL COMMENT '长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）道路绿化情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_dllh_demand`
--

DROP TABLE IF EXISTS `DCLN_dllh_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_dllh_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `dllhlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '道路绿化类型',
  `cd` decimal(9,2) DEFAULT NULL COMMENT '长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）道路绿化需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_dlxx`
--

DROP TABLE IF EXISTS `DCLN_dlxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_dlxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `kd` decimal(9,2) DEFAULT NULL COMMENT '宽度',
  `cd` decimal(9,2) DEFAULT NULL COMMENT '长度',
  `lmlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路面类型',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）道路信息情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_dlyh`
--

DROP TABLE IF EXISTS `DCLN_dlyh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_dlyh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `lmyhlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路面硬化类型',
  `cd` decimal(10,2) DEFAULT NULL COMMENT '长度',
  `kd` decimal(9,2) DEFAULT NULL COMMENT '宽度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）道路硬化情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_dlyh_demand`
--

DROP TABLE IF EXISTS `DCLN_dlyh_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_dlyh_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `lmyhlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路面硬化类型,使用代码表[dm_lmyhlx]',
  `kd` decimal(10,2) DEFAULT NULL COMMENT '宽度',
  `cd` decimal(10,2) DEFAULT NULL COMMENT '长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='道路硬化-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_dqfwzx`
--

DROP TABLE IF EXISTS `DCLN_dqfwzx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_dqfwzx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农村党群服务中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_dqfwzx_demand`
--

DROP TABLE IF EXISTS `DCLN_dqfwzx_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_dqfwzx_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农村党群服务中心-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_fwzyly`
--

DROP TABLE IF EXISTS `DCLN_fwzyly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_fwzyly` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `xmmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称',
  `sl` decimal(7,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `jsnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `gm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）粪污资源利用情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_fwzyly_demand`
--

DROP TABLE IF EXISTS `DCLN_fwzyly_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_fwzyly_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `xmmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称',
  `sl` decimal(7,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `jsnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `gm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）粪污资源利用需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gbyey`
--

DROP TABLE IF EXISTS `DCLN_gbyey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gbyey` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农村公办幼儿园';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gbyey_demand`
--

DROP TABLE IF EXISTS `DCLN_gbyey_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gbyey_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农村公办幼儿园-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gcjs`
--

DROP TABLE IF EXISTS `DCLN_gcjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gcjs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `zje` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `sgfy` decimal(10,2) DEFAULT NULL COMMENT '施工费用',
  `jlfy` decimal(10,2) DEFAULT NULL COMMENT '监理费用',
  `zbdqtfy` decimal(10,2) DEFAULT NULL COMMENT '招标等前期费用',
  `qtfy` decimal(10,2) DEFAULT NULL COMMENT '其他费用',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='工程建设管理（增加了总金额和其他费用）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gcjs_demand`
--

DROP TABLE IF EXISTS `DCLN_gcjs_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gcjs_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `zje` decimal(10,2) DEFAULT NULL COMMENT '总金额',
  `jlfy` decimal(10,2) DEFAULT NULL COMMENT '监理费用',
  `sgfy` decimal(10,2) DEFAULT NULL COMMENT '施工费用',
  `zbdqtfy` decimal(10,2) DEFAULT NULL COMMENT '招标等前期费用',
  `qtfy` decimal(10,2) DEFAULT NULL COMMENT '其他费用',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='工程建设管理-需求（增加了总金额和其他费用）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gdjs`
--

DROP TABLE IF EXISTS `DCLN_gdjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gdjs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gdjslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供电建设类型,使用代码表[dm_gdjslx]',
  `sjnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '升级内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `gznr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '改造内容',
  `xlcd` decimal(10,0) DEFAULT NULL COMMENT '线路长度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='供电建设';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gdjs_demand`
--

DROP TABLE IF EXISTS `DCLN_gdjs_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gdjs_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gdjslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供电建设类型,使用代码表[dm_gdjslx]',
  `sjnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '升级内容',
  `gznr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '改造内容',
  `xlcd` decimal(10,0) DEFAULT NULL COMMENT '线路长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='供电建设-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gdps`
--

DROP TABLE IF EXISTS `DCLN_gdps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gdps` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `wxcd` decimal(10,2) DEFAULT NULL COMMENT '维修管道长度',
  `wxje` decimal(10,2) DEFAULT NULL COMMENT '维修管道金额',
  `xjcd` decimal(10,2) DEFAULT NULL COMMENT '新建管道长度',
  `xije` decimal(10,2) DEFAULT NULL COMMENT '新建管道金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管道铺设';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gdps_demand`
--

DROP TABLE IF EXISTS `DCLN_gdps_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gdps_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `cd` decimal(10,2) DEFAULT NULL COMMENT '维修管道长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '维修管道金额',
  `xjcd` decimal(10,2) DEFAULT NULL COMMENT '新建管道长度',
  `xjje` decimal(10,2) DEFAULT NULL COMMENT '新建管道金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管道铺设_需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ggflfw`
--

DROP TABLE IF EXISTS `DCLN_ggflfw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ggflfw` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公共法律服务实体平台';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ggflfw_demand`
--

DROP TABLE IF EXISTS `DCLN_ggflfw_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ggflfw_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村庄id',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公共法律服务实体平台-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gsbz`
--

DROP TABLE IF EXISTS `DCLN_gsbz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gsbz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `gsbzlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供水保障类型',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）供水保障情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gsbz_demand`
--

DROP TABLE IF EXISTS `DCLN_gsbz_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gsbz_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `gsbzlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供水保障类型',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）供水保障需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gssb`
--

DROP TABLE IF EXISTS `DCLN_gssb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gssb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(6) DEFAULT NULL COMMENT '年份',
  `gsbzjslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供水保障建设类型,使用代码表[dm_gsbzjslx]',
  `sbmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备名称',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '设备数量',
  `cd` decimal(10,2) DEFAULT NULL COMMENT '长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='供水设备';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gssb_demand`
--

DROP TABLE IF EXISTS `DCLN_gssb_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gssb_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gsbzjslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供水保障建设类型,使用代码表[dm_gsbzjslx]',
  `sbmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备名称',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '设备数量',
  `cd` decimal(10,2) DEFAULT NULL COMMENT '长度',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='供水设备-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gyxgm`
--

DROP TABLE IF EXISTS `DCLN_gyxgm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gyxgm` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公益性公墓';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_gyxgm_demand`
--

DROP TABLE IF EXISTS `DCLN_gyxgm_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_gyxgm_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村庄id',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='公益性公墓-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_hcjs_demand`
--

DROP TABLE IF EXISTS `DCLN_hcjs_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_hcjs_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `hclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户厕类型,使用代码表[dm_gclx]',
  `sl` decimal(9,0) DEFAULT NULL COMMENT '座数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='户厕建设-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_hdcs`
--

DROP TABLE IF EXISTS `DCLN_hdcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_hdcs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `csmc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '场所名称',
  `mj` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `jzsj` datetime DEFAULT NULL COMMENT '建筑时间',
  `csgn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '场所功能',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）活动场所（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_htgqqysj`
--

DROP TABLE IF EXISTS `DCLN_htgqqysj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_htgqqysj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gcnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程内容',
  `gcl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='河塘沟渠清淤疏浚（修改）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_htgqqysj_demand`
--

DROP TABLE IF EXISTS `DCLN_htgqqysj_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_htgqqysj_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gcnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程内容',
  `gcl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='河塘沟渠清淤疏浚-需求(修改）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jbggfw`
--

DROP TABLE IF EXISTS `DCLN_jbggfw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jbggfw` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `jsxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设项目',
  `sfjl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否建立',
  `sl` decimal(7,0) DEFAULT NULL COMMENT '数量',
  `jsgm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设规模',
  `jsnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '已建设内容',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）基本公共服务情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jbggfw_demand`
--

DROP TABLE IF EXISTS `DCLN_jbggfw_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jbggfw_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `jsxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设项目',
  `sl` decimal(7,0) DEFAULT NULL COMMENT '数量',
  `jsgm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设规模',
  `jsnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）基本公共服务需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jbqk`
--

DROP TABLE IF EXISTS `DCLN_jbqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jbqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hjs` decimal(10,0) DEFAULT NULL COMMENT '户籍数',
  `rks` decimal(10,0) DEFAULT NULL COMMENT '人口数',
  `czhs` decimal(10,0) DEFAULT NULL COMMENT '常住户数',
  `czrks` decimal(10,0) DEFAULT NULL COMMENT '常住人口数',
  `xzqhmj` decimal(9,2) DEFAULT NULL COMMENT '行政区划面积',
  `cmjzqmj` decimal(10,2) DEFAULT NULL COMMENT '村民居住区面积',
  `cmzs` decimal(10,0) DEFAULT NULL COMMENT '村民组数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='基本情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jianhcjs`
--

DROP TABLE IF EXISTS `DCLN_jianhcjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jianhcjs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `gclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公厕类型',
  `sl` decimal(9,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）户厕建设情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jianhcjs_demand`
--

DROP TABLE IF EXISTS `DCLN_jianhcjs_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jianhcjs_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `gclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公厕类型',
  `sl` decimal(9,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）户厕建设需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jzyzjgq`
--

DROP TABLE IF EXISTS `DCLN_jzyzjgq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jzyzjgq` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `yzxqlb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '集中养殖小区类别,使用代码表[dm_yzxqlb]',
  `jzyzqgm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '集中养殖区规模',
  `hs` decimal(10,0) DEFAULT NULL COMMENT '入住养殖户数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='集中养殖加工区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jzyzjgq_demand`
--

DROP TABLE IF EXISTS `DCLN_jzyzjgq_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jzyzjgq_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `yzxqlb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '集中养殖小区类别,使用代码表[dm_yzxqlb]',
  `jzyzqgm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '集中养殖区规模',
  `hs` decimal(10,0) DEFAULT NULL COMMENT '入住养殖户数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='集中养殖加工区-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jzzhjg`
--

DROP TABLE IF EXISTS `DCLN_jzzhjg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jzzhjg` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '加工内容',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='集中性综合加工生产区（新建）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_jzzhjg_demand`
--

DROP TABLE IF EXISTS `DCLN_jzzhjg_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_jzzhjg_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '加工内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='集中性综合加工生产区-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ljfl`
--

DROP TABLE IF EXISTS `DCLN_ljfl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ljfl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `ljxrj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '垃圾箱容积',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='垃圾分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ljfl_demand`
--

DROP TABLE IF EXISTS `DCLN_ljfl_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ljfl_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `ljxrj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '垃圾箱容积',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='垃圾分类-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ljqy`
--

DROP TABLE IF EXISTS `DCLN_ljqy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ljqy` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `ljclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '垃圾车类型,使用代码表[dm_ljclx]',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='垃圾清运';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ljqy_demand`
--

DROP TABLE IF EXISTS `DCLN_ljqy_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ljqy_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `ljclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '垃圾车类型',
  `sl` decimal(9,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT 0.00 COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）垃圾清运需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ljsj`
--

DROP TABLE IF EXISTS `DCLN_ljsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ljsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `ljzcc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '垃圾暂存池规格',
  `sl` decimal(9,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(9,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）垃圾收集情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ljsj_demand`
--

DROP TABLE IF EXISTS `DCLN_ljsj_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ljsj_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `ljzcc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '垃圾暂存池规格',
  `sl` decimal(9,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(9,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）垃圾收集需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_mlsfc`
--

DROP TABLE IF EXISTS `DCLN_mlsfc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_mlsfc` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sfwmlsfxc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否为美丽示范村或美丽宜居村,使用代码表[dm_yesno]',
  `mlsfcxq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '荣誉称号,使用代码表[dm_mlsfcmc]',
  `czzj2022` decimal(10,4) DEFAULT NULL COMMENT '2022年财政资金',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽示范/宜居村';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_mlyjxmzj`
--

DROP TABLE IF EXISTS `DCLN_mlyjxmzj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_mlyjxmzj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fundid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业务表记录id',
  `fundflag` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '业务表对应字段标识',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区域id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `xmmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称及内容',
  `zjly` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资金来源,使用代码表[dm_bvfundtype]',
  `zjed` decimal(10,4) DEFAULT NULL COMMENT '资金额度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='美丽宜居村项目资金录入(重要！不能删)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_nfjs`
--

DROP TABLE IF EXISTS `DCLN_nfjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_nfjs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `sl` decimal(7,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）农房建设情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_nfjs_demand`
--

DROP TABLE IF EXISTS `DCLN_nfjs_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_nfjs_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村名称',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sl` decimal(7,0) DEFAULT NULL COMMENT '数量',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农房建设-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_nwgz`
--

DROP TABLE IF EXISTS `DCLN_nwgz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_nwgz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `gznr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '改造内容',
  `gzsl` decimal(9,0) DEFAULT NULL COMMENT '改造数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农房改造';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_nwgz_demand`
--

DROP TABLE IF EXISTS `DCLN_nwgz_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_nwgz_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村庄id',
  `gznr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '改造内容',
  `gzsl` decimal(9,0) DEFAULT NULL COMMENT '改造数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农房改造-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_nwwlmgz`
--

DROP TABLE IF EXISTS `DCLN_nwwlmgz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_nwwlmgz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `dhmj` decimal(10,0) DEFAULT NULL COMMENT '单户面积',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农房外立面改造';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_nwwlmgz_demand`
--

DROP TABLE IF EXISTS `DCLN_nwwlmgz_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_nwwlmgz_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `dhmj` decimal(10,0) DEFAULT NULL COMMENT '单户面积',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农房外立面改造-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_qjny`
--

DROP TABLE IF EXISTS `DCLN_qjny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_qjny` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '能源类型,使用代码表[dm_nylx]',
  `sbmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备名称',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `hs` decimal(10,0) DEFAULT NULL COMMENT '户数',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='清洁能源（新增设备名称）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_qjny_demand`
--

DROP TABLE IF EXISTS `DCLN_qjny_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_qjny_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '能源类型,使用代码表[dm_nylx]',
  `sbmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备名称',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `hs` decimal(10,0) DEFAULT NULL COMMENT '户数',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='清洁能源-需求（增加了设备名称）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_qt`
--

DROP TABLE IF EXISTS `DCLN_qt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_qt` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='其他';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_qt_demand`
--

DROP TABLE IF EXISTS `DCLN_qt_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_qt_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='其他-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_qysj`
--

DROP TABLE IF EXISTS `DCLN_qysj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_qysj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `zlnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '治理内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）清淤疏浚情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_qysj_demand`
--

DROP TABLE IF EXISTS `DCLN_qysj_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_qysj_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `zlnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '治理内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）清淤疏浚需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_rkqk`
--

DROP TABLE IF EXISTS `DCLN_rkqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_rkqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hjs` int(11) DEFAULT NULL COMMENT '户籍数',
  `zrks` int(11) DEFAULT NULL COMMENT '总人口数',
  `czhs` int(11) DEFAULT NULL COMMENT '常住户数',
  `czrks` int(11) DEFAULT NULL COMMENT '常住人口数',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `mj` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `cmzs` int(11) DEFAULT NULL COMMENT '村民组数',
  PRIMARY KEY (`id`),
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='数字乡村（辽宁）人口情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_slzl`
--

DROP TABLE IF EXISTS `DCLN_slzl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_slzl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `zljtnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '治理具体内容',
  `sl` int(10) DEFAULT NULL COMMENT '数量（处）',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）“十乱”治理情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_slzl_demand`
--

DROP TABLE IF EXISTS `DCLN_slzl_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_slzl_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `sl` int(10) DEFAULT NULL COMMENT '数量（处）',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `zljtnr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '治理具体内容',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）“十乱”治理需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_sxzl`
--

DROP TABLE IF EXISTS `DCLN_sxzl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_sxzl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sxzllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水系治理类型,使用代码表[dm_sxzllx]',
  `gcnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程内容',
  `gcl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='水系治理（去掉了个数，加了水系治理类型）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_sxzl_demand`
--

DROP TABLE IF EXISTS `DCLN_sxzl_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_sxzl_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sxzllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水系治理类型,使用代码表[dm_sxzllx]',
  `gcnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程内容',
  `gcl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='水系治理-需求（增加了水系治理类型）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_szxcjs`
--

DROP TABLE IF EXISTS `DCLN_szxcjs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_szxcjs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `ptlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台类型,使用代码表[dm_ptlx]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '具体建设内容',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `syqzsl` decimal(10,0) DEFAULT NULL COMMENT '受益群众数量',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `ptxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台性质',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村建设';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_szxcjs_demand`
--

DROP TABLE IF EXISTS `DCLN_szxcjs_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_szxcjs_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村庄id',
  `ptlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台类型,使用代码表[dm_ptlx]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '具体建设内容',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `syqzsl` decimal(10,0) DEFAULT NULL COMMENT '受益群众数量',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `ptxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台性质',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村建设-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_whgcggwsj`
--

DROP TABLE IF EXISTS `DCLN_whgcggwsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_whgcggwsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `mj` decimal(10,0) DEFAULT NULL COMMENT '面积',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `kws` decimal(10,0) DEFAULT NULL COMMENT '坑位数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `ywzrwx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '有无专人维修,使用代码表[dm_yw]',
  `rs` decimal(10,0) DEFAULT NULL COMMENT '人数',
  `gz` decimal(10,2) DEFAULT NULL COMMENT '工资',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文化广场公共卫生间';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_whgcggwsj_demand`
--

DROP TABLE IF EXISTS `DCLN_whgcggwsj_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_whgcggwsj_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `mj` decimal(10,0) DEFAULT NULL COMMENT '面积',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `kws` decimal(10,0) DEFAULT NULL COMMENT '坑位数',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `ywzrwx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '有无专人维修,使用代码表[dm_yw]',
  `rs` decimal(10,0) DEFAULT NULL COMMENT '人数',
  `gz` decimal(10,2) DEFAULT NULL COMMENT '工资',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文化广场公共卫生间-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_whgcjg`
--

DROP TABLE IF EXISTS `DCLN_whgcjg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_whgcjg` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `jglx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '景观类型,使用代码表[dm_jglx]',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `gg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规格',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文化广场景观（增加了建设内容）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_whgcjg_demand`
--

DROP TABLE IF EXISTS `DCLN_whgcjg_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_whgcjg_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `jglx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '景观类型,使用代码表[dm_jglx]',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `gg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规格',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文化广场景观-需求（增加了建设内容）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_whhdgc`
--

DROP TABLE IF EXISTS `DCLN_whhdgc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_whhdgc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `yt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用途',
  `mj` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）文化活动广场情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_whhdgc_demand`
--

DROP TABLE IF EXISTS `DCLN_whhdgc_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_whhdgc_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `mj` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='文化活动广场-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_wszl`
--

DROP TABLE IF EXISTS `DCLN_wszl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_wszl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `wszlss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '小型污水治理设施',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `rclnl` decimal(10,2) DEFAULT NULL COMMENT '日处理能力',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）污水治理设施情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_wszl_demand`
--

DROP TABLE IF EXISTS `DCLN_wszl_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_wszl_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `wszlss` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '小型污水治理设施',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `gm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `rclnl` decimal(10,0) DEFAULT 0 COMMENT '日处理能力',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）污水治理设施需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_wszlgc_demand`
--

DROP TABLE IF EXISTS `DCLN_wszlgc_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_wszlgc_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `areaid` decimal(10,0) DEFAULT NULL COMMENT '所属村id',
  `zllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '治理类型,使用代码表[dm_zllx]',
  `gcnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程内容',
  `gcl` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='污水治理工程-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_xsdwmsj`
--

DROP TABLE IF EXISTS `DCLN_xsdwmsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_xsdwmsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='新时代文明实践站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_xsdwmsj_demand`
--

DROP TABLE IF EXISTS `DCLN_xsdwmsj_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_xsdwmsj_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='新时代文明实践站-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_xxjcss`
--

DROP TABLE IF EXISTS `DCLN_xxjcss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_xxjcss` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `xxjcsslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '信息基础设施类型,使用代码表[dm_xxjcss]',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='信息基础设施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_xxjcss_demand`
--

DROP TABLE IF EXISTS `DCLN_xxjcss_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_xxjcss_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `xxjcsslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '信息基础设施类型,使用代码表[dm_xxjcss]',
  `jsnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='信息基础设施-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_xxwhhclz`
--

DROP TABLE IF EXISTS `DCLN_xxwhhclz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_xxwhhclz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `mj` decimal(10,0) DEFAULT NULL COMMENT '面积',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `rclnl` decimal(10,0) DEFAULT NULL COMMENT '日处理能力',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='小型无害化处理站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_xxwhhclz_demand`
--

DROP TABLE IF EXISTS `DCLN_xxwhhclz_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_xxwhhclz_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` decimal(10,0) DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `mj` decimal(10,0) DEFAULT NULL COMMENT '面积',
  `gs` decimal(10,0) DEFAULT NULL COMMENT '个数',
  `rclnl` decimal(10,0) DEFAULT NULL COMMENT '日处理能力',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='小型无害化处理站-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ylfw`
--

DROP TABLE IF EXISTS `DCLN_ylfw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ylfw` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收养能力',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='养老服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ylfw_demand`
--

DROP TABLE IF EXISTS `DCLN_ylfw_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ylfw_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '收养能力',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `je` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='养老服务-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ylwss`
--

DROP TABLE IF EXISTS `DCLN_ylwss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ylwss` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='医疗卫生室';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_ylwss_demand`
--

DROP TABLE IF EXISTS `DCLN_ylwss_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_ylwss_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='医疗卫生室-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_yygh`
--

DROP TABLE IF EXISTS `DCLN_yygh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_yygh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `yyghlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运营管护类型',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `sbgg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备规格',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '设备数量',
  `rypbsl` decimal(10,0) DEFAULT NULL COMMENT '人员配备数量',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）运营管护情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_yygh_demand`
--

DROP TABLE IF EXISTS `DCLN_yygh_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_yygh_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `yyghlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运营管护类型,使用代码表[dm_yyghlx]',
  `sbgg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设备规格',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '设备数量',
  `rypbsl` decimal(10,0) DEFAULT NULL COMMENT '人员配备数量',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='运营管护_需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_zhwhfwzx`
--

DROP TABLE IF EXISTS `DCLN_zhwhfwzx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_zhwhfwzx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='综合文化服务中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_zhwhfwzx_demand`
--

DROP TABLE IF EXISTS `DCLN_zhwhfwzx_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_zhwhfwzx_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `sf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否单独建立,使用代码表[dm_yesno]',
  `jsnr` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设内容',
  `gm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `jssj` datetime DEFAULT NULL COMMENT '建设时间',
  `hyfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '合用方式',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='综合文化服务中心-需求';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_zjtrqk`
--

DROP TABLE IF EXISTS `DCLN_zjtrqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_zjtrqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `xmmc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称,使用代码表[dm_xmmc]',
  `zcnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支持内容',
  `zjed` decimal(10,2) DEFAULT NULL COMMENT '资金额度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='资金投入情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_zjtrqk_demand`
--

DROP TABLE IF EXISTS `DCLN_zjtrqk_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_zjtrqk_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(5) DEFAULT NULL COMMENT '年份',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `xmmc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称,使用代码表[dm_xmmc]',
  `zcnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支持内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='资金投入情况-需求（修改)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_zzlh`
--

DROP TABLE IF EXISTS `DCLN_zzlh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_zzlh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `zzzl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '栽种种类',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）栽植绿化情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DCLN_zzlh_demand`
--

DROP TABLE IF EXISTS `DCLN_zzlh_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DCLN_zzlh_demand` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `zzzl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '栽种种类',
  `sl` decimal(10,0) DEFAULT NULL COMMENT '数量',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jslx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设需求类型,使用代码表[dm_jslx]',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dataindex` (`nf`,`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数字乡村（辽宁）栽植绿化需求情况（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DasRobotLog`
--

DROP TABLE IF EXISTS `DasRobotLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DasRobotLog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `robotId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '机器人id',
  `account` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '执行帐号',
  `statusCode` int(11) DEFAULT NULL COMMENT '执行结果状态',
  `statusMsg` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '执行结果消息',
  `taskType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务类型',
  `mainKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务主健值',
  `screenShot` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '屏幕截图',
  `createtime` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='机器人处理日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DifficultDeclaration`
--

DROP TABLE IF EXISTS `DifficultDeclaration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DifficultDeclaration` (
  `Id` bigint(20) NOT NULL,
  `AreaId` int(11) NOT NULL,
  `ContentText` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ContentVoice` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `MediaUrls` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `SubmitUserId` int(11) NOT NULL,
  `SubmitDate` datetime NOT NULL,
  `ReplyUserId` int(11) NOT NULL,
  `ReplyDate` datetime DEFAULT NULL,
  `ReplyContent` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ReplyMediaUrls` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='困难申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalActivityViewMap`
--

DROP TABLE IF EXISTS `DigitalActivityViewMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalActivityViewMap` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activityId` bigint(10) NOT NULL DEFAULT 0 COMMENT '积分兑换活动id',
  `userId` int(10) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `activity_user` (`activityId`,`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='积分兑换活动浏览MAP表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalCompany`
--

DROP TABLE IF EXISTS `DigitalCompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalCompany` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `companyName` varchar(255) NOT NULL DEFAULT '' COMMENT '企业名称',
  `companyType` int(11) NOT NULL DEFAULT 0 COMMENT '企业类型',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '企业位置',
  `companyOwner` varchar(50) NOT NULL DEFAULT '' COMMENT '企业所属人',
  `ownerPhone` varchar(255) DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalDataReport`
--

DROP TABLE IF EXISTS `DigitalDataReport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalDataReport` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域id',
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `description` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '描述',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  `endDate` date NOT NULL DEFAULT '2020-01-01' COMMENT '截止时间',
  `iconFileId` int(10) NOT NULL DEFAULT 0 COMMENT '图标文件id',
  `linkType` int(10) NOT NULL DEFAULT 0 COMMENT '链接类型，1：二维码，2：url，3：小程序ID',
  `qrcodeFileId` int(10) NOT NULL DEFAULT 0 COMMENT '二维码文件id',
  `url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'url地址',
  `originalId` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '小程序账号原始ID',
  `pageId` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '小程序页面ID',
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='数据填报表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalDataReportDetail`
--

DROP TABLE IF EXISTS `DigitalDataReportDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalDataReportDetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dataReportId` int(10) NOT NULL COMMENT '数据填报id',
  `userId` int(10) NOT NULL COMMENT '用户id',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '户籍人口表Id',
  `relatedId` varchar(2048) NOT NULL DEFAULT '' COMMENT '关联id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_report_user` (`dataReportId`,`userId`),
  UNIQUE KEY `data_report_population` (`dataReportId`,`populationId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='数据填报详情表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalDocument`
--

DROP TABLE IF EXISTS `DigitalDocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalDocument` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` varchar(8192) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `createdGroupType` tinyint(2) NOT NULL DEFAULT 0 COMMENT '单位类型，2:区域(村委) 3:部门',
  `createdGroupId` int(10) NOT NULL DEFAULT 0 COMMENT '根据createdByGroupType类型，对应的区域id/部门id',
  `viewCnt` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='公文';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalDocumentFileMap`
--

DROP TABLE IF EXISTS `DigitalDocumentFileMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalDocumentFileMap` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `documentId` int(10) NOT NULL DEFAULT 0 COMMENT '公文id',
  `fileId` int(10) NOT NULL DEFAULT 0 COMMENT '附件文件id',
  `fileUrl` varchar(2048) NOT NULL DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='公文附件对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalDocumentMap`
--

DROP TABLE IF EXISTS `DigitalDocumentMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalDocumentMap` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `documentId` int(10) NOT NULL DEFAULT 0 COMMENT '公文id',
  `type` tinyint(2) NOT NULL COMMENT '2:区域(社区/村) 3:部门',
  `areaId` int(10) NOT NULL COMMENT '区域id',
  `departmentId` int(10) NOT NULL DEFAULT 0 COMMENT '部门id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `documentId` (`documentId`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8 COMMENT='公文发布范围对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalDocumentUserMap`
--

DROP TABLE IF EXISTS `DigitalDocumentUserMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalDocumentUserMap` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `documentId` int(10) NOT NULL DEFAULT 0 COMMENT '公文id',
  `userId` int(10) NOT NULL DEFAULT 0 COMMENT '用户id',
  `isRead` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已读',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=1482 DEFAULT CHARSET=utf8 COMMENT='公文发布用户对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalFarmLand`
--

DROP TABLE IF EXISTS `DigitalFarmLand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalFarmLand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `plantType` int(11) NOT NULL DEFAULT 0 COMMENT '种植物类型',
  `landArea` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '种植面积单位亩',
  `capacity` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '产能公斤/亩',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='耕地';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalGreenHouse`
--

DROP TABLE IF EXISTS `DigitalGreenHouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalGreenHouse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `greenHouseType` int(11) NOT NULL DEFAULT 0 COMMENT '大棚类型',
  `greenHouseArea` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '大棚面积单位亩',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '大棚位置',
  `greenHouseOwner` varchar(50) NOT NULL DEFAULT '' COMMENT '大棚所属人/企业',
  `ownerPhone` varchar(255) DEFAULT '',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='大棚';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalObjectEnum`
--

DROP TABLE IF EXISTS `DigitalObjectEnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalObjectEnum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `enumName` varchar(255) NOT NULL DEFAULT '' COMMENT '枚举的名称',
  `enumType` int(11) NOT NULL DEFAULT 0 COMMENT '枚举类型 1耕地种植 2大棚 3企业',
  `sequence` int(11) NOT NULL DEFAULT 0 COMMENT '排序 越大越后面',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='数字信息枚举';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalPointsRedemptionActivity`
--

DROP TABLE IF EXISTS `DigitalPointsRedemptionActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalPointsRedemptionActivity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '内容',
  `startDate` date NOT NULL DEFAULT '2020-01-01',
  `endDate` date NOT NULL DEFAULT '2020-01-01',
  `coverFileId` int(10) NOT NULL DEFAULT 0 COMMENT '封面文件id',
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域id',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `viewCnt` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='积分兑换活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalPublicAsset`
--

DROP TABLE IF EXISTS `DigitalPublicAsset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalPublicAsset` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `assetName` varchar(50) NOT NULL DEFAULT '' COMMENT '财产名称',
  `assetWorth` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '评估价值',
  `payMoney` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '购买是价格',
  `boughtTime` date NOT NULL DEFAULT '0000-00-00' COMMENT '购买日期',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='公共财产';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalPublicFacility`
--

DROP TABLE IF EXISTS `DigitalPublicFacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalPublicFacility` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `facilityName` varchar(50) NOT NULL DEFAULT '' COMMENT '设施名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '设施存放位置',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='公共设施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalSupervisor`
--

DROP TABLE IF EXISTS `DigitalSupervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalSupervisor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `groupName` varchar(50) NOT NULL DEFAULT '' COMMENT '村组名称',
  `supervisorName` varchar(50) NOT NULL DEFAULT '' COMMENT '网格员名字',
  `supervisorPhone` varchar(50) NOT NULL DEFAULT '' COMMENT '网格员电话',
  `supervisorBirthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '网格员生日',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='网格员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalSupplies`
--

DROP TABLE IF EXISTS `DigitalSupplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalSupplies` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `userId` bigint(20) NOT NULL DEFAULT 0 COMMENT '上次操作人id',
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `assetWorth` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '价值',
  `number` int(10) NOT NULL DEFAULT 0 COMMENT '数量',
  `unit` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '单位',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `type` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=积分物品',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='通用物资表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalVillageCommitteeMember`
--

DROP TABLE IF EXISTS `DigitalVillageCommitteeMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalVillageCommitteeMember` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `memberName` varchar(255) NOT NULL DEFAULT '' COMMENT '村委姓名',
  `memberTitle` varchar(50) NOT NULL DEFAULT '' COMMENT '村委职位',
  `memberPhone` varchar(255) DEFAULT '',
  `memberBirthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '村委生日',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `nationality` varchar(20) NOT NULL DEFAULT '' COMMENT '民族',
  `education` varchar(20) NOT NULL DEFAULT '' COMMENT '学历',
  `profilePicture` varchar(255) NOT NULL DEFAULT '' COMMENT '个人头像',
  `sequence` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='村委';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalVillageGroup`
--

DROP TABLE IF EXISTS `DigitalVillageGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalVillageGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `groupName` varchar(50) NOT NULL DEFAULT '' COMMENT '村组名称',
  `groupLeader` varchar(255) DEFAULT '',
  `groupLeaderPhone` varchar(255) DEFAULT '',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='村组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalVillageSurvey`
--

DROP TABLE IF EXISTS `DigitalVillageSurvey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalVillageSurvey` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `villageId` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属村的id',
  `dataYear` int(11) NOT NULL DEFAULT 0 COMMENT '数据年份',
  `population` int(11) NOT NULL DEFAULT 0 COMMENT '人口',
  `tenement` int(11) NOT NULL DEFAULT 0 COMMENT '户数',
  `area` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '村面积',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `partyCount` int(11) NOT NULL DEFAULT 0 COMMENT '党员数量',
  `villageLongitude` varchar(255) NOT NULL DEFAULT '' COMMENT '村经度',
  `villageLatitude` varchar(255) NOT NULL DEFAULT '' COMMENT '村纬度',
  `officeLongitude` varchar(255) NOT NULL DEFAULT '' COMMENT '办公室经度',
  `officeLatitude` varchar(255) NOT NULL DEFAULT '' COMMENT '办公室纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='村情概况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalWxMsg`
--

DROP TABLE IF EXISTS `DigitalWxMsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalWxMsg` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `contentKeyNames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信端收到的模板前缀',
  `contentKeys` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信端收到的模板键名',
  `contentValues` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信端收到的模板键值',
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  `createdUserName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '发送人的姓名',
  `createdSrc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '发送人所属村或者部门',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0未发布 1已发布',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `postedAt` timestamp NULL DEFAULT NULL,
  `viewTimes` int(10) NOT NULL DEFAULT 0 COMMENT '查看次数',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='微信通知内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalWxMsgCondition`
--

DROP TABLE IF EXISTS `DigitalWxMsgCondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalWxMsgCondition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wxMsgId` bigint(20) NOT NULL DEFAULT 0 COMMENT '微信通知内容的id',
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `parentAreaName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '所在区域的上级区域名称',
  `areaName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '所在区域名称',
  `houseNames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '门牌数组',
  `recievePerson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接收人员 所有人/户主',
  `ageRange` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '接收年龄段数组',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '性别 1男，2女数组',
  `education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '学历数组',
  `marital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '婚姻数组',
  `political` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '政治面貌数组',
  `income` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收入来源数组',
  `populationType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '人口类型属性数组',
  `conditionCode` bigint(20) NOT NULL DEFAULT 0 COMMENT '编码，预留用',
  PRIMARY KEY (`id`),
  KEY `wxMsgId` (`wxMsgId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='微信通知条件分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DigitalWxMsgDes`
--

DROP TABLE IF EXISTS `DigitalWxMsgDes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DigitalWxMsgDes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `wxMsgId` bigint(20) NOT NULL DEFAULT 0 COMMENT '微信通知内容的id',
  `wxMsgConditionId` bigint(20) NOT NULL DEFAULT 0 COMMENT '微信通知条件分组id',
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `wxOpenId` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信通知的openid',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '微信通知到达人id',
  `realName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信通知到达人名字',
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '微信通知到达人联系方式',
  `parentAreaName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '所在区域的上级区域名称',
  `areaName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '所在区域名称',
  `houseName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '门牌名',
  `houseNumber` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '门牌号',
  `syncToWx` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已同步发布到微信端 0未同步 1已同步',
  `syncTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步发布到微信端时间',
  `read` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已读 0未读 1已读',
  `isSelfDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否已自行删除 自行删除在我的列表里不显示 0未删除 1已删除',
  `desCode` bigint(20) NOT NULL DEFAULT 0 COMMENT '编码，预留用',
  `conditionCode` bigint(20) NOT NULL DEFAULT 0 COMMENT '编码，预留用',
  PRIMARY KEY (`id`),
  KEY `wxMsgId` (`wxMsgId`),
  KEY `wxMsgConditionId` (`wxMsgConditionId`),
  KEY `syncToWx` (`syncToWx`),
  KEY `read` (`read`),
  KEY `isSelfDeleted` (`isSelfDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='微信通知到达人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPApplication`
--

DROP TABLE IF EXISTS `FFPApplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPApplication` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `workflowId` int(10) NOT NULL DEFAULT 0 COMMENT '流程的id',
  `labourCount` int(10) NOT NULL DEFAULT 0 COMMENT '劳动力数量',
  `studentCount` int(10) NOT NULL DEFAULT 0 COMMENT '在校生数量',
  `chronicCount` int(10) NOT NULL DEFAULT 0 COMMENT '长期慢性病患者',
  `memberCount` int(10) NOT NULL DEFAULT 0 COMMENT '家庭成员',
  `seriousDiseaseCount` int(10) NOT NULL DEFAULT 0 COMMENT '重病患者',
  `disabledPeopleCount` int(10) NOT NULL DEFAULT 0 COMMENT '残疾人',
  `allowanceCount` int(10) NOT NULL DEFAULT 0 COMMENT '享受津贴人数',
  `yearIncome` double NOT NULL DEFAULT 0 COMMENT '年收入',
  `difficulty` varchar(2048) NOT NULL DEFAULT '' COMMENT '难以解决问题',
  `difficultyRemark` varchar(2048) NOT NULL DEFAULT '0' COMMENT '难以解决问题,问题补充',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1:已删除，0:未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`),
  KEY `workflowId` (`workflowId`)
) ENGINE=InnoDB AUTO_INCREMENT=404 DEFAULT CHARSET=utf8 COMMENT='申请书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPApplicationLog`
--

DROP TABLE IF EXISTS `FFPApplicationLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPApplicationLog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `applicationId` int(10) NOT NULL DEFAULT 0,
  `message` varchar(4096) NOT NULL DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '修改人',
  PRIMARY KEY (`id`),
  KEY `applicationId` (`applicationId`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8 COMMENT='申请书修改日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPAutoNumber`
--

DROP TABLE IF EXISTS `FFPAutoNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPAutoNumber` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12788 DEFAULT CHARSET=utf8 COMMENT='自增Id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPDataTask`
--

DROP TABLE IF EXISTS `FFPDataTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPDataTask` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `status` int(11) DEFAULT 0 COMMENT '1完成，0未完成',
  `description` varchar(8192) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `fileId` int(11) DEFAULT 0 COMMENT '文件的id',
  `type` int(11) DEFAULT 0 COMMENT '导入类型1基础表，2收支表，3建档立卡',
  `sucessCount` int(11) DEFAULT 0 COMMENT '成功数',
  `failCount` int(11) DEFAULT 0 COMMENT '失败数',
  `totalCount` int(11) DEFAULT 0 COMMENT '总条数',
  `takeTime` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='导入数据任务记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPDepartmentCompareRecord`
--

DROP TABLE IF EXISTS `FFPDepartmentCompareRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPDepartmentCompareRecord` (
  `id` bigint(20) NOT NULL,
  `areaId` int(10) NOT NULL DEFAULT 0,
  `departmentId` int(10) NOT NULL COMMENT '任务名称',
  `status` int(1) DEFAULT 1 COMMENT '任务状态 1待审核，2通过，3不通过',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户的id',
  `idCard` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '户主身份证号',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '手机号',
  `riskType` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '户属性',
  `povertyRisk` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '风险点，在ffpworkflow表',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `workflowId` int(11) DEFAULT NULL COMMENT '关联的工作流的id',
  `remark` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注，审核不通过的原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='行业比对记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPDepartmentImport`
--

DROP TABLE IF EXISTS `FFPDepartmentImport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPDepartmentImport` (
  `id` bigint(20) NOT NULL,
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域Id',
  `populationId` int(11) NOT NULL DEFAULT 0 COMMENT '人口的id',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户的id',
  `realName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(30) NOT NULL COMMENT '身份证号',
  `livingAddress` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `detail` longtext DEFAULT NULL COMMENT '详情',
  `department` varchar(255) DEFAULT NULL COMMENT '行业部门名称',
  `submited` int(10) DEFAULT 1 COMMENT '是否已经是国家平台监测户,1否，2是',
  `status` int(10) DEFAULT 1 COMMENT '1待核查，2无需认定，3已走认定流程，4认定通过，5认定不通过，6结束',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行业部门对比导入表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPDepartmentNotify`
--

DROP TABLE IF EXISTS `FFPDepartmentNotify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPDepartmentNotify` (
  `id` bigint(20) NOT NULL,
  `areaId` int(10) DEFAULT 0 COMMENT '区域Id',
  `populationId` int(10) DEFAULT 0,
  `departmentId` int(10) DEFAULT 0,
  `householderId` int(11) NOT NULL DEFAULT 0 COMMENT '户主的人口的id',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户的id',
  `realName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(30) NOT NULL COMMENT '身份证号',
  `livingAddress` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `detail` longtext DEFAULT NULL COMMENT '详情',
  `department` varchar(255) DEFAULT NULL COMMENT '行业部门名称',
  `submited` int(10) DEFAULT 1 COMMENT '是否已经是国家平台监测户,1否，2是',
  `status` int(10) DEFAULT 1 COMMENT '1待核查，2无需认定，3已走认定流程，4认定通过，5认定不通过，6结束',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `remark` varchar(4096) DEFAULT NULL COMMENT '备注，审核不通过的原因',
  `workflowId` int(11) DEFAULT 0 COMMENT '工作流的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行业部门预警表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPDocument`
--

DROP TABLE IF EXISTS `FFPDocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPDocument` (
  `id` bigint(20) NOT NULL,
  `workflowId` int(11) DEFAULT NULL COMMENT '工作流ID',
  `jsonData` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文书JSON数据',
  `docCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文书Code',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='防返贫文书';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPFeedback`
--

DROP TABLE IF EXISTS `FFPFeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPFeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称，编号自动生成',
  `workflowId` int(11) NOT NULL COMMENT '工作流ID',
  `flowStatus` int(11) NOT NULL COMMENT '反馈类型  1摸排确认 2待评议 3公示 4待上报乡镇 5乡镇待核查 6待县审定 7行业部门比对 8县审定通过 9已上报国家平台 99结束',
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '结果 通过、不通过',
  `resultDescribe` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结果描述',
  `reason` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '原因',
  `status` int(11) NOT NULL COMMENT '状态0待审核 1待反馈2已反馈3待确认4已确认',
  `info` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '汇报信息',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片 多个用,分割',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  `notifyType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '通知类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='防返贫反馈表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHelp`
--

DROP TABLE IF EXISTS `FFPHelp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHelp` (
  `id` bigint(20) NOT NULL,
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `workflowId` int(11) DEFAULT NULL COMMENT '工作流ID',
  `helpMainpart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶主体',
  `helpMainpartId` int(11) DEFAULT NULL COMMENT '帮扶主体ID',
  `helpPerson` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶责任人',
  `helpPersonId` int(11) DEFAULT NULL COMMENT '帮扶责任人ID',
  `status` int(1) DEFAULT 1 COMMENT '状态 1进行中，2已完成',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='帮扶表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHelpPlan`
--

DROP TABLE IF EXISTS `FFPHelpPlan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHelpPlan` (
  `id` bigint(20) NOT NULL,
  `helpId` bigint(20) NOT NULL COMMENT '帮扶ID',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `key` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '指标名称',
  `value` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '指标值',
  `helpPlan` longtext CHARACTER SET utf8 DEFAULT NULL COMMENT '帮扶计划',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='帮扶计划表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHelpPlanEx`
--

DROP TABLE IF EXISTS `FFPHelpPlanEx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHelpPlanEx` (
  `id` bigint(20) NOT NULL,
  `helpPlanId` bigint(20) NOT NULL COMMENT '帮扶计划ID',
  `info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '落实信息描述',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片 多个用,分割',
  `voiceUrl` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '语音链接地址 多个用,分割',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='帮扶计划扩展表 (保存落实回访情况)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdCode`
--

DROP TABLE IF EXISTS `FFPHouseholdCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdCode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT 'VillageHouseholdCode 户码Id',
  `mobile` varchar(1024) NOT NULL DEFAULT '' COMMENT '联系方式',
  `mobileShort` varchar(50) DEFAULT '' COMMENT '联系方式简式',
  `householdType` varchar(50) DEFAULT '' COMMENT '监测对象，被监测的类型',
  `IsInPlaceArea` int(11) DEFAULT 0 COMMENT '是否在安置区 1是 0否',
  `isWithoutPoverty` int(10) NOT NULL DEFAULT 0 COMMENT '脱贫户 1是 0否',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1正常，0禁用',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `remark` varchar(2048) NOT NULL DEFAULT '' COMMENT '备注',
  `riskType` varchar(20) DEFAULT NULL COMMENT '户属性',
  `isImportant` int(11) NOT NULL DEFAULT 2 COMMENT '是否是重点人群',
  `standard` int(11) unsigned DEFAULT 0 COMMENT '省监测标准，每年用12345678来表示 1>= 2022年7260元2< 2022年7260元',
  `existrisk` int(11) DEFAULT 0 COMMENT '是否存在返贫风险 0 不存在，1存在',
  `riskBegin` timestamp NULL DEFAULT NULL COMMENT '风险识别时间',
  `riskEnd` timestamp NULL DEFAULT NULL COMMENT '风险消除时间',
  `burdenCount` decimal(20,2) DEFAULT NULL COMMENT '负担人数',
  `identifyYear` int(4) DEFAULT 0 COMMENT '识别年度',
  `outPovertyYear` int(4) DEFAULT 0 COMMENT '脱贫年度',
  `isArmyFamily` int(2) DEFAULT 1 COMMENT '是否军属烈,1是，2不是',
  `bankName` varchar(255) DEFAULT '' COMMENT '开户行名称',
  `bankCardNo` varchar(255) DEFAULT '' COMMENT '银行卡号',
  `identityYear` int(4) DEFAULT 0 COMMENT '识别年度',
  `employeeEndowmentInsuranceStatus` varchar(255) DEFAULT '' COMMENT '是否参加城乡职工基本养老保险',
  `employeeMedicalInsuranceStatus` varchar(255) DEFAULT '' COMMENT '是否参加城乡职工基本养老保险',
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`),
  KEY `FFPHouseholdCode_riskEnd` (`riskEnd`),
  KEY `householdType` (`householdType`)
) ENGINE=InnoDB AUTO_INCREMENT=5882 DEFAULT CHARSET=utf8 COMMENT='防返贫户码拓展表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdExtraInfo`
--

DROP TABLE IF EXISTS `FFPHouseholdExtraInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdExtraInfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `key` varchar(128) NOT NULL DEFAULT '' COMMENT '指标名称',
  `value` varchar(128) NOT NULL DEFAULT '' COMMENT '指标值',
  `remark` varchar(128) DEFAULT '' COMMENT '指标值补充说明',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  `valueType` int(11) DEFAULT 1 COMMENT '1字典项，2用户填写的值',
  `groupCode` varchar(255) DEFAULT NULL COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10778 DEFAULT CHARSET=utf8 COMMENT='农户扩展信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdExtraLog`
--

DROP TABLE IF EXISTS `FFPHouseholdExtraLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdExtraLog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0,
  `message` varchar(4096) NOT NULL DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '修改人',
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`)
) ENGINE=InnoDB AUTO_INCREMENT=13102 DEFAULT CHARSET=utf8 COMMENT='农户扩展信息修改日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdMopaiIncome`
--

DROP TABLE IF EXISTS `FFPHouseholdMopaiIncome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdMopaiIncome` (
  `id` bigint(20) NOT NULL,
  `taskId` bigint(20) NOT NULL,
  `typeCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类编码',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户的id',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '收入细项编码',
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '名称',
  `amount` double DEFAULT 0 COMMENT '金额',
  `quantity` double DEFAULT 0 COMMENT '数量',
  `count` int(10) DEFAULT 0 COMMENT '出栏数',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '说明',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收入摸排信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdPeriodData`
--

DROP TABLE IF EXISTS `FFPHouseholdPeriodData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdPeriodData` (
  `id` bigint(20) NOT NULL,
  `householdId` int(10) NOT NULL DEFAULT 0,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'key:memberCount成员数',
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '数据值',
  `periodUnit` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1' COMMENT '周期单位：1年2季度3月',
  `periodValue` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '周期值：比如2022',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='户周期数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdSubmit`
--

DROP TABLE IF EXISTS `FFPHouseholdSubmit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdSubmit` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AreaId` int(11) NOT NULL COMMENT '行政区域Id',
  `TaskId` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务编号',
  `HouseholdId` int(11) NOT NULL COMMENT '户码 Id',
  `HouseName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '门牌名',
  `HouseNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '门牌号',
  `HouseholdHead` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主',
  `ContactMobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `FamilySize` int(11) DEFAULT NULL COMMENT '家庭成员数量',
  `RiskType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户属性',
  `IsImportant` bit(1) DEFAULT NULL COMMENT '是否重点人群',
  `IncomePer` decimal(10,2) DEFAULT NULL COMMENT '人均纯收入',
  `State` int(11) DEFAULT NULL COMMENT '数据状态',
  `Extra` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '扩展信息',
  `DetailReportId` int(11) DEFAULT NULL COMMENT '详情文件编号',
  `SubmitUserId` int(11) DEFAULT NULL COMMENT '提交人编号',
  `SubmitUserName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提交人姓名',
  `ExcelReportId` int(11) DEFAULT NULL COMMENT 'Excel 格式报表 Id',
  `HtmlReportId` int(11) DEFAULT NULL COMMENT 'Html 格式报表文件 id',
  `CreatedAt` datetime DEFAULT NULL COMMENT '创建时间',
  `CreatedBy` int(11) DEFAULT NULL COMMENT '创建人',
  `UpdatedAt` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdatedBy` int(11) DEFAULT NULL COMMENT '更新人',
  `IsDeleted` int(11) DEFAULT NULL COMMENT '是否删除',
  `ExistRisk` bit(1) DEFAULT b'0' COMMENT '是否存在返贫风险',
  `CompareStandard` int(11) DEFAULT 0 COMMENT '对比监测标准',
  PRIMARY KEY (`Id`),
  KEY `HouseholdId_Index` (`HouseholdId`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdSubmitOperationRecord`
--

DROP TABLE IF EXISTS `FFPHouseholdSubmitOperationRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdSubmitOperationRecord` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SubmitId` int(11) DEFAULT NULL,
  `HouseholdId` int(11) DEFAULT NULL,
  `TaskId` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务编号',
  `Operation` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Remark` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `CreatedBy` int(11) DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL,
  `UpdatedBy` int(11) DEFAULT NULL,
  `IsDeleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=804 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPHouseholdSubmit_copy1`
--

DROP TABLE IF EXISTS `FFPHouseholdSubmit_copy1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPHouseholdSubmit_copy1` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AreaId` int(11) NOT NULL COMMENT '行政区域Id',
  `TaskId` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务编号',
  `HouseholdId` int(11) NOT NULL COMMENT '户码 Id',
  `HouseName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '门牌名',
  `HouseNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '门牌号',
  `HouseholdHead` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主',
  `ContactMobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `FamilySize` int(11) DEFAULT NULL COMMENT '家庭成员数量',
  `RiskType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户属性',
  `IsImportant` bit(1) DEFAULT NULL COMMENT '是否重点人群',
  `IncomePer` decimal(10,2) DEFAULT NULL COMMENT '人均纯收入',
  `State` int(11) DEFAULT NULL COMMENT '数据状态',
  `Extra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '扩展信息',
  `DetailReportId` int(11) DEFAULT NULL COMMENT '详情文件编号',
  `SubmitUserId` int(11) DEFAULT NULL COMMENT '提交人编号',
  `SubmitUserName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提交人姓名',
  `ExcelReportId` int(11) DEFAULT NULL COMMENT 'Excel 格式报表 Id',
  `HtmlReportId` int(11) DEFAULT NULL COMMENT 'Html 格式报表文件 id',
  `CreatedAt` datetime DEFAULT NULL COMMENT '创建时间',
  `CreatedBy` int(11) DEFAULT NULL COMMENT '创建人',
  `UpdatedAt` datetime DEFAULT NULL COMMENT '更新时间',
  `UpdatedBy` int(11) DEFAULT NULL COMMENT '更新人',
  `IsDeleted` int(11) DEFAULT NULL COMMENT '是否删除',
  `ExistRisk` bit(1) DEFAULT b'0' COMMENT '是否存在返贫风险',
  `CompareStandard` int(11) DEFAULT 0 COMMENT '对比监测标准',
  PRIMARY KEY (`Id`),
  KEY `HouseholdId_Index` (`HouseholdId`)
) ENGINE=InnoDB AUTO_INCREMENT=478 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPMatrix`
--

DROP TABLE IF EXISTS `FFPMatrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPMatrix` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT '网格名称',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `remark` longtext NOT NULL DEFAULT '' COMMENT '备注',
  `houseCount` int(11) NOT NULL DEFAULT 0 COMMENT '户数',
  `inspector` varchar(256) NOT NULL DEFAULT '' COMMENT '网格员',
  `inspectorManager` varchar(256) NOT NULL DEFAULT '' COMMENT '网格长',
  `pointItems` longtext NOT NULL DEFAULT '' COMMENT '打点范围经纬度',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '修改人',
  `areaId` int(11) DEFAULT 0 COMMENT '网格所属镇的id',
  PRIMARY KEY (`id`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COMMENT='区域网格';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPMatrixHousehold`
--

DROP TABLE IF EXISTS `FFPMatrixHousehold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPMatrixHousehold` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `matrixId` int(10) NOT NULL COMMENT '用户id，匿名时为空',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `matrixId` (`matrixId`),
  KEY `householdId` (`householdId`)
) ENGINE=InnoDB AUTO_INCREMENT=13162 DEFAULT CHARSET=utf8 COMMENT='区域网格户码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPMoPaiLog`
--

DROP TABLE IF EXISTS `FFPMoPaiLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPMoPaiLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `existRisk` int(11) NOT NULL COMMENT '是否存在返贫风险 1是2否',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片 多个用,分割',
  `voiceUrl` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '语音链接地址 多个用,分割',
  `describe` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述信息',
  `moPaiDate` datetime NOT NULL DEFAULT current_timestamp() COMMENT '摸排日期',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  `matrixId` int(10) NOT NULL COMMENT '网格id',
  `yearAvgIncome` double DEFAULT 0 COMMENT '年人均收入',
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`)
) ENGINE=InnoDB AUTO_INCREMENT=860 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPMopaiHanwrittingSign`
--

DROP TABLE IF EXISTS `FFPMopaiHanwrittingSign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPMopaiHanwrittingSign` (
  `id` bigint(20) NOT NULL,
  `type` int(10) NOT NULL DEFAULT 0 COMMENT '1收入摸排农户签名',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户的id',
  `taskId` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务的id',
  `sign` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 0 COMMENT '收入细项编码',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '说明',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收入摸排签名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPlatformAddress`
--

DROP TABLE IF EXISTS `FFPPlatformAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPlatformAddress` (
  `id` bigint(20) NOT NULL,
  `year` int(11) DEFAULT NULL COMMENT '年份',
  `objectId` int(10) NOT NULL DEFAULT 0 COMMENT '关联的Id',
  `province` varchar(50) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(50) NOT NULL DEFAULT '' COMMENT '市',
  `district` varchar(50) NOT NULL DEFAULT '' COMMENT '区',
  `mapCode` varchar(2048) NOT NULL DEFAULT '' COMMENT '省市区对应行政编码',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '详细地址',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 户籍地，2 居住地，3籍贯，4工作所在地, 5返乡来源地, 6接种地',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国家平台地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPlatformHousehold`
--

DROP TABLE IF EXISTS `FFPPlatformHousehold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPlatformHousehold` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `isSubmit` bit(1) DEFAULT b'0' COMMENT '是否已经提交到国家平台',
  `areaCode` bigint(20) NOT NULL COMMENT '所在村的code',
  `workflowId` bigint(20) DEFAULT NULL COMMENT '提交流程的id',
  `houseName` varchar(1024) DEFAULT NULL COMMENT '户名称',
  `houseNumber` varchar(1024) DEFAULT NULL COMMENT '户号',
  `areaId` int(11) NOT NULL COMMENT '所在村的id',
  `groupId` bigint(20) NOT NULL COMMENT '分组id',
  `status` int(11) DEFAULT 1 COMMENT '状态，1正常2禁用',
  `year` int(11) NOT NULL COMMENT '年份',
  `mobile` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `remark` varchar(4096) DEFAULT NULL COMMENT '备注',
  `householdType` varchar(20) DEFAULT NULL COMMENT '监测类型',
  `isWithoutPoverty` int(11) DEFAULT 0 COMMENT '是否脱贫户，1是，0不是',
  `isInPlaceArea` int(11) DEFAULT 0 COMMENT '是否在安置区 1是 0否',
  `householdId` int(11) NOT NULL COMMENT '户的id,FFPHouseholdCode表的id',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0正常，1删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国家平台的年度户信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPlatformHouseholdExtra`
--

DROP TABLE IF EXISTS `FFPPlatformHouseholdExtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPlatformHouseholdExtra` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `year` int(11) DEFAULT NULL COMMENT '年份',
  `householdId` bigint(20) NOT NULL COMMENT '户的id,FFPPlatformHousehold表的id',
  `key` varchar(128) NOT NULL DEFAULT '' COMMENT '字典的typeCode',
  `value` varchar(4096) NOT NULL DEFAULT '' COMMENT '对应的值',
  `remark` varchar(4096) DEFAULT NULL COMMENT '备注',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0正常，1删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='国家平台的年度户扩展信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPlatformHouseholdMember`
--

DROP TABLE IF EXISTS `FFPPlatformHouseholdMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPlatformHouseholdMember` (
  `id` bigint(20) NOT NULL,
  `workflowId` int(11) DEFAULT NULL COMMENT '工作流的id',
  `year` int(11) DEFAULT NULL COMMENT '年份',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `isHouseholder` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否是户主 1 是 0 否',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`),
  KEY `populationId` (`populationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='户码成员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPlatformPopulation`
--

DROP TABLE IF EXISTS `FFPPlatformPopulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPlatformPopulation` (
  `id` bigint(20) NOT NULL,
  `areaCode` bigint(20) DEFAULT NULL COMMENT '人口所在的村的areaCode',
  `areaId` int(11) NOT NULL COMMENT '所在村的id',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT 'FFPPlatformHousehold 户码Id',
  `realName` varchar(1024) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint(4) NOT NULL DEFAULT 1 COMMENT '性别 1男，2女',
  `nation` varchar(50) NOT NULL DEFAULT '' COMMENT '民族',
  `status` int(11) DEFAULT 1 COMMENT '状态，1正常2禁用',
  `birthday` date DEFAULT NULL COMMENT '出生年月日 1990-04-02',
  `relationship` varchar(50) NOT NULL DEFAULT '' COMMENT '与户主关系',
  `idCard` varchar(1024) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `idCardType` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 身份证，2 残疾证',
  `mobile` varchar(1024) NOT NULL DEFAULT '' COMMENT '联系方式',
  `political` varchar(50) NOT NULL DEFAULT '' COMMENT '政治面貌',
  `education` varchar(50) NOT NULL DEFAULT '' COMMENT '学历',
  `marital` varchar(50) NOT NULL DEFAULT '' COMMENT '婚姻状态',
  `religion` varchar(50) NOT NULL DEFAULT '' COMMENT '宗教',
  `income` varchar(50) NOT NULL DEFAULT '' COMMENT '收入来源',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `health` varchar(50) NOT NULL DEFAULT '' COMMENT '健康状况',
  `studentStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '在校生状况,1在，0不在',
  `laborSkill` varchar(50) NOT NULL DEFAULT '' COMMENT '劳动技能',
  `workingTimes` double NOT NULL DEFAULT 0 COMMENT '劳工时间',
  `medicalInsuranceStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否参与城乡居民（职工）基本医疗保障',
  `seriousIllnessInsuranceStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否参加大病保险',
  `endowmentInsuranceStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否参加城乡居民（职工）基本养老保险',
  `minLivingSecurityStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否享受城乡居民最低生活保障',
  `poorStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否特困供养人员',
  `movePeopleStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否易地扶贫搬迁（同步搬迁）人口',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `remark` varchar(2048) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='防返贫国家平台户籍人口拓展表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPlatformRobotRecord`
--

DROP TABLE IF EXISTS `FFPPlatformRobotRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPlatformRobotRecord` (
  `id` bigint(20) NOT NULL,
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户的id',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1:未提交，2已提交，3提交失败',
  `failMessage` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提交失败原因',
  `submitedAppId` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '提交的appId',
  `data` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '查询的快照数据',
  `workflowId` bigint(20) DEFAULT NULL COMMENT '关联的工作流',
  `submitedAt` timestamp NULL DEFAULT NULL COMMENT '提交时间',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  `areaId` int(11) DEFAULT NULL,
  `taskId` bigint(20) DEFAULT 0 COMMENT '任务的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='机器人导入国家平台的数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPopulation`
--

DROP TABLE IF EXISTS `FFPPopulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPopulation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT 'VillageHouseholdCode 户码Id',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `realName` varchar(1024) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint(4) NOT NULL DEFAULT 1 COMMENT '性别 1男，2女',
  `nation` varchar(50) NOT NULL DEFAULT '' COMMENT '民族',
  `birthday` date DEFAULT NULL COMMENT '出生年月日 1990-04-02',
  `relationship` varchar(50) NOT NULL DEFAULT '' COMMENT '与户主关系',
  `idCard` varchar(1024) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `mobile` varchar(1024) NOT NULL DEFAULT '' COMMENT '联系方式',
  `mobileShort` varchar(50) DEFAULT '' COMMENT '联系方式简式',
  `political` varchar(50) NOT NULL DEFAULT '' COMMENT '政治面貌',
  `education` varchar(50) NOT NULL DEFAULT '' COMMENT '学历',
  `marital` varchar(50) NOT NULL DEFAULT '' COMMENT '婚姻状态',
  `religion` varchar(50) NOT NULL DEFAULT '' COMMENT '宗教',
  `income` varchar(50) NOT NULL DEFAULT '' COMMENT '收入来源',
  `headImageId` varchar(2048) DEFAULT '' COMMENT '头像Id',
  `headImageUrl` longtext DEFAULT NULL COMMENT '头像图片路径',
  `tags` longtext DEFAULT NULL COMMENT '标签数组',
  `health` varchar(200) NOT NULL DEFAULT '' COMMENT '健康状况',
  `studentStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '在校生状况,1在，0不在',
  `laborSkill` varchar(50) NOT NULL DEFAULT '' COMMENT '劳动技能',
  `medicalInsuranceStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否参与城乡居民（职工）基本医疗保障',
  `seriousIllnessInsuranceStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否参加大病保险',
  `endowmentInsuranceStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否参加城乡居民（职工）基本养老保险',
  `minLivingSecurityStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否享受城乡居民最低生活保障',
  `poorStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否特困供养人员',
  `movePeopleStatus` varchar(50) NOT NULL DEFAULT '' COMMENT '是否易地扶贫搬迁（同步搬迁）人口',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1正常，0禁用',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `remark` varchar(2048) NOT NULL DEFAULT '' COMMENT '备注',
  `idCardType` tinyint(1) unsigned DEFAULT 0 COMMENT '1身份证，2残疾证',
  `workingTimes` double NOT NULL DEFAULT 0 COMMENT '劳工时间',
  `contractPhone` varchar(20) DEFAULT '' COMMENT '联系电话',
  `gradUnemployed` varchar(20) DEFAULT '' COMMENT '大专或本科应届毕业生未就业原因',
  `disabilityCardSignDate` varchar(20) DEFAULT '' COMMENT '残疾证办理时间，格式:2022-01-01',
  `leftSchoolReason` varchar(20) DEFAULT '' COMMENT '辍学原因',
  `enableMandarin` varchar(20) DEFAULT '0' COMMENT '是否会讲普通话',
  `eisabilityType` varchar(20) DEFAULT '' COMMENT '残疾类型',
  `disabilityLevel` varchar(20) DEFAULT '' COMMENT '残疾级别',
  `disabilityType` varchar(20) DEFAULT '' COMMENT '残疾类型',
  `employeeEndowmentInsuranceStatus` varchar(255) DEFAULT '' COMMENT '是否参加城乡职工基本养老保险',
  `employeeMedicalInsuranceStatus` varchar(255) DEFAULT '' COMMENT '是否参加城乡职工基本养老保险',
  `publicWelfareJob` varchar(200) DEFAULT '' COMMENT '公益岗位',
  `employMonth` int(10) unsigned DEFAULT 0 COMMENT '聘用月数',
  `hasCommercialInsurance` varchar(20) DEFAULT '' COMMENT '是否参加商业补充医疗保险',
  `hasMedicalAssistance` varchar(20) DEFAULT '' COMMENT '是否接受大病医疗救助',
  `hasHealthySuport` varchar(20) DEFAULT '' COMMENT '是否接受其他健康扶贫',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`),
  KEY `householdId` (`householdId`),
  KEY `populationId` (`populationId`)
) ENGINE=InnoDB AUTO_INCREMENT=15584 DEFAULT CHARSET=utf8 COMMENT='防返贫户籍人口拓展表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPublicityHousehold`
--

DROP TABLE IF EXISTS `FFPPublicityHousehold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPublicityHousehold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaId` int(11) NOT NULL COMMENT '区域ID',
  `publicityManageId` int(11) NOT NULL COMMENT '评议公示\\报告管理ID',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT 'VillageHouseholdCode 户码Id',
  `houseName` varchar(1024) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '门牌名',
  `houseNumber` varchar(1024) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '门牌号',
  `householdMan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户主',
  `sex` tinyint(4) NOT NULL DEFAULT 1 COMMENT '性别 1男，2女',
  `relationship` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '与户主关系',
  `idCard` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '身份证号码',
  `peopleCount` int(11) NOT NULL DEFAULT 0 COMMENT '人口数',
  `mobile` varchar(1024) CHARACTER SET utf8 DEFAULT '' COMMENT '联系方式',
  `householdType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户属性，贫困类型',
  `checkDate` datetime NOT NULL COMMENT '排查日期',
  `monitorObj` int(11) NOT NULL DEFAULT 1 COMMENT '是否监测对象  1是2否',
  `publicityResult` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公示结果',
  `remark` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='评议公示的户明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPPublicityManage`
--

DROP TABLE IF EXISTS `FFPPublicityManage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPPublicityManage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '类型  1评议公示2评议报告',
  `areaId` int(11) NOT NULL COMMENT '区域ID',
  `areaName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '区域名称',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公示图片 多个用,分割',
  `publishStatus` int(11) DEFAULT 0 COMMENT '发布状态 0未发布 1已发布',
  `publishDate` datetime NOT NULL COMMENT '发布日期',
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布人员',
  `reportStatus` int(11) DEFAULT 0 COMMENT '上报状态 0未上报 1已上报',
  `reportDate` datetime NOT NULL COMMENT '上报日期',
  `reporter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上报人员',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdUser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建用户名',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='评议公示管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPScreeningTask`
--

DROP TABLE IF EXISTS `FFPScreeningTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPScreeningTask` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `status` int(1) DEFAULT 1 COMMENT '任务状态 1正常，2禁用',
  `beginDate` date NOT NULL DEFAULT '0000-00-00' COMMENT '开始日期',
  `endDate` date DEFAULT '0000-00-00' COMMENT '结束日期',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '创建时间',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `type` int(10) DEFAULT 0 COMMENT '类型：1集中摸排，2收入摸排',
  `periodUnit` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '周期单位：年，季度，月，日',
  `periodValue` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '周期：年，季度，月，日的值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='入户排查任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPSubmitProblemMeasures`
--

DROP TABLE IF EXISTS `FFPSubmitProblemMeasures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPSubmitProblemMeasures` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FFPHouseholdSubmitId` int(11) DEFAULT NULL,
  `ProblemKey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Measures` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Enterprise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  `DaedLine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL,
  `TaskId` bigint(20) DEFAULT 0 COMMENT '任务编号',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=581 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPSubmitStatistics`
--

DROP TABLE IF EXISTS `FFPSubmitStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPSubmitStatistics` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AreaId` int(11) DEFAULT NULL,
  `TaskId` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务编号',
  `Key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 0 COMMENT '备注信息',
  `CreatedAt` datetime DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=71606 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPTask`
--

DROP TABLE IF EXISTS `FFPTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPTask` (
  `id` bigint(20) NOT NULL,
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域Id',
  `beginDate` date NOT NULL DEFAULT '0000-00-00' COMMENT '户主Id',
  `endDate` date NOT NULL DEFAULT '0000-00-00' COMMENT '文件Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='防返贫任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPUniversalTask`
--

DROP TABLE IF EXISTS `FFPUniversalTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPUniversalTask` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tasktype` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务类型',
  `taskdata` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务数据JSON',
  `taskstatus` int(5) DEFAULT NULL COMMENT '任务状态  0:未执行 2：正在执行 3：执行成功  4：执行失败  9：禁用',
  `errormsg` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '任务出错后的消息',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '创建时间',
  `createby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新时间',
  `updateby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '更新人',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的区域id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPVillageSubmitRecord`
--

DROP TABLE IF EXISTS `FFPVillageSubmitRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPVillageSubmitRecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `isLock` int(11) DEFAULT NULL,
  `taskId` bigint(20) DEFAULT NULL,
  `householdId` int(10) DEFAULT NULL,
  `remark` varchar(2048) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8 COMMENT='村数据提交记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPWorkflow`
--

DROP TABLE IF EXISTS `FFPWorkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPWorkflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `matrixId` int(11) NOT NULL COMMENT '网格id',
  `moPaiId` int(11) NOT NULL COMMENT '摸排记录ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主名称',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片 多个用,分割',
  `povertyRisk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '返贫风险  多个用,分割',
  `yearIncome` double DEFAULT 0 COMMENT '年人均收入',
  `povertyReason` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '致贫原因',
  `voteCount` int(11) DEFAULT NULL COMMENT '投票数',
  `agree` int(11) DEFAULT NULL COMMENT '同意票数',
  `disagree` int(11) DEFAULT NULL COMMENT '不同意票数',
  `describe` varchar(4096) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述信息',
  `flowStatus` int(11) NOT NULL COMMENT '流程状态1摸排确认 2待评议 3公示 4待上报乡镇 5乡镇待核查 6待县审定 7行业部门比对 8县审定通过 9已上报国家平台 99结束',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  `extras` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` int(11) NOT NULL DEFAULT 1 COMMENT '来源，1摸排；2民主评议；3二次评议',
  `selfPay` double NOT NULL DEFAULT 0 COMMENT '合规自付支出',
  `mainIncome` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要经济来源',
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭情况简要描述',
  `yearTotalIncome` double DEFAULT 0 COMMENT '年总收入',
  `famlyNetIncome` double DEFAULT 0 COMMENT '年人均纯收入',
  `famlyTotalNetIncome` double DEFAULT 0 COMMENT '家庭纯收入',
  `naturalRemark` longtext COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '自然灾害备注',
  `riskRemark` longtext COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '风险备注',
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`),
  KEY `matrixId` (`matrixId`),
  KEY `moPaiId` (`moPaiId`)
) ENGINE=InnoDB AUTO_INCREMENT=778 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='防返贫工作流表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFPWorkflowRecord`
--

DROP TABLE IF EXISTS `FFPWorkflowRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFPWorkflowRecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflowId` int(11) DEFAULT 0 COMMENT '工作流的id',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `sourceStatus` int(11) NOT NULL DEFAULT 0 COMMENT '流程状态 1摸排确认 2待评议 3公示 4待上报乡镇 5乡镇待核查 6待县审定 7行业部门比对 8县审定通过 9已上报国家平台 99结束',
  `currentStatus` int(11) NOT NULL DEFAULT 0 COMMENT '流程状态 1摸排确认 2待评议 3公示 4待上报乡镇 5乡镇待核查 6待县审定 7行业部门比对 8县审定通过 9已上报国家平台 99结束',
  `remark` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='流程转换记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFP_JCDX_lingyuan`
--

DROP TABLE IF EXISTS `FFP_JCDX_lingyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFP_JCDX_lingyuan` (
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人ID',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市',
  `district` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '县',
  `town` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡',
  `village` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `hbh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户编号',
  `rkbh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人口编号',
  `xm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `zjhm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `cjzh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾人证件号',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `yhzgx` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与户主关系',
  `jtrks` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭人口数',
  `hlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlb` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类别',
  `gzxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工资性收入（元）',
  `scjyxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产经营性收入（元）',
  `zyxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转移性收入（元）',
  `jhsyj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '计划生育金（元）',
  `dbj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '低保金（元）',
  `tkgyj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '特困供养金（元）',
  `ylbxj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '养老保险金（元）',
  `stbcj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生态补偿金（元）',
  `qtzyxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他转移性收入（元）',
  `ccxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '财产性收入（元）',
  `zcsyfpfhsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产收益扶贫分红收入',
  `qtccxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他财产性收入',
  `scjyxzc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产经营性支出（元）',
  `nsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年收入（元）',
  `csr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纯收入（元）',
  `rjcsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人均纯收入（元）',
  `xb` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `zzlx` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件类型',
  `csrq` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出生日期',
  `mz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族',
  `jtcylxdh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭成员联系电话',
  `whcd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化程度',
  `zxszk` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '在校生状况',
  `ldjn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '劳动技能',
  `wgsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工时间（月）',
  `jkzk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '健康状况',
  `zzmm` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌',
  `wgszd` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工所在地',
  `wgqymc` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工企业名称',
  `sfjmzdshbz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否享受农村居民最低生活保障',
  `sfcjczzgjbylbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城镇职工基本养老保险',
  `sfcjdbbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加大病保险',
  `sfcjjbylbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城乡居民基本医疗保险',
  `sfcjjbyanglaobx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城乡居民基本养老保险',
  `fareacode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上级行政区域代码',
  `sfhjpth` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否会讲普通话',
  `sfrsywbxbt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否享受人身意外保险补贴',
  `sfcjsybcylbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加商业补充医疗保险',
  `sfgwwg` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否国外务工',
  `sfjsyljz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接受医疗救助',
  `sfjsqtjkfp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接受其他健康扶贫',
  `sfcjczzgjbyiliaobx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城镇职工基本医疗保险',
  `sftkgyry` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否特困供养人员',
  `gyxgw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公益性岗位',
  `gyxgwys` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公益性岗位(月数)',
  `jyqd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业渠道',
  `scjrxtsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首次进入系统时间',
  `sfjjaqyys` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否解决安全饮用水',
  `sfcyzfdtrdd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有创业致富带头人带动',
  `sfyltqydd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有龙头企业带动',
  `zyrllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要燃料类型',
  `sfywscs` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有卫生厕所',
  `sfwfh` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否危房户',
  `zfmj` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '住房面积',
  `rhllx` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户路类型',
  `yczgljl` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与村主干路距离',
  `sftgbds` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通广播电视',
  `sftshyd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通生活用电',
  `sftscyd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通生产用电',
  `sfjrnmzyhzzz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否加入农民专业合作组织',
  `smmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水面面积',
  `mcdmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '牧草地面积',
  `lgmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林果面积（亩）',
  `tghlmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '退耕还林面积（亩）',
  `gdmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '耕地面积（亩）',
  `fxsfxc` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '风险是否已消除',
  `sbjcsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '识别监测时间',
  `scjcsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消除监测时间',
  `hzzjhm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件号码',
  `hzxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `sfjls` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否军烈属',
  `ldmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林地面积（亩）',
  `sbbz` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '识别标准',
  `tpnd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '脱贫年度',
  `wsxyy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '义务教育阶段未上学原因',
  PRIMARY KEY (`hbh`,`rkbh`) USING BTREE,
  KEY `index_jcdxlb` (`jcdxlb`) USING BTREE,
  KEY `index_fxsfxc` (`fxsfxc`) USING BTREE,
  KEY `index_hlx` (`hlx`) USING BTREE,
  KEY `index_whcd` (`whcd`) USING BTREE,
  KEY `index_jtrks` (`jtrks`) USING BTREE,
  KEY `index_sfcjdbbx` (`sfcjdbbx`) USING BTREE,
  KEY `index_pid` (`pid`) USING BTREE,
  KEY `index_areaId` (`areaid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFP_JCDX_lingyuan_old`
--

DROP TABLE IF EXISTS `FFP_JCDX_lingyuan_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFP_JCDX_lingyuan_old` (
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市',
  `district` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '县',
  `town` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡',
  `village` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `hbh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户编号',
  `rkbh` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人口编号',
  `xm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `zjhm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `cjzh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾人证件号',
  `cun1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村1',
  `yhzgx` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与户主关系',
  `jtrks` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭人口数',
  `hlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlb` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类别',
  `gzxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工资性收入（元）',
  `scjyxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产经营性收入（元）',
  `zyxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '转移性收入（元）',
  `jhsyj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '计划生育金（元）',
  `dbj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '低保金（元）',
  `tkgyj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '特困供养金（元）',
  `ylbxj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '养老保险金（元）',
  `stbcj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生态补偿金（元）',
  `qtzyxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他转移性收入（元）',
  `ccxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '财产性收入（元）',
  `zcsyfpfhsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产收益扶贫分红收入',
  `qtccxsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他财产性收入',
  `scjyxzc` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产经营性支出（元）',
  `nsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年收入（元）',
  `csr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纯收入（元）',
  `rjcsr` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人均纯收入（元）',
  `xb` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `zzlx` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件类型',
  `csrq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出生日期',
  `mz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族',
  `jtcylxdh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭成员联系电话',
  `whcd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化程度',
  `zxszk` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '在校生状况',
  `ldjn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '劳动技能',
  `wgsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工时间（月）',
  `jkzk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '健康状况',
  `zzmm` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌',
  `wgszd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工所在地',
  `wgqymc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工企业名称',
  `sfjmzdshbz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否享受农村居民最低生活保障',
  `sfcjczzgjbylbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城镇职工基本养老保险',
  `sfcjdbbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加大病保险',
  `sfcjjbylbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城乡居民基本医疗保险',
  `sfcjjbyanglaobx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城乡居民基本养老保险',
  `wsxyy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '义务教育阶段未上学原因',
  `sfhjpth` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否会讲普通话',
  `sfrsywbxbt` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否享受人身意外保险补贴',
  `sfcjsybcylbx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加商业补充医疗保险',
  `sfgwwg` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否国外务工',
  `sfjsyljz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接受医疗救助',
  `sfjsqtjkfp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接受其他健康扶贫',
  `sfcjczzgjbyiliaobx` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城镇职工基本医疗保险',
  `sftkgyry` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否特困供养人员',
  `gyxgw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公益性岗位',
  `gyxgwys` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公益性岗位(月数)',
  `jyqd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业渠道',
  `scjrxtsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首次进入系统时间',
  `sfjjaqyys` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否解决安全饮用水',
  `sfcyzfdtrdd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有创业致富带头人带动',
  `sfyltqydd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有龙头企业带动',
  `zyrllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要燃料类型',
  `sfywscs` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有卫生厕所',
  `sfwfh` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否危房户',
  `zfmj` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '住房面积',
  `rhllx` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户路类型',
  `yczgljl` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与村主干路距离',
  `sftgbds` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通广播电视',
  `sftshyd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通生活用电',
  `sftscyd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通生产用电',
  `sfjrnmzyhzzz` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否加入农民专业合作组织',
  `smmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水面面积',
  `mcdmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '牧草地面积',
  `lgmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林果面积（亩）',
  `tghlmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '退耕还林面积（亩）',
  `gdmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '耕地面积（亩）',
  `fxsfxc` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '风险是否已消除',
  `sbjcsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '识别监测时间',
  `scjcsj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '消除监测时间',
  `hzzjhm` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件号码',
  `hzxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hlxdh` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户联系电话',
  `sfjls` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否军烈属',
  `ldmj` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林地面积（亩）',
  `sbbz` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '识别标准',
  `tpnd` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '脱贫年度',
  PRIMARY KEY (`hbh`,`rkbh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFP_YS_ZDRQ_lingyuan`
--

DROP TABLE IF EXISTS `FFP_YS_ZDRQ_lingyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFP_YS_ZDRQ_lingyuan` (
  `id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id',
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '省',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市',
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '县',
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡',
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `cjzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾人证件号',
  `zdrqlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '重点人群类型',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员id',
  `areaId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `fareacode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级行政区域编号',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_zjhm` (`zjhm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='防返贫导入数据_全镇重点人群(演示用)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FFP_ZPYY_TJ_lingyuan`
--

DROP TABLE IF EXISTS `FFP_ZPYY_TJ_lingyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FFP_ZPYY_TJ_lingyuan` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'populationid',
  `district` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '县(市、区、旗)',
  `town` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡(镇)',
  `village` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政村',
  `hbh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号',
  `rbh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人编号',
  `xm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `sfzh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `cjzh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾证号',
  `zpyy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '致贫原因1',
  `wfh` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '危房户',
  `sfjjysaq` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否解决安全饮用水',
  `areaId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `fareacode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级行政区域代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Facility`
--

DROP TABLE IF EXISTS `Facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Facility` (
  `Id` bigint(20) unsigned NOT NULL COMMENT '主键',
  `AreaId` bigint(20) NOT NULL COMMENT '区域编号',
  `No` varchar(64) NOT NULL COMMENT '设施编号',
  `Name` varchar(255) NOT NULL COMMENT '名称',
  `Address` varchar(1024) NOT NULL COMMENT '地址',
  `SignMethod` int(11) NOT NULL COMMENT '打卡方式',
  `MediaType` int(11) NOT NULL COMMENT '媒体类型',
  `MediaUrl` varchar(1024) NOT NULL COMMENT '媒体地址',
  `Longitude` double NOT NULL COMMENT '经度',
  `Latitude` double NOT NULL COMMENT '纬度',
  `Remark` text NOT NULL COMMENT '备注',
  `State` int(11) NOT NULL COMMENT '状态',
  `QRCode` varchar(1024) NOT NULL COMMENT '二维码',
  `QRCodeFileId` int(11) DEFAULT NULL COMMENT '二维码文件 Id',
  `CategoryId` bigint(20) NOT NULL COMMENT '分类编号',
  `CreatedAt` datetime NOT NULL COMMENT '创建时间',
  `CreatedBy` bigint(20) NOT NULL COMMENT '创建人',
  `UpdatedAt` datetime NOT NULL COMMENT '修改时间',
  `UpdatedBy` bigint(20) NOT NULL COMMENT '修改人',
  `IsDeleted` int(11) NOT NULL COMMENT '是否删除',
  `Altitude` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FacilityManager`
--

DROP TABLE IF EXISTS `FacilityManager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FacilityManager` (
  `Id` bigint(20) unsigned NOT NULL,
  `UserId` bigint(20) NOT NULL COMMENT '用户编号',
  `FacilityId` bigint(20) NOT NULL COMMENT '设施编号',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FacilitySign`
--

DROP TABLE IF EXISTS `FacilitySign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FacilitySign` (
  `Id` bigint(20) NOT NULL,
  `FacilityId` bigint(20) NOT NULL,
  `Remark` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Point` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `PointItems` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='设施标记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FacilitySignRecord`
--

DROP TABLE IF EXISTS `FacilitySignRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FacilitySignRecord` (
  `Id` bigint(20) unsigned NOT NULL,
  `FacilityId` bigint(20) NOT NULL,
  `UserId` bigint(20) NOT NULL,
  `State` int(11) NOT NULL,
  `Remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `MediaUrls` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Latitude` double NOT NULL,
  `Longitude` double NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GISCamera`
--

DROP TABLE IF EXISTS `GISCamera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GISCamera` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域id',
  `category` int(10) DEFAULT 1 COMMENT '打点类型 1 区域 ,2 企业 ',
  `address` varchar(255) DEFAULT '' COMMENT '位置',
  `streamUrl` varchar(255) DEFAULT '' COMMENT '摄像头推流地址',
  `url` varchar(255) DEFAULT '' COMMENT '直播流地址',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) DEFAULT 0 COMMENT '创建人',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) DEFAULT 0 COMMENT '修改人',
  `objectId` int(10) DEFAULT 0 COMMENT '区域Id、园区id',
  `iconId` int(10) DEFAULT 0 COMMENT '图标id',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='摄像头';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GISCollectiveProperty`
--

DROP TABLE IF EXISTS `GISCollectiveProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GISCollectiveProperty` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域id',
  `typeId` int(10) DEFAULT 0 COMMENT '类型',
  `category` int(10) DEFAULT 1 COMMENT '打点类型 1 区域 ,2 企业 ',
  `address` varchar(255) DEFAULT '' COMMENT '位置',
  `mediaType` int(2) DEFAULT 1 COMMENT '媒资类型 1 图片 2 视频',
  `mediaId` int(10) DEFAULT 0 COMMENT '媒资id',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) DEFAULT 0 COMMENT '创建人',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) DEFAULT 0 COMMENT '修改人',
  `objectId` int(10) DEFAULT 0 COMMENT '区域Id、园区id',
  `iconId` int(10) DEFAULT 0 COMMENT '图标id',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8 COMMENT='公共设施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GISCustom`
--

DROP TABLE IF EXISTS `GISCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GISCustom` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域id',
  `category` int(10) DEFAULT 1 COMMENT '打点类型 1 区域 ,2 企业 ',
  `mediaType` int(2) DEFAULT 1 COMMENT '媒资类型 1 图片 2 视频 3 url',
  `mediaId` int(10) DEFAULT 0 COMMENT '媒资id',
  `url` varchar(255) DEFAULT '' COMMENT 'url',
  `iconId` int(10) DEFAULT 0 COMMENT '图标id',
  `width` int(10) DEFAULT 0 COMMENT '宽度',
  `height` int(10) DEFAULT 0 COMMENT '高度',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) DEFAULT 0 COMMENT '创建人',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) DEFAULT 0 COMMENT '修改人',
  `objectId` int(10) DEFAULT 0 COMMENT '区域Id、园区id',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='自定义打点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GISGreenHouse`
--

DROP TABLE IF EXISTS `GISGreenHouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GISGreenHouse` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域id',
  `typeId` int(10) DEFAULT 0 COMMENT '类型',
  `category` int(10) DEFAULT 1 COMMENT '打点类型 1 区域 ,2 企业 ',
  `area` decimal(10,2) DEFAULT 0.00 COMMENT '面积',
  `unit` varchar(10) DEFAULT '' COMMENT '面积单位',
  `address` varchar(255) DEFAULT '' COMMENT '位置',
  `objectId` int(10) DEFAULT 0 COMMENT '户码Id、园区id',
  `owner` varchar(255) DEFAULT '' COMMENT '所属人/园区',
  `phone` varchar(64) DEFAULT '' COMMENT '所属人联系电话',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) DEFAULT 0 COMMENT '创建人',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) DEFAULT 0 COMMENT '修改人',
  `iconId` int(10) DEFAULT 0 COMMENT '图标id',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='大棚';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GISPlotItem`
--

DROP TABLE IF EXISTS `GISPlotItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GISPlotItem` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标绘点名称',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `point` longtext COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '打点经纬度',
  `pointItems` longtext COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '打点范围经纬度',
  `syncId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT NULL COMMENT '同步操作时间',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(11) DEFAULT 0 COMMENT '创建人',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) DEFAULT 0 COMMENT '修改人',
  `plotType` int(10) NOT NULL DEFAULT 0 COMMENT '分类 1摄像头，2传感器，3区域地图，4农户标记，5土地标记，6公共设施，7规划用地，8大棚, 9自定义',
  `objectId` int(10) NOT NULL DEFAULT 0 COMMENT 'plotType对应表的id',
  `relationId` int(10) NOT NULL DEFAULT 0 COMMENT '关联id,同一个点多个对象',
  PRIMARY KEY (`id`),
  KEY `relationId` (`relationId`),
  KEY `plotitemindex` (`plotType`,`objectId`)
) ENGINE=InnoDB AUTO_INCREMENT=5550 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='打点数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GovProjectFundsDetail`
--

DROP TABLE IF EXISTS `GovProjectFundsDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GovProjectFundsDetail` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fundid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对应业务表记录的id',
  `fundflag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '对应业务表录入字段的标识',
  `nf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年份',
  `fundtype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资金分类:财政资金、社会资金、财政和社会资金',
  `financial` decimal(14,2) DEFAULT 0.00 COMMENT '财政资金数',
  `socialfunds` decimal(14,2) DEFAULT 0.00 COMMENT '社会资金数额',
  `project` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称',
  `investor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资金投入主体',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属的组织机构ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='数字乡村（辽宁）政府项目资金构成明细表（Digital Contryside of LiaoNing）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Inspect`
--

DROP TABLE IF EXISTS `Inspect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inspect` (
  `Id` bigint(20) NOT NULL,
  `CompanyId` bigint(20) NOT NULL,
  `BasicUserId` int(11) NOT NULL,
  `InspectResult` int(11) NOT NULL,
  `PatrolTime` datetime NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='巡查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `InspectForm`
--

DROP TABLE IF EXISTS `InspectForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InspectForm` (
  `Id` bigint(20) NOT NULL,
  `InspectId` bigint(20) NOT NULL,
  `FormName` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem1` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem2` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem3` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem4` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem5` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem6` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem7` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FormItem8` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='巡查表单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IpsCompany`
--

DROP TABLE IF EXISTS `IpsCompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IpsCompany` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IPS的唯一id',
  `companyNo` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '企业编号',
  `topCompanyId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '顶级单位编号',
  `category` int(11) DEFAULT 0 COMMENT '类别，0商户，1组，2门店',
  `companyName` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '企业名',
  `shortName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '简称',
  `remark` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 1 有效（启用），0 无效（禁用）',
  `parentId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '父节点',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `companyId` (`companyId`),
  KEY `parentId` (`parentId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='IPS组织架构、企业表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IpsDevice`
--

DROP TABLE IF EXISTS `IpsDevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IpsDevice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IPS的唯一id',
  `deviceNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备编号',
  `deviceName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备名称',
  `category` int(11) DEFAULT 0 COMMENT ' 设备类型 0屏幕,1人脸识别设备',
  `remark` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态 1有效（启用），0无效（禁用）',
  `companyId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '门店Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='IPS设备表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IpsMessage`
--

DROP TABLE IF EXISTS `IpsMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IpsMessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `startDate` date DEFAULT NULL COMMENT '开始日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `startTime` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开始时间',
  `endTime` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结束时间',
  `allDay` int(11) DEFAULT NULL COMMENT '是否24小时全天播放   0 否 1 是',
  `neverExpire` int(11) DEFAULT NULL COMMENT '永不过期  0 否 1 是',
  `content` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消息内容',
  `remark` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `deviceCount` int(11) DEFAULT NULL COMMENT '设备数',
  `status` int(11) DEFAULT 1 COMMENT '状态 1有效（启用），0无效（禁用）',
  `auditStatus` int(11) DEFAULT NULL COMMENT '审核状态  1待审核，2审核中，3审核通过，4拒绝',
  `devices` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备编号,逗号分割',
  `ipsMessageId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IPS的id，同步到IPS后返回的唯一id',
  `isSyncToIPS` int(11) DEFAULT 0 COMMENT '是否同步到IPS  0 否 1 是',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `areaId` int(10) DEFAULT 0 COMMENT '创建区域',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='滚动消息日程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IpsSchedule`
--

DROP TABLE IF EXISTS `IpsSchedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IpsSchedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `startDate` date DEFAULT NULL COMMENT '开始日期',
  `endDate` date DEFAULT NULL COMMENT '结束日期',
  `startTime` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开始时间',
  `endTime` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结束时间',
  `allDay` int(11) DEFAULT NULL COMMENT '是否24小时全天播放   0 否 1 是',
  `neverExpire` int(11) DEFAULT NULL COMMENT '永不过期  0 否 1 是',
  `type` int(11) NOT NULL COMMENT '类型 1：图片、2：视频',
  `showduration` int(11) DEFAULT NULL COMMENT '图片切换间隔，单位：秒',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片ids,逗号分割',
  `videos` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '视频ids,逗号分割',
  `deviceCount` int(11) DEFAULT NULL COMMENT '设备数',
  `status` int(11) DEFAULT 1 COMMENT '状态 1有效（启用），0无效（禁用）',
  `auditStatus` int(11) DEFAULT NULL COMMENT '审核状态  1待审核，2审核中，3审核通过，4拒绝',
  `devices` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '设备编号,逗号分割',
  `remark` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `isSyncToIPS` int(11) DEFAULT 0 COMMENT '是否同步到IPS  0 否 1 是',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `areaId` int(10) DEFAULT 0 COMMENT '创建区域',
  `ipsScheduleId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='内容日程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LN_Gjxtsj`
--

DROP TABLE IF EXISTS `LN_Gjxtsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LN_Gjxtsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `qy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '县(市、区、旗)',
  `xz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡(镇)',
  `zrc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村',
  `xzc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政村',
  `hbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号',
  `rbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人编号',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `mz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族',
  `zzmm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌',
  `rs` int(2) DEFAULT NULL COMMENT '人数',
  `sbsj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '首次识别时间',
  `lxdh` int(20) DEFAULT NULL COMMENT '联系电话',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jchlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测户类型',
  `dlyh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户道路是否硬化',
  `tzls` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通自来水',
  `24h` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自来水供水间隔时间是否低于24小时',
  `sfysaq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否饮水安全',
  `qjny` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否使用清洁能源',
  `qjnylx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '使用清洁能源的类型',
  `qtbz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他备注',
  `sfwf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否危房',
  `gzjh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '危房是否列入改造计划',
  `lyss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有淋浴设施',
  `wshc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有卫生户厕',
  `celx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生厕所类型',
  `cssy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生厕所是否能正常使用',
  `sfrs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生户厕是否入室',
  `sfry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '卫生户厕是否入院',
  `tymh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否进行过庭院美化',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='辽宁国家系统数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LYData_srdrb`
--

DROP TABLE IF EXISTS `LYData_srdrb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LYData_srdrb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` int(10) DEFAULT NULL COMMENT '年份',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `gzxsr` decimal(10,2) DEFAULT NULL COMMENT 'A23工资性收入(元)',
  `zyxsr` decimal(10,2) DEFAULT NULL COMMENT 'A24转移性收入(元)',
  `ylbxj` decimal(10,2) DEFAULT NULL COMMENT 'A24d养老保险金(元)',
  `scjyxsr` decimal(10,2) DEFAULT NULL COMMENT 'A25生产经营性收入(元)',
  `jhsyj` decimal(10,2) DEFAULT NULL COMMENT 'A24a计划生育金(元)',
  `stbcj` decimal(10,2) DEFAULT NULL COMMENT 'A24e生态补偿金(元)',
  `ccxsr` decimal(10,2) DEFAULT NULL COMMENT 'A26财产性收入(元)',
  `dbj` decimal(10,2) DEFAULT NULL COMMENT 'A24b低保金(元)',
  `qtzyxsr` decimal(10,2) DEFAULT NULL COMMENT 'A24f其他转移性收(元)',
  `zcsyfpfhsr` decimal(10,2) DEFAULT NULL COMMENT 'A26a资产收益扶贫分红收入(元)',
  `tkgyj` decimal(10,2) DEFAULT NULL COMMENT 'A24c 特困供养金(元)',
  `qtccxsr` decimal(10,2) DEFAULT NULL COMMENT 'A26b其他财产性收入(元)',
  `scjyxzc` decimal(10,2) DEFAULT NULL COMMENT 'A27 生产经营性支出(元)',
  `nsr` decimal(10,2) DEFAULT NULL COMMENT '年收入',
  `csr` decimal(10,2) DEFAULT NULL COMMENT '纯收入',
  `rjcsr` decimal(10,2) DEFAULT NULL COMMENT '人均纯收入',
  `ndjtrks` int(10) DEFAULT NULL COMMENT '年度家庭人口数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='监测户收入导入表(收入情况)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Labor`
--

DROP TABLE IF EXISTS `Labor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Labor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '编码 备用',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '招工名称/求职岗位简述',
  `realName` varchar(50) NOT NULL DEFAULT '' COMMENT '发布招聘联系人或者求职者姓名',
  `mobile` varchar(50) NOT NULL DEFAULT '' COMMENT '手机号码',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '能力要求简述/自我介绍',
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `salary` varchar(50) NOT NULL DEFAULT '' COMMENT '工资描述/工资要求，例如：100元/天/月',
  `workplace` varchar(100) NOT NULL DEFAULT '' COMMENT '工作地点',
  `laborType` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 招聘，2求职 @@ 1.6之前是type，现在改为LaborType',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 ,1 启用 2 停用',
  `online` varchar(100) NOT NULL DEFAULT '' COMMENT '["公众号上线","TV上线"]',
  `offlineReason` varchar(4096) NOT NULL DEFAULT '' COMMENT '下线原因',
  `auditStatus` tinyint(1) NOT NULL DEFAULT 1 COMMENT '审核状态 1待审核，2审核中，3审核通过，4拒绝',
  `viewCnt` bigint(20) NOT NULL DEFAULT 0 COMMENT '浏览次数',
  `iptvCnt` bigint(20) NOT NULL DEFAULT 0 COMMENT '终端数',
  `synced` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否同步，1是，0否',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `createdByName` varchar(50) NOT NULL DEFAULT '',
  `createdByMobile` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='劳务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Labor1`
--

DROP TABLE IF EXISTS `Labor1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Labor1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '编码 备用',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '招工名称/求职岗位简述',
  `realName` varchar(50) NOT NULL DEFAULT '' COMMENT '发布招聘联系人或者求职者姓名',
  `mobile` varchar(50) NOT NULL DEFAULT '' COMMENT '手机号码',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '能力要求简述/自我介绍',
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '备注',
  `salary` varchar(50) NOT NULL DEFAULT '' COMMENT '工资描述/工资要求，例如：100元/天/月',
  `workplace` varchar(100) NOT NULL DEFAULT '' COMMENT '工作地点',
  `laborType` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 招聘，2求职 @@ 1.6之前是type，现在改为LaborType',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 ,1 启用 2 停用',
  `online` varchar(100) NOT NULL DEFAULT '' COMMENT '["公众号上线","TV上线"]',
  `offlineReason` varchar(4096) NOT NULL DEFAULT '' COMMENT '下线原因',
  `auditStatus` tinyint(1) NOT NULL DEFAULT 1 COMMENT '审核状态 1待审核，2审核中，3审核通过，4拒绝',
  `viewCnt` bigint(20) NOT NULL DEFAULT 0 COMMENT '浏览次数',
  `iptvCnt` bigint(20) NOT NULL DEFAULT 0 COMMENT '终端数',
  `synced` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否同步，1是，0否',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `createdByName` varchar(50) NOT NULL DEFAULT '',
  `createdByMobile` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='劳务信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MDEngine_QueryExportTask`
--

DROP TABLE IF EXISTS `MDEngine_QueryExportTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDEngine_QueryExportTask` (
  `Id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QueryDescript` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '查询条件描述',
  `QueryRequest` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '查询请求',
  `QueryUser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '查询人',
  `CreateTime` datetime DEFAULT current_timestamp() COMMENT '创建时间',
  `FinishedTime` datetime DEFAULT NULL COMMENT '查询完成时间',
  `ErrorMsg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '查询失败信息',
  `PrivacyEncrypted` int(5) DEFAULT NULL COMMENT '是否对稳私字段进行解密  0:否   1:是   9:待审批',
  `QueryState` int(5) DEFAULT NULL COMMENT '导出状态  0:待导出  1:正在导出  2:导出成功  3:隐私解密待审核  9:导出错误',
  `ModelName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '模型名称',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MediaThumbnail`
--

DROP TABLE IF EXISTS `MediaThumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MediaThumbnail` (
  `Id` bigint(20) NOT NULL,
  `FileId` int(11) NOT NULL,
  `Slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RefId` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RelativePath` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModuleDictionary`
--

DROP TABLE IF EXISTS `ModuleDictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleDictionary` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL DEFAULT 'common' COMMENT '使用的模块，100:防返贫',
  `typeCode` varchar(20) NOT NULL DEFAULT '' COMMENT '类别代码',
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT '类别代码',
  `name` varchar(256) NOT NULL COMMENT '名称',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `description` varchar(8192) NOT NULL DEFAULT '' COMMENT '描述',
  `iconFileId` int(10) NOT NULL DEFAULT 0 COMMENT '图标文件id',
  `iconFileUrl` varchar(2048) NOT NULL DEFAULT '',
  `status` int(2) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `fontColor` varchar(64) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `remark` varchar(2048) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`module`,`typeCode`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1860 DEFAULT CHARSET=utf8 COMMENT='字典';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModuleDictionaryChild`
--

DROP TABLE IF EXISTS `ModuleDictionaryChild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleDictionaryChild` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL DEFAULT 'common' COMMENT '使用的模块，100:防返贫',
  `typeTable` varchar(255) NOT NULL DEFAULT 'ModuleDictionary' COMMENT '父表名',
  `typeCode` varchar(20) NOT NULL COMMENT '字典类型编码',
  `name` varchar(256) NOT NULL COMMENT '名称',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `description` varchar(8192) NOT NULL DEFAULT '' COMMENT '描述',
  `iconFileId` int(10) NOT NULL DEFAULT 0 COMMENT '图标文件id',
  `iconFileUrl` varchar(2048) NOT NULL DEFAULT '',
  `status` int(2) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `code` varchar(20) NOT NULL DEFAULT '0' COMMENT '字典编码',
  `fontColor` varchar(64) NOT NULL DEFAULT '' COMMENT '字体颜色',
  `remark` varchar(2048) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`module`,`typeCode`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COMMENT='字典子项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModuleDictionaryGroup`
--

DROP TABLE IF EXISTS `ModuleDictionaryGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleDictionaryGroup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `typeCode` varchar(20) DEFAULT NULL COMMENT '类别编码',
  `name` varchar(20) DEFAULT NULL COMMENT '分组名称',
  `groupCode` varchar(30) DEFAULT NULL COMMENT '分组编码',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='字典分组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModuleDictionaryGroup_back`
--

DROP TABLE IF EXISTS `ModuleDictionaryGroup_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleDictionaryGroup_back` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `typeCode` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '类别编码',
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '分组名称',
  `groupCode` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '分组编码',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ModuleDictionaryType`
--

DROP TABLE IF EXISTS `ModuleDictionaryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleDictionaryType` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `module` varchar(100) NOT NULL DEFAULT 'common' COMMENT '使用的模块，100:防返贫',
  `name` varchar(256) NOT NULL COMMENT '名称',
  `code` varchar(10) NOT NULL COMMENT '类型编码',
  `sequence` int(10) NOT NULL DEFAULT 1 COMMENT '顺序值，值越小越靠前',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdBy` int(10) DEFAULT NULL,
  `updatedBy` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`module`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='字典类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Mytest_3`
--

DROP TABLE IF EXISTS `Mytest_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mytest_3` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jszj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设资金',
  `aa` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'aa,使用代码表[]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='开发用_测试模型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `OpenAppInfo`
--

DROP TABLE IF EXISTS `OpenAppInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenAppInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用的名称',
  `areaId` int(11) NOT NULL COMMENT '行政区域的范围id，最顶部的id',
  `appId` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'appid',
  `status` int(11) DEFAULT 1 COMMENT '1有效，2失效',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `createdBy` int(10) NOT NULL DEFAULT 0,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1：已删除，0：未删除',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` int(10) NOT NULL DEFAULT 0,
  `domain` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '域名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='开放平台接口授权';
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `Organization`
--

DROP TABLE IF EXISTS `Organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Code` bigint(20) NOT NULL,
  `ParentId` bigint(20) NOT NULL,
  `Name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Level` int(11) NOT NULL,
  `Address` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IdSequence` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=173694 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='全国地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ParkArea`
--

DROP TABLE IF EXISTS `ParkArea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ParkArea` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaSize` decimal(12,3) NOT NULL DEFAULT 0.000 COMMENT '基地面积',
  `address` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '地址',
  `longitude` decimal(20,16) NOT NULL DEFAULT 0.0000000000000000 COMMENT '经度',
  `latitude` decimal(20,16) NOT NULL DEFAULT 0.0000000000000000 COMMENT '纬度',
  `vrUrl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'VR全景URL',
  `updateVrAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'VR修改时间',
  `updateVrBy` int(11) NOT NULL DEFAULT 0 COMMENT 'VR修改用户id',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '区域id',
  `enterpriseName` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '企业名称',
  `unifiedCode` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '统一社会信用代码',
  `legalPerson` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '法人',
  `enterprisePhone` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '企业电话',
  `enterpriseWebsite` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '企业官网',
  `enterpriseAddress` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '企业详址',
  `contactPerson` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '企业联系人',
  `contactPhone` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系人电话',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `syncId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='园区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ParkAreaPictureMap`
--

DROP TABLE IF EXISTS `ParkAreaPictureMap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ParkAreaPictureMap` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parkAreaId` int(10) NOT NULL DEFAULT 0 COMMENT '园区id',
  `fileId` int(10) NOT NULL DEFAULT 0 COMMENT '文件id',
  `fileUrl` varchar(2048) NOT NULL DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='园区图片对应表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ParkCrop`
--

DROP TABLE IF EXISTS `ParkCrop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ParkCrop` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parkAreaId` int(10) NOT NULL DEFAULT 0 COMMENT '园区id',
  `name` varchar(256) NOT NULL DEFAULT '',
  `plantSize` decimal(12,3) NOT NULL DEFAULT 0.000 COMMENT '种植面积',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='园区作物';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Persons`
--

DROP TABLE IF EXISTS `Persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persons` (
  `Id_P` int(11) DEFAULT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Persons1`
--

DROP TABLE IF EXISTS `Persons1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persons1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Lastname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ProjectDeclare`
--

DROP TABLE IF EXISTS `ProjectDeclare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectDeclare` (
  `Id` bigint(20) NOT NULL,
  `Declarer` int(11) NOT NULL,
  `DeclareDate` datetime DEFAULT NULL,
  `DeclareAreaId` int(11) NOT NULL,
  `State` int(11) NOT NULL DEFAULT 0,
  `Opinion` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Approver` int(11) NOT NULL,
  `ApproveDate` datetime DEFAULT NULL,
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `xmmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称',
  `xmlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目类型,使用代码表[xe_xmlx]',
  `xmzlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目子类型,使用代码表[xe_xmlx]',
  `xmjsnrjbzbz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目建设内容及补助标准',
  `xmjsdd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目建设地点,使用代码表[xe_jsdd]',
  `nf` int(11) DEFAULT NULL COMMENT '项目规划年度',
  `xmysztz` decimal(10,2) DEFAULT NULL COMMENT '项目预算总投资',
  `czzjly` decimal(10,2) DEFAULT NULL COMMENT '财政资金来源',
  `qtzjly` int(11) DEFAULT NULL COMMENT '其他资金来源',
  `xmgs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目归属,使用代码表[xe_xmgs]',
  `tpctsgc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否脱贫村提升工程,使用代码表[dm_yesno]',
  `ydfpbqhfpxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否易地扶贫搬迁后扶项目,使用代码表[dm_yesno]',
  `sfzcsyfp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否资产收益扶贫,使用代码表[dm_yesno]',
  `sfzjcjjjjsr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否增加村集体经济收入,使用代码表[dm_yesno]',
  `qzcyhlyljjz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '群众参与和利益联结机制',
  `ndzmb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度总目标',
  `xmsyrk` int(11) DEFAULT NULL COMMENT '项目受益人口',
  `zjsyrk` int(11) DEFAULT NULL COMMENT '其中直接受益人口',
  `xmzgdw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目主管单位',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `xmfzr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目负责人',
  `xmsfnrndssjh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目是否纳入年度实施计划,使用代码表[dm_yesno]',
  `cmdbdhzp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村民代表大会照片',
  `qmzp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签名照片',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='项目申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QRCodeTemplate`
--

DROP TABLE IF EXISTS `QRCodeTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRCodeTemplate` (
  `Id` bigint(20) NOT NULL,
  `AreaId` int(11) NOT NULL,
  `Name` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `BackgroundImage` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `QRCodeWidth` int(11) NOT NULL,
  `QRCodeHeight` int(11) NOT NULL,
  `QRCodeTop` int(11) NOT NULL,
  `QRCodeLeft` int(11) NOT NULL,
  `Type` int(11) NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  `IsDefault` bit(1) NOT NULL,
  `Preview` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QRCodeTemplateText`
--

DROP TABLE IF EXISTS `QRCodeTemplateText`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRCodeTemplateText` (
  `Id` bigint(20) unsigned NOT NULL,
  `QRCodeTemplateId` bigint(20) NOT NULL,
  `Width` int(11) NOT NULL,
  `Height` int(11) NOT NULL,
  `Top` int(11) NOT NULL,
  `Left` int(11) NOT NULL,
  `Align` int(11) NOT NULL,
  `FontSize` int(11) NOT NULL,
  `TextContent` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Color` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataCJR`
--

DROP TABLE IF EXISTS `QYBDataCJR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataCJR` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `sfzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `xb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `mz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族',
  `whcd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化程度',
  `hyzk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '婚姻状况',
  `hklx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户口类型',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机',
  `addr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `pid` int(11) DEFAULT NULL COMMENT 'populationId',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='庆阳坝残疾人数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataDBHMC`
--

DROP TABLE IF EXISTS `QYBDataDBHMC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataDBHMC` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属乡镇',
  `sscz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村组',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `xsxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '享受姓名',
  `jtgx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭关系',
  `xb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `sfzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `xsje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '享受金额',
  `pid` int(11) DEFAULT NULL,
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='低保人员记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataDYHMC`
--

DROP TABLE IF EXISTS `QYBDataDYHMC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataDYHMC` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `whcd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化程度',
  `mz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族',
  `csny` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出生年月',
  `rdsj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入党时间',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `sfzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `dylx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党员类型',
  `pid` int(11) DEFAULT NULL,
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='庆阳坝党员记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataFWSJ`
--

DROP TABLE IF EXISTS `QYBDataFWSJ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataFWSJ` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `csrq` date DEFAULT NULL COMMENT '出生日期',
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `hjxxdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户籍门（楼）详址',
  `xzxxdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现住门（楼）详址',
  `cs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '层数',
  `mj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '面积',
  `jznd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建造年代(dm_qyb_fwjzsj)',
  `jglx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结构类型（dm_qyb_fwjglx）',
  `lb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类别',
  `lx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='庆阳坝房屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataGDDLBT`
--

DROP TABLE IF EXISTS `QYBDataGDDLBT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataGDDLBT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jtzz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭住址',
  `nhxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户姓名',
  `sfzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `yhzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行账号',
  `btmj` decimal(10,2) DEFAULT NULL COMMENT '补贴面积',
  `btbz` decimal(10,2) DEFAULT NULL COMMENT '补贴标准',
  `btje` decimal(10,2) DEFAULT NULL COMMENT '补贴金额',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `pid` int(11) DEFAULT NULL,
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='耕地地力补贴记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataLSDJB`
--

DROP TABLE IF EXISTS `QYBDataLSDJB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataLSDJB` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `sfzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村组',
  `lslb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留守类别',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `bfgb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶干部',
  `bfgbdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶干部电话',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `pid` int(11) DEFAULT NULL,
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='留守登记记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataMXBHMC`
--

DROP TABLE IF EXISTS `QYBDataMXBHMC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataMXBHMC` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `cun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `sfzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公民身份号码',
  `bzmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '病种名称',
  `xb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `pid` int(11) DEFAULT NULL,
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='慢性病记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataSTGYL`
--

DROP TABLE IF EXISTS `QYBDataSTGYL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataSTGYL` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `ykthm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '一卡通号码',
  `mj` decimal(10,1) DEFAULT NULL COMMENT '面积（亩）',
  `bcbz` decimal(10,2) DEFAULT NULL COMMENT '补偿标准（元/亩）',
  `bcje` decimal(10,2) DEFAULT NULL COMMENT '补偿金额（元）',
  `jb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '级别(dm_qyb_stgyljb)',
  `lqzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林权证号',
  `sfjdpkh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否建档立卡贫困户(dm_yesno)',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2021年生态公益林兑现花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `QYBDataYMJZJL`
--

DROP TABLE IF EXISTS `QYBDataYMJZJL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QYBDataYMJZJL` (
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '编号',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别dm_gender',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `sfcz` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否常住dm_yesno',
  `d1z` date DEFAULT NULL COMMENT '第1剂新冠疫苗接种时间',
  `d2z` date DEFAULT NULL COMMENT '第2剂新冠疫苗接种时间',
  `d3z` date DEFAULT NULL COMMENT '第3剂新冠疫苗接种时间',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`bh`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='庆阳坝疫苗接种情况表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Query_FFPSubmitHousehold`
--

DROP TABLE IF EXISTS `Query_FFPSubmitHousehold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Query_FFPSubmitHousehold` (
  `Id` bigint(20) NOT NULL,
  `SubmitId` int(11) NOT NULL,
  `HouseholdId` int(11) NOT NULL,
  `TaskId` bigint(20) NOT NULL,
  `Key` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `AreaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Query_FFPSubmitHouseholdMember`
--

DROP TABLE IF EXISTS `Query_FFPSubmitHouseholdMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Query_FFPSubmitHouseholdMember` (
  `Id` bigint(20) NOT NULL,
  `HouseholdId` int(11) DEFAULT NULL,
  `PopulationId` int(11) DEFAULT NULL,
  `TaskId` bigint(20) DEFAULT NULL,
  `SubmitId` int(11) DEFAULT NULL,
  `Key` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AreaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SunFileInfo`
--

DROP TABLE IF EXISTS `SunFileInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SunFileInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OriginName` varchar(255) DEFAULT NULL COMMENT '文件原名',
  `ByteSize` int(11) DEFAULT NULL,
  `RelativePath` varchar(255) DEFAULT NULL,
  `ExtensionName` varchar(255) DEFAULT NULL,
  `FileType` tinyint(1) DEFAULT NULL,
  `Md5` varchar(255) DEFAULT NULL,
  `ThumbnailId` int(11) DEFAULT NULL,
  `ThumbnailRelativePath` varchar(255) DEFAULT NULL,
  `Used` bit(1) DEFAULT b'0' COMMENT '是否已经使用，1使用，0未使用',
  `IsMaterial` bit(1) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT current_timestamp(),
  `CreatedBy` int(11) DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdatedBy` int(11) DEFAULT NULL,
  `IsDeleted` int(11) DEFAULT NULL,
  `RefId` varchar(255) DEFAULT '' COMMENT 'CDN的外联ID',
  `IsTransformed` bit(1) DEFAULT b'0' COMMENT '是否已经转码，0未转码1已转码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34006 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageBus`
--

DROP TABLE IF EXISTS `VillageBus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageBus` (
  `Id` bigint(20) NOT NULL,
  `TransportPeriodId` bigint(20) NOT NULL DEFAULT 0 COMMENT '转运周期',
  `Name` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `IsPublish` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否发布',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='乡村公交';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageBusSiteDetail`
--

DROP TABLE IF EXISTS `VillageBusSiteDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageBusSiteDetail` (
  `Id` bigint(20) NOT NULL,
  `VillageBusId` bigint(20) NOT NULL DEFAULT 0 COMMENT '主表id',
  `VillageSiteId` bigint(20) NOT NULL DEFAULT 0 COMMENT '站点Id',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `LineType` int(11) NOT NULL DEFAULT 0 COMMENT '线路类型',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='乡村公交站点详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageBusTimeDetail`
--

DROP TABLE IF EXISTS `VillageBusTimeDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageBusTimeDetail` (
  `Id` bigint(20) NOT NULL,
  `VillageBusId` bigint(20) NOT NULL DEFAULT 0 COMMENT '主表id',
  `VillageBusSiteId` bigint(20) NOT NULL DEFAULT 0 COMMENT '站点Id',
  `ArrivalTime` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '到站/发站时间',
  `DriverName` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '司机姓名',
  `DriverPhone` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '司机联系方式',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `LineType` int(11) NOT NULL DEFAULT 0 COMMENT '线路类型',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='乡村公交时间详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageCleaner`
--

DROP TABLE IF EXISTS `VillageCleaner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageCleaner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyId` int(10) NOT NULL DEFAULT 0 COMMENT '所属的清洁公司的id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `status` int(10) NOT NULL DEFAULT 1 COMMENT '1正常，2停用',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='清洁工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageCleanerSignRecord`
--

DROP TABLE IF EXISTS `VillageCleanerSignRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageCleanerSignRecord` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cleanerId` varchar(255) NOT NULL DEFAULT '' COMMENT '清洁工的id',
  `siteId` varchar(255) NOT NULL DEFAULT '' COMMENT '签到点的id',
  `remark` varchar(255) DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='清洁工签到记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageDataStatis`
--

DROP TABLE IF EXISTS `VillageDataStatis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageDataStatis` (
  `Id` bigint(20) NOT NULL,
  `Title` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `Url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求url',
  `Parameter` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '请求参数',
  `Token` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '本次请求Token',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  `AreaId` int(11) NOT NULL DEFAULT 0 COMMENT '区域id',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数据统计-浏览量';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageEpidemic`
--

DROP TABLE IF EXISTS `VillageEpidemic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageEpidemic` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `sourceOrgCodes` varchar(2048) NOT NULL DEFAULT '' COMMENT '来源地行政代码',
  `sourceAddress` varchar(2048) NOT NULL DEFAULT '' COMMENT '来源地地详细地址',
  `reversalDate` date DEFAULT NULL COMMENT '反乡日期',
  `recorDate` datetime NOT NULL COMMENT '登记日期',
  `temperature` varchar(50) NOT NULL DEFAULT '0.00' COMMENT '体温',
  `health` varchar(50) NOT NULL DEFAULT '' COMMENT '异常情况，健康情况',
  `isFever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '有无发热、乏力、咳嗽等症状 1 有 0 无',
  `isInAreas` int(10) DEFAULT 0 COMMENT '疫区接触情况',
  `remark` longtext DEFAULT NULL COMMENT '备注',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `year` int(11) NOT NULL,
  `syncId` varchar(255) DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  PRIMARY KEY (`id`),
  KEY `populationId` (`populationId`),
  KEY `year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8 COMMENT='疫情防控管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageFarmland`
--

DROP TABLE IF EXISTS `VillageFarmland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageFarmland` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '地块所属的区域的id',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '地块所属的户码的id',
  `typeId` int(10) NOT NULL DEFAULT 0 COMMENT '土地类型编码',
  `area` decimal(10,2) DEFAULT 0.00 COMMENT '土地面积',
  `unit` varchar(8) DEFAULT NULL COMMENT '面积单位',
  `address` varchar(1024) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '地块名称',
  `remark` varchar(2048) DEFAULT NULL,
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category` int(2) DEFAULT 1 COMMENT '地块所属类型 1 区域 ,2 园区',
  `useFor` int(2) DEFAULT 1 COMMENT '地块用途 1 普通用地 ,2 规划用地',
  `parkId` int(10) NOT NULL DEFAULT 0 COMMENT '地块所属的园区的id',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`),
  KEY `householdId` (`householdId`),
  KEY `category` (`category`),
  KEY `parkId` (`parkId`)
) ENGINE=InnoDB AUTO_INCREMENT=5452 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='土地管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageHouseCodeMember`
--

DROP TABLE IF EXISTS `VillageHouseCodeMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageHouseCodeMember` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `isHouseholder` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否是户主 1 是 0 否',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`),
  KEY `populationId` (`populationId`)
) ENGINE=InnoDB AUTO_INCREMENT=18200 DEFAULT CHARSET=utf8 COMMENT='户码成员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageHouseCodeTagManage`
--

DROP TABLE IF EXISTS `VillageHouseCodeTagManage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageHouseCodeTagManage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(50) NOT NULL DEFAULT '' COMMENT '标签名',
  `sequence` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `imageUrls` varchar(2048) NOT NULL DEFAULT '' COMMENT '图片路径',
  `description` longtext DEFAULT NULL COMMENT '详情',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='户码标签管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageHouseName`
--

DROP TABLE IF EXISTS `VillageHouseName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageHouseName` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `houseName` varchar(50) NOT NULL DEFAULT '' COMMENT '门牌名',
  `sequence` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2880 DEFAULT CHARSET=utf8 COMMENT='门牌名表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageHouseholdCode`
--

DROP TABLE IF EXISTS `VillageHouseholdCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageHouseholdCode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `houseName` varchar(1024) NOT NULL DEFAULT '' COMMENT '门牌名',
  `houseNumber` varchar(1024) NOT NULL DEFAULT '' COMMENT '门牌号',
  `remark` longtext DEFAULT NULL COMMENT '备注',
  `peopleCount` int(10) NOT NULL DEFAULT 0 COMMENT '户人数',
  `imageIds` longtext DEFAULT NULL COMMENT '住宅图片',
  `imageUrls` longtext DEFAULT NULL COMMENT '住宅图片',
  `tags` longtext DEFAULT NULL COMMENT '标签数组',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 1正常，0禁用',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `syncId` varchar(255) DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  `houseNameId` int(10) DEFAULT 0 COMMENT '门牌Id',
  `HouseNameSequence` int(11) NOT NULL DEFAULT 0,
  `isMoPai` tinyint(2) DEFAULT 0 COMMENT '是否已经摸排, 0 否 1 是',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB AUTO_INCREMENT=12874 DEFAULT CHARSET=utf8 COMMENT='户码信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageHouseholdCodeGrenTask`
--

DROP TABLE IF EXISTS `VillageHouseholdCodeGrenTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageHouseholdCodeGrenTask` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0未生成，0已生成',
  `codeData` text NOT NULL COMMENT '生成户码的内容',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `zipFileId` int(10) DEFAULT NULL,
  `templateId` int(10) DEFAULT 0 COMMENT '模板的Id',
  `taskType` int(10) DEFAULT 0 COMMENT '任务类型，1户码，2二维码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8 COMMENT='户码生成任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageHouseholdCodeTag`
--

DROP TABLE IF EXISTS `VillageHouseholdCodeTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageHouseholdCodeTag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `tagId` int(10) NOT NULL COMMENT '标签Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId`)
) ENGINE=InnoDB AUTO_INCREMENT=1062 DEFAULT CHARSET=utf8 COMMENT='户码标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageHouseholdCodeTemplate`
--

DROP TABLE IF EXISTS `VillageHouseholdCodeTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageHouseholdCodeTemplate` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `name` varchar(255) NOT NULL DEFAULT '模板名称',
  `printSizeWidth` int(10) NOT NULL DEFAULT 0 COMMENT '印刷尺寸宽mm',
  `printSizeHeight` int(10) NOT NULL DEFAULT 0 COMMENT '印刷尺寸高mm',
  `qrCodeWidth` int(10) NOT NULL DEFAULT 0 COMMENT '二维码宽px',
  `qrCodeHeight` int(10) NOT NULL DEFAULT 0 COMMENT '二维码高px',
  `qrCodeYaxis` int(10) NOT NULL DEFAULT 0 COMMENT '二维码纵坐标px',
  `qrCodeXaxis` int(10) NOT NULL DEFAULT 0 COMMENT '二维码横坐标px',
  `houseNameFontSize` int(10) NOT NULL DEFAULT 0 COMMENT '门牌名字号px',
  `houseNameYaxis` int(10) NOT NULL DEFAULT 0 COMMENT '门牌名纵坐标px',
  `houseNameXaxis` int(10) NOT NULL DEFAULT 0 COMMENT '门牌名横坐标px',
  `houseNumberFontSize` int(10) NOT NULL DEFAULT 0 COMMENT '门牌号字号px',
  `houseNumberYaxis` int(10) NOT NULL DEFAULT 0 COMMENT '门牌号纵坐标px',
  `houseNumberXaxis` int(10) NOT NULL DEFAULT 0 COMMENT '门牌号横坐标px',
  `qrCodeNoShow` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否显示编号 1是，0否',
  `qrCodeNoYaxis` int(10) NOT NULL DEFAULT 0 COMMENT '编号纵坐标px',
  `qrCodeNoXaxis` int(10) NOT NULL DEFAULT 0 COMMENT '编号横坐标px',
  `background` int(10) NOT NULL DEFAULT 0 COMMENT '背景图',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `QrCodeNoFontSize` int(10) NOT NULL,
  `houseNameRight` int(10) NOT NULL DEFAULT 0 COMMENT '门牌名的右下角横坐标',
  `houseNameBottom` int(10) NOT NULL DEFAULT 0 COMMENT '门牌名的右下角纵坐标',
  `isHouseNameCenter` int(4) NOT NULL DEFAULT 1 COMMENT '门牌名是否居中：1是，2否',
  `houseNameColor` varchar(20) NOT NULL DEFAULT '#ffffff' COMMENT '门牌名字体颜色',
  `houseNumberRight` int(10) NOT NULL DEFAULT 0 COMMENT '门牌号的右下角横坐标',
  `houseNumberBottom` int(10) NOT NULL DEFAULT 0 COMMENT '门牌号的右下角纵坐标',
  `isHouseNumberCenter` int(4) NOT NULL DEFAULT 1 COMMENT '门牌号是否居中：1是，2否',
  `houseNumberColor` varchar(20) NOT NULL DEFAULT '#ffffff' COMMENT '门牌号字体颜色',
  `qrCodeNoColor` varchar(20) NOT NULL DEFAULT '#ffffff' COMMENT '门牌编码字体颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='户码门牌模板信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageIncome`
--

DROP TABLE IF EXISTS `VillageIncome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageIncome` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `product` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '农产品收入',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `houseRental` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '房屋出租收入',
  `collectiveDividend` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '集体分红收入',
  `distribution` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '经销收入',
  `landCirculation` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '土地流转收入',
  `workIncome` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '务工收入',
  `govSubsidy` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '政府补贴',
  `other` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '其他收入',
  `year` int(10) NOT NULL DEFAULT 0 COMMENT '年度',
  `remark` longtext DEFAULT NULL COMMENT '备注',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `totalIncome` double(18,2) NOT NULL DEFAULT 0.00 COMMENT '总收入',
  `syncId` varchar(255) DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`),
  KEY `householdId` (`householdId`),
  KEY `year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='收入来源管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageLatestTime`
--

DROP TABLE IF EXISTS `VillageLatestTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageLatestTime` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `tableType` int(10) NOT NULL DEFAULT 0 COMMENT '表类别',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `peopleCount` int(11) NOT NULL DEFAULT 0,
  `year` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='操作最新时间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillagePCRTestTask`
--

DROP TABLE IF EXISTS `VillagePCRTestTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillagePCRTestTask` (
  `id` bigint(20) NOT NULL,
  `taskName` varchar(255) NOT NULL DEFAULT '' COMMENT '任务名称',
  `testCnt` int(10) NOT NULL DEFAULT 0 COMMENT '检测次数',
  `taskBeginDate` datetime NOT NULL COMMENT '任务开始日期',
  `areaIds` varchar(512) NOT NULL DEFAULT '' COMMENT '所属区域,多个用逗号隔开',
  `taskCnt` int(10) NOT NULL DEFAULT 0 COMMENT '应采样人数',
  `leftCnt` int(10) NOT NULL DEFAULT 0 COMMENT '待核查人数',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0 未开始 1进行中，2停止',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='核酸任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillagePCRTestTaskDetail`
--

DROP TABLE IF EXISTS `VillagePCRTestTaskDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillagePCRTestTaskDetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `taskId` bigint(20) NOT NULL DEFAULT 0 COMMENT '任务Id',
  `populationId` int(11) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `checkDatetime` datetime DEFAULT NULL COMMENT '核查日期',
  `checkStatus` tinyint(4) NOT NULL DEFAULT 0 COMMENT '核查结果 0 待核查 ， 1 已核查 ，2 已导入',
  `checkResult` tinyint(4) NOT NULL DEFAULT 0 COMMENT '核查结果 0 1 外出，2 已采样，3 48小时内接种疫苗，4 失联， 5 其他',
  `checkRemark` varchar(255) NOT NULL DEFAULT '' COMMENT '核查备注',
  `checkImageIds` varchar(255) NOT NULL DEFAULT '' COMMENT '核查图片',
  `notifyStatus` tinyint(4) NOT NULL DEFAULT 0 COMMENT '通知状态 0 待通知 ， 1 通知',
  `notifyDatetime` datetime DEFAULT NULL COMMENT '通知日期',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `populationId` (`populationId`),
  KEY `taskId` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=12348 DEFAULT CHARSET=utf8 COMMENT='核酸任务明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillagePopulation`
--

DROP TABLE IF EXISTS `VillagePopulation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillagePopulation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `householdId1` int(10) NOT NULL DEFAULT 0,
  `realName` varchar(1024) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint(4) NOT NULL DEFAULT 1 COMMENT '性别 1男，2女',
  `nation` varchar(50) NOT NULL DEFAULT '' COMMENT '民族',
  `birthday` date DEFAULT NULL COMMENT '出生年月日 1990-04-02',
  `relationship` varchar(50) DEFAULT '' COMMENT '与户主关系',
  `idCard` varchar(1024) DEFAULT '' COMMENT '身份证号码',
  `mobile` varchar(1024) DEFAULT '' COMMENT '联系方式',
  `political` varchar(50) DEFAULT '' COMMENT '政治面貌',
  `education` varchar(50) DEFAULT '' COMMENT '学历',
  `marital` varchar(50) DEFAULT '' COMMENT '婚姻状态',
  `religion` varchar(50) DEFAULT '' COMMENT '宗教',
  `income` varchar(50) DEFAULT '' COMMENT '收入来源',
  `headImageId` varchar(2048) DEFAULT '' COMMENT '头像Id',
  `headImageUrl` longtext DEFAULT NULL COMMENT '头像图片路径',
  `tags` longtext DEFAULT NULL COMMENT '标签数组',
  `remark` longtext DEFAULT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 启用 0停用',
  `createdBy` int(11) DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `deleteReason` varchar(50) DEFAULT '' COMMENT '移除原因',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `populationType` tinyint(4) NOT NULL DEFAULT 1 COMMENT '人口类型 ，1户籍人口，2流动人口，3外籍人口',
  `isHouseholder1` tinyint(4) NOT NULL DEFAULT 0,
  `syncId` varchar(255) DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  `mobileShort` varchar(50) DEFAULT '' COMMENT '联系方式简式',
  PRIMARY KEY (`id`),
  KEY `householdId` (`householdId1`),
  KEY `areaId` (`areaId`),
  KEY `index_isDeleted` (`isDeleted`)
) ENGINE=InnoDB AUTO_INCREMENT=24214 DEFAULT CHARSET=utf8 COMMENT='人口信息管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillagePopulationAddress`
--

DROP TABLE IF EXISTS `VillagePopulationAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillagePopulationAddress` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `province` varchar(50) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(50) NOT NULL DEFAULT '' COMMENT '市',
  `district` varchar(50) NOT NULL DEFAULT '' COMMENT '区',
  `mapCode` varchar(2048) NOT NULL DEFAULT '' COMMENT '省市区对应行政编码',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '详细地址',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 户籍地，2 居住地，3籍贯',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `populationId` (`populationId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53412 DEFAULT CHARSET=utf8 COMMENT='人口信息地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillagePopulationEx`
--

DROP TABLE IF EXISTS `VillagePopulationEx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillagePopulationEx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `population` int(11) NOT NULL COMMENT '人口ID',
  `idCard` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '身份证号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16940 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillagePopulationTag`
--

DROP TABLE IF EXISTS `VillagePopulationTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillagePopulationTag` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `tagId` int(10) NOT NULL COMMENT '标签Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `populationId` (`populationId`)
) ENGINE=InnoDB AUTO_INCREMENT=1718 DEFAULT CHARSET=utf8 COMMENT='人口属性标签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageSiteConfig`
--

DROP TABLE IF EXISTS `VillageSiteConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageSiteConfig` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `AreaId` int(11) NOT NULL DEFAULT 0 COMMENT '区域编号',
  `Remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  `AreaPid` int(11) NOT NULL DEFAULT 0 COMMENT '区域编号 父id',
  `Altitude` decimal(17,14) NOT NULL DEFAULT 0.00000000000000 COMMENT '海拔高度',
  `Longitude` decimal(17,14) NOT NULL DEFAULT 0.00000000000000 COMMENT '经度',
  `Latitude` decimal(17,14) NOT NULL DEFAULT 0.00000000000000 COMMENT '纬度',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='站点配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageTransportPeriod`
--

DROP TABLE IF EXISTS `VillageTransportPeriod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageTransportPeriod` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `Sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `Remark` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `CreatedAt` datetime NOT NULL,
  `CreatedBy` int(11) NOT NULL,
  `UpdatedAt` datetime NOT NULL,
  `UpdatedBy` int(11) NOT NULL,
  `IsDeleted` int(11) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='转运周期';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageUserAuthRecord`
--

DROP TABLE IF EXISTS `VillageUserAuthRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageUserAuthRecord` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL DEFAULT '0' COMMENT '微信Id',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '行政区域Id',
  `realName` varchar(1024) NOT NULL DEFAULT '' COMMENT '姓名',
  `idCard` varchar(1024) NOT NULL DEFAULT '' COMMENT '身份证号码',
  `mobile` varchar(1024) NOT NULL DEFAULT '' COMMENT '联系方式',
  `imageId` varchar(2048) NOT NULL DEFAULT '' COMMENT '正面照Id',
  `imageUrls` longtext NOT NULL DEFAULT '' COMMENT '图片路径',
  `remark` longtext DEFAULT NULL COMMENT '用户备注',
  `auditStatus` int(10) NOT NULL DEFAULT 0 COMMENT '审核状态 0未申请， 1待审核，2审核通过，3审核失败',
  `auditor` int(10) NOT NULL DEFAULT 0 COMMENT '审核人',
  `auditDateTime` datetime DEFAULT NULL COMMENT '审核时间',
  `auditRemark` longtext DEFAULT NULL COMMENT '审核备注',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sex` tinyint(4) DEFAULT NULL COMMENT '1男，2女',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `userId` int(11) NOT NULL DEFAULT 0 COMMENT '用户Id',
  `householdId` int(11) NOT NULL DEFAULT 0 COMMENT '户码Id',
  PRIMARY KEY (`id`),
  KEY `areaId` (`areaId`),
  KEY `userId` (`userId`),
  KEY `populationId` (`populationId`),
  KEY `householdId` (`householdId`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='村民认证记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageVaccination`
--

DROP TABLE IF EXISTS `VillageVaccination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageVaccination` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(10) NOT NULL DEFAULT 0 COMMENT '年度',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `vaccinationDatetime` datetime NOT NULL DEFAULT current_timestamp() COMMENT '接种日期',
  `isVaccination` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否接种 1已 0 未',
  `numberStitch` int(10) NOT NULL DEFAULT 0 COMMENT '接种针剂,1第一针，2第二针',
  `addressType` int(10) NOT NULL DEFAULT 0 COMMENT '接种地点，1本地，2异地',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '接种地点',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `notReason` varchar(255) NOT NULL DEFAULT '' COMMENT '未接种原因',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `populationId` (`populationId`),
  KEY `year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=1308 DEFAULT CHARSET=utf8 COMMENT='人口疫苗接种表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VillageWork`
--

DROP TABLE IF EXISTS `VillageWork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VillageWork` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `householdId` int(10) NOT NULL DEFAULT 0 COMMENT '户码Id',
  `workOrgCodes` varchar(2048) NOT NULL DEFAULT '' COMMENT '工作所在地行政代码',
  `workAddress` varchar(2048) NOT NULL DEFAULT '' COMMENT '工作所在地详细地址',
  `populationId` int(10) NOT NULL DEFAULT 0 COMMENT '人口Id',
  `year` int(10) NOT NULL DEFAULT 0 COMMENT '年度',
  `industry` varchar(50) NOT NULL DEFAULT '' COMMENT '行业',
  `occupation` varchar(50) NOT NULL DEFAULT '' COMMENT '职业',
  `salary` varchar(50) NOT NULL DEFAULT '' COMMENT '薪资范围',
  `company` varchar(1024) NOT NULL DEFAULT '' COMMENT '工作单位',
  `remark` longtext DEFAULT NULL COMMENT '备注',
  `createdBy` int(11) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(11) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `syncId` varchar(255) DEFAULT '' COMMENT '同步到数据大屏后返回的唯一id',
  `syncRes` varchar(255) DEFAULT '' COMMENT '同步操作后返回的description',
  `isSync` tinyint(2) DEFAULT 0 COMMENT '是否已同步, 0 否 1 是',
  `syncDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '同步操作时间',
  PRIMARY KEY (`id`),
  KEY `populationId` (`populationId`),
  KEY `areaId` (`areaId`),
  KEY `householdId` (`householdId`),
  KEY `year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8 COMMENT='外出务工人员管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VoteActivity`
--

DROP TABLE IF EXISTS `VoteActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VoteActivity` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `title` varchar(512) NOT NULL DEFAULT '' COMMENT '标题',
  `description` varchar(2048) DEFAULT NULL COMMENT '描述介绍',
  `areaId` int(10) NOT NULL DEFAULT 0 COMMENT '行政区域Id',
  `publishDate` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `stopDate` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '结束时间',
  `peopleCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '参与人数',
  `voteCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '投票数',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '状态 0待发布，1发布中，2已结束',
  `allowOptionCount` int(10) NOT NULL DEFAULT 1 COMMENT '允许选多少个，1 单项，其他多选',
  `allowDayVoteCount` int(10) NOT NULL DEFAULT 0 COMMENT '每天投票数，0是仅限1次，其他是每天N次',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `coverIds` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面图片Id',
  `coverUrl` varchar(1024) NOT NULL DEFAULT '' COMMENT '封面图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评选活动主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VoteOption`
--

DROP TABLE IF EXISTS `VoteOption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VoteOption` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `activityId` bigint(20) NOT NULL DEFAULT 0 COMMENT '活动Id',
  `optionTitle` varchar(512) NOT NULL DEFAULT '' COMMENT '选项标题',
  `optionDescription` varchar(2048) DEFAULT NULL COMMENT '选项描述介绍',
  `voteCount` bigint(20) NOT NULL DEFAULT 0 COMMENT '投票数',
  `imageIds` varchar(2048) NOT NULL DEFAULT '' COMMENT '图片Id',
  `imageUrls` longtext NOT NULL DEFAULT '' COMMENT '图片路径',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '发布人id',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评选活动选项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `VoteRecord`
--

DROP TABLE IF EXISTS `VoteRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VoteRecord` (
  `id` bigint(20) NOT NULL DEFAULT 0,
  `activityId` bigint(20) NOT NULL DEFAULT 0 COMMENT '活动Id',
  `optionId` bigint(20) NOT NULL DEFAULT 0 COMMENT '选项Id',
  `createdBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '投票人',
  `updatedBy` bigint(20) NOT NULL DEFAULT 0 COMMENT '修改人id',
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '投票时间',
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `batchCode` bigint(20) NOT NULL DEFAULT 0 COMMENT '批次编码，选多的时候，可用此识别',
  `voteDate` date NOT NULL DEFAULT curdate() COMMENT '年月日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评选记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WarningMessage`
--

DROP TABLE IF EXISTS `WarningMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WarningMessage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `areaId` int(10) NOT NULL COMMENT '行政代码Id',
  `title` varchar(1024) NOT NULL DEFAULT '' COMMENT '标题',
  `descrition` varchar(2048) NOT NULL DEFAULT '' COMMENT '描述',
  `address` varchar(1024) NOT NULL DEFAULT '' COMMENT '地点',
  `level` int(10) NOT NULL DEFAULT 0 COMMENT '严重程度 1一般，2严重',
  `category` int(10) NOT NULL DEFAULT 0 COMMENT '告警类别 1 火灾，2 高温，3 水灾，4 虫情',
  `isFinish` int(10) NOT NULL DEFAULT 0 COMMENT '是否已解除，0否，1是',
  `imageUrl` varchar(1024) NOT NULL DEFAULT '' COMMENT '图片地址',
  `videoUrl` varchar(1024) NOT NULL DEFAULT '' COMMENT '视频地址',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='告警信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `WarningOperationLog`
--

DROP TABLE IF EXISTS `WarningOperationLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WarningOperationLog` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `warningMessageId` int(10) NOT NULL DEFAULT 0 COMMENT '告警信息Id',
  `operator` varchar(50) DEFAULT '' COMMENT '操作人名字',
  `description` varchar(1024) DEFAULT '' COMMENT '描述',
  `createdBy` int(10) NOT NULL DEFAULT 0 COMMENT '创建人Id',
  `updatedBy` int(10) NOT NULL DEFAULT 0 COMMENT '最后修改人Id',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 已删除 0 未删除',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `operation` varchar(50) DEFAULT NULL COMMENT '操作类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COMMENT='告警信息操作日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_2022xwqydk`
--

DROP TABLE IF EXISTS `XEData_2022xwqydk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_2022xwqydk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `dkje` decimal(10,2) DEFAULT NULL COMMENT '贷款金额',
  `dksj` datetime DEFAULT NULL COMMENT '贷款时间',
  `cdjg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '承贷机构',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2022 年新发放小微企业贷款';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_PartyOrganization`
--

DROP TABLE IF EXISTS `XEData_PartyOrganization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_PartyOrganization` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域ID',
  `orgName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党组织名称',
  `orgType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党组织类型',
  `fatherOrgId` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级党组织ID',
  `secretary` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '书记',
  `viceSecretary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '副书记',
  `secretaryOfDIC` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纪委书记',
  `orgCommittee` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '组织委员',
  `publicity` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '宣传委员',
  `memberOfCPC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党委委员',
  `rkdys` int(8) DEFAULT NULL COMMENT '入库党员',
  `ybdys` int(8) DEFAULT NULL COMMENT '预备党员数',
  `nvdys` int(8) DEFAULT NULL COMMENT '女党员数',
  `ssmzdys` int(8) DEFAULT NULL COMMENT '少数民族党员数',
  `dzysdys` int(8) DEFAULT NULL COMMENT '大专以上党员数',
  `longitude` double DEFAULT NULL COMMENT '经度',
  `latitude` double DEFAULT NULL COMMENT '纬度',
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='宣恩党组织数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_Test`
--

DROP TABLE IF EXISTS `XEData_Test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_Test` (
  `picture` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '照片',
  `video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拍摄的视频',
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在位置',
  `ls` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新测试一级,使用代码表[]',
  `ls2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新测试二级,使用代码表[]',
  `je` int(8) DEFAULT NULL COMMENT '金额',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='测试用的录入模型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_bfzcylb`
--

DROP TABLE IF EXISTS `XEData_bfzcylb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_bfzcylb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `zclsbm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政策落实部门,使用代码表[]',
  `zclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政策类型,使用代码表[]',
  `zcmc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政策名称,使用代码表[]',
  `zcnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政策内容',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `lsqk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '落实情况',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='帮扶政策一览表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_bmyypm`
--

DROP TABLE IF EXISTS `XEData_bmyypm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_bmyypm` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `yymc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用名称',
  `djs` int(20) DEFAULT NULL COMMENT '点击数',
  `mrxzs` int(20) DEFAULT NULL COMMENT '每日新增数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='便民应用排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_chronicDisease`
--

DROP TABLE IF EXISTS `XEData_chronicDisease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_chronicDisease` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `cbzt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参保状态,使用代码表[xe_cbzt]',
  `cbxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参保乡镇（街道）',
  `bzmc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '病种名称,使用代码表[xe_mxbz]',
  `yde` decimal(10,0) DEFAULT NULL COMMENT '月定额',
  `jbr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经办人',
  `jbrq` datetime DEFAULT NULL COMMENT '经办日期',
  `kssj` datetime DEFAULT NULL COMMENT '开始时间',
  `zzsj` datetime DEFAULT NULL COMMENT '终止时间',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='慢性病信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_cqgk`
--

DROP TABLE IF EXISTS `XEData_cqgk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_cqgk` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `hjs` int(10) DEFAULT NULL COMMENT '户籍数',
  `rks` int(10) DEFAULT NULL COMMENT '人口数',
  `czhs` int(10) DEFAULT NULL COMMENT '常住户数',
  `czrks` int(10) DEFAULT NULL COMMENT '常住人口数',
  `dys` int(10) DEFAULT NULL COMMENT '党员数',
  `clwgbs` int(10) DEFAULT NULL COMMENT '村两委干部数',
  `cmzs` int(10) DEFAULT NULL COMMENT '村民组数',
  `xzqhmj` decimal(12,2) DEFAULT NULL COMMENT '行政区划面积',
  `jmjzmj` decimal(12,2) DEFAULT NULL COMMENT '居民居住区面积',
  `gdmj` decimal(12,2) DEFAULT NULL COMMENT '耕地面积',
  `zycy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要产业',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `czr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村主任',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='村情概况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_cszbh`
--

DROP TABLE IF EXISTS `XEData_cszbh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_cszbh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cszbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出生证编号',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='出生证编号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_cyejsjgl`
--

DROP TABLE IF EXISTS `XEData_cyejsjgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_cyejsjgl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `zcz` decimal(10,2) DEFAULT NULL COMMENT '总产值',
  `zzycz` decimal(10,2) DEFAULT NULL COMMENT '种植业产值',
  `zzycl` decimal(10,2) DEFAULT NULL COMMENT '种植业产量',
  `cls` decimal(10,2) DEFAULT NULL COMMENT '畜牧业存栏数',
  `xmycls` decimal(10,2) DEFAULT NULL COMMENT '畜牧业出栏数',
  `xmycz` decimal(10,2) DEFAULT NULL COMMENT '畜牧业产值',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='大屏产业二级页面数据概览';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_cyejyesjgl`
--

DROP TABLE IF EXISTS `XEData_cyejyesjgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_cyejyesjgl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `zcz` decimal(10,2) DEFAULT NULL COMMENT '总产值',
  `zzycz` decimal(10,2) DEFAULT NULL COMMENT '种植业产值',
  `zzycl` decimal(10,2) DEFAULT NULL COMMENT '种植业产量',
  `cls` decimal(10,2) DEFAULT NULL COMMENT '畜牧业存栏数',
  `xmycls` decimal(10,2) DEFAULT NULL COMMENT '畜牧业出栏数',
  `xmycz` decimal(10,2) DEFAULT NULL COMMENT '畜牧业产值',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='大屏产业二级页面数据概览';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_cyfznrfb`
--

DROP TABLE IF EXISTS `XEData_cyfznrfb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_cyfznrfb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `fblx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布类型,使用代码表[xe_fblx]',
  `fbsl` int(10) DEFAULT NULL COMMENT '发布数量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='产业发展内容发布';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_cysj`
--

DROP TABLE IF EXISTS `XEData_cysj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_cysj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cypz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '茶叶品种',
  `cycl` decimal(10,2) DEFAULT NULL COMMENT '产量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='茶叶数据（大屏产业数据导入）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dbxx`
--

DROP TABLE IF EXISTS `XEData_dbxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dbxx` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `hzname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `jzzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '救助证号',
  `bzrk` decimal(10,0) DEFAULT NULL COMMENT '保障人口',
  `yhzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行账号',
  `xsje` decimal(8,2) DEFAULT NULL COMMENT '享受金额',
  `sqyy` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '申请原因',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='低保信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_disabled`
--

DROP TABLE IF EXISTS `XEData_disabled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_disabled` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `realName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `Tape` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾类别,使用代码表[xe_cjlb]',
  `grading` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾等级,使用代码表[xe_cjdj]',
  `disabilityNum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾人证号',
  `detail` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '残疾详情',
  `date` datetime DEFAULT NULL COMMENT '发证日期',
  `GuardianName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监护人姓名',
  `relationship` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监护人与残疾人关系,使用代码表[1010]',
  `phoneNum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监护人手机',
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `beizhu` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='残疾信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dktx`
--

DROP TABLE IF EXISTS `XEData_dktx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dktx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `dkze` decimal(10,2) DEFAULT NULL COMMENT '贷款总额（万元）',
  `zflxhj` decimal(10,2) DEFAULT NULL COMMENT '支付利息合计',
  `txjbje` decimal(10,2) DEFAULT NULL COMMENT '贴息奖补金额',
  `zh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `khh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户行',
  `txqj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '贴息期间',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='贷款贴息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dlbt`
--

DROP TABLE IF EXISTS `XEData_dlbt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dlbt` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `nf` decimal(10,0) DEFAULT NULL COMMENT '年份',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `yhkh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行卡号',
  `btmj` decimal(8,2) DEFAULT NULL COMMENT '补贴面积',
  `btbz` decimal(8,2) DEFAULT NULL COMMENT '补贴标准',
  `btje` decimal(8,2) DEFAULT NULL COMMENT '补贴金额',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='地力补贴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dpwj`
--

DROP TABLE IF EXISTS `XEData_dpwj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dpwj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xh` int(2) DEFAULT NULL COMMENT '序号',
  `ssbk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属板块',
  `tpurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片url',
  `bt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `tclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '弹窗类型,使用代码表[xedpwj_tclx]',
  `tcnrurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '弹出内容url',
  `tckd` decimal(10,4) DEFAULT NULL COMMENT '弹窗宽度',
  `tcgd` decimal(10,4) DEFAULT NULL COMMENT '弹窗高度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'type',
  `urltype` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'urltype,使用代码表[xe_urttype]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='宣恩大屏文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dswz`
--

DROP TABLE IF EXISTS `XEData_dswz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dswz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `wzm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站名',
  `wzurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '网站url',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='电商网站';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dszd`
--

DROP TABLE IF EXISTS `XEData_dszd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dszd` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `czwt` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '存在问题',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `wz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '站点位置',
  `zdmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '站点名称',
  `zzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '站长姓名',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `zddw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地图定位',
  `sczdzp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上传站点照片',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='电商站点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dtddxx`
--

DROP TABLE IF EXISTS `XEData_dtddxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dtddxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tpurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片url',
  `bt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `tcnrurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '弹窗内容url',
  `tckd` decimal(10,2) DEFAULT NULL COMMENT '弹窗宽度',
  `tcgd` decimal(10,2) DEFAULT NULL COMMENT '弹窗高度',
  `ddnrlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '打点内容类型,使用代码表[xe_ddnrlx]',
  `jd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `wd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  `dizhi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `ms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='地图打点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dyxx`
--

DROP TABLE IF EXISTS `XEData_dyxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dyxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `rylb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员类别,使用代码表[xe_rylb]',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `rdsj` datetime DEFAULT NULL COMMENT '入党时间',
  `szdzb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在党支部',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `gzgw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作岗位',
  `xl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历,使用代码表[1016]',
  `mz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族,使用代码表[1013]',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `zzrq` datetime DEFAULT NULL COMMENT '转正日期',
  `sfnmg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否农民工,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `sflrsn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否老弱失能,使用代码表[dm_yesno]',
  `sfjjfz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否居家发展,使用代码表[dm_yesno]',
  `sfcnrz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否村内任职,使用代码表[dm_yesno]',
  `sfldzw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否流动在外,使用代码表[dm_yesno]',
  `lrdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '流入地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='党员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dyzzhd`
--

DROP TABLE IF EXISTS `XEData_dyzzhd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dyzzhd` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hdmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '活动名称',
  `ssxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属乡镇',
  `hdrq` datetime DEFAULT NULL COMMENT '活动日期',
  `jcdzz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基层党组织',
  `zp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='党员组织活动-大屏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_dzzxx`
--

DROP TABLE IF EXISTS `XEData_dzzxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_dzzxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `dzzmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党组织名称',
  `sj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '书记',
  `rkdy` int(5) DEFAULT NULL COMMENT '入库党员',
  `ybdy` int(5) DEFAULT NULL COMMENT '预备党员',
  `ndy` int(5) DEFAULT NULL COMMENT '女党员',
  `ssmzdys` int(5) DEFAULT NULL COMMENT '少数民族党员数',
  `dzysdys` int(5) DEFAULT NULL COMMENT '大专以上党员数',
  `jd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `wd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `orgType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党组织类型',
  `zsdys` int(10) DEFAULT NULL COMMENT '正式党员数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='党组织信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_fmsj`
--

DROP TABLE IF EXISTS `XEData_fmsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_fmsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `xxfbwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '信息发布文字',
  `xxfbsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '信息发布数字',
  `djylwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党建引领文字',
  `djylsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党建引领数字',
  `cyfzwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产业发展文字',
  `cyfzsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产业发展数字',
  `msfwwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民生服务文字',
  `msfwsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民生服务数字',
  `jczlwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基层治理文字',
  `jczlsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基层治理数字',
  `xcwlwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡村文旅文字',
  `xcwlsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡村文旅数字',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='封面数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_gbrhzfqk`
--

DROP TABLE IF EXISTS `XEData_gbrhzfqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_gbrhzfqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `hzidCard` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `zfsj` datetime DEFAULT NULL COMMENT '走访时间',
  `mpqk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '三保障及安全饮水和其他风险排查情况',
  `zfrqz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '走访人签字',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='干部入户走访情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_hsjcjl`
--

DROP TABLE IF EXISTS `XEData_hsjcjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_hsjcjl` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `jcrq` datetime DEFAULT NULL COMMENT '检测日期',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `sgtxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '试管条形码',
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `hsjcjg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检测结果,使用代码表[xe_jcjg]',
  `jcjg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '检测机构',
  `cyd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '采样点',
  `cyrq` datetime DEFAULT NULL COMMENT '采样日期',
  `ssrq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属人群,使用代码表[xe_ssrq]',
  `cylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '采样类型,使用代码表[xe_cylx]',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='核酸检测记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_hyyjxxhsqk`
--

DROP TABLE IF EXISTS `XEData_hyyjxxhsqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_hyyjxxhsqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `hzidCard` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `hyyjbm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行业预警部门,使用代码表[xe_hyyjbm]',
  `yjjtnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '预警具体内容',
  `rhhsqk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户核实情况',
  `sfczfpfx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否存在返贫风险,使用代码表[dm_yesno]',
  `rhhcryqz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户核查人员签字',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `yjsj` datetime DEFAULT NULL COMMENT '预警时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='行业预警信息核实情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_input`
--

DROP TABLE IF EXISTS `XEData_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_input` (
  `picture` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '照片',
  `video` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拍摄的视频',
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在位置',
  `ls` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新测试一级,使用代码表[]',
  `ls2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新测试二级,使用代码表[]',
  `je` int(8) DEFAULT NULL COMMENT '金额',
  `qm` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签名',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='测试用的录入模型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_jjzwsj`
--

DROP TABLE IF EXISTS `XEData_jjzwsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_jjzwsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `zwlb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作物类别',
  `mj` decimal(10,2) DEFAULT NULL COMMENT '面积',
  `cl` decimal(10,2) DEFAULT NULL COMMENT '产量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='经济作物数据（大屏产业数据导入）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_jnssqk`
--

DROP TABLE IF EXISTS `XEData_jnssqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_jnssqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `nd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `jnje` decimal(10,2) DEFAULT NULL COMMENT '缴纳金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='缴纳税收情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_jtjjzj`
--

DROP TABLE IF EXISTS `XEData_jtjjzj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_jtjjzj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `nf` int(4) DEFAULT NULL COMMENT '统计年份',
  `srhj` decimal(15,2) DEFAULT NULL COMMENT '收入合计',
  `jysr` decimal(12,2) DEFAULT NULL COMMENT '经营收入',
  `fbjsjsr` decimal(12,2) DEFAULT NULL COMMENT '发包及上交收入',
  `tzsy` decimal(12,2) DEFAULT NULL COMMENT '投资收益',
  `dnyjysydc` int(10) DEFAULT NULL COMMENT '当年有经营收入的村',
  `cdy5w` int(10) DEFAULT NULL COMMENT '5万元以下的村',
  `c5d10w` int(10) DEFAULT NULL COMMENT '5-10万元的村',
  `c10d50w` int(10) DEFAULT NULL COMMENT '10-50万元的村',
  `c50d100w` int(10) DEFAULT NULL COMMENT '50-100万元的村',
  `c100w` int(10) DEFAULT NULL COMMENT '100万元以上的村',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='集体经济资金';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_jtqk`
--

DROP TABLE IF EXISTS `XEData_jtqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_jtqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主性别,使用代码表[dm_gender]',
  `jtrk` int(10) DEFAULT NULL COMMENT '家庭人口',
  `mz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族,使用代码表[1013]',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `jtzz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭住址',
  `sfyzdrq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有重点人群,使用代码表[dm_yesno]',
  `ywjyrs` int(10) DEFAULT NULL COMMENT '义务教育人数',
  `cjcxybrs` int(10) DEFAULT NULL COMMENT '参加城乡医保人数',
  `aqys` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全饮水,使用代码表[xe_ysaq]',
  `qyjtysxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签约家庭医生姓名',
  `zfmj` decimal(10,2) DEFAULT NULL COMMENT '住房面积',
  `zfjg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '住房结构,使用代码表[xe_zfjg]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `hbq` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户标签,使用代码表[xe_hbq]',
  `qyjtysdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签约家庭医生电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='家庭情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_jtys`
--

DROP TABLE IF EXISTS `XEData_jtys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_jtys` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭签约医生姓名',
  `jtqyysdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭签约医生电话',
  `ssyljg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属医疗机构',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `fwxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务项目',
  `qysj` datetime DEFAULT NULL COMMENT '签约时间',
  `fwbmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务包名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='宣恩_家庭签约医生_户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_jtzcmxb`
--

DROP TABLE IF EXISTS `XEData_jtzcmxb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_jtzcmxb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `xmbm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目编码',
  `xmmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称',
  `xmsjtr` decimal(10,4) DEFAULT NULL COMMENT '项目实际投入',
  `zcbm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产编码',
  `zcmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产名称',
  `gm` decimal(10,4) DEFAULT NULL COMMENT '规模',
  `dw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '单位',
  `gjnd` int(10) DEFAULT NULL COMMENT '购建年度',
  `zcyz` decimal(10,4) DEFAULT NULL COMMENT '资产原值',
  `zcxz` decimal(10,4) DEFAULT NULL COMMENT '资产现值',
  `zld` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '座落地',
  `jsdw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建设单位',
  `zczt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产状态,使用代码表[xe_zczt]',
  `zcztbz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产状态备注',
  `zcsx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产属性,使用代码表[xe_zcsx]',
  `zclb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产类别,使用代码表[xe_zclb]',
  `zcxt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资产形态,使用代码表[xe_zcxt]',
  `jtxt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '具体形态,使用代码表[xe_jtxt]',
  `yjsj` datetime DEFAULT NULL COMMENT '移交时间',
  `ghyydw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管护运营单位',
  `zrr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '责任人',
  `jgdw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监管单位,使用代码表[xe_jgdw]',
  `jgdwbz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监管单位备注',
  `sfsysswydfpbqxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否属于“十三五”易地扶贫搬迁项目,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='集体资产明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_jzdj`
--

DROP TABLE IF EXISTS `XEData_jzdj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_jzdj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `sfjz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接种,使用代码表[xe_sfjz]',
  `wjzyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '未接种原因,使用代码表[xe_wjzyy]',
  `jzzj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接种针剂,使用代码表[xe_jzzj]',
  `jzrq` datetime DEFAULT NULL COMMENT '接种日期',
  `sfbdjz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否本地接种,使用代码表[dm_yesno]',
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接种所在省,使用代码表[dm_areaCode_ex]',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接种所在市,使用代码表[dm_areaCode_ex]',
  `qx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '接种所在区县,使用代码表[dm_areaCode_ex]',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='疫苗登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_knxsshbz`
--

DROP TABLE IF EXISTS `XEData_knxsshbz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_knxsshbz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `jdxd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就读学段,使用代码表[1016]',
  `jdnj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就读年级,使用代码表[xe_jdnj]',
  `jdbj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就读班级',
  `xjh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学籍号',
  `ffje` decimal(10,2) DEFAULT NULL COMMENT '发放金额',
  `yhkh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行卡号或存折号',
  `yhkcyrxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行卡或存折持有人姓名',
  `yszxsgx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与受助学生关系,使用代码表[1010]',
  `jhrlxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监护人联系电话',
  `zsfzssjsm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '住宿非住宿送教上门,使用代码表[xe_zsfzssjsm]',
  `pklx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '贫困类型,使用代码表[xe_pklx]',
  `zzxq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资助学期',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `xxmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学校（幼儿园）名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='困难学生生活补助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_ldlmp`
--

DROP TABLE IF EXISTS `XEData_ldlmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_ldlmp` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(4) DEFAULT NULL COMMENT '摸排年份',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `dhhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话号码',
  `ldjn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '劳动技能,使用代码表[xe_ldjn]',
  `province` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作所在省,使用代码表[dm_areaCode_ex]',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作所在市/州,使用代码表[dm_areaCode_ex]',
  `qx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作所在区县,使用代码表[dm_areaCode_ex]',
  `gzdw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作单位',
  `xxdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `sshy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '从事行业,使用代码表[4010]',
  `yxzfw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '月薪资范围,使用代码表[4012]',
  `gz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工种,使用代码表[4011]',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `sfsyldl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否属于劳动力,使用代码表[dm_yesno]',
  `sfqc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否迁出,使用代码表[dm_yesno]',
  `jntc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '技能特长',
  `hlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型,使用代码表[]',
  `xl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历,使用代码表[1016]',
  `jyzt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业状态,使用代码表[]',
  `sczt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生存状态,使用代码表[]',
  `swsj` datetime DEFAULT NULL COMMENT '死亡时间',
  `ywjyyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '有无就业意愿,使用代码表[dm_yesorno]',
  `yxjys` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向就业省,使用代码表[dm_areaCode_ex]',
  `yxjyshi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向就业市,使用代码表[dm_areaCode_ex]',
  `yxjyqx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向就业区县,使用代码表[dm_areaCode_ex]',
  `yxcsgw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向从事岗位,使用代码表[]',
  `yxcshy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向从事行业,使用代码表[4010]',
  `ywpxxq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '有无培训需求,使用代码表[dm_yesorno]',
  `yxpxhy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向培训行业,使用代码表[4010]',
  `yxpxzy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向培训专业,使用代码表[]',
  `ywcyxq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '有无创业需求,使用代码表[]',
  `yxcyhy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向创业行业,使用代码表[4010]',
  `yxcys` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向创业省,使用代码表[dm_areaCode_ex]',
  `yxcyshi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向创业市,使用代码表[dm_areaCode_ex]',
  `yxcyqx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '意向创业区县,使用代码表[dm_areaCode_ex]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='劳动力摸排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_lndn`
--

DROP TABLE IF EXISTS `XEData_lndn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_lndn` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scztqymc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '市场主体企业名称',
  `tyxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业统一信用代码',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号码',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `bfsd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶手段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='联农带农';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_lsjc`
--

DROP TABLE IF EXISTS `XEData_lsjc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_lsjc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `sjzs` int(5) DEFAULT NULL COMMENT '事件总数',
  `dcls` int(5) DEFAULT NULL COMMENT '待处理数',
  `dhfs` int(5) DEFAULT NULL COMMENT '待回访数',
  `ywjs` int(5) DEFAULT NULL COMMENT '已完结数',
  `zfzcs` int(5) DEFAULT NULL COMMENT '走访总次数',
  `pjzfcs` int(5) DEFAULT NULL COMMENT '平均走访次数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='律师进村';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_lsry`
--

DROP TABLE IF EXISTS `XEData_lsry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_lsry` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `lslb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '留守类别,使用代码表[xe_lslb]',
  `bfgb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶干部',
  `bfgblxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶干部联系电话',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='留守人员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_lxdygb`
--

DROP TABLE IF EXISTS `XEData_lxdygb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_lxdygb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `zw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职务',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `bfzreqrsj` datetime DEFAULT NULL COMMENT '帮扶责任人确认时间',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='联系党员干部';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_mlsbxlp`
--

DROP TABLE IF EXISTS `XEData_mlsbxlp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_mlsbxlp` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `bah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '报案号',
  `bdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保单号',
  `bbxr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '被保险人',
  `ssmj` decimal(10,2) DEFAULT NULL COMMENT '损失面积',
  `cxyy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出险原因',
  `pfje` decimal(10,2) DEFAULT NULL COMMENT '赔付金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='马铃薯保险理赔';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_mstrq`
--

DROP TABLE IF EXISTS `XEData_mstrq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_mstrq` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `gqzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供气证号',
  `yql` decimal(10,2) DEFAULT NULL COMMENT '用气量',
  `ysqfye` decimal(10,2) DEFAULT NULL COMMENT '应收气费余额',
  `qfje` decimal(10,2) DEFAULT NULL COMMENT '欠费金额',
  `khrq` datetime DEFAULT NULL COMMENT '开户日期',
  `yqxz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用气性质,使用代码表[xe_mstrq_yqxz]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zjycql` decimal(10,2) DEFAULT NULL COMMENT '最近一次抄表气量或充值气量',
  `cbrq` datetime DEFAULT NULL COMMENT '抄表日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='民生天然气';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_nfmzlp`
--

DROP TABLE IF EXISTS `XEData_nfmzlp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_nfmzlp` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `bah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '报案号',
  `pah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '赔案号',
  `bbxr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '被保险人',
  `ajjd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '案件进度,使用代码表[xe_nfmzlp_jd]',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `bdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '保单号',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='能繁母猪理赔';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_njq`
--

DROP TABLE IF EXISTS `XEData_njq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_njq` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `dkmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块名称',
  `syqxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有权性质',
  `dklb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块类别',
  `tdlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '土地类型',
  `dldj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地力等级',
  `tdyt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '土地用途',
  `sfjbnt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否基本农田',
  `scmj` decimal(10,2) DEFAULT NULL COMMENT '实测面积（亩）',
  `dkdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块东至',
  `dkxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块西至',
  `dknz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块南至',
  `dkbz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块北至',
  `zjrxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '指界人姓名',
  `bzm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标识码',
  `ysdm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '要素代码',
  `dkdm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块代码',
  `dkbzxx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地块备注信息',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='宣恩_农经权';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_nqgllb`
--

DROP TABLE IF EXISTS `XEData_nqgllb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_nqgllb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id,使用代码表[]',
  `hzidCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `hzname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `cyfzqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产业发展情况,使用代码表[xe_cyfzqk]',
  `dddscztmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '带动的市场主体名称',
  `ddfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '带动方式,使用代码表[xe_ddfs]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农企关联列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_nybx`
--

DROP TABLE IF EXISTS `XEData_nybx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_nybx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `zcxnybxje` decimal(10,2) DEFAULT NULL COMMENT '政策性农业保险金额（元）',
  `zcxnybxqx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政策性农业保险期限',
  `syxnybxje` decimal(10,2) DEFAULT NULL COMMENT '商业险农业保险金额（元）',
  `syxnybxqx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商业性农业保险期限',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='农业保险';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_qyxx`
--

DROP TABLE IF EXISTS `XEData_qyxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_qyxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `qymc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业名称',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用编码',
  `fddbr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '法定代表人(负责人)',
  `qylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业类型,使用代码表[xe_qylx]',
  `qysx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '企业属性,使用代码表[xe_qysx]',
  `jydz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经营地址（住所）',
  `jyfw` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经营范围',
  `zczb` decimal(10,4) DEFAULT NULL COMMENT '注册资本（万元）',
  `hyxl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行业小类,使用代码表[xe_hexl]',
  `gxdw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管辖单位',
  `clrq` datetime DEFAULT NULL COMMENT '成立日期',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `wd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  `tpurl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='宣恩_企业信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_rcdw`
--

DROP TABLE IF EXISTS `XEData_rcdw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_rcdw` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `rclx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人才类型,使用代码表[]',
  `gsrc` int(10) DEFAULT NULL COMMENT '贡水人才',
  `dzrc` int(10) DEFAULT NULL COMMENT '党政人才',
  `jnrc` int(10) DEFAULT NULL COMMENT '技能人才',
  `zyjsrc` int(10) DEFAULT NULL COMMENT '专业技术人才',
  `wlrc` int(10) DEFAULT NULL COMMENT '文旅人才',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='人才队伍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_snbt`
--

DROP TABLE IF EXISTS `XEData_snbt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_snbt` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `btxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '补贴项目,使用代码表[xe_snbt_btxb]',
  `btsj` datetime DEFAULT NULL COMMENT '补贴时间',
  `btje` decimal(10,2) DEFAULT NULL COMMENT '补贴金额（元）',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='涉农补贴';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_ssdksj`
--

DROP TABLE IF EXISTS `XEData_ssdksj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_ssdksj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `ljts` int(8) DEFAULT NULL COMMENT '垃圾桶数',
  `wsjs` int(8) DEFAULT NULL COMMENT '卫生间数',
  `whgcs` int(8) DEFAULT NULL COMMENT '文化广场数',
  `jsqcs` int(8) DEFAULT NULL COMMENT '健身器材数',
  `gjzs` int(8) DEFAULT NULL COMMENT '公交站数',
  `fhls` int(8) DEFAULT NULL COMMENT '防护林数',
  `sks` int(8) DEFAULT NULL COMMENT '水库数',
  `hds` int(8) DEFAULT NULL COMMENT '河道数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='设施打卡数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_sswh`
--

DROP TABLE IF EXISTS `XEData_sswh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_sswh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '设施类型',
  `sl` int(10) DEFAULT NULL COMMENT '数量',
  `dks` int(10) DEFAULT NULL COMMENT '打卡数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='民生服务-设施维护';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_stgyldx`
--

DROP TABLE IF EXISTS `XEData_stgyldx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_stgyldx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` int(4) DEFAULT NULL COMMENT '年份',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主身份证号',
  `ykthm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '一卡通号码',
  `mj` int(10) DEFAULT NULL COMMENT '面积',
  `bcbz` int(10) DEFAULT NULL COMMENT '补偿标准',
  `jb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '级别,使用代码表[xe_jb]',
  `lqzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林权证号',
  `sfjdlkh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否建档立卡户,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='生态公益林兑现花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_sycy`
--

DROP TABLE IF EXISTS `XEData_sycy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_sycy` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `cylx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产业类型,使用代码表[xe_qdcylx]',
  `cl` decimal(20,4) DEFAULT NULL COMMENT '产量',
  `mj` decimal(20,4) DEFAULT NULL COMMENT '面积',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `cldw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产量单位',
  `mjdw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '面积单位',
  `cycz` decimal(10,2) DEFAULT NULL COMMENT '产值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='首页产业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_sydj`
--

DROP TABLE IF EXISTS `XEData_sydj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_sydj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `dzz` int(10) DEFAULT NULL COMMENT '党组织',
  `dwsl` int(10) DEFAULT NULL COMMENT '党委数量',
  `dzzsl` int(10) DEFAULT NULL COMMENT '党总支数量',
  `dzbsl` int(10) DEFAULT NULL COMMENT '党支部数量',
  `zsdy` int(10) DEFAULT NULL COMMENT '正式党员',
  `ybdy` int(10) DEFAULT NULL COMMENT '预备党员',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='首页党建';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_tbfzfzdx`
--

DROP TABLE IF EXISTS `XEData_tbfzfzdx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_tbfzfzdx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `nf` int(4) DEFAULT NULL COMMENT '年份',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `jtxxdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭详细地址',
  `fzlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '扶助类型,使用代码表[xe_fzlx]',
  `yffje` decimal(10,2) DEFAULT NULL COMMENT '应发放金额',
  `yhzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行账号',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='特别扶助扶助对象花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_wcwg`
--

DROP TABLE IF EXISTS `XEData_wcwg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_wcwg` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `nf` int(4) DEFAULT NULL COMMENT '年份',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `szs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作所在省',
  `szshi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在市',
  `szqx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在区/县',
  `xxdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `hy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '从事行业,使用代码表[4010]',
  `gz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属工种,使用代码表[4011]',
  `xzfw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '薪资范围,使用代码表[4012]',
  `gzdw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作单位',
  `bz` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='外出务工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_xcyshmc`
--

DROP TABLE IF EXISTS `XEData_xcyshmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_xcyshmc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `mz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族,使用代码表[1013]',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `byyx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '毕业院校',
  `bysj` datetime DEFAULT NULL COMMENT '毕业时间 ',
  `zy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '专业,使用代码表[xe_zy]',
  `zyzg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '执业资格,使用代码表[xe_zyzg]',
  `zsbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证书编号',
  `xl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历,使用代码表[1016]',
  `sfkzzyyfw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否开展中医药服务,使用代码表[dm_yesno]',
  `sfdy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否党员,使用代码表[dm_yesno]',
  `bz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='乡村医生花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_xczxxmsb`
--

DROP TABLE IF EXISTS `XEData_xczxxmsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_xczxxmsb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `xmmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目名称',
  `xmlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目类型,使用代码表[xe_xmlx]',
  `xmzlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目子类型,使用代码表[xe_xmlx]',
  `xmjsnrjbzbz` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目建设内容及补助标准',
  `xmjsdd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目建设地点,使用代码表[xe_jsdd]',
  `nf` int(10) DEFAULT NULL COMMENT '项目规划年度',
  `xmysztz` decimal(10,2) DEFAULT NULL COMMENT '项目预算总投资',
  `czzjly` decimal(10,2) DEFAULT NULL COMMENT '财政资金来源',
  `qtzjly` int(10) DEFAULT NULL COMMENT '其他资金来源',
  `xmgs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目归属,使用代码表[xe_xmgs]',
  `tpctsgc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否脱贫村提升工程,使用代码表[dm_yesno]',
  `ydfpbqhfpxm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否易地扶贫搬迁后扶项目,使用代码表[dm_yesno]',
  `sfzcsyfp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否资产收益扶贫,使用代码表[dm_yesno]',
  `sfzjcjjjjsr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否增加村集体经济收入,使用代码表[dm_yesno]',
  `qzcyhlyljjz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '群众参与和利益联结机制',
  `ndzmb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度总目标',
  `xmsyrk` int(10) DEFAULT NULL COMMENT '项目受益人口',
  `zjsyrk` int(10) DEFAULT NULL COMMENT '其中直接受益人口',
  `xmzgdw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目主管单位',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `xmfzr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目负责人',
  `xmsfnrndssjh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目是否纳入年度实施计划,使用代码表[dm_yesno]',
  `cmdbdhzp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村民代表大会照片',
  `qmzp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签名照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='乡村振兴项目申报-还没完成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_xmysj`
--

DROP TABLE IF EXISTS `XEData_xmysj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_xmysj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '品种',
  `enterqty` decimal(10,2) DEFAULT NULL COMMENT '存栏量',
  `outqty` decimal(10,2) DEFAULT NULL COMMENT '出栏量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='畜牧业数据（大屏产业数据导入）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_xtrcdw`
--

DROP TABLE IF EXISTS `XEData_xtrcdw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_xtrcdw` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `cyjyqk` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '从业简要情况',
  `rylb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员类别,使用代码表[]',
  `xjd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现居地',
  `xsnd` int(4) DEFAULT NULL COMMENT '吸收年度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='乡土人才队伍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_ycbxlp`
--

DROP TABLE IF EXISTS `XEData_ycbxlp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_ycbxlp` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `pah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '赔案号',
  `zt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态,使用代码表[xe_ycbxlp_zt]',
  `bbxr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '被保险人',
  `zhmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号名称',
  `je` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='油菜保险理赔';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_ycyj`
--

DROP TABLE IF EXISTS `XEData_ycyj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_ycyj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xzc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政村',
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `zp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '照片',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='一村一警';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_ydqk`
--

DROP TABLE IF EXISTS `XEData_ydqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_ydqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `ydhh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用电户号',
  `ydyd` decimal(10,2) DEFAULT NULL COMMENT '月度用电',
  `ysje` decimal(10,2) DEFAULT NULL COMMENT '应收金额（元）',
  `khrq` datetime DEFAULT NULL COMMENT '开户日期',
  `ydxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用电性质',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `jzrq` datetime DEFAULT NULL COMMENT '截至日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用电情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_yldjp`
--

DROP TABLE IF EXISTS `XEData_yldjp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_yldjp` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `wtms` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '问题描述,使用代码表[xe_wtms]',
  `sbsj` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上报时间',
  `clzt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理状态',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `sbr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上报人',
  `sjfl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '事件分类',
  `zfcs` int(10) DEFAULT NULL COMMENT '走访次数',
  `tp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
  `sjms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '事件描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='有理大家评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_ysqk`
--

DROP TABLE IF EXISTS `XEData_ysqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_ysqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `yssh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用水水号',
  `sl` decimal(10,2) DEFAULT NULL COMMENT '水量',
  `ysje` decimal(10,2) DEFAULT NULL COMMENT '应收金额',
  `khrq` datetime DEFAULT NULL COMMENT '开户日期',
  `ysxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用水性质',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `cbzq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '抄表周期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用水情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_ywbd`
--

DROP TABLE IF EXISTS `XEData_ywbd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_ywbd` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `ljyhs` int(5) DEFAULT NULL COMMENT '累计用户数',
  `zrxzyhs` int(5) DEFAULT NULL COMMENT '昨日新增用户数',
  `zrfwcs` int(5) DEFAULT NULL COMMENT '昨日访问次数',
  `zrfwrs` int(5) DEFAULT NULL COMMENT '昨日访问人数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='有问必答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_zjwxx`
--

DROP TABLE IF EXISTS `XEData_zjwxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_zjwxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `zjfaqpcbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自建房安全排查编号',
  `pcfwbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '普查房屋编号',
  `xxdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细地址',
  `cqrxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产权人（使用人）姓名',
  `fwyt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋用途,使用代码表[xe_fwyt]',
  `fwjtyt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '房屋具体用途',
  `tdxz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '土地性质（二级）,使用代码表[xe_tdxz]',
  `jznd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建造年代,使用代码表[xe_jznd]',
  `szqy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在区域,使用代码表[xe_szqy]',
  `rymjcszb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员密集场所周边',
  `cs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '层数,使用代码表[xe_szxx]',
  `jglx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结构类型,使用代码表[xe_jglx]',
  `sfgkj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否改扩建,使用代码表[dm_yesno]',
  `gkjcs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '改扩建次数,使用代码表[xe_szxx]',
  `gkjnr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '改扩建内容',
  `yhdxzxk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '已取得的行政许可',
  `gccs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工程措施',
  `wfjshwfsp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '违法建设和违法审批,使用代码表[dm_yesno]',
  `wfjs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '违法建设,使用代码表[xe_wfjs]',
  `wfsp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '违法审批',
  `jgzk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '结构状况,使用代码表[xe_jgzk]',
  `jtbw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '具体部位',
  `cbpd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '排查初步判定,使用代码表[xe_cbpd]',
  `sfaqjd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否安全鉴定,使用代码表[dm_yesno]',
  `jdjl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '鉴定结论',
  `glcs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理措施',
  `pcy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '排查员',
  `pcsj` datetime DEFAULT NULL COMMENT '排查时间',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='自建屋信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_zsbspm`
--

DROP TABLE IF EXISTS `XEData_zsbspm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_zsbspm` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `zsbsyy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '掌上办事应用',
  `djs` int(20) DEFAULT NULL COMMENT '点击数',
  `mrxzs` int(20) DEFAULT NULL COMMENT '每日新增数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='掌上办事排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_zxxshmc`
--

DROP TABLE IF EXISTS `XEData_zxxshmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_zxxshmc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `jtdz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭地址',
  `xxmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学校名称',
  `bj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '班级',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='在校学生花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_zycsj`
--

DROP TABLE IF EXISTS `XEData_zycsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_zycsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `ycpz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '药材品种',
  `zdmj` decimal(10,2) DEFAULT NULL COMMENT '在地面积',
  `dncsmj` decimal(10,2) DEFAULT NULL COMMENT '当年采收面积',
  `cl` decimal(10,2) DEFAULT NULL COMMENT '产量',
  `cz` decimal(10,2) DEFAULT NULL COMMENT '产值',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='中药材数据（大屏产业数据导入）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_zyjyqlz`
--

DROP TABLE IF EXISTS `XEData_zyjyqlz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_zyjyqlz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `tyshxydm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '统一社会信用代码',
  `lx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型,使用代码表[xe_zyjyqlz_lx]',
  `sfqdlzht` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否签订流转合同',
  `lzzrmj` decimal(10,4) DEFAULT NULL COMMENT '流转转入面积（亩）',
  `kssj` datetime DEFAULT NULL COMMENT '转入期限开始时间',
  `jssj` datetime DEFAULT NULL COMMENT '结束时间',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='资源经营权流转情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEData_zzysj`
--

DROP TABLE IF EXISTS `XEData_zzysj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEData_zzysj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `zzpz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '种植品种',
  `zzmj` decimal(10,2) DEFAULT NULL COMMENT '种植面积',
  `cl` decimal(10,2) DEFAULT NULL COMMENT '产量',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='种植业数据（大屏产业数据导入）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_cbmxbmzhmc`
--

DROP TABLE IF EXISTS `XEDate_cbmxbmzhmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_cbmxbmzhmc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `idCard` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公民身份号码',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡镇',
  `cun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `bzbm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '病种编码',
  `lb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类别',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='参保慢性病门诊花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_dgbtffhmc`
--

DROP TABLE IF EXISTS `XEDate_dgbtffhmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_dgbtffhmc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `xe_cz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村组',
  `xe_xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xe_ykth` int(22) DEFAULT NULL COMMENT '一卡通号',
  `xe_yhzh` int(22) DEFAULT NULL COMMENT '银行账号',
  `xe_khyh` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户银行',
  `xe_tjqqmj` decimal(10,2) DEFAULT NULL COMMENT '土地确权面积',
  `xe_cbczfcbgdmj` decimal(10,2) DEFAULT NULL COMMENT '承包村组非承包耕地面积',
  `xe_sbbtmj` decimal(10,2) DEFAULT NULL COMMENT '申报补贴面积',
  `xe_btbz` decimal(10,2) DEFAULT NULL COMMENT '补贴标准',
  `xe_btje` decimal(12,2) DEFAULT NULL COMMENT '补贴资金',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='稻谷补贴发放花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_dsrrkcbzz`
--

DROP TABLE IF EXISTS `XEDate_dsrrkcbzz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_dsrrkcbzz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `xm` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `ssxz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属乡镇',
  `sscz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所属村组',
  `lb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类别',
  `zzje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '资助金额',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='低收入人口参保资助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_dzz`
--

DROP TABLE IF EXISTS `XEDate_dzz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_dzz` (
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `sj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '书记',
  `fsj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '副书记',
  `rkdy` int(5) DEFAULT NULL COMMENT '入库党员',
  `ybdy` int(5) DEFAULT NULL COMMENT '预备党员',
  `ndys` int(5) DEFAULT NULL COMMENT '女党员数',
  `ssmzdys` int(5) DEFAULT NULL COMMENT '少数民族党员数',
  `dzysdys` int(5) DEFAULT NULL COMMENT '大专以上党员数',
  `jd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '经度',
  `wd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '纬度',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zsdys` int(10) DEFAULT NULL COMMENT '正式党员数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='党组织';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_fmsj`
--

DROP TABLE IF EXISTS `XEDate_fmsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_fmsj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `xxfbwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '信息发布文字',
  `xxfbsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '信息发布数字',
  `djylwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党建引领文字',
  `djylsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '党建引领数字',
  `cyfzwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产业发展文字',
  `cyfzsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产业发展数字',
  `msfwwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民生服务文字',
  `msfwsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民生服务数字',
  `jczlwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基层治理文字',
  `jczlsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基层治理数字',
  `xcwlwz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡村文旅文字',
  `xcwlsz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡村文旅数字',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='封面数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_gdbtff`
--

DROP TABLE IF EXISTS `XEDate_gdbtff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_gdbtff` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(26) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `jtzz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭住址',
  `nhxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户姓名',
  `yhzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '银行账号',
  `btmj` decimal(10,2) DEFAULT NULL COMMENT '补贴面积\n单位：亩',
  `btbz` decimal(10,2) DEFAULT NULL COMMENT '补贴标准\n单位：元',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `btje` decimal(10,2) DEFAULT NULL COMMENT '补贴金额\n单位：元',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='耕地补贴发放花名册';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_lsjc`
--

DROP TABLE IF EXISTS `XEDate_lsjc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_lsjc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `sjzs` int(5) DEFAULT NULL COMMENT '事件总数',
  `dcls` int(5) DEFAULT NULL COMMENT '待处理数',
  `dhfs` int(5) DEFAULT NULL COMMENT '待回访数',
  `ywjs` int(5) DEFAULT NULL COMMENT '已完结数',
  `zfzcs` int(5) DEFAULT NULL COMMENT '走访总次数',
  `pjzfcs` int(5) DEFAULT NULL COMMENT '平均走访次数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='律师进村';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_rcdw`
--

DROP TABLE IF EXISTS `XEDate_rcdw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_rcdw` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `gsrc` int(5) DEFAULT NULL COMMENT '贡水人才',
  `dzrc` int(5) DEFAULT NULL COMMENT '党政人才',
  `jnrc` int(5) DEFAULT NULL COMMENT '技能人才',
  `zyjsrc` int(5) DEFAULT NULL COMMENT '专业技术人才',
  `wlrc` int(5) DEFAULT NULL COMMENT '文旅人才',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='人才队伍';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_sthly`
--

DROP TABLE IF EXISTS `XEDate_sthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_sthly` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `mz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族,使用代码表[1013]',
  `sfzh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `ykthm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '一卡通号码',
  `jldasj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '建档立卡时间',
  `nf` datetime DEFAULT NULL COMMENT '年份',
  `ghmj` decimal(6,2) DEFAULT NULL COMMENT '管护面积',
  `ghqy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管护区域',
  `pqzt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新聘或续聘或解聘,使用代码表[xe_pqzt]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='生态护林员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_tdcb`
--

DROP TABLE IF EXISTS `XEDate_tdcb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_tdcb` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `fbfbm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发包方编码',
  `cbfbm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '承包方编码',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `cysl` int(4) DEFAULT NULL COMMENT '成员数量',
  `dksl` int(4) DEFAULT NULL COMMENT '地块数量',
  `htmj` decimal(8,2) DEFAULT NULL COMMENT '合同面积',
  `scmj` decimal(8,2) DEFAULT NULL COMMENT '实测面积',
  `dz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='土地承包明细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_testalex`
--

DROP TABLE IF EXISTS `XEDate_testalex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_testalex` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `test01` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'test01',
  `test02` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'test02',
  `t03` int(10) DEFAULT NULL COMMENT 't03',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='孙雅林学习测试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_tprkcbzz`
--

DROP TABLE IF EXISTS `XEDate_tprkcbzz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_tprkcbzz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `xz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡(镇)',
  `xzc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政村',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jfqk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '缴费情况',
  `zzje` decimal(10,2) DEFAULT NULL COMMENT '资助金额',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='脱贫人口参保资助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_wcwgjtbz`
--

DROP TABLE IF EXISTS `XEDate_wcwgjtbz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_wcwgjtbz` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `xz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡镇',
  `cun` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村',
  `xm` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `rylb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员类别',
  `jyd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业地\n（省/市/县）',
  `jyqymc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业企业名称',
  `lxdh` int(13) DEFAULT NULL COMMENT '联系电话',
  `gsjg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公示结果',
  `yhkh` int(25) DEFAULT NULL COMMENT '银行卡号\n（社保卡或银行卡）',
  `khyh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开户银行',
  `btje` decimal(6,2) DEFAULT NULL COMMENT '补贴金额',
  `bz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='外出务工交通补助';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XEDate_ywbd`
--

DROP TABLE IF EXISTS `XEDate_ywbd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `XEDate_ywbd` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `areaCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域编码',
  `ljyhs` int(5) DEFAULT NULL COMMENT '累计用户数',
  `zrxzyhs` int(5) DEFAULT NULL COMMENT '昨日新增用户数',
  `zrfwcs` int(5) DEFAULT NULL COMMENT '昨日访问次数',
  `zrfwrs` int(5) DEFAULT NULL COMMENT '昨日访问人数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='有问必答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `__EFMigrationsHistory`
--

DROP TABLE IF EXISTS `__EFMigrationsHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProductVersion` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `article_replies`
--

DROP TABLE IF EXISTS `article_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `author_id` bigint(20) unsigned NOT NULL COMMENT '''作者ID''',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '''内容''',
  `upper_id` bigint(20) unsigned DEFAULT NULL COMMENT '''上条留言ID''',
  `type` bigint(20) unsigned NOT NULL COMMENT '''评论类型''',
  `article_id` bigint(20) unsigned DEFAULT NULL,
  `level` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_article_replies_type` (`type`),
  KEY `idx_article_replies_deleted_at` (`deleted_at`),
  KEY `idx_article_replies_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `title` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '''标题''',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '''内容''',
  `type` bigint(20) unsigned NOT NULL COMMENT '''文章类型''',
  `status` tinyint(1) DEFAULT 1,
  `author_id` bigint(20) unsigned NOT NULL COMMENT '''作者ID''',
  `set_top_at` datetime(3) DEFAULT NULL COMMENT '''置顶时间''',
  PRIMARY KEY (`id`),
  KEY `idx_articles_deleted_at` (`deleted_at`),
  KEY `idx_articles_title` (`title`(768)),
  KEY `idx_articles_type` (`type`),
  KEY `idx_articles_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_AreaInfo`
--

DROP TABLE IF EXISTS `dm_AreaInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_AreaInfo` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '父id',
  `areaCode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '行政编码',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `level` int(4) NOT NULL COMMENT '层级，1:省份 2:地市 3:区县 4:乡镇 5:社区/村',
  `allfatherid` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `allfathercode` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_reftabledata`
--

DROP TABLE IF EXISTS `dm_reftabledata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_reftabledata` (
  `type` varchar(20) NOT NULL COMMENT '代码类型',
  `dm` varchar(20) NOT NULL COMMENT '代码',
  `mc` varchar(100) DEFAULT NULL COMMENT '名称',
  `pyzt` varchar(30) DEFAULT NULL COMMENT '拼音字头（输入查询用）',
  `px` int(11) DEFAULT NULL COMMENT '排序',
  `sfyx` varchar(1) DEFAULT '0' COMMENT '是否有效',
  `bz` varchar(80) DEFAULT NULL COMMENT '备注',
  `fathercode` varchar(20) DEFAULT NULL COMMENT '父级代码',
  `sfxs` varchar(1) DEFAULT NULL COMMENT '是否显示',
  `sflr` varchar(1) DEFAULT NULL COMMENT '是否可录入',
  `sfyjd` varchar(1) DEFAULT NULL COMMENT '是否叶子节点',
  `allfathercode` longtext DEFAULT NULL COMMENT '所有的上级父节点集合',
  KEY `index_dm` (`dm`),
  KEY `index_type` (`type`),
  FULLTEXT KEY `index_allfathercode` (`allfathercode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dm_reftabledata_back`
--

DROP TABLE IF EXISTS `dm_reftabledata_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dm_reftabledata_back` (
  `type` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '代码类型',
  `dm` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '代码',
  `mc` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '名称',
  `pyzt` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '拼音字头（输入查询用）',
  `px` int(11) DEFAULT NULL COMMENT '排序',
  `sfyx` varchar(1) CHARACTER SET utf8 DEFAULT '0' COMMENT '是否有效',
  `bz` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `fathercode` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '父级代码',
  `sfxs` varchar(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否显示',
  `sflr` varchar(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否可录入',
  `sfyjd` varchar(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '是否叶子节点',
  `allfathercode` longtext CHARACTER SET utf8 DEFAULT NULL COMMENT '所有的上级父节点集合'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dvsdb30.XEDate_cszbh`
--

DROP TABLE IF EXISTS `dvsdb30.XEDate_cszbh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvsdb30.XEDate_cszbh` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cszbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出生证编号',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='出生证编号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dvssdb30.XEDate_cszbh01`
--

DROP TABLE IF EXISTS `dvssdb30.XEDate_cszbh01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvssdb30.XEDate_cszbh01` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人口id',
  `idCard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有村id',
  `cszbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '出生证编号',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='出生证编号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `md_areamap`
--

DROP TABLE IF EXISTS `md_areamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `md_areamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `areaid` int(11) DEFAULT NULL COMMENT 'areaid',
  `containsid` int(11) DEFAULT NULL COMMENT '包含的下级ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `areamap_areaid` (`areaid`) USING BTREE COMMENT '区域ID添加索引'
) ENGINE=InnoDB AUTO_INCREMENT=74980 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `others`
--

DROP TABLE IF EXISTS `others`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `others` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `key` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_others_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_householdcode`
--

DROP TABLE IF EXISTS `pcs2309_householdcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_householdcode` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'GUID',
  `areaid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所属村id',
  `hbh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户编号，国家平台的编号',
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '外链的户ID',
  `nf` int(11) DEFAULT NULL COMMENT '年份',
  `hzxm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主姓名',
  `hzxb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主性别',
  `hzzjlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主证件类型',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码，存残疾人证',
  `hzidCard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '户主证件号码',
  `hzmz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主民族',
  `hzzzmm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主政治面貌',
  `hlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型',
  `jcdxlx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类型',
  `jtrks` int(11) DEFAULT NULL COMMENT '家庭人口数',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '农户联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `zrcmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自然村',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `unique-hzidCard` (`hzidCard`) USING BTREE,
  KEY `areaid_index` (`areaid`) USING BTREE,
  KEY `hlx_index` (`hlx`) USING BTREE,
  KEY `id_index` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='采集户码表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_jch_bfcs`
--

DROP TABLE IF EXISTS `pcs2309_jch_bfcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_jch_bfcs` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域ID',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `ssqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '实施开发式帮扶措施情况,使用代码表[dm_bfcsqk]',
  `cybf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产业帮扶,使用代码表[100A39]',
  `jybf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '就业帮扶,使用代码表[100A40]',
  `jrbf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '金融帮扶,使用代码表[100A41]',
  `gygwbf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公益岗位帮扶,使用代码表[100A42]',
  `zfaqbz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '住房安全保障,使用代码表[100A50]',
  `ysaqbz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '饮水安全保障,使用代码表[100A51]',
  `jkbf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '健康帮扶,使用代码表[100A45]',
  `ywjybz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '义务教育保障,使用代码表[100A46]',
  `qtjybf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他教育帮扶,使用代码表[100A47]',
  `zhbz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '综合保障,使用代码表[100A48]',
  `shbf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '社会帮扶,使用代码表[100A52]',
  `bq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '搬迁,使用代码表[100A53]',
  `scshtjgs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '生产生活条件改善,使用代码表[100A54]',
  `jcssjs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '基础设施建设,使用代码表[100A55]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_检测户_帮扶措施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_jch_fxxc`
--

DROP TABLE IF EXISTS `pcs2309_jch_fxxc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_jch_fxxc` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '区域ID',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户ID',
  `fxxcfs` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '风险消除方式,使用代码表[dm_fxxcfs]',
  `fxxcsj` datetime DEFAULT NULL COMMENT '风险消除时间',
  `jclxr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测联系人',
  `lxfs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_检测户_风险消除';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_jch_jbxx`
--

DROP TABLE IF EXISTS `pcs2309_jch_jbxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_jch_jbxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户ID',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `jtzz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭住址',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `jzdxfpazq` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '居住在异地扶贫搬迁集中安置区,使用代码表[dm_yesno]',
  `azdq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安置区地址',
  `jcdxlb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '监测对象类别,使用代码表[dm_jcdxlb]',
  `sftph` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否脱贫户,使用代码表[dm_yesno]',
  `sfzhwldnl` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '整户无劳动能力兜底保障户,使用代码表[dm_yesno]',
  `zyfxlx1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '致贫/返贫风险1,使用代码表[100A27]',
  `zyfxlx2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '致贫/返贫风险2,使用代码表[100A27]',
  `zyfxlx3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '致贫/返贫风险3,使用代码表[100A27]',
  `zyfxlx4` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '致贫/返贫风险4,使用代码表[100A27]',
  `zyfxlx5` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '致贫/返贫风险5,使用代码表[100A27]',
  `yzrzh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '因自然灾害子项,使用代码表[100A271]',
  `yzrzhbz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '因自然灾害备注',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `hzqz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手工签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_监测户_基本信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_jch_jtcy`
--

DROP TABLE IF EXISTS `pcs2309_jch_jtcy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_jch_jtcy` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码(残疾人证)',
  `yhzgx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与户主关系,使用代码表[1010]',
  `mz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族,使用代码表[100A09]',
  `zzmm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌,使用代码表[100A10]',
  `whcd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化程度,使用代码表[100A11]',
  `zxsqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '在校生情况,使用代码表[100A12]',
  `jkzk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '健康状况,使用代码表[100A13]',
  `ldjn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '劳动技能,使用代码表[100A14]',
  `wgdd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工地点',
  `wgsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工时长(月)',
  `sfcjjmylbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加居民医疗保险,使用代码表[dm_yesno]',
  `sfcjzgylbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加职工医疗保险,使用代码表[dm_yesno]',
  `sfcjdbbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加大病保险,使用代码表[dm_yesno]',
  `sfcjjmjbylbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加居民基本养老保险,使用代码表[dm_yesno]',
  `sfcjzgjbylbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加职工基本养老保险,使用代码表[dm_yesno]',
  `sfxszdshbz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否享受最低生活保障,使用代码表[dm_yesno]',
  `sftkgyry` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否特困供养人员,使用代码表[dm_yesno]',
  `sfydfpbqrk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否异地扶贫搬迁人口,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_监测户_家庭成员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_jch_sbzhys`
--

DROP TABLE IF EXISTS `pcs2309_jch_sbzhys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_jch_sbzhys` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `lx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理类型,使用代码表[dm_ffp_cllx]',
  `sfzfcxaqwt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否住房出现安全问题,使用代码表[dm_yesno]',
  `sfywjyjdsxcx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否义务教育阶段适龄儿童少年失学缀学,使用代码表[dm_yesno]',
  `sfyscxaqwt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否饮水出现安全问题,使用代码表[dm_yesno]',
  `sfyjtcyfcjbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有家庭成员未参加城乡居民(职工)基本医疗保险,使用代码表[dm_yesno]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_监测户_三保障和饮水安全';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_jch_szqk`
--

DROP TABLE IF EXISTS `pcs2309_jch_szqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_jch_szqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `lx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '处理类型,使用代码表[dm_ffp_cllx]',
  `gzxsr` decimal(10,2) DEFAULT NULL COMMENT '工资性收入(元)',
  `scjyxsr` decimal(10,2) DEFAULT NULL COMMENT '生产经营性收入(元)',
  `ccxsr` decimal(10,2) DEFAULT NULL COMMENT '财产性收入(元)',
  `zyxsr` decimal(10,2) DEFAULT NULL COMMENT '转移性收入(元)',
  `scjyxzc` decimal(10,2) DEFAULT NULL COMMENT '生产经营性支出(元)',
  `jtcsr` decimal(10,2) DEFAULT NULL COMMENT '家庭纯收入(元)',
  `jtrjcsr` decimal(10,2) DEFAULT NULL COMMENT '家庭人均纯收入(元)',
  `jtlpsr` decimal(10,2) DEFAULT NULL COMMENT '家庭理赔收入(元)',
  `hgzfzc` decimal(10,2) DEFAULT NULL COMMENT '合规自付支出(元)',
  `nrjcdxsrckfw` decimal(10,2) DEFAULT NULL COMMENT '纳入监测对象的收入参考范围(元)',
  `nrjcdxrjsrckfw` decimal(10,2) DEFAULT NULL COMMENT '纳入监测对象的人均收入参考范围(元)',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_监测户_收支情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_tph_bfzrr`
--

DROP TABLE IF EXISTS `pcs2309_tph_bfzrr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_tph_bfzrr` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `zzmm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌,使用代码表[100A10]',
  `bfdwmc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '帮扶(选派)单位名称',
  `bfkssj` datetime DEFAULT NULL COMMENT '帮扶开始时间',
  `bfjssj` datetime DEFAULT NULL COMMENT '帮扶结束时间',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_脱贫户_帮扶责任人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_tph_jbxx`
--

DROP TABLE IF EXISTS `pcs2309_tph_jbxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_tph_jbxx` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户ID',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `jtzz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '家庭住址',
  `lxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `hlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户类型,使用代码表[100A03]',
  `jls` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否军烈属,使用代码表[dm_yesno]',
  `tbr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '填表人',
  `tbrlxdh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '填表人联系电话',
  `hzqz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户主签字',
  `tbsj` datetime DEFAULT NULL COMMENT '填表时间',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_脱贫户_户基本信息采集';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_tph_jtcy`
--

DROP TABLE IF EXISTS `pcs2309_tph_jtcy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_tph_jtcy` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `zt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `xb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[dm_gender]',
  `zjlx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件类型,使用代码表[dm_zjlx]',
  `zjhm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '证件号码',
  `yhzgx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与户主关系,使用代码表[1010]',
  `mz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '民族,使用代码表[100A09]',
  `zzmm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '政治面貌,使用代码表[100A10]',
  `whcd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文化程度,使用代码表[100A11]',
  `zxsqk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '在校生情况,使用代码表[100A12]',
  `jkzk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '健康状况,使用代码表[100A13]',
  `ldjn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '劳动技能,使用代码表[100A14]',
  `wgszd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工所在地,使用代码表[]',
  `wgsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工时长(月)',
  `scxyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '失辍学原因,使用代码表[dm_cxyy]',
  `sfcjylbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城乡居民基本养老保险,使用代码表[dm_yesno]',
  `sfcjjbylbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加城乡居民基本医疗保险,使用代码表[dm_yesno]',
  `sfcjdbbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加大病保险,使用代码表[dm_yesno]',
  `sfcjsyylbx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否参加商业补充医疗保险,使用代码表[dm_yesno]',
  `sfjsyljz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否接受医疗救助,使用代码表[dm_yesno]',
  `gygw` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公益岗位,使用代码表[100A42]',
  `pyys` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '聘用月数',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_脱贫户_家庭成员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_tph_scshtj`
--

DROP TABLE IF EXISTS `pcs2309_tph_scshtj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_tph_scshtj` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `gdmj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '耕地面积(亩)',
  `mcdmj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '牧草地面积(亩)',
  `smmj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '水面面积(亩)',
  `ldmj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林地面积(亩)',
  `tghlmj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '退耕还林面积(亩)',
  `lgmj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林果面积(亩)',
  `rhllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '入户路类型,使用代码表[dm_rhllx]',
  `yczgljl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '与村主干路距离(公里)',
  `sfjrnmzyhzzz` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否加入农民专业合作组织,使用代码表[dm_yesno]',
  `wfdj` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '危房等级,使用代码表[xe_wfdj]',
  `zfmj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '住房面积(平方米)',
  `zyrllx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主要燃料类型,使用代码表[dm_rllx]',
  `sfyltqydd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有龙头企业带动,使用代码表[dm_yesno]',
  `sfycyzfdtrdd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否有创业致富带头人带动,使用代码表[dm_yesno]',
  `sftshyd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通生活用电,使用代码表[dm_yesno]',
  `sftgbds` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '是否通广播电视,使用代码表[dm_yesno]',
  `dhcybflx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '到户产业帮扶类型,使用代码表[dm_dhcybflx]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_脱贫户_生产生活条件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_tph_srqk`
--

DROP TABLE IF EXISTS `pcs2309_tph_srqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_tph_srqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '户id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `nzsr` decimal(10,2) DEFAULT NULL COMMENT '年总收入',
  `ncsr` decimal(10,2) DEFAULT NULL COMMENT '年纯收入',
  `rjcsr` decimal(10,2) DEFAULT NULL COMMENT '人均纯收入',
  `lpsr` decimal(10,2) DEFAULT NULL COMMENT '其他理赔收入',
  `hgzfzc` decimal(10,2) DEFAULT NULL COMMENT '其他合规自负支出',
  `zsrckfw` decimal(10,2) DEFAULT NULL COMMENT '纳入易返贫致贫户的收入参考范围',
  `rjsrckfw` decimal(10,2) DEFAULT NULL COMMENT '纳入易返贫致贫户的人均收入参考范围',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  `a` decimal(10,2) DEFAULT NULL COMMENT '工资性收入合计',
  `a1` decimal(10,2) DEFAULT NULL COMMENT '务工收入',
  `a1r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '务工收入说明',
  `a2` decimal(10,2) DEFAULT NULL COMMENT '行业部门公益岗收入',
  `a2r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行业部门公益岗收入说明',
  `a3` decimal(10,2) DEFAULT NULL COMMENT '乡镇公益岗收入',
  `a3r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '乡镇公益岗收入说明',
  `a4` decimal(10,2) DEFAULT NULL COMMENT '村级公益岗收入',
  `a4r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '村级公益岗收入说明',
  `a5` decimal(10,2) DEFAULT NULL COMMENT '自主采摘收入',
  `a5r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '自主采摘收入说明',
  `b` decimal(10,2) DEFAULT NULL COMMENT '生产经营性收入合计',
  `b1` decimal(10,2) DEFAULT NULL COMMENT '种植业收入',
  `b1r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '种植业说明',
  `b2` decimal(10,2) DEFAULT NULL COMMENT '养殖业收入',
  `b2r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '养殖业说明',
  `b3` decimal(10,2) DEFAULT NULL COMMENT '林果业收入',
  `b3r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林果业说明',
  `b4` decimal(10,2) DEFAULT NULL COMMENT '其他生产经营性收入',
  `b4r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他生产经营性收入说明',
  `c` decimal(10,2) DEFAULT NULL COMMENT '财产性收入',
  `c1` decimal(10,2) DEFAULT NULL COMMENT '资产收益扶贫分红收入',
  `c2` decimal(10,2) DEFAULT NULL COMMENT '土地流转收入',
  `c2r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '土地流转收入说明',
  `c3` decimal(10,2) DEFAULT NULL COMMENT '金融贷款项目',
  `c3r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '金融贷款项目说明',
  `c4` decimal(10,2) DEFAULT NULL COMMENT '代种代养项目收入',
  `c4r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代种代养项目收入说明',
  `c5` decimal(10,2) DEFAULT NULL COMMENT '其他财产性收入',
  `c5r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他财产性收入说明',
  `d` decimal(10,2) DEFAULT NULL COMMENT '转移性收入',
  `d1` decimal(10,2) DEFAULT NULL COMMENT '计划生育金',
  `d2` decimal(10,2) DEFAULT NULL COMMENT '低保金',
  `d3` decimal(10,2) DEFAULT NULL COMMENT '特困供养金',
  `d4` decimal(10,2) DEFAULT NULL COMMENT '养老保险金',
  `d5` decimal(10,2) DEFAULT NULL COMMENT '生态补偿金小计',
  `d5a` decimal(10,2) DEFAULT NULL COMMENT '退耕还林补贴',
  `d5b` decimal(10,2) DEFAULT NULL COMMENT '公益林补贴',
  `d5c` decimal(10,2) DEFAULT NULL COMMENT '草原生态奖补贴',
  `d5d` decimal(10,2) DEFAULT NULL COMMENT '移民补助',
  `d5e` decimal(10,2) DEFAULT NULL COMMENT '其他生态补偿金',
  `d6` decimal(10,2) DEFAULT NULL COMMENT '其他转移性收入小计',
  `d6a` decimal(10,2) DEFAULT NULL COMMENT '玉米大豆种植补贴',
  `d6b` decimal(10,2) DEFAULT NULL COMMENT '地力补贴',
  `d6c` decimal(10,2) DEFAULT NULL COMMENT '大田保险补助',
  `d6d` decimal(10,2) DEFAULT NULL COMMENT '高龄补贴',
  `d6e` decimal(10,2) DEFAULT NULL COMMENT '优抚金',
  `d6f` decimal(10,2) DEFAULT NULL COMMENT '残疾补贴',
  `d6g` decimal(10,2) DEFAULT NULL COMMENT '教育扶持',
  `d6h` decimal(10,2) DEFAULT NULL COMMENT '救灾款',
  `d6i` decimal(10,2) DEFAULT NULL COMMENT '失能老人补贴',
  `d6j` decimal(10,2) DEFAULT NULL COMMENT '赡养费',
  `d6k` decimal(10,2) DEFAULT NULL COMMENT '取暖费补贴(低保五保)',
  `d6l` decimal(10,2) DEFAULT NULL COMMENT '物价补贴(低保五保)',
  `d6m` decimal(10,2) DEFAULT NULL COMMENT '社会救济和补助',
  `d6n` decimal(10,2) DEFAULT NULL COMMENT '防贫保险',
  `d6o` decimal(10,2) DEFAULT NULL COMMENT '经常性捐赠和赔偿',
  `d6p` decimal(10,2) DEFAULT NULL COMMENT '其他收入',
  `e` decimal(10,2) DEFAULT NULL COMMENT '生产经营性支出',
  `e1` decimal(10,2) DEFAULT NULL COMMENT '种植业支出',
  `e1r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '种植业支出说明',
  `e2` decimal(10,2) DEFAULT NULL COMMENT '养殖业支出',
  `e2r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '养殖业支出说明',
  `e3` decimal(10,2) DEFAULT NULL COMMENT '林果业支出',
  `e3r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '林果业支出说明',
  `e4` decimal(10,2) DEFAULT NULL COMMENT '其他生产经营性支出',
  `e4r` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他支出说明',
  `d6pr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '其他转移性收入说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_脱贫户_收入情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pcs2309_tph_wjyqk`
--

DROP TABLE IF EXISTS `pcs2309_tph_wjyqk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_tph_wjyqk` (
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areaid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行政区域id',
  `hid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '户id',
  `pid` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '人员id',
  `nf` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '年度',
  `xm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `wjyyy` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '大专或本科应届毕业生未就业原因,使用代码表[dm_wjyyy]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='2023年防返贫摸排_脱贫户_毕业生未就业情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL,
  `a` varchar(10) DEFAULT NULL,
  `b` varchar(20) DEFAULT NULL,
  `c` varchar(10) DEFAULT NULL,
  `d` varchar(255) DEFAULT NULL,
  `e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `abc` (`a`,`b`,`c`) USING BTREE,
  KEY `d` (`d`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_input`
--

DROP TABLE IF EXISTS `test_input`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_input` (
  `picture` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '照片',
  `video` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '拍摄的视频',
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所在位置',
  `ls` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新测试一级,使用代码表[]',
  `ls2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '新测试二级,使用代码表[]',
  `je` int(8) DEFAULT NULL COMMENT '金额',
  `qm` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签名',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='测试用的录入模型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_phone`
--

DROP TABLE IF EXISTS `test_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_phone` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别,使用代码表[]',
  `system` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机系统,使用代码表[]',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '版本号,使用代码表[]',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='测试用户手机型号';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_px`
--

DROP TABLE IF EXISTS `test_px`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_px` (
  `id` varchar(50) NOT NULL,
  `areaid` varchar(50) DEFAULT NULL COMMENT '行政区域id',
  `pid` varchar(255) DEFAULT NULL COMMENT '人员id',
  `idCard` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `xm` varchar(255) DEFAULT NULL COMMENT '姓名',
  `nf` varchar(255) DEFAULT NULL COMMENT '年份',
  `gzszd` varchar(255) DEFAULT NULL COMMENT '工作所在地',
  `xxdz` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `cshy` varchar(50) DEFAULT NULL COMMENT '从事行业,使用代码表[4010]',
  `ssgz` varchar(50) DEFAULT NULL COMMENT '所属工种,使用代码表[testdm_ssgz]',
  `bz` varchar(255) DEFAULT NULL COMMENT '备注',
  `mr2` varchar(50) DEFAULT NULL COMMENT 'adfadf,使用代码表[]',
  `ms2` varchar(50) DEFAULT NULL COMMENT '22223333,使用代码表[]',
  `cc1` varchar(255) DEFAULT NULL COMMENT 'cc2',
  `createby` varchar(50) DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='培训录入模型使用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_sync_inpt`
--

DROP TABLE IF EXISTS `test_sync_inpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_sync_inpt` (
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段一',
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段二',
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段三',
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '字段四',
  `CS5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '测试五',
  `rs` int(8) DEFAULT NULL COMMENT '人数',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gs` int(8) DEFAULT NULL COMMENT '个数',
  `qm` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '签名',
  `sz1` int(12) DEFAULT NULL COMMENT '数据一',
  `sj2` int(12) DEFAULT NULL COMMENT '数据二',
  `lx2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '测试类型二,使用代码表[1011]',
  `lx` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '测试类型,使用代码表[test_dm_inputmodel]',
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='测试同步定义用的模型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_user_phone`
--

DROP TABLE IF EXISTS `test_user_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_user_phone` (
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学校',
  `id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='guan测试请勿使用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tv_test`
--

DROP TABLE IF EXISTS `tv_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_test` (
  `ss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ss',
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '创建人',
  `updateby` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '修改人',
  `createtime` datetime DEFAULT current_timestamp() COMMENT '记录创建时间',
  `updatetime` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '记录最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='周二测试';
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2023-10-11 20:47:10
