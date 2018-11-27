package com.react.formacao.controller;

import com.react.formacao.entity.Aluno;
import com.react.formacao.repository.AlunoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {



	 @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	    public String homePage(Model model) {
		 model.addAttribute("nome_usuario", SecurityContextHolder
				 .getContext().getAuthentication().getName());

	 		return "homePage";
	    }
}
