1.Creación de la base de datos

CREATE DATABASE ecommerce;  
USE ecommerce;

2.Creación de la tabla usuarios

CREATE TABLE usuarios (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre_usuario VARCHAR(50) NOT NULL,  
    correo VARCHAR(100) NOT NULL UNIQUE,  
    contraseña VARCHAR(255) NOT NULL  
);

3.Creación de la tabla productos

CREATE TABLE productos (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    nombre VARCHAR(100) NOT NULL,  
    descripcion TEXT,  
    precio DECIMAL(10,2) NOT NULL,  
    stock INT NOT NULL  
);

4.Creación de la tabla carrito

CREATE TABLE carrito (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    usuario_id INT NOT NULL,  
    producto_id INT NOT NULL,  
    cantidad INT NOT NULL,  
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),  
    FOREIGN KEY (producto_id) REFERENCES productos(id)  
);

5.Creación de la tabla compras

CREATE TABLE compras (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    usuario_id INT NOT NULL,  
    total DECIMAL(10,2) NOT NULL,  
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP,  
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)  
);

6.Se insertan los usuarios

INSERT INTO usuarios (nombre_usuario, correo, contraseña) VALUES  
('brayan02', 'brayan@gmail.com', 'clave123'),  
('pepe121', 'pepe@gmail.com', 'clave456'),  
('camila13', 'camila@gmail.com', 'clave789');

7.Se insertan los productos

INSERT INTO productos (nombre, descripcion, precio, stock) VALUES  
('Laptop Lenovo', 'Laptop con 8GB RAM y SSD 256GB', 1500000, 10),  
('Mouse Logitech', 'Mouse inalámbrico de alta precisión', 80000, 50),  
('Teclado Redragon', 'Teclado mecánico retroiluminado', 120000, 30);

8.Se insertan los carritos

INSERT INTO carrito (usuario_id, producto_id, cantidad) VALUES  
(1, 1, 1),  
(2, 2, 2),  
(3, 3, 1);

9.Se insertan las compras

INSERT INTO compras (usuario_id, total) VALUES  
(1, 1500000),  
(2, 160000),  
(3, 120000);


