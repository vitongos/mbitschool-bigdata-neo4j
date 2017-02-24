#!/bin/bash

chown centos:centos /opt -R
cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.tar.gz"
tar xzf jdk-8u112-linux-x64.tar.gz
cd /opt/jdk1.8.0_112/
alternatives --install /usr/bin/java java /opt/jdk1.8.0_112/bin/java 2
alternatives --config java
alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_112/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_112/bin/javac 2
alternatives --set jar /opt/jdk1.8.0_112/bin/jar
alternatives --set javac /opt/jdk1.8.0_112/bin/javac

export JAVA_HOME=/opt/jdk1.8.0_112
export JRE_HOME=/opt/jdk1.8.0_112/jre
export PATH=$PATH:/opt/jdk1.8.0_112/bin:/opt/jdk1.8.0_112/jre/bin
cat << EOF > /etc/environment
JAVA_HOME=/opt/jdk1.8.0_112
JRE_HOME=/opt/jdk1.8.0_112/jre
EOF







