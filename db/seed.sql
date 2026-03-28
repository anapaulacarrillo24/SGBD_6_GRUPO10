-- Datos básicos válidos
INSERT INTO campus(nombre) VALUES 
('Northridge'),
('Riverside'),
('San Marcos'),
('TOOF');

INSERT INTO categoria_activo(nombre) VALUES 
('Hardware'),
('Consumable'),
('Tools'),
('Supplies');

INSERT INTO departamento(nombre) VALUES 
('WELD'),
('HVAC'),
('AUTO');

INSERT INTO ubicacion (nombre, id_campus) VALUES
('Container 11B', 1),
('Room 4150', 2),
('Shipping Container', 3),
('Classroom', 4);
