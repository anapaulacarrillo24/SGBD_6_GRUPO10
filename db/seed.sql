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

INSERT INTO activo (
  serial_number,
  descripcion,
  estado,
  condicion,
  purchase_date,
  id_categoria,
  id_departamento,
  id_ubicacion,
  id_campus
)
VALUES
('TX611714', 'Emissions Testing Equipment', 'In Use', 'Good', '2022-05-02', 1, 3, 1, 1),
('0924E03657', 'Heat Pump', 'In Use', 'Good', '2022-07-10', 4, 2, 2, 2);
