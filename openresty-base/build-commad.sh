#!/bin/bash
# 制作生成的镜像名为k8s-harbor1.example.com/baseimages/nginx-base:v1
docker build -t registry.cn-shanghai.aliyuncs.com/baolin2200/openresty_base .
sleep 2
docker push registry.cn-shanghai.aliyuncs.com/baolin2200/openresty_base
