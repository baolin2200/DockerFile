#!/bin/bash
# 创建完镜像的名称
docker build -t centos7.5base .
sleep 1
docker tag centos7.5base:latest registry.cn-shanghai.aliyuncs.com/baolin2200/centos7.5base
# 传入自己的镜像仓库
sleep 1
#docker push registry.cn-shanghai.aliyuncs.com/baolin2200/centos7.5base
