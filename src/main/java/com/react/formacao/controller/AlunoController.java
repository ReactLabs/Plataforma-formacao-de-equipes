package com.react.formacao.controller;


import com.react.formacao.entity.Aluno;
import com.react.formacao.repository.AlunoRepository;
import com.react.formacao.service.QuestionarioPerguntas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class AlunoController {

    @Autowired
    AlunoRepository alunoRepository;


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

    @RequestMapping(value = { "/questionario/{idTurna}"}, method = RequestMethod.GET)
    public String formularioAluno(@PathVariable long idTurna,  Model model){

        //VER SE A TURMA EXISTE
        //VER SE A TURMA ESTÁ ABERTA
        model.addAttribute("aluno", new QuestionarioPerguntas());
        return "aluno_form";
    }

    @RequestMapping(value = { "/aluno/form"}, method = RequestMethod.POST)
    public String receberAluno(@ModelAttribute QuestionarioPerguntas questionarioPerguntas, Model model){

        try {
            Aluno aluno =  new Aluno();
            aluno.setNome(questionarioPerguntas.getNome());
            aluno.setTipoSocial(questionarioPerguntas.definir());
            alunoRepository.save(aluno);

        }catch (Exception e){
            e.printStackTrace();
        }

        model.addAttribute("aluno", new QuestionarioPerguntas());
        return "aluno_form";
    }

}
