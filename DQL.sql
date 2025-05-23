USE veterinaria;

CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;

SELECT nombre AS nombre_mascota, fecha_nacimiento AS nacimiento FROM mascotas;


SELECT m.nombre, datos.edad_estimada
FROM mascotas m
JOIN (
  SELECT id, YEAR(CURDATE()) - YEAR(fecha_nacimiento) AS edad_estimada
  FROM mascotas
) AS datos ON m.id = datos.id;


SELECT COUNT(*) AS total_visitas FROM visitas;


SELECT AVG(precio) AS precio_promedio_servicios FROM servicios;


SELECT MAX(precio) AS servicio_mas_caro FROM servicios;


SELECT CONCAT(nombre, ' (', sexo, ')') AS nombre_completo FROM mascotas;


SELECT UPPER(nombre) AS nombre_mayuscula, LOWER(sexo) AS sexo_minuscula FROM mascotas;


SELECT 
  nombre,
  LENGTH(nombre) AS largo_nombre,
  SUBSTRING(nombre, 1, 3) AS primeras_letras,
  TRIM(nombre) AS nombre_sin_espacios
FROM mascotas;

SELECT nombre, ROUND(precio, 2) AS precio_redondeado FROM servicios;


SELECT 
  v.fecha, 
  m.nombre AS mascota, 
  s.nombre AS servicio, 
  d.nombre AS dueno
FROM visitas v
JOIN mascotas m ON v.id_mascota = m.id
JOIN servicios s ON v.id_servicio = s.id
JOIN duenios d ON m.id_duennio = d.id;

SELECT 
  m.nombre AS mascota, 
  COUNT(v.id) AS cantidad_visitas
FROM visitas v
JOIN mascotas m ON v.id_mascota = m.id
GROUP BY m.nombre;

SELECT 
  s.nombre AS servicio, 
  AVG(s.precio) AS promedio_precio
FROM servicios s
GROUP BY s.nombre;


SELECT 
  nombre,
  IF(vacunada = 1, 'Sí', 'No') AS esta_vacunada
FROM mascotas;

SELECT nombre 
FROM mascotas 
WHERE LENGTH(nombre) < 5;