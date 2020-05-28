#Centos Base Image
FROM centos:latest
MAINTAINER libaolin "baolin2200@gmail.com"
ENV  TOP_HOME=/var/www
ENV  APP_HOME=/var/www/app LOG_DIR=/var/www/logs
RUN  mkdir -p ${APP_HOME} ${LOG_DIR}
RUN rm -rf /etc/localtime && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
RUN  yum clean all && yum makecache && yum install -y https://mirrors.aliyun.com/epel/epel-release-latest-7.noarch.rpm
RUN  yum install -y vim wget tree  pcre pcre-devel gcc gcc-c++  zlib zlib-devel openssl openssl-devel net-tools iotop unzip zip iproute ntpdate nfs-utils tcpdump telnet traceroute 
