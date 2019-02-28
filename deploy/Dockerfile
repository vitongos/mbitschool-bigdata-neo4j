FROM neo4j

RUN apk add --no-cache --quiet \
	python3 \
	python-dev \
	py-pip \
	build-base \
	openssl-dev \
	libffi-dev \
	git \
	&& pip install virtualenv \
	&& pip install cycli \
	&& pip install neo4j-driver \
	&& pip install virtualenv \
	&& pip install neo4jrestclient \
	&& pip install requests urllib3 pyOpenSSL --force --upgrade \
	&& rm -rf /var/cache/apk/* \
	&& cd /tmp \
	&& git clone https://github.com/vitongos/mbitschool-bigdata-neo4j.git /neo4j-src \
	&& wget https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/3.5.3.1/graph-algorithms-algo-3.5.3.1.jar \
	&& mv /tmp/graph-algorithms-algo-3.5.3.1.jar /var/lib/neo4j/plugins/ \
	&& chown neo4j:neo4j /var/lib/neo4j/plugins/ -R \
	&& wget http://example-data.neo4j.org/3.0-datasets/cineasts.tgz \
	&& tar xzf cineasts.tgz \
	&& sed -i -r 's/#dbms\.security\.auth_enabled=false/dbms\.security\.auth_enabled=false/' /var/lib/neo4j/conf/neo4j.conf \
	&& sed -i -r 's/#dbms\.allow_upgrade=true/dbms\.allow_upgrade=true/' /var/lib/neo4j/conf/neo4j.conf \
	&& sed -i -r 's/#dbms\.security\.procedures\.unrestricted=my\.extensions\.example,my\.procedures\.*/dbms\.security\.procedures\.unrestricted=algo\.*/' /var/lib/neo4j/conf/neo4j.conf \
	&& mkdir -p /mydata/databases/graph.db/ \
	&& rm /var/lib/neo4j/data && ln -s /mydata /var/lib/neo4j/data \
	&& mv /tmp/graph.db/* /mydata/databases/graph.db/ \
	&& chown neo4j:neo4j /mydata/ -R
