-- TRIGGERS --

/*
Triggers: Los disparadores o triggers son objetos cuyo objetivo es ejecutar el código en respuesta a un evento que ocurre en una tabla. 
Los eventos pueden ser de tres tipos: INSERT, UPDATE o DELETE.
Se crearon 6 triggers, esto a aplicaron a las tablas que son mas importante pero también se puede extender a las demás tablas.
La funcionalidad de cada trigger está comentado antes de ejecutar el código.
*/


/*1er Trigger: este trigger se dispara antes de eliminar un registro de la tabla usuarios e inserta datos en la tabla log_del_usuario  sobre: 
 Que id de usuario y nick se borró, que usuario lo hizo y la fecha y hora en que se eliminó. */
CREATE TRIGGER log_delete_usuario
BEFORE DELETE ON usuarios
FOR EACH ROW
INSERT INTO log_del_usuario VALUES (DEFAULT, OLD.id_usuario,OLD.nick,USER(),CURDATE(),CURTIME() );

/* A  modo de ejemplo ejecutar laS siguentes sentencias : 
SELECT *from log_del_usuario;
INSERT INTO  celulares VALUES (default,3059854,2);
INSERT INTO usuarios VALUES (default,'1995-12-02','bOND',11,2,1);
DELETE FROM usuarios WHERE id_usuario > 10;
SELECT *from log_del_usuario;
*/ 


-- 2do Trigger: este trigger se dispara después de que se inserte un registro en la tabla usuarios y crea un registro en la tabla log_ins_usuario de que,quien y cuando se inserto el registro.
CREATE TRIGGER log_insert_usuarios
AFTER INSERT ON usuarios
FOR EACH ROW
INSERT INTO log_ins_usuario VALUES (DEFAULT, NEW.id_usuario,NEW.nick,USER(),CURDATE(),CURTIME());
/* A  modo de ejemplo ejecutar la siguente sentencia : 
SELECT *from log_ins_usuario;
INSERT INTO  celulares VALUES (default,3059854,2);
INSERT INTO usuarios VALUES (DEFAULT,'1995-12-02','bOND',11,2,1);
SELECT *from log_ins_usuario;
SELECT *from usuarios;
*/


-- 3er Trigger: este trigger se dispara después de que se actualice un registro en la tabla usuarios y crea un registro en la tabla log_upd_usuario de que,quien y cuando se inserto el registro.
CREATE TRIGGER log_update_usuarios
AFTER UPDATE ON usuarios
FOR EACH ROW
INSERT INTO log_upd_usuario VALUES (DEFAULT, NEW.id_usuario,NEW.nick,USER(),CURDATE(),CURTIME());
/* A  modo de ejemplo ejecutar la siguente sentencia : 
SELECT *from log_upd_usuario;
INSERT INTO  celulares VALUES (default,3059854,2);
INSERT INTO usuarios VALUES (DEFAULT,'1995-12-02','bOND',11,2,1);
UPDATE usuarios SET fecha='1995-12-03' WHERE nick = 'bOND';
SELECT *from log_upd_usuario;
SELECT *from usuarios;
*/

-- TABLA JUEGOS --
-- 4to Trigger: este trigger es parecido al 1ro, se dispara antes de borrar un resgistro de la tabla juegos. --
CREATE TRIGGER log_delete_juego
BEFORE DELETE ON juegos
FOR EACH ROW
INSERT INTO log_del_juego VALUES (DEFAULT, OLD.id_juego,OLD.nombre,USER(),CURDATE(),CURTIME());
/* A  modo de ejemplo ejecutar laS siguentes sentencias : 
SELECT *from log_del_juego;
SELECT *from juegos;
INSERT INTO  juegos VALUES (DEFAULT,'Ciber Punk 2077','2020-12-10');
DELETE FROM juegos WHERE id_juego > 10;
SELECT *from log_del_juego;
*/

-- 5to Trigger: este trigger se dispara después de que se inserte un registro en la tabla juegos y crea un registro en la tabla log_ins_juego de que,quien y cuando se inserto el registro. --
CREATE TRIGGER log_insert_juegos
AFTER INSERT ON juegos
FOR EACH ROW
INSERT INTO log_ins_juego VALUES (DEFAULT, NEW.id_juego,NEW.nombre,USER(),CURDATE(),CURTIME());
/* A  modo de ejemplo ejecutar laS siguentes sentencias : 
SELECT * from log_ins_juego;
SELECT * from juegos;
INSERT INTO  juegos VALUES (DEFAULT,'Bloodbrne','2015-03-15');
SELECT *from log_ins_juego;
SELECT *from juegos;
*/

-- 6to Trigger: este trigger es parecido al 3ro, se dispara despues de actualizar un registro de la tabla juegos. --
CREATE TRIGGER log_update_juegos
AFTER UPDATE ON juegos
FOR EACH ROW
INSERT INTO log_ins_juego VALUES (DEFAULT, NEW.id_juego,NEW.nombre,USER(),CURDATE(),CURTIME());
/* A  modo de ejemplo ejecutar la siguente sentencia : 
SELECT *from log_upd_usuario;
INSERT INTO  celulares VALUES (default,3059854,2);
INSERT INTO usuarios VALUES (DEFAULT,'1995-12-02','bOND',11,2,1);
UPDATE usuarios SET fecha='1995-12-03' WHERE nick = 'bOND';
SELECT *from log_upd_usuario;
SELECT *from usuarios;
*/
