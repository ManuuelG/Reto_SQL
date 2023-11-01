USE tienda;

SELECT nombre AS `Nombre de Producto`, precio AS `Euros`, precio AS `Dolares` FROM producto;
SELECT nombre, UPPER(LEFT(nombre, 2)) AS InicialesMayus FROM fabricante;
SELECT nombre, TRUNCATE(precio) AS Precio FROM producto;
SELECT id_fabricante FROM producto;
SELECT DISTINCT id_fabricante FROM producto;
SELECT nombre FROM producto WHERE precio <= 120;
SELECT nombre FROM producto WHERE precio <= 400;
SELECT nombre FROM fabricantes WHERE LENGTH(nombre) = 4;
SELECT nombre FROM producto WHERE nombre LIKE '%monitor%' AND precio < 215;
SELECT nombre, precio FROM producto WHERE precio >= 180 ORDER BY precio DESC, nombre ASC;