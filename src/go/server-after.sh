#! /usr/bin/bash
echo "get argument: $1"
echo "开始重启服务"
systemctl start $1
echo "重启服务成功，查看服务状态"
systemctl status $1