CREATE DATABASE Universidad;

GO

USE Universidad;

CREATE TABLE Estudiantes(
EstId INT PRIMARY KEY IDENTITY(1,1),
Nombre NVARCHAR(25),
Apellido NVARCHAR(25),
DNI NVARCHAR(9)
);


INSERT INTO Estudiantes(Nombre,Apellido,DNI)
values ('Bernardino','Valenciano','38936546'),
('Benito','Alegria','26628091'),
('Horacio','Álvarez','45557687'),
('Francisco','Jose Hervás','42126080'),
('Victor','Isern','40733982'),
('Jessica','Acero','41968571'),
('Cloe','Salamanca','30069775'),
('María José','Santamaria','32311146'),
('Dalila','Mercader','28808855');


SELECT * FROM Estudiantes;


ALTER TABLE Estudiantes ADD email NVARCHAR(254);

--Si ya le insertamos datos y agregamos una 
--columna, todas las filas en esa nueva 
--columna tendran un null


UPDATE Estudiantes
SET email  = 'candela80@camino.com'
WHERE EstId = 1;

UPDATE Estudiantes
SET email  = 'aguilerafabian@belmonte.org'
WHERE EstId = 2;

UPDATE Estudiantes
SET email  = 'perlitagonzalez@hotmail.com'
WHERE EstId = 3;

UPDATE Estudiantes
SET email  = 'blanchjoaquin@yahoo.com'
WHERE EstId = 4;

UPDATE Estudiantes
SET email  = 'kbenavides@hotmail.com'
WHERE EstId = 5;

UPDATE Estudiantes
SET email  = 'sosimopages@hotmail.com'
WHERE EstId = 6;

UPDATE Estudiantes
SET email  = 'ana14@portero-aller.com'
WHERE EstId = 7;

UPDATE Estudiantes
SET email  = 'leyrerojas@muniz-urrutia.es'
WHERE EstId = 8;

UPDATE Estudiantes
SET email  = 'margarita01@matas.com'
WHERE EstId = 9;

--toda la base de datos tiene los campos rellenos



TRUNCATE TABLE Estudiantes;

DROP TABLE Estudiantes;