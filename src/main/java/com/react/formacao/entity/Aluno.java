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

    private int pergunta1;
    private int pergunta2;
    private int pergunta3;
    private int pergunta4;
    private int pergunta5;
    private int pergunta6;
    private int pergunta7;
    private int pergunta8;
    private int pergunta9;
    private int pergunta10;
    private int pergunta11;
    private int pergunta12;
    private int pergunta13;
    private int pergunta14;
    private int pergunta15;

    public int getPergunta1() {
        return pergunta1;
    }

    public void setPergunta1(int pergunta1) {
        this.pergunta1 = pergunta1;
    }

    public int getPergunta2() {
        return pergunta2;
    }

    public void setPergunta2(int pergunta2) {
        this.pergunta2 = pergunta2;
    }

    public int getPergunta3() {
        return pergunta3;
    }

    public void setPergunta3(int pergunta3) {
        this.pergunta3 = pergunta3;
    }

    public int getPergunta4() {
        return pergunta4;
    }

    public void setPergunta4(int pergunta4) {
        this.pergunta4 = pergunta4;
    }

    public int getPergunta5() {
        return pergunta5;
    }

    public void setPergunta5(int pergunta5) {
        this.pergunta5 = pergunta5;
    }

    public int getPergunta6() {
        return pergunta6;
    }

    public void setPergunta6(int pergunta6) {
        this.pergunta6 = pergunta6;
    }

    public int getPergunta7() {
        return pergunta7;
    }

    public void setPergunta7(int pergunta7) {
        this.pergunta7 = pergunta7;
    }

    public int getPergunta8() {
        return pergunta8;
    }

    public void setPergunta8(int pergunta8) {
        this.pergunta8 = pergunta8;
    }

    public int getPergunta9() {
        return pergunta9;
    }

    public void setPergunta9(int pergunta9) {
        this.pergunta9 = pergunta9;
    }

    public int getPergunta10() {
        return pergunta10;
    }

    public void setPergunta10(int pergunta10) {
        this.pergunta10 = pergunta10;
    }

    public int getPergunta11() {
        return pergunta11;
    }

    public void setPergunta11(int pergunta11) {
        this.pergunta11 = pergunta11;
    }

    public int getPergunta12() {
        return pergunta12;
    }

    public void setPergunta12(int pergunta12) {
        this.pergunta12 = pergunta12;
    }

    public int getPergunta13() {
        return pergunta13;
    }

    public void setPergunta13(int pergunta13) {
        this.pergunta13 = pergunta13;
    }

    public int getPergunta14() {
        return pergunta14;
    }

    public void setPergunta14(int pergunta14) {
        this.pergunta14 = pergunta14;
    }

    public int getPergunta15() {
        return pergunta15;
    }

    public void setPergunta15(int pergunta15) {
        this.pergunta15 = pergunta15;
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
