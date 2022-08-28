/*
Sentencias TCL (commit y rollback): se utilizan para ejecutar código y aprobar dicha transacción(commit), 
volver a un punto de guardado(savepoint) o volver la bd a el mismo que estado que estaba antes de ejecutar 
cualquier transacción(rollback).
*/
-- Tabla juegos -- 
-- En esta transacción se insertan 3 registros nuevos --
SELECT @@AUTOCOMMIT; -- Verificamos que el autocommitt esta en 1 -- 
START TRANSACTION; -- El autocommitt al estar en 1 debemos inicializar la transacción --
INSERT INTO JUEGOS  VALUES (DEFAULT,'Crash Bandicoot 4','2020-09-16'),(DEFAULT,'Crash Bandicoot 4','2020-09-26'),
(DEFAULT,'Crash Bandicoot 4','2020-10-26');-- Inserto registros  nuevos, con  datos corrrectos e incorrectos --
COMMIT; -- Apruebo la inserción de los datos --
SELECT * FROM JUEGOS;

-- En esta transacción se eliminan  registros nuevos --
SET AUTOCOMMIT=0; -- Se asigna el valor 0 al AUTOCOMMIT -- 
SELECT @@AUTOCOMMIT; -- Verificamos que el autocommitt esta en 0 -- 
DELETE FROM JUEGOS where id_juego > 10; -- Elimino registros  nuevos, que tienen datos incorrectos --
COMMIT; -- Apruebo la eliminación de los datos --
SELECT * FROM JUEGOS;

-- En esta transacción se eliminan  todo los registros distintos, los cuento y aplico un rollback --
SET AUTOCOMMIT=1; -- Se asigna el valor 1 al AUTOCOMMIT -- 
SELECT @@AUTOCOMMIT; -- Verificamos que el autocommitt esta en 1 -- 
START TRANSACTION; -- El autocommitt al estar en 1 debemos inicializar la transacción --
DELETE FROM JUEGOS where nombre NOT LIKE 'Crash%'; -- Elimino registros que no contienen la palabra crash --
SELECT COUNT(id_juego) FROM JUEGOS ; --  Cuento la cantidad juegos que quedaron despues del DELETE -- 
ROLLBACK; -- Aplico el rollback para que se vuelva hacia hacia atras, es decir , la tabla juego no elimine ningun registro --
SELECT * FROM JUEGOS;

-- Tabla usuarios --
-- savepoint --
SELECT * FROM USUARIOS; -- VEMOS LA CNATIDAD DE USUARIOS
SELECT @@AUTOCOMMIT; -- Verificamos que el autocommitt esta en 1 -- 
START TRANSACTION; -- El autocommitt al estar en 1 debemos inicializar la transacción --
INSERT INTO usuarios(fecha_nac,nick,id_celular,id_provincia,id_pais) VALUES -- Se insertan 4 registros --
("1970-11-26","Gaston89",1,1,1),("1996-12-16","kuka28",2,2,1),("1987-04-01","krato22",3,16,9),("2005-07-01","Yark78",4,19,10);
SAVEPOINT usuario_cuarto_registro; -- Se que indica un punto de guardado, se guarda hasta el registro 4 inclusive --
INSERT INTO usuarios(fecha_nac,nick,id_celular,id_provincia,id_pais) VALUES -- Se insertan 4 registros más --
("2001-06-04","Tuvieja_Snow",5,10,6),("1999-04-16","elnegro_Drogo",6,8,5), ("2000-08-01","Noctambulo",7,1,1), ("2010-09-16","Noexiuys",8,1,1);-- Se insertan 4 registros -
SAVEPOINT usuario_octavo_registro;-- Se que indica un punto de guardado, hasta se guarda desde el registro 5 y hasta el 8 inclusive --
INSERT INTO usuarios(fecha_nac,nick,id_celular,id_provincia,id_pais) VALUES("2015-06-11","kamaron",9,2,1), ("2000-08-28","Jabenid",10,1,1);
-- Se insertan dos registro más --
-- ROLLBACK DE LOS SAVEPOINTS -- 
ROLLBACK TO SAVEPOINT usuario_octavo_registro;
SELECT  * FROM USUARIOS;
ROLLBACK TO SAVEPOINT usuario_cuarto_registro;
SELECT  * FROM USUARIOS;
COMMIT;-- Apruebo la inserción de los datos --
