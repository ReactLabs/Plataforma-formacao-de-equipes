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
    private int equipe;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name = "idTurma")
    private Turma idTurma;

    public Turma getidTurma() {
        return idTurma;
    }

    public void setidTurma(Turma idTurma) {
        this.idTurma = idTurma;
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

    public int getEquipe() { return equipe; }

    public void setEquipe(int equipe) { this.equipe = equipe; }
}
