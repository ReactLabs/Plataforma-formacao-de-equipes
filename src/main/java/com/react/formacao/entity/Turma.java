package com.react.formacao.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Turma {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String hashEntrada;
    private String nome;
    private String descricao;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHashEntrada() {
        return hashEntrada;
    }

    public void setHashEntrada(String hashEntrada) {
        this.hashEntrada = hashEntrada;
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
