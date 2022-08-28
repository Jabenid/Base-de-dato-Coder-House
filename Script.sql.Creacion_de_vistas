-- Vista Usuario --

/*
VISTAS: en esta sección es referida a las vista de las tablas presenten informacion más relevante.La vista creadas son:
Usuarios: muestra los datos de los usuarios.
Juego: muestra los datos de los juegos.
Juegos y puntajes: muestra los juegos y sus puntajes.
Desarrolladora: muestra los datos de las desarrolladoras.
Distribuidora: muestra los datos de las distribuidoras.
Cantidad de usuarios por plataforma: muestra la cantidad de usuarios por plataforma.
*/

CREATE VIEW Usuario 
AS SELECT 
    u.id_usuario AS 'ID',u.nick AS 'Nick',
    DATE_FORMAT(u.fecha_nac,'%d-%m-%Y') AS 'Fecha de nacimiento',pl.tipo_plataforma AS 'Plataforma',
    co.codigoArea AS 'Código de Área',c.numero AS'Número Celular',
    p.nombre AS 'Provincia',pa.nombre AS 'País',
    j.nombre AS 'Juegos'
FROM
    usuarios AS u 
 INNER JOIN celulares AS c  ON u.id_celular = c.id_celular
 INNER JOIN codigosareas AS co ON c.id_codigoArea = co.id_codigoArea
 INNER JOIN provincias AS p ON u.id_provincia = p.id_provincia
 INNER JOIN paises AS pa ON p.id_pais = pa.id_pais
 INNER JOIN usuarioplataformas AS up ON u.id_usuario = up.id_usuario
 INNER JOIN plataformas AS pl ON up.id_plataforma = pl.id_plataforma
 INNER JOIN usuariosjuegos AS uj ON u.id_usuario = uj.id_usuario 
 INNER JOIN juegos AS j ON uj.id_juego = j.id_juego;
-- Fin del Código -- 

-- Vista Juego -- 
CREATE VIEW Juego
AS SELECT 
j.nombre AS 'Nombre', DATE_FORMAT(j.fecha_creacion,'%d-%m-%Y') AS 'Fecha de Creación',
di.nombre AS 'Nombre de Distribuidora/as',de.nombre AS 'Nombre de Desarrolladora/as',
pl.tipo_plataforma AS 'Plataforma',g.nombre AS 'Género'
FROM 
	juegos AS j
INNER JOIN juegosdesarrolladoras AS jde ON j.id_juego = jde.id_juego
INNER JOIN desarrolladoras AS de  ON jde.id_desarrolladora = de.id_desarrolladora
INNER JOIN juegosdistribuidoras AS jdi ON j.id_juego = jdi.id_juego
INNER JOIN distribuidoras AS di  ON jdi.id_distribuidora = di.id_distribuidora
INNER JOIN juegosplataformas AS jpl ON j.id_juego = jpl.id_juego
INNER JOIN plataformas AS pl  ON jpl.id_plataforma = pl.id_plataforma
INNER JOIN juegosgeneros AS jg ON j.id_juego = jg.id_juego
INNER JOIN generos AS g  ON jg.id_genero = g.id_genero ;
-- Fin del Código -- 

-- Vista de los Juegos y sus Puntuaciones Promedios -- 
CREATE VIEW JuegosYPuntajes
AS SELECT 
j.nombre AS 'Nombre', DATE_FORMAT(j.fecha_creacion,'%d-%m-%Y') AS 'Fecha de Creación',
di.nombre AS 'Nombre de Distribuidora/as',de.nombre AS 'Nombre de Desarrolladora/as',
pl.tipo_plataforma AS 'Plataforma',g.nombre AS 'Género', AVG(p.puntaje) AS 'Puntaje'
FROM 
	juegos AS j
INNER JOIN juegosdesarrolladoras AS jde ON j.id_juego = jde.id_juego
INNER JOIN desarrolladoras AS de  ON jde.id_desarrolladora = de.id_desarrolladora
INNER JOIN juegosdistribuidoras AS jdi ON j.id_juego = jdi.id_juego
INNER JOIN distribuidoras AS di  ON jdi.id_distribuidora = di.id_distribuidora
INNER JOIN juegosplataformas AS jpl ON j.id_juego = jpl.id_juego
INNER JOIN plataformas AS pl  ON jpl.id_plataforma = pl.id_plataforma
INNER JOIN juegosgeneros AS jg ON j.id_juego = jg.id_juego
INNER JOIN generos AS g  ON jg.id_genero = g.id_genero 
INNER JOIN juegosPuntajes AS jp ON j.id_juego = jp.id_juego
INNER JOIN puntajes AS p ON jp.id_puntaje = p.id_puntaje
GROUP BY j.nombre
ORDER BY Puntaje DESC;
-- Fin del Código -- 


-- Vista Desarrolladora -- 
CREATE VIEW Desarrolladora
AS SELECT  d.nombre AS 'Nombre de Desarrolladora/as',j.nombre 'Juego',j.fecha_creacion 'Fecha de creación'
FROM 
	desarrolladoras AS d
INNER JOIN juegosdesarrolladoras AS jd ON d.id_desarrolladora = jd.id_desarrolladora
INNER JOIN juegos AS j ON jd.id_juego = j.id_juego
ORDER BY d.nombre;
-- Fin del Código -- 

-- Vista Distribuidora -- 
CREATE VIEW Distribuidora
AS SELECT  d.nombre AS 'Nombre de Distribuidora/as',j.nombre 'Juego',j.fecha_creacion 'Fecha de creación'
FROM 
	distribuidoras AS d
INNER JOIN juegosdistribuidoras AS jd ON d.id_distribuidora = jd.id_distribuidora
INNER JOIN juegos AS j ON jd.id_juego = j.id_juego
ORDER BY d.nombre;
-- Fin del Código -- 

-- Vista  Usuarios por Plataforma -- 
CREATE VIEW Usuarios_por_Plataforma
AS SELECT p.tipo_plataforma AS 'Plataforma',
u.nick AS 'Usuario'
FROM 
	plataformas AS p
INNER JOIN usuarioplataformas AS up ON p.id_plataforma = up.id_plataforma
INNER JOIN usuarios AS u ON up.id_usuario = u.id_usuario
ORDER BY p.tipo_plataforma DESC
;
-- Fin del Código -- 

-- Vista  cantidad de Usuarios por Plataforma -- 
CREATE VIEW Cantidad_Usuarios_por_Plataforma
AS SELECT p.tipo_plataforma AS 'Plataforma',
COUNT(up.id_usuario) AS 'Cantidad de Usuarios'
FROM 
	plataformas AS p
INNER JOIN usuarioplataformas AS up ON p.id_plataforma = up.id_plataforma
GROUP BY up.id_plataforma
ORDER BY p.tipo_plataforma DESC;
-- Fin del Código -- 
