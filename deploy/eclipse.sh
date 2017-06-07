#!/bin/bash

cd /tmp
wget http://ftp.fau.de/eclipse/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
mv eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz /opt/
cd /opt
tar xzf eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
chown centos:centos eclipse -R
ln -s /opt/eclipse/eclipse /usr/bin/eclipse
