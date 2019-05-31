#!/bin/bash

# '\033[字背景颜色;字体颜色m字符串\033[0m'
GREENCOLOR='\033[1;32m'
NC='\033[0m'

echo "===================================================="
printf "${GREENCOLOR} Docker's rm begin ${NC} \n"
echo "===================================================="

# 删除所有容器
docker rm -f $(docker ps -aq)
# 删除所有镜像
docker rmi $(docker images -q)

echo "===================================================="
printf "${GREENCOLOR} Docker's rm finish ${NC} \n"
echo "===================================================="