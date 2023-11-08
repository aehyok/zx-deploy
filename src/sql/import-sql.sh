#! /usr/bin/bash
echo "All parameters: $@"
## 先备份
dt=`date +%Y-%m-%d-%H-%M-%S`

pPath="/usr/local/sunlight/sql/${dt}/" 

privateIp=$1
privatePort=$2
privatePwd=$3

mkdir -p "${pPath}"

mysqldump -h$privateIp -P $privatePort -uroot -p$privatePwd dvsdb30 CollectFormMetaData>${pPath}/CollectFormMetaData.sql;
# mysqldump -h$privateIp -P $privatePort -uroot -p$privatePwd dvsdb30 dm_reftabledata>${pPath}/dm_reftabledata.sql;
mysqldump -h$privateIp -P $privatePort -uroot -p$privatePwd metadata tj_zdyzbdyb>${pPath}/tj_zdyzbdyb.sql;
echo "mysqldump 备份远程服务器数据成功"
## 再执行

mysql -h$privateIp -P $privatePort -uroot -p$privatePwd dvsdb30</usr/local/sunlight/sql/CollectFormMetaData.sql
  mysql -h$privateIp -P $privatePort -uroot -p$privatePwd metadata</usr/local/sunlight/sql/tj_zdyzbdyb.sql
mysql -h$privateIp -P $privatePort -uroot -p$privatePwd dvsdb30</usr/local/sunlight/sql/dm_reftabledata.sql
echo "mysql 远程服务器拷贝数据成功"