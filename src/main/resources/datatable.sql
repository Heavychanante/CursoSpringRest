CREATE TABLE equipos (
	id INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    ciudad VARCHAR(255) NOT NULL,
    CONSTRAINT equipo_pk PRIMARY KEY (id)
);

CREATE TABLE jugadores (
	id INTEGER NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    dorsal INTEGER NOT NULL,
    goles INTEGER DEFAULT 0,
    asistencias INTEGER DEFAULT 0,
    equipo_id INTEGER NOT NULL,
    CONSTRAINT jugador_pk PRIMARY KEY (id),
    CONSTRAINT jugador_equipo_fk FOREIGN KEY (equipo_id) REFERENCES equipos(id)
);