#!/bin/bash

cd
wget http://ftp.fau.de/eclipse/technology/epp/downloads/release/mars/2/eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
sudo mv eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz /opt/
cd /opt
sudo tar xzf eclipse-jee-mars-2-linux-gtk-x86_64.tar.gz
sudo chown cloudera:cloudera eclipse -R
sudo ln -s /opt/eclipse/eclipse /usr/bin/eclipse








