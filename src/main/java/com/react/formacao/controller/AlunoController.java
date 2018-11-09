package com.react.formacao.controller;


import com.react.formacao.entity.Aluno;
import com.react.formacao.entity.Turma;
import com.react.formacao.repository.AlunoRepository;
import com.react.formacao.repository.TurmaRepository;
import com.react.formacao.service.QuestionarioPerguntas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Optional;


@Controller
public class AlunoController {

    @Autowired
    AlunoRepository alunoRepository;


    @Autowired
    private TurmaRepository turmaRepository;


/*    @RequestMapping(value = { "/aluno/form"}, method = RequestMethod.GET)
    public String formularioAluno(Model model){
        model.addAttribute("aluno", new Aluno());
        return "aluno_form";
    }

    @RequestMapping(value = { "/aluno/form"}, method = RequestMethod.POST)
    public String receberAluno(@ModelAttribute Aluno aluno, Model model){

        alunoRepository.save(aluno);

        return "aluno_form";
    }*/

    @RequestMapping(value = { "/questionario/{idTurma}"}, method = RequestMethod.GET)
    public String formularioAluno(@PathVariable Long idTurma,  Model model){


        Turma turma = this.turmaRepository.findByIdTurma(idTurma);


        if(!turma.isAberta()){      //se a turma nao ta aberta
            model.addAttribute("mensagem", "A turma que você tentou entrar já não está mais aberta");
            return("homePage");
        }
        QuestionarioPerguntas questionarioPerguntas = new QuestionarioPerguntas();
        questionarioPerguntas.setId_turma(turma);
        model.addAttribute("aluno", questionarioPerguntas);
        return "aluno_form";
    }

    @RequestMapping(value = { "/aluno/form"}, method = RequestMethod.POST)
    public String receberAluno(@ModelAttribute QuestionarioPerguntas questionarioPerguntas, Model model){

        try {
            Aluno aluno =  new Aluno();
            aluno.setNome(questionarioPerguntas.getNome());
            aluno.setTipoSocial(questionarioPerguntas.definir());
            aluno.setId_turma(questionarioPerguntas.getId_turma());
            alunoRepository.save(aluno);

        }catch (Exception e){
            e.printStackTrace();
        }

        model.addAttribute("aluno", new QuestionarioPerguntas());
        return "aluno_form";
    }
}
