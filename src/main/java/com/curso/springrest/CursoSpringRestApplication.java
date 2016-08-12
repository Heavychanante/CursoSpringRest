package com.curso.springrest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;

@SpringBootApplication
public class CursoSpringRestApplication extends SpringBootServletInitializer {

	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(CursoSpringRestApplication.class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(CursoSpringRestApplication.class, args);
    }
}
