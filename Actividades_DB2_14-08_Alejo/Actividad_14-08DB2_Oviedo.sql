CREATE DATABASE Instituto
USE Instituto;

CREATE TABLE Alumno (
id INT IDENTITY PRIMARY KEY,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL
);


INSERT INTO Alumno (nombre, apellido) VALUES
('Carlos', 'López'),
('María', 'García'),
('José', 'Martínez'),
('Lucía', 'Fernández'),
('Miguel', 'Rodríguez'),
('Sofía', 'Pérez'),
('Diego', 'Sánchez'),
('Valentina', 'Morales'),
('Javier', 'Giménez'),
('Martina', 'Vega'),
('Andrés', 'Cruz');



CREATE PROCEDURE ver_datos_alumnos
AS
BEGIN
SELECT * FROM Alumno
END

EXEC ver_datos_alumnos
