-- INSERCION DE DATOS --

/*
INSERCIÓN DE DATOS: la inserción de registros a cada una de las tablas se realizó de manera manual, aunque se puede 
utilizar el asistente para la importación, esta herramienta se utiliza para una carga masiva de datos. 
Al igual que en la creación de las tablas, la inserción también se tuvo en cuenta el orden ya que hay subconsultas 
para inserción de los valores, primero se insertan los registros de las tablas padres, siguen los registro de 
tablas hijas y por último los registros de la tablas intermedias. 
*/

insert into plataformas (tipo_plataforma) VALUES
("Playstation"), ("PC"), ("Nintendo"), ("Xbox"), ("Sega"), ("Celular");

insert into distribuidoras (nombre) VALUES
("Sony"), ("Xbox"), ("Electronic arts"), ("Sega"), ("Activision"),
 ("Nintendo"), ("Worner Bros"), ("Valve"),("Take-Two Interactive"), ("Codemasters");

insert into subgeneros (nombre) VALUES
("Por turnos"),	("Hack and Slash"),	("Carreras"), ("Deporte"),
("Battle Royale"), ("Sandbox"), ("Aventura Grafica"),	
("Sigilo"),	("Accion RPG"),	("MMORPG"), ("Lucha"), ("Arcade"),	
("FPS"), ("TPS"), ("En tiempo real"), ("Plataforma");

insert into paises (nombre) VALUES
("Mexico"), ("Inglaterra"), ("China"), ("España"),
("Canada"),("Argentina"), ("EEUU"),
("Brasil"), ("Chile"), ("Japon");

insert into desarrolladoras (nombre) VALUES
("Valve"),("Nintendo"),("Beteshda Softworks"),	("Rockstar Games"),("Konami"),("Capcom"),
("Techland"),("Game Freak"),("Guerrilla Games"),("Polyphony Digital"),("Iron Galaxy"),("Gearbox"),
("Activision"),	("Electronic Arts"),("Riot Games"),("Codemasters"),("Naughty Dog"),
("Raven Software"),("Infinity Ward"),("Epic Games"),("People Can Fly"),("4A Games"),
("FromSoftware"),("Sony Santa Monica"),("Ubisoft"),("Kojima Productions"),("Xbox"),("Sony");

insert into puntajes (puntaje) VALUES
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

insert into penalizaciones (tipoPenalizacion, tiempoPenalizacion) VALUES
("Bloqueo el Ingreso a plataforma",1),
("Bloqueo el Ingreso a plataforma",3),
("Bloqueo el Ingreso a plataforma",5),
("Bloqueo el Ingreso a plataforma",10),
("Bloqueo el Ingreso a torneos",1),
("Bloqueo el Ingreso a torneos",3),
("Bloqueo el Ingreso a torneos",5),
("Bloqueo el Ingreso a torneos",10),
("Bloqueo el Ingreso a torneos",30),
("Expulsion total",0);

-- TABLAS HIJAS --
-- INSERCION DE DATOS --

INSERT INTO provincias(nombre,id_pais) VALUES
("Buenos Aires",(SELECT id_pais FROM paises where nombre  like "Argent%")),
("Cordoba",(SELECT id_pais FROM paises where nombre  like "Argent%")),
("New York",(SELECT id_pais FROM paises where nombre  like "EE%")),
("Orlando",(SELECT id_pais FROM paises where nombre  like "EE%")),
("Sao Paulo",(SELECT id_pais FROM paises where nombre  like "Bra%")),
("Bahia",(SELECT id_pais FROM paises where nombre  like "Bra%")),
("Santiago de Chile",(SELECT id_pais FROM paises where nombre  like "%le")),
("Tokio",(SELECT id_pais FROM paises where nombre  like "%pon")),
("Osaka",(SELECT id_pais FROM paises where nombre  like "%pon")),
("Pekin",(SELECT id_pais FROM paises where nombre  like "Chin%")),
("Shangai",(SELECT id_pais FROM paises where nombre  like "Chin%")),
("Madrid",(SELECT id_pais FROM paises where nombre  like "Es%")),
("Barcelona",(SELECT id_pais FROM paises where nombre  like "Es%")),
("Ciudad De Mexico",(SELECT id_pais FROM paises where nombre  like "Mex%")),
("Chiapas",(SELECT id_pais FROM paises where nombre  like "Mex%")),
("Londres",(SELECT id_pais FROM paises where nombre  like "Ing%")),
("Leeds",(SELECT id_pais FROM paises where nombre  like "Ing%")),
("Ontario",(SELECT id_pais FROM paises where nombre  like "Can%")),
("Quebec",(SELECT id_pais FROM paises where nombre  like "Can%"));

