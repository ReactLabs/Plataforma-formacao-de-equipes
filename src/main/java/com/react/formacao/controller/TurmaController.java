package com.react.formacao.controller;

import com.react.formacao.entity.Aluno;
import com.react.formacao.entity.Turma;
import com.react.formacao.repository.TurmaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.List;

import java.awt.*;

@Controller
public class TurmaController {

    @Autowired
    private TurmaRepository turmaRepository;

    @RequestMapping(value = { "/turma/inserir" }, method = RequestMethod.GET)
    public String homePage(Model model) {
        model.addAttribute("turma", new Turma());
        return "turma_form";
    }

    @RequestMapping(value = { "/turma/form"}, method = RequestMethod.POST)
    public String receberAluno(@ModelAttribute Turma turma, Model model){

        turmaRepository.save(turma);
        return "turma_form";
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

        if(turma != null){
            List<Aluno> alunos = turma.getListAluno();
            model.addAttribute("turma",turma);
            model.addAttribute("alunos",alunos);
        }
        else{
            model.addAttribute("mensagem","Erro ao buscar turma");
        }

        return "visualizar_turma";
    }
}
