package com.react.formacao.service;

import com.react.formacao.entity.Aluno;
import com.react.formacao.enu.AlunoClassificacaoEnum;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ClusterService {

    private ArrayList<Aluno> Melancolico;
    private ArrayList<Aluno> Instavel;
    private ArrayList<Aluno> Amorfo;
    private ArrayList<Aluno> Apatico;
    private ArrayList<Aluno> Social;
    private ArrayList<Aluno> Fleumatico;
    private ArrayList<Aluno> Ativo;
    private ArrayList<Aluno> Lider;

    private int qndAlunos;

    public ClusterService(List<Aluno> alunos) {
        this.Melancolico = new ArrayList<>();
        this.Instavel = new ArrayList<>();
        this.Amorfo = new ArrayList<>();
        this.Apatico = new ArrayList<>();
        this.Social = new ArrayList<>();
        this.Fleumatico = new ArrayList<>();
        this.Ativo = new ArrayList<>();
        this.Lider = new ArrayList<>();
        int contador = 0;
        for(Aluno aluno : alunos ){
            contador++;
            switch (aluno.getTipoSocial()){
                case APATICO:
                    this.Apatico.add(aluno);
                    break;
                case AMORFO:
                    this.Amorfo.add(aluno);
                    break;
                case SOCIAL:
                    this.Social.add(aluno);
                    break;
                case FLEUMATICO:
                    this.Fleumatico.add(aluno);
                    break;
                case INSTAVEL:
                    this.Instavel.add(aluno);
                    break;
                case ATIVO:
                    this.Ativo.add(aluno);
                    break;
                case MELANCOLICO:
                    this.Melancolico.add(aluno);
                    break;
                case LIDER:
                    this.Lider.add(aluno);
                    break;
            }
        }
        this.qndAlunos = contador;
        /*System.out.println("LOL");*/
        
    }

    public ArrayList<ArrayList<Aluno>> agrupar(int quantidade_grupos){
        int qnt_lider = this.Lider.size();
        int qnt_social = this.Social.size();
        int qnt_ativo = this.Ativo.size();
        final int estimativaAlunosPorGrupo = qndAlunos/quantidade_grupos;


        ArrayList<ArrayList<Aluno>> grupos = new ArrayList<ArrayList<Aluno>>(quantidade_grupos);

        for(int i  = 0 ; i < quantidade_grupos; i ++){ 		//ALOCACAO
            grupos.add(i, new ArrayList<Aluno>(estimativaAlunosPorGrupo));
        }

        //colocando os lideres de cada grupo
        int i =0;
        for(;i < qnt_lider && i < quantidade_grupos ; i++) {
            grupos.get(i).add(0, this.Lider.remove(0));
        }


        if(i < quantidade_grupos){		//social
            for(int j = 0 ;j < qnt_social && i < quantidade_grupos ; i++, j++) {
                grupos.get(i).add(0, this.Social.remove(0));
            }
        }

        if(i < quantidade_grupos){		//ativo
            for(int j = 0;j < qnt_ativo && i < quantidade_grupos ; i++, j++) {
                grupos.get(i).add(0, this.Ativo.remove(0));
            }
        }

        for( i  = 0 ; i < quantidade_grupos; i ++){
            //printUnicoArray(grupos.get(i));
        }

        try {
            preecherGrupo(grupos, estimativaAlunosPorGrupo);
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }

        System.out.println("terminou!!");

        for( i  = 1 ; i <= quantidade_grupos; i ++){
            System.out.println("Grupo "+ i + ": ");
            //printUnicoArray(grupos.get(i-1));
        }
        return grupos;
        //this.gerarTXT(grupos);
    }

    private void preecherGrupo(ArrayList<ArrayList<Aluno>> grupos, int estimativa) throws Exception {
        ArrayList<Aluno> AlunosSemGrupo = addTodas();

        while (AlunosSemGrupo.size() > 0) {
            for (int i = 0; i < grupos.size(); i++) {


                if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.LIDER) {
                    preencherCabeca(grupos.get(i), this.Fleumatico, this.Melancolico, this.Ativo, AlunoClassificacaoEnum.AMORFO, AlunosSemGrupo);

                } else if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.SOCIAL) {
                    preencherCabeca(grupos.get(i), this.Amorfo, this.Ativo, this.Fleumatico, AlunoClassificacaoEnum.MELANCOLICO, AlunosSemGrupo);

                } else if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.ATIVO) {
                    preencherCabeca(grupos.get(i), this.Instavel, this.Social, this.Lider, AlunoClassificacaoEnum.APATICO, AlunosSemGrupo);

                } else if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.MELANCOLICO) {
                    preencherCabeca(grupos.get(i), this.Lider, this.Instavel, this.Apatico, AlunoClassificacaoEnum.SOCIAL, AlunosSemGrupo);

                } else if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.INSTAVEL) {
                    preencherCabeca(grupos.get(i), this.Melancolico, this.Amorfo, this.Ativo, AlunoClassificacaoEnum.FLEUMATICO, AlunosSemGrupo);

                } else if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.AMORFO) {
                    preencherCabeca(grupos.get(i), this.Instavel, this.Apatico, this.Social, AlunoClassificacaoEnum.LIDER, AlunosSemGrupo);

                } else if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.APATICO) {
                    preencherCabeca(grupos.get(i), this.Melancolico, this.Amorfo, this.Fleumatico, AlunoClassificacaoEnum.ATIVO, AlunosSemGrupo);

                } else if (grupos.get(i).get(0).getTipoSocial() == AlunoClassificacaoEnum.FLEUMATICO) {
                    preencherCabeca(grupos.get(i), this.Social, this.Lider, this.Apatico, AlunoClassificacaoEnum.INSTAVEL, AlunosSemGrupo);
                } else {
                    throw new Exception("Centroide nao identificado");
                }

            }
        }
    }


        private void preencherCabeca (ArrayList<Aluno> grupo, ArrayList<Aluno> afin1,
                ArrayList < Aluno > afin2, ArrayList < Aluno > afin3, AlunoClassificacaoEnum antiteticos,
                ArrayList < Aluno > AlunosSemGrupo){
            Aluno p = null;
            Random rand = new Random();

            ArrayList<Aluno> TodosOsafins = new ArrayList<Aluno>();

            this.concatenar(TodosOsafins, afin1);
            this.concatenar(TodosOsafins, afin2);
            this.concatenar(TodosOsafins, afin3);


            if (TodosOsafins.size() > 0) {
                p = TodosOsafins.remove(rand.nextInt(TodosOsafins.size()));
                afin1.remove(p);
                afin2.remove(p);
                afin3.remove(p);
                if (!AlunosSemGrupo.remove(p)) {
                    System.err.println("ERRO Aluno nao encontrada3");
                }
                grupo.add(p);
                return;
            }

            if (AlunosSemGrupo.size() > 0) {
                for (int i = 0; i < AlunosSemGrupo.size(); i++) {
                    p = AlunosSemGrupo.get(i);
                    if (p.getTipoSocial() != antiteticos) {
                        grupo.add(p);
                        AlunosSemGrupo.remove(p);
                        return;
                    }
                }
                System.out.println("AQUELE CASO LÁAAAAAAAAAAAAAAAAAAAAA");
                grupo.add(p);
                AlunosSemGrupo.remove(p);
                return;


            }
            //possivel erro: Aluno ser retirada do AlunosSemGrupo mas nao ser retirada do array dela
        }



        private ArrayList<Aluno> addTodas(){
            ArrayList<Aluno> todas = new ArrayList<>(this.Melancolico.size() + this.Instavel.size() + this.Amorfo.size()
                    + this.Apatico.size() + this.Social.size()+ this.Fleumatico.size()
                    + this.Ativo.size() + this.Lider.size());

            concatenar(todas, this.Melancolico);
            concatenar(todas, this.Instavel);
            concatenar(todas, this.Amorfo);
            concatenar(todas, this.Apatico);
            concatenar(todas, this.Social);
            concatenar(todas, this.Fleumatico);
            concatenar(todas, this.Ativo);
            concatenar(todas, this.Lider);

            System.out.println("aAAAaaaaaA");
            //printUnicoArray(todas);


            return todas;
        }

    
    private void concatenar(ArrayList<Aluno> afins, ArrayList<Aluno> array) {
        for(int i = 0; i < array.size(); i++){
            afins.add(afins.size(),array.get(i));
        }
    }
}
