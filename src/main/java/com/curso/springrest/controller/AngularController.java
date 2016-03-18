package com.curso.springrest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AngularController {

	/**
	 * Este controlador se encarga de capturar todas las rutas manejadas por Angular
	 * y redireccionar a la página principal para que sea el Router de Angular
	 * el que gestione la navegación
	 */
	@RequestMapping(value = {"/jugadores/**", "/equipos/**"}, method = RequestMethod.GET)
	public String redirect() {
		return "forward:/index.html";
	}
}
