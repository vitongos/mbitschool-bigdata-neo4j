#!/bin/bash

yum install -y epel-release 
yum install -y R
su -c 'rpm -Uhv http://download1.rstudio.org/rstudio-0.97.320-x86_64.rpm'
yum -y install mesa-libGL-devel mesa-libGLU-devel libpng-devel
yum -y install libcurl libcurl-devel openssl-devel
yum -y install libxml2-devel
yum -y install libjpeg libjpeg-devel
