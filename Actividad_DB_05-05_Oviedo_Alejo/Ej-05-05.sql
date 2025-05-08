CREATE DATABASE Supermercado;
GO

USE Supermercado;
GO

CREATE TABLE Usuarios(
numberID INT PRIMARY KEY IDENTITY(1,1),
nombre NVARCHAR(25),
apellido NVARCHAR(25),
edad INT, 
dirEmail NVARCHAR(254)
)
GO

INSERT INTO Usuarios (nombre, apellido, edad, dirEmail) VALUES
('Ana', 'Pérez', 28, 'ana.perez@email.com'),
('Luis', 'Gómez', 35, 'luisgomez@gmail.com'),
('Carla', 'Ramos', 22, 'carla.ramos@outlook.com'),
('Martín', 'Sosa', 41, 'martin.sosa@yahoo.com'),
('Sofía', 'Fernández', 30, 'sofiaf@live.com'),
('Pedro', 'Lopez', 19, 'pedro.lopez@email.com'),
('Valeria', 'Mendez', 25, 'valeria.mendez@hotmail.com'),
('Javier', 'Torres', 33, 'jtorres@mail.com'),
('Lucía', 'Moreno', 27, 'lucia.moreno@gmail.com'),
('Emilio', 'Díaz', 45, 'emilio.diaz@empresa.com');

GO

SELECT * FROM Usuarios

SELECT numberID, apellido FROM Usuarios;


UPDATE Usuarios
SET edad=19
WHERE numberID = 1


UPDATE Usuarios
SET dirEmail= 'pepito@gmail.com'
WHERE numberID = 3



SELECT nombre, dirEmail, edad FROM Usuarios
WHERE edad >= 25