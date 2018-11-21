package com.react.formacao.repository;

import com.react.formacao.entity.Usuario;
import org.springframework.data.repository.CrudRepository;


public interface UsuarioRepository extends CrudRepository<Usuario,String> {
    Usuario findByLogin(String login);
}

