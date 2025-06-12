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
('Alimentos'),
('Ropa'),
('Juguetes'),
('Hogar'),
('Libros'),
('Herramientas'),
('Deportes'),
('Bebidas'),
('Mascotas');

--Proveedores:
INSERT INTO Proveedores (Nombre, Telefono) VALUES
('Proveedor Uno', '123456789'),
('Proveedor Dos', '234567890'),
('Proveedor Tres', '345678901'),
('Proveedor Cuatro', '456789012'),
('Proveedor Cinco', '567890123'),
('Proveedor Seis', '678901234'),
('Proveedor Siete', '789012345'),
('Proveedor Ocho', '890123456'),
('Proveedor Nueve', '901234567'),
('Proveedor Diez', '012345678');

--Productos:
INSERT INTO Productos (Nombre, Precio, CategoriaID, ProveedorID) VALUES
('Televisor LED 32"', 120000.00, 1, 1),
('Galletas Dulces', 450.00, 2, 2),
('Campera de Cuero', 18000.00, 3, 3),
('Muñeca Articulada', 3200.50, 4, 4),
('Aspiradora 1800W', 30000.00, 5, 5),
('Libro de Python', 7500.00, 6, 6),
('Taladro Eléctrico', 15000.00, 7, 7),
('Pelota de Fútbol', 6500.00, 8, 8),
('Agua Mineral 2L', 500.00, 9, 9),
('Alimento para Gatos', 3500.00, 10, 10);

--Visualizar los datos:
SELECT * FROM Productos
SELECT * FROM Categorias
SELECT * FROM Proveedores