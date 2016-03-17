package com.curso.springrest.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.curso.springrest.model.Equipo;

@RepositoryRestResource(collectionResourceRel = "equipos", path = "equipos")
public interface EquipoRepository extends PagingAndSortingRepository<Equipo, Integer> {

}
