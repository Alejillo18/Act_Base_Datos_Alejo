CREATE DATABASE Universidad;
USE Universidad;


CREATE TABLE Estudiantes(
id INT PRIMARY KEY,
nombre NVARCHAR(50),
apellido NVARCHAR(50)
);

INSERT INTO Estudiantes (id , nombre, apellido)
Values
(1,'Ana','Garcia'),
(2,'Juan','Perez'),
(3,'Maria','Lopez'),
(4,'Carlos','Ramirez'),
(5,'Laura','Gomez'),
(6,'Sofia','Diaz'),
(7,'Diego','Sanchez'),
(8,'Luis','Torres'),
(9,'Marta','Flores'),
(10,'Alberto','Navarro');


--Mostrar todos los nombres en mayúsculas

SELECT UPPER(nombre) AS NombreMayus FROM Estudiantes;


--mostrar todos los apellidos en minusculas:

SELECT LOWER(nombre) AS NombreMinus FROM Estudiantes;

--Mostrar longitud del nombre de cada estudiante

SELECT nombre, LEN(nombre) AS LargoNombre FROM Estudiantes;

--mostrar los primeros 3 caracteres del nombre

SELECT nombre, SUBSTRING (nombre, 1, 3) AS InicioNombre FROM Estudiantes;

--Reemplazar todas las a en el apellido por @
SELECT apellido, REPLACE(apellido, 'a', '@') AS ApellidoModificado FROM Estudiantes;

--Concatenar nombre y apellido en una columna llamada NombreCompleto
SELECT CONCAT (TRIM(nombre),'',TRIM(apellido))AS NombreCompleto FROM Estudiantes;
