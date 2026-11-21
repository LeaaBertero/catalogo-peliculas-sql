
/*Consulta select de todas las entidades*/
SELECT * FROM Calificacion;
SELECT * FROM genero;
SELECT * FROM pelicula;
SELECT * FROM sucursal;	


/*Insert entidad Genero de peliculas*/
INSERT INTO Genero (NombreGenero) VALUES ('Acción');
INSERT INTO Genero (NombreGenero) VALUES ('Comedia');
INSERT INTO Genero (NombreGenero) VALUES ('Drama');
INSERT INTO Genero (NombreGenero) VALUES ('Ciencia Ficción');
INSERT INTO Genero (NombreGenero) VALUES ('Suspenso');
INSERT INTO Genero (NombreGenero) VALUES ('Terror');

/*Insert entidad Calificación de peliculas*/
INSERT INTO calificacion (NombreCalificacion) VALUES ('PG+13');
INSERT INTO calificacion (NombreCalificacion) VALUES ('ATP');
INSERT INTO calificacion (NombreCalificacion) VALUES ('PG+16');
INSERT INTO calificacion (NombreCalificacion) VALUES ('R+16');

/*Ingreso de datos (Insert) - Entidad (Sucursal) */
INSERT INTO sucursal (NombreSucursal) VALUES ('Calera');
INSERT INTO sucursal (NombreSucursal) VALUES ('Cosquín');
INSERT INTO sucursal (NombreSucursal) VALUES ('Córdoba');


/*Ingreso de datos Entidad (Peliculas)*/
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion) VALUES ('Los juegos del hambre',50.00, 2012, 121); /*Actualizar (Genero, Calificacion, Sucursal)*/
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Django',65.00,2018,110,1,1,2);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Misión imposible', 35.00, 2018, 105, 1, 1, 3);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Hombres de negro', 35.00, 2019, 96, 2, 2, 1);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('El futbol o yo', 45.00, 2017, 85, 2, 2, 2);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('El camino', 100.00, 2019, 103, 3, 1, 1);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Secreta obsesión', 85.00, 2019, 98, 3, 3, 3);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Los vengadores', 100.00, 2015, 98, 4, 2, 3);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Transformers', 90.00, 2013, 115, 4, 2, 3);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Jurassic Park', 75.00, 1993, 112, 4, 2, 1);	
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Los inquilinos', 45.00, 1998, 90, 5, 1, 2);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Tiburon', 75.00, 1975, 95, 5, 1, 1);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('Mamá', 50.00, 2008, 100, 6, 3, 1);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('La llorona', 80.00, 2018, 92, 6, 3, 2);
INSERT INTO pelicula (Titulo, Precio,  Anio, Duracion, IdGenero, IdCalificacion, IdSucursal) VALUES ('El Conjuro', 95.00, 2014, 98, 6, 4, 2);

/*Actualizo "Los Juegos del Hambre - Genero - Calificación y sucursal a la que pertenece"*/
UPDATE pelicula SET IdGenero = 1, IdCalificacion = 1, IdSucursal = 1 WHERE Titulo = 'Los Juegos del Hambre';

/*Actualizo Nombres de peliculas con acento correspondiente*/
UPDATE pelicula SET Titulo = 'Secreta Obsesión' WHERE IdPelicula = 7;
UPDATE pelicula SET Titulo = 'Tiburón' WHERE IdPelicula = 12;
UPDATE pelicula SET Titulo = 'El fútbol o yo' WHERE IdPelicula = 5;

/*Actualizo calificacion de pelicula de Mamá*/
UPDATE Pelicula SET IdCalificacion = 1 WHERE IdPelicula = 13;

/*Actualización de la entidad - MODELOS*/
UPDATE pelicula SET Precio = Precio * 15.5;

/*Delete registros de entidad Pelicula, por duplicado de datos*/
DELETE FROM pelicula WHERE IdPelicula = 16;
DELETE FROM pelicula WHERE IdPelicula = 17;
DELETE FROM pelicula WHERE IdPelicula = 18;
DELETE FROM pelicula WHERE IdPelicula = 19;
DELETE FROM pelicula WHERE IdPelicula = 20;
DELETE FROM pelicula WHERE IdPelicula = 21;
DELETE FROM pelicula WHERE IdPelicula = 22;
DELETE FROM pelicula WHERE IdPelicula = 23;
DELETE FROM pelicula WHERE IdPelicula = 24;
DELETE FROM pelicula WHERE IdPelicula = 25;
DELETE FROM pelicula WHERE IdPelicula = 26;
DELETE FROM pelicula WHERE IdPelicula = 27;
DELETE FROM pelicula WHERE IdPelicula = 28;
DELETE FROM pelicula WHERE IdPelicula = 29;
DELETE FROM pelicula WHERE IdPelicula = 30;

/*delete registros de entidad sucursales - por Duplicado de datos*/
DELETE FROM sucursal WHERE IdSucursal = 4;
DELETE FROM sucursal WHERE IdSucursal = 5;
DELETE FROM sucursal WHERE IdSucursal = 6;

