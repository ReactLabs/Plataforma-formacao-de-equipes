package com.react.formacao.repository;

import com.react.formacao.entity.Cadastro;
import org.springframework.data.repository.CrudRepository;

public interface CadastroRepository extends CrudRepository<Cadastro,String> {
    Cadastro findByLogin(String login);
}
