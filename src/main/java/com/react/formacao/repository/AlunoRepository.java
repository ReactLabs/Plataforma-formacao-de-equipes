package com.react.formacao.repository;

import com.react.formacao.entity.Aluno;
import com.react.formacao.entity.Turma;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface AlunoRepository extends CrudRepository<Aluno, Long> {
    public List<Aluno> findAllByIdTurma(Turma id_turma);

    public List<Aluno> findByIdTurmaOrderByEquipeDesc(Turma id_turma);
}