INSERT INTO codigosAreas(codigoArea,id_pais,id_provincia) VALUES
(54911,(SELECT id_pais FROM paises where nombre  like "Argent%"),(SELECT id_provincia FROM provincias where nombre  like "Bue%")),
(549351,(SELECT id_pais FROM paises where nombre  like "Argent%"),(SELECT id_provincia FROM provincias where nombre  like "Cor%")),
(1212,(SELECT id_pais FROM paises where nombre  like "EE%"),(SELECT id_provincia FROM provincias where nombre  like "New%")),
(1927,(SELECT id_pais FROM paises where nombre  like "EE%"),(SELECT id_provincia FROM provincias where nombre  like "Orl%")),
(5511,(SELECT id_pais FROM paises where nombre  like "Bra%"),(SELECT id_provincia FROM provincias where nombre  like "Sao%")),
(5574,(SELECT id_pais FROM paises where nombre  like "Bra%"),(SELECT id_provincia FROM provincias where nombre  like "Bah%")),
(562,(SELECT id_pais FROM paises where nombre  like "%le"),(SELECT id_provincia FROM provincias where nombre  like "San%")),
(813,(SELECT id_pais FROM paises where nombre  like "%pon"),(SELECT id_provincia FROM provincias where nombre  like "Tok%")),
(8166,(SELECT id_pais FROM paises where nombre  like "%pon"),(SELECT id_provincia FROM provincias where nombre  like "Osa%")),
(8610,(SELECT id_pais FROM paises where nombre  like "Chin%"),(SELECT id_provincia FROM provincias where nombre  like "Pek%")),
(8621,(SELECT id_pais FROM paises where nombre  like "Chin%"),(SELECT id_provincia FROM provincias where nombre  like "Sha%")),
(9181,(SELECT id_pais FROM paises where nombre  like "Es%"),(SELECT id_provincia FROM provincias where nombre  like "Mad%")),
(9383,(SELECT id_pais FROM paises where nombre  like "Es%"),(SELECT id_provincia FROM provincias where nombre  like "Bar%")),
(5255,(SELECT id_pais FROM paises where nombre  like "Mex%"),(SELECT id_provincia FROM provincias where nombre  like "Ciu%")),
(52916,(SELECT id_pais FROM paises where nombre  like "Mex%"),(SELECT id_provincia FROM provincias where nombre  like "Chi%")),
(44,(SELECT id_pais FROM paises where nombre  like "Ing%"),(SELECT id_provincia FROM provincias where nombre  like "Lon%")),
(44113,(SELECT id_pais FROM paises where nombre  like "Ing%"),(SELECT id_provincia FROM provincias where nombre  like "Lee%")),
(1437,(SELECT id_pais FROM paises where nombre  like "Can%"),(SELECT id_provincia FROM provincias where nombre  like "Ont%")),
(1418,(SELECT id_pais FROM paises where nombre  like "Can%"),(SELECT id_provincia FROM provincias where nombre  like "Que%"));

