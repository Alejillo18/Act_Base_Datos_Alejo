CREATE DATABASE Negocio;
GO
USE Negocio;
GO
CREATE TABLE empleados(
id INT PRIMARY KEY,
nombre NVARCHAR(25),
puesto NVARCHAR(50),
salario DECIMAL(10,2)
);
GO

INSERT INTO empleados (id, nombre, puesto, salario) VALUES
(1, 'Laura', 'Analista', 50000),
(2, 'Carlos', 'Desarrollador', 62000),
(3, 'Lucía', 'Gerente', 80000),
(4, 'Martín', 'Desarrollador', 58000),
(5, 'Sofía', 'Diseñadora', 47000);

--Mostrar empleados cuyo sueldo es > 50.000
SELECT * FROM empleados
WHERE salario > 50000 ;


-- Mostrar el nombre y puestos de los empleados cuyo puesto sea desarrollador
SELECT nombre,puesto FROM empleados
WHERE puesto = 'Desarrollador' ;

--Mostrar todos los datos de los empleados, ordenados por salario descendente

SELECT * FROM empleados
ORDER BY salario DESC ;

--Insertemos un empleado diego que sea tester y con salario de 45k

INSERT INTO empleados (id,nombre,puesto,salario)
VALUES (6,'Diego','Tester',45000);

--Le subimos el sueldo a los desarrolladores un 10%

UPDATE empleados 
set salario = salario  * 1.1
WHERE puesto = 'Desarrollador';

--Eliminamos todos los empleados cuyo sueldo sea menor a 48k
DELETE FROM empleados
WHERE salario < 48000;


