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
-- Table structure for table `pcs2309_householdcode`
--

DROP TABLE IF EXISTS `pcs2309_householdcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcs2309_householdcode` (
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-10 10:39:04
