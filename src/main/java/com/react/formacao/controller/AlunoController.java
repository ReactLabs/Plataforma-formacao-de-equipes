package com.react.formacao.controller;


import com.react.formacao.entity.Aluno;
import com.react.formacao.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    @RequestMapping(value = { "/aluno/form"}, method = RequestMethod.GET)
    public String formularioAluno(Model model){
        model.addAttribute("aluno", new Aluno());
        return "aluno_form";
    }

    @RequestMapping(value = { "/aluno/form"}, method = RequestMethod.POST)
    public String receberAluno(@ModelAttribute Aluno aluno, Model model){

        alunoRepository.save(aluno);

        return "aluno_form";
    }

}
