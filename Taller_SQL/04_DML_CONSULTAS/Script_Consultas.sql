SELECT * FROM clientes;

SELECT * FROM productos WHERE stock > 10;

SELECT v.id_venta, c.nombre, v.total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente;

SELECT c.nombre, SUM(v.total) AS total_vendido
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.nombre;