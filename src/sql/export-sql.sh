
#! /usr/bin/bash
## > 覆盖文件
## >> 原有文件中追加

## CollectFormMetaData Form表单配置表
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 dvsdb30 CollectFormMetaData>/usr/local/sunlight/sql/CollectFormMetaData.sql;

# ## tj_zdyzbdyb  指标定义表
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 metadata tj_zdyzbdyb>/usr/local/sunlight/sql/tj_zdyzbdyb.sql;

## 代码表一级表数据 
# mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 dvsdb30 dm_reftabledata>/usr/local/sunlight/sql/dm_reftabledata.sql; 

## 导出所有的Collect以及pcs2309开头的表结构 不包含数据
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 -d dvsdb30 $(mysql -h192.168.0.104 -P4006  -uroot -psunlight2021 -D dvsdb30 -Bse "show tables like 'Collect%'") > /usr/local/sunlight/sql/Collect.sql
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 -d dvsdb30 $(mysql -h192.168.0.104 -P4006  -uroot -psunlight2021 -D dvsdb30 -Bse "show tables like 'pcs2309_%'") > /usr/local/sunlight/sql/pcs2309_.sql

## 导出函数和存储过程
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 -d --routines --no-create-info dvsdb30 >  /usr/local/sunlight/sql/fun_pro.sql

## 导出一个view视图,并且这个视图关联的表要存在
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 dvsdb30 view_CollectDataHouseholdStatus_202305 > /usr/local/sunlight/sql/view-one.sql

## 导出一个数据库下所有的视图
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 -d dvsdb30 $(mysql -h192.168.0.104 -P4006  -uroot -psunlight2021 -BNe "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.VIEWS WHERE TABLE_SCHEMA = '$dvsdb30'") > /usr/local/sunlight/sql/view-all.sql