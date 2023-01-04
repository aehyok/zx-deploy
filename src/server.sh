#! /usr/bin/bash

echo "开始重启服务"
systemctl restart dvs-collect
echo "重启服务成功，查看服务状态"
systemctl status dvs-collect