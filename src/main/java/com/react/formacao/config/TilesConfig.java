package com.react.formacao.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;

//https://o7planning.org/en/11683/spring-boot-apache-tiles-jsp-tutorial

@Configuration
public class TilesConfig {

	    @Bean(name = "viewResolver")
	    public ViewResolver getViewResolver() {
	        UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
	 
	        // TilesView 3
	        viewResolver.setViewClass(TilesView.class);
	 
	        return viewResolver;
	    }
	 
	    @Bean(name = "tilesConfigurer")
	    public TilesConfigurer getTilesConfigurer() {
	        TilesConfigurer tilesConfigurer = new TilesConfigurer();
	 
	        // TilesView 3
	        tilesConfigurer.setDefinitions("/WEB-INF/tiles.xml");
	 
	        return tilesConfigurer;
	    }
}
