INSERT INTO clientes (nombre, email, telefono) VALUES
('Juan Perez','juan@gmail.com','3001111111'),
('Maria Lopez','maria@gmail.com','3002222222'),
('Carlos Gomez','carlos@gmail.com','3003333333');

INSERT INTO productos (nombre, precio, stock) VALUES
('Laptop',2500000,15),
('Mouse',35000,50),
('Teclado',80000,30),
('Monitor',600000,8),
('USB',40000,100);

INSERT INTO ventas (id_cliente, total) VALUES (1,2580000);

INSERT INTO detalle_venta (id_venta,id_producto,cantidad,precio_unitario) VALUES
(1,1,1,2500000),
(1,2,2,35000);