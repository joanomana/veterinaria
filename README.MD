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

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```

### 1. Crear una tabla a partir de una consulta
```sql
CREATE TABLE mascotas_vacunadas AS
SELECT * FROM mascotas WHERE vacunada = 1;
```
