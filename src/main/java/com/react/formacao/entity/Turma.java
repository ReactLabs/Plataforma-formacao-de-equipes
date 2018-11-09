package com.react.formacao.entity;

import javax.persistence.*;
import java.util.List;


@Entity
public class Turma {


    @Id
    @GeneratedValue(strategy= GenerationType.SEQUENCE)
    private Long idTurma;

    private String nome;
    private String descricao;
    private String senha;
    private boolean aberta = true;

    public boolean isAberta() {
        return aberta;
    }

    public void setAberta(boolean aberta) {
        this.aberta = aberta;
    }

    @OneToMany(mappedBy = "id_turma")
    private List<Aluno> listAluno;

    public List<Aluno> getListAluno() {
        return listAluno;
    }

    public void setListAluno(List<Aluno> listAluno) {
        this.listAluno = listAluno;
    }

    public Long getIdTurma() {
        return idTurma;
    }

    public void setIdTurma(Long idTurma) {
        this.idTurma = idTurma;
    }
    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
