#!/bin/bash

yum groupinstall "Development tools"
yum install -y zlib-devel
yum install -y bzip2-devel
yum install -y openssl-devel
yum install -y ncurses-devel
yum install -y sqlite-devel
cd /opt
wget --no-check-certificate https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tar.xz
tar xf Python-2.7.9.tar.xz
cd Python-2.7.9
./configure --prefix=/usr/local
make
make altinstall
ln -s /usr/local/bin/python2.7 /usr/local/bin/python

cd /tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
pip install cycli
pip install neo4j-driver
pip install virtualenv
pip install neo4jrestclient
