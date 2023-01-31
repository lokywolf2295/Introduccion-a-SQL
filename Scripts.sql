/*Creamos una tabla comun*/
create database jugos;

/*Creamos una base de datos con su default character modificado*/
CREATE SCHEMA `jugos2` DEFAULT CHARACTER SET utf8 ;

/*eliminamos la base de datos forma sencilla*/
drop schema jugos;

/*Eliminar como lo escribe el editor*/
DROP DATABASE `jugos2`;

/*Para hacerlo desde la linea de comandos*/
/*C:\xampp\mysql\bin>mysql -h localhost -u root -p*/
/*el principio es toda la dirección que puede estar tambien en archivos de programa/mysql/workbench.../bin/continua lo que dice arriba*/
/*luego de ejecutarlo pedirá la contraseña*/

/*para utilizar la tabla de datos*/
use jugos;

/*para visualizar los datos*/
select * from city; /*mysql no es keysencitive ya que no le cambia si usamos mayusculas o minusculas*/
/*pero es buena practica usar los comandos principales en mayuscula y los nombres en minuscula*/

/*creamos la tabla TBClientes con todos sus campos*/
CREATE TABLE TBCLIENTES2(
DNI VARCHAR(20),
NOMBRE VARCHAR(150),
DIRECCION1 VARCHAR(150),
DIRECCION2 VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(50),
CP VARCHAR(10),
EDAD SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,
PRIMERA_COMPRA BIT(1)
);

/*creamos la tabla de los productos con la ayuda del asistente*/
CREATE TABLE `jugos`.`tbproductos2` (
  `producto` VARCHAR(20) NULL,
  `nombre` VARCHAR(150) NULL,
  `envase` VARCHAR(50) NULL,
  `volumen` VARCHAR(20) NULL,
  `sabor` VARCHAR(50) NULL,
  `precio` FLOAT NULL);
  
  /*eliminar tabla con asistente*/
  DROP TABLE `jugos`.`tbproductos2`;
  
  /*eliminar tabla de la manera tradicional*/
  DROP TABLE tbclientes2;
  
  /*insertar datos a las tablas de a un dato*/
  INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('695595', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51); select * from tbproductos;

/*insertar datos a las tablas de a varios datos*/
INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1041119', 'Línea Citrus', 'Botella de Vidrio',
'700 ml', 'Lima', 4.90),('695594', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51);

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01) ;
  
/*Actualizar un dato de la tabla*/
UPDATE tbproductos SET precio = 28.51
WHERE producto = '695594';

/*CUANDO TENEMOS EL ERROR CODE 1175 */
/*You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.*/
/*Esto ocurre porque tenemos activado el modo de actualización seguro, para evitar eso usamos el siguiente comando*/

SET SQL_SAFE_UPDATES = 0; /*para fines practicos lo cambio pero no es recomendable. para volver a modo seguro se coloca 1*/

/*Actualizar varios datos de la tabla*/
UPDATE tbproductos SET sabor = "Lima/Limón", precio = 4.90
WHERE producto = '1041119';

/*Eliminar un dato de la tabla*/
DELETE FROM tbproductos WHERE producto = "695595";

/*Alteracion de datos de la tabla (para modificar columnas)*/
ALTER TABLE tbproductos ADD PRIMARY KEY (producto);

/*Creamos llave primaria*/
ALTER TABLE tbclientes ADD PRIMARY KEY (dni);

/*Agregamos Columna*/
ALTER TABLE tbclientes ADD COLUMN (FECHA_NACIMIENTO DATE);

/*Cargamos los datos de la tabla cliente*/
INSERT INTO tbclientes(
DNI,
NOMBRE,
DIRECCION1, 
DIRECCION2, 
BARRIO,
CIUDAD,
ESTADO,
CP,
EDAD,
SEXO, 
LIMITE_CREDITO,
VOLUMEN_COMPRA, 
PRIMERA_COMPRA,
FECHA_NACIMIENTO) VALUES(
'456879548', 'Pedro el Escamoso', 'Calle del Sol, 25', '', 'Los Laureles', 'CDMX', 'México', '65784', 55, 'M',
1000000, 2000, 0, '1971-05-25');

/*Ver los datos de la tabla clientes*/
SELECT * FROM tbclientes;

/*Ahora luego de Haber practicado vamos a empezar de 0 todo*/

/*Elimino las 2 tablas*/
DROP TABLE tbclientes;
DROP TABLE tbproductos;

