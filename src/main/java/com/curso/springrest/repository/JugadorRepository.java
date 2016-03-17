package com.curso.springrest.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import com.curso.springrest.model.Jugador;

@RepositoryRestResource(collectionResourceRel = "jugadores", path = "jugadores")
public interface JugadorRepository extends PagingAndSortingRepository<Jugador, Integer> {

	@RestResource(path = "findByPosicion", rel = "findByPosicion")
	List<Jugador> findByPosicion(@Param("posicion") String posicion);
}
