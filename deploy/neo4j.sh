#!/bin/bash

cd ~/Downloads
wget -O neo4j.tar.gz http://neo4j.com/artifact.php?name=neo4j-community-3.1.1-unix.tar.gz
tar zxf neo4j.tar.gz
rm -rf neo4j.tar.gz
sudo mv neo4j-community-3.1.1/ /opt/neo4j/
sudo ln -s /opt/neo4j/bin/neo4j /usr/bin/neo4j
cd ~/neo4j-src/
sed -i -r 's/#dbms\.security\.auth_enabled=false/dbms\.security\.auth_enabled=false/' /opt/neo4j/conf/neo4j.conf
sed -i -r 's/#dbms\.allow_format_migration=true/dbms\.allow_format_migration=true/' /opt/neo4j/conf/neo4j.conf
cd /tmp
wget http://example-data.neo4j.org/3.0-datasets/cineasts.tgz
tar xzf cineasts.tgz
rm -rf /opt/neo4j/data/databases/graph.db/
mv graph.db /opt/neo4j/data/databases/
chown cloudera:cloudera /opt/neo4j/data -R
/opt/neo4j/bin/neo4j start
