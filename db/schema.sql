CREATE DATABASE IF NOT EXISTS proyecto;
USE proyecto;

CREATE TABLE campus (
    id_campus INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE categoria_activo (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE ubicacion (
    id_ubicacion INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_campus INT NOT NULL,
    FOREIGN KEY (id_campus) REFERENCES campus(id_campus)
) ENGINE=InnoDB;

CREATE TABLE activo (
    id_activo INT AUTO_INCREMENT PRIMARY KEY,
    serial_number VARCHAR(100),
    descripcion VARCHAR(255) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    condicion VARCHAR(50),
    purchase_date DATE,
    id_categoria INT NOT NULL,
    id_departamento INT NOT NULL,
    id_ubicacion INT NOT NULL,
    id_campus INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria_activo(id_categoria),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion(id_ubicacion),
    FOREIGN KEY (id_campus) REFERENCES campus(id_campus)
) ENGINE=InnoDB;

CREATE INDEX idx_activo_estado ON activo(estado);
CREATE INDEX idx_activo_categoria ON activo(id_categoria);
CREATE INDEX idx_activo_departamento ON activo(id_departamento);
CREATE INDEX idx_activo_ubicacion ON activo(id_ubicacion);

