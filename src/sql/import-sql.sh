#! /usr/bin/bash

## 先备份
dt=`date +%Y-%m-%d-%H-%M-%S`

pPath="/usr/local/sunlight/sql/${dt}/" 

mkdir -p "${pPath}"

mysqldump -h192.168.0.149 -P 4006 -uroot -psunlight2021 dvsdb30 CollectFormMetaData>${pPath}/CollectFormMetaData.sql;
mysqldump -h192.168.0.149 -P 4006 -uroot -psunlight2021 dvsdb30 dm_reftabledata>${pPath}/dm_reftabledata.sql;
mysqldump -h192.168.0.149 -P 4006 -uroot -psunlight2021 metadata tj_zdyzbdyb>${pPath}/tj_zdyzbdyb.sql;

## 再执行

# mysql -h192.168.0.149 -P 4006 -uroot -psunlight2021 dvsdb30</usr/local/sunlight/sql/Collect.sql
# mysql -h192.168.0.149 -P 4006 -uroot -psunlight2021 dvsdb30</usr/local/sunlight/sql/pcs2309_.sql
mysql -h192.168.0.149 -P 4006 -uroot -psunlight2021 dvsdb30</usr/local/sunlight/sql/CollectFormMetaData.sql
mysql -h192.168.0.149 -P 4006 -uroot -psunlight2021 metadata</usr/local/sunlight/sql/tj_zdyzbdyb.sql
mysql -h192.168.0.149 -P 4006 -uroot -psunlight2021 dvsdb30</usr/local/sunlight/sql/dm_reftabledata.sql