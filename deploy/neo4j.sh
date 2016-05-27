#!/bin/bash

cd ~/Downloads
wget -O neo4j.tar.gz http://neo4j.com/artifact.php?name=neo4j-community-2.3.3-unix.tar.gz
tar zxf neo4j.tar.gz
rm -rf neo4j.tar.gz
sudo mv neo4j-community-2.3.3/ /opt/neo4j/
sudo ln -s /opt/neo4j/bin/neo4j /usr/bin/neo4j
cd ~/neo4j-src/
sudo sed -i -r 's/dbms\.security\.auth_enabled=true/dbms\.security\.auth_enabled=false/' /opt/neo4j/conf/neo4j-server.properties
mkdir /opt/neo4j/data/graph.db
cp data/cineasts_12k_movies_50k_actors_2.1.6.zip /opt/neo4j/data/graph.db/
cd /opt/neo4j/data/graph.db/
unzip cineasts_12k_movies_50k_actors_2.1.6.zip
mv cineasts_12k_movies_50k_actors.db/* ./
rm -rf cineasts_12k_movies_50k_actors_2.1.6.zip cineasts_12k_movies_50k_actors.db
sudo sed -i -r 's/#allow_store_upgrade=true/allow_store_upgrade=true/' /opt/neo4j/conf/neo4j.properties
neo4j start
