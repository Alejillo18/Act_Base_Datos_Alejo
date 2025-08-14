CREATE TABLE Alumno (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--GENERATED ALWAYS AS IDENTITY Es para que sea autoincremental, tambien 
--se puede utilizar SERIAL, pero es mas viejo

nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL
);

CREATE TABLE Profesor (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR (25) NOT NULL,
apellido VARCHAR(25) NOT NULL ,
materia VARCHAR (100) NOT NULL
);

CREATE TABLE Curso (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
profesor_id INT NOT NULL,
FOREIGN KEY (profesor_id)REFERENCES Profesor(id)
);


--realizamos una tabla puente, para la relacion de alumnos a cursos

CREATE TABLE Alumno_curso (
alumno_id INT NOT NULL,
curso_id INT NOT NULL,
PRIMARY KEY (alumno_id, curso_id),
FOREIGN KEY (alumno_id) REFERENCES Alumno(id),
FOREIGN KEY (curso_id) REFERENCES Curso(id)
);




INSERT INTO Profesor (nombre, apellido, materia) VALUES
('Juan', 'Pérez', 'Matemáticas'),
('Laura', 'Gómez', 'Historia'),
('Pedro', 'Martínez', 'Física'),
('Ana', 'Fernández', 'Química'),
('Luis', 'Rodríguez', 'Lengua');


INSERT INTO Curso (nombre, profesor_id) VALUES
('Álgebra I', 1),
('Historia Moderna', 2),
('Física Clásica', 3),
('Química Orgánica', 4),
('Literatura Española', 5);

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
('Andrés', 'Cruz'),
('Camila', 'Ruiz'),
('Tomás', 'Navarro'),
('Paula', 'Silva'),
('Ignacio', 'Torres'),
('Florencia', 'Castro'),
('Franco', 'Romero'),
('Micaela', 'Ramos'),
('Agustín', 'Herrera'),
('Julieta', 'Mendoza'),
('Federico', 'Luna'),
('Antonella', 'Suárez'),
('Matías', 'Varela'),
('Bianca', 'Campos'),
('Santiago', 'Figueroa'),
('Pilar', 'Peralta'),
('Bruno', 'Núñez'),
('Morena', 'Correa'),
('Lucas', 'Aguilar'),
('Carla', 'Domínguez');

--Ahora debemos realizar la tabla de alumno_curso, la cual debe relacionar id de alumnos, con el id del curso.
INSERT INTO Alumno_curso(alumno_id, curso_id) VALUES
(1,1),(1,2),(1,3), --Carlos esta en los cursos algebra historia y fisica
(2, 1), (2, 4),
(3, 2), (3, 5),
(4, 3), (4, 5),
(5, 1), (5, 3), (5, 4),
(6, 2), (6, 4),
(7, 1), (7, 5),
(8, 3), (8, 4), (8, 5),
(9, 2), (9, 3),
(10, 1), (10, 2), (10, 5),
(11, 1), (11, 3),
(12, 2), (12, 4), (12, 5),
(13, 3), (13, 5),
(14, 1), (14, 4),
(15, 2), (15, 3), (15, 4),
(16, 4), (16, 5),
(17, 1), (17, 2),
(18, 3), (18, 4), (18, 5),
(19, 1), (19, 5),
(20, 2), (20, 3),
(21, 1), (21, 2), (21, 4),
(22, 3), (22, 5),
(23, 2), (23, 4), (23, 5),
(24, 1), (24, 3),
(25, 3), (25, 4),
(26, 1), (26, 2), (26, 5),
(27, 2), (27, 3),
(28, 4), (28, 5),
(29, 1), (29, 3), (29, 5),
(30, 2), (30, 4)
;

--creamos una vista para mostrar nombre completo de los alumnos, profesores, curso 

CREATE OR REPLACE VIEW vista_alumnos_curso_profe AS
SELECT 
Al.id as alumno_id,
Al.nombre || ' ' || Al.apellido As Alumno,
Cu.nombre As curso,
Prof.nombre ||' '|| Prof.apellido as Profesor
FROM Alumno_curso ac
INNER JOIN Alumno Al ON ac.alumno_id = Al.id
INNER JOIN Curso Cu ON ac.curso_id = Cu.id
INNER JOIN Profesor Prof ON Cu.profesor_id = Prof.id
ORDER BY alumno_id, curso;


select * From vista_alumnos_curso_profe
