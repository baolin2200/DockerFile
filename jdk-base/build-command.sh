#!/bin/bash
docker build -t registry.cn-shanghai.aliyuncs.com/baolin2200/centos7.5jdk_8u201 .
sleep 2
docker push registry.cn-shanghai.aliyuncs.com/baolin2200/centos7.5jdk_8u201
