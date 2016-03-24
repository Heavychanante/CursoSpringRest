CREATE TABLE equipos (
	id INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    ciudad VARCHAR(255) NOT NULL,
    CONSTRAINT equipo_pk PRIMARY KEY (id)
);

CREATE TABLE jugadores (
	id INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    dorsal INTEGER NOT NULL,
    posicion VARCHAR(255) NOT NULL,
    goles INTEGER DEFAULT 0,
    asistencias INTEGER DEFAULT 0,
    equipo_id INTEGER NOT NULL,
    CONSTRAINT jugador_pk PRIMARY KEY (id),
    CONSTRAINT jugador_equipo_fk FOREIGN KEY (equipo_id) REFERENCES equipos(id)
);

INSERT INTO equipos (nombre, ciudad) VALUES ('Atlético de Madrid', 'Madrid');
INSERT INTO equipos (nombre, ciudad) VALUES ('Chelsea FC', 'Londres');
INSERT INTO equipos (nombre, ciudad) VALUES ('S.D. Eibar', 'Eibar');
INSERT INTO equipos (nombre, ciudad) VALUES ('Tottenham Hotspur', 'Londres');
INSERT INTO equipos (nombre, ciudad) VALUES ('Athletic de Bilbao', 'Bilbao');

INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Antoine Griezmann', 7, 'Delantero', 16, 2, 1);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Diego Godín', 2, 'Defensa', 1, 1, 1);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Saúl Ñíguez', 17, 'Centrocampista', 4, 1, 1);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Borja Bastón', 18, 'Delantero', 16, 2, 3);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Keko Gontán', 20, 'Centrocampista', 3, 3, 3);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Raúl García', 22, 'Centrocampista', 4, 4, 5);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Diego Costa', 19, 'Delantero', 11, 5, 2);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Thibaut Courtois', 13, 'Portero', 0, 0, 2);
INSERT INTO jugadores (nombre, dorsal, posicion, goles, asistencias, equipo_id) VALUES ('Toby Alderweireld', 4, 'Defensa', 4, 2, 4);