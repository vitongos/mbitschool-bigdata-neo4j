#!/bin/bash

cd
wget http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/luna/SR1/eclipse-java-luna-SR1-linux-gtk-x86_64.tar.gz
sudo mv eclipse-java-luna-SR1-linux-gtk-x86_64.tar.gz /opt/
cd /opt
sudo tar xzf eclipse-java-luna-SR1-linux-gtk-x86_64.tar.gz
sudo chown cloudera:cloudera eclipse -R
sudo ln -s /opt/eclipse/eclipse /usr/bin/eclipse








