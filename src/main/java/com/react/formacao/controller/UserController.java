package com.react.formacao.controller;

import com.react.formacao.entity.Cadastro;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {


    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login(Model model){
        model.addAttribute("cadastro", new Cadastro());
        return "login";
    }



}
