package com.react.formacao.controller;

import com.react.formacao.entity.Cadastro;
import com.react.formacao.entity.Usuario;
import com.react.formacao.repository.CadastroRepository;
import com.react.formacao.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CadastroController {

    @Autowired
    CadastroRepository cadastroRepository;
    @Autowired
    UsuarioRepository usuarioRepository;


 /*   @GetMapping(value = "/cadastro")
    public String getFormCadasro(Model model){
        model.addAttribute("cadastro", new Cadastro());
        return "cadastro_form";
    }*/

    @PostMapping(value = "/cadastro")
    public String postFormCadastro(@ModelAttribute Cadastro cadastro){
        cadastro.setSenha(new BCryptPasswordEncoder().encode(cadastro.getSenha()));//encriptando a senha
        cadastroRepository.save(cadastro);
        //add uma mensagem dizendo pro cara esperar
        return "redirect:/login";
    }

    @GetMapping(value = "/dashboard/listar")
    public String listarCadastros(Model model){
        Iterable<Cadastro> cadastroList = cadastroRepository.findAll();
        model.addAttribute("cadastros", cadastroList);
        return "listarCadastos";
    }

    @GetMapping(value = "/dashboard/aceitarUsuario/{id}")
    public String aceitarUsuario(@PathVariable String id){
        try{
            Cadastro cadastro = cadastroRepository.findByLogin(id);
            Usuario usuario = new Usuario();
            usuario.setNome(cadastro.getNome());
            usuario.setSenha(cadastro.getSenha());
            usuario.setLogin(cadastro.getLogin());

            usuarioRepository.save(usuario);
            cadastroRepository.delete(cadastro);
        }catch (Exception e){
            e.printStackTrace();
            //add mensagem de erro
        }
        return "redirect:/dashboard/listar";
    }

    @GetMapping(value = "/dashboard/excluirUsuario/{id}")
    public String excluirUsuario(@PathVariable String id){
        Cadastro cadastro = cadastroRepository.findByLogin(id);
        cadastroRepository.delete(cadastro);
        return "redirect:/dashboard/listar";
    }

}
