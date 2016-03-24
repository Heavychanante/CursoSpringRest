package com.curso.springrest.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import com.curso.springrest.model.Jugador;

@RepositoryRestResource(collectionResourceRel = "jugadores", path = "jugadores")
public interface JugadorRepository extends PagingAndSortingRepository<Jugador, Integer> {

	@RestResource(path = "findByPosicion", rel = "findByPosicion")
	Page<Jugador> findByPosicion(@Param("posicion") String posicion, Pageable pageable);

}
