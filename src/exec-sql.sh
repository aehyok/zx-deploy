#! /usr/bin/bash

## 先备份
dt=`date +%Y-%m-%d-%H-%M-%S`

pPath="/usr/local/sunlight/sql/${dt}/" 

mkdir -p "${pPath}"

mysqldump -h192.168.0.107 -P 4006 -uroot -psunlight2010! dvsdb30 CollectFormMetaData>${pPath}/CollectFormMetaData.sql;
mysqldump -h192.168.0.107 -P 4006 -uroot -psunlight2010! metadata tj_zdyzbdyb>${pPath}/tj_zdyzbdyb.sql;


## 再执行

# mysql -h192.168.0.107 -P 4006 -uroot -psunlight2010! dvsdb30</usr/local/sunlight/sql/CollectFormMetaData.sql
# mysql -h192.168.0.107 -P 4006 -uroot -psunlight2010! metadata</usr/local/sunlight/sql/tj_zdyzbdyb.sql