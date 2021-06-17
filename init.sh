#!/bin/sh

#更新软件包
apk update
#进入root目录
cd /root

#安装timezone
apk add -U tzdata
#查看时区列表
ls /usr/share/zoneinfo
#拷贝需要的时区文件到localtime
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#查看当前时间
date

apk del tzdata

#创建程序运行目录
mkdir -p /opt/app/appid_list

pip install fastapi
pip install uvicorn