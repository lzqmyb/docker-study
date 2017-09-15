FROM library/jenkins:latest

MAINTAINER Lzqmyb "842512022@qq.com"

RUN apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
ENV REFRESHED_AT 2017-09-12
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
