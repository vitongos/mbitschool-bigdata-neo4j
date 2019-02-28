Demos y fuentes del módulo de Neo4j en Big Data
===============================================

Instalación
-----------

A continuación se especifican los comandos necesarios para ejecutar las demos.

### Descarga de la imagen Docker y crear el contenedor:
Ejecutar el siguiente script:
```bash
docker pull vitongos/mbitschool-bigdata-neo4j
docker run \
    --publish=7474:7474 \
    --publish=7687:7687 \
    -d \
    vitongos/mbitschool-bigdata-neo4j
```
Pasados unos segundos, acceder al navegador del host: http://localhost:7474

### Parar/Arrancar el contenedor
Ejecutar el siguiente script:
```bash
docker ps -a
docker stop <CONTAINER_ID>
dcoker start <CONTAINER_ID>
```

### Acceder a la consola del contenedor
Ejecutar el siguiente script:
```bash
docker ps -a
docker exec -it <CONTAINER_ID> bash
```