/*Creo la tabla clientes ya actualizada*/
CREATE TABLE tbcliente
(DNI VARCHAR (11) ,
NOMBRE VARCHAR (100) ,
DIRECCION1 VARCHAR (150) ,
DIRECCION2 VARCHAR (150) ,
BARRIO VARCHAR (50) ,
CIUDAD VARCHAR (50) ,
ESTADO VARCHAR (4) ,
CP VARCHAR (8) ,
FECHA_NACIMIENTO DATE,
EDAD SMALLINT,
SEXO VARCHAR (1) ,
LIMITE_CREDITO FLOAT ,
VOLUMEN_COMPRA FLOAT ,
PRIMERA_COMPRA BIT );

/*Agrego la PK de cliente*/
ALTER TABLE tbcliente ADD PRIMARY KEY (DNI);

/*Creo tabla producto*/
CREATE TABLE tbproducto
(PRODUCTO VARCHAR (20) ,
NOMBRE VARCHAR (150) ,
ENVASE VARCHAR (50) ,
TAMANO VARCHAR (50) ,
SABOR VARCHAR (50) ,
PRECIO_LISTA FLOAT);

/*Agrego la PK de Producto*/
ALTER TABLE tbproducto ADD PRIMARY KEY (PRODUCTO);

/*Inserto todos los datos de los clientes*/
INSERT INTO tbcliente (DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES 
('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', '', 'Barrio del Niño Jesús', 'Ciudad de México', 'CDMX', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1),
('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', '', 'Carola', 'Ciudad de México', 'CDMX', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1), 
('5576228758', 'Pedro Olivera', 'Pachuca 75', '', 'Condesa', 'Ciudad de México', 'CDMX', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1), 
('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', '', 'Contadero', 'Ciudad de México', 'CDMX', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0), 
('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', '', 'Del Valle', 'Ciudad de México', 'CDMX', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0), 
('3623344710', 'Marcos Rosas', 'Av. Universidad', '', 'Del Valle', 'Ciudad de México', 'CDMX', '22002012', '1995-01-13', 26, 'M', 110000, 220000, 1), 
('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', '', 'Cuajimalpa', 'Ciudad de México', 'CDMX', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0), 
('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', '', 'Del Valle', 'Ciudad de México', 'CDMX', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1), 
('94387575700', 'Walter Soruco', 'Calz. de Tlalpan 2980', '', 'Ex Hacienda Coapa', 'Ciudad de México', 'CDMX', '22000201', '1989-01-20', 31, 'M', 60000, 120000, 1), 
('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', '', 'Floresta Coyoacán', 'Ciudad de México', 'CDMX', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0), 
('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', '', 'Héroes de Padierna', 'Ciudad de México', 'CDMX', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0), 
('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', '', 'Locaxco', 'Ciudad de México', 'CDMX', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);


/*Inserto todos los datos de los productos*/
INSERT INTO tbProducto (PRODUCTO, NOMBRE, TAMANO, SABOR, ENVASE, PRECIO_LISTA) VALUES ('773912', 'Clean', '1 Litro', 'Naranja', 'Botella PET', 8.01),
('838819', 'Clean', '1,5 Litros', 'Naranja', 'Botella PET', 12.01),
('1037797', 'Clean', '2 Litros', 'Naranja', 'Botella PET', 16.01),
('812829', 'Clean', '350 ml', 'Naranja', 'Lata', 2.81),
('479745', 'Clean', '470 ml', 'Naranja', 'Botella de Vidrio', 3.77),
('695594', 'Festival de Sabores', '1,5 Litros', 'Asaí', 'Botella PET', 28.51),
('243083', 'Festival de Sabores', '1,5 Litros', 'Maracuyá', 'Botella PET', 10.51),
('1022450', 'Festival de Sabores', '2 Litros', 'Asái', 'Botella PET', 38.01),
('231776', 'Festival de Sabores', '700 ml', 'Asaí', 'Botella de Vidrio', 13.31),
('723457', 'Festival de Sabores', '700 ml', 'Maracuyá', 'Botella de Vidrio', 4.91),
('746596', 'Light', '1,5 Litros', 'Sandía', 'Botella PET', 19.51),
('1040107', 'Light', '350 ml', 'Sandía', 'Lata', 4.56),
('1002334', 'Línea Citrus', '1 Litro', 'Lima/Limón', 'Botella PET', 7),
('1088126', 'Línea Citrus', '1 Litro', 'Limón', 'Botella PET', 7),
('1041119', 'Línea Citrus', '700 ml', 'Lima/Limón', 'Botella de Vidrio', 4.9),
('1042712', 'Línea Citrus', '700 ml', 'Limón', 'Botella de Vidrio', 4.9),
('520380', 'Pedazos de Frutas', '1 Litro', 'Manzana', 'Botella PET', 12.01),
('788975', 'Pedazos de Frutas', '1,5 Litros', 'Manzana', 'Botella PET', 18.01),
('229900', 'Pedazos de Frutas', '350 ml', 'Manzana', 'Lata', 4.21),
('1101035', 'Refrescante', '1 Litro', 'Frutilla/Limón', 'Botella PET', 9.01),
('1086543', 'Refrescante', '1 Litro', 'Mango', 'Botella PET', 11.01),
('326779', 'Refrescante', '1,5 Litros', 'Mango', 'Botella PET', 16.51),
('826490', 'Refrescante', '700 ml', 'Frutilla/Limón', 'Botella de Vidrio', 6.31),
('1096818', 'Refrescante', '700 ml', 'Mango', 'Botella de Vidrio', 7.71),
('394479', 'Sabor da Montaña', '700 ml', 'Cereza', 'Botella de Vidrio', 8.41),
('783663', 'Sabor da Montaña', '700 ml', 'Frutilla', 'Botella de Vidrio', 7.71),
('1000889', 'Sabor da Montaña', '700 ml', 'Uva', 'Botella de Vidrio', 6.31),
('544931', 'Verano', '350 ml', 'Limón', 'Lata', 2.46),
('235653', 'Verano', '350 ml', 'Mango', 'Lata', 3.86),
('1051518', 'Verano', '470 ml', 'Limón', 'Botella de Vidrio', 3.3),
('1078680', 'Verano', '470 ml', 'Mango', 'Botella de Vidrio', 5.18),
('1004327', 'Vida del Campo', '1,5 Litros', 'Sandía', 'Botella PET', 19.51),
('1013793', 'Vida del Campo', '2 Litros', 'Cereza/Manzana', 'Botella PET', 24.01),
('290478', 'Vida del Campo', '350 ml', 'Sandía', 'Lata', 4.56),
('1002767', 'Vida del Campo', '700 ml', 'Cereza/Manzana', 'Botella de Vidrio', 8.41);

/*Visualizo los datos*/
SELECT * FROM tbcliente;
SELECT * FROM tbproducto;

/*Forma larga de ver todos los datos*/
SELECT DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO,CP, FECHA_NACIMIENTO, EDAD, 
SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA FROM tbcliente;

/*Ver solo algunos datos*/
SELECT DNI, NOMBRE FROM tbcliente;

/*cada nombre de columna a visualizar se separa con ","*/
SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente;

/*Para agregar nombre de visualización usamos "AS"*/
SELECT NOMBRE AS Nombre_Completo, SEXO AS Género, EDAD AS Años, DIRECCION1 AS Domicilio FROM tbcliente;

/*Para limitar a la cantidad de filas a visualizar*/
SELECT NOMBRE, SEXO, EDAD, DIRECCION1 FROM tbcliente LIMIT 6;

/*Muestra todos los campos donde figure el valor buscado*/
SELECT * FROM tbproducto WHERE SABOR = 'Maracuyá';
SELECT * FROM tbproducto WHERE ENVASE = 'Botella de Vidrio';

/*Actualizamos un valor donde dice Limon lo cambiamos por Citrico*/
UPDATE tbproducto SET SABOR = 'Cítrico' WHERE SABOR = 'Limón';

/*mostramos los datos pero no retorna nada porque se borró limon*/
SELECT * FROM tbproducto WHERE SABOR = 'Limón';

/*Ahora se ve el nuevo cambio*/
SELECT * FROM tbproducto WHERE SABOR = 'Cítrico';

/*retornar valores mayores a*/
SELECT * FROM tbcliente WHERE EDAD > 27;

/*retornar valores menor o igual a*/
SELECT * FROM tbcliente WHERE EDAD <= 27;

/*retornar valores diferentes*/
SELECT * FROM tbcliente WHERE EDAD <> 26;

/*Segun el orden alfabético los mayores a */
SELECT * FROM tbcliente WHERE  NOMBRE > 'Erica Carvajo';

/*Segun el orden alfabético los menores o igual a */
SELECT * FROM tbcliente WHERE  NOMBRE <= 'Erica Carvajo';

/*Por mas que el numero flotante esté bien escrito el igual no lo toma*/
SELECT * FROM tbproducto WHERE PRECIO_LISTA = 28.51;

/*Si se pueden visualizar los mayores y menores, el numero indicado figura en el mayor*/
SELECT * FROM tbproducto WHERE PRECIO_LISTA < 28.51;

/*Para visualizar un float usamos el BETWEEN es decir entre uno y otro numeros*/
SELECT * FROM tbproducto WHERE PRECIO_LISTA BETWEEN 28.49 AND 28.52;
