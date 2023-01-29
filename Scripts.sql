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

