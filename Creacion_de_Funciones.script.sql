/*
FUNCIONES: son códigos de SQL que reciben datos de entrada, realizan operaciones con ellos y luego devuelven un resultado.
Se realizan 2 funciones, su finalidad se encuentran comentadas al inicio de ejecutar cada una de ellas.
*/

/*
1ra FUNCION: la funcion se llama usuarios_por_ plataforma, se le da como atributo un varchar (ej:pc) y después esta devuelve la 
cantidad de usuarios que pertenecen a la plataforma.*/
DELIMITER #
CREATE FUNCTION USUARIOS_POR_PLATAFORMA(plataforma VARCHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE cantidad_usuarios INT;
    SELECT COUNT(u.id_plataforma) INTO cantidad_usuarios FROM usuarioplataformas AS u
	INNER JOIN plataformas AS p ON u.id_plataforma = p.id_plataforma 
	WHERE p.tipo_plataforma = plataforma;
    RETURN cantidad_usuarios;
END#
DELIMITER ;
/* Ejecutar esta sentencia:  
SELECT  USUARIOS_POR_PLATAFORMA("Pc") AS "USUARIOS POR PLATAFORMA"; */


/*
2da FUNCIÓN: la función se llama CANTIDAD_DE_ERRORES, se le asigna 2 atributos varchar (1ro nombre de un juego y 2do una plataforma)
y después esta función devuelve la cantidad de errores que tiene el juego y la plataforma.
*/
DELIMITER #
CREATE FUNCTION CANTIDAD_DE_ERRORES(nom_juego VARCHAR(20),nom_plat VARCHAR(10) )
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE cant_errores INT;
    SELECT  COUNT(id_problema) INTO cant_errores from problemas AS p
	INNER JOIN juegos AS j ON p.id_juego = j.id_juego
	INNER JOIN plataformas AS pl ON p.id_plataforma = pl.id_plataforma
	WHERE (j.nombre like CONCAT('%',nom_juego,'%')) AND (pl.tipo_plataforma like CONCAT('%',nom_plat,'%'));
    RETURN cant_errores;
END#
DELIMITER ;

/* Ejemplo: 
SELECT CANTIDAD_DE_ERRORES('g','p') AS "CANTIDAD DE ERRORES" ; */
