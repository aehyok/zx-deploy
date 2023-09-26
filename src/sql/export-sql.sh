
#! /usr/bin/bash

## CollectFormMetaData Form表单配置表
# mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 dvsdb30 CollectFormMetaData>/usr/local/sunlight/sql/CollectFormMetaData.sql;

# ## tj_zdyzbdyb  指标定义表
# mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 metadata tj_zdyzbdyb>/usr/local/sunlight/sql/tj_zdyzbdyb.sql;

## 代码表一级表数据 
# mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 dvsdb30 dm_reftabledata>/usr/local/sunlight/sql/dm_reftabledata.sql; 

## 导出所有的Collect数据定义
# mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 -d dvsdb30 $(mysql -h192.168.0.104 -P4006  -uroot -psunlight2021 -D dvsdb30 -Bse "show tables like 'Collect%'") > /usr/local/sunlight/sql/Collect.sql
# mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 -d dvsdb30 $(mysql -h192.168.0.104 -P4006  -uroot -psunlight2021 -D dvsdb30 -Bse "show tables like 'pcs2309_%'") > /usr/local/sunlight/sql/pcs2309_.sql