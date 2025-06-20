CREATE DATABASE Biblioteca;
GO
USE Biblioteca;
GO

CREATE TABLE Autor(
AutorID INT PRIMARY KEY,
Nombre VARCHAR(100)
);

--Implementamos CHECK para verificar a la hora de insertar que la edad cumpla con la condicion que se solicita, ademas DEFAULT para nacionalidad

CREATE TABLE Estudiante(
EstudianteID INT PRIMARY KEY,
Nombre VARCHAR(100),
Edad INT CHECK (Edad BETWEEN 11 AND 19),
Nacionalidad VARCHAR(75) DEFAULT 'Argentina'
);


--Aplicamos Restriccion UNIQUE a los nombres de los libros
CREATE TABLE Libro(
LibroID INT PRIMARY KEY,
Titulo VARCHAR(200) UNIQUE,
AutorID INT,
FOREIGN KEY(AutorID) REFERENCES Autor(AutorID)
);


CREATE TABLE Prestamo(
PrestamoID INT PRIMARY KEY,
FechaPrestamo DATE,
EstudianteID INT,
FOREIGN KEY(EstudianteID)REFERENCES Estudiante(EstudianteID)
);

CREATE TABLE DetallePrestamo(
DetalleID INT PRIMARY KEY,
FechaDevolucion DATE,
PrestamoID INT,
LibroID INT,
FOREIGN KEY(PrestamoID)REFERENCES Prestamo(PrestamoID),
FOREIGN KEY(LibroID) REFERENCES Libro(LibroID)
);

GO

--Insertamos autores
INSERT INTO Autor VALUES (1, 'Julio Cortázar'),(2, 'Gabriel García Márquez'),(3, 'Jorge Luis Borges'),(4, 'Laura Esquivel');


--Instertamos libros
INSERT INTO Libro VALUES (1, 'Rayuela', 1), (2, 'Cien años de soledad', 2),(3, 'Ficciones', 3),(4, 'El Aleph', 3), (5, 'Como agua para chocolate', 4); 

--Insertamos Estudiantes
INSERT INTO Estudiante VALUES (1, 'Ana Pérez',12,'Uruguay');
INSERT INTO Estudiante VALUES (2,'Lucas Fernández',14,default); --Se divide ya que si lo coloco todo los insert juntos me da error
INSERT INTO Estudiante VALUES (3, 'Sofía Ramírez',17,'Argentina'); 

 --Insertamos Prestamos
INSERT INTO Prestamo VALUES (1,'2025-06-01',1),(2, '2025-06-03',2), (3,'2025-06-05',3); 

 --Insertamos los detalles de dicho prestamo
INSERT INTO DetallePrestamo VALUES (1,'2025-06-10',1,1),(2,'2025-06-11',1,3),(3,'2025-06-13',2,2),(4,'2025-06-15',3,4),(5,'2025-06-16',3,5),(6,'2025-06-25',1,5);



SELECT * FROM libro;
SELECT * FROM Estudiante;
SELECT * FROM Prestamo;
SELECT * FROM DetallePrestamo;


--Creamos una vista que muestre segun la fecha de hoy, los prestamos que vencen en los proximos dias
--lAS VISTAS DEBEN TENER SI O SI ,SI ESTAN DESPUES DE UN SELECT O ALGUNA SENTENCIA SIMILAR, UN GO ANTERIOR Y POSTERIOR
GO

CREATE VIEW PrestamosPorVencer AS
SELECT DetalleID, FechaDevolucion
FROM DetallePrestamo
WHERE DATEDIFF (DAY ,GETDATE(), FechaDevolucion) BETWEEN 0 AND 7;

GO


SELECT * FROM PrestamosPorVencer