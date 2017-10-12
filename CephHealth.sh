#!/bin/bash
while true;
do
/bin/sleep 1 
ceph health >> /root/status.txt
date >> /root/status.txt
done
