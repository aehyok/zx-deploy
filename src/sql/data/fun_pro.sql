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
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'dvsdb30'
--
/*!50003 DROP FUNCTION IF EXISTS `DCLNFun_CheckInputStatus` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `DCLNFun_CheckInputStatus`(`strmodelname` varchar(50),`strareaid` varchar(50)) RETURNS int(11)
BEGIN
  DECLARE retdata integer;
  select count(id) INTO retdata from CollectDataSummary where nf=year(now()) and areaid=strareaid and name=strmodelname and needreport=0;
  RETURN retdata;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_CONCATdw` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_CONCATdw`(cylx varchar(50), type int) RETURNS varchar(2000) CHARSET utf8
begin
    declare retdata varchar(2000);
    if(type = 1) then
        select GROUP_CONCAT(d.cldw SEPARATOR '/') into retdata from (SELECT d.cldw from XEData_sycy d where d.cylx = cylx GROUP BY d.cldw) d;
    else
        select GROUP_CONCAT(d.mjdw SEPARATOR '/') into retdata from (SELECT d.mjdw from XEData_sycy d where d.cylx = cylx GROUP BY d.mjdw) d;
    end if;
    return retdata;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getareaids` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getareaids`(areaId varchar(40)) RETURNS longtext CHARSET utf8
BEGIN
  
	declare ids LONGTEXT DEFAULT '';
	declare tempids varchar(4000);	

	SET tempids= areaId;
	while tempids is not null do
		set ids = CONCAT(ids,',',tempids);
		select  GROUP_CONCAT(id) into tempids from BasicArea where FIND_IN_SET(pid,tempids) >0 ;
	end while;

   
  RETURN   right(ids, length(ids)-1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getchildren` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getchildren`(strdmb varchar(40),strcode varchar(40)) RETURNS longtext CHARSET utf8
BEGIN
  
	declare ids LONGTEXT DEFAULT '';
	declare tempids varchar(4000);	

	SET tempids= strcode;
	while tempids is not null do
		set ids = CONCAT_WS(',',ids,tempids);
		select GROUP_CONCAT(DM) into tempids from dm_reftabledata where FIND_IN_SET(FATHERCODE,tempids) >0 and type=strdmb;
	end while;

	RETURN ids;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getct` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getct`(strcode varchar(200),strdmb varchar(200)) RETURNS varchar(2000) CHARSET utf8
BEGIN
  
	declare retdata varchar(2000) ;
  
  select mc into retdata from dm_reftabledata where dm=strcode and type=strdmb	;
   
  RETURN retdata;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getct_m` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getct_m`(strcode varchar(200),strdmb varchar(200)) RETURNS varchar(2000) CHARSET utf8
BEGIN
  
	declare retdata varchar(2000) ;
  
  select GROUP_CONCAT(mc) into retdata from dm_reftabledata where FIND_IN_SET(dm,strcode) and type=strdmb	;
   
  RETURN retdata;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getdm` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getdm`(strct varchar(200),strdmb varchar(200)) RETURNS varchar(2000) CHARSET utf8
BEGIN
  
	declare retdata varchar(2000) ;
  
  select dm into retdata from dm_reftabledata where mc=strct and type=strdmb limit 1	;
   
  RETURN retdata;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getdwbyid` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getdwbyid`(dwid int) RETURNS varchar(200) CHARSET utf8
BEGIN
	
	declare retdata varchar(200);
	
	select BasicArea.`name` into retdata from BasicArea where id=dwid;
	
	RETURN retdata;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getSexByIdCard` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getSexByIdCard`(`idcard` varchar(50)) RETURNS varchar(10) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
BEGIN
	IF length(idcard)<>'18' THEN
			     return '位数不对';
	END IF;

  set @mod = mod(substr(idcard,17,1),2);
	
	if (@mod=1) then 
	   return '男';
	else
	   RETURN '女';
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_getweekday_cn` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_getweekday_cn`(`curdate` date) RETURNS varchar(40) CHARSET utf8
BEGIN
	
	declare ret varchar(40);
	declare val int;
	select WEEKDAY(curdate) into val;
	
	CASE val
	WHEN 0 then set ret= '星期一';
	WHEN 1 then set ret= '星期二';
	WHEN 2 then set ret= '星期三';
	WHEN 3 then set ret= '星期四';
	WHEN 4 then set ret= '星期五';
	WHEN 5 then set ret= '星期六';
	WHEN 6 then set ret= '星期日';
	ELSE set ret= '';
	END CASE;
	
	return ret;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_IdCardVerify` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_IdCardVerify`(`idcard` varchar(50)) RETURNS varchar(200) CHARSET utf8mb4 COLLATE utf8mb4_bin
BEGIN        			
        declare idflag varchar(10);
        
				# 判断身份证号码是否为18位
        IF length(idcard)<>'18' THEN
			     return '身份证号码位数不对';
			  END IF;
				
        /*判断身份证号码前17位是否含除数字外的字符*/
				select 1 into idflag from dual where substr(idcard,1,17) regexp '^[0-9]+$';
				if (idflag is null) THEN
				  return	'身份证号码前17位格式不正确';
        END IF;
				
				if BINARY substr(idcard,18,1)='x' THEN
				   return '不可使用小写x';
			  END IF;
      
        /*判断身份证的年份是否在合理范围内*/
        IF substr(idcard,7,4) not between '1900' and '2022' THEN
			      return	'身份证年份错误';
				END IF;

        /*判断身份证的月份是否在合理范围内*/
        IF substr(idcard,11,2) not between '01' and '12' THEN
			      return	'身份证月份错误';
						END IF;

        /*判断身份证日期是否在合理范围内*/
				SET @monthenddate=  STR_TO_DATE(char(substr(idcard,7,4)||'-'||substr(idcard,11,2)||'-01',10),'yyyy-mm-dd');
				SET @i=1;
				
				SET @monthenddate2 = DATE_ADD(@monthenddate,INTERVAL 1 MONTH);
				
				SET @monthenddate3= DAY(DATE_SUB(@monthenddate2, INTERVAL 1 DAY));
				
				
        if substr(idcard,13,2) not between 1 and @monthenddate3 THEN
				     return '身份证日期错误';
						 END IF;

        /*判断身份证号码的第18位是否符合验证规则*/
        SET @moddata = mod(( 

                substr(idcard,1,1)*7+ 
                substr(idcard,2,1)*9+ 
                substr(idcard,3,1)*10+ 
                substr(idcard,4,1)*5+ 
                substr(idcard,5,1)*8+ 
                substr(idcard,6,1)*4+ 
                substr(idcard,7,1)*2+ 
                substr(idcard,8,1)*1+ 
                substr(idcard,9,1)*6+ 
                substr(idcard,10,1)*3+ 
                substr(idcard,11,1)*7+ 
                substr(idcard,12,1)*9+ 
                substr(idcard,13,1)*10+ 
                substr(idcard,14,1)*5+ 
                substr(idcard,15,1)*8+ 
                substr(idcard,16,1)*4+ 
                substr(idcard,17,1)*2 

            ),11);
				 
				  SET @idflag = substr(idcard,18,1);
					
				  if @idflag ='1' and @moddata<>'0' THEN 
						  return '身份证验证错误';
					end if;
					
					if @idflag ='0' and @moddata<>'1' THEN 
					    return '身份证验证错误';
					end if;
					
					if @idflag ='X' and @moddata<>'2' then
				      return '身份证验证错误';
					end if;
					
					if @idflag ='9' and @moddata<>'3' then 
					    return '身份证验证错误';
					end if;
					
					if @idflag ='8' and @moddata<>'4' then 
					     return '身份证验证错误';
					end if;
					
					if @idflag ='7' and @moddata<>'5' then 
					     return '身份证验证错误';
					end if;
					
					if @idflag ='6' and @moddata<>'6' then 
					    return '身份证验证错误';
					end if;
					
					if @idflag ='5' and @moddata<>'7' then 
					    return '身份证验证错误';
					end if;
					
					if @idflag ='4' and @moddata<>'8' then 
					    return '身份证验证错误';
					end if;
					
					if @idflag='3' and @moddata<>'9' then 
					   return '身份证验证错误';
					end if;
					
					if @idflag='2' and @moddata<>'10' then 
					   return '身份证验证错误';
					end if;

        #return CONCAT('有效，idflag=',@idflag,',mod=',@moddata);
				return '有效';

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_IdCardVerify2` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_IdCardVerify2`(`idcard` varchar(200)) RETURNS int(11)
BEGIN
	#Routine body goes here...
   IF length(idcard)<>'18' THEN
			     return 0;
	 END IF;
	 
	 IF idcard not regexp '^[1-9][[:digit:]]{7}((0[[:digit:]])|(1[0-2]))(([0|1|2][[:digit:]])|3[0-1])[[:digit:]]{3}$|^[1-9][[:digit:]]{5}[1-9][[:digit:]]{3}((0[[:digit:]])|(1[0-2]))(([0|1|2][[:digit:]])|3[0-1])[[:digit:]]{3}([0-9]|X)$' THEN
			return 0 ;	
   END IF;
	 
	 /*判断身份证号码的第18位是否符合验证规则*/
    SET @moddata = mod(( 

                substr(idcard,1,1)*7+ 
                substr(idcard,2,1)*9+ 
                substr(idcard,3,1)*10+ 
                substr(idcard,4,1)*5+ 
                substr(idcard,5,1)*8+ 
                substr(idcard,6,1)*4+ 
                substr(idcard,7,1)*2+ 
                substr(idcard,8,1)*1+ 
                substr(idcard,9,1)*6+ 
                substr(idcard,10,1)*3+ 
                substr(idcard,11,1)*7+ 
                substr(idcard,12,1)*9+ 
                substr(idcard,13,1)*10+ 
                substr(idcard,14,1)*5+ 
                substr(idcard,15,1)*8+ 
                substr(idcard,16,1)*4+ 
                substr(idcard,17,1)*2 

            ),11);
				 
				  SET @idflag = substr(idcard,18,1);
					
				  if @idflag ='1' and @moddata<>'0' THEN 
						  return 0;
					end if;
					
					if @idflag ='0' and @moddata<>'1' THEN 
					    return 0;
					end if;
					
					if @idflag ='X' and @moddata<>'2' then
				      return 0;
					end if;
					
					if @idflag ='9' and @moddata<>'3' then 
					    return 0;
					end if;
					
					if @idflag ='8' and @moddata<>'4' then 
					     return 0;
					end if;
					
					if @idflag ='7' and @moddata<>'5' then 
					     return 0;
					end if;
					
					if @idflag ='6' and @moddata<>'6' then 
					    return 0;
					end if;
					
					if @idflag ='5' and @moddata<>'7' then 
					    return 0;
					end if;
					
					if @idflag ='4' and @moddata<>'8' then 
					    return 0;
					end if;
					
					if @idflag='3' and @moddata<>'9' then 
					   return 0;
					end if;
					
					if @idflag='2' and @moddata<>'10' then 
					   return 0;
					end if;

	RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdfun_PhoneNumVerify` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdfun_PhoneNumVerify`(phonenum varchar(50),len int) RETURNS varchar(200) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
