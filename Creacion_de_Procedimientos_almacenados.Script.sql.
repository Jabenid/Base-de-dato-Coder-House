/*
STORED PROCEDURES: Su objetivo es realizar una tarea determinada, desde operaciones sencillas hasta tareas muy complejas.
Se realizan 4 stored procedures, su finalidad se encuentran comentadas al inicio de ejecutar cada una de ellos.
*/

/* 1re Store Procedure: este stored procedure ordena la tabla juegos según un campo de la tabla y si coloca 1 lo ordena de manera descendente */
DELIMITER #
CREATE PROCEDURE SP_Tabla_Juegos(IN condicion INT,IN campo VARCHAR(20) ) -- Primero defino 2 parametros de entrada, condicion y campo. --
BEGIN
	IF condicion = 1 THEN  -- Si el parámetro condición es igual a 1 --
    SET @ordenar = CONCAT('ORDER BY ',campo,' DESC'); -- se crea la variable @ordernar.Esta es igual a la concatenación --
    -- de ORDER BY, el parámetro campo  y DESC. Esta variable más adelante se utiliza para ordernar según el campo dado como parámetro de manera descendente. --
    ELSE
    -- Sino la variable @ordenar es a igual a la concatenacion de order by y el parametro campo. El resultado se ordenaría según el parámetro  dado de manera ascendente. --
	SET @ordenar = CONCAT('ORDER BY ',campo); 	
    END IF;
    -- En esta parte, creamos la variable sentencia_select, es igual a la concatenación de la sentencia select y la variable ordenar --
    SET @sentencia_select = concat('SELECT j.id_juego "ID" ,j.nombre AS "Nombre", DATE_FORMAT(j.fecha_creacion,"%d-%m-%Y") AS "Fecha de Creación",
			di.nombre AS "Nombre de Distribuidora/as",de.nombre AS "Nombre de Desarrolladora/as",
			pl.tipo_plataforma AS "Plataforma",g.nombre AS "Género"
		FROM 
			juegos AS j
		INNER JOIN juegosdesarrolladoras AS jde ON j.id_juego = jde.id_juego
		INNER JOIN desarrolladoras AS de  ON jde.id_desarrolladora = de.id_desarrolladora
		INNER JOIN juegosdistribuidoras AS jdi ON j.id_juego = jdi.id_juego
		INNER JOIN distribuidoras AS di  ON jdi.id_distribuidora = di.id_distribuidora
		INNER JOIN juegosplataformas AS jpl ON j.id_juego = jpl.id_juego
		INNER JOIN plataformas AS pl  ON jpl.id_plataforma = pl.id_plataforma
		INNER JOIN juegosgeneros AS jg ON j.id_juego = jg.id_juego
		INNER JOIN generos AS g  ON jg.id_genero = g.id_genero ' , @ordenar); 
    PREPARE ejecucion FROM @sentencia_select; 
    EXECUTE ejecucion;
    DEALLOCATE PREPARE ejecucion;
END #
DELIMITER ;
/* Ejemplo 
call SP_Tabla_Juegos(1,'ID'); */

/* 2do Store Procedure: este stored procedure hace lo mismo que el anterior con la diferencia que se aplica a la tabla usuarios */
DELIMITER #
CREATE PROCEDURE SP_Tabla_Usuarios(IN condicion INT,IN campo VARCHAR(20) ) -- Primero defino 2 parametros de entrada, condicion y campo. --
BEGIN
	IF condicion = 1 THEN  -- Si el parámetro condición es igual a 1 --
    SET @ordenar = CONCAT('ORDER BY ',campo,' DESC'); -- se crea la variable @ordernar.Esta es igual a la concatenación --
    -- de ORDER BY, el parámetro campo  y DESC. Esta variable más adelante se utiliza para ordernar según el campo dado como parámetro de manera descendente. --
    ELSE
    -- Sino la variable @ordenar es a igual a la concatenacion de order by y el parametro campo. El resultado se ordenaría según el parámetro  dado de manera ascendente. --
	SET @ordenar = CONCAT('ORDER BY ',campo); 	
    END IF;
    -- En esta parte, creamos la variable sentencia_select, es igual a la concatenación de la sentencia select y la variable ordenar --
    SET @sentencia_select = concat("SELECT u.id_usuario AS ID,u.nick AS NICK ,concat(co.codigoArea,'-',c.numero ) AS CELULAR, 
p.nombre AS PROVINCIAS, pa.nombre AS PAISES
FROM  usuarios AS u
	INNER JOIN celulares AS c ON u.id_celular = c.id_celular
    INNER JOIN codigosareas AS co ON c.id_codigoArea = co.id_codigoArea
    INNER JOIN provincias AS p ON u.id_provincia = p.id_provincia
    INNER JOIN paises AS pa ON u.id_pais = pa.id_pais
GROUP BY u.nick ", @ordenar); 
    PREPARE ejecucion FROM @sentencia_select; 
    EXECUTE ejecucion;
    DEALLOCATE PREPARE ejecucion;
END #
DELIMITER ;
/*Ejemplo 
call SP_Tabla_Usuarios(1,'PAISES'); */

/*3er Store Procedure: este estored procedure se crea de manera de ejemplo , se deberia hacer para los demas tablas, lo cual varia la cantidad -- 
de campos y datos a incertar segun la tabla.*/
DELIMITER #
CREATE PROCEDURE SP_Tabla_Paises(IN nombre VARCHAR(20)) -- Crea el stored procdure SP_Tabla_Paises,tiene 1 parámetro de entrada nombre_país.--
BEGIN
	SET @nombre_pais = nombre; -- Se crea la variable @nombre_pais y se el asigna el parámetro de entrada nombre.
	INSERT INTO paises(nombre) values (@nombre_pais); -- Se inserta la variable anterior en el campo nombre de la tabla paises. -- 
END #
DELIMITER ;
/*Ejemplo, se aconseja a ejecutar en este orden para ver los cambios. 
SELECT * FROM paises;
call SP_Tabla_Paises('Ghana');
call SP_Tabla_Paises('Africa');
call SP_Tabla_Paises('Tonga');
SELECT * FROM paises; */

/* 4to Store Procedure: este estored procedure se crea de manera de genérica para elegir la tabla e insertar un registro nuevo 
en el campo nombre, en la tabla que se indique.  
En mi caso se peude aplicar a 4 tablas: paises,sugeneros,desarrolladoras y distribuidoras.Esta tabla tiene en comun el campo nombre.*/
DELIMITER #
CREATE PROCEDURE SP_Inserta_Nombre(IN tabla VARCHAR(20), IN nombre VARCHAR(20)) -- Crea el stored procdure SP_Inserta_Nombre,tiene 2 parámetro de entrada,tabla y nombre.--
BEGIN
	SET @nombre_tabla = tabla; -- Se crea la variable @nombre_tabla y se el asigna el parámetro de entrada tabla.
    SET @valor_campo = nombre; -- Se crea la variable @valor_campo y se el asigna el parámetro de entrada nombre.
    SET @contenar = concat("INSERT INTO ",@nombre_tabla,"(nombre) values ('",@valor_campo,"');");-- Se crea una nueva variable @concatenar--
    -- Concatena una sentencia insert, el nombredela tabla, el campo nombre y el valor que tomará dicho campo. -- 
	PREPARE ejecucion FROM @contenar;
    EXECUTE ejecucion;
    DEALLOCATE PREPARE ejecucion;
END #
DELIMITER ;

/*  Ejemplo, se aconseja a ejecutar en este orden para ver los cambios.   
CALL SP_Inserta_Nombre('desarrolladoras', 'SASs');
SELECT * FROM desarrolladoras;
CALL SP_Inserta_Nombre('distribuidoras', 'SASs');
SELECT * FROM distribuidoras;
*/
