#!/usr/bin/bash

# ceph集群状态每秒记录到文件
# 时间 2017/10/13

while true
do

        t=`date`
        s=`ceph health`
        echo "$t -- $s" >> /ceph_status/ceph_status.txt
        sleep 1
done

# nohup 忽略hangup信号，用户注销和断网，命令还继续执行；"&"命令放在后台执行
# nohup ./ceph_status.sh & 
# echo "$t -- $s" >> /ceph_status/ceph_status.txt
# echo $t
# s=`ceph health`
# echo $s
