CREATE DATABASE Automotores;
\c Automotores;

CREATE TABLE Sucursal (
codigo INT PRIMARY KEY,
repuesto VARCHAR,
Stock Boolean
);

CREATE TABLE Cliente(
DNI INT PRIMARY KEY,
apellido varchar,
nombre varchar,
localidad varchar,
fecha date
)

INSERT INTO Sucursal (codigo, repuesto, Stock) VALUES
(1, 'Filtro de aceite', TRUE),
(2, 'Bujía', TRUE),
(3, 'Pastilla de freno', FALSE),
(4, 'Amortiguador', TRUE),
(5, 'Correa de distribución', FALSE),
(6, 'Radiador', TRUE),
(7, 'Batería', TRUE),
(8, 'Filtro de aire', TRUE),
(9, 'Espejo retrovisor', FALSE),
(10, 'Bombilla de faro', TRUE);


INSERT INTO Cliente (DNI, apellido, nombre, localidad, fecha) VALUES
(12345678, 'Gómez', 'Ana', 'Buenos Aires', '2023-05-12'),
(23456789, 'Pérez', 'Carlos', 'Córdoba', '2022-11-03'),
(34567890, 'López', 'María', 'Rosario', '2024-01-25'),
(45678901, 'Fernández', 'Jorge', 'Mendoza', '2023-09-18'),
(56789012, 'Ramírez', 'Lucía', 'La Plata', '2022-07-07'),
(67890123, 'Torres', 'Martín', 'Salta', '2024-02-14'),
(78901234, 'Martínez', 'Paula', 'San Juan', '2023-12-30'),
(89012345, 'Díaz', 'Sofía', 'Mar del Plata', '2022-08-21'),
(90123456, 'Sosa', 'Hernán', 'Neuquén', '2023-10-10'),
(11223344, 'Castro', 'Valentina', 'Santa Fe', '2024-03-01');


select * from Sucursal;
select * from Cliente

