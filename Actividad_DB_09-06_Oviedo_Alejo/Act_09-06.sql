CREATE DATABASE Comercio;
GO
USE Comercio;
GO

CREATE TABLE Categorias(
CategoriaID INT PRIMARY KEY IDENTITY (1,1),
Nombre VARCHAR(50) NOT NULL
);

GO

CREATE TABLE Proveedores(
ProveedorID INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(50) NOT NULL,
Telefono INT
);

GO

CREATE TABLE Productos(
ProductoID INT PRIMARY KEY IDENTITY (1,1),
Nombre VARCHAR(100) NOT NULL,
Precio DECIMAL(10,2) NOT NULL,
CategoriaID INT NOT NULL,
ProveedorID INT NOT NULL,
FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID),
FOREIGN KEY (ProveedorID) REFERENCES Proveedores(ProveedorID)
);

GO

--Registros categorias:
INSERT INTO Categorias (Nombre) VALUES
('Electrónica'),
('Ropa'),
('Alimentos'),
('Bebidas'),
('Limpieza'),
('Papelería'),
('Muebles'),
('Juguetes'),
('Deportes'),
('Mascotas');

--Proveedores:
INSERT INTO Proveedores (Nombre, Telefono) VALUES
('TechCorp', 1123456789),
('ModaExpress', 1134567890),
('Frescos SA', 1145678901),
('Bebidas SRL', 1156789012),
('CleanHouse', 1167890123),
('OfiPlus', 1178901234),
('MueblesAR', 1189012345),
('ToyLand', 1190123456),
('DeporteTotal', 1101234567),
('Mascotienda', 1122334455);

--Productos:
INSERT INTO Productos (Nombre, Precio, CategoriaID, ProveedorID) VALUES
('Smartphone X1', 599.99, 1, 1),
('Camisa Casual', 29.99, 2, 2),
('Manzanas Rojas', 3.50, 3, 3),
('Jugo Natural', 1.20, 4, 4),
('Detergente Max', 4.75, 5, 5),
('Cuaderno A4', 1.10, 6, 6),
('Silla de Oficina', 89.99, 7, 7),
('Muñeca Fashion', 12.50, 8, 8),
('Pelota de Fútbol', 15.00, 9, 9),
('Alimento para Perros', 25.00, 10, 10);

--Visualizar los datos:
SELECT * FROM Productos
SELECT * FROM Categorias
SELECT * FROM Proveedores