ALTER TABLE clientes ADD direccion VARCHAR(150);

ALTER TABLE clientes MODIFY telefono VARCHAR(20) NOT NULL;

ALTER TABLE clientes DROP direccion;

CREATE INDEX idx_nombre_producto ON productos(nombre);