/*Delete registros de entidad Sucursal por duplicado de datos*/
DELETE FROM sucursal WHERE IdSucursal = 7;
DELETE FROM sucursal WHERE IdSucursal = 8;
DELETE FROM sucursal WHERE IdSucursal = 9;
DELETE FROM sucursal WHERE IdSucursal = 10;
DELETE FROM sucursal WHERE IdSucursal = 11;
DELETE FROM sucursal WHERE IdSucursal = 12;

/*Delete registros de entidad Genero por (Duplicado de datos)*/
DELETE FROM genero WHERE IdGenero = 7;
DELETE FROM genero WHERE IdGenero = 8;
DELETE FROM genero WHERE IdGenero = 9;
DELETE FROM genero WHERE IdGenero = 10;
DELETE FROM genero WHERE IdGenero = 11;
DELETE FROM genero WHERE IdGenero = 12;

/*Delete registros de entidad Calificación (Duplicado de datos) */
DELETE FROM calificacion WHERE IdCalificacion = 5;
DELETE FROM calificacion WHERE IdCalificacion = 6;
DELETE FROM calificacion WHERE IdCalificacion = 7;
DELETE FROM calificacion WHERE IdCalificacion = 8;







/*Trabajo Práctico N° 4 - Video Club_BD*/


/* 1.- Se solicita saber el título, duración, año y precio de las películas cuyo género
sea drama. */

SELECT p.Titulo, p.Duracion, p.Anio, p.Precio FROM pelicula 
p INNER JOIN genero g ON p.IdGenero = g.IdGenero WHERE g.NombreGenero = 'Drama';


/* 2.- Se solicita el título, duración, año y precio de las películas cuya
antigüedad sea superior a 15 años respecto a hoy. */

SELECT Titulo, Duracion, Anio, Precio 
FROM pelicula WHERE YEAR (NOW()) - Anio > 15;

/* 3.- Se solicita saber el título, duración, año de las películas que se encuentran en
la sucursal de Córdoba. */

SELECT Titulo, Duracion, Anio FROM pelicula WHERE IdSucursal = 3;

SELECT p.titulo, p.duracion, p.anio FROM pelicula p 
INNER JOIN sucursal s ON p.IdSucursal = s.IdSucursal WHERE s.NombreSucursal = 'Córdoba';


/* 4.- Se desea saber la cantidad de películas que pertenecen a la sucursal
Cosquín. */

SELECT COUNT(*) AS cantidad_peliculas FROM pelicula p 
INNER JOIN sucursal s ON p.IdSucursal = s.IdSucursal WHERE s.NombreSucursal = 'Cosquin';

/* 5.- Se desea saber el nombre del título, el nombre del género y el nombre de la
calificación de las películas de la sucursal Córdoba. */

SELECT p.titulo AS Nombre_titulo,
g.NombreGenero AS Nombre_genero,
c.NombreCalificacion FROM pelicula p
INNER JOIN genero g ON p.IdGenero = g.IdGenero
INNER JOIN calificacion c ON p.IdCalificacion = c.IdCalificacion
INNER JOIN sucursal s ON p.IdSucursal = s.IdSucursal WHERE s.NombreSucursal = 'Cordoba';	

/* 6.Se desea saber el monto total que se tiene en películas en la sucursal de La
Calera. */

SELECT SUM(precio) AS Monto_total
FROM pelicula WHERE IdSucursal = 1;

/* 7.Se desea saber el promedio de antigüedad de las películas por calificación. */

SELECT IdCalificacion, AVG (2026 - anio) AS promedio_antiguedad 
FROM pelicula GROUP BY IdCalificacion;


/* 8.- Se desea saber cuáles son los géneros que superan el monto de $150 en la
suma de sus películas. */


SELECT genero
FROM (SELECT g.nombreGenero AS genero, 
SUM(p.precio) AS total
FROM Pelicula p
JOIN Genero g ON p.IdGenero = g.IdGenero
GROUP BY g.nombreGenero) AS resultado
WHERE total > 150;

/* 9.- Se solicita saber el título, precio, año, duración, nombre de género y nombre
de sucursal de las películas cuya calificación sea +PG13 */

SELECT p.Titulo, p.precio, p.anio, p.duracion, g.NombreGenero 
AS nombre_Genero, s.nombreSucursal FROM pelicula p
JOIN genero g ON p.IdGenero = g.IdGenero JOIN sucursal s ON p.IdSucursal = s.IdSucursal
JOIN calificacion c ON p.IdCalificacion = c.IdCalificacion WHERE c.NombreCalificacion = 'PG+13';

/* 10.- Se desea saber cuántas películas y qué tiempo me llevaría ver todas las
películas que se encuentran en la sucursal La Calera. */


SELECT COUNT(*) AS cantidad_peliculas,
SUM(duracion) AS tiempo_total_minutos
FROM Pelicula WHERE IdSucursal = 1;



