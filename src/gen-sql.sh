
#! /usr/bin/bash

## CollectFormMetaData Form表单配置表
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 dvsdb30 CollectFormMetaData>/usr/local/sunlight/sql/CollectFormMetaData.sql;

## tj_zdyzbdyb  指标定义表
mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 metadata tj_zdyzbdyb>/usr/local/sunlight/sql/tj_zdyzbdyb.sql;
