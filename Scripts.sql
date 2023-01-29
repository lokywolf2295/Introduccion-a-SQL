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
use world;

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