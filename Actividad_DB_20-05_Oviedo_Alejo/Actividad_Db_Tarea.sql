CREATE DATABASE Supermercado;
USE Supermercado;
GO


CREATE TABLE Articulos(
ID INT PRIMARY KEY IDENTITY (1,1),
Seccion INT,
Nombre VARCHAR (25),
Apellido VARCHAR(25),
CP INT,
Precio DECIMAL(10,2),
);
GO

--Ingresamos los datos

INSERT INTO Articulos (Seccion, Nombre, Apellido, CP, Precio) VALUES
(1, 'Carlos', 'Pérez', 1405, 1250.50),
(2, 'María', 'Gómez', 5000, 299.99),
(3, 'Lucía', 'Martínez', 7600, 45.75),
(2, 'Juan', 'Rodríguez', 1001, 179.00),
(3, 'Sofía', 'Fernández', 2000, 850.00),
(3, 'Mateo', 'Suárez', 3100, 630.20),
(2, 'Camila', 'Romero', 8300, 1299.95),
(1, 'Lucas', 'Díaz', 9000, 75.00),
(2, 'Valentina', 'Molina', 4400, 500.10),
(1, 'Andrés', 'Vega', 1425, 110.00);

GO



--NOT NULL

SELECT * FROM Articulos WHERE CP IS NOT NULL;


--Agregamos una nueva columna a todos los registros, para que sea NULL los datos:

ALTER TABLE Articulos ADD Email VARCHAR(254);
GO

--Agregamos a los articulos de seccion uno un mail generico


UPDATE Articulos
SET Email ='PEPITO@GMAIL.COM'
WHERE Seccion = 1;
SELECT * FROM Articulos;

--NULL

SELECT * FROM Articulos WHERE Email IS NULL;

--Compuertas logicas

--NOT

SELECT * FROM Articulos WHERE NOT Seccion=3;

--AND

SELECT * FROM Articulos WHERE Seccion=3 AND Precio > 100;

--OR

SELECT * FROM Articulos WHERE Seccion = 2 OR Precio < 300;


--IN

SELECT* FROM Articulos WHERE Nombre IN ('Carlos','Maria','Valentina');


--LIKE

SELECT * FROM Articulos WHERE Nombre LIKE ('CARLOS')

--BETWEEN

SELECT * FROM Articulos WHERE Seccion BETWEEN 2 and 3;

