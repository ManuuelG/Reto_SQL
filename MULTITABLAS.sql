USE tienda;

SELECT fabricante.id AS `Id del fabricante`, fabricante.nombre `Nombre del fabricante`, producto.nombre AS `Nombre del Producto`
FROM fabricante
LEFT JOIN producto ON fabricante.id = producto.id_fabricante
ORDER BY fabricante.id;

SELECT fabricante.id AS `Id del fabricante`, fabricante.nombre `Nombre del fabricante`, producto.nombre AS `Nombre del Producto`
FROM fabricante
LEFT JOIN producto ON fabricante.id = producto.id_fabricante
WHERE producto.id IS NULL;

