# 🐾 Proyecto Base de Datos: Clínica Veterinaria

Este proyecto modela el funcionamiento de una clínica veterinaria mediante un conjunto de sentencias SQL organizadas en tres bloques principales:

- **DDL (Data Definition Language)**: Define la estructura de las tablas y sus relaciones.
- **DML (Data Manipulation Language)**: Inserta registros de ejemplo en las tablas.
- **DQL (Data Query Language)**: Consulta y analiza los datos utilizando funciones, alias y subconsultas.

---

## Link del [video](https://youtu.be/ATIM94IbJuY)

## 📂 Estructura de la Base de Datos (DDL)

La base de datos se llama `veterinaria` y contiene las siguientes tablas:

### 1. `duenios`
Información de los dueños de las mascotas.  
**Claves:**  
- Primaria: `id`

### 2. `especie`
Lista de especies (Perro, Gato, etc.).  
**Claves:**  
- Primaria: `id`

### 3. `raza`
Razas de mascotas asociadas a una especie.  
**Relación:** N:1 con `especie`.  
**Claves:**  
- Primaria: `id`  
- Foránea: `id_especie → especie(id)`

### 4. `mascotas`
Mascotas registradas en la clínica.  
**Relaciones:**  
- N:1 con `raza`  
- N:1 con `especie`  
- N:1 con `duenios`  
**Claves:**  
- Primaria: `id`  
- Foráneas: `id_raza`, `id_especie`, `id_duennio`

### 5. `servicios`
Servicios ofrecidos por la veterinaria.  
**Claves:**  
- Primaria: `id`

### 6. `tratamientos`
Tratamientos médicos que pueden aplicarse durante una visita.  
**Claves:**  
- Primaria: `id`

### 7. `visitas`
Registra las visitas de mascotas a la clínica.  
**Relaciones:**  
- N:1 con `mascotas`  
- N:1 con `servicios`  
**Claves:**  
- Primaria: `id`  
- Foráneas: `id_mascota`, `id_servicio`

### 8. `visita_tratamientos`
Tabla intermedia para una relación muchos-a-muchos entre `visitas` y `tratamientos`.  
**Relación:** N:M  
**Claves:**  
- Primaria compuesta: `(id_visita, id_tratamiento)`  
- Foráneas: `id_visita`, `id_tratamiento`

---

## ✍️ Datos de Ejemplo (DML)

Se insertaron registros de ejemplo en cada tabla:

- **4 especies**: Perro, Gato, Caballo, Roedores
- **7 razas**
- **5 dueños**
- **10 mascotas**
- **6 servicios veterinarios**
- **10 visitas**
- **10 tratamientos**
- **12 asociaciones visita-tratamiento**

Esto permite hacer pruebas y consultas representativas.

---

## 🔍 Consultas SQL (DQL)

A continuación, se realizaron **15 consultas SQL** demostrando el uso de funciones, alias y subconsultas:

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 2. Alias en campos
```sql
SELECT m.nombre, datos.edad_estimada
FROM mascotas m
JOIN (
  SELECT id, YEAR(CURDATE()) - YEAR(fecha_nacimiento) AS edad_estimada
  FROM mascotas
) AS datos ON m.id = datos.id;
```

### 3. Alias en subconsultas
```sql
SELECT m.nombre, datos.edad_estimada
FROM mascotas m
JOIN (
  SELECT id, YEAR(CURDATE()) - YEAR(fecha_nacimiento) AS edad_estimada
  FROM mascotas
) AS datos ON m.id = datos.id;
```

### 4. Función de agregación: COUNT
```sql
SELECT COUNT(*) AS total_visitas FROM visitas;
```

### 5. Función de agregación: AVG
```sql
SELECT AVG(precio) AS precio_promedio_servicios FROM servicios;
```

### 6. Función de agregación: MAX
```sql
SELECT MAX(precio) AS servicio_mas_caro FROM servicios;
```

### 7. Uso de CONCAT
```sql
SELECT CONCAT(nombre, ' (', sexo, ')') AS nombre_completo FROM mascotas;
```

### 8. UPPER y LOWER
```sql
SELECT UPPER(nombre) AS nombre_mayuscula, LOWER(sexo) AS sexo_minuscula FROM mascotas;
```

### 9. Funciones LENGTH, SUBSTRING, TRIM
```sql
SELECT 
  nombre,
  LENGTH(nombre) AS largo_nombre,
  SUBSTRING(nombre, 1, 3) AS primeras_letras,
  TRIM(nombre) AS nombre_sin_espacios
FROM mascotas;
```

### 10. Función ROUND
```sql
SELECT nombre, ROUND(precio, 2) AS precio_redondeado FROM servicios;
```

### 11. Uso de JOIN con alias
```sql
SELECT 
  v.fecha, 
  m.nombre AS mascota, 
  s.nombre AS servicio, 
  d.nombre AS dueno
FROM visitas v
JOIN mascotas m ON v.id_mascota = m.id
JOIN servicios s ON v.id_servicio = s.id
JOIN duenios d ON m.id_duennio = d.id;
```

### 12. Agregación con GROUP BY
```sql
SELECT 
  m.nombre AS mascota, 
  COUNT(v.id) AS cantidad_visitas
FROM visitas v
JOIN mascotas m ON v.id_mascota = m.id
GROUP BY m.nombre;
```

### 13. Agregación con GROUP BY y alias
```sql
SELECT 
  s.nombre AS servicio, 
  AVG(s.precio) AS promedio_precio
FROM servicios s
GROUP BY s.nombre;
```

### 14. Uso de IF en campos
```sql
SELECT 
  nombre,
  IF(vacunada = 1, 'Sí', 'No') AS esta_vacunada
FROM mascotas;
```

### 15. Mascotas con nombre corto
```sql
SELECT nombre 
FROM mascotas 
WHERE LENGTH(nombre) < 5;
```
