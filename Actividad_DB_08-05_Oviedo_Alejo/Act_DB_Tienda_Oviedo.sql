--Creamos la base de datos

CREATE DATABASE Tienda;
GO

--Nos posicionamos en dicha base de datos:

USE Tienda;
GO

--Creamos la tabla producto:

CREATE TABLE Producto(
ProductoID INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(50),
Apellido NVARCHAR(50),
Dni CHAR(8),
Precio DECIMAL(10,2)
);
GO

--Agregamos la columna stock a la tabla
ALTER TABLE Producto ADD Stock int;
GO

--La quitamos

ALTER TABLE Producto DROP COLUMN Stock;
GO

--Eliminamos la tabla completa

DROP TABLE Producto;
GO

--Volvemos a crearla, sin la columna Apellido ni dni (Para poder ingresar los datos):

CREATE TABLE Producto(
ProductoID INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(50),
--Apellido NVARCHAR(50),
--Dni CHAR(8),
Precio DECIMAL(10,2)
);
GO

--Insertamos datos:

INSERT INTO Producto(Nombre,Precio)
values	('Monitor', 100.20),
('Teclado', 5.50),
('Mouse', 30.99),
('Combo tec+mouse', 140.00),
('Monitor xxl',200.99),
('Mec Teclado',120.50),
('Auriculares', 80.00),
('Webcam', 60.00),
('Parlantes', 150.75),
('Micrófono', 110.00);

GO

--Consultamos los productos registrados en la tabla

SELECT * FROM Producto; 
GO

--Modificamos el valor del producto con ID = 2 a 30.00

UPDATE Producto
SET Precio = 30.00
WHERE ProductoID = 2;
GO

--Eliminamos el producto con ID = 3

DELETE FROM Producto
WHERE ProductoID = 3;
GO

--Consultamos aquellos productos con valor > 100

SELECT * FROM Producto
WHERE Precio > 100.00;
