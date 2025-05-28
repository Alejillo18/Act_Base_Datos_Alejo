CREATE DATABASE Biblioteca;
USE Biblioteca;
GO

CREATE TABLE Autores (
AutorID INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(25)
);
GO

CREATE TABLE Libros(
LibroID INT PRIMARY KEY,
AutorID INT,
FOREIGN KEY (AutorID) REFERENCES Autores (AutorID),
Titulo NVARCHAR(50)
);


--Insertamos 3 autores:
INSERT INTO Autores (AutorID, Nombre) 
VALUES 
 (1, 'Gabriel García Márquez'),
 (2, 'Isabel Allende'),
 (3, 'Jorge Luis Borges');

 --Insertamos 10 libros:
INSERT INTO Libros (LibroID, AutorID, Titulo) 
VALUES 
(1, 1, 'Cien años de soledad'),
(2, 1, 'El amor en los tiempos del cólera'),
(3, 1, 'Crónica de una muerte anunciada');

INSERT INTO Libros (LibroID, AutorID, Titulo) 
VALUES 
(4, 2, 'La casa de los espíritus'),
(5, 2, 'Paula'),
(6, 2, 'Eva Luna'),
(7, 2, 'El cuaderno de Maya');

INSERT INTO Libros (LibroID, AutorID, Titulo) 
VALUES 
(8, 3, 'Ficciones'),
(9, 3, 'El Aleph'),
(10, 3, 'El libro de arena');


Select * From Autores;
Select * From Libros;