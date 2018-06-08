#!/bin/bash

yum install -y epel-release 
yum install -y R
yum update

cd /tmp
wget https://download2.rstudio.org/rstudio-server-rhel-1.0.136-x86_64.rpm
yum install --nogpgcheck rstudio-server-rhel-1.0.136-x86_64.rpm -y
systemctl status rstudio-server.service
systemctl enable rstudio-server.service
