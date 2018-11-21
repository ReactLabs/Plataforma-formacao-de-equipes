package com.react.formacao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {

    @RequestMapping("/users")
    public String getUsers() {
        return "{\"users\":[{\"name\":\"Lucas\", \"country\":\"Brazil\"}," +
                "{\"name\":\"Jackie\",\"country\":\"China\"}]}";
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login(Model model){
        return "login";
    }

}
