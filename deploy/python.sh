#!/bin/bash

cd /tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py
pip install cycli
pip install neo4j-driver
pip install virtualenv
pip install neo4jrestclient
pip install requests urllib3 pyOpenSSL --force --upgrade
