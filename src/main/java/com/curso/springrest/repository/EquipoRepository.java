package com.curso.springrest.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.curso.springrest.model.Equipo;
import com.curso.springrest.repository.projection.EquipoProjection;

@RepositoryRestResource(path = "equipos", collectionResourceRel = "equipos", excerptProjection = EquipoProjection.class)
public interface EquipoRepository extends PagingAndSortingRepository<Equipo, Integer> {

}
