#!/bin/bash
docker build -t registry.cn-shanghai.aliyuncs.com/baolin2200/nginx1.16.1-geoip-bash .
sleep 2
docker push registry.cn-shanghai.aliyuncs.com/baolin2200/nginx1.16.1-geoip-bash
