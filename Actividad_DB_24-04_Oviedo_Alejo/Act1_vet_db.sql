--Base de datos 1: VeterinariaDB

--Creamos la DB

CREATE DATABASE VeterinariaDB
GO


USE VeterinariaDB
GO


--Creamos la tabla para los veterinarios:

CREATE TABLE Veterinario(
VeterinarioID INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(20),
Especialidad NVARCHAR(20),
Telefono VARCHAR(11),--Se utiliza VARCHAR debido a las restricciones que tiene INT
);
GO

--Creamos la tabla para las mascotas:

CREATE TABLE Mascota(
MascotaID INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(25),
Especie NVARCHAR(25),
Edad INT,
VeterinarioID INT
);
GO

--Realizamos una prueba
INSERT INTO Veterinario(Nombre,Especialidad,Telefono)
VALUES ('Pepe','Radiologo',3513707738)
GO

INSERT INTO Mascota(Nombre,Especie,Edad,VeterinarioID)
VALUES ('Rocky', 'Ovejero Aleman', 5,1)
GO


SELECT * FROM Veterinario
SELECT * FROM Mascota