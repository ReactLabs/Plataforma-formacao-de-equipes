package com.react.formacao;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class FormacaoApplication {

	public static void main(String[] args) {
		SpringApplication.run(FormacaoApplication.class, args);
	}
}
