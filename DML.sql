USE veterinaria;

INSERT INTO especie (nombre) VALUES 
('Perro'), ('Gato'), ('Caballo'),('Roedores');

INSERT INTO raza (nombre, id_especie) VALUES
('Labrador',1), ('Yorky',1),('Amarillo',2),('Negro',2),('Paso fino',3),('Hamster',4),('Cuy',4);

INSERT INTO duenios (cedula, nombre, telefono, direccion) VALUES
('1102345678', 'Ana Torres', '0991234567', 'Av. Amazonas y Colón'),
('1109876543', 'Luis Martínez', '0987654321', 'Calle 10 de Agosto #45'),
('1101122334', 'Sofía Ramírez', '0976543210', 'Av. La Prensa y El Inca'),
('1105566778', 'Jorge Herrera', '0961237890', 'Calle Los Álamos #100'),
('1109988776', 'Carla Méndez', '0956781234', 'Av. Eloy Alfaro y La Gasca');


INSERT INTO mascotas (nombre, fecha_nacimiento, sexo, vacunada, id_raza, id_especie, id_duennio) VALUES
('Firulais', '2020-06-15', 'Macho', 1, 1, 1, 2),
('Luna', '2021-08-03', 'Hembra', 0, 1, 1, 1),
('Max', '2019-12-10', 'Macho', 1, 3, 2, 3),
('Lamucie', '2022-03-22', 'Hembra', 1, 4, 2, 1),
('Rocky', '2018-09-05', 'Macho', 0, 1, 1, 2),
('Bella', '2020-11-30', 'Hembra', 1, 3, 2, 3),
('Toby', '2023-01-12', 'Macho', 1, 2, 1, 1),
('Maya', '2021-05-07', 'Hembra', 0, 5, 3, 5),
('Coco', '2022-07-18', 'Macho', 1, 6, 4, 5),
('Sasha', '2019-04-25', 'Hembra', 1, 7, 4, 5);

INSERT INTO servicios (nombre, descripcion, precio) VALUES
('Baño', 'Baño completo con productos especiales para mascotas', 15.00),
('Corte de uñas', 'Recorte higiénico y seguro de uñas', 8.00),
('Consulta médica', 'Revisión general por el veterinario', 25.00),
('Vacunación', 'Aplicación de vacunas según el plan de salud', 20.00),
('Desparasitación', 'Tratamiento antiparasitario interno y/o externo', 18.00),
('Estética', 'Corte de pelo y limpieza especializada', 30.00);

INSERT INTO visitas (fecha, id_mascota, id_servicio) VALUES
('2025-05-01', 1, 3), 
('2025-05-02', 2, 1),  
('2025-05-03', 3, 4),  
('2025-05-04', 4, 5),  
('2025-05-05', 5, 2),  
('2025-05-06', 6, 6),  
('2025-05-07', 7, 1),  
('2025-05-08', 8, 3), 
('2025-05-09', 9, 4),  
('2025-05-10', 10, 2);

INSERT INTO tratamientos (nombre, observaciones) VALUES
('Antibiótico oral', 'Administrar cada 12 horas por 7 días'),
('Antiparasitario interno', 'Dosis única, repetir en 15 días si es necesario'),
('Antiinflamatorio', 'Aplicar inyección diaria durante 3 días'),
('Tratamiento de otitis', 'Limpieza diaria del oído y gotas por 5 días'),
('Suplemento vitamínico', 'Agregar al alimento una vez al día por 1 mes'),
('Tratamiento dermatológico', 'Aplicar crema dos veces al día'),
('Antifúngico tópico', 'Uso externo en área afectada por 10 días'),
('Cuidado postoperatorio', 'Revisión de puntos y evitar actividad intensa'),
('Hidratación intravenosa', 'Administrar suero por 4 horas bajo observación'),
('Tratamiento dental', 'Revisión bucal y enjuague antiséptico cada semana');


INSERT INTO visita_tratamientos (id_visita, id_tratamiento) VALUES
(1, 3),  
(2, 1),  
(3, 4),  
(4, 2),  
(5, 5),  
(6, 6),  
(7, 3),  
(7, 7),  
(8, 1),  
(8, 8),  
(9, 9),  
(10, 10); 






