#!/bin/bash

cd ~/Downloads
tar zxf jdk-8u92-linux-x64.tar.gz
sudo mkdir /usr/local/java
sudo mv jdk1.8.0_92/ /usr/local/java/
sudo update-alternatives --install /usr/bin/java java /usr/local/java/jdk1.8.0_92/bin/java 100
sudo update-alternatives --config java
export JAVA_HOME=/usr/local/java/jdk1.8.0_92





