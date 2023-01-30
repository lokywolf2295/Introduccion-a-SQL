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
