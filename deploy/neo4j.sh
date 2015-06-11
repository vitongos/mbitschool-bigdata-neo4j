#!/bin/bash

cd ~/Downloads
wget -O neo4j.tar.gz http://neo4j.com/artifact.php?name=neo4j-community-2.2.2-unix.tar.gz
tar zxf neo4j.tar.gz
rm -rf neo4j.tar.gz
sudo mv neo4j-community-2.2.2/ /opt/neo4j/
sudo ln -s /opt/neo4j/bin/neo4j /usr/bin/neo4j
cd ~/neo4j-src/
sudo sed -i -r 's/dbms\.security\.auth_enabled=true/dbms\.security\.auth_enabled=false/' /opt/neo4j/conf/neo4j-server.properties
neo4j start
cd ~/neo4j-src/
/opt/neo4j/bin/neo4j-shell -file data/insert.cyp






