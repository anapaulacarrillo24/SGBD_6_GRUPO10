# SGBD_6_GRUPO10
documentación , modelado y consultas /
Este repositorio contiene la caracterizacion del sistema de persistencia de datos (datasets) cuyo objetivo es la implementación de un MVP de un sistema WMS para la gestión de activos fijos para el departamento "Skilled Trade" en multiples campus de la universidad de Austin, tx.

Ejecucion del proyecto :
Opción 1: Con Docker (recomendado)
Ejecutar:
docker-compose up
Conectarse a la base de datos:
Host: localhost
Puerto: 3306
Usuario: root
Contraseña: root
Base de datos: proyecto

Opción 2: Manual
Crear base de datos:
CREATE DATABASE proyecto;
USE proyecto;
Ejecutar:
db/schema.sql
db/seed.sql
Estructura del proyecto
/db/schema.sql → creación de tablas
/db/seed.sql → datos de consulta


“Se incluye docker-compose para reproducibilidad del entorno, aunque también se puede ejecutar manualmente mediante los scripts SQL incluidos”
docker-compose.yml → entorno automatizado