INSERT INTO generos(NOMBRE,id_subgenero) VALUES
("Accion",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Luc%")),
("Accion",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Arc%")),
("Accion",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Plat%")),
("Disparos",(SELECT id_subgenero FROM subgeneros WHERE nombre like "FP%")),
("Disparos",(SELECT id_subgenero FROM subgeneros WHERE nombre like "TP%")),
("Estrategia",(SELECT id_subgenero FROM subgeneros WHERE nombre like "En %")),
("Estrategia",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Por %")),
("Hack and Slash ",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Hac%")),
("Otros",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Car%")),
("Otros",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Dep%")),
("Otros",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Bat%")),
("Otros",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Sand%")),
("Otros",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Aventura%")),
("Otros",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Sig%")),
("Accion",(SELECT id_subgenero FROM subgeneros WHERE nombre like "Acci%")),
("Otros",(SELECT id_subgenero FROM subgeneros WHERE nombre like "MMOR%"));

INSERT INTO celulares(numero,id_codigoArea) VALUES
(70325874,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Argent%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Bue%")))),
(5632474,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Argent%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Cor%")))),
(978421234,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Ing%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Lon%")))),
(6381648,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Can%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Que%")))),
(49721889,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Chin%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Pek%")))),
(671625641,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "%pon") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Tok%")))),
(156457113,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Argent%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Bue%")))),
(897478547,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Argent%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Bue%")))),
(6578457,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Argent%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Cor%")))),
(652178421,(SELECT id_codigoArea FROM codigosAreas WHERE (id_pais=(SELECT id_pais FROM paises where nombre  like "Argent%") AND id_provincia=(SELECT id_provincia FROM provincias where nombre  like "Bue%"))));

INSERT INTO juegos(nombre,fecha_creacion) VALUES
("Grand Theft Auto V","2013-09-17"),
("Pokemon Arceus","2022-01-28"),
("New World","2021-09-09"),
("Metro 2033","2010-03-16"),
("Fornite","2017-07-21"),
("God of War","2018-04-20"),
("Super Mario","1999-01-21"),
("Cod WarZone","2020-10-03"),
("Uncharted 4","2016-05-10"),
("Age of Empires 2","1999-09-30");

INSERT INTO problemas(detalles,id_juego,id_plataforma) VALUES
("Problema de texturas/Solución: actualizar juegos a versión 1.0.3 .",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "God%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC")),
("Problema de ingreso a los servidores de New World.",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "%New%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC")),
("Caída masiva de ingreso.Fecha:08/02/2022",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "%For%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC")),
("Caída masiva de ingreso.Fecha:08/02/2022",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "%For%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Cel%")),
("Caída masiva de ingreso.Fecha:08/02/2022",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "%For%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Pla%")),
("Caída masiva de ingreso.Fecha:08/02/2022",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "X%")),
("Caída masiva de ingreso.Fecha:08/02/2022",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Ni%")),
("Error:ERR_GFX_D3D_INIT Crash. ",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "God%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC")),
("Los servidores te expulsan. Error: se agoto el tiempo de espera.",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "Cod%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC")),
("Despues de la actulización, perdí mi equipamiento",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "Cod%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Pla%")),
("Despuede actualización 1.0.6 no puedo atrapar ningún rhyhorn",(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "Pok%"),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Ni%"));

INSERT INTO jugadores(nick,id_penalizacion,id_plataforma,id_juego) VALUES
("Jabenid",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 1) AND (tipoPenalizacion LIKE "%Ingreso a plata%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%")),
("koko3",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 1) AND (tipoPenalizacion LIKE "%Ingreso a plata%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%")),
("kafarob",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 1) AND (tipoPenalizacion LIKE "%Ingreso a plata%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%")),
("leitoxd",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 5) AND (tipoPenalizacion LIKE "%Ingreso a plata%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%")),
("rizer30",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 0) AND (tipoPenalizacion LIKE "%tota%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Pla%"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "Cod%")),
("bolainas_Connor",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 10) AND (tipoPenalizacion LIKE "%Ingreso a torn%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Pla%"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "Cod%")),
("Maradroga",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 10) AND (tipoPenalizacion LIKE "%Ingreso a torn%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Pla%"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "Cod%")),
("John_Salchichon",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 5) AND (tipoPenalizacion LIKE "%Ingreso a torneos%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%")),
("tortillero65",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 30) AND (tipoPenalizacion LIKE "%Ingreso a torneos%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%")),
("Atreus92",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 30) AND (tipoPenalizacion LIKE "%Ingreso a torneos%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Pla%"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "Cod%")),
("Romeo5",(SELECT id_penalizacion FROM PENALIZACIONES  WHERE (tiempoPenalizacion = 10) AND (tipoPenalizacion LIKE "%Ingreso a plata%")),(SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_juego FROM JUEGOS WHERE  nombre LIKE "For%"));

INSERT INTO usuarios(fecha_nac,nick,id_celular,id_provincia,id_pais) VALUES
("1970-11-26","Gaston89",1,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Buenos%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Arg%")),
("1996-12-16","kuka28",2,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Cord%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Arg%")),
("1987-04-01","krato22",3,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Lon%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Ing%")),
("2005-07-01","Yark78",4,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Que%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Can%")),
("2001-06-04","Tuvieja_Snow",5,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Pek%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Chin%")),
("1999-04-16","elnegro_Drogo",6,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Tok%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Jap%")),
("2000-08-01","Noctambulo",7,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Buenos%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Arg%")),
("2010-09-16","Noexiuys",8,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Buenos%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Arg%")),
("2015-06-11","kamaron",9,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Cord%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Arg%")),
("2000-08-28","Jabenid",10,(SELECT id_provincia FROM provincias WHERE nombre LIKE "Buenos%"),(SELECT id_pais FROM paises WHERE nombre LIKE "Arg%"));

-- TABLAS INTERMEDIAS --
-- INSERCION DE DATOS -- 

INSERT INTO usuariosProblemas(id_problema,id_usuario) VALUES
((SELECT id_problema FROM problemas WHERE detalles LIKE "Los servido%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%o22")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Los servido%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Gast%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Los servido%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%vieja%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Los servido%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Noc%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Los servido%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kamar%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Caida%" AND id_plataforma= (SELECT id_plataforma FROM plataformas WHERE tipo_plataforma = "PC")),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kuk%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Caida%" AND id_plataforma= (SELECT id_plataforma FROM plataformas WHERE tipo_plataforma = "PC")),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Yark%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Caida%" AND id_plataforma= (SELECT id_plataforma FROM plataformas WHERE tipo_plataforma = "PC")),(SELECT id_usuario FROM usuarios WHERE nick LIKE "elnegro%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Caida%" AND id_plataforma= (SELECT id_plataforma FROM plataformas WHERE tipo_plataforma = "PC")),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%xiuy%")),
((SELECT id_problema FROM problemas WHERE detalles LIKE "Caida%" AND id_plataforma= (SELECT id_plataforma FROM plataformas WHERE tipo_plataforma = "PC")),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Jabe%"));

INSERT INTO usuariosJugadores(id_jugador,id_usuario) VALUES
((SELECT id_jugador FROM jugadores WHERE nick LIKE "Jabe%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Gast%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "kok%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Gast%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "kaf%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kuk%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "lei%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kuk%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "%lero6%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%o22")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "kaf%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%vieja%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "kaf%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Yark%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "kaf%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "elnegro%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "kaf%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%xiuy%")),
((SELECT id_jugador FROM jugadores WHERE nick LIKE "kaf%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Jabe%"));


INSERT INTO usuariosJuegos(id_juego,id_usuario) VALUES
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kuk%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Yark%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "elnegro%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%xiuy%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Jabe%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Cod%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%o22")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Cod%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Gast%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Cod%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%vieja%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Cod%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Noc%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Cod%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kamar%"));

INSERT INTO usuarioPlataformas(id_plataforma,id_usuario) VALUES
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kuk%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Yark%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "elnegro%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%xiuy%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "PC"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Jabe%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Play%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%o22")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Play%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Gast%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Play%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "%vieja%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Play%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "Noc%")),
((SELECT id_plataforma FROM PLATAFORMAS WHERE  tipo_plataforma LIKE "Play%"),(SELECT id_usuario FROM usuarios WHERE nick LIKE "kamar%"));


INSERT INTO juegosGeneros(id_juego,id_genero) VALUES
((SELECT id_juego FROM juegos WHERE nombre LIKE "God%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "hac%") AND (id_subgenero = 2))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "God%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "acc%") AND (id_subgenero = 9))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "New%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "ot%") AND (id_subgenero = 10))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "New%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "dis%") AND (id_subgenero = 14))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "New%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "acc%") AND (id_subgenero = 11))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "New%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "otr%") AND (id_subgenero = 7))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Sup%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "acc%") AND (id_subgenero = 16))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "pok%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "acc%") AND (id_subgenero = 9))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "pok%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "otr%") AND (id_subgenero = 7))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "otr%") AND (id_subgenero = 6))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "acc%") AND (id_subgenero = 9))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "dis%") AND (id_subgenero = 14))),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_genero FROM generos WHERE (nombre LIKE "otr%") AND (id_subgenero = 5)));



