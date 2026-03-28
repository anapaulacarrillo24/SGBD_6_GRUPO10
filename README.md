# SGBD_6_GRUPO10
documentación , modelado y consultas /
Este repositorio contiene la caracterizacion del sistema de persistencia de datos (datasets) cuyo objetivo es la implementación de un MVP de un sistema WMS para la gestión de activos fijos para el departamento "Skilled Trade" en multiples campus de la universidad de Austin, tx.
El sistema permite:

Registrar activos:
1.-Clasificarlos por categoría y departamento
2.-Consultar su ubicación y estado
Tecnologías utilizadas:
1.-MySQL 8
2.-Docker (para ejecución reproducible)

Estructura del proyecto

/db
schema.sql → estructura de la base de datos
seed.sql → datos iniciales
queries.sql → consultas de análisis
/datset
AGREGATED INVENTORY DAT → dataset utilizado para obtener la informacion
/diagrama 

docker-compose.yml → entorno automatizado
README.md → documentación
Ejecución del proyecto
Opción 1: Con Docker (recomendado)
Clonar el repositorio:
git clone <URL_DEL_REPOSITORIO>
cd SGBD_6_GRUPO10
Ejecutar el entorno:
docker-compose up
Conectarse a la base de datos:
Host: localhost
Puerto: 3306
Usuario: root
Contraseña: root
Base de datos: proyecto

**Validación**

Una vez ejecutado el entorno, puedes validar con:

SHOW TABLES;
O ejecutar consultas como:

SELECT * FROM activo;
Consultas incluidas

El archivo /db/queries.sql contiene consultas para:

Activos por campus y ubicación
Conteo por departamento
Activos en uso por campus
Análisis por año de compra

Reproducibilidad
El proyecto está diseñado para ser completamente reproducible:

La estructura se define en schema.sql
Los datos iniciales en seed.sql
Docker permite levantar el entorno automáticamente

Basta con ejecutar:

docker-compose up

para tener la base de datos lista.
