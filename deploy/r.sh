#!/bin/bash

yum install -y epel-release 
yum install -y R
su -c 'rpm -Uhv http://download1.rstudio.org/rstudio-0.97.320-x86_64.rpm'
yum -y install mesa-libGL-devel mesa-libGLU-devel libpng-devel libcurl libcurl-devel openssl-devel libxml2-devel libjpeg libjpeg-devel