BEGIN
  DECLARE numflag int;
	# 判断电话号码是否超过长度
	IF phonenum is null or phonenum='' THEN
	   RETURN '电话号码为空';
  END IF;
	
	IF LENGTH(phonenum)>len THEN
	   RETURN '电话号码超长';
  END IF;
	
	/*判断号码是否含除数字外的字符*/
	select 1 into numflag from dual where phonenum regexp '^[0-9]+$';
	IF (numflag is null) THEN
	   return '号码必须全部为数字';
	END IF;
	
	RETURN '有效';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `mdinput_CaculateGovfund` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `mdinput_CaculateGovfund`(pfundid varchar(50)) RETURNS decimal(10,4)
BEGIN
	
	DECLARE caculatevalue decimal(10,4);
  select ifnull(sum(financial+socialfunds),0) into caculatevalue from GovProjectFundsDetail where fundid=pfundid;
	RETURN caculatevalue;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP FUNCTION IF EXISTS `test001` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `test001`(strct varchar(200)) RETURNS int(11)
BEGIN 
  RETURN 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dd` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `dd`()
BEGIN
DECLARE nameCursor CURSOR
FOR
   select tbx.* from (
   select vc.populationid,vp.realname , vc.isHouseholder, vp.birthday , (select count(id) from VillageVaccination vv where vv.populationid = vp.id and vv.isdeleted=0 and vv.numberStitch = 1) as vaccinated_first,  (select count(id) from VillageVaccination vv where vv.populationid = vp.id and vv.isdeleted=0 and vv.numberStitch = 2) as vaccinated_second, (select count(id) from VillageVaccination vv where vv.populationid = vp.id and vv.isdeleted=0 and vv.numberStitch = 3) as vaccinated_third from VillagePopulation vp, VillageHouseCodeMember vc   where   vc.populationid = vp.id and vc.householdid = 43 and vp.isdeleted=0 and vc.isdeleted=0 
    ) tbx  order by isHouseholder desc, birthday asc limit 0,100 ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `dvs_reset_area_data` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `dvs_reset_area_data`(IN   in_areaId int)
BEGIN
UPDATE FFPMatrix set isDeleted=1 where id in(select distinct(matrixId)  from FFPMatrixHousehold  where householdId in (select id from VillageHouseholdCode where areaId=in_areaId));
UPDATE VillagePopulationAddress set isDeleted=1 where populationId in(select id from VillagePopulation where areaId=in_areaId) and (type=1 or type=2);
UPDATE VillagePopulationAddress set isDeleted=1 where populationId in(select id from FFPHouseholdCode where householdId in (select id from  VillageHouseholdCode where areaId=in_areaId)) and type=7;
UPDATE FFPPopulation set isDeleted=1  where populationId in (select id from VillagePopulation where areaId=in_areaId);
UPDATE VillagePopulation set isDeleted=1 where id in (select populationId from VillageHouseCodeMember where householdId in(select id from VillageHouseholdCode where areaId=in_areaId));
UPDATE VillageHouseCodeMember  set isDeleted=1 where householdId in(select id from VillageHouseholdCode where areaId=in_areaId);
UPDATE FFPMatrixHousehold set isDeleted=1 where householdId in (select id from VillageHouseholdCode where areaId=in_areaId);
UPDATE FFPHouseholdExtraInfo set isDeleted=1 where  householdId in (select id from VillageHouseholdCode where areaId=in_areaId);
UPDATE FFPHouseholdCode set isDeleted=1 where householdId in(select id from VillageHouseholdCode where areaId=in_areaId);
UPDATE VillageHouseholdCode set isDeleted=1 WHERE areaId=in_areaId;
UPDATE VillageHouseName set isDeleted=1 where areaId=in_areaId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `ffpfun_calculateincome_2309` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ffpfun_calculateincome_2309`(in p_hid varchar(200) CHARSET utf8)
BEGIN

  #定义一个变量用于计录户总人数
  DECLARE d_zrs INTEGER DEFAULT 0;	
	#定义一个变量用于计录户类型
	DECLARE d_hlx VARCHAR(255);	
  #定义一个错误的变量,类型是整形，默认是0
  DECLARE t_error INTEGER DEFAULT 0;
  #捕获到sql的错误，就设置t_error为1
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
		
  #开启事务
  START TRANSACTION;	
	
	# 取此户的总人数...	
	select IFNULL(jtrks,1),hlx into d_zrs,d_hlx from pcs2309_householdcode where id=p_hid ;
	
	# 为保证算人均时不出错，如果户总人口数小于1，则改为1
	IF d_zrs<1 THEN
	   SET d_zrs=1;
  END IF;
	
	# 计算收入情况
	# 1.计算D5,D6
	update pcs2309_tph_srqk t set t.D5 = IFNULL(t.D5a,0)+IFNULL(t.D5b,0)+IFNULL(t.D5c,0)+IFNULL(t.D5d,0)+IFNULL(t.D5e,0),
															  t.D6 = IFNULL(t.D6a,0)+IFNULL(t.D6b,0)+IFNULL(t.D6c,0)+IFNULL(t.D6d,0)+IFNULL(t.D6e,0)
																      +IFNULL(t.D6f,0)+IFNULL(t.D6g,0)+IFNULL(t.D6h,0)+IFNULL(t.D6i,0)+IFNULL(t.D6j,0)
																			+IFNULL(t.D6k,0)+IFNULL(t.D6l,0)+IFNULL(t.D6m,0)+IFNULL(t.D6n,0)+IFNULL(t.D6o,0)+IFNULL(t.D6p,0)
														where t.hid=p_hid and t.nf='202309';
																
	# 2.计算各项收入和支出大项
	update pcs2309_tph_srqk t set t.A=IFNULL(t.A1,0)+IFNULL(t.A2,0)+IFNULL(t.A3,0)+IFNULL(t.A4,0)+IFNULL(t.A5,0), 
	                              t.B=IFNULL(t.B1,0)+IFNULL(t.B2,0)+IFNULL(t.B3,0)+IFNULL(t.B4,0), 
																t.C=IFNULL(t.C1,0)+IFNULL(t.C2,0)+IFNULL(t.C3,0)+IFNULL(t.C4,0)+IFNULL(t.C5,0),
																t.D=IFNULL(t.D1,0)+IFNULL(t.D2,0)+IFNULL(t.D3,0)+IFNULL(t.D4,0)+IFNULL(t.D5,0)+IFNULL(t.D6,0),
																t.E=IFNULL(t.E1,0)+IFNULL(t.E2,0)+IFNULL(t.E3,0)+IFNULL(t.E4,0)
														where t.hid=p_hid and t.nf='202309';
	
	# 3.计算总计
	update pcs2309_tph_srqk t set t.nzsr = IFNULL(t.A,0)+IFNULL(t.B,0)+IFNULL(t.C,0)+IFNULL(t.D,0),
															  t.ncsr = IFNULL(t.A,0)+IFNULL(t.B,0)+IFNULL(t.C,0)+IFNULL(t.D,0) - IFNULL(t.E,0),
																t.rjcsr = (IFNULL(t.A,0)+IFNULL(t.B,0)+IFNULL(t.C,0)+IFNULL(t.D,0) - IFNULL(t.E,0)) /d_zrs																
																where t.hid=p_hid and t.nf='202309';
										
	# 4.如果是监测户，计算纳入监测收入范围
	IF d_hlx='100B02002' THEN
		 update pcs2309_tph_srqk t set t.zsrckfw = IFNULL(t.ncsr,0) + IFNULL(t.lpsr,0) - IFNULL(t.hgzfzc,0),
																	 t.rjsrckfw = (IFNULL(t.ncsr,0) + IFNULL(t.lpsr,0) - IFNULL(t.hgzfzc,0)) /d_zrs
																where t.hid=p_hid and t.nf='202309';
	END IF;
	

  #如果捕获到错误
    IF t_error=1 THEN
        #回滚
        ROLLBACK;
    ELSE
        #提交
        COMMIT;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ffpfun_calculateincome_2310` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `ffpfun_calculateincome_2310`(in p_hid varchar(200) CHARSET utf8, OUT p_result int)
BEGIN

  #定义一个变量用于计录户总人数
  DECLARE d_zrs INTEGER DEFAULT 0;	
	#定义一个变量用于计录户类型
	DECLARE d_hlx VARCHAR(255);	
  #定义一个错误的变量,类型是整形，默认是0
  DECLARE t_error INTEGER DEFAULT 0;
  #捕获到sql的错误，就设置t_error为1
  DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;
		
  #开启事务
  START TRANSACTION;	
	
	# 取此户的总人数...	
	select IFNULL(jtrks,1),hlx into d_zrs,d_hlx from pcs2309_householdcode where id=p_hid ;
	
	# 为保证算人均时不出错，如果户总人口数小于1，则改为1
	IF d_zrs<1 THEN
	   SET d_zrs=1;
  END IF;
	
	# 计算收入情况
	# 1.计算D5,D6
	update pcs2309_tph_srqk t set t.D5 = IFNULL(t.D5a,0)+IFNULL(t.D5b,0)+IFNULL(t.D5c,0)+IFNULL(t.D5d,0)+IFNULL(t.D5e,0),
															  t.D6 = IFNULL(t.D6a,0)+IFNULL(t.D6b,0)+IFNULL(t.D6c,0)+IFNULL(t.D6d,0)+IFNULL(t.D6e,0)
																      +IFNULL(t.D6f,0)+IFNULL(t.D6g,0)+IFNULL(t.D6h,0)+IFNULL(t.D6i,0)+IFNULL(t.D6j,0)
																			+IFNULL(t.D6k,0)+IFNULL(t.D6l,0)+IFNULL(t.D6m,0)+IFNULL(t.D6n,0)+IFNULL(t.D6o,0)+IFNULL(t.D6p,0)
														where t.hid=p_hid and t.nf='202309';
																
	# 2.计算各项收入和支出大项
	update pcs2309_tph_srqk t set t.A=IFNULL(t.A1,0)+IFNULL(t.A2,0)+IFNULL(t.A3,0)+IFNULL(t.A4,0)+IFNULL(t.A5,0), 
	                              t.B=IFNULL(t.B1,0)+IFNULL(t.B2,0)+IFNULL(t.B3,0)+IFNULL(t.B4,0), 
																t.C=IFNULL(t.C1,0)+IFNULL(t.C2,0)+IFNULL(t.C3,0)+IFNULL(t.C4,0)+IFNULL(t.C5,0),
																t.D=IFNULL(t.D1,0)+IFNULL(t.D2,0)+IFNULL(t.D3,0)+IFNULL(t.D4,0)+IFNULL(t.D5,0)+IFNULL(t.D6,0),
																t.E=IFNULL(t.E1,0)+IFNULL(t.E2,0)+IFNULL(t.E3,0)+IFNULL(t.E4,0)
														where t.hid=p_hid and t.nf='202309';
	
	# 3.计算总计
	update pcs2309_tph_srqk t set t.nzsr = IFNULL(t.A,0)+IFNULL(t.B,0)+IFNULL(t.C,0)+IFNULL(t.D,0),
															  t.ncsr = IFNULL(t.A,0)+IFNULL(t.B,0)+IFNULL(t.C,0)+IFNULL(t.D,0) - IFNULL(t.E,0),
																t.rjcsr = (IFNULL(t.A,0)+IFNULL(t.B,0)+IFNULL(t.C,0)+IFNULL(t.D,0) - IFNULL(t.E,0)) /d_zrs																
																where t.hid=p_hid and t.nf='202309';
										
	# 4.如果是监测户，计算纳入监测收入范围
	IF d_hlx='100B02002' THEN
		 update pcs2309_tph_srqk t set t.zsrckfw = IFNULL(t.ncsr,0) + IFNULL(t.lpsr,0) - IFNULL(t.hgzfzc,0),
																	 t.rjsrckfw = (IFNULL(t.ncsr,0) + IFNULL(t.lpsr,0) - IFNULL(t.hgzfzc,0)) /d_zrs
																where t.hid=p_hid and t.nf='202309';
	END IF;
	

  #如果捕获到错误
    IF t_error=1 THEN
        #回滚
        ROLLBACK;
				SET p_result=0;
    ELSE
        #提交
        COMMIT;
				SET p_result=1;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_AreaMap` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_AreaMap`()
BEGIN
	
	DECLARE data_len INT DEFAULT 0;
	DECLARE data_index INT DEFAULT 0;
	DECLARE data_root INT DEFAULT 0;
	
	DECLARE ids LONGTEXT DEFAULT '';
	DECLARE tempids LONGTEXT DEFAULT '';
	
	TRUNCATE TABLE md_areamap;
	
	SELECT COUNT(0) INTO data_len FROM BasicArea;
	
	WHILE data_index < data_len DO
	
		SELECT a.id INTO data_root FROM BasicArea a ORDER BY a.id ASC LIMIT data_index,1;
		
		SET tempids = data_root;
		SET ids = '';
		
		WHILE tempids IS NOT NULL DO
			SET ids = CONCAT_WS(',',ids,tempids);
			SELECT GROUP_CONCAT(id) INTO tempids FROM BasicArea WHERE FIND_IN_SET(pid,tempids) > 0;
		END WHILE;
		
		SET ids = SUBSTR(ids,2);
		
		INSERT INTO md_areamap(areaid,containsid) 
		SELECT data_root,SUBSTRING_INDEX(SUBSTRING_INDEX(ids,',',help_topic_id+1),',',-1) as containsid
		FROM mysql.help_topic 
		WHERE help_topic_id < LENGTH(ids)-LENGTH(REPLACE(ids,',',''))+1;
		
		SET data_index = data_index + 1;
		
	END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_dm_AreaInfo` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_dm_AreaInfo`()
BEGIN
	#清空表
  TRUNCATE TABLE   dm_AreaInfo;
	
	#插入初始值
	insert into dm_AreaInfo  select id,pid,areaCode,name,level,null,null from BasicArea;
	update dm_AreaInfo set allfatherid=null, allfathercode=null;
	
	#1.处理省级
	update dm_AreaInfo set allfatherid=id,allfathercode = areaCode where level=1;
	
	#2.处理市级
	update dm_AreaInfo set allfatherid=ifnull(CONCAT(id,',',pid),id) where level=2;
  update dm_AreaInfo a set a.allfathercode=
        ( select allfathercode from
          (select id,allfathercode from dm_AreaInfo  ) t   
            where t.id=a.pid
         )
  where a.level=2;
	update dm_AreaInfo a set a.allfathercode=ifnull(CONCAT(areaCode,',',allfathercode),areaCode) where a.level=2;
	
	#3. 处理县级
	update dm_AreaInfo a set a.allfatherid=
        ( select allfatherid from
          (select id,allfatherid from dm_AreaInfo  ) t   
            where t.id=a.pid
         )
  where a.level=3;
 
	update dm_AreaInfo a set a.allfathercode=
        ( select allfathercode from
          (select id,allfathercode from dm_AreaInfo  ) t   
            where t.id=a.pid
         )
  where a.level=3;

  update dm_AreaInfo a set a.allfatherid= ifnull(CONCAT(id,',',allfatherid),id) , a.allfathercode=ifnull(CONCAT(areaCode,',',allfathercode),areaCode) where a.level=3;
	
	#4.处理镇级
  update dm_AreaInfo a set a.allfatherid=
        ( select allfatherid from
          (select id,allfatherid from dm_AreaInfo  ) t   
            where t.id=a.pid
         )
  where a.level=4;
 
	update dm_AreaInfo a set a.allfathercode=
        ( select allfathercode from
          (select id,allfathercode from dm_AreaInfo  ) t   
            where t.id=a.pid
         )
  where a.level=4;

  update dm_AreaInfo a set a.allfatherid= ifnull(CONCAT(id,',',allfatherid),id) , a.allfathercode=ifnull(CONCAT(areaCode,',',allfathercode),areaCode) where a.level=4;
	
	#5.处理村级
	update dm_AreaInfo a set a.allfatherid=
        ( select allfatherid from
          (select id,allfatherid from dm_AreaInfo  ) t   
            where t.id=a.pid
         )
  where a.level=5;
 
	update dm_AreaInfo a set a.allfathercode=
        ( select allfathercode from
          (select id,allfathercode from dm_AreaInfo  ) t   
            where t.id=a.pid
         )
  where a.level=5;

  update dm_AreaInfo a set a.allfatherid= ifnull(CONCAT(id,',',allfatherid),id) , a.allfathercode=ifnull(CONCAT(areaCode,',',allfathercode),areaCode) where a.level=5;
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_dm_reftabledata_allfathercode` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_dm_reftabledata_allfathercode`()
BEGIN
	
	DECLARE current_type VARCHAR(500);
	DECLARE current_index INT DEFAULT 0;
	DECLARE total_type INT DEFAULT 0;
	
	DECLARE current_dm VARCHAR(50);
	DECLARE current_fathercode VARCHAR(50);
	DECLARE current_idsequence VARCHAR(500);
	DECLARE current_type_index INT DEFAULT 0;
	DECLARE total_type_dm INT DEFAULT 0;
	
	
	UPDATE dm_reftabledata SET allfathercode = dm WHERE LENGTH(fathercode) <= 0 || fathercode IS NULL;
	
	SELECT COUNT(0) INTO total_type FROM ( SELECT type FROM dm_reftabledata WHERE LENGTH(fathercode) > 0 GROUP BY type) as a;
	
	WHILE total_type > current_index DO
		
		SELECT type INTO current_type FROM dm_reftabledata WHERE LENGTH(fathercode) > 0 GROUP BY type LIMIT current_index,1;
		
		
		SET current_type_index = 0;
		
		
		SELECT COUNT(*) INTO total_type_dm FROM dm_reftabledata WHERE type = current_type AND LENGTH(fathercode) > 0;
		
		WHILE total_type_dm > current_type_index DO
		
			
			SELECT dm,fathercode INTO current_dm,current_fathercode FROM dm_reftabledata WHERE type = current_type AND LENGTH(fathercode) > 0 ORDER BY dm ASC LIMIT current_type_index,1;
			SET current_idsequence = current_dm;
			
			WHILE current_fathercode IS NOT NULL DO
			
				SET current_idsequence = CONCAT(current_idsequence,',',current_fathercode);
				
				SELECT fathercode INTO current_fathercode FROM dm_reftabledata WHERE dm = current_fathercode AND type = current_type;
				
				IF LENGTH(current_fathercode) <= 0 THEN
					SET current_fathercode = NULL;
				END IF;
				
			END WHILE;
			
			UPDATE dm_reftabledata SET allfathercode = current_idsequence WHERE type = current_type AND dm = current_dm;
			
			SET current_type_index=current_type_index+1;
			
		END WHILE;
		
		
		SET current_index = current_index+1;
		
	END WHILE;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_dm_reftabledata_allfathercode_new` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_dm_reftabledata_allfathercode_new`()
BEGIN
	#清空allfathercode值	
	update dm_reftabledata set allfathercode = null where type='dm_area';

  #1.处理省级
  update dm_reftabledata set allfathercode=dm where type='dm_area' and dm in (select id from BasicArea where level=1);
  
	#2.处理市级
  update dm_reftabledata set allfathercode=ifnull(CONCAT(dm,',',fathercode),dm) where type='dm_area' and dm in (select id from BasicArea where level=2);

  #3.处理县级
  update dm_reftabledata a set a.allfathercode=
        ( select allfathercode from 
          (select allfathercode,dm from dm_reftabledata where type='dm_area' and allfathercode is not null ) t   
            where dm=a.fathercode
         )	
  where a.type='dm_area' and a.dm in (select id from BasicArea where level=3);


  update dm_reftabledata a set a.allfathercode=ifnull(CONCAT(dm,',',allfathercode),dm) where  type='dm_area' and dm in (select id from BasicArea where level=3);

   #4.处理镇级别
		update dm_reftabledata a set a.allfathercode=
			( select allfathercode from 
			 (select allfathercode,dm from dm_reftabledata where type='dm_area' and allfathercode is not null ) t   
			 where dm=a.fathercode
			)	
		where a.type='dm_area' and a.dm in (select id from BasicArea where level=4);

		update dm_reftabledata a set a.allfathercode=ifnull(CONCAT(dm,',',allfathercode),dm) where  type='dm_area' and dm in (select id from BasicArea where level=4);
		
		#5.处理村级
		update dm_reftabledata a set a.allfathercode=
		( select allfathercode from 
			(select allfathercode,dm from dm_reftabledata where type='dm_area' and allfathercode is not null ) t   
				where dm=a.fathercode
			)	
		where a.type='dm_area' and a.dm in (select id from BasicArea where level=5);

		update dm_reftabledata a set a.allfathercode=ifnull(CONCAT(dm,',',allfathercode),dm) where  type='dm_area' and dm in (select id from BasicArea where level=5);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_dm_reftabledata_region_allfathercode` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_dm_reftabledata_region_allfathercode`()
BEGIN
	#清空allfathercode值	
	update dm_reftabledata set allfathercode = null where type='dm_region';

  #1.处理省级
  update dm_reftabledata set allfathercode=dm where type='dm_region' and dm in (select id from dvsv3.Region where level=1);
  
	#2.处理市级
  update dm_reftabledata set allfathercode=ifnull(CONCAT(dm,',',fathercode),dm) where type='dm_region' and dm in (select id from dvsv3.Region where level=2);

  #3.处理县级
  update dm_reftabledata a set a.allfathercode=
        ( select allfathercode from 
          (select allfathercode,dm from dm_reftabledata where type='dm_region' and allfathercode is not null ) t   
            where dm=a.fathercode
         )	
  where a.type='dm_region' and a.dm in (select id from dvsv3.Region where level=3);


  update dm_reftabledata a set a.allfathercode=ifnull(CONCAT(dm,',',allfathercode),dm) where  type='dm_region' and dm in (select id from dvsv3.Region where level=3);

   #4.处理镇级别
		update dm_reftabledata a set a.allfathercode=
			( select allfathercode from 
			 (select allfathercode,dm from dm_reftabledata where type='dm_region' and allfathercode is not null ) t   
			 where dm=a.fathercode
			)	
		where a.type='dm_region' and a.dm in (select id from dvsv3.Region where level=4);

		update dm_reftabledata a set a.allfathercode=ifnull(CONCAT(dm,',',allfathercode),dm) where  type='dm_region' and dm in (select id from dvsv3.Region where level=4);
		
		#5.处理村级
		update dm_reftabledata a set a.allfathercode=
		( select allfathercode from 
			(select allfathercode,dm from dm_reftabledata where type='dm_region' and allfathercode is not null ) t   
				where dm=a.fathercode
			)	
		where a.type='dm_region' and a.dm in (select id from dvsv3.Region where level=5);

		update dm_reftabledata a set a.allfathercode=ifnull(CONCAT(dm,',',allfathercode),dm) where  type='dm_region' and dm in (select id from dvsv3.Region where level=5);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_Refresh_dm_Area` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_Refresh_dm_Area`()
BEGIN
delete from  dm_reftabledata where type='dm_area';
insert into dm_reftabledata (
SELECT 'dm_area' type, t.id as dm,t.`name` as mc ,'' pyzt, t.sequence as px,'1' as sfyx,'' as bz, if(t.pid = 0,null,t.pid) as fathercode ,'1' as sfxs,'1' as sflr,'' as sfyjd ,'' as allfathercode 
FROM `BasicArea` t where t.isDeleted=0 );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_Refresh_dm_Region` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_Refresh_dm_Region`()
BEGIN
delete from  dm_reftabledata where type='dm_region';
insert into dm_reftabledata (
SELECT 'dm_region' type, t.id as dm,t.`name` as mc ,'' pyzt, t.Order as px,'1' as sfyx,'' as bz, if(t.ParentId = 0,null,t.ParentId) as fathercode ,'1' as sfxs,'1' as sflr,'' as sfyjd ,'' as allfathercode 
FROM dvsv3.Region t where t.isDeleted=0  );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `Generate_Refresh_reftableV3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `Generate_Refresh_reftableV3`()
BEGIN
-- 定义变量
DECLARE flag int DEFAULT 0;
DECLARE lx LONGTEXT DEFAULT '';

