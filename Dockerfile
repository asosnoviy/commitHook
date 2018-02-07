FROM danday74/nginx-lua

MAINTAINER Alexey Sosnoviy "int-it@yamnex.ru"

RUN apt-get update -qq -y
RUN apt-get -qq -y install lua-curl libcurl4-gnutls-dev luarocks curl
RUN luarocks install luacurl

# COPY conf/nginx.conf /nginx/conf/nginx.conf