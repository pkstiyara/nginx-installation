#!/bin/bash
# Nginx Installation Script
# Author: Your Name
# Date: Current Date

# Update the package list
sudo apt update

# Install required dependencies
sudo apt install -y build-essential binutils gcc libpcre3-dev libssl-dev zlib1g-dev

# Create a directory for source files
sudo mkdir /usr/src/nginx
cd /usr/src/nginx

# Download and extract Nginx source
wget https://nginx.org/download/nginx-1.25.3.tar.gz
tar -xvzf nginx-1.25.3.tar.gz
cd nginx-1.25.3

# Configure Nginx build with specified options
./configure \
    --user=nginx \
    --group=nginx \
    --prefix=/data/nginx-1253 \
    --sbin-path=/data/nginx-1253/bin/nginx \
    --conf-path=/data/nginx-1253/conf/nginx.conf \
    --error-log-path=/data/nginx-1253/log/error.log \
    --http-log-path=/data/nginx-1253/log/access.log \
    --pid-path=/data/nginx-1253/run/nginx.pid \
    --lock-path=/data/nginx-1253/run/nginx.lock \
    --with-http_ssl_module \
    --with-pcre

# Compile Nginx
make

# Install Nginx to the specified directory
make install

# Script execution completed
echo "Nginx has been successfully installed to /data/nginx-1253."
