CREATE database Proyecto_Final
use Proyecto_final

-- TABLAS PADRES --

CREATE TABLE plataformas(
id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
tipo_plataforma  VARCHAR(15) NOT NULL,
UNIQUE KEY(tipo_plataforma)
);


CREATE TABLE distribuidoras(
id_distribuidora INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
UNIQUE KEY (nombre)
);


CREATE TABLE subgeneros(
id_subgenero INT  AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(18)
);


CREATE TABLE paises(
id_pais INT AUTO_INCREMENT  PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
UNIQUE KEY(nombre)
);


CREATE TABLE desarrolladoras(
id_desarrolladora INT  AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR
(20) NOT NULL,
UNIQUE KEY(nombre)
);


CREATE TABLE puntajes(
id_puntaje INT  AUTO_INCREMENT PRIMARY KEY,
puntaje INT NOT NULL
);



CREATE TABLE penalizaciones(
id_penalizacion INT  AUTO_INCREMENT PRIMARY KEY,
tipoPenalizacion VARCHAR(50) NOT NULL,
tiempoPenalizacion INT NOT NULL 
);




-- TABLAS HIJAS --

CREATE TABLE provincias(
id_provincia INT AUTO_INCREMENT  PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
id_pais INT NOT NULL,
FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);


CREATE TABLE codigosAreas(
id_codigoArea INT AUTO_INCREMENT PRIMARY KEY,
codigoArea INT NOT NULL,
id_pais INT NOT NULL ,
id_provincia INT NOT NULL,
UNIQUE KEY (codigoArea),
FOREIGN KEY (id_pais) REFERENCES paises(id_pais),
FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia) 
);



CREATE TABLE celulares(
id_celular INT AUTO_INCREMENT,
numero INT ,
id_codigoArea INT NOT NULL,
UNIQUE KEY (numero),
PRIMARY KEY (id_celular),
FOREIGN KEY (id_codigoArea) REFERENCES codigosAreas(id_codigoArea)
);


CREATE TABLE juegos(
id_juego INT AUTO_INCREMENT,
nombre VARCHAR(20),
fecha_creacion DATE NOT NULL,
PRIMARY KEY (id_juego)
);



CREATE TABLE problemas(
id_problema INT AUTO_INCREMENT PRIMARY KEY,
detalles VARCHAR(100) NOT NULL,
id_juego INT NOT NULL,
id_plataforma INT NOT NULL,
FOREIGN KEY (id_juego) REFERENCES  juegos(id_juego) ,
FOREIGN KEY (id_plataforma) REFERENCES plataformas(id_plataforma) 
);



CREATE TABLE usuarios(
id_usuario INT AUTO_INCREMENT,
fecha_nac DATE NOT NULL,
nick VARCHAR(30) NOT NULL,
id_celular INT NOT NULL,
id_provincia INT NOT NULL,
id_pais INT NOT NULL ,
UNIQUE KEY(nick),
PRIMARY KEY (id_usuario),
FOREIGN KEY (id_celular) REFERENCES celulares(id_celular) ,
FOREIGN KEY (id_provincia) REFERENCES provincias(id_provincia) ,
FOREIGN KEY (id_pais) REFERENCES paises(id_pais) 
);


CREATE TABLE generos(
id_genero INT AUTO_INCREMENT,
nombre VARCHAR(20) NOT NULL,
id_subgenero INT NOT NULL,
PRIMARY KEY (id_genero),
FOREIGN KEY (id_subgenero) REFERENCES subgeneros(id_subgenero) 
);





CREATE TABLE jugadores(
id_jugador INT AUTO_INCREMENT ,
nick VARCHAR(30) NOT NULL,
id_penalizacion INT NOT NULL,
id_plataforma INT NOT NULL,
id_juego INT NULL,
PRIMARY KEY(id_jugador),
FOREIGN KEY (id_juego) REFERENCES  juegos(id_juego) ,
FOREIGN KEY (id_penalizacion) REFERENCES penalizaciones(id_penalizacion) ,
FOREIGN KEY (id_plataforma) REFERENCES plataformas(id_plataforma) 
);



-- TABLAS INTERMEDIAS --



CREATE TABLE usuariosJugadores(
id_jugador INT NOT NULL,
id_usuario INT NOT NULL,
PRIMARY KEY(id_jugador,id_usuario),
FOREIGN KEY (id_jugador) REFERENCES jugadores(id_jugador) ,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) );




CREATE TABLE usuarioPlataformas(
id_plataforma INT NOT NULL,
id_usuario INT NOT NULL,
PRIMARY KEY(id_plataforma,id_usuario),
FOREIGN KEY (id_plataforma ) REFERENCES plataformas(id_plataforma) ,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) 
);




CREATE TABLE juegosDesarrolladoras(
id_juego INT NOT NULL,
id_desarrolladora INT NOT NULL,
PRIMARY KEY(id_juego,id_desarrolladora),
FOREIGN KEY (id_juego) REFERENCES juegos(id_juego) ,
FOREIGN KEY (id_desarrolladora) REFERENCES desarrolladoras(id_desarrolladora) 
);





CREATE TABLE  juegosDistribuidoras(
id_juego INT NOT NULL,
id_distribuidora INT NOT NULL,
PRIMARY KEY(id_juego,id_distribuidora),
FOREIGN KEY (id_juego) REFERENCES juegos(id_juego) ,
FOREIGN KEY (id_distribuidora) REFERENCES distribuidoras(id_distribuidora) 
);





CREATE TABLE usuariosProblemas(
id_problema INT NOT NULL,
id_usuario INT NOT NULL,
PRIMARY	KEY(id_problema,id_usuario ),
FOREIGN KEY (id_problema ) REFERENCES problemas(id_problema ) ,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) 
);




CREATE TABLE usuariosJuegos(
id_juego INT NOT NULL,
id_usuario INT NOT NULL,
PRIMARY KEY(id_juego,id_usuario),
FOREIGN KEY (id_juego) REFERENCES juegos(id_juego) ,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) );




CREATE TABLE juegosGeneros(
id_juego INT NOT NULL,
id_genero INT NOT NULL,
PRIMARY KEY(id_juego,id_genero),
FOREIGN KEY (id_juego) REFERENCES juegos(id_juego) ,
FOREIGN KEY (id_genero) REFERENCES generos(id_genero) 
);




CREATE TABLE juegosPlataformas(
id_juego INT NOT NULL,
id_plataforma INT NOT NULL,
PRIMARY KEY(id_juego,id_plataforma),
FOREIGN KEY (id_juego) REFERENCES juegos(id_juego) ,
FOREIGN KEY (id_plataforma ) REFERENCES plataformas(id_plataforma) 
);



CREATE TABLE juegosPuntajes(
id_juego INT NOT NULL,
id_puntaje INT NOT NULL,
PRIMARY KEY(id_juego,id_puntaje),
FOREIGN KEY (id_juego) REFERENCES juegos(id_juego) ,
FOREIGN KEY (id_puntaje) REFERENCES puntajes(id_puntaje) 
);


