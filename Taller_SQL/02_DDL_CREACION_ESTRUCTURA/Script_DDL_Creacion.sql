CREATE DATABASE tienda_tecnologia;
USE tienda_tecnologia;

CREATE TABLE clientes (
 id_cliente INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 email VARCHAR(100) UNIQUE,
 telefono VARCHAR(20),
 fecha_registro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE productos (
 id_producto INT AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 precio DECIMAL(10,2) NOT NULL,
 stock INT NOT NULL,
 activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE ventas (
 id_venta INT AUTO_INCREMENT PRIMARY KEY,
 id_cliente INT,
 fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
 total DECIMAL(10,2),
 FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE detalle_venta (
 id_detalle INT AUTO_INCREMENT PRIMARY KEY,
 id_venta INT,
 id_producto INT,
 cantidad INT,
 precio_unitario DECIMAL(10,2),
 FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
 FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);