CREATE TABLE campus ( -- primera tabla 
    id_campus INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE categoria_activo ( -- segunda tabla 
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE departamento ( -- tercera tabla 
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE ubicacion (  -- cuarta tabla 
    id_ubicacion INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_campus INT NOT NULL,
    CONSTRAINT fk_ubicacion_campus
        FOREIGN KEY (id_campus)
        REFERENCES campus(id_campus)
);


CREATE TABLE activo ( -- quinta tabla nucleo del modelo 
    id_activo INT PRIMARY KEY,                 
    serial_number VARCHAR(100),
    descripcion VARCHAR(255) NOT NULL,
    estado VARCHAR(50) NOT NULL,           
    condicion VARCHAR(50),               
    purchase_date DATE,

    id_categoria INT NOT NULL,
    id_departamento INT NOT NULL,
    id_ubicacion INT NOT NULL,
    id_campus INT NOT NULL,

  
    CONSTRAINT fk_activo_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categoria_activo(id_categoria),

    CONSTRAINT fk_activo_departamento
        FOREIGN KEY (id_departamento)
        REFERENCES departamento(id_departamento),

    CONSTRAINT fk_activo_ubicacion
        FOREIGN KEY (id_ubicacion)
        REFERENCES ubicacion(id_ubicacion),

    CONSTRAINT fk_activo_campus
        FOREIGN KEY (id_campus)
        REFERENCES campus(id_campus)
);

-- indices 
CREATE INDEX idx_activo_estado ON activo(estado);
CREATE INDEX idx_activo_categoria ON activo(id_categoria);
CREATE INDEX idx_activo_departamento ON activo(id_departamento);
CREATE INDEX idx_activo_ubicacion ON activo(id_ubicacion);

-- Carga de datos 
INSERT INTO campus(nombre) VALUES ('Northridge');
INSERT INTO campus(nombre)VALUES ('Riverside');
INSERT INTO campus (nombre) VALUES ('San Marcos');
INSERT INTO campus (nombre) VALUES ('TOOF');


INSERT INTO categoria_activo(nombre) VALUES ('Hardware');
INSERT INTO categoria_activo(nombre) VALUES ('Consumable');
INSERT INTO categoria_activo(nombre) VALUES ('Tools');
INSERT INTO categoria_activo(nombre) VALUES ('Supplies');

INSERT INTO departamento(nombre) VALUES ('WELD');
INSERT INTO departamento(nombre) VALUES ('HVAC');
INSERT INTO departamento(nombre) VALUES ('AUTO');

SELECT * FROM campus;
SELECT * 
FROM campus
WHERE nombre = 'Northridge';

UPDATE ubicacion
SET id_campus = 1
WHERE id_campus = 2;

DELETE FROM campus
WHERE id_campus = 2;

SELECT * 
FROM campus
WHERE nombre = 'Northridge';

UPDATE ubicacion
SET id_campus = 1
WHERE id_campus = 6;

DELETE FROM campus
WHERE id_campus = 6;


SELECT * FROM campus;

INSERT INTO ubicacion (nombre, id_campus)
VALUES ('Container 11B', 1);  -- Northridge
INSERT INTO ubicacion (nombre, id_campus)
VALUES ('Room 4150', 3);  -- Riverside
INSERT INTO ubicacion (nombre, id_campus)
VALUES ('Shipping Container', 4);      -- San Marcos
INSERT INTO ubicacion (nombre, id_campus)
VALUES ('classroom', 5);      -- TOOF

INSERT INTO activo (
  id_activo,
  serial_number,
  descripcion,
  estado,
  condicion,
  purchase_date,
  id_categoria,
  id_departamento,
  id_campus,
  id_ubicacion
)
VALUES (
 98135,
  'TX611714',
  'Emissions Testing Equipment',
  'In Use',
  'Good',
  '2022-05-02',
  1,  -- Hardware
  3,  -- AUTO
 5,  -- TOOF
   11  -- classroom
);

INSERT INTO activo (
  id_activo,
  serial_number,
  descripcion,
  estado,
  condicion,
  purchase_date,
  id_categoria,
  id_departamento,
  id_campus,
  id_ubicacion
)
VALUES (
 86191,
  '0924E03657',
  'Heat Pump',
  'In Use',
  'Good',
  '2022-07-10',
  4,  -- supplies
  2,  -- HVCA
 3,  -- Riverside
   9  -- classroom
);

DELETE FROM ubicacion
WHERE id_ubicacion = 4;

DELETE FROM ubicacion
WHERE id_ubicacion = 10;

DELETE FROM ubicacion
WHERE id_ubicacion = 9;

INSERT INTO activo (
  id_activo,
  serial_number,
  descripcion,
  estado,
  condicion,
  purchase_date,
  id_categoria,
  id_departamento,
  id_campus,
  id_ubicacion
)
VALUES (
98080,
  'NE071325N',
  'Miller Multimatic 215',
  'In storage',
  'new',
  '2025-01-29',
  3,  -- tools 
  2,  -- HVCA
 1,  -- northridge
   8  -- room
);

VALUES (
 98135,
  'TX611714',
  'Emissions Testing Equipment',
  'In Use',
  'Good',
  '2022-05-02',
  1,  -- Hardware
  3,  -- AUTO
 5,  -- TOOF
   11  -- classroom
);

INSERT INTO activo (
  id_activo,
  serial_number,
  descripcion,
  estado,
  condicion,
  purchase_date,
  id_categoria,
  id_departamento,
  id_campus,
  id_ubicacion
)
VALUES (
 86191,
  '0924E03657',
  'Heat Pump',
  'In Use',
  'Good',
  '2022-07-10',
  4,  -- supplies
  2,  -- HVCA
 3,  -- Riverside
   9  -- classroom
);


DELETE FROM ubicacion
WHERE id_ubicacion = 4;

DELETE FROM ubicacion
WHERE id_ubicacion = 10;

DELETE FROM ubicacion
WHERE id_ubicacion = 9;

INSERT INTO activo (
  id_activo,
  serial_number,
  descripcion,
  estado,
  condicion,
  purchase_date,
  id_categoria,
  id_departamento,
  id_campus,
  id_ubicacion
)
VALUES (
10211,
  '24042667',
  'Vacuum Pump',
  'In Use',
  'Good',
  '2026-01-11',
  3,  -- tools 
  2,  -- HVCA
 4,  -- san marcos 
   1  -- room
);

select * from activo