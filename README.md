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

### Instalar Java 8
Ejecutar el siguiente script:
```bash
cd ~/neo4j-src/
sudo deploy/java8.sh
```

### Instalar Neo4j
Ejecutar el siguiente script:
```bash
cd ~/neo4j-src/
sudo deploy/neo4j.sh
```

### Instalar driver Python para Neo4j 
Ejecutar el siguiente script:
```bash
cd ~/neo4j-src/
sudo deploy/python.sh
```

### Instalar R y RStudio
Ejecutar el siguiente script:
```bash
cd ~/neo4j-src/
sudo deploy/r.sh
```

### Instalar Eclipse
Ejecutar el siguiente script:
```bash
cd ~/neo4j-src/
sudo deploy/eclipse.sh
```
