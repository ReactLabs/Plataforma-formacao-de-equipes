package com.react.formacao.service;

import com.react.formacao.entity.Turma;
import com.react.formacao.enu.AlunoClassificacaoEnum;

import java.io.Serializable;

import static com.react.formacao.enu.AlunoClassificacaoEnum.APATICO;

public class QuestionarioPerguntas implements Serializable {

    private String nome;
    private Turma id_turma;
    private String senha;

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

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Turma getId_turma() {
        return id_turma;
    }

    public void setId_turma(Turma id_turma) {
        this.id_turma = id_turma;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

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


    private boolean[] toBoolean(){
        boolean[] respostas = new boolean[15];

        for(int i =0; i< 15 ; i++){
            respostas[i] = false;
        }

        if(getPergunta1() == 1){ respostas[0] = true; }
        if(getPergunta2() == 1){ respostas[1] = true; }
        if(getPergunta3() == 1){ respostas[2] = true; }
        if(getPergunta4() == 1){ respostas[3] = true; }
        if(getPergunta5() == 1){ respostas[4] = true; }
        if(getPergunta6() == 1){ respostas[5] = true; }
        if(getPergunta7() == 1){ respostas[6] = true; }
        if(getPergunta8() == 1){ respostas[7] = true; }
        if(getPergunta9() == 1){ respostas[8] = true; }
        if(getPergunta10() == 1){ respostas[9] = true; }
        if(getPergunta11() == 1){ respostas[10] = true; }
        if(getPergunta12() == 1){ respostas[11] = true; }
        if(getPergunta13() == 1){ respostas[12] = true; }
        if(getPergunta14() == 1){ respostas[13] = true; }
        if(getPergunta15() == 1){ respostas[14] = true; }

        return respostas;
    }

    /**
     *
     * @return A Classificacao do aluno
     * @throws Exception
     */
    public AlunoClassificacaoEnum definir() throws Exception {
        boolean[] respostas = this.toBoolean();

        String def = "";
        int i = 0, j=0, k=0;


        //EMOTIVO - NAO EMOTIVO
        if(respostas[1]) i++;
        if(respostas[3]) i++;
        if(respostas[6]) i++;
        if(respostas[7]) i++;
        if(respostas[13]) i++;

        if(i >= 3 ) {
            //System.out.println("Emotivo");
            def+= "E";
        }else {
            //System.out.println("NAO Emotivo");
            def+= "nE";
        }

        //ATIVO - NAO ATIVO
        if(respostas[2]) j++;
        if(respostas[5]) j++;
        if(respostas[9]) j++;
        if(respostas[10]) j++;
        if(respostas[12]) j++;

        if(j >= 3 ) {
            //System.out.println("Ativo");
            def+= "A";
        }else {
            //System.out.println("NAO Ativo");
            def+= "nA";
        }

        // REPERCUSSAO SECUNDARIA - PRIMARIA
        if(respostas[0]) k++;
        if(respostas[4]) k++;
        if(respostas[8]) k++;
        if(respostas[11]) k++;
        if(respostas[14]) k++;

        if(k >= 3 ) {
            //System.out.println("Repercussao Secundaria");
            def+= "S";
        }else {
            //System.out.println("Repercussao primaria");
            def+= "P";
        }

        System.out.println("String: " + def + "\n");


        if(def.equals("nEnAS")) {
             return AlunoClassificacaoEnum.APATICO;
        }else if(def.equals("nEnAP")) {
            return AlunoClassificacaoEnum.AMORFO;
        }else if(def.equals("nEAP")) {
            return AlunoClassificacaoEnum.SOCIAL;
        }else if(def.equals("nEAS")) {
            return AlunoClassificacaoEnum.FLEUMATICO;
        }else if(def.equals("EnAP")) {
            return AlunoClassificacaoEnum.INSTAVEL;
        }else if(def.equals("EAP")) {
            return AlunoClassificacaoEnum.ATIVO;
        }else if(def.equals("EnAS")) {
            return AlunoClassificacaoEnum.MELANCOLICO;
        }else if(def.equals("EAS")) {
            return AlunoClassificacaoEnum.LIDER;
        }else {
            throw new Exception("Tipo inexistente");
        }
    }



}

