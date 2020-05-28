#For JDK Base
FROM registry.cn-shanghai.aliyuncs.com/baolin2200/centos7.5_base
MAINTAINER libaolin "baolin2200@gmail.com"

ADD nginx-1.16.1.tar.gz /usr/local/src/
ADD libmaxminddb-1.4.2.tar.gz /usr/local/src/
ADD geoipupdate_4.2.0_linux_amd64.rpm /usr/local/src/
ADD 3.3.tar.gz /usr/local/src/

RUN yum install gcc gcc-c++ make -y
RUN yum install pcre-devel zlib-devel openssl-devel -y
RUN cd /usr/local/src/ &&  cd libmaxminddb-1.4.2 && ./configure && make && make check && make install && echo '/usr/local/lib' > /etc/ld.so.conf.d/geoip.conf && ldconfig
RUN cd /usr/local/src/ &&  mv ngx_http_geoip2_module-3.3 ngx_http_geoip2_module 
RUN cd /usr/local/src/ &&  cd nginx-1.16.1 && ./configure --prefix=/usr/local/nginx --with-ld-opt="-Wl,-rpath -Wl,/usr/local/lib" --with-pcre-jit --with-stream --with-stream_ssl_module --with-stream_ssl_preread_module --with-http_v2_module --without-mail_pop3_module --without-mail_imap_module --without-mail_smtp_module --with-http_stub_status_module --with-http_realip_module --with-http_addition_module --with-http_auth_request_module --with-http_secure_link_module --with-http_random_index_module --with-http_gzip_static_module --with-http_sub_module --with-http_dav_module --with-http_flv_module --with-http_mp4_module --with-http_gunzip_module --with-threads --with-stream --with-stream_ssl_preread_module --with-http_ssl_module --add-module=/usr/local/src/ngx_http_geoip2_module && make && make install && ln -sv /usr/local/nginx/sbin/nginx /usr/bin/nginx 
RUN mkdir /usr/local/nginx/geoip/ -p
ADD GeoLite2-City.mmdb  /usr/local/nginx/geoip/GeoLite2-City.mmdb
