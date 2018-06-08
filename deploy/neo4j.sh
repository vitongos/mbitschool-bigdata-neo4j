#!/bin/bash

cd /tmp
wget http://debian.neo4j.org/neotechnology.gpg.key
rpm --import neotechnology.gpg.key
wget http://example-data.neo4j.org/3.0-datasets/cineasts.tgz
tar xzf cineasts.tgz

cat <<EOF>  /etc/yum.repos.d/neo4j.repo
[neo4j]
name=Neo4j Yum Repo
baseurl=http://yum.neo4j.org/stable
enabled=1
gpgcheck=1
EOF

yum install -y neo4j

sed -i -r 's/#dbms\.security\.auth_enabled=false/dbms\.security\.auth_enabled=false/' /etc/neo4j/neo4j.conf
sed -i -r 's/#dbms\.allow_upgrade=true/dbms\.allow_upgrade=true/' /etc/neo4j/neo4j.conf

mv graph.db/* /var/lib/neo4j/data/databases/graph.db/
chown neo4j:neo4j /var/lib/neo4j/data/databases/graph.db/ -R

service neo4j start
