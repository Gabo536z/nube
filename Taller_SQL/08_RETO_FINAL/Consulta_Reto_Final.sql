SELECT 
 c.nombre AS cliente,
 p.nombre AS producto,
 d.cantidad,
 (d.cantidad * d.precio_unitario) AS total_producto,
 v.fecha
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN detalle_venta d ON v.id_venta = d.id_venta
JOIN productos p ON d.id_producto = p.id_producto
WHERE v.total > 100000
ORDER BY v.fecha DESC;