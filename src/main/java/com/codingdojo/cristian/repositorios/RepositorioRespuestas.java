package com.codingdojo.cristian.repositorios;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.cristian.modelos.Respuesta;

@Repository
public interface RepositorioRespuestas extends CrudRepository<Respuesta, Long> {

}
