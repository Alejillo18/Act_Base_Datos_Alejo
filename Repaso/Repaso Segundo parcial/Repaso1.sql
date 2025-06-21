--Repaso 2do Parcial DB

--Creamos una base de datos:
CREATE DATABASE Escuela;
GO
USE Escuela;
GO

CREATE TABLE Estudiante (
DNI INT PRIMARY KEY,
Nombre VARCHAR(50),
);

CREATE TABLE Profesor(
DNI INT PRIMARY KEY,
Nombre VARCHAR(50),
);

CREATE TABLE Materia(
MateriaID INT PRIMARY KEY IDENTITY(1,1),
Materia VARCHAR(50) UNIQUE
);

CREATE TABLE Curso(
CursoID INT PRIMARY KEY,
MateriaID INT,
Profesor INT,
Alumnos INT,
FOREIGN KEY (Profesor) REFERENCES Profesor(DNI),
FOREIGN KEY (Alumnos) REFERENCES Estudiante(DNI),
FOREIGN KEY (MateriaID) REFERENCES Materia(MateriaID)
);

--Mostramos la estructura de las tablas:

SELECT DNI,Nombre,Edad FROM Estudiante;
SELECT DNI,Nombre FROM Profesor;
SELECT MateriaID, Materia FROM Materia;
SELECT CursoID,MateriaID,Profesor,Alumnos FROM Curso;

--Le agregamos a Estudiante la columna de Edad: y que ademas la misma sea de entre 17 y 80 años con check.

ALTER TABLE Estudiante ADD Edad INT CHECK(Edad BETWEEN 18 AND 80);

--Insertamos algunos valores:

INSERT INTO Estudiante(DNI,Nombre,Edad) VALUES
(43606507, 'Alejo',23),
(44748495,'Kevin',22),
(45679023,'Maria',20);
--(50390489,'Jorge',15); Este insert, debido al check da un error, ya que la edad no es entre 17 y 80

INSERT INTO Profesor(DNI,Nombre)VALUES
(23456049, 'Ramiro'),
(22345678, 'Lucia');


INSERT INTO Materia(Materia) VALUES 
('Quimica'),
('Fisica');
--(3,'Fisica'); Este ultimo da un error debido al unique del nombre de la materia.


INSERT INTO Curso(CursoID,MateriaID,Profesor,Alumnos) VALUES
(1,1,23456049,45679023),
(2,1,23456049,44748495),
(3,1,23456049,43606507),
(4,2,22345678,45679023),
(5,2,22345678,44748495),
(6,2,22345678,43606507);