INSERT INTO juegosDesarrolladoras(id_juego,id_desarrolladora) VALUES
((SELECT id_juego FROM juegos WHERE nombre LIKE "god%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "%sant%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "sup%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "nin%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "pok%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "gam%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "gran%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "rock%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "met%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "4a%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "Epic%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "Peo%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "cod%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "Inf%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "cod%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "Rav%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "unc%"),(SELECT id_desarrolladora FROM desarrolladoras WHERE nombre LIKE "Nau%"));


INSERT INTO juegosPlataformas(id_juego,id_plataforma) VALUES
((SELECT id_juego FROM juegos WHERE nombre LIKE "God%"),1),
((SELECT id_juego FROM juegos WHERE nombre LIKE "God%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "PC")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "new%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "PC")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "sup%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "PC")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "sup%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "Nin%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "pok%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "Nin%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Met%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "PC")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Met%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "Pla%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Met%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "x%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Met%"),(SELECT id_plataforma FROM plataformas WHERE tipo_plataforma LIKE "Nin%"));


INSERT INTO juegosDistribuidoras(id_juego,id_distribuidora) VALUES
((SELECT id_juego FROM juegos WHERE nombre LIKE "God%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Son%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Sup%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Nin%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Pok%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Nin%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Met%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Son%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Met%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "x%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Pok%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Act%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Gran%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Son%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Gran%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "x%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Cod%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Act%")),
((SELECT id_juego FROM juegos WHERE nombre LIKE "Unc%"),(SELECT id_distribuidora FROM distribuidoras WHERE nombre LIKE "Son%"));

INSERT INTO juegosPuntajes VALUES
((SELECT id_juego FROM juegos WHERE nombre LIKE "God%"),10),
((SELECT id_juego FROM juegos WHERE nombre LIKE "new%"),7),
((SELECT id_juego FROM juegos WHERE nombre LIKE "pok%"),6),
((SELECT id_juego FROM juegos WHERE nombre LIKE "for%"),1),
((SELECT id_juego FROM juegos WHERE nombre LIKE "God%"),8),
((SELECT id_juego FROM juegos WHERE nombre LIKE "sup%"),5),
((SELECT id_juego FROM juegos WHERE nombre LIKE "unch%"),9),
((SELECT id_juego FROM juegos WHERE nombre LIKE "age%"),2),
((SELECT id_juego FROM juegos WHERE nombre LIKE "cod%"),5),
((SELECT id_juego FROM juegos WHERE nombre LIKE "unch%"),1);
