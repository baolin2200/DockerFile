#For JDK Base
FROM registry.cn-shanghai.aliyuncs.com/baolin2200/centos7.5base:latest

MAINTAINER libaolin "baolin2200@gmail.com"

ADD jdk-8u201-linux-x64.tar.gz /usr/local/src/
RUN ln -sv /usr/local/src/jdk1.8.0_201 /usr/local/jdk
ADD profile /etc/profile
RUN mkdir /data

ENV JAVA_HOME /usr/local/jdk
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH $JAVA_HOME/lib/:$JRE_HOME/lib/
ENV PATH $PATH:$JAVA_HOME/bin
RUN rm -rf /etc/localtime && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
