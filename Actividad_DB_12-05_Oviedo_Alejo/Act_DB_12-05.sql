CREATE DATABASE ProdInformaticos;
GO

USE ProdInformaticos;
GO

CREATE TABLE Producto(
ProductoID INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(30),
Precio DECIMAL(10,2),
Stock INT
);
GO

INSERT INTO Producto (Nombre, Precio,Stock)
VALUES
('Mouse inalámbrico Logitech', 25.99, 50),
('Teclado mecánico Redragon', 59.90, 35),
('Monitor LED 24" Samsung', 189.99, 20),
('Disco SSD 1TB Kingston', 89.50, 40),
('Memoria RAM 16GB DDR4 Corsair', 72.30, 30),
('Placa madre ASUS B550', 135.00, 15),
('Procesador AMD Ryzen 5 5600X', 199.99, 25),
('Gabinete ATX con RGB', 65.45, 18),
('Fuente 650W 80 Plus Bronze', 58.75, 22),
('Webcam HD Logitech C920', 79.99, 12);
GO

ALTER TABLE Producto
ALTER COLUMN Precio INT NOT NULL;
GO


--Visualizamos los datos:
SELECT * FROM Producto

--Funcion Count
SELECT COUNT(*) AS Cantidad_Productos
FROM Producto;

--Funcion SUM
SELECT SUM(Precio) AS SumaPrecios FROM Producto;

--Funcion AVG
SELECT AVG(Precio) AS PromPrecios FROM Producto;

--funcion MAX
SELECT MAX(Precio) AS PrecioMax FROM Producto;

--funcion MIN
SELECT MIN(Precio) AS PrecioMin FROM Producto;

--Cuenta las lineas que cumplen con ese criterio

SELECT COUNT(*) AS Cantidad_Productos
FROM Producto
WHERE Precio > 100;