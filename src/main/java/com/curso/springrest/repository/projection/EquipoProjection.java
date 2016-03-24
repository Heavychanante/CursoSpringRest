package com.curso.springrest.repository.projection;

import org.springframework.data.rest.core.config.Projection;

import com.curso.springrest.model.Equipo;

@Projection(name = "sinCiudad", types = { Equipo.class })
public interface EquipoProjection {
	String getNombre();
}
