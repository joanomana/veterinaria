DROP DATABASE IF EXISTS veterinaria;
CREATE DATABASE veterinaria;
USE veterinaria;

CREATE TABLE duenios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cedula VARCHAR(10) NOT NULL,
  nombre VARCHAR(70) NOT NULL,
  telefono VARCHAR(15) NOT NULL,
  direccion VARCHAR(150) NOT NULL
);

CREATE TABLE especie (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE raza (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  id_especie INT NOT NULL,
  FOREIGN KEY (id_especie) REFERENCES especie(id)
);

CREATE TABLE mascotas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  sexo VARCHAR(30) NOT NULL,
  vacunada BOOLEAN NOT NULL,
  id_raza INT NOT NULL,
  id_especie INT NOT NULL,
  id_duennio INT NOT NULL,
  FOREIGN KEY (id_raza) REFERENCES raza(id),
  FOREIGN KEY (id_especie) REFERENCES especie(id),
  FOREIGN KEY (id_duennio) REFERENCES duenios(id)
);

CREATE TABLE tratamientos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  observaciones VARCHAR(100)
);

CREATE TABLE servicios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(100),
  precio DECIMAL(15) NOT NULL
);

CREATE TABLE visitas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  fecha DATE NOT NULL,
  id_mascota INT NOT NULL,
  id_servicio INT NOT NULL,
  FOREIGN KEY (id_mascota) REFERENCES mascotas(id),
  FOREIGN KEY (id_servicio) REFERENCES servicios(id)
);

-- Relación muchos a muchos: visitas pueden tener varios tratamientos
CREATE TABLE visita_tratamientos (
  id_visita INT NOT NULL,
  id_tratamiento INT NOT NULL,
  PRIMARY KEY (id_visita, id_tratamiento),
  FOREIGN KEY (id_visita) REFERENCES visitas(id),
  FOREIGN KEY (id_tratamiento) REFERENCES tratamientos(id)
);
