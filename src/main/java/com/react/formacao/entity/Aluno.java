package com.react.formacao.entity;


import com.react.formacao.enu.AlunoClassificacaoEnum;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Aluno implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.SEQUENCE)
    private Long id;
    private String nome;
    private AlunoClassificacaoEnum tipoSocial;


    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "idTurma")
    private Turma id_turma;

    public Turma getId_turma() {
        return id_turma;
    }

    public void setId_turma(Turma id_turma) {
        this.id_turma = id_turma;
    }

    public AlunoClassificacaoEnum getTipoSocial() {
        return tipoSocial;
    }

    public void setTipoSocial(AlunoClassificacaoEnum tipoSocial) {
        this.tipoSocial = tipoSocial;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
