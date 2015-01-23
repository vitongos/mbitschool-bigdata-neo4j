#!/bin/bash

cd ~/Downloads
wget -O neo4j.tar.gz http://neo4j.com/artifact.php?name=neo4j-community-2.1.6-unix.tar.gz
tar zxf neo4j.tar.gz
sudo mv neo4j-community-2.1.6/ /opt/neo4j/
sudo ln -s /opt/neo4j/bin/neo4j /usr/bin/neo4j






