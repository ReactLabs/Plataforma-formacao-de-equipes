package com.react.formacao.repository;

import com.react.formacao.entity.Turma;
import org.springframework.data.repository.CrudRepository;

public interface TurmaRepository extends CrudRepository<Turma, Long> {
    public Turma findByIdTurma(Long id);

    public  Iterable<Turma> findAllByCriadoPor(String cridoPor);
}
