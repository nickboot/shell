# !/bin/bash
# -------------------------------------------------------
# Name:		pingIps.sh
# Description:	ping多个ip地址，查看网络延迟
# Notes:	系统环境macOS
# -------------------------------------------------------		

while [ true ]
do

ipTxt=$(cat /Users/y50/Pycharmwork/shell/ip.txt)

for ip in $ipTxt
do
num=$(ping -c 1 $ip | grep packets | awk '{print $7}' | awk -F . '{print $1}')
time=$(ping -c 1 $ip | grep time | awk '{print $7}')

if [ $num == 100 ];then
echo $ip fail
else
echo $ip $time 
fi
done
done
