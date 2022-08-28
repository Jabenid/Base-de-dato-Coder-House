/*
Sentencias DCL: estás sentencias se utilza para otorgar, mostrar  y revocar(revoke, no se utilizó) permisos a un usuario determinado. 
*/
USE mysql;
-- Usuario sólo de lectura.--
CREATE USER 'usuario_solo_lectura'@'localhost' IDENTIFIED BY 'admin25'; -- Se crea un usuario de solo lectura.
GRANT SELECT ON *.* TO 'usuario_solo_lectura'@'localhost'; -- Se otorga los permisos de lectura (Sentencia: Select)
SHOW GRANTS FOR 'usuario_solo_lectura'@'localhost'; -- Se muestra los permisos de dicho usuario. 

-- Usuario con permisos.--
CREATE USER 'usuario_con_permisos'@'localhost' IDENTIFIED BY 'admin25'; -- Se crea un usuario de solo lectura.
GRANT SELECT,INSERT,UPDATE ON proyecto_final.* TO 'usuario_con_permisos'@'localhost';
-- GRANT SELECT ON proyecto_final.* TO 'usuario_con_permisos'@'localhost';-- Se otorga los permisos de lectura (Sentencia: Select)
-- GRANT INSERT ON proyecto_final.* TO 'usuario_con_permisos'@'localhost';-- Se otorga los permisos de insercion (Sentencia: Insert)
-- GRANT UPDATE ON proyecto_final.* TO 'usuario_con_permisos'@'localhost';-- Se otorga los permisos de lectura (Sentencia: Select)
/*GRANT SELECT,INSERT,UPDATE ON proyecto_final.* TO 'usuario_con_permisos'@'localhost';  Otra manera de otrogar los permisos anteriores en una sola línea.
*/
SHOW GRANTS FOR 'usuario_con_permisos'@'localhost';-- Se muestra los permisos de dicho usuario. 
