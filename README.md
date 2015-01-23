Demos y fuentes del módulo de Neo4j en Big Data
===============================================

Instalación
-----------

A continuación se especifica el proceso de instalación de los diferentes sistemas necesarios para ejecutar las demos.

### Instalar el repositorio clonándolo de Github:
Ejecutar el siguiente script:
```bash
sudo yum -y install git
cd
git clone https://github.com/vitongos/mbitschool-bigdata-neo4j.git neo4j-src
chmod +x neo4j-src/deploy/*.sh
```

### Instalar Neo4j
Ejecutar el siguente script:
```bash
cd ~/neo4j-src/
deploy/neo4j.sh
```

### Instalar Eclipse
Ejecutar el siguiente script:
```bash
cd ~/neo4j-src/
deploy/eclipse.sh
```

### Instalar Java 8
Descargar [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

Ejecutar el siguiente script:
```bash
cd ~/neo4j-src/
deploy/java8.sh
```


