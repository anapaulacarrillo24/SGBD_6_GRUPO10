SELECT 
  c.nombre AS campus,
  u.nombre AS ubicacion,
  a.descripcion 
FROM activo a
JOIN campus c ON a.id_campus = c.id_campus
JOIN ubicacion u ON a.id_ubicacion = u.id_ubicacion
ORDER BY 1, 2;

SELECT 
  d.nombre AS departamento,
  COUNT(a.id_activo) AS total
FROM activo a
JOIN departamento d ON a.id_departamento = d.id_departamento
GROUP BY d.nombre;

SELECT 
  a.id_activo,
  a.descripcion
FROM activo a
JOIN campus c ON a.id_campus = c.id_campus
WHERE c.nombre= 'TOOF' AND a.estado = 'In Use';

SELECT 
  YEAR(purchase_date) AS año,
  COUNT(*) AS total
FROM activo GROUP BY YEAR(purchase_date)
ORDER BY año;

SELECT 
  id_activo,
  descripcion,
  purchase_date
FROM activo
WHERE YEAR(purchase_date) < '2025';