-- 定义游标，并将sql结果集赋值到游标中，report为游标名

DECLARE type_list CURSOR FOR SELECT t.Type from view_v3_reftable t group by t.Type ;

-- 声明当游标遍历完后将标志变量置为某个值
DECLARE CONTINUE HANDLER FOR NOT FOUND SET flag=1;
-- 打开游标
 OPEN type_list;
 -- 将游标中的值赋值给变量,  注意：变量名不要与sql返回的列名相同，变量顺序要和sql结果列的顺序一致
 FETCH type_list INTO lx;
 -- 当flag不等于1时，也就是未遍历完时，会一直循环
 WHILE flag<>1 DO
-- 执行业务逻辑

delete from  dm_reftabledata where type=CONCAT('dm_v3_',lx);
insert into dm_reftabledata (
SELECT CONCAT('dm_v3_',lx) type, t.`Code` as dm,t.`Name` as mc ,'' pyzt, t.Order as px,'1' as sfyx,'' as bz, if(t.ParentId = 0,null,t.ParentId) as fathercode ,'1' as sfxs,'1' as sflr,'' as sfyjd ,'' as allfathercode 
FROM dvsdb30.view_v3_reftable t where t.type=lx and  t.isDeleted=0   );

-- 当s等于1时代表遍历已完成，退出循环
 FETCH type_list INTO lx;		
