--Ejercicio2  Cafeteria

CREATE DATABASE CafeteriaDB
GO

USE CafeteriaDB
GO

CREATE TABLE Producto(
ProductoID INT,
NombreProducto NVARCHAR(20),
Precio DECIMAL(6,2),
EmpleadoID INT
);
GO

CREATE TABLE Empleado(
Nombre NVARCHAR(10),
Turno NVARCHAR(6), -- MAÑANA,TARDE,NOCHE
Edad INT,
EmpleadoID INT
);
GO


--Comprobamos

INSERT INTO Producto(ProductoID,NombreProducto,Precio,EmpleadoID)
VALUES (100,'Capuccino',4000.00,1)

GO

INSERT INTO Empleado(Nombre,Turno,Edad,EmpleadoID)
VALUES ('Jorge','Mañana',22,1)
GO

SELECT * FROM Producto
SELECT * FROM Empleado