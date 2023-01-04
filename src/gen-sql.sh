
#! /usr/bin/bash

mysqldump -h192.168.0.104 -P4006  -uroot -psunlight2021 dvsdb30 CollectFormMetaData>/usr/local/sunlight/CollectFormMetaData.sql; 