END WHILE;
-- 关闭游标
CLOSE type_list;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HouseholdSummaryUpdate` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `HouseholdSummaryUpdate`()
BEGIN
DECLARE areaid INT;
DECLARE total INT DEFAULT 0;
DECLARE flag int DEFAULT 0;

DECLARE areaId_list CURSOR FOR SELECT  DISTINCT  areaId  from  DAS_householdcode   s where s.areaid not in (
select  DISTINCT  areaId from CollectDataHouseholdSummary  )   ;
 
 DECLARE CONTINUE HANDLER FOR not found set flag=1;
 
 OPEN areaId_list;
 FETCH areaId_list INTO areaid;
 WHILE flag<>1 DO
   
SELECT count(id) INTO total FROM DAS_householdcode where areaid = areaid;
 
 INSERT INTO  CollectDataHouseholdSummary(id,areaid,total,tobeSubmitted,submitted,pass) 
 VALUE(UUID() ,areaid,total,total,0,0);
 
 
 FETCH areaId_list INTO areaid;	
	
END WHILE;
CLOSE areaId_list;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `mdproc_delete_zb` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `mdproc_delete_zb`(IN data bigint)
BEGIN
  
	declare ids LONGTEXT DEFAULT '';
	declare tempids LONGTEXT;	
	
	
	DROP table if exists md_temporary;
	create temporary table if not exists md_temporary
	(
			id bigint primary key
	);
	
	
  
	SET tempids= data;
	while tempids is not null do
		set ids = CONCAT_WS(',',ids,tempids);
		select GROUP_CONCAT(id) into tempids from tj_zdyzbdyb where FIND_IN_SET(fid,tempids) >0;
	end while;
	
	
	insert into md_temporary (id) select id from tj_zdyzbdyb where FIND_IN_SET(id,ids)>0;
	
	
	delete from tj_zdyzbdyb where id in (select id from md_temporary);
	
	
	commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `proc_submitStatistics` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `proc_submitStatistics`()
BEGIN
	
	SET @SQL = NULL;
	SELECT
		GROUP_CONCAT(
		DISTINCT CONCAT( 'MAX(IF(`Key`=''', `Key`, ''',`Value`,NULL)) AS ''', `Key`, '''' )) INTO @SQL 
	FROM
		FFPSubmitStatistics;
	
	SET @SQL = CONCAT( 'SELECT AreaId,TaskId,', @SQL, ' FROM FFPSubmitStatistics GROUP BY AreaId,TaskId' );
	PREPARE stmt 
	FROM
		@SQL;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `update_FFPHouseholdExtraInfo` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `update_FFPHouseholdExtraInfo`()
BEGIN
DECLARE HouseholdId INT;

DECLARE flag int DEFAULT 0;

DECLARE id_list CURSOR FOR SELECT f.householdId  FROM `FFPHouseholdCode` f  
		where  (riskType='100B02001' or riskType='100B02002' or riskType='100B02003') 
		and f.householdId not in (

		select e.HouseholdId from FFPHouseholdExtraInfo e where e.key='100AB04'
		and e.householdId in (
				SELECT t.householdId  FROM `FFPHouseholdCode` t  
				where  riskType='100B02001' or riskType='100B02002' or riskType='100B02003' )
				
		);
 
 DECLARE CONTINUE HANDLER FOR not found set flag=1;
 
 OPEN id_list;
 FETCH id_list INTO HouseholdId;
 WHILE flag<>1 DO
 
 INSERT INTO  FFPHouseholdExtraInfo(householdId,`key`,`value`,groupCode) VALUE(HouseholdId,'100AB04','100AB04001','100G012');
 
 
 FETCH id_list INTO HouseholdId;	
	
END WHILE;
CLOSE id_list;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `update_VillagePopulationAddress` */;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `update_VillagePopulationAddress`()
BEGIN

DECLARE FId INT;
DECLARE HouseholdId INT;
DECLARE Fname LONGTEXT DEFAULT '';
DECLARE Vname LONGTEXT DEFAULT '';
DECLARE houseName LONGTEXT DEFAULT '';
DECLARE houseNumber LONGTEXT DEFAULT '';

DECLARE flag int DEFAULT 0;

DECLARE id_list CURSOR FOR select s.id,s.householdId,a.name as fname,s.`name`,s.houseName,s.houseNumber from (
select f.id,f.householdId, b.pid, b.`name`,v.houseName,v.houseNumber from FFPHouseholdCode f 
left join VillageHouseholdCode v on f.householdId=v.id and v.isDeleted=0
left join BasicArea b on b.id=v.areaId and b.isDeleted=0
where f.isDeleted=0  and f.id not in( select t.populationId from VillagePopulationAddress t where t.type=7 and t.isDeleted=0 ) and v.areaId is not null
) s  left join BasicArea a on a.id= s.pid; 
 
 DECLARE CONTINUE HANDLER FOR not found set flag=1;
 
 OPEN id_list;
 FETCH id_list INTO FId, HouseholdId,Fname,Vname,houseName,houseNumber;
 WHILE flag<>1 DO
 
 set @address = CONCAT(Fname,Vname,houseName,houseNumber);
 
  INSERT INTO  VillagePopulationAddress(populationId,province,city,district,mapCode,Address) 
	VALUE(FId,'辽宁省','朝阳市','凌源市','210000,211300,211382',@address);
 
 
 
 
 FETCH id_list INTO FId, HouseholdId,Fname,Vname,houseName,houseNumber;
	
END WHILE;
CLOSE id_list;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dvsdb30` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-11 20:47:06
