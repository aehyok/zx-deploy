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
  `type` int(11) DEFAULT 1 COMMENT '类型，默认为1第一次采集，2为202305第二次户采集',
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-26 16:41:33
