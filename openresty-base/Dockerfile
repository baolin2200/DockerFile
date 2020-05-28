#Nginx Base Image
FROM registry.cn-shanghai.aliyuncs.com/baolin2200/centos7.5_base:latest

# 添加yum 源
ADD OpenResty.repo /etc/yum.repos.d/
# 安装 openresty
RUN yum install -y ntpdate net-tools vim lrzsz unzip tree screen mtr openssl-devel zip dos2unix nc lsof tcpdump wget bash-completion sshpass python-devel
RUN yum install openresty -y
