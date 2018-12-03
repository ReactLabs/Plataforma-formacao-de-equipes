package com.react.formacao.controller;

import com.react.formacao.entity.Aluno;
import com.react.formacao.entity.QuantidadeTurma;
import com.react.formacao.entity.Turma;
import com.react.formacao.repository.AlunoRepository;
import com.react.formacao.repository.TurmaRepository;
import com.react.formacao.service.ClusterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

import java.awt.*;

@Controller
public class TurmaController {

    @Autowired
    private TurmaRepository turmaRepository;
    @Autowired
    private AlunoRepository alunoRepository;


    @RequestMapping(value = { "/turma/inserir" }, method = RequestMethod.GET)
    public String homePage(Model model) {
        model.addAttribute("turma", new Turma());
        return "turma_form";
    }

    @RequestMapping(value = { "/turma/form"}, method = RequestMethod.POST)
    public String receberAluno(@ModelAttribute Turma turma, Model model){

        turmaRepository.save(turma);
        Long id = turma.getIdTurma();
        String redirect = "redirect:/turma/visualizar/" + id;


        return redirect;
    }

    @RequestMapping(value = {"/turma/index"}, method = RequestMethod.GET)
    public String indexTurma(Model model){
        Iterable<Turma> turmas = turmaRepository.findAll();
        model.addAttribute("turmas",turmas);
        return "index_turma";
    }

    @RequestMapping(value = {"/turma/visualizar/{idturma}"}, method = RequestMethod.GET)
    public String visualizarTurma(@PathVariable Long idturma, Model model){
         Turma turma = turmaRepository.findByIdTurma(idturma);
         String link = "localhost:8080/aluno/questionario/" + idturma;
        if(turma != null){
            List<Aluno> alunos = turma.getListAluno();
            model.addAttribute("turma",turma);
            model.addAttribute("link", link );
            model.addAttribute("alunos",alunos);
        }
        else{
            model.addAttribute("mensagem","Erro ao buscar turma");
        }

        return "visualizar_turma";
    }

    @RequestMapping(value = {"/turma/fechar/{idturma}"}, method = RequestMethod.POST)
    public String fecharTurma(@PathVariable Long idturma, @ModelAttribute(name = "qnt") QuantidadeTurma quantidade_grupos, Model model){
        try{
            Turma turma = turmaRepository.findByIdTurma(idturma);
            turma.setAberta(false);
            turmaRepository.save(turma);

            List<Aluno> alunos = alunoRepository.findAllByIdTurma(turma);
            ClusterService clusterService = new ClusterService(alunos);
            ArrayList<ArrayList<Aluno>> grupos = clusterService.agrupar(quantidade_grupos.getQuantidadeGrupos());
            clusterService.organizarGrupo(grupos, alunoRepository);


        }catch (Exception e){
            e.printStackTrace();
            return "500";
        }
        return "redirect:/turma/equipes/" + idturma;
    }


    @RequestMapping(value = {"/turma/equipes/{idturma}"}, method = RequestMethod.GET)
    public String fazerEquipes(@PathVariable Long idturma, Model model){

        Turma turma = turmaRepository.findByIdTurma(idturma);
        if(turma.isAberta()){
            return "redirect:/turma/visualizar/" + idturma;
        }else{
            List<Aluno> alunos = alunoRepository.findByIdTurmaOrderByEquipeDesc(turma);
            ArrayList<List<Aluno>> grupos = new  ArrayList<List<Aluno>>();
            while(alunos.size() != 0){
                List<Aluno> grupoNovo = new ArrayList<>();
                Aluno a =alunos.remove(0);
                int idEquipe = a.getEquipe();
                grupoNovo.add(a);
                while(alunos.size() != 0 && alunos.get(0).getEquipe() == idEquipe ){
                    grupoNovo.add(alunos.remove(0));
                }
                grupos.add(grupoNovo);
            }


            //grupos que ficou com TUDO

            model.addAttribute("grupos", grupos);
            model.addAttribute("size",grupos.size());
            return "view_equipes";
        }


       // return "redirect:/turma/visualizar/" + idturma;
    }

    @RequestMapping(value = {"/turma/excluir/{idturma}"}, method = RequestMethod.GET)
    public String excluir(@PathVariable Long idturma){
        this.turmaRepository.deleteById(idturma);
        return "redirect:/turma/index";
    }

}