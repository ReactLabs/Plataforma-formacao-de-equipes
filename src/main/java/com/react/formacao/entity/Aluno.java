package com.react.formacao.entity;


import com.react.formacao.enu.AlunoClassificacaoEnum;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
public class Aluno implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String nome;
    private AlunoClassificacaoEnum tipoSocial;



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
