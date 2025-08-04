
-- Crear tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Crear tabla Compras
CREATE TABLE Compras (
    id_compra INT PRIMARY KEY,
    libro VARCHAR(100),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Insertar datos en Clientes
INSERT INTO Clientes (id_cliente, nombre) VALUES
(1, 'Sofía'),
(2, 'Martín'),
(3, 'Lucía');

-- Insertar datos en Compras
INSERT INTO Compras (id_compra, libro, id_cliente) VALUES
(101, 'El Principito', 1),
(102, 'Cien años de soledad', 2),
(103, 'Harry Potter', 1);

--Inner Join
SELECT 
    Clientes.nombre,
    Compras.libro
FROM 
    Clientes
INNER JOIN 
    Compras ON Clientes.id_cliente = Compras.id_cliente;

select * from Clientes;
select * from Compras;


/*
Comentario de bloque
*/
--Full Outer Join
SELECT 
    Clientes.id_cliente AS cliente_id,
    Clientes.nombre,
    Compras.id_compra,
    Compras.libro
FROM 
    Clientes
FULL OUTER JOIN Compras ON Clientes.id_cliente = Compras.id_cliente;


--Left Join: 
SELECT 
    Clientes.id_cliente AS cliente_id,
    Clientes.nombre,
    Compras.id_compra,
    Compras.libro
FROM 
    Clientes
LEFT JOIN Compras ON Clientes.id_cliente = Compras.id_cliente;

--Right Join:
SELECT 
    Clientes.id_cliente AS cliente_id,
    Clientes.nombre,
    Compras.id_compra,
    Compras.libro
FROM 
    Clientes
RIGHT JOIN Compras ON Clientes.id_cliente = Compras.id_cliente;